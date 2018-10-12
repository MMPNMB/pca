	.file	"ota_transport.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"----------------------ota_mqtt_sub_callback--------------------,payload=%s\n\r\n"
.LC1:
	.string	"[%06d]<I> "
.LC2:
	.string	"\r\n"
.LC3:
	.string	"aliot_mqtt_ota_callback  pcontext null\r\n"
.LC4:
	.string	"[%06d]<E> "
	.section	.text.unlikely.ota_mqtt_sub_callback,"ax",@progbits
.LCOLDB5:
	.section	.text.ota_mqtt_sub_callback,"ax",@progbits
.LHOTB5:
	.section	.text.unlikely.ota_mqtt_sub_callback
.Ltext_cold0:
	.section	.text.ota_mqtt_sub_callback
	.type	ota_mqtt_sub_callback, @function
ota_mqtt_sub_callback:
.LFB20:
	.file 1 "framework/fota/platform/mqtt/ota_transport.c"
	.loc 1 117 0
	.cfi_startproc
.LVL0:
	.loc 1 118 0
	testb	$8, aos_log_level
	.loc 1 117 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 117 0
	movl	24(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 118 0
	je	.L2
	.loc 1 118 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL1:
	pushl	%ebx
	pushl	$.LC0
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL2:
	popl	%ecx
	popl	%eax
	pushl	%ebx
	pushl	$.LC0
	call	csp_printf
.LVL3:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL4:
	addl	$16, %esp
.L2:
.LVL5:
	.loc 1 120 0 is_stmt 1
	testl	%esi, %esi
	jne	.L3
	.loc 1 121 0
	testb	$2, aos_log_level
	je	.L1
.LVL6:
.LBB91:
.LBB92:
	call	aos_now_ms
.LVL7:
	pushl	%edx
	pushl	$.LC3
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL8:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL9:
	movl	$.LC2, 8(%ebp)
.LVL10:
	addl	$16, %esp
.LBE92:
.LBE91:
	.loc 1 126 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB94:
.LBB93:
	.loc 1 121 0
	jmp	csp_printf
.LVL11:
.L3:
	.cfi_restore_state
.LBE93:
.LBE94:
	.loc 1 125 0
	movl	%ebx, 12(%ebp)
	movl	$6, 8(%ebp)
	.loc 1 126 0
	leal	-8(%ebp), %esp
	.loc 1 125 0
	movl	%esi, %eax
	.loc 1 126 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL12:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 125 0
	jmp	*%eax
.LVL13:
.L1:
	.cfi_restore_state
	.loc 1 126 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL14:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	ota_mqtt_sub_callback, .-ota_mqtt_sub_callback
	.section	.text.unlikely.ota_mqtt_sub_callback
.LCOLDE5:
	.section	.text.ota_mqtt_sub_callback
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"snprintf failed\r\n"
	.section	.text.unlikely.ota_mqtt_gen_topic_name.part.1,"ax",@progbits
.LCOLDB7:
	.section	.text.ota_mqtt_gen_topic_name.part.1,"ax",@progbits
.LHOTB7:
	.type	ota_mqtt_gen_topic_name.part.1, @function
ota_mqtt_gen_topic_name.part.1:
.LFB37:
	.loc 1 70 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 77 0
	call	aos_now_ms
.LVL16:
	pushl	%edx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL17:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL18:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL19:
	.loc 1 82 0
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	ota_mqtt_gen_topic_name.part.1, .-ota_mqtt_gen_topic_name.part.1
	.section	.text.unlikely.ota_mqtt_gen_topic_name.part.1
.LCOLDE7:
	.section	.text.ota_mqtt_gen_topic_name.part.1
.LHOTE7:
	.section	.text.unlikely.to_capital_letter.constprop.5,"ax",@progbits
.LCOLDB8:
	.section	.text.to_capital_letter.constprop.5,"ax",@progbits
.LHOTB8:
	.type	to_capital_letter.constprop.5, @function
to_capital_letter.constprop.5:
.LFB38:
	.loc 1 53 0
	.cfi_startproc
.LVL20:
	.loc 1 55 0
	testl	%eax, %eax
	je	.L16
	.loc 1 53 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 55 0
	xorl	%edx, %edx
	.loc 1 53 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.L15:
.LVL21:
	.loc 1 60 0
	movb	(%eax,%edx), %cl
	leal	-97(%ecx), %ebx
	cmpb	$25, %bl
	ja	.L14
	.loc 1 61 0
	subl	$32, %ecx
	movb	%cl, (%eax,%edx)
.L14:
	.loc 1 59 0
	incl	%edx
.LVL22:
	cmpl	$34, %edx
	jne	.L15
	.loc 1 65 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL23:
.L16:
	.loc 1 56 0
	xorl	%eax, %eax
.LVL24:
	ret
	.cfi_endproc
.LFE38:
	.size	to_capital_letter.constprop.5, .-to_capital_letter.constprop.5
	.section	.text.unlikely.to_capital_letter.constprop.5
.LCOLDE8:
	.section	.text.to_capital_letter.constprop.5
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"/ota/device/%s/%s/%s"
.LC10:
	.string	"generate topic name of info failed\r\n"
.LC11:
	.string	"public topic=%s ,payload=%s\n\r\n"
.LC12:
	.string	"publish failed\r\n"
	.section	.text.unlikely.ota_mqtt_publish,"ax",@progbits
.LCOLDB13:
	.section	.text.ota_mqtt_publish,"ax",@progbits
.LHOTB13:
	.type	ota_mqtt_publish, @function
ota_mqtt_publish:
.LFB19:
	.loc 1 85 0
	.cfi_startproc
.LVL25:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 87 0
	movl	$16, %ecx
	.loc 1 85 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 87 0
	leal	-92(%ebp), %edi
	.loc 1 85 0
	movl	%eax, %ebx
	movl	%edx, %esi
	subl	$100, %esp
	.loc 1 85 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL26:
	.loc 1 87 0
	rep stosl
.LVL27:
.LBB105:
.LBB106:
	.loc 1 74 0
	pushl	$g_ota_device_info+21
.LVL28:
	pushl	$g_ota_device_info
.LVL29:
	pushl	%ebx
.LVL30:
	leal	-92(%ebp), %ebx
.LVL31:
	pushl	$.LC9
.LVL32:
	pushl	$64
.LVL33:
	pushl	%ebx
.LVL34:
	call	snprintf
.LVL35:
	.loc 1 76 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L21
	.loc 1 77 0
	testb	$2, aos_log_level
	jne	.L22
.LVL36:
.L25:
.LBE106:
.LBE105:
	.loc 1 102 0
	testb	$2, aos_log_level
	je	.L37
	.loc 1 102 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL37:
	pushl	%ecx
	pushl	$.LC10
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL38:
	movl	$.LC10, (%esp)
	jmp	.L38
.LVL39:
.L22:
.LBB108:
.LBB107:
	call	ota_mqtt_gen_topic_name.part.1
.LVL40:
.LBE107:
.LBE108:
	.loc 1 101 0 is_stmt 1
	testl	%eax, %eax
	js	.L25
.L21:
	.loc 1 105 0
	testb	$8, aos_log_level
	je	.L27
	.loc 1 105 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL41:
	subl	$12, %esp
	pushl	%esi
	pushl	%ebx
	pushl	$.LC11
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL42:
	addl	$28, %esp
	pushl	%esi
	pushl	%ebx
	pushl	$.LC11
	call	csp_printf
.LVL43:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL44:
	addl	$16, %esp
.L27:
	.loc 1 106 0 is_stmt 1
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%esi, %edi
	repnz scasb
.LVL45:
	notl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	$1
	pushl	%ebx
	call	mqtt_publish
.LVL46:
	.loc 1 108 0
	addl	$16, %esp
	.loc 1 113 0
	xorl	%edx, %edx
	.loc 1 108 0
	testl	%eax, %eax
	jns	.L26
	.loc 1 109 0
	testb	$2, aos_log_level
	je	.L37
	.loc 1 109 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL47:
	pushl	%edx
	pushl	$.LC12
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL48:
	movl	$.LC12, (%esp)
.L38:
	call	csp_printf
.LVL49:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL50:
	addl	$16, %esp
.L37:
	.loc 1 110 0 is_stmt 1 discriminator 1
	orl	$-1, %edx
.L26:
	.loc 1 114 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%edx, %eax
	je	.L28
	call	__stack_chk_fail
.LVL51:
.L28:
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
	.size	ota_mqtt_publish, .-ota_mqtt_publish
	.section	.text.unlikely.ota_mqtt_publish
.LCOLDE13:
	.section	.text.ota_mqtt_publish
.LHOTE13:
	.section	.text.unlikely.platform_ota_parse_requset,"ax",@progbits
.LCOLDB14:
	.section	.text.platform_ota_parse_requset,"ax",@progbits
.LHOTB14:
	.globl	platform_ota_parse_requset
	.type	platform_ota_parse_requset, @function
platform_ota_parse_requset:
.LFB24:
	.loc 1 187 0
	.cfi_startproc
.LVL52:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 189 0
	xorl	%eax, %eax
	.loc 1 187 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 189 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	platform_ota_parse_requset, .-platform_ota_parse_requset
	.section	.text.unlikely.platform_ota_parse_requset
.LCOLDE14:
	.section	.text.platform_ota_parse_requset
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"===========response =%s==========\r\n"
.LC16:
	.string	"Error before: [%s]\n\r\n"
.LC17:
	.string	"message"
.LC18:
	.string	"invalid json doc of OTA \r\n"
.LC19:
	.string	"success"
.LC20:
	.string	"fail state of json doc of OTA\r\n"
.LC21:
	.string	"data"
.LC22:
	.string	"data back.\r\n"
.LC23:
	.string	"url"
.LC24:
	.string	"resourceUrl back.\r\n"
.LC25:
	.string	"version"
.LC26:
	.string	"version back.\r\n"
.LC27:
	.string	"signMethod"
.LC28:
	.string	"Md5"
.LC29:
	.string	"sign"
.LC30:
	.string	"no sign(md5) found\r\n"
.LC31:
	.string	"md5"
.LC32:
	.string	"no md5 found\r\n"
.LC33:
	.string	"size"
.LC34:
	.string	"size back.\r\n"
.LC35:
	.string	"isDiff"
.LC36:
	.string	"dmethod"
.LC37:
	.string	"splictSize"
	.section	.text.unlikely.platform_ota_parse_response,"ax",@progbits
.LCOLDB38:
	.section	.text.platform_ota_parse_response,"ax",@progbits
.LHOTB38:
	.globl	platform_ota_parse_response
	.type	platform_ota_parse_response, @function
platform_ota_parse_response:
.LFB25:
	.loc 1 192 0
	.cfi_startproc
.LVL53:
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
	.loc 1 193 0
	testb	$8, aos_log_level
	.loc 1 192 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 193 0
	je	.L42
	.loc 1 193 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL54:
	pushl	%ebx
	pushl	$.LC15
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL55:
	popl	%edi
	popl	%eax
	pushl	%ebx
	pushl	$.LC15
	call	csp_printf
.LVL56:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL57:
	addl	$16, %esp
.L42:
	.loc 1 194 0 is_stmt 1
	subl	$12, %esp
	pushl	%ebx
	call	cJSON_Parse
.LVL58:
	.loc 1 195 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 194 0
	movl	%eax, -28(%ebp)
.LVL59:
	.loc 1 195 0
	jne	.L43
	.loc 1 196 0
	testb	$2, aos_log_level
	je	.L44
	.loc 1 196 0 is_stmt 0 discriminator 1
	call	cJSON_GetErrorPtr
.LVL60:
	movl	%eax, %ebx
	call	aos_now_ms
.LVL61:
	pushl	%ebx
	pushl	$.LC16
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL62:
	call	cJSON_GetErrorPtr
.LVL63:
	popl	%edx
	popl	%ecx
	pushl	%eax
	pushl	$.LC16
	call	csp_printf
.LVL64:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL65:
	jmp	.L104
.LVL66:
.L43:
.LBB109:
	.loc 1 203 0 is_stmt 1
	pushl	%edi
	pushl	%edi
	pushl	$.LC17
	pushl	-28(%ebp)
	call	cJSON_GetObjectItem
.LVL67:
	.loc 1 205 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L45
	.loc 1 206 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 206 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL68:
	pushl	%ebx
	pushl	$.LC18
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL69:
	movl	$.LC18, (%esp)
	jmp	.L103
.LVL70:
.L45:
	.loc 1 211 0 is_stmt 1
	pushl	%ecx
	pushl	$7
	pushl	$.LC19
	pushl	16(%eax)
	call	strncmp
.LVL71:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L48
	.loc 1 212 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 212 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL72:
	pushl	%edx
	pushl	$.LC20
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL73:
	movl	$.LC20, (%esp)
	jmp	.L103
.L48:
	.loc 1 216 0 is_stmt 1
	pushl	%edi
	pushl	%edi
	pushl	$.LC21
	pushl	-28(%ebp)
	call	cJSON_GetObjectItem
.LVL74:
	.loc 1 217 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 216 0
	movl	%eax, %ebx
.LVL75:
	.loc 1 217 0
	jne	.L49
	.loc 1 218 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 218 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL76:
.LVL77:
	pushl	%ebx
	pushl	$.LC22
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL78:
	movl	$.LC22, (%esp)
	jmp	.L103
.LVL79:
.L49:
	.loc 1 222 0 is_stmt 1
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC23
	pushl	%eax
	call	cJSON_GetObjectItem
.LVL80:
	.loc 1 223 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 222 0
	movl	%eax, %edi
.LVL81:
	.loc 1 223 0
	jne	.L50
	.loc 1 224 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 224 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL82:
	pushl	%edx
	pushl	$.LC24
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL83:
	movl	$.LC24, (%esp)
	jmp	.L103
.LVL84:
.L50:
.LVL85:
	.loc 1 228 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC25
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL86:
	.loc 1 229 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L51
	.loc 1 230 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 230 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL87:
	pushl	%ecx
	pushl	$.LC26
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL88:
	movl	$.LC26, (%esp)
	jmp	.L103
.LVL89:
.L51:
	.loc 1 233 0 is_stmt 1
	subl	$12, %esp
	pushl	16(%eax)
	movl	%eax, -32(%ebp)
	call	ota_set_version
.LVL90:
	.loc 1 252 0
	movl	-32(%ebp), %eax
	addl	$12, %esp
	pushl	$63
	pushl	16(%eax)
	pushl	%esi
	call	strncpy
.LVL91:
	.loc 1 256 0
	leal	132(%esi), %eax
	addl	$12, %esp
	pushl	$1023
	pushl	16(%edi)
	pushl	%eax
	call	strncpy
.LVL92:
	.loc 1 261 0
	popl	%eax
	popl	%edx
	pushl	$.LC27
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL93:
	.loc 1 262 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L52
.LVL94:
	.loc 1 263 0
	pushl	%edi
	pushl	$3
	pushl	$.LC28
	pushl	16(%eax)
	call	strncmp
.LVL95:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L47
.LBB110:
	.loc 1 264 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC29
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL96:
	.loc 1 265 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L55
	.loc 1 266 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 266 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL97:
	pushl	%edx
	pushl	$.LC30
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL98:
	movl	$.LC30, (%esp)
	jmp	.L103
.LVL99:
.L52:
.LVL100:
.LBE110:
.LBB111:
	.loc 1 279 0 is_stmt 1
	pushl	%edi
	pushl	%edi
	pushl	$.LC31
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL101:
	.loc 1 280 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L55
	.loc 1 281 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 281 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL102:
.LVL103:
	pushl	%ebx
	pushl	$.LC32
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL104:
	movl	$.LC32, (%esp)
.LVL105:
.L103:
	call	csp_printf
.LVL106:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL107:
	addl	$16, %esp
	jmp	.L47
.LVL108:
.L55:
	.loc 1 285 0 is_stmt 1
	leal	1224(%esi), %edi
	pushl	%edx
	pushl	$34
	pushl	16(%eax)
	pushl	%edi
	call	strncpy
.LVL109:
	.loc 1 287 0
	movb	$0, 1257(%esi)
	.loc 1 288 0
	movl	%edi, %eax
	call	to_capital_letter.constprop.5
.LVL110:
	addl	$16, %esp
.LBE111:
	.loc 1 292 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC33
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL111:
	.loc 1 293 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L56
	.loc 1 294 0
	testb	$2, aos_log_level
	je	.L47
	.loc 1 294 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL112:
.LVL113:
	pushl	%ebx
	pushl	$.LC34
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL114:
	movl	$.LC34, (%esp)
	jmp	.L103
.LVL115:
.L56:
	.loc 1 298 0 is_stmt 1
	movl	20(%eax), %eax
.LVL116:
	movl	%eax, 1156(%esi)
	.loc 1 300 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC35
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL117:
	.loc 1 301 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L58
.LBB112:
	.loc 1 302 0
	movl	20(%eax), %esi
.LVL118:
	.loc 1 303 0
	subl	$12, %esp
	pushl	%esi
	call	ota_set_firmware_type
.LVL119:
	.loc 1 304 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L58
.LBB113:
	.loc 1 305 0
	pushl	%edx
	pushl	%edx
	pushl	$.LC36
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL120:
	.loc 1 306 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L60
.LVL121:
.LBB114:
	.loc 1 308 0
	movzbl	20(%eax), %eax
.LVL122:
	subl	$12, %esp
	pushl	%eax
	call	ota_set_diff_version
.LVL123:
	addl	$16, %esp
.L60:
.LBE114:
	.loc 1 310 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC37
	pushl	%ebx
	call	cJSON_GetObjectItem
.LVL124:
	.loc 1 311 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L58
.LVL125:
.LBB115:
	.loc 1 313 0
	subl	$12, %esp
	pushl	20(%eax)
.LVL126:
	call	ota_set_splict_size
.LVL127:
	addl	$16, %esp
.LVL128:
.L58:
.LBE115:
.LBE113:
.LBE112:
.LBE109:
	.loc 1 330 0
	subl	$12, %esp
	pushl	-28(%ebp)
	call	cJSON_Delete
.LVL129:
	addl	$16, %esp
	.loc 1 332 0
	xorl	%eax, %eax
	jmp	.L101
.LVL130:
.L47:
	.loc 1 324 0
	subl	$12, %esp
	pushl	-28(%ebp)
	call	cJSON_Delete
.LVL131:
.L104:
	addl	$16, %esp
.L44:
	.loc 1 326 0
	movb	$-1, %al
.L101:
	.loc 1 333 0
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
.LFE25:
	.size	platform_ota_parse_response, .-platform_ota_parse_response
	.section	.text.unlikely.platform_ota_parse_response
.LCOLDE38:
	.section	.text.platform_ota_parse_response
.LHOTE38:
	.section	.text.unlikely.platform_ota_parse_cancel_responce,"ax",@progbits
.LCOLDB39:
	.section	.text.platform_ota_parse_cancel_responce,"ax",@progbits
.LHOTB39:
	.globl	platform_ota_parse_cancel_responce
	.type	platform_ota_parse_cancel_responce, @function
platform_ota_parse_cancel_responce:
.LFB26:
	.loc 1 335 0
	.cfi_startproc
.LVL132:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 337 0
	xorl	%eax, %eax
	.loc 1 335 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 337 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	platform_ota_parse_cancel_responce, .-platform_ota_parse_cancel_responce
	.section	.text.unlikely.platform_ota_parse_cancel_responce
.LCOLDE39:
	.section	.text.platform_ota_parse_cancel_responce
.LHOTE39:
	.section	.text.unlikely.platform_ota_publish_request,"ax",@progbits
.LCOLDB40:
	.section	.text.platform_ota_publish_request,"ax",@progbits
.LHOTB40:
	.globl	platform_ota_publish_request
	.type	platform_ota_publish_request, @function
platform_ota_publish_request:
.LFB27:
	.loc 1 340 0
	.cfi_startproc
.LVL133:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 342 0
	xorl	%eax, %eax
	.loc 1 340 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 342 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	platform_ota_publish_request, .-platform_ota_publish_request
	.section	.text.unlikely.platform_ota_publish_request
.LCOLDE40:
	.section	.text.platform_ota_publish_request
.LHOTE40:
	.section	.rodata.str1.1
.LC41:
	.string	"generate topic name of upgrade malloc fail\r\n"
.LC42:
	.string	"upgrade"
.LC43:
	.string	"generate topic name of upgrade failed\r\n"
.LC44:
	.string	"mqtt subscribe failed\r\n"
	.section	.text.unlikely.platform_ota_subscribe_upgrade,"ax",@progbits
.LCOLDB45:
	.section	.text.platform_ota_subscribe_upgrade,"ax",@progbits
.LHOTB45:
	.globl	platform_ota_subscribe_upgrade
	.type	platform_ota_subscribe_upgrade, @function
platform_ota_subscribe_upgrade:
.LFB28:
	.loc 1 345 0
	.cfi_startproc
.LVL134:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 346 0
	pushl	$64
	call	aos_zalloc
.LVL135:
	.loc 1 348 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 346 0
	movl	%eax, g_upgrad_topic
	.loc 1 348 0
	jne	.L110
	.loc 1 349 0
	testb	$2, aos_log_level
	je	.L129
	.loc 1 349 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL136:
	pushl	%edx
	pushl	$.LC41
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL137:
	movl	$.LC41, (%esp)
	call	csp_printf
.LVL138:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL139:
	jmp	.L130
.L110:
.LVL140:
.LBB126:
.LBB127:
	.loc 1 74 0 is_stmt 1
	pushl	%ecx
	pushl	%ecx
	pushl	$g_ota_device_info+21
.LVL141:
	pushl	$g_ota_device_info
.LVL142:
	pushl	$.LC42
.LVL143:
	pushl	$.LC9
.LVL144:
	pushl	$64
.LVL145:
	pushl	%eax
.LVL146:
	call	snprintf
.LVL147:
	.loc 1 76 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L113
	.loc 1 77 0
	testb	$2, aos_log_level
	jne	.L114
.LVL148:
.L117:
.LBE127:
.LBE126:
	.loc 1 356 0
	testb	$2, aos_log_level
	je	.L118
	.loc 1 356 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL149:
	pushl	%edx
	pushl	$.LC43
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL150:
	movl	$.LC43, (%esp)
	jmp	.L128
.LVL151:
.L114:
.LBB129:
.LBB128:
	call	ota_mqtt_gen_topic_name.part.1
.LVL152:
.LBE128:
.LBE129:
	.loc 1 355 0 is_stmt 1
	testl	%eax, %eax
	js	.L117
.L113:
	.loc 1 363 0
	pushl	%ecx
	pushl	8(%ebp)
	pushl	$ota_mqtt_sub_callback
	pushl	g_upgrad_topic
	call	mqtt_subscribe
.LVL153:
	.loc 1 365 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 370 0
	movb	%al, %dl
	.loc 1 365 0
	jns	.L112
	.loc 1 366 0
	testb	$2, aos_log_level
	je	.L118
	.loc 1 366 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL154:
	pushl	%edx
	pushl	$.LC44
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL155:
	movl	$.LC44, (%esp)
.L128:
	call	csp_printf
.LVL156:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL157:
	addl	$16, %esp
.L118:
	.loc 1 372 0 is_stmt 1
	movl	g_upgrad_topic, %eax
	.loc 1 372 0
	testl	%eax, %eax
	je	.L129
	.loc 1 373 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL158:
	.loc 1 374 0
	movl	$0, g_upgrad_topic
.L130:
	addl	$16, %esp
.L129:
	.loc 1 377 0
	movb	$-1, %dl
.L112:
	.loc 1 378 0
	movb	%dl, %al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	platform_ota_subscribe_upgrade, .-platform_ota_subscribe_upgrade
	.section	.text.unlikely.platform_ota_subscribe_upgrade
.LCOLDE45:
	.section	.text.platform_ota_subscribe_upgrade
.LHOTE45:
	.section	.rodata.str1.1
.LC46:
	.string	"progress is a invalid parameter\r\n"
.LC47:
	.string	"{\"id\":%d,\"params\":{\"step\": \"%d\",\"desc\":\"%d%%\"}}"
.LC48:
	.string	"msg is too long\r\n"
.LC49:
	.string	"generate reported message failed\r\n"
.LC50:
	.string	"Report progress failed\r\n"
.LC51:
	.string	"progress"
	.section	.text.unlikely.platform_ota_status_post,"ax",@progbits
.LCOLDB52:
	.section	.text.platform_ota_status_post,"ax",@progbits
.LHOTB52:
	.globl	platform_ota_status_post
	.type	platform_ota_status_post, @function
platform_ota_status_post:
.LFB29:
	.loc 1 381 0
	.cfi_startproc
.LVL159:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 383 0
	movl	$64, %ecx
	.loc 1 381 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 383 0
	leal	-284(%ebp), %edi
	.loc 1 381 0
	subl	$284, %esp
	.loc 1 381 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL160:
	.loc 1 384 0
	cmpl	$100, %ebx
	.loc 1 383 0
	rep stosl
	.loc 1 384 0
	jbe	.L132
	.loc 1 385 0
	testb	$2, aos_log_level
	je	.L158
	.loc 1 385 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL161:
	pushl	%edx
	pushl	$.LC46
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL162:
	movl	$.LC46, (%esp)
	jmp	.L159
.L132:
	.loc 1 389 0 is_stmt 1
	cmpl	$-4, %esi
	leal	-284(%ebp), %edi
	je	.L143
	.loc 1 391 0
	cmpl	$-2, %esi
	je	.L144
	.loc 1 393 0
	cmpl	$-3, %esi
	je	.L145
	.loc 1 395 0
	testl	%esi, %esi
	js	.L146
	.loc 1 398 0
	cmove	%eax, %ebx
	jmp	.L135
.L143:
	.loc 1 390 0
	movl	$-3, %ebx
	jmp	.L135
.L144:
	.loc 1 392 0
	movl	$-2, %ebx
	jmp	.L135
.L145:
	.loc 1 394 0
	movl	$-4, %ebx
	jmp	.L135
.L146:
	.loc 1 396 0
	orl	$-1, %ebx
.L135:
.LVL163:
.LBB144:
.LBB145:
	.loc 1 152 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%ebx
	pushl	$0
	pushl	$.LC47
	pushl	$256
	pushl	%edi
	call	snprintf
.LVL164:
	.loc 1 167 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L136
	.loc 1 168 0
	testb	$2, aos_log_level
	je	.L137
	call	aos_now_ms
.LVL165:
	pushl	%esi
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL166:
	movl	$.LC6, (%esp)
	jmp	.L160
.LVL167:
.L136:
	.loc 1 170 0
	cmpl	$255, %eax
	jle	.L138
	.loc 1 171 0
	testb	$2, aos_log_level
	je	.L137
	call	aos_now_ms
.LVL168:
.LVL169:
	pushl	%ebx
	pushl	$.LC48
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL170:
	movl	$.LC48, (%esp)
.L160:
	call	csp_printf
.LVL171:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL172:
	addl	$16, %esp
.L137:
.LVL173:
.LBE145:
.LBE144:
	.loc 1 403 0
	testb	$2, aos_log_level
	je	.L158
	.loc 1 403 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL174:
	pushl	%ecx
	pushl	$.LC49
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL175:
	movl	$.LC49, (%esp)
.L159:
	.loc 1 409 0 is_stmt 1 discriminator 1
	call	csp_printf
.LVL176:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL177:
	addl	$16, %esp
.L158:
	.loc 1 410 0 discriminator 1
	movb	$-1, %al
.L134:
	.loc 1 417 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L142
	call	__stack_chk_fail
.LVL178:
.L138:
	.loc 1 407 0
	movl	%edi, %edx
	movl	$.LC51, %eax
	call	ota_mqtt_publish
.LVL179:
	.loc 1 408 0
	testl	%eax, %eax
	je	.L134
	.loc 1 409 0
	testb	$2, aos_log_level
	je	.L158
	.loc 1 409 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL180:
	pushl	%edx
	pushl	$.LC50
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL181:
	movl	$.LC50, (%esp)
	jmp	.L159
.LVL182:
.L142:
	.loc 1 417 0 is_stmt 1
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
.LFE29:
	.size	platform_ota_status_post, .-platform_ota_status_post
	.section	.text.unlikely.platform_ota_status_post
.LCOLDE52:
	.section	.text.platform_ota_status_post
.LHOTE52:
	.section	.rodata.str1.1
.LC53:
	.string	"{\"id\":%d,\"params\":{\"version\":\"%s\"}}"
.LC54:
	.string	"generate inform message failed\r\n"
.LC55:
	.string	"Report version failed\r\n"
.LC56:
	.string	"Report detail version failed\r\n"
.LC57:
	.string	"inform"
	.section	.text.unlikely.platform_ota_result_post,"ax",@progbits
.LCOLDB58:
	.section	.text.platform_ota_result_post,"ax",@progbits
.LHOTB58:
	.globl	platform_ota_result_post
	.type	platform_ota_result_post, @function
platform_ota_result_post:
.LFB30:
	.loc 1 421 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 423 0
	movl	$32, %ecx
	.loc 1 421 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 423 0
	leal	-140(%ebp), %edi
	.loc 1 421 0
	subl	$148, %esp
	.loc 1 421 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL183:
	.loc 1 423 0
	rep stosl
.LBB156:
.LBB157:
	.loc 1 131 0
	leal	-140(%ebp), %edi
.LBE157:
.LBE156:
	.loc 1 424 0
	call	ota_get_system_version
.LVL184:
.LBB159:
.LBB158:
	.loc 1 131 0
	subl	$12, %esp
	pushl	%eax
	pushl	$0
	pushl	$.LC53
	pushl	$128
	pushl	%edi
	call	snprintf
.LVL185:
	.loc 1 137 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L162
	.loc 1 138 0
	testb	$2, aos_log_level
	je	.L163
	call	aos_now_ms
.LVL186:
	pushl	%edx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL187:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL188:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL189:
	addl	$16, %esp
	jmp	.L163
.LVL190:
.L162:
.LBE158:
.LBE159:
	.loc 1 430 0
	movl	%edi, %edx
	movl	$.LC57, %eax
	call	ota_mqtt_publish
.LVL191:
	.loc 1 431 0
	testl	%eax, %eax
	je	.L184
	.loc 1 432 0
	testb	$2, aos_log_level
	je	.L182
	.loc 1 432 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL192:
	pushl	%ecx
	pushl	$.LC55
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL193:
	movl	$.LC55, (%esp)
	jmp	.L183
.LVL194:
.L184:
	.loc 1 437 0 is_stmt 1
	call	version_report
.LVL195:
	.loc 1 444 0
	xorl	%edx, %edx
	.loc 1 438 0
	testl	%eax, %eax
	je	.L164
	.loc 1 439 0
	testb	$2, aos_log_level
	je	.L182
	.loc 1 439 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL196:
	pushl	%edx
	pushl	$.LC56
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL197:
	movl	$.LC56, (%esp)
.L183:
	call	csp_printf
.LVL198:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL199:
	addl	$16, %esp
.L182:
	.loc 1 440 0 is_stmt 1 discriminator 1
	movb	$-1, %dl
.L164:
	.loc 1 445 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movb	%dl, %al
	je	.L170
	call	__stack_chk_fail
.LVL200:
.L163:
	.loc 1 427 0
	testb	$2, aos_log_level
	je	.L182
	.loc 1 427 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL201:
	pushl	%edi
	pushl	$.LC54
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL202:
	movl	$.LC54, (%esp)
	jmp	.L183
.L170:
	.loc 1 445 0 is_stmt 1
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	platform_ota_result_post, .-platform_ota_result_post
	.section	.text.unlikely.platform_ota_result_post
.LCOLDE58:
	.section	.text.platform_ota_result_post
.LHOTE58:
	.section	.text.unlikely.platform_ota_cancel_upgrade,"ax",@progbits
.LCOLDB59:
	.section	.text.platform_ota_cancel_upgrade,"ax",@progbits
.LHOTB59:
	.globl	platform_ota_cancel_upgrade
	.type	platform_ota_cancel_upgrade, @function
platform_ota_cancel_upgrade:
.LFB31:
	.loc 1 448 0
	.cfi_startproc
.LVL203:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 450 0
	xorl	%eax, %eax
	.loc 1 448 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 450 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	platform_ota_cancel_upgrade, .-platform_ota_cancel_upgrade
	.section	.text.unlikely.platform_ota_cancel_upgrade
.LCOLDE59:
	.section	.text.platform_ota_cancel_upgrade
.LHOTE59:
	.section	.text.unlikely.platform_ota_get_id,"ax",@progbits
.LCOLDB60:
	.section	.text.platform_ota_get_id,"ax",@progbits
.LHOTB60:
	.globl	platform_ota_get_id
	.type	platform_ota_get_id, @function
platform_ota_get_id:
.LFB32:
	.loc 1 453 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 455 0
	xorl	%eax, %eax
	.loc 1 453 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 455 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	platform_ota_get_id, .-platform_ota_get_id
	.section	.text.unlikely.platform_ota_get_id
.LCOLDE60:
	.section	.text.platform_ota_get_id
.LHOTE60:
	.section	.text.unlikely.OTA_Deinit,"ax",@progbits
.LCOLDB61:
	.section	.text.OTA_Deinit,"ax",@progbits
.LHOTB61:
	.globl	OTA_Deinit
	.type	OTA_Deinit, @function
OTA_Deinit:
.LFB33:
	.loc 1 459 0
	.cfi_startproc
.LVL204:
	.loc 1 460 0
	movl	g_upgrad_topic, %eax
	testl	%eax, %eax
	je	.L195
	.loc 1 459 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 461 0
	pushl	%eax
	call	aos_free
.LVL205:
	.loc 1 462 0
	movl	$0, g_upgrad_topic
	addl	$16, %esp
	.loc 1 465 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L195:
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE33:
	.size	OTA_Deinit, .-OTA_Deinit
	.section	.text.unlikely.OTA_Deinit
.LCOLDE61:
	.section	.text.OTA_Deinit
.LHOTE61:
	.section	.text.unlikely.platform_destroy_connect,"ax",@progbits
.LCOLDB62:
	.section	.text.platform_destroy_connect,"ax",@progbits
.LHOTB62:
	.globl	platform_destroy_connect
	.type	platform_destroy_connect, @function
platform_destroy_connect:
.LFB34:
	.loc 1 471 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 476 0
	call	mqtt_deinit_instance
.LVL206:
	.loc 1 478 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	platform_destroy_connect, .-platform_destroy_connect
	.section	.text.unlikely.platform_destroy_connect
.LCOLDE62:
	.section	.text.platform_destroy_connect
.LHOTE62:
	.section	.text.unlikely.platform_ota_init,"ax",@progbits
.LCOLDB63:
	.section	.text.platform_ota_init,"ax",@progbits
.LHOTB63:
	.globl	platform_ota_init
	.type	platform_ota_init, @function
platform_ota_init:
.LFB35:
	.loc 1 481 0
	.cfi_startproc
.LVL207:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 482 0
	pushl	$g_ota_device_info
	call	HAL_GetProductKey
.LVL208:
	.loc 1 483 0
	addl	$16, %esp
	movl	$g_ota_device_info+21, 8(%ebp)
	.loc 1 484 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 483 0
	jmp	HAL_GetDeviceName
.LVL209:
	.cfi_endproc
.LFE35:
	.size	platform_ota_init, .-platform_ota_init
	.section	.text.unlikely.platform_ota_init
.LCOLDE63:
	.section	.text.platform_ota_init
.LHOTE63:
	.section	.bss.g_upgrad_topic,"aw",@nobits
	.align 4
	.type	g_upgrad_topic, @object
	.size	g_upgrad_topic, 4
g_upgrad_topic:
	.zero	4
	.globl	g_ota_device_info
	.section	.bss.g_ota_device_info,"aw",@nobits
	.align 32
	.type	g_ota_device_info, @object
	.size	g_ota_device_info, 54
g_ota_device_info:
	.zero	54
	.text
.Letext0:
	.section	.text.unlikely.ota_mqtt_sub_callback
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./utility/cjson/include/cJSON.h"
	.file 6 "./include/aos/cloud.h"
	.file 7 "./framework/fota/platform/mqtt/../ota_transport.h"
	.file 8 "./framework/fota/platform/mqtt/../../ota_util.h"
	.file 9 "./include/aos/log.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/internal/log_impl.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 13 "./framework/connectivity/mqtt/./mqtt_instance.h"
	.file 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 15 "./framework/fota/platform/mqtt/../../ota_version.h"
	.file 16 "./framework/protocol/linkkit/iotkit/sdk-encap/imports/iot_import_product.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x125c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF155
	.byte	0xc
	.long	.LASF156
	.long	.LASF157
	.long	.Ldebug_ranges0+0x60
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF5
	.byte	0x2
	.byte	0x1b
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.long	.LASF11
	.byte	0x3
	.byte	0xd8
	.long	0x7a
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
	.byte	0x4
	.byte	0x14
	.long	0x25
	.uleb128 0x2
	.long	.LASF16
	.byte	0x4
	.byte	0x30
	.long	0x53
	.uleb128 0x6
	.byte	0x4
	.long	0x9c
	.uleb128 0x6
	.byte	0x4
	.long	0xc5
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x8
	.long	.LASF26
	.byte	0x24
	.byte	0x5
	.byte	0x34
	.long	0x137
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0x36
	.long	0x137
	.byte	0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x5
	.byte	0x37
	.long	0x137
	.byte	0x4
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x39
	.long	0x137
	.byte	0x8
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x3c
	.long	0x73
	.byte	0xc
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x3f
	.long	0xb9
	.byte	0x10
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x44
	.long	0x73
	.byte	0x14
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0x47
	.long	0xb9
	.byte	0x18
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.byte	0x4c
	.long	0x13d
	.byte	0x1c
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xca
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF25
	.uleb128 0x2
	.long	.LASF26
	.byte	0x5
	.byte	0x4d
	.long	0xca
	.uleb128 0xa
	.long	0x9c
	.long	0x15f
	.uleb128 0xb
	.long	0x93
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x16f
	.uleb128 0xb
	.long	0x93
	.byte	0x20
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x17f
	.uleb128 0xb
	.long	0x93
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x7a
	.byte	0x6
	.byte	0x8
	.long	0x1ce
	.uleb128 0xd
	.long	.LASF27
	.byte	0
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.uleb128 0xd
	.long	.LASF29
	.byte	0x2
	.uleb128 0xd
	.long	.LASF30
	.byte	0x3
	.uleb128 0xd
	.long	.LASF31
	.byte	0x4
	.uleb128 0xd
	.long	.LASF32
	.byte	0x5
	.uleb128 0xd
	.long	.LASF33
	.byte	0x6
	.uleb128 0xd
	.long	.LASF34
	.byte	0x7
	.uleb128 0xd
	.long	.LASF35
	.byte	0x8
	.uleb128 0xd
	.long	.LASF36
	.byte	0x9
	.uleb128 0xd
	.long	.LASF37
	.byte	0xa
	.byte	0
	.uleb128 0x2
	.long	.LASF38
	.byte	0x6
	.byte	0x16
	.long	0x1d9
	.uleb128 0x6
	.byte	0x4
	.long	0x1df
	.uleb128 0xe
	.long	0x1ef
	.uleb128 0xf
	.long	0x73
	.uleb128 0xf
	.long	0xbf
	.byte	0
	.uleb128 0x10
	.long	.LASF158
	.byte	0x4
	.long	0x73
	.byte	0xb
	.byte	0x12
	.long	0x22a
	.uleb128 0x11
	.long	.LASF39
	.sleb128 -1
	.uleb128 0xd
	.long	.LASF40
	.byte	0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.uleb128 0xd
	.long	.LASF42
	.byte	0x2
	.uleb128 0xd
	.long	.LASF43
	.byte	0x3
	.uleb128 0xd
	.long	.LASF44
	.byte	0x4
	.uleb128 0xd
	.long	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF46
	.uleb128 0x12
	.byte	0x10
	.byte	0x7
	.byte	0x10
	.long	0x26a
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x11
	.long	0xbf
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x12
	.long	0xbf
	.byte	0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x13
	.long	0xbf
	.byte	0x8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x7
	.byte	0x14
	.long	0xbf
	.byte	0xc
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x7
	.byte	0x15
	.long	0x231
	.uleb128 0x13
	.value	0x4ec
	.byte	0x7
	.byte	0x17
	.long	0x2d6
	.uleb128 0x9
	.long	.LASF47
	.byte	0x7
	.byte	0x18
	.long	0x2d6
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x7
	.byte	0x19
	.long	0x2d6
	.byte	0x40
	.uleb128 0x9
	.long	.LASF49
	.byte	0x7
	.byte	0x1a
	.long	0xbf
	.byte	0x80
	.uleb128 0x9
	.long	.LASF52
	.byte	0x7
	.byte	0x1b
	.long	0x2e6
	.byte	0x84
	.uleb128 0x14
	.long	.LASF53
	.byte	0x7
	.byte	0x1c
	.long	0x73
	.value	0x484
	.uleb128 0x14
	.long	.LASF50
	.byte	0x7
	.byte	0x1d
	.long	0x2d6
	.value	0x488
	.uleb128 0x15
	.string	"md5"
	.byte	0x7
	.byte	0x1e
	.long	0x2f7
	.value	0x4c8
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x2e6
	.uleb128 0xb
	.long	0x93
	.byte	0x3f
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x2f7
	.uleb128 0x16
	.long	0x93
	.value	0x3ff
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x307
	.uleb128 0xb
	.long	0x93
	.byte	0x21
	.byte	0
	.uleb128 0x2
	.long	.LASF54
	.byte	0x7
	.byte	0x1f
	.long	0x275
	.uleb128 0xc
	.byte	0x4
	.long	0x73
	.byte	0x8
	.byte	0x11
	.long	0x379
	.uleb128 0x11
	.long	.LASF55
	.sleb128 -6
	.uleb128 0x11
	.long	.LASF56
	.sleb128 -5
	.uleb128 0x11
	.long	.LASF57
	.sleb128 -4
	.uleb128 0x11
	.long	.LASF58
	.sleb128 -3
	.uleb128 0x11
	.long	.LASF59
	.sleb128 -2
	.uleb128 0x11
	.long	.LASF60
	.sleb128 -1
	.uleb128 0xd
	.long	.LASF61
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x1
	.uleb128 0xd
	.long	.LASF63
	.byte	0x2
	.uleb128 0xd
	.long	.LASF64
	.byte	0x3
	.uleb128 0xd
	.long	.LASF65
	.byte	0x4
	.uleb128 0xd
	.long	.LASF66
	.byte	0x5
	.uleb128 0xd
	.long	.LASF67
	.byte	0x6
	.uleb128 0xd
	.long	.LASF68
	.byte	0x7
	.uleb128 0xd
	.long	.LASF69
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.long	.LASF70
	.byte	0x36
	.byte	0x1
	.byte	0x1a
	.long	0x39e
	.uleb128 0x9
	.long	.LASF71
	.byte	0x1
	.byte	0x1b
	.long	0x14f
	.byte	0
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.byte	0x1c
	.long	0x15f
	.byte	0x15
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0x1
	.byte	0x1d
	.long	0x379
	.uleb128 0xc
	.byte	0x4
	.long	0x73
	.byte	0x1
	.byte	0x1f
	.long	0x3ce
	.uleb128 0x11
	.long	.LASF74
	.sleb128 -4
	.uleb128 0x11
	.long	.LASF75
	.sleb128 -3
	.uleb128 0x11
	.long	.LASF76
	.sleb128 -2
	.uleb128 0x11
	.long	.LASF77
	.sleb128 -1
	.byte	0
	.uleb128 0x17
	.long	.LASF159
	.byte	0xb
	.byte	0xd
	.long	0x7a
	.byte	0x3
	.uleb128 0x18
	.long	.LASF160
	.byte	0x1
	.byte	0x74
	.byte	0x1
	.long	0x429
	.uleb128 0x19
	.long	.LASF78
	.byte	0x1
	.byte	0x74
	.long	0xb9
	.uleb128 0x19
	.long	.LASF79
	.byte	0x1
	.byte	0x74
	.long	0x73
	.uleb128 0x19
	.long	.LASF80
	.byte	0x1
	.byte	0x74
	.long	0x9a
	.uleb128 0x19
	.long	.LASF81
	.byte	0x1
	.byte	0x74
	.long	0x73
	.uleb128 0x1a
	.string	"ctx"
	.byte	0x1
	.byte	0x74
	.long	0x9a
	.uleb128 0x1b
	.long	.LASF84
	.byte	0x1
	.byte	0x77
	.long	0x1ce
	.byte	0
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x1
	.byte	0x46
	.long	0x73
	.byte	0x1
	.long	0x47c
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x46
	.long	0xb9
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x46
	.long	0x81
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.byte	0x46
	.long	0xbf
	.uleb128 0x19
	.long	.LASF71
	.byte	0x1
	.byte	0x46
	.long	0xbf
	.uleb128 0x19
	.long	.LASF72
	.byte	0x1
	.byte	0x47
	.long	0xbf
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.long	0x73
	.byte	0
	.uleb128 0x1c
	.long	.LASF86
	.byte	0x1
	.byte	0xb4
	.long	0x22a
	.byte	0x1
	.long	0x498
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.byte	0xb4
	.long	0x73
	.byte	0
	.uleb128 0x1c
	.long	.LASF88
	.byte	0x1
	.byte	0x35
	.long	0xbf
	.byte	0x1
	.long	0x4c8
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.byte	0x35
	.long	0xb9
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.byte	0x35
	.long	0x73
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x3a
	.long	0x73
	.byte	0
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x1
	.byte	0x80
	.long	0x73
	.byte	0x1
	.long	0x50f
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x80
	.long	0xb9
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x80
	.long	0x81
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x80
	.long	0xae
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x80
	.long	0xbf
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x82
	.long	0x73
	.byte	0
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x1
	.byte	0x94
	.long	0x73
	.byte	0x1
	.long	0x561
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0x94
	.long	0xb9
	.uleb128 0x19
	.long	.LASF82
	.byte	0x1
	.byte	0x94
	.long	0x81
	.uleb128 0x1a
	.string	"id"
	.byte	0x1
	.byte	0x94
	.long	0xae
	.uleb128 0x19
	.long	.LASF87
	.byte	0x1
	.byte	0x94
	.long	0x73
	.uleb128 0x19
	.long	.LASF93
	.byte	0x1
	.byte	0x94
	.long	0xbf
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0x96
	.long	0x73
	.byte	0
	.uleb128 0x1e
	.long	0x3da
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x639
	.uleb128 0x1f
	.long	0x3e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	0x3f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	0x3fc
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.long	0x407
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1f
	.long	0x412
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x20
	.long	0x41d
	.long	.LLST0
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.long	0x60b
	.uleb128 0x22
	.long	0x3e6
	.long	.LLST1
	.uleb128 0x22
	.long	0x3f1
	.long	.LLST2
	.uleb128 0x22
	.long	0x3fc
	.long	.LLST3
	.uleb128 0x22
	.long	0x407
	.long	.LLST4
	.uleb128 0x22
	.long	0x412
	.long	.LLST5
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	0x41d
	.uleb128 0x25
	.long	.LVL7
	.long	0x1160
	.uleb128 0x25
	.long	.LVL8
	.long	0x116c
	.uleb128 0x25
	.long	.LVL9
	.long	0x116c
	.uleb128 0x26
	.long	.LVL11
	.long	0x116c
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL1
	.long	0x1160
	.uleb128 0x25
	.long	.LVL2
	.long	0x116c
	.uleb128 0x25
	.long	.LVL3
	.long	0x116c
	.uleb128 0x25
	.long	.LVL4
	.long	0x116c
	.uleb128 0x27
	.long	.LVL13
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0
	.uleb128 0x1e
	.long	0x429
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b2
	.uleb128 0x24
	.long	0x470
	.uleb128 0x1f
	.long	0x465
	.uleb128 0x6
	.byte	0xfa
	.long	0x465
	.byte	0x9f
	.uleb128 0x1f
	.long	0x45a
	.uleb128 0x6
	.byte	0xfa
	.long	0x45a
	.byte	0x9f
	.uleb128 0x1f
	.long	0x44f
	.uleb128 0x6
	.byte	0xfa
	.long	0x44f
	.byte	0x9f
	.uleb128 0x1f
	.long	0x444
	.uleb128 0x6
	.byte	0xfa
	.long	0x444
	.byte	0x9f
	.uleb128 0x1f
	.long	0x439
	.uleb128 0x6
	.byte	0xfa
	.long	0x439
	.byte	0x9f
	.uleb128 0x25
	.long	.LVL16
	.long	0x1160
	.uleb128 0x25
	.long	.LVL17
	.long	0x116c
	.uleb128 0x25
	.long	.LVL18
	.long	0x116c
	.uleb128 0x25
	.long	.LVL19
	.long	0x116c
	.byte	0
	.uleb128 0x1e
	.long	0x498
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x6de
	.uleb128 0x22
	.long	0x4a8
	.long	.LLST6
	.uleb128 0x20
	.long	0x4be
	.long	.LLST7
	.uleb128 0x28
	.long	0x4b3
	.byte	0x22
	.byte	0
	.uleb128 0x29
	.long	.LASF161
	.byte	0x1
	.byte	0x54
	.long	0x73
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x832
	.uleb128 0x2a
	.long	.LASF94
	.byte	0x1
	.byte	0x54
	.long	0xbf
	.long	.LLST8
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.byte	0x54
	.long	0xbf
	.long	.LLST9
	.uleb128 0x2c
	.string	"ret"
	.byte	0x1
	.byte	0x56
	.long	0x73
	.long	.LLST10
	.uleb128 0x2d
	.long	.LASF95
	.byte	0x1
	.byte	0x57
	.long	0x2d6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2e
	.long	0x429
	.long	.LBB105
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x63
	.long	0x7c5
	.uleb128 0x22
	.long	0x444
	.long	.LLST11
	.uleb128 0x22
	.long	0x45a
	.long	.LLST12
	.uleb128 0x22
	.long	0x465
	.long	.LLST13
	.uleb128 0x22
	.long	0x44f
	.long	.LLST14
	.uleb128 0x22
	.long	0x439
	.long	.LLST15
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x20
	.long	0x470
	.long	.LLST16
	.uleb128 0x25
	.long	.LVL35
	.long	0x1177
	.uleb128 0x2f
	.long	.LVL40
	.long	0x639
	.uleb128 0x30
	.long	0x439
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x30
	.long	0x444
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x30
	.long	0x44f
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x30
	.long	0x45a
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_device_info
	.uleb128 0x30
	.long	0x465
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL37
	.long	0x1160
	.uleb128 0x25
	.long	.LVL38
	.long	0x116c
	.uleb128 0x25
	.long	.LVL41
	.long	0x1160
	.uleb128 0x25
	.long	.LVL42
	.long	0x116c
	.uleb128 0x25
	.long	.LVL43
	.long	0x116c
	.uleb128 0x25
	.long	.LVL44
	.long	0x116c
	.uleb128 0x25
	.long	.LVL46
	.long	0x1183
	.uleb128 0x25
	.long	.LVL47
	.long	0x1160
	.uleb128 0x25
	.long	.LVL48
	.long	0x116c
	.uleb128 0x25
	.long	.LVL49
	.long	0x116c
	.uleb128 0x25
	.long	.LVL50
	.long	0x116c
	.uleb128 0x25
	.long	.LVL51
	.long	0x118e
	.byte	0
	.uleb128 0x31
	.long	.LASF98
	.byte	0x1
	.byte	0xba
	.long	0xa3
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x876
	.uleb128 0x32
	.long	.LASF96
	.byte	0x1
	.byte	0xba
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.byte	0xba
	.long	0x876
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF97
	.byte	0x1
	.byte	0xba
	.long	0x87c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x73
	.uleb128 0x6
	.byte	0x4
	.long	0x26a
	.uleb128 0x31
	.long	.LASF99
	.byte	0x1
	.byte	0xbf
	.long	0xa3
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xc02
	.uleb128 0x32
	.long	.LASF100
	.byte	0x1
	.byte	0xbf
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF82
	.byte	0x1
	.byte	0xbf
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.LASF101
	.byte	0x1
	.byte	0xbf
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x33
	.long	.LASF102
	.byte	0x1
	.byte	0xc2
	.long	0xc08
	.long	.LLST17
	.uleb128 0x34
	.long	.LASF162
	.byte	0x1
	.value	0x142
	.uleb128 0x35
	.long	.LASF118
	.byte	0x1
	.value	0x148
	.long	.L58
	.uleb128 0x36
	.long	.LBB109
	.long	.LBE109-.LBB109
	.long	0xb8c
	.uleb128 0x33
	.long	.LASF103
	.byte	0x1
	.byte	0xcb
	.long	0xc08
	.long	.LLST18
	.uleb128 0x33
	.long	.LASF104
	.byte	0x1
	.byte	0xd8
	.long	0xc08
	.long	.LLST19
	.uleb128 0x33
	.long	.LASF105
	.byte	0x1
	.byte	0xde
	.long	0xc08
	.long	.LLST20
	.uleb128 0x33
	.long	.LASF91
	.byte	0x1
	.byte	0xe4
	.long	0xc08
	.long	.LLST21
	.uleb128 0x37
	.long	.LASF106
	.byte	0x1
	.value	0x105
	.long	0xc08
	.long	.LLST22
	.uleb128 0x37
	.long	.LASF107
	.byte	0x1
	.value	0x124
	.long	0xc08
	.long	.LLST23
	.uleb128 0x37
	.long	.LASF108
	.byte	0x1
	.value	0x12c
	.long	0xc08
	.long	.LLST24
	.uleb128 0x36
	.long	.LBB110
	.long	.LBE110-.LBB110
	.long	0x99a
	.uleb128 0x38
	.string	"md5"
	.byte	0x1
	.value	0x108
	.long	0xc08
	.long	.LLST25
	.uleb128 0x25
	.long	.LVL96
	.long	0x1197
	.uleb128 0x25
	.long	.LVL97
	.long	0x1160
	.uleb128 0x25
	.long	.LVL98
	.long	0x116c
	.byte	0
	.uleb128 0x36
	.long	.LBB111
	.long	.LBE111-.LBB111
	.long	0x9fe
	.uleb128 0x38
	.string	"md5"
	.byte	0x1
	.value	0x117
	.long	0xc08
	.long	.LLST26
	.uleb128 0x25
	.long	.LVL101
	.long	0x1197
	.uleb128 0x25
	.long	.LVL102
	.long	0x1160
	.uleb128 0x25
	.long	.LVL104
	.long	0x116c
	.uleb128 0x25
	.long	.LVL106
	.long	0x116c
	.uleb128 0x25
	.long	.LVL107
	.long	0x116c
	.uleb128 0x25
	.long	.LVL109
	.long	0x11a2
	.uleb128 0x2f
	.long	.LVL110
	.long	0x6b2
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x36
	.long	.LBB112
	.long	.LBE112-.LBB112
	.long	0xab3
	.uleb128 0x37
	.long	.LASF109
	.byte	0x1
	.value	0x12e
	.long	0x73
	.long	.LLST27
	.uleb128 0x36
	.long	.LBB113
	.long	.LBE113-.LBB113
	.long	0xaa9
	.uleb128 0x37
	.long	.LASF110
	.byte	0x1
	.value	0x131
	.long	0xc08
	.long	.LLST28
	.uleb128 0x37
	.long	.LASF111
	.byte	0x1
	.value	0x136
	.long	0xc08
	.long	.LLST29
	.uleb128 0x36
	.long	.LBB114
	.long	.LBE114-.LBB114
	.long	0xa6f
	.uleb128 0x37
	.long	.LASF112
	.byte	0x1
	.value	0x133
	.long	0x73
	.long	.LLST30
	.uleb128 0x25
	.long	.LVL123
	.long	0x11ad
	.byte	0
	.uleb128 0x36
	.long	.LBB115
	.long	.LBE115-.LBB115
	.long	0xa96
	.uleb128 0x37
	.long	.LASF113
	.byte	0x1
	.value	0x138
	.long	0x73
	.long	.LLST31
	.uleb128 0x25
	.long	.LVL127
	.long	0x11b8
	.byte	0
	.uleb128 0x25
	.long	.LVL120
	.long	0x1197
	.uleb128 0x25
	.long	.LVL124
	.long	0x1197
	.byte	0
	.uleb128 0x25
	.long	.LVL119
	.long	0x11c3
	.byte	0
	.uleb128 0x25
	.long	.LVL67
	.long	0x1197
	.uleb128 0x25
	.long	.LVL68
	.long	0x1160
	.uleb128 0x25
	.long	.LVL69
	.long	0x116c
	.uleb128 0x25
	.long	.LVL71
	.long	0x11ce
	.uleb128 0x25
	.long	.LVL72
	.long	0x1160
	.uleb128 0x25
	.long	.LVL73
	.long	0x116c
	.uleb128 0x25
	.long	.LVL74
	.long	0x1197
	.uleb128 0x25
	.long	.LVL76
	.long	0x1160
	.uleb128 0x25
	.long	.LVL78
	.long	0x116c
	.uleb128 0x25
	.long	.LVL80
	.long	0x1197
	.uleb128 0x25
	.long	.LVL82
	.long	0x1160
	.uleb128 0x25
	.long	.LVL83
	.long	0x116c
	.uleb128 0x25
	.long	.LVL86
	.long	0x1197
	.uleb128 0x25
	.long	.LVL87
	.long	0x1160
	.uleb128 0x25
	.long	.LVL88
	.long	0x116c
	.uleb128 0x25
	.long	.LVL90
	.long	0x11d9
	.uleb128 0x25
	.long	.LVL91
	.long	0x11a2
	.uleb128 0x25
	.long	.LVL92
	.long	0x11a2
	.uleb128 0x25
	.long	.LVL93
	.long	0x1197
	.uleb128 0x25
	.long	.LVL95
	.long	0x11ce
	.uleb128 0x25
	.long	.LVL111
	.long	0x1197
	.uleb128 0x25
	.long	.LVL112
	.long	0x1160
	.uleb128 0x25
	.long	.LVL114
	.long	0x116c
	.uleb128 0x25
	.long	.LVL117
	.long	0x1197
	.byte	0
	.uleb128 0x25
	.long	.LVL54
	.long	0x1160
	.uleb128 0x25
	.long	.LVL55
	.long	0x116c
	.uleb128 0x25
	.long	.LVL56
	.long	0x116c
	.uleb128 0x25
	.long	.LVL57
	.long	0x116c
	.uleb128 0x25
	.long	.LVL58
	.long	0x11e4
	.uleb128 0x25
	.long	.LVL60
	.long	0x11ef
	.uleb128 0x25
	.long	.LVL61
	.long	0x1160
	.uleb128 0x25
	.long	.LVL62
	.long	0x116c
	.uleb128 0x25
	.long	.LVL63
	.long	0x11ef
	.uleb128 0x25
	.long	.LVL64
	.long	0x116c
	.uleb128 0x25
	.long	.LVL65
	.long	0x116c
	.uleb128 0x25
	.long	.LVL129
	.long	0x11fa
	.uleb128 0x25
	.long	.LVL131
	.long	0x11fa
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x307
	.uleb128 0x6
	.byte	0x4
	.long	0x144
	.uleb128 0x3a
	.long	.LASF114
	.byte	0x1
	.value	0x14e
	.long	0xa3
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xc56
	.uleb128 0x3b
	.long	.LASF100
	.byte	0x1
	.value	0x14e
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	.LASF82
	.byte	0x1
	.value	0x14e
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3b
	.long	.LASF101
	.byte	0x1
	.value	0x14e
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x3a
	.long	.LASF115
	.byte	0x1
	.value	0x153
	.long	0xa3
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xc80
	.uleb128 0x3b
	.long	.LASF97
	.byte	0x1
	.value	0x153
	.long	0x87c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3a
	.long	.LASF116
	.byte	0x1
	.value	0x158
	.long	0xa3
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xdc8
	.uleb128 0x3b
	.long	.LASF117
	.byte	0x1
	.value	0x158
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x161
	.long	0x73
	.long	.LLST32
	.uleb128 0x35
	.long	.LASF119
	.byte	0x1
	.value	0x173
	.long	.L118
	.uleb128 0x3c
	.long	0x429
	.long	.LBB126
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x161
	.long	0xd52
	.uleb128 0x22
	.long	0x444
	.long	.LLST33
	.uleb128 0x22
	.long	0x45a
	.long	.LLST34
	.uleb128 0x22
	.long	0x465
	.long	.LLST35
	.uleb128 0x22
	.long	0x44f
	.long	.LLST36
	.uleb128 0x22
	.long	0x439
	.long	.LLST37
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x20
	.long	0x470
	.long	.LLST38
	.uleb128 0x25
	.long	.LVL147
	.long	0x1177
	.uleb128 0x2f
	.long	.LVL152
	.long	0x639
	.uleb128 0x30
	.long	0x444
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.uleb128 0x30
	.long	0x44f
	.uleb128 0x5
	.byte	0x3
	.long	.LC42
	.uleb128 0x30
	.long	0x45a
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_device_info
	.uleb128 0x30
	.long	0x465
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL135
	.long	0x1205
	.uleb128 0x25
	.long	.LVL136
	.long	0x1160
	.uleb128 0x25
	.long	.LVL137
	.long	0x116c
	.uleb128 0x25
	.long	.LVL138
	.long	0x116c
	.uleb128 0x25
	.long	.LVL139
	.long	0x116c
	.uleb128 0x25
	.long	.LVL149
	.long	0x1160
	.uleb128 0x25
	.long	.LVL150
	.long	0x116c
	.uleb128 0x25
	.long	.LVL153
	.long	0x1211
	.uleb128 0x25
	.long	.LVL154
	.long	0x1160
	.uleb128 0x25
	.long	.LVL155
	.long	0x116c
	.uleb128 0x25
	.long	.LVL156
	.long	0x116c
	.uleb128 0x25
	.long	.LVL157
	.long	0x116c
	.uleb128 0x25
	.long	.LVL158
	.long	0x121c
	.byte	0
	.uleb128 0x3a
	.long	.LASF120
	.byte	0x1
	.value	0x17c
	.long	0xa3
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xf24
	.uleb128 0x3b
	.long	.LASF121
	.byte	0x1
	.value	0x17c
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3d
	.long	.LASF87
	.byte	0x1
	.value	0x17c
	.long	0x73
	.long	.LLST39
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x17e
	.long	0x73
	.long	.LLST40
	.uleb128 0x3e
	.long	.LASF122
	.byte	0x1
	.value	0x17f
	.long	0x16f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x3f
	.long	0x50f
	.long	.LBB144
	.long	.LBE144-.LBB144
	.byte	0x1
	.value	0x190
	.long	0xeb5
	.uleb128 0x22
	.long	0x52a
	.long	.LLST41
	.uleb128 0x22
	.long	0x535
	.long	.LLST42
	.uleb128 0x22
	.long	0x54a
	.long	.LLST42
	.uleb128 0x22
	.long	0x53f
	.long	.LLST44
	.uleb128 0x22
	.long	0x51f
	.long	.LLST45
	.uleb128 0x40
	.long	.LBB145
	.long	.LBE145-.LBB145
	.uleb128 0x20
	.long	0x555
	.long	.LLST46
	.uleb128 0x25
	.long	.LVL164
	.long	0x1177
	.uleb128 0x25
	.long	.LVL165
	.long	0x1160
	.uleb128 0x25
	.long	.LVL166
	.long	0x116c
	.uleb128 0x25
	.long	.LVL168
	.long	0x1160
	.uleb128 0x25
	.long	.LVL170
	.long	0x116c
	.uleb128 0x25
	.long	.LVL171
	.long	0x116c
	.uleb128 0x25
	.long	.LVL172
	.long	0x116c
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL161
	.long	0x1160
	.uleb128 0x25
	.long	.LVL162
	.long	0x116c
	.uleb128 0x25
	.long	.LVL174
	.long	0x1160
	.uleb128 0x25
	.long	.LVL175
	.long	0x116c
	.uleb128 0x25
	.long	.LVL176
	.long	0x116c
	.uleb128 0x25
	.long	.LVL177
	.long	0x116c
	.uleb128 0x25
	.long	.LVL178
	.long	0x118e
	.uleb128 0x41
	.long	.LVL179
	.long	0x6de
	.long	0xf11
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	.LC51
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL180
	.long	0x1160
	.uleb128 0x25
	.long	.LVL181
	.long	0x116c
	.byte	0
	.uleb128 0x3a
	.long	.LASF123
	.byte	0x1
	.value	0x1a4
	.long	0xa3
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x1054
	.uleb128 0x38
	.string	"ret"
	.byte	0x1
	.value	0x1a6
	.long	0x73
	.long	.LLST47
	.uleb128 0x3e
	.long	.LASF124
	.byte	0x1
	.value	0x1a7
	.long	0x1054
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x3c
	.long	0x4c8
	.long	.LBB156
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x1a8
	.long	0xfd3
	.uleb128 0x22
	.long	0x4e3
	.long	.LLST48
	.uleb128 0x22
	.long	0x4ee
	.long	.LLST49
	.uleb128 0x22
	.long	0x4f8
	.long	.LLST50
	.uleb128 0x22
	.long	0x4d8
	.long	.LLST51
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x20
	.long	0x503
	.long	.LLST52
	.uleb128 0x25
	.long	.LVL185
	.long	0x1177
	.uleb128 0x25
	.long	.LVL186
	.long	0x1160
	.uleb128 0x25
	.long	.LVL187
	.long	0x116c
	.uleb128 0x25
	.long	.LVL188
	.long	0x116c
	.uleb128 0x25
	.long	.LVL189
	.long	0x116c
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL184
	.long	0x1228
	.uleb128 0x41
	.long	.LVL191
	.long	0x6de
	.long	0xff9
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	.LC57
	.uleb128 0x39
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL192
	.long	0x1160
	.uleb128 0x25
	.long	.LVL193
	.long	0x116c
	.uleb128 0x25
	.long	.LVL195
	.long	0x1233
	.uleb128 0x25
	.long	.LVL196
	.long	0x1160
	.uleb128 0x25
	.long	.LVL197
	.long	0x116c
	.uleb128 0x25
	.long	.LVL198
	.long	0x116c
	.uleb128 0x25
	.long	.LVL199
	.long	0x116c
	.uleb128 0x25
	.long	.LVL200
	.long	0x118e
	.uleb128 0x25
	.long	.LVL201
	.long	0x1160
	.uleb128 0x25
	.long	.LVL202
	.long	0x116c
	.byte	0
	.uleb128 0xa
	.long	0x9c
	.long	0x1064
	.uleb128 0xb
	.long	0x93
	.byte	0x7f
	.byte	0
	.uleb128 0x3a
	.long	.LASF125
	.byte	0x1
	.value	0x1bf
	.long	0xa3
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x108e
	.uleb128 0x3b
	.long	.LASF117
	.byte	0x1
	.value	0x1bf
	.long	0x1ce
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x42
	.long	.LASF163
	.byte	0x1
	.value	0x1c4
	.long	0xbf
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF126
	.byte	0x1
	.value	0x1ca
	.long	0x73
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x10d7
	.uleb128 0x3b
	.long	.LASF127
	.byte	0x1
	.value	0x1ca
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LVL205
	.long	0x121c
	.byte	0
	.uleb128 0x3a
	.long	.LASF128
	.byte	0x1
	.value	0x1d6
	.long	0xa3
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x10fb
	.uleb128 0x25
	.long	.LVL206
	.long	0x123e
	.byte	0
	.uleb128 0x43
	.long	.LASF164
	.byte	0x1
	.value	0x1e0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1133
	.uleb128 0x3b
	.long	.LASF129
	.byte	0x1
	.value	0x1e0
	.long	0x9a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	.LVL208
	.long	0x1249
	.uleb128 0x26
	.long	.LVL209
	.long	0x1254
	.byte	0
	.uleb128 0x2d
	.long	.LASF130
	.byte	0x1
	.byte	0x28
	.long	0xb9
	.uleb128 0x5
	.byte	0x3
	.long	g_upgrad_topic
	.uleb128 0x44
	.long	.LASF131
	.byte	0x9
	.byte	0x17
	.long	0x7a
	.uleb128 0x45
	.long	.LASF132
	.byte	0x1
	.byte	0x26
	.long	0x39e
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_device_info
	.uleb128 0x46
	.long	.LASF133
	.long	.LASF133
	.byte	0xa
	.value	0x20e
	.uleb128 0x47
	.long	.LASF134
	.long	.LASF134
	.byte	0xb
	.byte	0x50
	.uleb128 0x46
	.long	.LASF135
	.long	.LASF135
	.byte	0xc
	.value	0x10a
	.uleb128 0x47
	.long	.LASF136
	.long	.LASF136
	.byte	0xd
	.byte	0x7d
	.uleb128 0x48
	.long	.LASF165
	.long	.LASF165
	.uleb128 0x47
	.long	.LASF137
	.long	.LASF137
	.byte	0x5
	.byte	0xa6
	.uleb128 0x47
	.long	.LASF138
	.long	.LASF138
	.byte	0xe
	.byte	0x28
	.uleb128 0x47
	.long	.LASF139
	.long	.LASF139
	.byte	0x8
	.byte	0x5c
	.uleb128 0x47
	.long	.LASF140
	.long	.LASF140
	.byte	0x8
	.byte	0x60
	.uleb128 0x47
	.long	.LASF141
	.long	.LASF141
	.byte	0x8
	.byte	0x58
	.uleb128 0x47
	.long	.LASF142
	.long	.LASF142
	.byte	0xe
	.byte	0x27
	.uleb128 0x47
	.long	.LASF143
	.long	.LASF143
	.byte	0x8
	.byte	0x54
	.uleb128 0x47
	.long	.LASF144
	.long	.LASF144
	.byte	0x5
	.byte	0x8f
	.uleb128 0x47
	.long	.LASF145
	.long	.LASF145
	.byte	0x5
	.byte	0xaa
	.uleb128 0x47
	.long	.LASF146
	.long	.LASF146
	.byte	0x5
	.byte	0x9f
	.uleb128 0x46
	.long	.LASF147
	.long	.LASF147
	.byte	0xa
	.value	0x1f1
	.uleb128 0x47
	.long	.LASF148
	.long	.LASF148
	.byte	0xd
	.byte	0x62
	.uleb128 0x46
	.long	.LASF149
	.long	.LASF149
	.byte	0xa
	.value	0x200
	.uleb128 0x47
	.long	.LASF150
	.long	.LASF150
	.byte	0xf
	.byte	0x17
	.uleb128 0x47
	.long	.LASF151
	.long	.LASF151
	.byte	0x1
	.byte	0x2a
	.uleb128 0x47
	.long	.LASF152
	.long	.LASF152
	.byte	0xd
	.byte	0x47
	.uleb128 0x47
	.long	.LASF153
	.long	.LASF153
	.byte	0x10
	.byte	0x51
	.uleb128 0x47
	.long	.LASF154
	.long	.LASF154
	.byte	0x10
	.byte	0x59
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1d
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.long	.LVL5
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x56
	.long	.LVL12
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x56
	.long	.LVL14
	.long	.LFE20
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 16
	.long	0
	.long	0
.LLST6:
	.long	.LVL20
	.long	.LVL24
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LFE38
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL34
	.long	.LVL35-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL35-1
	.long	.LFE19
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL35-1
	.value	0x1
	.byte	0x52
	.long	.LVL35-1
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST10:
	.long	.LVL46
	.long	.LVL47-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL36
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL36
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL27
	.long	.LVL28
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL30
	.long	.LVL32
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LVL34
	.long	.LVL35-1
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LVL35-1
	.long	.LVL36
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL27
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL32
	.long	.LVL33
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL34
	.long	.LVL35-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL35-1
	.long	.LVL36
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL27
	.long	.LVL31
	.value	0x4
	.byte	0x75
	.sleb128 -92
	.byte	0x9f
	.long	.LVL31
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL40-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL59
	.long	.LVL60-1
	.value	0x1
	.byte	0x50
	.long	.LVL60-1
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL66
	.long	.LVL67-1
	.value	0x1
	.byte	0x50
	.long	.LVL67-1
	.long	.LFE25
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST18:
	.long	.LVL67
	.long	.LVL68-1
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL75
	.long	.LVL76-1
	.value	0x1
	.byte	0x50
	.long	.LVL76-1
	.long	.LVL77
	.value	0x1
	.byte	0x53
	.long	.LVL79
	.long	.LVL80-1
	.value	0x1
	.byte	0x50
	.long	.LVL80-1
	.long	.LVL103
	.value	0x1
	.byte	0x53
	.long	.LVL108
	.long	.LVL113
	.value	0x1
	.byte	0x53
	.long	.LVL115
	.long	.LVL130
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL81
	.long	.LVL82-1
	.value	0x1
	.byte	0x50
	.long	.LVL82-1
	.long	.LVL84
	.value	0x1
	.byte	0x57
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LVL94
	.value	0x1
	.byte	0x57
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST21:
	.long	.LVL86
	.long	.LVL87-1
	.value	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LVL90-1
	.value	0x1
	.byte	0x50
	.long	.LVL90-1
	.long	.LVL105
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL108
	.long	.LVL130
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST22:
	.long	.LVL93
	.long	.LVL95-1
	.value	0x1
	.byte	0x50
	.long	.LVL99
	.long	.LVL101-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST23:
	.long	.LVL111
	.long	.LVL112-1
	.value	0x1
	.byte	0x50
	.long	.LVL115
	.long	.LVL116
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL117
	.long	.LVL119-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL96
	.long	.LVL97-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL101
	.long	.LVL102-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL118
	.long	.LVL128
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST28:
	.long	.LVL120
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL124
	.long	.LVL127-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL121
	.long	.LVL122
	.value	0x2
	.byte	0x70
	.sleb128 20
	.long	0
	.long	0
.LLST31:
	.long	.LVL125
	.long	.LVL126
	.value	0x2
	.byte	0x70
	.sleb128 20
	.long	.LVL126
	.long	.LVL127-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	0
	.long	0
.LLST32:
	.long	.LVL153
	.long	.LVL154-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST33:
	.long	.LVL140
	.long	.LVL148
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL140
	.long	.LVL148
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL140
	.long	.LVL141
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL142
	.long	.LVL143
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL143
	.long	.LVL144
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL144
	.long	.LVL145
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x74
	.sleb128 16
	.long	.LVL146
	.long	.LVL147-1
	.value	0x2
	.byte	0x74
	.sleb128 20
	.long	.LVL147-1
	.long	.LVL148
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x6
	.byte	0x3
	.long	g_ota_device_info+21
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL140
	.long	.LVL148
	.value	0x6
	.byte	0x3
	.long	.LC42
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x6
	.byte	0x3
	.long	.LC42
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL140
	.long	.LVL147-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST38:
	.long	.LVL147
	.long	.LVL148
	.value	0x1
	.byte	0x50
	.long	.LVL151
	.long	.LVL152-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST39:
	.long	.LVL159
	.long	.LVL163
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL163
	.long	.LVL169
	.value	0x1
	.byte	0x53
	.long	.LVL178
	.long	.LVL182
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST40:
	.long	.LVL160
	.long	.LVL173
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL179
	.long	.LVL180-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST41:
	.long	.LVL163
	.long	.LVL173
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL163
	.long	.LVL173
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL163
	.long	.LVL169
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST45:
	.long	.LVL163
	.long	.LVL173
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST46:
	.long	.LVL164
	.long	.LVL165-1
	.value	0x1
	.byte	0x50
	.long	.LVL167
	.long	.LVL168-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST47:
	.long	.LVL183
	.long	.LVL190
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL191
	.long	.LVL192-1
	.value	0x1
	.byte	0x50
	.long	.LVL194
	.long	.LVL195-1
	.value	0x1
	.byte	0x50
	.long	.LVL195
	.long	.LVL196-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST48:
	.long	.LVL184
	.long	.LVL190
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL184
	.long	.LVL190
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL184
	.long	.LVL185-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST51:
	.long	.LVL184
	.long	.LVL190
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST52:
	.long	.LVL185
	.long	.LVL186-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x94
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB19
	.long	.LFE19-.LFB19
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB91
	.long	.LBE91
	.long	.LBB94
	.long	.LBE94
	.long	0
	.long	0
	.long	.LBB105
	.long	.LBE105
	.long	.LBB108
	.long	.LBE108
	.long	0
	.long	0
	.long	.LBB126
	.long	.LBE126
	.long	.LBB129
	.long	.LBE129
	.long	0
	.long	0
	.long	.LBB156
	.long	.LBE156
	.long	.LBB159
	.long	.LBE159
	.long	0
	.long	0
	.long	.LFB20
	.long	.LFE20
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB19
	.long	.LFE19
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"valuestring"
.LASF141:
	.string	"ota_set_firmware_type"
.LASF128:
	.string	"platform_destroy_connect"
.LASF144:
	.string	"cJSON_Parse"
.LASF39:
	.string	"AOS_LL_V_NONE_BIT"
.LASF143:
	.string	"ota_set_version"
.LASF11:
	.string	"size_t"
.LASF29:
	.string	"GET_DEVICE_STATUS"
.LASF59:
	.string	"OTA_DOWNLOAD_FAILED"
.LASF65:
	.string	"OTA_UPGRADE"
.LASF23:
	.string	"string"
.LASF18:
	.string	"prev"
.LASF26:
	.string	"cJSON"
.LASF45:
	.string	"AOS_LL_V_MAX_BIT"
.LASF20:
	.string	"type"
.LASF138:
	.string	"strncpy"
.LASF124:
	.string	"msg_informed"
.LASF9:
	.string	"long long unsigned int"
.LASF108:
	.string	"diff"
.LASF5:
	.string	"__int8_t"
.LASF36:
	.string	"SET_SUB_DEVICE_STATUS"
.LASF112:
	.string	"diff_method"
.LASF17:
	.string	"next"
.LASF94:
	.string	"topic_type"
.LASF100:
	.string	"response"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF82:
	.string	"buf_len"
.LASF119:
	.string	"do_exit"
.LASF79:
	.string	"topic_len"
.LASF52:
	.string	"download_url"
.LASF148:
	.string	"mqtt_subscribe"
.LASF24:
	.string	"valuedouble"
.LASF120:
	.string	"platform_ota_status_post"
.LASF4:
	.string	"long int"
.LASF78:
	.string	"topic"
.LASF151:
	.string	"version_report"
.LASF75:
	.string	"ALIOT_OTA_CHECK_FAILED"
.LASF86:
	.string	"ota_check_progress"
.LASF109:
	.string	"is_diff"
.LASF62:
	.string	"OTA_DOWNLOAD"
.LASF60:
	.string	"OTA_INIT_FAILED"
.LASF25:
	.string	"double"
.LASF137:
	.string	"cJSON_GetObjectItem"
.LASF64:
	.string	"OTA_CHECK"
.LASF54:
	.string	"ota_response_params"
.LASF72:
	.string	"device_name"
.LASF157:
	.string	"/home/stone/Documents/pca"
.LASF70:
	.string	"ota_device_info"
.LASF53:
	.string	"frimware_size"
.LASF69:
	.string	"OTA_MAX"
.LASF134:
	.string	"csp_printf"
.LASF67:
	.string	"OTA_REBOOT_SUCCESS"
.LASF99:
	.string	"platform_ota_parse_response"
.LASF76:
	.string	"ALIOT_OTA_DOWNLOAD_FAILED"
.LASF155:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF93:
	.string	"msg_detail"
.LASF145:
	.string	"cJSON_GetErrorPtr"
.LASF27:
	.string	"CLOUD_CONNECTED"
.LASF89:
	.string	"value"
.LASF118:
	.string	"parse_success"
.LASF117:
	.string	"msgCallback"
.LASF90:
	.string	"ota_gen_info_msg"
.LASF10:
	.string	"unsigned int"
.LASF77:
	.string	"ALIOT_OTA_UPGRADE_FAILED"
.LASF50:
	.string	"device_uuid"
.LASF7:
	.string	"long unsigned int"
.LASF38:
	.string	"aos_cloud_cb_t"
.LASF164:
	.string	"platform_ota_init"
.LASF116:
	.string	"platform_ota_subscribe_upgrade"
.LASF110:
	.string	"dmethod"
.LASF92:
	.string	"ota_gen_report_msg"
.LASF107:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF98:
	.string	"platform_ota_parse_requset"
.LASF126:
	.string	"OTA_Deinit"
.LASF42:
	.string	"AOS_LL_V_WARN_BIT"
.LASF35:
	.string	"GET_SUB_DEVICE_STATUS"
.LASF43:
	.string	"AOS_LL_V_INFO_BIT"
.LASF130:
	.string	"g_upgrad_topic"
.LASF146:
	.string	"cJSON_Delete"
.LASF33:
	.string	"UPGRADE_DEVICE"
.LASF30:
	.string	"SET_DEVICE_STATUS"
.LASF160:
	.string	"ota_mqtt_sub_callback"
.LASF163:
	.string	"platform_ota_get_id"
.LASF115:
	.string	"platform_ota_publish_request"
.LASF22:
	.string	"valueint"
.LASF105:
	.string	"resourceUrl"
.LASF113:
	.string	"splict_size"
.LASF13:
	.string	"sizetype"
.LASF156:
	.string	"src/ota_transport.c"
.LASF37:
	.string	"MAX_EVENT_TYPE"
.LASF111:
	.string	"splictSize"
.LASF96:
	.string	"request"
.LASF56:
	.string	"OTA_UPGRADE_FAILED"
.LASF101:
	.string	"response_parmas"
.LASF103:
	.string	"message"
.LASF158:
	.string	"log_level_bit"
.LASF149:
	.string	"aos_free"
.LASF161:
	.string	"ota_mqtt_publish"
.LASF41:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF68:
	.string	"OTA_CANCEL"
.LASF51:
	.string	"ota_request_params"
.LASF162:
	.string	"parse_failed"
.LASF40:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF34:
	.string	"CANCEL_UPGRADE_DEVICE"
.LASF44:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF159:
	.string	"aos_log_get_level"
.LASF106:
	.string	"signMethod"
.LASF46:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF28:
	.string	"CLOUD_DISCONNECTED"
.LASF19:
	.string	"child"
.LASF87:
	.string	"progress"
.LASF142:
	.string	"strncmp"
.LASF58:
	.string	"OTA_DECOMPRESS_FAILED"
.LASF2:
	.string	"short int"
.LASF55:
	.string	"OTA_REBOOT_FAILED"
.LASF165:
	.string	"__stack_chk_fail"
.LASF125:
	.string	"platform_ota_cancel_upgrade"
.LASF95:
	.string	"topic_name"
.LASF16:
	.string	"uint32_t"
.LASF129:
	.string	"signal"
.LASF32:
	.string	"SET_DEVICE_RAWDATA"
.LASF12:
	.string	"long double"
.LASF14:
	.string	"char"
.LASF114:
	.string	"platform_ota_parse_cancel_responce"
.LASF104:
	.string	"json_obj"
.LASF154:
	.string	"HAL_GetDeviceName"
.LASF88:
	.string	"to_capital_letter"
.LASF63:
	.string	"OTA_DECOMPRESS"
.LASF6:
	.string	"__uint32_t"
.LASF139:
	.string	"ota_set_diff_version"
.LASF71:
	.string	"product_key"
.LASF80:
	.string	"payload"
.LASF91:
	.string	"version"
.LASF81:
	.string	"payload_len"
.LASF31:
	.string	"GET_DEVICE_RAWDATA"
.LASF15:
	.string	"int8_t"
.LASF47:
	.string	"primary_version"
.LASF135:
	.string	"snprintf"
.LASF123:
	.string	"platform_ota_result_post"
.LASF97:
	.string	"request_parmas"
.LASF140:
	.string	"ota_set_splict_size"
.LASF147:
	.string	"aos_zalloc"
.LASF121:
	.string	"status"
.LASF122:
	.string	"msg_reported"
.LASF152:
	.string	"mqtt_deinit_instance"
.LASF66:
	.string	"OTA_REBOOT"
.LASF133:
	.string	"aos_now_ms"
.LASF136:
	.string	"mqtt_publish"
.LASF153:
	.string	"HAL_GetProductKey"
.LASF127:
	.string	"handle"
.LASF61:
	.string	"OTA_INIT"
.LASF57:
	.string	"OTA_CHECK_FAILED"
.LASF132:
	.string	"g_ota_device_info"
.LASF48:
	.string	"secondary_version"
.LASF74:
	.string	"ALIOT_OTA_PROGRAMMING_FAILED"
.LASF84:
	.string	"ota_update"
.LASF83:
	.string	"ota_topic_type"
.LASF150:
	.string	"ota_get_system_version"
.LASF85:
	.string	"ota_mqtt_gen_topic_name"
.LASF49:
	.string	"product_type"
.LASF73:
	.string	"OTA_device_info"
.LASF131:
	.string	"aos_log_level"
.LASF102:
	.string	"root"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
