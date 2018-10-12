	.file	"guider.c"
	.text
.Ltext0:
	.section	.text.unlikely.guider_set_domain_type,"ax",@progbits
.LCOLDB0:
	.section	.text.guider_set_domain_type,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.guider_set_domain_type
.Ltext_cold0:
	.section	.text.guider_set_domain_type
	.globl	guider_set_domain_type
	.type	guider_set_domain_type, @function
guider_set_domain_type:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/iotkit-system/src/guider.c"
	.loc 1 39 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 40 0
	movl	8(%ebp), %eax
	.loc 1 41 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 40 0
	movl	%eax, g_domain_type
	.loc 1 41 0
	ret
	.cfi_endproc
.LFE18:
	.size	guider_set_domain_type, .-guider_set_domain_type
	.section	.text.unlikely.guider_set_domain_type
.LCOLDE0:
	.section	.text.guider_set_domain_type
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"iot-as-mqtt.cn-shanghai.aliyuncs.com"
	.section	.text.unlikely.guider_get_domain,"ax",@progbits
.LCOLDB2:
	.section	.text.guider_get_domain,"ax",@progbits
.LHOTB2:
	.globl	guider_get_domain
	.type	guider_get_domain, @function
guider_get_domain:
.LFB19:
	.loc 1 44 0
	.cfi_startproc
	.loc 1 48 0
	cmpl	$0, g_domain_type
	.loc 1 44 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 48 0
	movl	$0, %edx
	movl	$.LC1, %eax
	.loc 1 44 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 49 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 48 0
	cmovne	%edx, %eax
	.loc 1 49 0
	ret
	.cfi_endproc
.LFE19:
	.size	guider_get_domain, .-guider_get_domain
	.section	.text.unlikely.guider_get_domain
.LCOLDE2:
	.section	.text.guider_get_domain
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	",partner_id=%s"
.LC4:
	.string	""
	.section	.text.unlikely._ident_partner,"ax",@progbits
.LCOLDB5:
	.section	.text._ident_partner,"ax",@progbits
.LHOTB5:
	.globl	_ident_partner
	.type	_ident_partner, @function
_ident_partner:
.LFB21:
	.loc 1 174 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 177 0
	movl	$16, %ecx
	.loc 1 174 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 177 0
	leal	-92(%ebp), %ebx
	.loc 1 174 0
	subl	$120, %esp
	.loc 1 177 0
	movl	%ebx, %edi
	.loc 1 174 0
	movl	12(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %esi
	.loc 1 177 0
	rep stosl
	.loc 1 178 0
	pushl	%ebx
	.loc 1 174 0
	movl	%edx, -108(%ebp)
	.loc 1 178 0
	call	HAL_GetPartnerID
.LVL2:
	.loc 1 179 0
	addl	$16, %esp
	cmpb	$0, -92(%ebp)
	movl	-108(%ebp), %edx
	je	.L8
	.loc 1 180 0
	pushl	%ebx
	pushl	$.LC3
	pushl	%edx
	pushl	%esi
	call	HAL_Snprintf
.LVL3:
	addl	$16, %esp
	.loc 1 186 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L11
	jmp	.L12
.L8:
	.loc 1 182 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L12
	movl	%esi, 8(%ebp)
	movl	$.LC4, 12(%ebp)
	.loc 1 186 0
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
	.loc 1 182 0
	jmp	strcpy
.LVL4:
.L12:
	.cfi_restore_state
	.loc 1 186 0
	call	__stack_chk_fail
.LVL5:
.L11:
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
.LFE21:
	.size	_ident_partner, .-_ident_partner
	.section	.text.unlikely._ident_partner
.LCOLDE5:
	.section	.text._ident_partner
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	",module_id=%s"
	.section	.text.unlikely._ident_module,"ax",@progbits
.LCOLDB7:
	.section	.text._ident_module,"ax",@progbits
.LHOTB7:
	.globl	_ident_module
	.type	_ident_module, @function
_ident_module:
.LFB22:
	.loc 1 189 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 192 0
	movl	$16, %ecx
	.loc 1 189 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 192 0
	leal	-92(%ebp), %ebx
	.loc 1 189 0
	subl	$120, %esp
	.loc 1 192 0
	movl	%ebx, %edi
	.loc 1 189 0
	movl	12(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	8(%ebp), %esi
	.loc 1 192 0
	rep stosl
	.loc 1 193 0
	pushl	%ebx
	.loc 1 189 0
	movl	%edx, -108(%ebp)
	.loc 1 193 0
	call	HAL_GetModuleID
.LVL7:
	.loc 1 194 0
	addl	$16, %esp
	cmpb	$0, -92(%ebp)
	movl	-108(%ebp), %edx
	je	.L16
	.loc 1 195 0
	pushl	%ebx
	pushl	$.LC6
	pushl	%edx
	pushl	%esi
	call	HAL_Snprintf
.LVL8:
	addl	$16, %esp
	.loc 1 201 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L19
	jmp	.L20
.L16:
	.loc 1 197 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L20
	movl	%esi, 8(%ebp)
	movl	$.LC4, 12(%ebp)
	.loc 1 201 0
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
	.loc 1 197 0
	jmp	strcpy
.LVL9:
.L20:
	.cfi_restore_state
	.loc 1 201 0
	call	__stack_chk_fail
.LVL10:
.L19:
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
.LFE22:
	.size	_ident_module, .-_ident_module
	.section	.text.unlikely._ident_module
.LCOLDE7:
	.section	.text._ident_module
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"rc <= len"
.LC9:
	.string	"framework/protocol/linkkit/iotkit/iotkit-system/src/guider.c"
.LC10:
	.string	"### %s | %s(%d): ASSERT FAILED ###: %s is FALSE\r\n"
.LC11:
	.string	"||"
	.section	.text.unlikely._fill_conn_string,"ax",@progbits
.LCOLDB12:
	.section	.text._fill_conn_string,"ax",@progbits
.LHOTB12:
	.globl	_fill_conn_string
	.type	_fill_conn_string, @function
_fill_conn_string:
.LFB23:
	.loc 1 204 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 204 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	.loc 1 209 0
	leal	20(%ebp), %eax
.LVL12:
	.loc 1 210 0
	pushl	%eax
	pushl	16(%ebp)
	pushl	%esi
	pushl	%ebx
	call	HAL_Vsnprintf
.LVL13:
	.loc 1 212 0
	addl	$16, %esp
	cmpl	%eax, %esi
	jge	.L23
	.loc 1 212 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC8
	pushl	$212
	pushl	$__func__.3975
	pushl	$.LC9
	pushl	$.LC10
	call	HAL_Printf
.LVL14:
	addl	$32, %esp
.L23:
	.loc 1 214 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC11
	pushl	%ebx
	call	strstr
.LVL15:
	addl	$16, %esp
.LVL16:
	.loc 1 215 0
	testl	%eax, %eax
	je	.L24
	.loc 1 216 0
	movb	$0, (%eax)
.L24:
.LVL17:
	.loc 1 221 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
.LVL18:
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	_fill_conn_string, .-_fill_conn_string
	.section	.text.unlikely._fill_conn_string
.LCOLDE12:
	.section	.text._fill_conn_string
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"-----------------------------------------"
.LC14:
	.string	"%s"
.LC15:
	.string	"Host"
.LC16:
	.string	"%16s : %-s"
.LC17:
	.string	"Port"
.LC18:
	.string	"%16s : %d"
.LC19:
	.string	"ClientID"
.LC20:
	.string	"TLS PubKey"
.LC21:
	.string	"%16s : %p ('%.16s ...')"
	.section	.text.unlikely.guider_print_conn_info,"ax",@progbits
.LCOLDB22:
	.section	.text.guider_print_conn_info,"ax",@progbits
.LHOTB22:
	.globl	guider_print_conn_info
	.type	guider_print_conn_info, @function
guider_print_conn_info:
.LFB24:
	.loc 1 224 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 224 0
	movl	8(%ebp), %ebx
	.loc 1 225 0
	pushl	$.LC13
	pushl	$.LC14
	pushl	$5
	pushl	$225
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL20:
	.loc 1 226 0
	leal	2(%ebx), %eax
	addl	$24, %esp
	pushl	%eax
	pushl	$.LC15
	pushl	$.LC16
	pushl	$5
	pushl	$226
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL21:
	.loc 1 227 0
	movzwl	(%ebx), %eax
	addl	$24, %esp
	pushl	%eax
	pushl	$.LC17
	pushl	$.LC18
	pushl	$5
	pushl	$227
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL22:
	.loc 1 230 0
	leal	131(%ebx), %eax
	addl	$24, %esp
	pushl	%eax
	pushl	$.LC19
	pushl	$.LC16
	pushl	$5
	pushl	$230
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL23:
	.loc 1 231 0
	movl	1160(%ebx), %eax
	addl	$32, %esp
	testl	%eax, %eax
	je	.L30
	.loc 1 232 0
	pushl	%edx
	pushl	%eax
	pushl	%eax
	pushl	$.LC20
	pushl	$.LC21
	pushl	$5
	pushl	$232
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL24:
	addl	$32, %esp
.L30:
	.loc 1 235 0
	subl	$12, %esp
	pushl	$.LC13
	pushl	$.LC14
	pushl	$5
	pushl	$235
	pushl	$__FUNCTION__.3979
	call	LITE_syslog
.LVL25:
	.loc 1 236 0
	addl	$32, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	guider_print_conn_info, .-guider_print_conn_info
	.section	.text.unlikely.guider_print_conn_info
.LCOLDE22:
	.section	.text.guider_print_conn_info
.LHOTE22:
	.section	.rodata.str1.1
.LC23:
	.string	"...................................................."
.LC24:
	.string	"ProductKey"
.LC25:
	.string	"%20s : %-s"
.LC26:
	.string	"DeviceName"
.LC27:
	.string	"DeviceID"
.LC28:
	.string	"PartnerID Buf"
.LC29:
	.string	"ModuleID Buf"
.LC30:
	.string	"Guider URL"
.LC31:
	.string	"%20s : %s"
.LC32:
	.string	"Guider SecMode"
.LC33:
	.string	"%20s : %d (%s)"
.LC34:
	.string	"Guider Timestamp"
.LC35:
	.string	"Guider ID2"
.LC36:
	.string	"Guider DeviceCode"
	.section	.text.unlikely.guider_print_dev_guider_info,"ax",@progbits
.LCOLDB37:
	.section	.text.guider_print_dev_guider_info,"ax",@progbits
.LHOTB37:
	.globl	guider_print_dev_guider_info
	.type	guider_print_dev_guider_info, @function
guider_print_dev_guider_info:
.LFB25:
	.loc 1 247 0
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
	subl	$56, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 247 0
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 248 0
	pushl	$.LC23
	.loc 1 247 0
	movl	8(%ebp), %ebx
	.loc 1 248 0
	pushl	$.LC14
	pushl	$5
	.loc 1 247 0
	movl	%eax, -28(%ebp)
	movl	20(%ebp), %eax
	.loc 1 248 0
	pushl	$248
	pushl	$__FUNCTION__.3991
	.loc 1 247 0
	movl	%edx, -44(%ebp)
	movl	36(%ebp), %esi
	movl	%eax, -32(%ebp)
	movl	24(%ebp), %eax
	movl	40(%ebp), %edi
	movl	%eax, -40(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 248 0
	call	LITE_syslog
.LVL27:
	.loc 1 249 0
	addl	$24, %esp
	pushl	%ebx
	pushl	$.LC24
	pushl	$.LC25
	pushl	$5
	pushl	$249
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL28:
	.loc 1 250 0
	leal	21(%ebx), %ecx
	addl	$24, %esp
	.loc 1 251 0
	addl	$54, %ebx
	.loc 1 250 0
	pushl	%ecx
	pushl	$.LC26
	pushl	$.LC25
	pushl	$5
	pushl	$250
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL29:
	.loc 1 251 0
	addl	$24, %esp
	pushl	%ebx
	pushl	$.LC27
	pushl	$.LC25
	pushl	$5
	pushl	$251
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL30:
	.loc 1 253 0
	addl	$20, %esp
	pushl	$.LC23
	pushl	$.LC14
	pushl	$5
	pushl	$253
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL31:
	.loc 1 254 0
	movl	-44(%ebp), %edx
	addl	$24, %esp
	pushl	%edx
	pushl	$.LC28
	pushl	$.LC25
	pushl	$5
	pushl	$254
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL32:
	.loc 1 255 0
	addl	$24, %esp
	pushl	-28(%ebp)
	pushl	$.LC29
	pushl	$.LC25
	pushl	$5
	pushl	$255
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL33:
	.loc 1 256 0
	addl	$24, %esp
	pushl	-32(%ebp)
	pushl	$.LC30
	pushl	$.LC31
	pushl	$5
	pushl	$256
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL34:
	.loc 1 257 0
	movl	-40(%ebp), %eax
	addl	$32, %esp
	testl	%eax, %eax
	jle	.L36
	.loc 1 258 0
	pushl	%ecx
	pushl	secmode_str(,%eax,4)
	pushl	%eax
	pushl	$.LC32
	pushl	$.LC33
	pushl	$5
	pushl	$258
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL35:
	addl	$32, %esp
.L36:
	.loc 1 260 0
	pushl	%edx
	pushl	%edx
	pushl	-36(%ebp)
	pushl	$.LC34
	pushl	$.LC31
	pushl	$5
	pushl	$260
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL36:
	.loc 1 261 0
	addl	$20, %esp
	pushl	$.LC23
	pushl	$.LC14
	pushl	$5
	pushl	$261
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL37:
	.loc 1 263 0
	addl	$32, %esp
	testl	%esi, %esi
	je	.L37
	.loc 1 264 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	$.LC35
	pushl	$.LC31
	pushl	$5
	pushl	$264
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL38:
	.loc 1 265 0
	addl	$24, %esp
	pushl	%edi
	pushl	$.LC36
	pushl	$.LC31
	pushl	$5
	pushl	$265
	pushl	$__FUNCTION__.3991
	call	LITE_syslog
.LVL39:
	addl	$32, %esp
.L37:
	.loc 1 267 0
	movl	$.LC23, 24(%ebp)
	movl	$.LC14, 20(%ebp)
	movl	$5, 16(%ebp)
	movl	$267, 12(%ebp)
	movl	$__FUNCTION__.3991, 8(%ebp)
	.loc 1 270 0
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
	.loc 1 267 0
	jmp	LITE_syslog
.LVL40:
	.cfi_endproc
.LFE25:
	.size	guider_print_dev_guider_info, .-guider_print_dev_guider_info
	.section	.text.unlikely.guider_print_dev_guider_info
.LCOLDE37:
	.section	.text.guider_print_dev_guider_info
.LHOTE37:
	.section	.rodata.str1.1
.LC38:
	.string	"dev"
.LC39:
	.string	"conn"
.LC40:
	.string	"2524608000000"
.LC41:
	.string	"clientId%sdeviceName%sproductKey%stimestamp%s"
.LC42:
	.string	"rc < sizeof(hmac_source)"
.LC43:
	.string	"%s.%s"
.LC44:
	.string	"%s&%s"
.LC45:
	.string	"%s|securemode=%d,timestamp=%s,signmethod=hmacsha1,gw=%d%s%s|"
	.section	.text.unlikely.iotx_guider_authenticate,"ax",@progbits
.LCOLDB46:
	.section	.text.iotx_guider_authenticate,"ax",@progbits
.LHOTB46:
	.globl	iotx_guider_authenticate
	.type	iotx_guider_authenticate, @function
iotx_guider_authenticate:
.LFB29:
	.loc 1 485 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 486 0
	movl	$20, %ecx
	.loc 1 485 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 486 0
	leal	-1212(%ebp), %edi
	.loc 1 485 0
	subl	$1308, %esp
	.loc 1 485 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 486 0
	rep stosl
	.loc 1 487 0
	leal	-1132(%ebp), %edi
	movl	$20, %ecx
	rep stosl
	.loc 1 488 0
	leal	-1052(%ebp), %edi
	movl	$64, %ecx
	rep stosl
.LVL41:
	.loc 1 490 0
	leal	-796(%ebp), %edi
	movl	$64, %ecx
	rep stosl
	.loc 1 491 0
	leal	-1292(%ebp), %edi
	movl	$4, %ecx
	rep stosl
	.loc 1 493 0
	call	iotx_device_info_get
.LVL42:
	movl	%eax, -1312(%ebp)
.LVL43:
	.loc 1 494 0
	call	iotx_conn_info_get
.LVL44:
	.loc 1 498 0
	cmpl	$0, -1312(%ebp)
	.loc 1 494 0
	movl	%eax, -1308(%ebp)
.LVL45:
	.loc 1 498 0
	jne	.L43
	.loc 1 498 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC38
	pushl	$498
	pushl	$__func__.4017
	pushl	$.LC9
	pushl	$.LC10
	call	HAL_Printf
.LVL46:
	addl	$32, %esp
.L43:
	.loc 1 499 0 is_stmt 1
	cmpl	$0, -1308(%ebp)
	jne	.L44
	.loc 1 499 0 is_stmt 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC39
	pushl	$499
	pushl	$__func__.4017
	pushl	$.LC9
	pushl	$.LC10
	call	HAL_Printf
.LVL47:
	addl	$32, %esp
.L44:
	.loc 1 501 0 is_stmt 1
	leal	-1212(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	$80
	pushl	%eax
	call	_ident_partner
.LVL48:
	.loc 1 502 0
	popl	%ecx
	leal	-1132(%ebp), %eax
	popl	%ebx
	pushl	$80
	pushl	%eax
	call	_ident_module
.LVL49:
.LBB10:
.LBB11:
	.loc 1 275 0
	leal	-1052(%ebp), %eax
.LVL50:
	pushl	$.LC4
	pushl	$.LC14
	pushl	$256
	pushl	%eax
	call	HAL_Snprintf
.LVL51:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 297 0
	leal	-1292(%ebp), %eax
.LVL52:
	addl	$32, %esp
	pushl	$.LC40
	pushl	$.LC14
	pushl	$16
	pushl	%eax
	call	HAL_Snprintf
.LVL53:
.LBE13:
.LBE12:
.LBB14:
.LBB15:
	.loc 1 62 0
	call	iotx_device_info_get
.LVL54:
	.loc 1 63 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 62 0
	movl	%eax, %ebx
.LVL55:
	.loc 1 63 0
	jne	.L45
	subl	$12, %esp
	pushl	$.LC38
	pushl	$63
	pushl	$__func__.3956
	pushl	$.LC9
	pushl	$.LC10
	call	HAL_Printf
.LVL56:
	addl	$32, %esp
.L45:
	.loc 1 65 0
	leal	-1276(%ebp), %edx
	xorl	%eax, %eax
	movl	$16, %ecx
	movl	%edx, %edi
	.loc 1 66 0
	leal	-540(%ebp), %edx
	.loc 1 65 0
	rep stosl
	.loc 1 66 0
	movl	%edx, %edi
	movl	$128, %ecx
	rep stosl
	.loc 1 67 0
	pushl	%eax
	leal	-1292(%ebp), %eax
.LVL57:
	pushl	%eax
	.loc 1 71 0
	leal	21(%ebx), %eax
.LVL58:
	.loc 1 67 0
	pushl	%ebx
.LVL59:
	pushl	%eax
.LVL60:
	.loc 1 70 0
	leal	54(%ebx), %eax
	.loc 1 67 0
	pushl	%eax
.LVL61:
	pushl	$.LC41
.LVL62:
	pushl	$512
.LVL63:
	pushl	%edx
.LVL64:
	call	HAL_Snprintf
.LVL65:
	.loc 1 74 0
	addl	$32, %esp
	cmpl	$511, %eax
	jbe	.L46
	subl	$12, %esp
	pushl	$.LC42
	pushl	$74
	pushl	$__func__.3956
	pushl	$.LC9
	pushl	$.LC10
	call	HAL_Printf
.LVL66:
	addl	$32, %esp
.L46:
	.loc 1 80 0
	leal	119(%ebx), %edx
	xorl	%eax, %eax
	orl	$-1, %ecx
	.loc 1 77 0
	leal	-540(%ebp), %ebx
.LVL67:
	subl	$12, %esp
	.loc 1 80 0
	movl	%edx, %edi
	repnz scasb
	.loc 1 77 0
	movl	%ebx, %edi
	.loc 1 80 0
	notl	%ecx
	leal	-1(%ecx), %esi
	.loc 1 77 0
	orl	$-1, %ecx
	repnz scasb
	pushl	%esi
	leal	-1276(%ebp), %esi
	pushl	%edx
	movl	%ecx, %eax
	.loc 1 88 0
	leal	-796(%ebp), %edi
.LVL68:
	.loc 1 77 0
	notl	%eax
	pushl	%esi
	decl	%eax
	pushl	%eax
	pushl	%ebx
.LBE15:
.LBE14:
	.loc 1 508 0
	leal	-1292(%ebp), %ebx
.LVL69:
.LBB18:
.LBB16:
	.loc 1 77 0
	call	utils_hmac_sha1
.LVL70:
	.loc 1 88 0
	movl	$64, %ecx
.LBE16:
.LBE18:
	.loc 1 508 0
	leal	-796(%ebp), %edx
	leal	-1052(%ebp), %eax
.LBB19:
.LBB17:
	.loc 1 88 0
	rep movsl
.LVL71:
.LBE17:
.LBE19:
	.loc 1 508 0
	leal	-1212(%ebp), %esi
	leal	-1132(%ebp), %edi
	addl	$20, %esp
	pushl	$0
	pushl	$0
	pushl	%edx
	pushl	%ebx
	pushl	$2
	pushl	%eax
	pushl	%edi
	pushl	%esi
	pushl	-1312(%ebp)
	movl	%edx, -1316(%ebp)
	call	guider_print_dev_guider_info
.LVL72:
	.loc 1 538 0
	addl	$48, %esp
	call	iotx_ca_get
.LVL73:
	movl	-1308(%ebp), %edx
	movl	%eax, 1160(%edx)
	.loc 1 550 0
	movw	$1883, (%edx)
	.loc 1 551 0
	call	guider_get_domain
.LVL74:
	subl	$12, %esp
	pushl	%eax
	movl	-1308(%ebp), %eax
	pushl	-1312(%ebp)
	pushl	$.LC43
	pushl	$129
	addl	$2, %eax
	pushl	%eax
	call	_fill_conn_string
.LVL75:
	.loc 1 558 0
	movl	-1312(%ebp), %eax
	.loc 1 556 0
	addl	$20, %esp
	pushl	-1312(%ebp)
	.loc 1 558 0
	addl	$21, %eax
	.loc 1 556 0
	pushl	%eax
	movl	-1308(%ebp), %eax
	pushl	$.LC44
	pushl	$513
	addl	$388, %eax
	pushl	%eax
	call	_fill_conn_string
.LVL76:
	.loc 1 560 0
	movl	-1308(%ebp), %eax
	movl	-1316(%ebp), %edx
	addl	$32, %esp
	addl	$901, %eax
	pushl	%edx
	pushl	$.LC14
	pushl	$257
	pushl	%eax
	call	_fill_conn_string
.LVL77:
	.loc 1 590 0
	movl	-1312(%ebp), %eax
	.loc 1 579 0
	movl	%edi, (%esp)
	pushl	%esi
	pushl	$0
	pushl	%ebx
	pushl	$2
	.loc 1 590 0
	addl	$54, %eax
	.loc 1 579 0
	pushl	%eax
	movl	-1308(%ebp), %eax
	pushl	$.LC45
	pushl	$257
	addl	$131, %eax
	pushl	%eax
	call	_fill_conn_string
.LVL78:
	.loc 1 598 0
	addl	$36, %esp
	pushl	-1308(%ebp)
	call	guider_print_conn_info
.LVL79:
	.loc 1 606 0
	xorl	%eax, %eax
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L47
	call	__stack_chk_fail
.LVL80:
.L47:
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
.LVL81:
	ret
	.cfi_endproc
.LFE29:
	.size	iotx_guider_authenticate, .-iotx_guider_authenticate
	.section	.text.unlikely.iotx_guider_authenticate
.LCOLDE46:
	.section	.text.iotx_guider_authenticate
.LHOTE46:
	.section	.rodata.__func__.3956,"a",@progbits
	.align 4
	.type	__func__.3956, @object
	.size	__func__.3956, 21
__func__.3956:
	.string	"_calc_hmac_signature"
	.section	.rodata.__func__.4017,"a",@progbits
	.align 4
	.type	__func__.4017, @object
	.size	__func__.4017, 25
__func__.4017:
	.string	"iotx_guider_authenticate"
	.section	.rodata.__FUNCTION__.3991,"a",@progbits
	.align 4
	.type	__FUNCTION__.3991, @object
	.size	__FUNCTION__.3991, 29
__FUNCTION__.3991:
	.string	"guider_print_dev_guider_info"
	.section	.rodata.__FUNCTION__.3979,"a",@progbits
	.align 4
	.type	__FUNCTION__.3979, @object
	.size	__FUNCTION__.3979, 23
__FUNCTION__.3979:
	.string	"guider_print_conn_info"
	.section	.rodata.__func__.3975,"a",@progbits
	.align 4
	.type	__func__.3975, @object
	.size	__func__.3975, 18
__func__.3975:
	.string	"_fill_conn_string"
	.globl	g_domain_type
	.section	.bss.g_domain_type,"aw",@nobits
	.align 4
	.type	g_domain_type, @object
	.size	g_domain_type, 4
g_domain_type:
	.zero	4
	.globl	secmode_str
	.section	.rodata.str1.1
.LC47:
	.string	"TCP + Guider + Plain"
.LC48:
	.string	"TCP + Guider + ID2-Crypto"
.LC49:
	.string	"TLS + Direct"
.LC50:
	.string	"TCP + Direct + Plain"
.LC51:
	.string	"TCP + Direct + ID2-Crypto"
.LC52:
	.string	"TLS + Guider + ID2-Authenticate"
.LC53:
	.string	"TLS + Direct + ID2-Crypto"
	.section	.data.secmode_str,"aw",@progbits
	.align 32
	.type	secmode_str, @object
	.size	secmode_str, 36
secmode_str:
	.long	.LC47
	.long	.LC48
	.long	.LC49
	.long	.LC50
	.long	.LC51
	.long	.LC52
	.long	.LC4
	.long	.LC53
	.long	.LC4
	.text
.Letext0:
	.section	.text.unlikely.guider_set_domain_type
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "./framework/protocol/linkkit/iotkit/base/utils/iot_export.h"
	.file 7 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.file 8 "./framework/protocol/linkkit/iotkit/iotkit-system/guider_internal.h"
	.file 9 "./framework/protocol/linkkit/iotkit/sdk-encap/imports/iot_import_product.h"
	.file 10 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 12 "./framework/protocol/linkkit/iotkit/iotkit-system/lite-system.h"
	.file 13 "./framework/protocol/linkkit/iotkit/base/utils/digest/utils_hmac.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa1a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF88
	.byte	0xc
	.long	.LASF89
	.long	.LASF90
	.long	.Ldebug_ranges0+0x20
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0x2b
	.long	0x61
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x4
	.long	0x8a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x97
	.uleb128 0x6
	.long	0x8a
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x28
	.long	0xa7
	.uleb128 0x7
	.byte	0x4
	.long	.LASF91
	.long	0x8a
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x2e
	.long	0x9c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x5
	.byte	0x24
	.long	0x56
	.uleb128 0x8
	.long	.LASF35
	.byte	0x4
	.long	0x25
	.byte	0x7
	.byte	0x22
	.long	0xfc
	.uleb128 0x9
	.long	.LASF16
	.byte	0
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.uleb128 0x9
	.long	.LASF18
	.byte	0x2
	.uleb128 0x9
	.long	.LASF19
	.byte	0x3
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0xd9
	.byte	0x6
	.byte	0x36
	.long	0x141
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0x37
	.long	0x141
	.byte	0
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0x38
	.long	0x151
	.byte	0x15
	.uleb128 0xb
	.long	.LASF24
	.byte	0x6
	.byte	0x39
	.long	0x161
	.byte	0x36
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x3a
	.long	0x161
	.byte	0x77
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0x3b
	.long	0x151
	.byte	0xb8
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x151
	.uleb128 0xd
	.long	0x7d
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x161
	.uleb128 0xd
	.long	0x7d
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x171
	.uleb128 0xd
	.long	0x7d
	.byte	0x40
	.byte	0
	.uleb128 0x4
	.long	.LASF27
	.byte	0x6
	.byte	0x3c
	.long	0x17c
	.uleb128 0x5
	.byte	0x4
	.long	0xfc
	.uleb128 0xe
	.value	0x48c
	.byte	0x6
	.byte	0x3e
	.long	0x1d7
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.byte	0x3f
	.long	0xbc
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x40
	.long	0x1d7
	.byte	0x2
	.uleb128 0xb
	.long	.LASF30
	.byte	0x6
	.byte	0x41
	.long	0x1e7
	.byte	0x83
	.uleb128 0xf
	.long	.LASF31
	.byte	0x6
	.byte	0x42
	.long	0x1f8
	.value	0x184
	.uleb128 0xf
	.long	.LASF32
	.byte	0x6
	.byte	0x43
	.long	0x1e7
	.value	0x385
	.uleb128 0xf
	.long	.LASF33
	.byte	0x6
	.byte	0x44
	.long	0x91
	.value	0x488
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x1e7
	.uleb128 0xd
	.long	0x7d
	.byte	0x80
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x1f8
	.uleb128 0x10
	.long	0x7d
	.value	0x100
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x209
	.uleb128 0x10
	.long	0x7d
	.value	0x200
	.byte	0
	.uleb128 0x4
	.long	.LASF34
	.byte	0x6
	.byte	0x49
	.long	0x214
	.uleb128 0x5
	.byte	0x4
	.long	0x182
	.uleb128 0x8
	.long	.LASF36
	.byte	0x4
	.long	0x2c
	.byte	0x8
	.byte	0x3c
	.long	0x25b
	.uleb128 0x11
	.long	.LASF37
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF38
	.byte	0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x1
	.uleb128 0x9
	.long	.LASF40
	.byte	0x2
	.uleb128 0x9
	.long	.LASF41
	.byte	0x3
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.uleb128 0x9
	.long	.LASF43
	.byte	0x5
	.uleb128 0x9
	.long	.LASF44
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF45
	.byte	0x8
	.byte	0x45
	.long	0x21a
	.uleb128 0x12
	.long	.LASF46
	.byte	0x1
	.value	0x12e
	.long	0x25b
	.byte	0x1
	.long	0x283
	.uleb128 0x13
	.string	"rc"
	.byte	0x1
	.value	0x130
	.long	0x25b
	.byte	0
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0x34
	.long	0x2c
	.byte	0x1
	.long	0x2ed
	.uleb128 0x15
	.long	.LASF48
	.byte	0x1
	.byte	0x35
	.long	0x84
	.uleb128 0x15
	.long	.LASF49
	.byte	0x1
	.byte	0x36
	.long	0x2ed
	.uleb128 0x15
	.long	.LASF50
	.byte	0x1
	.byte	0x37
	.long	0x91
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x39
	.long	0x2f2
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x3a
	.long	0x302
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.byte	0x3b
	.long	0x2c
	.uleb128 0x17
	.string	"dev"
	.byte	0x1
	.byte	0x3c
	.long	0x171
	.uleb128 0x18
	.long	.LASF53
	.long	0x323
	.long	.LASF47
	.byte	0
	.uleb128 0x6
	.long	0x2c
	.uleb128 0xc
	.long	0x8a
	.long	0x302
	.uleb128 0xd
	.long	0x7d
	.byte	0x3f
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x313
	.uleb128 0x10
	.long	0x7d
	.value	0x1ff
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x323
	.uleb128 0xd
	.long	0x7d
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.long	0x313
	.uleb128 0x19
	.long	.LASF54
	.byte	0x1
	.value	0x110
	.byte	0x1
	.long	0x34e
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x110
	.long	0x84
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x110
	.long	0x2c
	.byte	0
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.value	0x127
	.byte	0x1
	.long	0x374
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.value	0x127
	.long	0x84
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x127
	.long	0x2c
	.byte	0
	.uleb128 0x1b
	.long	.LASF56
	.byte	0x1
	.byte	0x26
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x398
	.uleb128 0x1c
	.long	.LASF58
	.byte	0x1
	.byte	0x26
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.long	.LASF92
	.byte	0x1
	.byte	0x2b
	.long	0x84
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF57
	.byte	0x1
	.byte	0xad
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x412
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xad
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.byte	0xaf
	.long	0x2f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x20
	.long	.LVL2
	.long	0x98d
	.uleb128 0x20
	.long	.LVL3
	.long	0x998
	.uleb128 0x21
	.long	.LVL4
	.long	0x9a4
	.uleb128 0x20
	.long	.LVL5
	.long	0x9af
	.byte	0
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x1
	.byte	0xbc
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x477
	.uleb128 0x1e
	.string	"buf"
	.byte	0x1
	.byte	0xbc
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xbc
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"tmp"
	.byte	0x1
	.byte	0xbe
	.long	0x2f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x20
	.long	.LVL7
	.long	0x9b8
	.uleb128 0x20
	.long	.LVL8
	.long	0x998
	.uleb128 0x21
	.long	.LVL9
	.long	0x9a4
	.uleb128 0x20
	.long	.LVL10
	.long	0x9af
	.byte	0
	.uleb128 0x22
	.long	.LASF71
	.byte	0x1
	.byte	0xcb
	.long	0x2c
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x511
	.uleb128 0x1e
	.string	"dst"
	.byte	0x1
	.byte	0xcb
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"len"
	.byte	0x1
	.byte	0xcb
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"fmt"
	.byte	0x1
	.byte	0xcb
	.long	0x91
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x23
	.uleb128 0x24
	.string	"rc"
	.byte	0x1
	.byte	0xcd
	.long	0x2c
	.long	.LLST0
	.uleb128 0x24
	.string	"ap"
	.byte	0x1
	.byte	0xce
	.long	0xb1
	.long	.LLST1
	.uleb128 0x24
	.string	"ptr"
	.byte	0x1
	.byte	0xcf
	.long	0x84
	.long	.LLST2
	.uleb128 0x25
	.long	.LASF53
	.long	0x521
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3975
	.uleb128 0x20
	.long	.LVL13
	.long	0x9c3
	.uleb128 0x20
	.long	.LVL14
	.long	0x9cf
	.uleb128 0x20
	.long	.LVL15
	.long	0x9db
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x521
	.uleb128 0xd
	.long	0x7d
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.long	0x511
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x1
	.byte	0xdf
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x58f
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x1
	.byte	0xdf
	.long	0x209
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LASF62
	.long	0x59f
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3979
	.uleb128 0x20
	.long	.LVL20
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL21
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL22
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL23
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL24
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL25
	.long	0x9e6
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x59f
	.uleb128 0xd
	.long	0x7d
	.byte	0x16
	.byte	0
	.uleb128 0x6
	.long	0x58f
	.uleb128 0x1b
	.long	.LASF63
	.byte	0x1
	.byte	0xee
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c5
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xee
	.long	0x171
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xef
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1c
	.long	.LASF65
	.byte	0x1
	.byte	0xf0
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF66
	.byte	0x1
	.byte	0xf1
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x1
	.byte	0xf2
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x1
	.byte	0xf3
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x1
	.byte	0xf4
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1e
	.string	"id2"
	.byte	0x1
	.byte	0xf5
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1c
	.long	.LASF70
	.byte	0x1
	.byte	0xf6
	.long	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x25
	.long	.LASF62
	.long	0x6d5
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3991
	.uleb128 0x20
	.long	.LVL27
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL28
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL29
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL30
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL31
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL32
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL33
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL34
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL35
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL36
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL37
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL38
	.long	0x9e6
	.uleb128 0x20
	.long	.LVL39
	.long	0x9e6
	.uleb128 0x21
	.long	.LVL40
	.long	0x9e6
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x6d5
	.uleb128 0xd
	.long	0x7d
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.long	0x6c5
	.uleb128 0x26
	.long	.LASF72
	.byte	0x1
	.value	0x1e4
	.long	0x2c
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x916
	.uleb128 0x27
	.long	.LASF64
	.byte	0x1
	.value	0x1e6
	.long	0x916
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1220
	.uleb128 0x27
	.long	.LASF65
	.byte	0x1
	.value	0x1e7
	.long	0x916
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1140
	.uleb128 0x27
	.long	.LASF66
	.byte	0x1
	.value	0x1e8
	.long	0x926
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1060
	.uleb128 0x28
	.long	.LASF67
	.byte	0x1
	.value	0x1e9
	.long	0x25b
	.long	.LLST3
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.value	0x1ea
	.long	0x926
	.uleb128 0x3
	.byte	0x91
	.sleb128 -804
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.value	0x1eb
	.long	0x936
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1300
	.uleb128 0x29
	.string	"dev"
	.byte	0x1
	.value	0x1ed
	.long	0x171
	.long	.LLST4
	.uleb128 0x28
	.long	.LASF61
	.byte	0x1
	.value	0x1ee
	.long	0x209
	.long	.LLST5
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.value	0x1ef
	.long	0x84
	.byte	0
	.uleb128 0x2b
	.string	"gw"
	.byte	0x1
	.value	0x1f0
	.long	0x2c
	.byte	0
	.uleb128 0x25
	.long	.LASF53
	.long	0x956
	.uleb128 0x5
	.byte	0x3
	.long	__func__.4017
	.uleb128 0x2c
	.long	0x328
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.value	0x1f7
	.long	0x7cc
	.uleb128 0x2d
	.long	0x341
	.long	.LLST6
	.uleb128 0x2d
	.long	0x335
	.long	.LLST7
	.uleb128 0x20
	.long	.LVL51
	.long	0x998
	.byte	0
	.uleb128 0x2c
	.long	0x34e
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.value	0x1f9
	.long	0x7fc
	.uleb128 0x2d
	.long	0x367
	.long	.LLST8
	.uleb128 0x2d
	.long	0x35b
	.long	.LLST9
	.uleb128 0x20
	.long	.LVL53
	.long	0x998
	.byte	0
	.uleb128 0x2e
	.long	0x283
	.long	.LBB14
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1fa
	.long	0x88e
	.uleb128 0x2d
	.long	0x29e
	.long	.LLST10
	.uleb128 0x2d
	.long	0x2a9
	.long	.LLST11
	.uleb128 0x2d
	.long	0x293
	.long	.LLST12
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0
	.uleb128 0x30
	.long	0x2b4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1284
	.uleb128 0x30
	.long	0x2bf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x31
	.long	0x2ca
	.long	.LLST13
	.uleb128 0x31
	.long	0x2d4
	.long	.LLST14
	.uleb128 0x30
	.long	0x2df
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3956
	.uleb128 0x20
	.long	.LVL54
	.long	0x9f1
	.uleb128 0x20
	.long	.LVL56
	.long	0x9cf
	.uleb128 0x20
	.long	.LVL65
	.long	0x998
	.uleb128 0x20
	.long	.LVL66
	.long	0x9cf
	.uleb128 0x20
	.long	.LVL70
	.long	0x9fc
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL42
	.long	0x9f1
	.uleb128 0x20
	.long	.LVL44
	.long	0xa07
	.uleb128 0x20
	.long	.LVL46
	.long	0x9cf
	.uleb128 0x20
	.long	.LVL47
	.long	0x9cf
	.uleb128 0x20
	.long	.LVL48
	.long	0x3ad
	.uleb128 0x20
	.long	.LVL49
	.long	0x412
	.uleb128 0x20
	.long	.LVL72
	.long	0x5a4
	.uleb128 0x20
	.long	.LVL73
	.long	0xa12
	.uleb128 0x20
	.long	.LVL74
	.long	0x398
	.uleb128 0x20
	.long	.LVL75
	.long	0x477
	.uleb128 0x20
	.long	.LVL76
	.long	0x477
	.uleb128 0x20
	.long	.LVL77
	.long	0x477
	.uleb128 0x20
	.long	.LVL78
	.long	0x477
	.uleb128 0x20
	.long	.LVL79
	.long	0x526
	.uleb128 0x20
	.long	.LVL80
	.long	0x9af
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x926
	.uleb128 0xd
	.long	0x7d
	.byte	0x4f
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x936
	.uleb128 0xd
	.long	0x7d
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x8a
	.long	0x946
	.uleb128 0xd
	.long	0x7d
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x956
	.uleb128 0xd
	.long	0x7d
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	0x946
	.uleb128 0xc
	.long	0x91
	.long	0x96b
	.uleb128 0xd
	.long	0x7d
	.byte	0x8
	.byte	0
	.uleb128 0x32
	.long	.LASF74
	.byte	0x1
	.byte	0x16
	.long	0x95b
	.uleb128 0x5
	.byte	0x3
	.long	secmode_str
	.uleb128 0x32
	.long	.LASF75
	.byte	0x1
	.byte	0x23
	.long	0x2c
	.uleb128 0x5
	.byte	0x3
	.long	g_domain_type
	.uleb128 0x33
	.long	.LASF76
	.long	.LASF76
	.byte	0x9
	.byte	0x41
	.uleb128 0x34
	.long	.LASF77
	.long	.LASF77
	.byte	0xa
	.value	0x112
	.uleb128 0x33
	.long	.LASF78
	.long	.LASF78
	.byte	0xb
	.byte	0x22
	.uleb128 0x35
	.long	.LASF93
	.long	.LASF93
	.uleb128 0x33
	.long	.LASF79
	.long	.LASF79
	.byte	0x9
	.byte	0x49
	.uleb128 0x34
	.long	.LASF80
	.long	.LASF80
	.byte	0xa
	.value	0x11d
	.uleb128 0x34
	.long	.LASF81
	.long	.LASF81
	.byte	0xa
	.value	0x107
	.uleb128 0x33
	.long	.LASF82
	.long	.LASF82
	.byte	0xb
	.byte	0x2c
	.uleb128 0x33
	.long	.LASF83
	.long	.LASF83
	.byte	0x7
	.byte	0x34
	.uleb128 0x33
	.long	.LASF84
	.long	.LASF84
	.byte	0xc
	.byte	0x35
	.uleb128 0x33
	.long	.LASF85
	.long	.LASF85
	.byte	0xd
	.byte	0x1e
	.uleb128 0x33
	.long	.LASF86
	.long	.LASF86
	.byte	0xc
	.byte	0x36
	.uleb128 0x33
	.long	.LASF87
	.long	.LASF87
	.byte	0xc
	.byte	0x44
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL11
	.long	.LVL13
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL13
	.long	.LVL14-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	.LVL13-1
	.long	.LVL17
	.value	0x3
	.byte	0x91
	.sleb128 12
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL41
	.long	.LVL51
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL43
	.long	.LVL44-1
	.value	0x1
	.byte	0x50
	.long	.LVL44-1
	.long	.LVL81
	.value	0x3
	.byte	0x75
	.sleb128 -1312
	.long	.LVL81
	.long	.LFE29
	.value	0x3
	.byte	0x91
	.sleb128 -1320
	.long	0
	.long	0
.LLST5:
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x50
	.long	.LVL46-1
	.long	.LVL81
	.value	0x3
	.byte	0x75
	.sleb128 -1308
	.long	.LVL81
	.long	.LFE29
	.value	0x3
	.byte	0x91
	.sleb128 -1316
	.long	0
	.long	0
.LLST6:
	.long	.LVL49
	.long	.LVL51
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL49
	.long	.LVL50
	.value	0x4
	.byte	0x75
	.sleb128 -1052
	.byte	0x9f
	.long	.LVL50
	.long	.LVL51-1
	.value	0x1
	.byte	0x50
	.long	.LVL51-1
	.long	.LVL51
	.value	0x4
	.byte	0x75
	.sleb128 -1052
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL51
	.long	.LVL53
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL51
	.long	.LVL52
	.value	0x4
	.byte	0x75
	.sleb128 -1292
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53-1
	.long	.LVL53
	.value	0x4
	.byte	0x75
	.sleb128 -1292
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL53
	.long	.LVL71
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL53
	.long	.LVL57
	.value	0x4
	.byte	0x75
	.sleb128 -1292
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.value	0x1
	.byte	0x50
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL60
	.long	.LVL61
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL61
	.long	.LVL62
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL62
	.long	.LVL63
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LVL64
	.long	.LVL65-1
	.value	0x2
	.byte	0x74
	.sleb128 24
	.long	.LVL65-1
	.long	.LVL69
	.value	0x4
	.byte	0x75
	.sleb128 -1292
	.byte	0x9f
	.long	.LVL69
	.long	.LVL71
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL53
	.long	.LVL68
	.value	0x4
	.byte	0x75
	.sleb128 -796
	.byte	0x9f
	.long	.LVL68
	.long	.LVL71
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL65
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL55
	.long	.LVL56-1
	.value	0x1
	.byte	0x50
	.long	.LVL56-1
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	.LVL67
	.long	.LVL70-1
	.value	0x4
	.byte	0x72
	.sleb128 -119
	.byte	0x9f
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
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB14
	.long	.LBE14
	.long	.LBB18
	.long	.LBE18
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB29
	.long	.LFE29
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF52:
	.string	"hmac_source"
.LASF45:
	.string	"SECURE_MODE"
.LASF17:
	.string	"LOG_CRIT_LEVEL"
.LASF24:
	.string	"device_id"
.LASF20:
	.string	"LOG_INFO_LEVEL"
.LASF30:
	.string	"client_id"
.LASF5:
	.string	"short int"
.LASF50:
	.string	"timestamp_str"
.LASF10:
	.string	"sizetype"
.LASF65:
	.string	"module_id"
.LASF75:
	.string	"g_domain_type"
.LASF39:
	.string	"MODE_TCP_GUIDER_ID2_ENCRYPT"
.LASF55:
	.string	"guider_get_timestamp_str"
.LASF79:
	.string	"HAL_GetModuleID"
.LASF32:
	.string	"password"
.LASF12:
	.string	"__uint16_t"
.LASF14:
	.string	"va_list"
.LASF29:
	.string	"host_name"
.LASF58:
	.string	"domain_type"
.LASF44:
	.string	"MODE_TLS_DIRECT_ID2_ENCRYPT"
.LASF56:
	.string	"guider_set_domain_type"
.LASF69:
	.string	"guider_sign"
.LASF93:
	.string	"__stack_chk_fail"
.LASF21:
	.string	"LOG_DEBUG_LEVEL"
.LASF80:
	.string	"HAL_Vsnprintf"
.LASF61:
	.string	"conn"
.LASF76:
	.string	"HAL_GetPartnerID"
.LASF26:
	.string	"module_vendor_id"
.LASF74:
	.string	"secmode_str"
.LASF19:
	.string	"LOG_WARNING_LEVEL"
.LASF1:
	.string	"long long int"
.LASF23:
	.string	"device_name"
.LASF7:
	.string	"long int"
.LASF66:
	.string	"guider_url"
.LASF62:
	.string	"__FUNCTION__"
.LASF37:
	.string	"MODE_TLS_GUIDER"
.LASF63:
	.string	"guider_print_dev_guider_info"
.LASF4:
	.string	"unsigned char"
.LASF85:
	.string	"utils_hmac_sha1"
.LASF2:
	.string	"long double"
.LASF71:
	.string	"_fill_conn_string"
.LASF46:
	.string	"guider_get_secure_mode"
.LASF25:
	.string	"device_secret"
.LASF87:
	.string	"iotx_ca_get"
.LASF33:
	.string	"pub_key"
.LASF3:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF73:
	.string	"req_str"
.LASF89:
	.string	"src/guider.c"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.string	"uint16_t"
.LASF8:
	.string	"long unsigned int"
.LASF38:
	.string	"MODE_TCP_GUIDER_PLAIN"
.LASF84:
	.string	"iotx_device_info_get"
.LASF53:
	.string	"__func__"
.LASF6:
	.string	"short unsigned int"
.LASF36:
	.string	"_SECURE_MODE"
.LASF35:
	.string	"_LOGLEVEL"
.LASF22:
	.string	"product_key"
.LASF49:
	.string	"hmac_buflen"
.LASF11:
	.string	"char"
.LASF59:
	.string	"_ident_module"
.LASF72:
	.string	"iotx_guider_authenticate"
.LASF42:
	.string	"MODE_TCP_DIRECT_ID2_ENCRYPT"
.LASF78:
	.string	"strcpy"
.LASF41:
	.string	"MODE_TCP_DIRECT_PLAIN"
.LASF77:
	.string	"HAL_Snprintf"
.LASF47:
	.string	"_calc_hmac_signature"
.LASF92:
	.string	"guider_get_domain"
.LASF68:
	.string	"time_stamp"
.LASF18:
	.string	"LOG_ERR_LEVEL"
.LASF28:
	.string	"port"
.LASF57:
	.string	"_ident_partner"
.LASF91:
	.string	"__builtin_va_list"
.LASF70:
	.string	"dev_code"
.LASF64:
	.string	"partner_id"
.LASF43:
	.string	"MODE_TLS_GUIDER_ID2_ENCRYPT"
.LASF88:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF51:
	.string	"signature"
.LASF31:
	.string	"username"
.LASF67:
	.string	"secure_mode"
.LASF54:
	.string	"guider_get_url"
.LASF82:
	.string	"strstr"
.LASF13:
	.string	"__gnuc_va_list"
.LASF83:
	.string	"LITE_syslog"
.LASF34:
	.string	"iotx_conn_info_pt"
.LASF90:
	.string	"/home/stone/Documents/pca"
.LASF27:
	.string	"iotx_device_info_pt"
.LASF40:
	.string	"MODE_TLS_DIRECT"
.LASF86:
	.string	"iotx_conn_info_get"
.LASF81:
	.string	"HAL_Printf"
.LASF16:
	.string	"LOG_EMERG_LEVEL"
.LASF48:
	.string	"hmac_sigbuf"
.LASF60:
	.string	"guider_print_conn_info"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
