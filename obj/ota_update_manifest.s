	.file	"ota_update_manifest.c"
	.text
.Ltext0:
	.section	.text.unlikely.set_download_url,"ax",@progbits
.LCOLDB0:
	.section	.text.set_download_url,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.set_download_url
.Ltext_cold0:
	.section	.text.set_download_url
	.type	set_download_url, @function
set_download_url:
.LFB18:
	.file 1 "framework/fota/ota_update_manifest.c"
	.loc 1 31 0
	.cfi_startproc
.LVL0:
	.loc 1 32 0
	testl	%eax, %eax
	je	.L12
	.loc 1 35 0
	cmpl	$0, msg_temp
	.loc 1 31 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	movl	%eax, %ebx
	.loc 1 35 0
	jne	.L4
	.loc 1 36 0
	subl	$12, %esp
	pushl	$1216
	call	aos_malloc
.LVL1:
	addl	$16, %esp
	movl	%eax, msg_temp
.L4:
	.loc 1 38 0
	movl	msg_temp, %edx
	.loc 1 33 0
	orl	$-1, %eax
	.loc 1 38 0
	testl	%edx, %edx
	je	.L3
	.loc 1 42 0
	xorl	%eax, %eax
	movl	%edx, %edi
	movl	$304, %ecx
	rep stosl
	.loc 1 43 0
	pushl	%eax
	pushl	$1215
	pushl	%ebx
	pushl	%edx
	call	strncpy
.LVL2:
	.loc 1 45 0
	addl	$16, %esp
	xorl	%eax, %eax
.L3:
	.loc 1 46 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL3:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL4:
.L12:
	.loc 1 33 0
	orl	$-1, %eax
.LVL5:
	.loc 1 46 0
	ret
	.cfi_endproc
.LFE18:
	.size	set_download_url, .-set_download_url
	.section	.text.unlikely.set_download_url
.LCOLDE0:
	.section	.text.set_download_url
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"task update start\r\n"
.LC2:
	.string	"[%06d]<I> "
.LC3:
	.string	"\r\n"
.LC4:
	.string	"ota download error\r\n"
.LC5:
	.string	"[%06d]<E> "
.LC6:
	.string	"ota download cancel\r\n"
.LC7:
	.string	"ota check md5 error\r\n"
.LC8:
	.string	"ota status %d\r\n"
.LC9:
	.string	"reboot system after 3 second!\r\n"
.LC10:
	.string	"task update over\r\n"
	.section	.text.unlikely.ota_download_start,"ax",@progbits
.LCOLDB11:
	.section	.text.ota_download_start,"ax",@progbits
.LHOTB11:
	.globl	ota_download_start
	.type	ota_download_start, @function
ota_download_start:
.LFB23:
	.loc 1 109 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 109 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 110 0
	testb	$8, aos_log_level
	je	.L14
	.loc 1 110 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL7:
	pushl	%ecx
	pushl	$.LC1
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL8:
	movl	$.LC1, (%esp)
	call	csp_printf
.LVL9:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL10:
	addl	$16, %esp
.L14:
	.loc 1 111 0 is_stmt 1
	call	ota_get_update_breakpoint
.LVL11:
	subl	$12, %esp
	pushl	%eax
	call	ota_hal_init
.LVL12:
	.loc 1 113 0
	movl	$1, (%esp)
	call	ota_set_status
.LVL13:
	.loc 1 114 0
	movl	$0, (%esp)
	call	ota_status_post
.LVL14:
	.loc 1 115 0
	addl	$12, %esp
	pushl	$md5
	pushl	g_write_func
	pushl	msg_temp
	call	ota_download
.LVL15:
	.loc 1 116 0
	addl	$16, %esp
	testl	%eax, %eax
	jg	.L15
	.loc 1 117 0
	testb	$2, aos_log_level
	je	.L16
	.loc 1 117 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL16:
	pushl	%edx
	pushl	$.LC4
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL17:
	movl	$.LC4, (%esp)
	call	csp_printf
.LVL18:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL19:
	addl	$16, %esp
.L16:
	.loc 1 118 0 is_stmt 1
	subl	$12, %esp
	pushl	$-2
	call	ota_set_status
.LVL20:
	.loc 1 119 0
	addl	$16, %esp
	cmpl	$0, g_finish_cb
	je	.L17
.LBB54:
	.loc 1 120 0
	call	ota_get_update_type
.LVL21:
	movl	%eax, -16(%ebp)
	.loc 1 121 0
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	$1
	call	*g_finish_cb
.LVL22:
	jmp	.L54
.LVL23:
.L15:
.LBE54:
	.loc 1 126 0
	decl	%eax
.LVL24:
	jne	.L18
	.loc 1 127 0
	testb	$2, aos_log_level
	je	.L19
	.loc 1 127 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL25:
	pushl	%ebx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL26:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL27:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL28:
	addl	$16, %esp
.L19:
	.loc 1 128 0 is_stmt 1
	cmpl	$0, g_finish_cb
	je	.L20
.LBB55:
	.loc 1 129 0
	call	ota_get_update_type
.LVL29:
	movl	%eax, -16(%ebp)
	.loc 1 130 0
	leal	-16(%ebp), %eax
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	$1
	call	*g_finish_cb
.LVL30:
	addl	$16, %esp
.L20:
.LBE55:
	.loc 1 132 0
	subl	$12, %esp
	pushl	$7
	jmp	.L55
.L18:
	.loc 1 136 0
	subl	$12, %esp
	pushl	$100
	call	ota_status_post
.LVL31:
	.loc 1 137 0
	movl	$3, (%esp)
	call	ota_set_status
.LVL32:
	.loc 1 138 0
	popl	%eax
	popl	%edx
	pushl	$33
	pushl	$md5
	call	check_md5
.LVL33:
	.loc 1 139 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L21
	.loc 1 140 0
	testb	$2, aos_log_level
	je	.L22
	.loc 1 140 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL34:
	pushl	%ebx
	pushl	$.LC7
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL35:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL36:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL37:
	addl	$16, %esp
.L22:
	.loc 1 141 0 is_stmt 1
	subl	$12, %esp
	pushl	$-4
	jmp	.L55
.LVL38:
.L21:
	.loc 1 144 0
	subl	$12, %esp
	pushl	$100
	call	ota_status_post
.LVL39:
	.loc 1 147 0
	addl	$16, %esp
	testb	$8, aos_log_level
	je	.L23
	.loc 1 147 0 is_stmt 0 discriminator 1
	call	ota_get_status
.LVL40:
	movl	%eax, %ebx
	call	aos_now_ms
.LVL41:
	pushl	%ebx
	pushl	$.LC8
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL42:
	call	ota_get_status
.LVL43:
	popl	%edx
	popl	%ecx
	pushl	%eax
	pushl	$.LC8
	call	csp_printf
.LVL44:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL45:
	addl	$16, %esp
.L23:
	.loc 1 148 0 is_stmt 1
	subl	$12, %esp
	pushl	$4
	call	ota_set_status
.LVL46:
	.loc 1 149 0
	addl	$16, %esp
	cmpl	$0, g_finish_cb
	je	.L24
.LBB56:
	.loc 1 150 0
	call	ota_get_update_type
.LVL47:
	movl	%eax, -16(%ebp)
	.loc 1 151 0
	leal	-16(%ebp), %eax
	pushl	%ebx
	pushl	%ebx
	pushl	%eax
	pushl	$0
	call	*g_finish_cb
.LVL48:
	addl	$16, %esp
.L24:
.LBE56:
	.loc 1 153 0
	subl	$12, %esp
	pushl	$100
	call	ota_status_post
.LVL49:
	.loc 1 154 0
	movl	$5, (%esp)
.L55:
	call	ota_set_status
.LVL50:
.L54:
	addl	$16, %esp
.L17:
	.loc 1 157 0
	subl	$12, %esp
	pushl	$100
	call	ota_status_post
.LVL51:
.LBB57:
.LBB58:
	.loc 1 50 0
	movl	msg_temp, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L25
	.loc 1 51 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL52:
	.loc 1 52 0
	movl	$0, msg_temp
	addl	$16, %esp
.L25:
.LBE58:
.LBE57:
	.loc 1 159 0
	call	ota_status_deinit
.LVL53:
	.loc 1 160 0
	testb	$8, aos_log_level
	je	.L26
	.loc 1 160 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL54:
	pushl	%ecx
	pushl	$.LC9
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL55:
	movl	$.LC9, (%esp)
	call	csp_printf
.LVL56:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL57:
	addl	$16, %esp
.L26:
	.loc 1 161 0 is_stmt 1
	subl	$12, %esp
	pushl	$3000
	call	aos_msleep
.LVL58:
	.loc 1 162 0
	addl	$16, %esp
	testb	$8, aos_log_level
	je	.L27
	.loc 1 162 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL59:
	pushl	%edx
	pushl	$.LC10
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL60:
	movl	$.LC10, (%esp)
	call	csp_printf
.LVL61:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL62:
	addl	$16, %esp
.L27:
	.loc 1 163 0 is_stmt 1
	call	ota_reboot
.LVL63:
	.loc 1 164 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L28
	call	__stack_chk_fail
.LVL64:
.L28:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	ota_download_start, .-ota_download_start
	.section	.text.unlikely.ota_download_start
.LCOLDE11:
	.section	.text.ota_download_start
.LHOTE11:
	.section	.text.unlikely.ota_get_resp_msg,"ax",@progbits
.LCOLDB12:
	.section	.text.ota_get_resp_msg,"ax",@progbits
.LHOTB12:
	.globl	ota_get_resp_msg
	.type	ota_get_resp_msg, @function
ota_get_resp_msg:
.LFB20:
	.loc 1 57 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 59 0
	movl	msg_temp, %eax
	.loc 1 57 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 59 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	ota_get_resp_msg, .-ota_get_resp_msg
	.section	.text.unlikely.ota_get_resp_msg
.LCOLDE12:
	.section	.text.ota_get_resp_msg
.LHOTE12:
	.section	.text.unlikely.ota_set_resp_msg,"ax",@progbits
.LCOLDB13:
	.section	.text.ota_set_resp_msg,"ax",@progbits
.LHOTB13:
	.globl	ota_set_resp_msg
	.type	ota_set_resp_msg, @function
ota_set_resp_msg:
.LFB21:
	.loc 1 62 0
	.cfi_startproc
.LVL65:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 63 0
	movl	8(%ebp), %eax
	.loc 1 64 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 63 0
	jmp	set_download_url
.LVL66:
	.cfi_endproc
.LFE21:
	.size	ota_set_resp_msg, .-ota_set_resp_msg
	.section	.text.unlikely.ota_set_resp_msg
.LCOLDE13:
	.section	.text.ota_set_resp_msg
.LHOTE13:
	.section	.rodata.str1.1
.LC14:
	.string	"%s_%s"
.LC15:
	.string	"%s"
.LC16:
	.string	"ota_version %s\r\n"
	.section	.text.unlikely.ota_if_need,"ax",@progbits
.LCOLDB17:
	.section	.text.ota_if_need,"ax",@progbits
.LHOTB17:
	.globl	ota_if_need
	.type	ota_if_need, @function
ota_if_need:
.LFB22:
	.loc 1 72 0
	.cfi_startproc
.LVL67:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 73 0
	orl	$-1, %ecx
	.loc 1 72 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$112, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 72 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 73 0
	movl	%ebx, %edi
	repnz scasb
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	(%esi)
	pushl	%ebx
	call	strncmp
.LVL68:
	movl	%eax, -112(%ebp)
.LVL69:
	.loc 1 79 0
	leal	64(%ebx), %eax
.LVL70:
	.loc 1 77 0
	orl	$-1, %ecx
	movl	4(%esi), %esi
	.loc 1 73 0
	addl	$12, %esp
	.loc 1 79 0
	movl	%eax, -108(%ebp)
	.loc 1 77 0
	movl	%eax, %edi
	xorl	%eax, %eax
	repnz scasb
	.loc 1 82 0
	leal	-92(%ebp), %edi
	.loc 1 77 0
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	-108(%ebp)
	call	strncmp
.LVL71:
	addl	$16, %esp
	movl	%eax, -116(%ebp)
.LVL72:
	.loc 1 82 0
	xorl	%eax, %eax
.LVL73:
	.loc 1 83 0
	cmpl	$0, -112(%ebp)
	.loc 1 82 0
	movl	$16, %ecx
	rep stosl
	leal	-92(%ebp), %edi
	.loc 1 83 0
	jg	.L61
.L64:
	.loc 1 81 0
	xorl	%esi, %esi
	jmp	.L62
.L61:
	.loc 1 84 0
	cmpb	$0, (%esi)
	je	.L63
	.loc 1 85 0
	call	aos_get_app_version
.LVL74:
	subl	$12, %esp
	pushl	%eax
	pushl	%ebx
	pushl	$.LC14
	pushl	$64
	pushl	%edi
	call	snprintf
.LVL75:
	.loc 1 86 0
	addl	$32, %esp
	cmpl	$0, -116(%ebp)
	jne	.L64
	.loc 1 87 0
	subl	$12, %esp
	pushl	$0
	call	ota_set_update_type
.LVL76:
	jmp	.L78
.LVL77:
.L63:
	.loc 1 91 0
	pushl	%ebx
	pushl	$.LC15
	pushl	$64
	pushl	%edi
	call	snprintf
.LVL78:
.L78:
	addl	$16, %esp
	.loc 1 92 0
	movl	$1, %esi
.LVL79:
.L62:
	.loc 1 96 0
	cmpl	$0, -112(%ebp)
	jne	.L65
	cmpl	$0, -116(%ebp)
	jle	.L65
	.loc 1 97 0
	subl	$12, %esp
	pushl	-108(%ebp)
	.loc 1 100 0
	movl	$1, %esi
.LVL80:
	.loc 1 97 0
	pushl	%ebx
	pushl	$.LC14
	pushl	$64
	pushl	%edi
	call	snprintf
.LVL81:
	.loc 1 99 0
	addl	$20, %esp
	pushl	$1
	call	ota_set_update_type
.LVL82:
	addl	$16, %esp
.LVL83:
.L65:
	.loc 1 103 0
	testb	$8, aos_log_level
	je	.L66
	.loc 1 103 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL84:
	pushl	%edi
	pushl	$.LC16
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL85:
	popl	%eax
	popl	%edx
	pushl	%edi
	pushl	$.LC16
	call	csp_printf
.LVL86:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL87:
	addl	$16, %esp
.L66:
	.loc 1 104 0 is_stmt 1
	subl	$12, %esp
	pushl	%edi
	call	ota_set_ota_version
.LVL88:
	.loc 1 106 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	movl	%esi, %eax
	je	.L67
	call	__stack_chk_fail
.LVL89:
.L67:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL90:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	ota_if_need, .-ota_if_need
	.section	.text.unlikely.ota_if_need
.LCOLDE17:
	.section	.text.ota_if_need
.LHOTE17:
	.section	.rodata.str1.1
.LC18:
	.string	"ota_post_version_msg  [%s][%s] [%s]\r\n"
.LC19:
	.string	"OTA finished, clear ota version in config\r\n"
.LC20:
	.string	""
.LC21:
	.string	"Save dev version to config\r\n"
	.section	.text.unlikely.ota_post_version_msg,"ax",@progbits
.LCOLDB22:
	.section	.text.ota_post_version_msg,"ax",@progbits
.LHOTB22:
	.globl	ota_post_version_msg
	.type	ota_post_version_msg, @function
ota_post_version_msg:
.LFB24:
	.loc 1 167 0
	.cfi_startproc
.LVL91:
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
	.loc 1 169 0
	testb	$8, aos_log_level
	je	.L80
	.loc 1 169 0 is_stmt 0 discriminator 1
	call	ota_get_dev_version
.LVL92:
	movl	%eax, %esi
	call	ota_get_version
.LVL93:
	movl	%eax, %edi
	call	ota_get_system_version
.LVL94:
	movl	%eax, %ebx
	call	aos_now_ms
.LVL95:
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebx
	pushl	$.LC18
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL96:
	addl	$32, %esp
	call	ota_get_dev_version
.LVL97:
	movl	%eax, %edi
	call	ota_get_version
.LVL98:
	movl	%eax, %ebx
	call	ota_get_system_version
.LVL99:
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	pushl	$.LC18
	call	csp_printf
.LVL100:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL101:
	addl	$16, %esp
.L80:
	.loc 1 170 0 is_stmt 1
	call	ota_get_version
.LVL102:
	cmpb	$0, (%eax)
	je	.L82
	.loc 1 171 0
	call	ota_get_system_version
.LVL103:
	orl	$-1, %ecx
	movl	%eax, %edi
	xorl	%eax, %eax
	repnz scasb
	notl	%ecx
	leal	-1(%ecx), %edi
	call	ota_get_version
.LVL104:
	movl	%eax, %ebx
	call	ota_get_system_version
.LVL105:
	pushl	%esi
	pushl	%edi
	pushl	%ebx
	pushl	%eax
	call	strncmp
.LVL106:
	addl	$16, %esp
.LVL107:
	.loc 1 173 0
	testl	%eax, %eax
	jne	.L83
	.loc 1 174 0
	subl	$12, %esp
	pushl	$6
	call	ota_set_status
.LVL108:
	.loc 1 175 0
	movl	$100, (%esp)
	jmp	.L104
.LVL109:
.L83:
	.loc 1 177 0
	subl	$12, %esp
	pushl	$0
	call	ota_set_status
.LVL110:
	.loc 1 178 0
	movl	$0, (%esp)
.L104:
	call	ota_status_post
.LVL111:
	movsbl	%al, %eax
.LVL112:
	addl	$16, %esp
	.loc 1 181 0
	testl	%eax, %eax
	jne	.L82
	.loc 1 182 0
	testb	$8, aos_log_level
	je	.L86
	.loc 1 182 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL113:
	pushl	%ebx
	pushl	$.LC19
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL114:
	movl	$.LC19, (%esp)
	call	csp_printf
.LVL115:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL116:
	addl	$16, %esp
.L86:
	.loc 1 183 0 is_stmt 1
	subl	$12, %esp
	pushl	$.LC20
	call	ota_set_version
.LVL117:
	addl	$16, %esp
.L82:
	.loc 1 187 0
	call	ota_result_post
.LVL118:
	.loc 1 188 0
	testb	%al, %al
	.loc 1 187 0
	movb	%al, %bl
.LVL119:
	.loc 1 188 0
	jne	.L88
	.loc 1 189 0
	call	ota_get_system_version
.LVL120:
	orl	$-1, %ecx
	movl	%eax, %edi
	movb	%bl, %al
	repnz scasb
	notl	%ecx
	movl	%ecx, %ebx
.LVL121:
	decl	%ebx
	call	ota_get_dev_version
.LVL122:
	movl	%eax, %edi
	call	ota_get_system_version
.LVL123:
	pushl	%ecx
	pushl	%ebx
	pushl	%edi
	pushl	%eax
	call	strncmp
.LVL124:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L88
	.loc 1 190 0
	testb	$8, aos_log_level
	je	.L90
	.loc 1 190 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL125:
	pushl	%edx
	pushl	$.LC21
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL126:
	movl	$.LC21, (%esp)
	call	csp_printf
.LVL127:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL128:
	addl	$16, %esp
.L90:
	.loc 1 191 0 is_stmt 1
	call	ota_get_system_version
.LVL129:
	subl	$12, %esp
	pushl	%eax
	call	ota_set_dev_version
.LVL130:
	addl	$16, %esp
.L88:
	.loc 1 197 0
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
.LFE24:
	.size	ota_post_version_msg, .-ota_post_version_msg
	.section	.text.unlikely.ota_post_version_msg
.LCOLDE22:
	.section	.text.ota_post_version_msg
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"ota cancel,ota version don't match dev version ! \r\n"
.LC24:
	.string	"set_url failed\r\n"
.LC25:
	.string	"ota"
	.section	.text.unlikely.ota_do_update_packet,"ax",@progbits
.LCOLDB26:
	.section	.text.ota_do_update_packet,"ax",@progbits
.LHOTB26:
	.globl	ota_do_update_packet
	.type	ota_do_update_packet, @function
ota_do_update_packet:
.LFB25:
	.loc 1 201 0
	.cfi_startproc
.LVL131:
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
	.loc 1 201 0
	movl	8(%ebp), %esi
	.loc 1 204 0
	call	ota_status_init
.LVL132:
	.loc 1 205 0
	subl	$12, %esp
	pushl	$0
	call	ota_set_status
.LVL133:
	.loc 1 207 0
	popl	%ebx
	popl	%edi
	pushl	12(%ebp)
	pushl	%esi
	call	ota_if_need
.LVL134:
	.loc 1 208 0
	addl	$16, %esp
	cmpb	$1, %al
	je	.L106
	.loc 1 209 0
	testb	$2, aos_log_level
	movb	%al, %bl
	je	.L107
	.loc 1 209 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL135:
	pushl	%ecx
	pushl	$.LC23
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL136:
	movl	$.LC23, (%esp)
	call	csp_printf
.LVL137:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL138:
	addl	$16, %esp
.L107:
	.loc 1 210 0 is_stmt 1
	subl	$12, %esp
	pushl	$-1
	call	ota_set_status
.LVL139:
	.loc 1 211 0
	movl	$100, (%esp)
	call	ota_status_post
.LVL140:
	.loc 1 212 0
	call	ota_status_deinit
.LVL141:
	jmp	.L127
.LVL142:
.L106:
	.loc 1 215 0
	subl	$12, %esp
	pushl	$100
	call	ota_status_post
.LVL143:
	.loc 1 218 0
	movl	16(%ebp), %eax
	.loc 1 221 0
	movl	$md5, %edx
	movl	$33, %ecx
	movl	%edx, %edi
	.loc 1 222 0
	addl	$12, %esp
	.loc 1 218 0
	movl	%eax, g_write_func
	.loc 1 219 0
	movl	20(%ebp), %eax
	movl	%eax, g_finish_cb
	.loc 1 221 0
	xorl	%eax, %eax
	rep stosb
	.loc 1 222 0
	leal	1224(%esi), %eax
	pushl	$33
	pushl	%eax
	pushl	%edx
	call	strncpy
.LVL144:
	.loc 1 225 0
	leal	132(%esi), %eax
	.loc 1 223 0
	movb	$0, md5+32
	.loc 1 225 0
	call	set_download_url
.LVL145:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L109
	.loc 1 226 0
	testb	$2, aos_log_level
	.loc 1 228 0
	movb	$-1, %bl
	.loc 1 226 0
	je	.L108
	.loc 1 226 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL146:
	pushl	%edx
	pushl	$.LC24
	pushl	%eax
	pushl	$.LC5
	call	csp_printf
.LVL147:
	movl	$.LC24, (%esp)
	call	csp_printf
.LVL148:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL149:
.L127:
	addl	$16, %esp
	jmp	.L108
.L109:
	xorl	%esi, %esi
.L110:
.LVL150:
	.loc 1 238 0 is_stmt 1 discriminator 1
	pushl	$3072
	pushl	$0
	.loc 1 237 0 discriminator 1
	incl	%esi
.LVL151:
	.loc 1 238 0 discriminator 1
	pushl	$ota_download_start
	pushl	$.LC25
	call	aos_task_new
.LVL152:
	.loc 1 239 0 discriminator 1
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 238 0 discriminator 1
	movl	%eax, %ebx
.LVL153:
	.loc 1 239 0 discriminator 1
	je	.L114
	cmpl	$4, %esi
	jle	.L110
.L114:
	.loc 1 240 0
	testl	%ebx, %ebx
	je	.L108
	.loc 1 241 0
	call	ota_reboot
.LVL154:
.L108:
	.loc 1 247 0
	leal	-12(%ebp), %esp
	movb	%bl, %al
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
.LFE25:
	.size	ota_do_update_packet, .-ota_do_update_packet
	.section	.text.unlikely.ota_do_update_packet
.LCOLDE26:
	.section	.text.ota_do_update_packet
.LHOTE26:
	.section	.text.unlikely.ota_cancel_update_packet,"ax",@progbits
.LCOLDB27:
	.section	.text.ota_cancel_update_packet,"ax",@progbits
.LHOTB27:
	.globl	ota_cancel_update_packet
	.type	ota_cancel_update_packet, @function
ota_cancel_update_packet:
.LFB28:
	.loc 1 271 0
	.cfi_startproc
.LVL155:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 271 0
	movl	8(%ebp), %ebx
.LVL156:
.LBB63:
.LBB64:
	.loc 1 256 0
	testl	%ebx, %ebx
	je	.L129
	.loc 1 260 0
	addl	$1160, %ebx
.LVL157:
	call	platform_ota_get_id
.LVL158:
	pushl	%edx
	pushl	$64
	pushl	%eax
	pushl	%ebx
	call	strncmp
.LVL159:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L129
.LBB65:
.LBB66:
	.loc 1 251 0
	call	ota_get_status
.LVL160:
	testl	%eax, %eax
	je	.L129
	call	ota_get_status
.LVL161:
.LBE66:
.LBE65:
	.loc 1 264 0
	cmpl	$3, %eax
	jg	.L129
.LVL162:
.LBE64:
.LBE63:
	.loc 1 275 0
	subl	$12, %esp
	pushl	$7
	call	ota_set_status
.LVL163:
	addl	$16, %esp
.LBB68:
.LBB67:
	.loc 1 267 0
	movb	$1, %al
	jmp	.L141
.LVL164:
.L129:
.LBE67:
.LBE68:
	.loc 1 271 0
	xorl	%eax, %eax
.LVL165:
.L141:
	.loc 1 278 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	ota_cancel_update_packet, .-ota_cancel_update_packet
	.section	.text.unlikely.ota_cancel_update_packet
.LCOLDE27:
	.section	.text.ota_cancel_update_packet
.LHOTE27:
	.globl	md5
	.section	.bss.md5,"aw",@nobits
	.align 32
	.type	md5, @object
	.size	md5, 33
md5:
	.zero	33
	.section	.bss.msg_temp,"aw",@nobits
	.align 4
	.type	msg_temp, @object
	.size	msg_temp, 4
msg_temp:
	.zero	4
	.globl	g_finish_cb
	.section	.bss.g_finish_cb,"aw",@nobits
	.align 4
	.type	g_finish_cb, @object
	.size	g_finish_cb, 4
g_finish_cb:
	.zero	4
	.globl	g_write_func
	.section	.bss.g_write_func,"aw",@nobits
	.align 4
	.type	g_write_func, @object
	.size	g_write_func, 4
g_write_func:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.set_download_url
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/hal/ota.h"
	.file 5 "./framework/fota/./platform/ota_transport.h"
	.file 6 "framework/fota/ota_update_manifest.h"
	.file 7 "framework/fota/ota_util.h"
	.file 8 "./include/aos/log.h"
	.file 9 "./include/aos/kernel.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 11 "./include/aos/internal/log_impl.h"
	.file 12 "./framework/fota/./download/ota_download.h"
	.file 13 "./framework/fota/./platform/ota_platform_os.h"
	.file 14 "./include/aos/version.h"
	.file 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 16 "framework/fota/ota_version.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xc65
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF118
	.byte	0xc
	.long	.LASF119
	.long	.LASF120
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x1b
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x1d
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x3f
	.long	0x62
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x14
	.long	0x25
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x18
	.long	0x37
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x2c
	.long	0x57
	.uleb128 0x6
	.byte	0x4
	.long	0x9c
	.uleb128 0x6
	.byte	0x4
	.long	0xd0
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x8
	.long	.LASF121
	.byte	0x4
	.long	0x7e
	.byte	0xb
	.byte	0x12
	.long	0x110
	.uleb128 0x9
	.long	.LASF18
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF19
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.byte	0x1
	.uleb128 0xa
	.long	.LASF21
	.byte	0x2
	.uleb128 0xa
	.long	.LASF22
	.byte	0x3
	.uleb128 0xa
	.long	.LASF23
	.byte	0x4
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF25
	.uleb128 0xb
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x13
	.long	0x136
	.uleb128 0xa
	.long	.LASF26
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x1a
	.long	0x14f
	.uleb128 0xa
	.long	.LASF29
	.byte	0
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF31
	.byte	0x4
	.byte	0x1d
	.long	0x136
	.uleb128 0x6
	.byte	0x4
	.long	0xae
	.uleb128 0xc
	.byte	0x10
	.byte	0x5
	.byte	0x10
	.long	0x199
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.byte	0x11
	.long	0xca
	.byte	0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.byte	0x12
	.long	0xca
	.byte	0x4
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.byte	0x13
	.long	0xca
	.byte	0x8
	.uleb128 0xd
	.long	.LASF35
	.byte	0x5
	.byte	0x14
	.long	0xca
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF36
	.byte	0x5
	.byte	0x15
	.long	0x160
	.uleb128 0xe
	.value	0x4ec
	.byte	0x5
	.byte	0x17
	.long	0x205
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.byte	0x18
	.long	0x205
	.byte	0
	.uleb128 0xd
	.long	.LASF33
	.byte	0x5
	.byte	0x19
	.long	0x205
	.byte	0x40
	.uleb128 0xd
	.long	.LASF34
	.byte	0x5
	.byte	0x1a
	.long	0xca
	.byte	0x80
	.uleb128 0xd
	.long	.LASF37
	.byte	0x5
	.byte	0x1b
	.long	0x215
	.byte	0x84
	.uleb128 0xf
	.long	.LASF38
	.byte	0x5
	.byte	0x1c
	.long	0x7e
	.value	0x484
	.uleb128 0xf
	.long	.LASF35
	.byte	0x5
	.byte	0x1d
	.long	0x205
	.value	0x488
	.uleb128 0x10
	.string	"md5"
	.byte	0x5
	.byte	0x1e
	.long	0x226
	.value	0x4c8
	.byte	0
	.uleb128 0x11
	.long	0x9c
	.long	0x215
	.uleb128 0x12
	.long	0x93
	.byte	0x3f
	.byte	0
	.uleb128 0x11
	.long	0x9c
	.long	0x226
	.uleb128 0x13
	.long	0x93
	.value	0x3ff
	.byte	0
	.uleb128 0x11
	.long	0x9c
	.long	0x236
	.uleb128 0x12
	.long	0x93
	.byte	0x21
	.byte	0
	.uleb128 0x2
	.long	.LASF39
	.byte	0x5
	.byte	0x1f
	.long	0x1a4
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0xc
	.long	0x24c
	.uleb128 0x6
	.byte	0x4
	.long	0x252
	.uleb128 0x14
	.long	0x7e
	.long	0x270
	.uleb128 0x15
	.long	0xb9
	.uleb128 0x15
	.long	0x15a
	.uleb128 0x15
	.long	0xb9
	.uleb128 0x15
	.long	0x7e
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x6
	.byte	0xf
	.long	0x27b
	.uleb128 0x6
	.byte	0x4
	.long	0x281
	.uleb128 0x14
	.long	0x7e
	.long	0x295
	.uleb128 0x15
	.long	0x14f
	.uleb128 0x15
	.long	0x9a
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7e
	.byte	0x7
	.byte	0x11
	.long	0x2fc
	.uleb128 0x9
	.long	.LASF42
	.sleb128 -6
	.uleb128 0x9
	.long	.LASF43
	.sleb128 -5
	.uleb128 0x9
	.long	.LASF44
	.sleb128 -4
	.uleb128 0x9
	.long	.LASF45
	.sleb128 -3
	.uleb128 0x9
	.long	.LASF46
	.sleb128 -2
	.uleb128 0x9
	.long	.LASF47
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF48
	.byte	0
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.uleb128 0xa
	.long	.LASF50
	.byte	0x2
	.uleb128 0xa
	.long	.LASF51
	.byte	0x3
	.uleb128 0xa
	.long	.LASF52
	.byte	0x4
	.uleb128 0xa
	.long	.LASF53
	.byte	0x5
	.uleb128 0xa
	.long	.LASF54
	.byte	0x6
	.uleb128 0xa
	.long	.LASF55
	.byte	0x7
	.uleb128 0xa
	.long	.LASF56
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.long	0x7e
	.byte	0x7
	.byte	0x23
	.long	0x33f
	.uleb128 0x9
	.long	.LASF57
	.sleb128 -6
	.uleb128 0x9
	.long	.LASF58
	.sleb128 -5
	.uleb128 0x9
	.long	.LASF59
	.sleb128 -4
	.uleb128 0x9
	.long	.LASF60
	.sleb128 -3
	.uleb128 0x9
	.long	.LASF61
	.sleb128 -2
	.uleb128 0x9
	.long	.LASF62
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF63
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0x1
	.uleb128 0xa
	.long	.LASF65
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.long	.LASF122
	.byte	0xb
	.byte	0xd
	.long	0x85
	.byte	0x3
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0x19
	.long	0xc4
	.byte	0x1
	.uleb128 0x18
	.long	.LASF123
	.byte	0x1
	.byte	0x1e
	.long	0x7e
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x392
	.uleb128 0x19
	.long	.LASF66
	.byte	0x1
	.byte	0x1e
	.long	0xca
	.long	.LLST0
	.uleb128 0x1a
	.long	.LVL1
	.long	0xb10
	.uleb128 0x1a
	.long	.LVL2
	.long	0xb1c
	.byte	0
	.uleb128 0x1b
	.long	.LASF124
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF125
	.byte	0x1
	.byte	0x6c
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x614
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x6c
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x73
	.long	0x7e
	.long	.LLST1
	.uleb128 0x1f
	.long	.LASF126
	.byte	0x1
	.byte	0x9c
	.long	.L17
	.uleb128 0x20
	.long	.LBB54
	.long	.LBE54-.LBB54
	.long	0x3fc
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.byte	0x78
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LVL21
	.long	0xb27
	.byte	0
	.uleb128 0x20
	.long	.LBB55
	.long	.LBE55-.LBB55
	.long	0x421
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.byte	0x81
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LVL29
	.long	0xb27
	.byte	0
	.uleb128 0x20
	.long	.LBB56
	.long	.LBE56-.LBB56
	.long	0x446
	.uleb128 0x21
	.long	.LASF67
	.byte	0x1
	.byte	0x96
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1a
	.long	.LVL47
	.long	0xb27
	.byte	0
	.uleb128 0x22
	.long	0x392
	.long	.LBB57
	.long	.LBE57-.LBB57
	.byte	0x1
	.byte	0x9e
	.long	0x463
	.uleb128 0x1a
	.long	.LVL52
	.long	0xb32
	.byte	0
	.uleb128 0x1a
	.long	.LVL7
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL8
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL9
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL10
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL11
	.long	0xb55
	.uleb128 0x1a
	.long	.LVL12
	.long	0xb60
	.uleb128 0x1a
	.long	.LVL13
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL14
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL15
	.long	0xb81
	.uleb128 0x1a
	.long	.LVL16
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL17
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL18
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL19
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL20
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL25
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL26
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL27
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL28
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL31
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL32
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL33
	.long	0xb8c
	.uleb128 0x1a
	.long	.LVL34
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL35
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL36
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL37
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL39
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL40
	.long	0xb97
	.uleb128 0x1a
	.long	.LVL41
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL42
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL43
	.long	0xb97
	.uleb128 0x1a
	.long	.LVL44
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL45
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL46
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL49
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL50
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL51
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL53
	.long	0xba2
	.uleb128 0x1a
	.long	.LVL54
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL55
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL56
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL57
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL58
	.long	0xbad
	.uleb128 0x1a
	.long	.LVL59
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL60
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL61
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL62
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL63
	.long	0xbb9
	.uleb128 0x1a
	.long	.LVL64
	.long	0xbc4
	.byte	0
	.uleb128 0x23
	.long	.LASF127
	.byte	0x1
	.byte	0x38
	.long	0xca
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.long	.LASF68
	.byte	0x1
	.byte	0x3d
	.long	0x7e
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x662
	.uleb128 0x25
	.long	.LASF66
	.byte	0x1
	.byte	0x3d
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LVL66
	.long	0x357
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF69
	.byte	0x1
	.byte	0x47
	.long	0xa3
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x752
	.uleb128 0x25
	.long	.LASF70
	.byte	0x1
	.byte	0x47
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.byte	0x47
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.long	.LASF72
	.byte	0x1
	.byte	0x49
	.long	0x7e
	.long	.LLST2
	.uleb128 0x28
	.long	.LASF73
	.byte	0x1
	.byte	0x4d
	.long	0x7e
	.long	.LLST3
	.uleb128 0x28
	.long	.LASF74
	.byte	0x1
	.byte	0x51
	.long	0x7e
	.long	.LLST4
	.uleb128 0x21
	.long	.LASF75
	.byte	0x1
	.byte	0x52
	.long	0x205
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x1a
	.long	.LVL68
	.long	0xbcd
	.uleb128 0x1a
	.long	.LVL71
	.long	0xbcd
	.uleb128 0x1a
	.long	.LVL74
	.long	0xbd8
	.uleb128 0x1a
	.long	.LVL75
	.long	0xbe3
	.uleb128 0x1a
	.long	.LVL76
	.long	0xbef
	.uleb128 0x1a
	.long	.LVL78
	.long	0xbe3
	.uleb128 0x1a
	.long	.LVL81
	.long	0xbe3
	.uleb128 0x1a
	.long	.LVL82
	.long	0xbef
	.uleb128 0x1a
	.long	.LVL84
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL85
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL86
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL87
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL88
	.long	0xbfa
	.uleb128 0x1a
	.long	.LVL89
	.long	0xbc4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x236
	.uleb128 0x6
	.byte	0x4
	.long	0x199
	.uleb128 0x24
	.long	.LASF76
	.byte	0x1
	.byte	0xa6
	.long	0xa3
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c8
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xa8
	.long	0x7e
	.long	.LLST5
	.uleb128 0x28
	.long	.LASF77
	.byte	0x1
	.byte	0xa8
	.long	0x7e
	.long	.LLST6
	.uleb128 0x1a
	.long	.LVL92
	.long	0xc05
	.uleb128 0x1a
	.long	.LVL93
	.long	0xc10
	.uleb128 0x1a
	.long	.LVL94
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL95
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL96
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL97
	.long	0xc05
	.uleb128 0x1a
	.long	.LVL98
	.long	0xc10
	.uleb128 0x1a
	.long	.LVL99
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL100
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL101
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL102
	.long	0xc10
	.uleb128 0x1a
	.long	.LVL103
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL104
	.long	0xc10
	.uleb128 0x1a
	.long	.LVL105
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL106
	.long	0xbcd
	.uleb128 0x1a
	.long	.LVL108
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL110
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL111
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL113
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL114
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL115
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL116
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL117
	.long	0xc26
	.uleb128 0x1a
	.long	.LVL118
	.long	0xc31
	.uleb128 0x1a
	.long	.LVL120
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL122
	.long	0xc05
	.uleb128 0x1a
	.long	.LVL123
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL124
	.long	0xbcd
	.uleb128 0x1a
	.long	.LVL125
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL126
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL127
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL128
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL129
	.long	0xc1b
	.uleb128 0x1a
	.long	.LVL130
	.long	0xc3c
	.byte	0
	.uleb128 0x24
	.long	.LASF78
	.byte	0x1
	.byte	0xc7
	.long	0xa3
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ef
	.uleb128 0x25
	.long	.LASF70
	.byte	0x1
	.byte	0xc7
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF71
	.byte	0x1
	.byte	0xc7
	.long	0x758
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	.LASF79
	.byte	0x1
	.byte	0xc8
	.long	0x241
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"fcb"
	.byte	0x1
	.byte	0xc8
	.long	0x270
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xca
	.long	0x7e
	.long	.LLST7
	.uleb128 0x28
	.long	.LASF80
	.byte	0x1
	.byte	0xeb
	.long	0x7e
	.long	.LLST8
	.uleb128 0x1a
	.long	.LVL132
	.long	0xc47
	.uleb128 0x1a
	.long	.LVL133
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL134
	.long	0x662
	.uleb128 0x1a
	.long	.LVL135
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL136
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL137
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL138
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL139
	.long	0xb6b
	.uleb128 0x1a
	.long	.LVL140
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL141
	.long	0xba2
	.uleb128 0x1a
	.long	.LVL143
	.long	0xb76
	.uleb128 0x1a
	.long	.LVL144
	.long	0xb1c
	.uleb128 0x29
	.long	.LVL145
	.long	0x357
	.long	0x9b8
	.uleb128 0x27
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 132
	.byte	0
	.uleb128 0x1a
	.long	.LVL146
	.long	0xb3e
	.uleb128 0x1a
	.long	.LVL147
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL148
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL149
	.long	0xb4a
	.uleb128 0x1a
	.long	.LVL152
	.long	0xc52
	.uleb128 0x1a
	.long	.LVL154
	.long	0xbb9
	.byte	0
	.uleb128 0x2a
	.long	.LASF128
	.byte	0x1
	.byte	0xfe
	.long	0xa3
	.byte	0x1
	.long	0xa0b
	.uleb128 0x2b
	.long	.LASF70
	.byte	0x1
	.byte	0xfe
	.long	0x752
	.byte	0
	.uleb128 0x17
	.long	.LASF82
	.byte	0x1
	.byte	0xf9
	.long	0xa3
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF83
	.byte	0x1
	.value	0x10e
	.long	0xa3
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xab1
	.uleb128 0x2d
	.long	.LASF70
	.byte	0x1
	.value	0x10e
	.long	0x752
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"ret"
	.byte	0x1
	.value	0x110
	.long	0x7e
	.long	.LLST9
	.uleb128 0x2f
	.long	0x9ef
	.long	.LBB63
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x111
	.long	0xaa7
	.uleb128 0x30
	.long	0x9ff
	.long	.LLST10
	.uleb128 0x31
	.long	0xa0b
	.long	.LBB65
	.long	.LBE65-.LBB65
	.byte	0x1
	.value	0x108
	.long	0xa94
	.uleb128 0x1a
	.long	.LVL160
	.long	0xb97
	.uleb128 0x1a
	.long	.LVL161
	.long	0xb97
	.byte	0
	.uleb128 0x1a
	.long	.LVL158
	.long	0xc5d
	.uleb128 0x1a
	.long	.LVL159
	.long	0xbcd
	.byte	0
	.uleb128 0x1a
	.long	.LVL163
	.long	0xb6b
	.byte	0
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.byte	0x15
	.long	0xc4
	.uleb128 0x5
	.byte	0x3
	.long	msg_temp
	.uleb128 0x32
	.long	.LASF85
	.byte	0x8
	.byte	0x17
	.long	0x85
	.uleb128 0x33
	.long	.LASF86
	.byte	0x1
	.byte	0x12
	.long	0x241
	.uleb128 0x5
	.byte	0x3
	.long	g_write_func
	.uleb128 0x33
	.long	.LASF87
	.byte	0x1
	.byte	0x13
	.long	0x270
	.uleb128 0x5
	.byte	0x3
	.long	g_finish_cb
	.uleb128 0x11
	.long	0x9c
	.long	0xaff
	.uleb128 0x12
	.long	0x93
	.byte	0x20
	.byte	0
	.uleb128 0x34
	.string	"md5"
	.byte	0x1
	.byte	0x17
	.long	0xaef
	.uleb128 0x5
	.byte	0x3
	.long	md5
	.uleb128 0x35
	.long	.LASF88
	.long	.LASF88
	.byte	0x9
	.value	0x1e8
	.uleb128 0x36
	.long	.LASF89
	.long	.LASF89
	.byte	0xa
	.byte	0x28
	.uleb128 0x36
	.long	.LASF90
	.long	.LASF90
	.byte	0x7
	.byte	0x4c
	.uleb128 0x35
	.long	.LASF91
	.long	.LASF91
	.byte	0x9
	.value	0x200
	.uleb128 0x35
	.long	.LASF92
	.long	.LASF92
	.byte	0x9
	.value	0x20e
	.uleb128 0x36
	.long	.LASF93
	.long	.LASF93
	.byte	0xb
	.byte	0x50
	.uleb128 0x36
	.long	.LASF94
	.long	.LASF94
	.byte	0xc
	.byte	0xe
	.uleb128 0x36
	.long	.LASF95
	.long	.LASF95
	.byte	0x1
	.byte	0x45
	.uleb128 0x36
	.long	.LASF96
	.long	.LASF96
	.byte	0x7
	.byte	0x46
	.uleb128 0x36
	.long	.LASF97
	.long	.LASF97
	.byte	0x7
	.byte	0x4e
	.uleb128 0x36
	.long	.LASF98
	.long	.LASF98
	.byte	0xc
	.byte	0xb
	.uleb128 0x36
	.long	.LASF99
	.long	.LASF99
	.byte	0x1
	.byte	0x43
	.uleb128 0x36
	.long	.LASF100
	.long	.LASF100
	.byte	0x7
	.byte	0x48
	.uleb128 0x36
	.long	.LASF101
	.long	.LASF101
	.byte	0x7
	.byte	0x44
	.uleb128 0x35
	.long	.LASF102
	.long	.LASF102
	.byte	0x9
	.value	0x215
	.uleb128 0x36
	.long	.LASF103
	.long	.LASF103
	.byte	0xd
	.byte	0x24
	.uleb128 0x37
	.long	.LASF129
	.long	.LASF129
	.uleb128 0x36
	.long	.LASF104
	.long	.LASF104
	.byte	0xa
	.byte	0x27
	.uleb128 0x36
	.long	.LASF105
	.long	.LASF105
	.byte	0xe
	.byte	0x22
	.uleb128 0x35
	.long	.LASF106
	.long	.LASF106
	.byte	0xf
	.value	0x10a
	.uleb128 0x36
	.long	.LASF107
	.long	.LASF107
	.byte	0x7
	.byte	0x4a
	.uleb128 0x36
	.long	.LASF108
	.long	.LASF108
	.byte	0x10
	.byte	0x1b
	.uleb128 0x36
	.long	.LASF109
	.long	.LASF109
	.byte	0x10
	.byte	0x18
	.uleb128 0x36
	.long	.LASF110
	.long	.LASF110
	.byte	0x7
	.byte	0x52
	.uleb128 0x36
	.long	.LASF111
	.long	.LASF111
	.byte	0x10
	.byte	0x17
	.uleb128 0x36
	.long	.LASF112
	.long	.LASF112
	.byte	0x7
	.byte	0x54
	.uleb128 0x36
	.long	.LASF113
	.long	.LASF113
	.byte	0x7
	.byte	0x50
	.uleb128 0x36
	.long	.LASF114
	.long	.LASF114
	.byte	0x10
	.byte	0x1c
	.uleb128 0x36
	.long	.LASF115
	.long	.LASF115
	.byte	0x7
	.byte	0x42
	.uleb128 0x36
	.long	.LASF116
	.long	.LASF116
	.byte	0x9
	.byte	0x43
	.uleb128 0x36
	.long	.LASF117
	.long	.LASF117
	.byte	0x5
	.byte	0x33
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x20
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1-1
	.value	0x1
	.byte	0x50
	.long	.LVL1-1
	.long	.LVL3
	.value	0x1
	.byte	0x53
	.long	.LVL3
	.long	.LVL4
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL15
	.long	.LVL16-1
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LFE22
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	0
	.long	0
.LLST3:
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LFE22
	.value	0x3
	.byte	0x91
	.sleb128 -124
	.long	0
	.long	0
.LLST4:
	.long	.LVL72
	.long	.LVL76
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL77
	.long	.LVL78
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.value	0x1
	.byte	0x56
	.long	.LVL82
	.long	.LVL83
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL83
	.long	.LVL90
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL91
	.long	.LVL112
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL112
	.long	.LVL113-1
	.value	0x1
	.byte	0x50
	.long	.LVL119
	.long	.LVL120-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL120-1
	.long	.LVL121
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL121
	.long	.LVL122-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL91
	.long	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL107
	.long	.LVL108-1
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL109
	.long	.LVL110-1
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL131
	.long	.LVL134
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL134
	.long	.LVL135-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL135-1
	.long	.LVL142
	.value	0x7
	.byte	0x73
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL142
	.long	.LVL143-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x9f
	.long	.LVL153
	.long	.LVL154-1
	.value	0x1
	.byte	0x50
	.long	.LVL154-1
	.long	.LVL154
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL150
	.long	.LVL154
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL155
	.long	.LVL162
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL164
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL164
	.long	.LVL165
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL156
	.long	.LVL157
	.value	0x1
	.byte	0x53
	.long	.LVL157
	.long	.LVL162
	.value	0x2
	.byte	0x91
	.sleb128 0
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB63
	.long	.LBE63
	.long	.LBB68
	.long	.LBE68
	.long	0
	.long	0
	.long	.LFB18
	.long	.LFE18
	.long	.LFB23
	.long	.LFE23
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB28
	.long	.LFE28
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF64:
	.string	"OTA_DOWNLOAD_CANCEL"
.LASF18:
	.string	"AOS_LL_V_NONE_BIT"
.LASF61:
	.string	"OTA_DOWNLOAD_URL_FAIL"
.LASF44:
	.string	"OTA_CHECK_FAILED"
.LASF75:
	.string	"ota_version"
.LASF114:
	.string	"ota_set_dev_version"
.LASF87:
	.string	"g_finish_cb"
.LASF98:
	.string	"ota_download"
.LASF104:
	.string	"strncmp"
.LASF51:
	.string	"OTA_CHECK"
.LASF78:
	.string	"ota_do_update_packet"
.LASF113:
	.string	"ota_result_post"
.LASF11:
	.string	"unsigned int"
.LASF6:
	.string	"__int32_t"
.LASF112:
	.string	"ota_set_version"
.LASF29:
	.string	"OTA_FINISH"
.LASF50:
	.string	"OTA_DECOMPRESS"
.LASF126:
	.string	"OTA_END"
.LASF79:
	.string	"func"
.LASF59:
	.string	"OTA_DOWNLOAD_SOCKET_FAIL"
.LASF71:
	.string	"request_parmas"
.LASF23:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF86:
	.string	"g_write_func"
.LASF15:
	.string	"int8_t"
.LASF116:
	.string	"aos_task_new"
.LASF47:
	.string	"OTA_INIT_FAILED"
.LASF58:
	.string	"OTA_DOWNLOAD_SEND_FAIL"
.LASF33:
	.string	"secondary_version"
.LASF48:
	.string	"OTA_INIT"
.LASF111:
	.string	"ota_get_system_version"
.LASF110:
	.string	"ota_get_version"
.LASF97:
	.string	"ota_status_post"
.LASF85:
	.string	"aos_log_level"
.LASF74:
	.string	"is_need_ota"
.LASF10:
	.string	"long long unsigned int"
.LASF89:
	.string	"strncpy"
.LASF127:
	.string	"ota_get_resp_msg"
.LASF125:
	.string	"ota_download_start"
.LASF22:
	.string	"AOS_LL_V_INFO_BIT"
.LASF120:
	.string	"/home/stone/Documents/pca"
.LASF66:
	.string	"value"
.LASF80:
	.string	"retry_cnt"
.LASF65:
	.string	"OTA_DOWNLOAD_FINISH"
.LASF92:
	.string	"aos_now_ms"
.LASF90:
	.string	"ota_get_update_type"
.LASF25:
	.string	"_Bool"
.LASF21:
	.string	"AOS_LL_V_WARN_BIT"
.LASF128:
	.string	"ota_if_cancel"
.LASF55:
	.string	"OTA_CANCEL"
.LASF73:
	.string	"is_secondary_ota"
.LASF93:
	.string	"csp_printf"
.LASF72:
	.string	"is_primary_ota"
.LASF14:
	.string	"char"
.LASF19:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF28:
	.string	"OTA_ALL"
.LASF76:
	.string	"ota_post_version_msg"
.LASF38:
	.string	"frimware_size"
.LASF62:
	.string	"OTA_DOWNLOAD_FAIL"
.LASF16:
	.string	"uint8_t"
.LASF56:
	.string	"OTA_MAX"
.LASF36:
	.string	"ota_request_params"
.LASF117:
	.string	"platform_ota_get_id"
.LASF46:
	.string	"OTA_DOWNLOAD_FAILED"
.LASF9:
	.string	"long long int"
.LASF115:
	.string	"ota_status_init"
.LASF88:
	.string	"aos_malloc"
.LASF43:
	.string	"OTA_UPGRADE_FAILED"
.LASF119:
	.string	"src/ota_update_manifest.c"
.LASF82:
	.string	"ota_is_cancelable"
.LASF108:
	.string	"ota_set_ota_version"
.LASF68:
	.string	"ota_set_resp_msg"
.LASF45:
	.string	"OTA_DECOMPRESS_FAILED"
.LASF63:
	.string	"OTA_DOWNLOAD_CONTINUE"
.LASF106:
	.string	"snprintf"
.LASF35:
	.string	"device_uuid"
.LASF70:
	.string	"response_parmas"
.LASF95:
	.string	"ota_hal_init"
.LASF105:
	.string	"aos_get_app_version"
.LASF32:
	.string	"primary_version"
.LASF96:
	.string	"ota_set_status"
.LASF20:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF109:
	.string	"ota_get_dev_version"
.LASF54:
	.string	"OTA_REBOOT_SUCCESS"
.LASF0:
	.string	"__int8_t"
.LASF37:
	.string	"download_url"
.LASF12:
	.string	"long double"
.LASF84:
	.string	"msg_temp"
.LASF122:
	.string	"aos_log_get_level"
.LASF107:
	.string	"ota_set_update_type"
.LASF42:
	.string	"OTA_REBOOT_FAILED"
.LASF4:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF57:
	.string	"OTA_DOWNLOAD_RECV_FAIL"
.LASF124:
	.string	"free_msg_temp"
.LASF77:
	.string	"ota_success"
.LASF129:
	.string	"__stack_chk_fail"
.LASF83:
	.string	"ota_cancel_update_packet"
.LASF1:
	.string	"__uint8_t"
.LASF31:
	.string	"OTA_ENUM_RESULT_TYPE"
.LASF100:
	.string	"ota_get_status"
.LASF101:
	.string	"ota_status_deinit"
.LASF13:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF30:
	.string	"OTA_BREAKPOINT"
.LASF17:
	.string	"int32_t"
.LASF102:
	.string	"aos_msleep"
.LASF103:
	.string	"ota_reboot"
.LASF24:
	.string	"AOS_LL_V_MAX_BIT"
.LASF49:
	.string	"OTA_DOWNLOAD"
.LASF67:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF118:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF99:
	.string	"check_md5"
.LASF94:
	.string	"ota_get_update_breakpoint"
.LASF123:
	.string	"set_download_url"
.LASF34:
	.string	"product_type"
.LASF39:
	.string	"ota_response_params"
.LASF27:
	.string	"OTA_APP"
.LASF91:
	.string	"aos_free"
.LASF41:
	.string	"ota_finish_cb_t"
.LASF81:
	.string	"get_download_url"
.LASF2:
	.string	"signed char"
.LASF69:
	.string	"ota_if_need"
.LASF5:
	.string	"short unsigned int"
.LASF40:
	.string	"write_flash_cb_t"
.LASF53:
	.string	"OTA_REBOOT"
.LASF52:
	.string	"OTA_UPGRADE"
.LASF121:
	.string	"log_level_bit"
.LASF26:
	.string	"OTA_KERNEL"
.LASF60:
	.string	"OTA_DOWNLOAD_IP_FAIL"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
