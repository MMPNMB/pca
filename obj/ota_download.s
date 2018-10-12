	.file	"ota_download.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"http_gethost_info parms error!\n\r\n"
.LC1:
	.string	"[%06d]<E> "
.LC2:
	.string	"\r\n"
.LC3:
	.string	"https://"
.LC4:
	.string	"http://"
	.section	.text.unlikely.http_gethost_info,"ax",@progbits
.LCOLDB5:
	.section	.text.http_gethost_info,"ax",@progbits
.LHOTB5:
	.section	.text.unlikely.http_gethost_info
.Ltext_cold0:
	.section	.text.http_gethost_info
	.globl	http_gethost_info
	.type	http_gethost_info, @function
http_gethost_info:
.LFB17:
	.file 1 "framework/fota/download/http/ota_download.c"
	.loc 1 45 0
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
	.loc 1 45 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	20(%ebp), %esi
	movl	%eax, -28(%ebp)
	movl	16(%ebp), %eax
	.loc 1 50 0
	testl	%ebx, %ebx
	.loc 1 45 0
	movl	%eax, -32(%ebp)
	.loc 1 50 0
	je	.L2
	.loc 1 50 0 is_stmt 0 discriminator 1
	cmpb	$0, (%ebx)
	jne	.L3
.L2:
	.loc 1 51 0 is_stmt 1
	testb	$2, aos_log_level
	je	.L1
	.loc 1 51 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL1:
	pushl	%edx
	pushl	$.LC0
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL2:
	movl	$.LC0, (%esp)
	call	csp_printf
.LVL3:
	movl	$.LC2, 8(%ebp)
	addl	$16, %esp
	.loc 1 95 0 is_stmt 1 discriminator 1
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
	.loc 1 51 0 discriminator 1
	jmp	csp_printf
.LVL4:
.L3:
	.cfi_restore_state
	.loc 1 54 0
	movl	$0, (%esi)
	.loc 1 55 0
	cmpb	$0, (%ebx)
	je	.L1
.LVL5:
.LBB38:
.LBB39:
	.loc 1 59 0
	pushl	%edi
	pushl	$8
	pushl	$.LC3
	pushl	%ebx
	call	strncmp
.LVL6:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L7
	.loc 1 60 0
	addl	$8, %ebx
.LVL7:
.L8:
	.loc 1 68 0
	movl	-28(%ebp), %eax
	movl	%ebx, (%eax)
	.loc 1 69 0
	pushl	%ecx
	pushl	%ecx
	pushl	$47
	pushl	%ebx
	call	strchr
.LVL8:
	addl	$16, %esp
	.loc 1 70 0
	testl	%eax, %eax
	.loc 1 69 0
	movl	%eax, %edx
.LVL9:
	.loc 1 70 0
	je	.L9
	.loc 1 73 0
	cmpb	$0, 1(%eax)
	.loc 1 71 0
	movb	$0, (%eax)
.LVL10:
	.loc 1 73 0
	je	.L10
	.loc 1 72 0
	leal	1(%eax), %edi
.LVL11:
	.loc 1 74 0
	movl	-32(%ebp), %eax
	.loc 1 75 0
	orl	$-1, %ecx
	.loc 1 74 0
	movl	%edi, (%eax)
	.loc 1 75 0
	xorl	%eax, %eax
	repnz scasb
.LVL12:
	notl	%ecx
	movb	$0, (%edx,%ecx)
	jmp	.L10
.LVL13:
.L9:
	.loc 1 78 0
	xorl	%eax, %eax
.LVL14:
	orl	$-1, %ecx
	movl	%ebx, %edi
	repnz scasb
.LVL15:
	notl	%ecx
	movb	$0, -1(%ebx,%ecx)
.LVL16:
.L10:
	.loc 1 81 0
	movl	-28(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	$58
	pushl	(%eax)
	call	strchr
.LVL17:
	addl	$16, %esp
.LVL18:
	.loc 1 82 0
	testl	%eax, %eax
	je	.L11
	.loc 1 83 0
	movb	$0, (%eax)
	.loc 1 84 0
	subl	$12, %esp
	incl	%eax
.LVL19:
	pushl	%eax
	call	atoi
.LVL20:
	addl	$16, %esp
	movl	%eax, (%esi)
	jmp	.L1
.LVL21:
.L11:
	.loc 1 92 0
	movl	$80, (%esi)
	jmp	.L1
.LVL22:
.L7:
	.loc 1 64 0
	pushl	%eax
	pushl	$7
	pushl	$.LC4
	pushl	%ebx
	call	strncmp
.LVL23:
	.loc 1 65 0
	leal	7(%ebx), %edx
	.loc 1 64 0
	addl	$16, %esp
	.loc 1 65 0
	testl	%eax, %eax
	cmove	%edx, %ebx
.LVL24:
	jmp	.L8
.LVL25:
.L1:
.LBE39:
.LBE38:
	.loc 1 95 0
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
	.size	http_gethost_info, .-http_gethost_info
	.section	.text.unlikely.http_gethost_info
.LCOLDE5:
	.section	.text.http_gethost_info
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"ota_download parms error!\n\r\n"
.LC7:
	.string	"ota_socket_connect error\n \r\n"
.LC8:
	.string	"----resume download,breakpoint=%d------\r\n"
.LC9:
	.string	"[%06d]<I> "
.LC10:
	.string	"GET /%s HTTP/1.1\r\nAccept:*/*\r\nUser-Agent: Mozilla/5.0\r\nCache-Control: no-cache\r\nConnection: close\r\nRange: bytes=%d-\r\nHost:%s:%d\r\n\r\n"
.LC11:
	.string	"GET /%s HTTP/1.1\r\nAccept:*/*\r\nUser-Agent: Mozilla/5.0\r\nCache-Control: no-cache\r\nConnection: close\r\nHost:%s:%d\r\n\r\n"
.LC12:
	.string	"send %s\r\n"
.LC13:
	.string	"send error!%s\n \r\n"
.LC14:
	.string	"%d bytes send OK!\n \r\n"
.LC15:
	.string	"ota_socket_recv nbytes < 0\r\n"
.LC16:
	.string	"download system error %s\r\n"
.LC17:
	.string	"Content-Length:"
.LC18:
	.string	"%*[^ ]%d"
.LC19:
	.string	"\r\n\r\n"
.LC20:
	.string	"download read error %s\r\n"
	.section	.text.unlikely.ota_download,"ax",@progbits
.LCOLDB21:
	.section	.text.ota_download,"ax",@progbits
.LHOTB21:
	.globl	ota_download
	.type	ota_download, @function
ota_download:
.LFB18:
	.loc 1 98 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$1548, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 98 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	16(%ebp), %ebx
	movl	%eax, -1560(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 99 0
	testl	%edx, %edx
	je	.L19
	.loc 1 99 0 is_stmt 0 discriminator 1
	cmpb	$0, (%edx)
	je	.L19
	.loc 1 99 0 is_stmt 1 discriminator 2
	cmpl	$0, -1560(%ebp)
	je	.L19
	testl	%ebx, %ebx
	sete	%al
	jne	.L20
.L19:
	.loc 1 100 0
	testb	$2, aos_log_level
	je	.L85
	.loc 1 100 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL27:
	pushl	%ebx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL28:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL29:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL30:
	addl	$16, %esp
.L85:
	.loc 1 101 0 is_stmt 1 discriminator 1
	movl	$-2, %ebx
	jmp	.L23
.L20:
.LVL31:
	.loc 1 114 0
	leal	-1522(%ebp), %edi
	movl	$33, %ecx
	.loc 1 105 0
	movl	$0, -1540(%ebp)
.LVL32:
	.loc 1 113 0
	movl	$0, -1536(%ebp)
	.loc 1 115 0
	movl	$0, -1532(%ebp)
	leal	-1489(%ebp), %esi
	.loc 1 114 0
	rep stosb
	.loc 1 117 0
	leal	-1489(%ebp), %edi
	movl	$1461, %ecx
	.loc 1 116 0
	movl	$0, -1528(%ebp)
	.loc 1 117 0
	rep stosb
	.loc 1 118 0
	leal	-1540(%ebp), %eax
	leal	-1522(%ebp), %edi
	pushl	%eax
	leal	-1532(%ebp), %eax
	pushl	%eax
	leal	-1528(%ebp), %eax
	pushl	%eax
	pushl	%edx
	call	http_gethost_info
.LVL33:
	.loc 1 120 0
	addl	$16, %esp
	cmpl	$0, -1532(%ebp)
	je	.L85
	.loc 1 120 0 discriminator 1
	movl	-1528(%ebp), %eax
	testl	%eax, %eax
	je	.L85
	.loc 1 125 0
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	-1540(%ebp)
	call	ota_socket_connect
.LVL34:
	.loc 1 126 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 125 0
	movl	%eax, -1552(%ebp)
.LVL35:
	.loc 1 126 0
	jns	.L25
	.loc 1 127 0
	testb	$2, aos_log_level
	.loc 1 129 0
	movl	$-4, %ebx
	.loc 1 127 0
	je	.L23
	.loc 1 127 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL36:
	pushl	%edx
	pushl	$.LC7
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL37:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL38:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL39:
	jmp	.L86
.LVL40:
.L25:
	.loc 1 131 0 is_stmt 1
	call	ota_get_update_breakpoint
.LVL41:
	.loc 1 132 0
	subl	$12, %esp
	.loc 1 131 0
	movl	%eax, -1548(%ebp)
.LVL42:
	.loc 1 132 0
	pushl	%edi
	call	ota_get_last_MD5
.LVL43:
	.loc 1 134 0
	addl	$16, %esp
	cmpl	$0, -1548(%ebp)
	je	.L26
	.loc 1 134 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	$32
	pushl	%ebx
	pushl	%edi
	call	strncmp
.LVL44:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L26
	.loc 1 135 0 is_stmt 1
	testb	$8, aos_log_level
	je	.L27
	.loc 1 135 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL45:
	pushl	-1548(%ebp)
	pushl	$.LC8
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL46:
	popl	%edi
	popl	%eax
	pushl	-1548(%ebp)
	pushl	$.LC8
	call	csp_printf
.LVL47:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL48:
	addl	$16, %esp
.L27:
	.loc 1 136 0 is_stmt 1
	pushl	%ecx
	pushl	%ecx
	pushl	-1540(%ebp)
	pushl	-1528(%ebp)
	pushl	-1548(%ebp)
	pushl	-1532(%ebp)
	pushl	$.LC10
	pushl	%esi
	call	sprintf
.LVL49:
	.loc 1 137 0
	addl	$20, %esp
	pushl	$g_ctx
	call	ota_get_last_MD5_context
.LVL50:
	addl	$16, %esp
	jmp	.L28
.L26:
.LVL51:
	.loc 1 140 0
	subl	$12, %esp
	pushl	-1540(%ebp)
	pushl	-1528(%ebp)
	pushl	-1532(%ebp)
	pushl	$.LC11
	pushl	%esi
	call	sprintf
.LVL52:
	.loc 1 141 0
	addl	$20, %esp
	pushl	$g_ctx
	call	MD5_Init
.LVL53:
	addl	$16, %esp
	.loc 1 139 0
	movl	$0, -1548(%ebp)
.LVL54:
.L28:
	.loc 1 143 0
	subl	$12, %esp
	.loc 1 146 0
	leal	-1489(%ebp), %esi
	.loc 1 143 0
	pushl	%ebx
	.loc 1 146 0
	movl	%esi, %edi
	.loc 1 143 0
	call	ota_set_cur_MD5
.LVL55:
	.loc 1 146 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	.loc 1 147 0
	addl	$16, %esp
	.loc 1 146 0
	repnz scasb
	.loc 1 147 0
	testb	$8, aos_log_level
	.loc 1 146 0
	notl	%ecx
	leal	-1(%ecx), %ebx
.LVL56:
	.loc 1 147 0
	je	.L29
	.loc 1 147 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL57:
	pushl	%esi
	pushl	$.LC12
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL58:
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	$.LC12
	call	csp_printf
.LVL59:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL60:
	addl	$16, %esp
.L29:
	leal	-1489(%ebp), %esi
	.loc 1 139 0 is_stmt 1
	xorl	%edi, %edi
.LVL61:
.L30:
	.loc 1 148 0
	cmpl	%ebx, %edi
	jge	.L87
	.loc 1 149 0
	pushl	%eax
	movl	%ebx, %eax
	subl	%edi, %eax
	pushl	%eax
	leal	(%esi,%edi), %eax
	pushl	%eax
	pushl	-1552(%ebp)
	call	ota_socket_send
.LVL62:
	.loc 1 150 0
	addl	$16, %esp
	cmpl	$-1, %eax
	movl	aos_log_level, %edx
	jne	.L31
	.loc 1 151 0
	andb	$2, %dl
	.loc 1 152 0
	movl	$-5, %ebx
.LVL63:
	.loc 1 151 0
	je	.L32
	.loc 1 151 0 discriminator 1
	call	__errno
.LVL64:
	.loc 1 151 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL65:
	movl	%eax, %esi
	call	aos_now_ms
.LVL66:
	pushl	%esi
	pushl	$.LC13
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL67:
	.loc 1 151 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL68:
	.loc 1 151 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL69:
	popl	%edx
	popl	%ecx
	pushl	%eax
	pushl	$.LC13
	call	csp_printf
.LVL70:
	.loc 1 151 0 discriminator 1
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL71:
	addl	$16, %esp
	jmp	.L32
.LVL72:
.L31:
	.loc 1 155 0
	addl	%eax, %edi
.LVL73:
	.loc 1 156 0
	andb	$8, %dl
	je	.L30
	.loc 1 156 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL74:
	pushl	%edi
	pushl	$.LC14
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL75:
	popl	%ecx
	popl	%eax
	pushl	%edi
	pushl	$.LC14
	call	csp_printf
.LVL76:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL77:
	addl	$16, %esp
	jmp	.L30
.L87:
	.loc 1 159 0 is_stmt 1
	movl	%esi, %edi
.LVL78:
	movl	$1461, %ecx
	xorl	%eax, %eax
	rep stosb
	.loc 1 160 0
	leal	-1489(%ebp), %esi
	.loc 1 111 0
	movl	$0, -1556(%ebp)
	.loc 1 110 0
	xorl	%ebx, %ebx
.LVL79:
.L35:
	.loc 1 160 0
	pushl	%edi
	pushl	$1460
	pushl	%esi
	pushl	-1552(%ebp)
	call	ota_socket_recv
.LVL80:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edi
.LVL81:
	je	.L44
	.loc 1 162 0
	jns	.L36
	.loc 1 163 0
	testb	$8, aos_log_level
	je	.L37
	.loc 1 163 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL82:
	pushl	%edx
	pushl	$.LC15
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL83:
	movl	$.LC15, (%esp)
	call	csp_printf
.LVL84:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL85:
	addl	$16, %esp
.L37:
	.loc 1 164 0 is_stmt 1
	call	__errno
.LVL86:
	.loc 1 164 0
	cmpl	$4, (%eax)
	jne	.L38
	.loc 1 167 0
	subl	$12, %esp
	pushl	-1552(%ebp)
	call	ota_socket_check_conn
.LVL87:
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L35
	.loc 1 168 0
	testb	$2, aos_log_level
	je	.L40
	.loc 1 168 0 discriminator 1
	call	__errno
.LVL88:
	.loc 1 168 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL89:
	movl	%eax, %esi
	call	aos_now_ms
.LVL90:
	pushl	%esi
	pushl	$.LC16
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL91:
	.loc 1 168 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL92:
	.loc 1 168 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL93:
	popl	%esi
	popl	%edi
.LVL94:
	pushl	%eax
	pushl	$.LC16
	call	csp_printf
.LVL95:
	.loc 1 168 0 discriminator 1
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL96:
	addl	$16, %esp
	jmp	.L38
.LVL97:
.L36:
	.loc 1 175 0
	cmpl	$0, -1556(%ebp)
	jne	.L41
	.loc 1 176 0
	cmpl	$0, -1536(%ebp)
	jne	.L42
.LBB40:
	.loc 1 177 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC17
	pushl	%esi
	call	strstr
.LVL98:
	addl	$16, %esp
.LVL99:
	.loc 1 178 0
	testl	%eax, %eax
	je	.L42
	.loc 1 179 0
	pushl	%edx
	leal	-1536(%ebp), %edx
	pushl	%edx
	pushl	$.LC18
	pushl	%eax
	call	sscanf
.LVL100:
	addl	$16, %esp
.L42:
.LBE40:
	.loc 1 183 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC19
	pushl	%esi
	call	strstr
.LVL101:
	addl	$16, %esp
.LVL102:
	.loc 1 185 0
	testl	%eax, %eax
	je	.L43
.LBB41:
	.loc 1 186 0
	addl	$4, %eax
.LVL103:
	.loc 1 189 0
	movl	%eax, %edx
	.loc 1 192 0
	movl	%eax, -1556(%ebp)
	.loc 1 189 0
	subl	%esi, %edx
	subl	%edx, %edi
.LVL104:
	.loc 1 192 0
	pushl	%edx
	pushl	%edi
	pushl	%eax
	.loc 1 189 0
	movl	%edi, %ebx
.LVL105:
	.loc 1 192 0
	pushl	$g_ctx
	call	MD5_Update
.LVL106:
	.loc 1 193 0
	movl	-1556(%ebp), %eax
	pushl	$0
	pushl	%edi
	pushl	%eax
	pushl	$1461
	movl	-1560(%ebp), %eax
	call	*%eax
.LVL107:
	addl	$32, %esp
	.loc 1 188 0
	movl	$1, -1556(%ebp)
.LVL108:
.L43:
.LBE41:
	.loc 1 195 0
	movl	$1461, %ecx
	xorl	%eax, %eax
	movl	%esi, %edi
	rep stosb
	.loc 1 196 0
	jmp	.L35
.LVL109:
.L41:
.LVL110:
	.loc 1 201 0
	pushl	%eax
	pushl	%edi
	.loc 1 199 0
	addl	%edi, %ebx
.LVL111:
	.loc 1 201 0
	pushl	%esi
	pushl	$g_ctx
	call	MD5_Update
.LVL112:
	.loc 1 202 0
	pushl	$0
	pushl	%edi
	pushl	%esi
	pushl	$1461
	movl	-1560(%ebp), %eax
	call	*%eax
.LVL113:
	.loc 1 205 0
	addl	$32, %esp
	cmpl	-1536(%ebp), %ebx
	je	.L44
	.loc 1 210 0
	call	ota_get_status
.LVL114:
	cmpl	$7, %eax
	je	.L45
	movl	$1, -1556(%ebp)
.LVL115:
	jmp	.L35
.LVL116:
.L38:
	.loc 1 216 0
	testb	$2, aos_log_level
	je	.L40
	.loc 1 216 0 discriminator 1
	call	__errno
.LVL117:
	.loc 1 216 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL118:
	movl	%eax, %esi
	call	aos_now_ms
.LVL119:
	pushl	%esi
	pushl	$.LC20
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL120:
	.loc 1 216 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL121:
	.loc 1 216 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL122:
	popl	%ecx
	popl	%esi
	pushl	%eax
	pushl	$.LC20
	call	csp_printf
.LVL123:
	.loc 1 216 0 discriminator 1
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL124:
	addl	$16, %esp
.L40:
	.loc 1 217 0
	addl	-1548(%ebp), %ebx
.LVL125:
	pushl	%edx
	pushl	%edx
	pushl	$g_ctx
	pushl	%ebx
	.loc 1 218 0
	movl	$-2, %ebx
	.loc 1 217 0
	call	save_state
.LVL126:
	addl	$16, %esp
.LVL127:
.L32:
	.loc 1 228 0
	subl	$12, %esp
	pushl	-1552(%ebp)
	call	ota_socket_close
.LVL128:
.L86:
	.loc 1 229 0
	addl	$16, %esp
.LVL129:
.L23:
	.loc 1 230 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	movl	%ebx, %eax
	je	.L48
	call	__stack_chk_fail
.LVL130:
.L44:
	.loc 1 220 0
	subl	$12, %esp
	.loc 1 221 0
	movl	$2, %ebx
	.loc 1 220 0
	pushl	$0
	call	ota_set_update_breakpoint
.LVL131:
	addl	$16, %esp
	jmp	.L32
.LVL132:
.L45:
	.loc 1 223 0
	addl	-1548(%ebp), %ebx
.LVL133:
	pushl	%eax
	pushl	%eax
	pushl	$g_ctx
	pushl	%ebx
	.loc 1 224 0
	movl	$1, %ebx
	.loc 1 223 0
	call	save_state
.LVL134:
	addl	$16, %esp
	jmp	.L32
.LVL135:
.L48:
	.loc 1 230 0
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
.LFE18:
	.size	ota_download, .-ota_download
	.section	.text.unlikely.ota_download
.LCOLDE21:
	.section	.text.ota_download
.LHOTE21:
	.section	.rodata.str1.1
.LC22:
	.string	"%02X"
.LC23:
	.string	"url md5=%s\r\n"
.LC24:
	.string	"digestMD5=%s\r\n"
.LC25:
	.string	"update_packet md5 check FAIL!\r\n"
	.section	.text.unlikely.check_md5,"ax",@progbits
.LCOLDB26:
	.section	.text.check_md5,"ax",@progbits
.LHOTB26:
	.globl	check_md5
	.type	check_md5, @function
check_md5:
.LFB19:
	.loc 1 233 0
	.cfi_startproc
.LVL136:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 234 0
	movl	$4, %ecx
	.loc 1 233 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 234 0
	leal	-77(%ebp), %edi
	.loc 1 233 0
	subl	$100, %esp
	.loc 1 233 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 234 0
	rep stosl
	.loc 1 235 0
	leal	-61(%ebp), %edi
	movl	$33, %ecx
	rep stosb
.LVL137:
	.loc 1 238 0
	leal	-77(%ebp), %edi
	pushl	$g_ctx
	pushl	%edi
	call	MD5_Final
.LVL138:
	leal	-61(%ebp), %ecx
	addl	$16, %esp
	.loc 1 236 0
	xorl	%edx, %edx
	movl	%ecx, %ebx
.LVL139:
.L89:
	.loc 1 240 0 discriminator 2
	movzbl	(%edi,%edx), %eax
	movl	%edx, -96(%ebp)
	movl	%ecx, -92(%ebp)
	pushl	%eax
	pushl	$.LC22
	pushl	$3
	pushl	%ecx
	call	snprintf
.LVL140:
	.loc 1 239 0 discriminator 2
	movl	-96(%ebp), %edx
	movl	-92(%ebp), %ecx
	addl	$16, %esp
	incl	%edx
.LVL141:
	addl	$2, %ecx
	cmpl	$16, %edx
	jne	.L89
	.loc 1 242 0
	testb	$8, aos_log_level
	je	.L90
	.loc 1 242 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL142:
	pushl	%esi
	pushl	$.LC23
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL143:
	popl	%eax
	popl	%edx
	pushl	%esi
	pushl	$.LC23
	call	csp_printf
.LVL144:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL145:
	addl	$16, %esp
.L90:
	.loc 1 243 0 is_stmt 1
	testb	$8, aos_log_level
	je	.L91
	.loc 1 243 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL146:
	pushl	%ebx
	pushl	$.LC24
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL147:
	popl	%edi
	popl	%eax
	pushl	%ebx
	pushl	$.LC24
	call	csp_printf
.LVL148:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL149:
	addl	$16, %esp
.L91:
	.loc 1 244 0 is_stmt 1
	pushl	%ecx
	pushl	$32
	pushl	%esi
	pushl	%ebx
	call	strncmp
.LVL150:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	je	.L92
	.loc 1 246 0
	orl	$-1, %ebx
	.loc 1 245 0
	testb	$2, aos_log_level
	je	.L92
	.loc 1 245 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL151:
	pushl	%edx
	pushl	$.LC25
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL152:
	movl	$.LC25, (%esp)
	call	csp_printf
.LVL153:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL154:
	addl	$16, %esp
.L92:
	.loc 1 249 0 is_stmt 1
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	movl	%ebx, %eax
	je	.L93
	call	__stack_chk_fail
.LVL155:
.L93:
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
	.size	check_md5, .-check_md5
	.section	.text.unlikely.check_md5
.LCOLDE26:
	.section	.text.check_md5
.LHOTE26:
	.globl	g_ctx
	.section	.bss.g_ctx,"aw",@nobits
	.align 32
	.type	g_ctx, @object
	.size	g_ctx, 88
g_ctx:
	.zero	88
	.text
.Letext0:
	.section	.text.unlikely.http_gethost_info
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./utility/digest_algorithm/./md5.h"
	.file 5 "./framework/fota/./ota_update_manifest.h"
	.file 6 "./framework/fota/./ota_util.h"
	.file 7 "./include/aos/log.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/internal/log_impl.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 13 "./framework/fota/download/http/./socket/ota_socket.h"
	.file 14 "./framework/fota/download/http/../ota_download.h"
	.file 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa3f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF105
	.byte	0xc
	.long	.LASF106
	.long	.LASF107
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x5
	.byte	0x4
	.long	0x9a
	.uleb128 0x5
	.byte	0x4
	.long	0xce
	.uleb128 0x6
	.long	0x9a
	.uleb128 0x5
	.byte	0x4
	.long	0xc2
	.uleb128 0x7
	.long	.LASF108
	.byte	0x4
	.long	0x7e
	.byte	0xb
	.byte	0x12
	.long	0x114
	.uleb128 0x8
	.long	.LASF18
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.uleb128 0x9
	.long	.LASF22
	.byte	0x3
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF25
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF26
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF27
	.uleb128 0xa
	.byte	0x58
	.byte	0x4
	.byte	0xc
	.long	0x156
	.uleb128 0xb
	.long	.LASF28
	.byte	0x4
	.byte	0xd
	.long	0x156
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x4
	.byte	0xe
	.long	0x166
	.byte	0x10
	.uleb128 0xb
	.long	.LASF30
	.byte	0x4
	.byte	0xf
	.long	0x176
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.long	0xb7
	.long	0x166
	.uleb128 0xd
	.long	0x93
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0xb7
	.long	0x176
	.uleb128 0xd
	.long	0x93
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.long	0xa1
	.long	0x186
	.uleb128 0xd
	.long	0x93
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF31
	.byte	0x4
	.byte	0x10
	.long	0x129
	.uleb128 0x5
	.byte	0x4
	.long	0xa1
	.uleb128 0x3
	.long	.LASF32
	.byte	0x5
	.byte	0xc
	.long	0x1a2
	.uleb128 0x5
	.byte	0x4
	.long	0x1a8
	.uleb128 0xe
	.long	0x7e
	.long	0x1c6
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x191
	.uleb128 0xf
	.long	0xac
	.uleb128 0xf
	.long	0x7e
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x7e
	.byte	0x6
	.byte	0x11
	.long	0x22d
	.uleb128 0x8
	.long	.LASF33
	.sleb128 -6
	.uleb128 0x8
	.long	.LASF34
	.sleb128 -5
	.uleb128 0x8
	.long	.LASF35
	.sleb128 -4
	.uleb128 0x8
	.long	.LASF36
	.sleb128 -3
	.uleb128 0x8
	.long	.LASF37
	.sleb128 -2
	.uleb128 0x8
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
	.byte	0x4
	.uleb128 0x9
	.long	.LASF44
	.byte	0x5
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6
	.uleb128 0x9
	.long	.LASF46
	.byte	0x7
	.uleb128 0x9
	.long	.LASF47
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.long	0x7e
	.byte	0x6
	.byte	0x23
	.long	0x270
	.uleb128 0x8
	.long	.LASF48
	.sleb128 -6
	.uleb128 0x8
	.long	.LASF49
	.sleb128 -5
	.uleb128 0x8
	.long	.LASF50
	.sleb128 -4
	.uleb128 0x8
	.long	.LASF51
	.sleb128 -3
	.uleb128 0x8
	.long	.LASF52
	.sleb128 -2
	.uleb128 0x8
	.long	.LASF53
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF54
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x1
	.uleb128 0x9
	.long	.LASF56
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF109
	.byte	0xb
	.byte	0xd
	.long	0x85
	.byte	0x3
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.long	0x2d4
	.uleb128 0x13
	.string	"src"
	.byte	0x1
	.byte	0x2c
	.long	0xc2
	.uleb128 0x13
	.string	"web"
	.byte	0x1
	.byte	0x2c
	.long	0xd3
	.uleb128 0x14
	.long	.LASF57
	.byte	0x1
	.byte	0x2c
	.long	0xd3
	.uleb128 0x14
	.long	.LASF58
	.byte	0x1
	.byte	0x2c
	.long	0x2d4
	.uleb128 0x15
	.string	"pa"
	.byte	0x1
	.byte	0x2e
	.long	0xc2
	.uleb128 0x15
	.string	"pb"
	.byte	0x1
	.byte	0x2f
	.long	0xc2
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0x30
	.long	0x7e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x7e
	.uleb128 0x17
	.long	0x27c
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c7
	.uleb128 0x18
	.long	0x288
	.long	.LLST0
	.uleb128 0x19
	.long	0x293
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	0x29e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x19
	.long	0x2a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	0x2b4
	.uleb128 0x1a
	.long	0x2be
	.uleb128 0x1b
	.long	0x2c8
	.byte	0
	.uleb128 0x1c
	.long	.LBB38
	.long	.LBE38-.LBB38
	.long	0x3a2
	.uleb128 0x18
	.long	0x2a9
	.long	.LLST1
	.uleb128 0x18
	.long	0x29e
	.long	.LLST2
	.uleb128 0x18
	.long	0x293
	.long	.LLST3
	.uleb128 0x18
	.long	0x288
	.long	.LLST4
	.uleb128 0x1d
	.long	.LBB39
	.long	.LBE39-.LBB39
	.uleb128 0x1e
	.long	0x2b4
	.long	.LLST5
	.uleb128 0x1e
	.long	0x2be
	.long	.LLST6
	.uleb128 0x1e
	.long	0x2c8
	.long	.LLST7
	.uleb128 0x1f
	.long	.LVL6
	.long	0x919
	.uleb128 0x1f
	.long	.LVL8
	.long	0x924
	.uleb128 0x1f
	.long	.LVL17
	.long	0x924
	.uleb128 0x1f
	.long	.LVL20
	.long	0x92f
	.uleb128 0x1f
	.long	.LVL23
	.long	0x919
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL1
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL2
	.long	0x946
	.uleb128 0x1f
	.long	.LVL3
	.long	0x946
	.uleb128 0x20
	.long	.LVL4
	.long	0x946
	.byte	0
	.uleb128 0x21
	.long	.LASF73
	.byte	0x1
	.byte	0x61
	.long	0x7e
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d6
	.uleb128 0x22
	.string	"url"
	.byte	0x1
	.byte	0x61
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF60
	.byte	0x1
	.byte	0x61
	.long	0x197
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"md5"
	.byte	0x1
	.byte	0x61
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x24
	.string	"ret"
	.byte	0x1
	.byte	0x67
	.long	0x7e
	.long	.LLST8
	.uleb128 0x25
	.long	.LASF61
	.byte	0x1
	.byte	0x68
	.long	0x7e
	.long	.LLST9
	.uleb128 0x26
	.long	.LASF58
	.byte	0x1
	.byte	0x69
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1548
	.uleb128 0x25
	.long	.LASF62
	.byte	0x1
	.byte	0x6a
	.long	0x7e
	.long	.LLST10
	.uleb128 0x25
	.long	.LASF63
	.byte	0x1
	.byte	0x6b
	.long	0x7e
	.long	.LLST11
	.uleb128 0x25
	.long	.LASF64
	.byte	0x1
	.byte	0x6c
	.long	0x7e
	.long	.LLST12
	.uleb128 0x25
	.long	.LASF65
	.byte	0x1
	.byte	0x6d
	.long	0xb7
	.long	.LLST13
	.uleb128 0x25
	.long	.LASF66
	.byte	0x1
	.byte	0x6e
	.long	0x7e
	.long	.LLST14
	.uleb128 0x25
	.long	.LASF67
	.byte	0x1
	.byte	0x6f
	.long	0x7e
	.long	.LLST15
	.uleb128 0x24
	.string	"pos"
	.byte	0x1
	.byte	0x70
	.long	0xc2
	.long	.LLST16
	.uleb128 0x26
	.long	.LASF68
	.byte	0x1
	.byte	0x71
	.long	0x7e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1544
	.uleb128 0x26
	.long	.LASF69
	.byte	0x1
	.byte	0x72
	.long	0x7d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1530
	.uleb128 0x26
	.long	.LASF70
	.byte	0x1
	.byte	0x73
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1540
	.uleb128 0x26
	.long	.LASF71
	.byte	0x1
	.byte	0x74
	.long	0xc2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1536
	.uleb128 0x26
	.long	.LASF72
	.byte	0x1
	.byte	0x75
	.long	0x7e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1497
	.uleb128 0x27
	.long	.LASF111
	.byte	0x1
	.byte	0xe3
	.long	.L32
	.uleb128 0x1c
	.long	.LBB40
	.long	.LBE40-.LBB40
	.long	0x525
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0xb1
	.long	0xc2
	.long	.LLST17
	.uleb128 0x1f
	.long	.LVL98
	.long	0x951
	.uleb128 0x1f
	.long	.LVL100
	.long	0x95c
	.byte	0
	.uleb128 0x1c
	.long	.LBB41
	.long	.LBE41-.LBB41
	.long	0x555
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xbb
	.long	0x7e
	.long	.LLST18
	.uleb128 0x1f
	.long	.LVL106
	.long	0x967
	.uleb128 0x28
	.long	.LVL107
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1568
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LVL27
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL28
	.long	0x946
	.uleb128 0x1f
	.long	.LVL29
	.long	0x946
	.uleb128 0x1f
	.long	.LVL30
	.long	0x946
	.uleb128 0x1f
	.long	.LVL33
	.long	0x27c
	.uleb128 0x1f
	.long	.LVL34
	.long	0x972
	.uleb128 0x1f
	.long	.LVL36
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL37
	.long	0x946
	.uleb128 0x1f
	.long	.LVL38
	.long	0x946
	.uleb128 0x1f
	.long	.LVL39
	.long	0x946
	.uleb128 0x1f
	.long	.LVL41
	.long	0x97d
	.uleb128 0x1f
	.long	.LVL43
	.long	0x988
	.uleb128 0x1f
	.long	.LVL44
	.long	0x919
	.uleb128 0x1f
	.long	.LVL45
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL46
	.long	0x946
	.uleb128 0x1f
	.long	.LVL47
	.long	0x946
	.uleb128 0x1f
	.long	.LVL48
	.long	0x946
	.uleb128 0x1f
	.long	.LVL49
	.long	0x993
	.uleb128 0x1f
	.long	.LVL50
	.long	0x99e
	.uleb128 0x1f
	.long	.LVL52
	.long	0x993
	.uleb128 0x1f
	.long	.LVL53
	.long	0x9a9
	.uleb128 0x1f
	.long	.LVL55
	.long	0x9b4
	.uleb128 0x1f
	.long	.LVL57
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL58
	.long	0x946
	.uleb128 0x1f
	.long	.LVL59
	.long	0x946
	.uleb128 0x1f
	.long	.LVL60
	.long	0x946
	.uleb128 0x1f
	.long	.LVL62
	.long	0x9bf
	.uleb128 0x1f
	.long	.LVL64
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL65
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL66
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL67
	.long	0x946
	.uleb128 0x1f
	.long	.LVL68
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL69
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL70
	.long	0x946
	.uleb128 0x1f
	.long	.LVL71
	.long	0x946
	.uleb128 0x1f
	.long	.LVL74
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL75
	.long	0x946
	.uleb128 0x1f
	.long	.LVL76
	.long	0x946
	.uleb128 0x1f
	.long	.LVL77
	.long	0x946
	.uleb128 0x1f
	.long	.LVL80
	.long	0x9e0
	.uleb128 0x1f
	.long	.LVL82
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL83
	.long	0x946
	.uleb128 0x1f
	.long	.LVL84
	.long	0x946
	.uleb128 0x1f
	.long	.LVL85
	.long	0x946
	.uleb128 0x1f
	.long	.LVL86
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL87
	.long	0x9eb
	.uleb128 0x1f
	.long	.LVL88
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL89
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL90
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL91
	.long	0x946
	.uleb128 0x1f
	.long	.LVL92
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL93
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL95
	.long	0x946
	.uleb128 0x1f
	.long	.LVL96
	.long	0x946
	.uleb128 0x1f
	.long	.LVL101
	.long	0x951
	.uleb128 0x1f
	.long	.LVL112
	.long	0x967
	.uleb128 0x28
	.long	.LVL113
	.uleb128 0x4
	.byte	0x91
	.sleb128 -1568
	.byte	0x6
	.uleb128 0x1f
	.long	.LVL114
	.long	0x9f6
	.uleb128 0x1f
	.long	.LVL117
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL118
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL119
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL120
	.long	0x946
	.uleb128 0x1f
	.long	.LVL121
	.long	0x9ca
	.uleb128 0x1f
	.long	.LVL122
	.long	0x9d5
	.uleb128 0x1f
	.long	.LVL123
	.long	0x946
	.uleb128 0x1f
	.long	.LVL124
	.long	0x946
	.uleb128 0x1f
	.long	.LVL126
	.long	0xa01
	.uleb128 0x1f
	.long	.LVL128
	.long	0xa0c
	.uleb128 0x1f
	.long	.LVL130
	.long	0xa17
	.uleb128 0x1f
	.long	.LVL131
	.long	0xa20
	.uleb128 0x1f
	.long	.LVL134
	.long	0xa01
	.byte	0
	.uleb128 0xc
	.long	0x9a
	.long	0x7e6
	.uleb128 0xd
	.long	0x93
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	0x9a
	.long	0x7f7
	.uleb128 0x29
	.long	0x93
	.value	0x5b4
	.byte	0
	.uleb128 0x21
	.long	.LASF74
	.byte	0x1
	.byte	0xe8
	.long	0x7e
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e8
	.uleb128 0x23
	.long	.LASF30
	.byte	0x1
	.byte	0xe8
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.byte	0xe8
	.long	0x8e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LASF75
	.byte	0x1
	.byte	0xea
	.long	0x8ed
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x26
	.long	.LASF76
	.byte	0x1
	.byte	0xeb
	.long	0x7d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x24
	.string	"i"
	.byte	0x1
	.byte	0xec
	.long	0x7e
	.long	.LLST19
	.uleb128 0x1f
	.long	.LVL138
	.long	0xa2b
	.uleb128 0x1f
	.long	.LVL140
	.long	0xa36
	.uleb128 0x1f
	.long	.LVL142
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL143
	.long	0x946
	.uleb128 0x1f
	.long	.LVL144
	.long	0x946
	.uleb128 0x1f
	.long	.LVL145
	.long	0x946
	.uleb128 0x1f
	.long	.LVL146
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL147
	.long	0x946
	.uleb128 0x1f
	.long	.LVL148
	.long	0x946
	.uleb128 0x1f
	.long	.LVL149
	.long	0x946
	.uleb128 0x1f
	.long	.LVL150
	.long	0x919
	.uleb128 0x1f
	.long	.LVL151
	.long	0x93a
	.uleb128 0x1f
	.long	.LVL152
	.long	0x946
	.uleb128 0x1f
	.long	.LVL153
	.long	0x946
	.uleb128 0x1f
	.long	.LVL154
	.long	0x946
	.uleb128 0x1f
	.long	.LVL155
	.long	0xa17
	.byte	0
	.uleb128 0x6
	.long	0xac
	.uleb128 0xc
	.long	0xa1
	.long	0x8fd
	.uleb128 0xd
	.long	0x93
	.byte	0xf
	.byte	0
	.uleb128 0x2a
	.long	.LASF77
	.byte	0x7
	.byte	0x17
	.long	0x85
	.uleb128 0x2b
	.long	.LASF78
	.byte	0x1
	.byte	0x23
	.long	0x186
	.uleb128 0x5
	.byte	0x3
	.long	g_ctx
	.uleb128 0x2c
	.long	.LASF79
	.long	.LASF79
	.byte	0x8
	.byte	0x27
	.uleb128 0x2c
	.long	.LASF80
	.long	.LASF80
	.byte	0x8
	.byte	0x1f
	.uleb128 0x2c
	.long	.LASF81
	.long	.LASF81
	.byte	0x9
	.byte	0x51
	.uleb128 0x2d
	.long	.LASF82
	.long	.LASF82
	.byte	0xa
	.value	0x20e
	.uleb128 0x2c
	.long	.LASF83
	.long	.LASF83
	.byte	0xb
	.byte	0x50
	.uleb128 0x2c
	.long	.LASF84
	.long	.LASF84
	.byte	0x8
	.byte	0x2c
	.uleb128 0x2c
	.long	.LASF85
	.long	.LASF85
	.byte	0xc
	.byte	0xcc
	.uleb128 0x2c
	.long	.LASF86
	.long	.LASF86
	.byte	0x4
	.byte	0x13
	.uleb128 0x2c
	.long	.LASF87
	.long	.LASF87
	.byte	0xd
	.byte	0xa
	.uleb128 0x2c
	.long	.LASF88
	.long	.LASF88
	.byte	0xe
	.byte	0xe
	.uleb128 0x2c
	.long	.LASF89
	.long	.LASF89
	.byte	0xe
	.byte	0x13
	.uleb128 0x2c
	.long	.LASF90
	.long	.LASF90
	.byte	0xc
	.byte	0xf4
	.uleb128 0x2c
	.long	.LASF91
	.long	.LASF91
	.byte	0xe
	.byte	0x11
	.uleb128 0x2c
	.long	.LASF92
	.long	.LASF92
	.byte	0x4
	.byte	0x12
	.uleb128 0x2c
	.long	.LASF93
	.long	.LASF93
	.byte	0xe
	.byte	0x14
	.uleb128 0x2c
	.long	.LASF94
	.long	.LASF94
	.byte	0xd
	.byte	0xc
	.uleb128 0x2c
	.long	.LASF95
	.long	.LASF95
	.byte	0xf
	.byte	0xf
	.uleb128 0x2c
	.long	.LASF96
	.long	.LASF96
	.byte	0x8
	.byte	0x24
	.uleb128 0x2c
	.long	.LASF97
	.long	.LASF97
	.byte	0xd
	.byte	0xe
	.uleb128 0x2c
	.long	.LASF98
	.long	.LASF98
	.byte	0xd
	.byte	0x12
	.uleb128 0x2c
	.long	.LASF99
	.long	.LASF99
	.byte	0x6
	.byte	0x48
	.uleb128 0x2c
	.long	.LASF100
	.long	.LASF100
	.byte	0xe
	.byte	0xf
	.uleb128 0x2c
	.long	.LASF101
	.long	.LASF101
	.byte	0xd
	.byte	0x10
	.uleb128 0x2e
	.long	.LASF112
	.long	.LASF112
	.uleb128 0x2c
	.long	.LASF102
	.long	.LASF102
	.byte	0xe
	.byte	0x10
	.uleb128 0x2c
	.long	.LASF103
	.long	.LASF103
	.byte	0x4
	.byte	0x14
	.uleb128 0x2d
	.long	.LASF104
	.long	.LASF104
	.byte	0xc
	.value	0x10a
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL22
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL25
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL20-1
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x57
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL22
	.long	.LVL25
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL31
	.long	.LVL126
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128
	.value	0x1
	.byte	0x53
	.long	.LVL130
	.long	.LVL131
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL131
	.long	.LVL132
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL132
	.long	.LVL134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL31
	.long	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL36-1
	.long	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -1560
	.long	.LVL40
	.long	.LVL41-1
	.value	0x1
	.byte	0x50
	.long	.LVL41-1
	.long	.LVL129
	.value	0x3
	.byte	0x91
	.sleb128 -1560
	.long	.LVL130
	.long	.LVL135
	.value	0x3
	.byte	0x91
	.sleb128 -1560
	.long	0
	.long	0
.LLST10:
	.long	.LVL32
	.long	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
	.long	.LVL63
	.value	0x1
	.byte	0x53
	.long	.LVL72
	.long	.LVL79
	.value	0x1
	.byte	0x53
	.long	.LVL81
	.long	.LVL82-1
	.value	0x1
	.byte	0x50
	.long	.LVL82-1
	.long	.LVL94
	.value	0x1
	.byte	0x57
	.long	.LVL97
	.long	.LVL98-1
	.value	0x1
	.byte	0x50
	.long	.LVL98-1
	.long	.LVL104
	.value	0x1
	.byte	0x57
	.long	.LVL109
	.long	.LVL110
	.value	0x1
	.byte	0x50
	.long	.LVL110
	.long	.LVL116
	.value	0x1
	.byte	0x57
	.long	.LVL130
	.long	.LVL132
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL132
	.long	.LVL135
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST11:
	.long	.LVL32
	.long	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL62
	.long	.LVL64-1
	.value	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LVL74-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL32
	.long	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL61
	.long	.LVL78
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL32
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x50
	.long	.LVL43-1
	.long	.LVL51
	.value	0x3
	.byte	0x91
	.sleb128 -1556
	.long	.LVL51
	.long	.LVL54
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LVL128
	.value	0x3
	.byte	0x91
	.sleb128 -1556
	.long	.LVL130
	.long	.LVL135
	.value	0x3
	.byte	0x91
	.sleb128 -1556
	.long	0
	.long	0
.LLST14:
	.long	.LVL32
	.long	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL79
	.long	.LVL125
	.value	0x1
	.byte	0x53
	.long	.LVL132
	.long	.LVL133
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST15:
	.long	.LVL32
	.long	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL79
	.long	.LVL103
	.value	0x3
	.byte	0x91
	.sleb128 -1564
	.long	.LVL103
	.long	.LVL108
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL108
	.long	.LVL115
	.value	0x3
	.byte	0x91
	.sleb128 -1564
	.long	.LVL116
	.long	.LVL127
	.value	0x3
	.byte	0x91
	.sleb128 -1564
	.long	.LVL130
	.long	.LVL135
	.value	0x3
	.byte	0x91
	.sleb128 -1564
	.long	0
	.long	0
.LLST16:
	.long	.LVL32
	.long	.LVL79
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL102
	.long	.LVL106-1
	.value	0x1
	.byte	0x50
	.long	.LVL106-1
	.long	.LVL108
	.value	0x3
	.byte	0x91
	.sleb128 -1564
	.long	0
	.long	0
.LLST17:
	.long	.LVL99
	.long	.LVL100-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL103
	.long	.LVL106-1
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5d9
	.byte	0x9f
	.long	.LVL106-1
	.long	.LVL108
	.value	0xb
	.byte	0x91
	.sleb128 -1564
	.byte	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x5d9
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL137
	.long	.LVL139
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL139
	.long	.LVL140-1
	.value	0x1
	.byte	0x52
	.long	.LVL140-1
	.long	.LVL141
	.value	0x3
	.byte	0x91
	.sleb128 -104
	.long	.LVL141
	.long	.LVL142-1
	.value	0x1
	.byte	0x52
	.long	.LVL142-1
	.long	.LFE19
	.value	0x7
	.byte	0x91
	.sleb128 -104
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"AOS_LL_V_MAX_BIT"
.LASF47:
	.string	"OTA_MAX"
.LASF108:
	.string	"log_level_bit"
.LASF22:
	.string	"AOS_LL_V_INFO_BIT"
.LASF63:
	.string	"send"
.LASF93:
	.string	"ota_set_cur_MD5"
.LASF0:
	.string	"signed char"
.LASF40:
	.string	"OTA_DOWNLOAD"
.LASF110:
	.string	"http_gethost_info"
.LASF2:
	.string	"short int"
.LASF53:
	.string	"OTA_DOWNLOAD_FAIL"
.LASF13:
	.string	"sizetype"
.LASF55:
	.string	"OTA_DOWNLOAD_CANCEL"
.LASF71:
	.string	"host_addr"
.LASF85:
	.string	"sscanf"
.LASF79:
	.string	"strncmp"
.LASF56:
	.string	"OTA_DOWNLOAD_FINISH"
.LASF97:
	.string	"ota_socket_recv"
.LASF96:
	.string	"strerror"
.LASF103:
	.string	"MD5_Final"
.LASF99:
	.string	"ota_get_status"
.LASF18:
	.string	"AOS_LL_V_NONE_BIT"
.LASF69:
	.string	"last_md5"
.LASF15:
	.string	"uint8_t"
.LASF42:
	.string	"OTA_CHECK"
.LASF104:
	.string	"snprintf"
.LASF26:
	.string	"float"
.LASF82:
	.string	"aos_now_ms"
.LASF60:
	.string	"func"
.LASF106:
	.string	"src/ota_download.c"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF91:
	.string	"ota_get_last_MD5_context"
.LASF48:
	.string	"OTA_DOWNLOAD_RECV_FAIL"
.LASF61:
	.string	"sockfd"
.LASF43:
	.string	"OTA_UPGRADE"
.LASF6:
	.string	"long int"
.LASF46:
	.string	"OTA_CANCEL"
.LASF33:
	.string	"OTA_REBOOT_FAILED"
.LASF54:
	.string	"OTA_DOWNLOAD_CONTINUE"
.LASF77:
	.string	"aos_log_level"
.LASF7:
	.string	"__uint32_t"
.LASF28:
	.string	"state"
.LASF31:
	.string	"MD5_CTX"
.LASF64:
	.string	"totalsend"
.LASF51:
	.string	"OTA_DOWNLOAD_IP_FAIL"
.LASF12:
	.string	"long double"
.LASF74:
	.string	"check_md5"
.LASF88:
	.string	"ota_get_update_breakpoint"
.LASF39:
	.string	"OTA_INIT"
.LASF81:
	.string	"atoi"
.LASF1:
	.string	"unsigned char"
.LASF57:
	.string	"file"
.LASF90:
	.string	"sprintf"
.LASF65:
	.string	"breakpoint"
.LASF80:
	.string	"strchr"
.LASF41:
	.string	"OTA_DECOMPRESS"
.LASF45:
	.string	"OTA_REBOOT_SUCCESS"
.LASF73:
	.string	"ota_download"
.LASF17:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF4:
	.string	"__uint8_t"
.LASF8:
	.string	"long unsigned int"
.LASF89:
	.string	"ota_get_last_MD5"
.LASF83:
	.string	"csp_printf"
.LASF3:
	.string	"short unsigned int"
.LASF86:
	.string	"MD5_Update"
.LASF75:
	.string	"digest"
.LASF100:
	.string	"save_state"
.LASF78:
	.string	"g_ctx"
.LASF32:
	.string	"write_flash_cb_t"
.LASF14:
	.string	"char"
.LASF52:
	.string	"OTA_DOWNLOAD_URL_FAIL"
.LASF16:
	.string	"int32_t"
.LASF92:
	.string	"MD5_Init"
.LASF101:
	.string	"ota_socket_close"
.LASF109:
	.string	"aos_log_get_level"
.LASF25:
	.string	"_Bool"
.LASF98:
	.string	"ota_socket_check_conn"
.LASF20:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF30:
	.string	"buffer"
.LASF38:
	.string	"OTA_INIT_FAILED"
.LASF50:
	.string	"OTA_DOWNLOAD_SOCKET_FAIL"
.LASF58:
	.string	"port"
.LASF94:
	.string	"ota_socket_send"
.LASF27:
	.string	"double"
.LASF102:
	.string	"ota_set_update_breakpoint"
.LASF62:
	.string	"nbytes"
.LASF23:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF66:
	.string	"size"
.LASF72:
	.string	"http_buffer"
.LASF67:
	.string	"header_found"
.LASF29:
	.string	"count"
.LASF5:
	.string	"__int32_t"
.LASF87:
	.string	"ota_socket_connect"
.LASF105:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF111:
	.string	"DOWNLOAD_END"
.LASF37:
	.string	"OTA_DOWNLOAD_FAILED"
.LASF21:
	.string	"AOS_LL_V_WARN_BIT"
.LASF84:
	.string	"strstr"
.LASF68:
	.string	"file_size"
.LASF44:
	.string	"OTA_REBOOT"
.LASF107:
	.string	"/home/stone/Documents/pca"
.LASF36:
	.string	"OTA_DECOMPRESS_FAILED"
.LASF35:
	.string	"OTA_CHECK_FAILED"
.LASF112:
	.string	"__stack_chk_fail"
.LASF70:
	.string	"host_file"
.LASF59:
	.string	"isHttps"
.LASF34:
	.string	"OTA_UPGRADE_FAILED"
.LASF49:
	.string	"OTA_DOWNLOAD_SEND_FAIL"
.LASF19:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF95:
	.string	"__errno"
.LASF76:
	.string	"digest_str"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
