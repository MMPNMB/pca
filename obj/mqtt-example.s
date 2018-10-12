	.file	"mqtt-example.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"----"
.LC1:
	.string	"[%06d]<V> "
.LC2:
	.string	"\r\n"
.LC3:
	.string	"Topic: '%.*s' (Length: %d)"
.LC4:
	.string	"Payload: '%.*s' (Length: %d)"
	.section	.text.unlikely.mqtt_sub_callback,"ax",@progbits
.LCOLDB5:
	.section	.text.mqtt_sub_callback,"ax",@progbits
.LHOTB5:
	.section	.text.unlikely.mqtt_sub_callback
.Ltext_cold0:
	.section	.text.mqtt_sub_callback
	.type	mqtt_sub_callback, @function
mqtt_sub_callback:
.LFB18:
	.file 1 "example/mqttapp/mqtt-example.c"
	.loc 1 71 0
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
	.loc 1 71 0
	movl	16(%ebp), %eax
	movl	12(%ebp), %esi
	movl	20(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	%eax, -28(%ebp)
	.loc 1 72 0
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
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL4:
	.loc 1 73 0
	call	aos_now_ms
.LVL5:
	popl	%ecx
	popl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%esi
	pushl	$.LC3
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL6:
	addl	$32, %esp
	pushl	%esi
	pushl	%edi
	pushl	%esi
	pushl	$.LC3
	call	csp_printf
.LVL7:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL8:
	.loc 1 77 0
	call	aos_now_ms
.LVL9:
	popl	%ecx
	popl	%esi
	pushl	%ebx
	pushl	-28(%ebp)
	pushl	%ebx
	pushl	$.LC4
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL10:
	addl	$32, %esp
	pushl	%ebx
	pushl	-28(%ebp)
	pushl	%ebx
	pushl	$.LC4
	call	csp_printf
.LVL11:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL12:
	.loc 1 81 0
	call	aos_now_ms
.LVL13:
	addl	$12, %esp
	pushl	$.LC0
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL14:
	movl	$.LC0, (%esp)
	call	csp_printf
.LVL15:
	movl	$.LC2, 8(%ebp)
	addl	$16, %esp
	.loc 1 93 0
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
	.loc 1 81 0
	jmp	csp_printf
.LVL16:
	.cfi_endproc
.LFE18:
	.size	mqtt_sub_callback, .-mqtt_sub_callback
	.section	.text.unlikely.mqtt_sub_callback
.LCOLDE5:
	.section	.text.mqtt_sub_callback
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"event_type %d\n"
	.section	.text.unlikely.smartled_event_handler,"ax",@progbits
.LCOLDB7:
	.section	.text.smartled_event_handler,"ax",@progbits
.LHOTB7:
	.type	smartled_event_handler, @function
smartled_event_handler:
.LFB21:
	.loc 1 161 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 161 0
	movl	8(%ebp), %ebx
	.loc 1 162 0
	call	aos_now_ms
.LVL18:
	pushl	%ebx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL19:
	popl	%edx
	popl	%ecx
	pushl	%ebx
	pushl	$.LC6
	call	csp_printf
.LVL20:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL21:
	.loc 1 169 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	smartled_event_handler, .-smartled_event_handler
	.section	.text.unlikely.smartled_event_handler
.LCOLDE7:
	.section	.text.smartled_event_handler
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"/yfTuLfBJTiL/TestDeviceForDemo/get"
.LC9:
	.string	"IOT_MQTT_Subscribe() failed, rc = %d"
.LC10:
	.string	"{\"attr_name\":\"temperature\", \"attr_value\":\"%d\"}"
.LC11:
	.string	"Error occur! Exit program"
.LC12:
	.string	"/yfTuLfBJTiL/TestDeviceForDemo/update"
.LC13:
	.string	"error occur when publish"
.LC14:
	.string	"packet-id=%u, publish topic msg=%s"
	.section	.text.unlikely.mqtt_work,"ax",@progbits
.LCOLDB15:
	.section	.text.mqtt_work,"ax",@progbits
.LHOTB15:
	.type	mqtt_work, @function
mqtt_work:
.LFB19:
	.loc 1 102 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 106 0
	cmpl	$0, is_subscribed
	jne	.L6
	.loc 1 108 0
	pushl	%ecx
	pushl	$0
	pushl	$mqtt_sub_callback
	pushl	$.LC8
	call	mqtt_subscribe
.LVL23:
	.loc 1 109 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 108 0
	movl	%eax, %ebx
.LVL24:
	.loc 1 109 0
	jns	.L7
	.loc 1 111 0 discriminator 1
	call	aos_now_ms
.LVL25:
	pushl	%ebx
	pushl	$.LC9
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL26:
	popl	%eax
	popl	%edx
	pushl	%ebx
	pushl	$.LC9
	call	csp_printf
.LVL27:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL28:
	addl	$16, %esp
.L7:
	.loc 1 114 0
	pushl	%ecx
	pushl	%ecx
	pushl	$0
	pushl	$ota_init
	.loc 1 113 0
	movl	$1, is_subscribed
	.loc 1 114 0
	call	aos_schedule_call
.LVL29:
	jmp	.L14
.LVL30:
.L6:
.LBB2:
	.loc 1 119 0
	pushl	cnt
	pushl	$.LC10
	pushl	$128
	pushl	$msg_pub
	call	snprintf
.LVL31:
	.loc 1 120 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 119 0
	movl	%eax, %ebx
.LVL32:
	.loc 1 120 0
	jns	.L9
	.loc 1 121 0 discriminator 1
	call	aos_now_ms
.LVL33:
	pushl	%edx
	pushl	$.LC11
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL34:
	movl	$.LC11, (%esp)
	call	csp_printf
.LVL35:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL36:
	addl	$16, %esp
.L9:
	.loc 1 123 0
	pushl	%ebx
	pushl	$msg_pub
	pushl	$1
	pushl	$.LC12
	call	mqtt_publish
.LVL37:
	.loc 1 124 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 123 0
	movl	%eax, %ebx
.LVL38:
	.loc 1 124 0
	jns	.L10
	.loc 1 125 0 discriminator 1
	call	aos_now_ms
.LVL39:
	pushl	%ecx
	pushl	$.LC13
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL40:
	movl	$.LC13, (%esp)
	call	csp_printf
.LVL41:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL42:
	addl	$16, %esp
.L10:
	.loc 1 128 0 discriminator 1
	call	aos_now_ms
.LVL43:
	subl	$12, %esp
	pushl	$msg_pub
	pushl	%ebx
	pushl	$.LC14
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL44:
	addl	$28, %esp
	pushl	$msg_pub
	pushl	%ebx
	pushl	$.LC14
	call	csp_printf
.LVL45:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL46:
.L14:
.LBE2:
	.loc 1 130 0 discriminator 1
	movl	cnt, %eax
.LBB3:
	.loc 1 128 0 discriminator 1
	addl	$16, %esp
.LBE3:
	.loc 1 130 0 discriminator 1
	incl	%eax
	.loc 1 131 0 discriminator 1
	cmpl	$199, %eax
	.loc 1 130 0 discriminator 1
	movl	%eax, cnt
	.loc 1 131 0 discriminator 1
	jg	.L11
	.loc 1 132 0
	pushl	%edx
	pushl	$0
	pushl	$mqtt_work
	pushl	$3000
	call	aos_post_delayed_action
.LVL47:
	jmp	.L15
.L11:
	.loc 1 134 0
	pushl	%eax
	pushl	$0
	pushl	$mqtt_work
	pushl	$3000
	call	aos_cancel_delayed_action
.LVL48:
	.loc 1 135 0
	movl	$.LC8, (%esp)
	call	mqtt_unsubscribe
.LVL49:
	.loc 1 136 0
	movl	$200, (%esp)
	call	aos_msleep
.LVL50:
	.loc 1 137 0
	call	mqtt_deinit_instance
.LVL51:
	.loc 1 138 0
	movl	$0, is_subscribed
	.loc 1 139 0
	movl	$0, cnt
.L15:
	addl	$16, %esp
	.loc 1 142 0
	movl	-4(%ebp), %ebx
.LVL52:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	mqtt_work, .-mqtt_work
	.section	.text.unlikely.mqtt_work
.LCOLDE15:
	.section	.text.mqtt_work
.LHOTE15:
	.section	.text.unlikely.ota_init,"ax",@progbits
.LCOLDB16:
	.section	.text.ota_init,"ax",@progbits
.LHOTB16:
	.type	ota_init, @function
ota_init:
.LFB25:
	.loc 1 248 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 249 0
	pushl	$0
	pushl	$5
	pushl	$1
	call	aos_post_event
.LVL54:
	.loc 1 250 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	ota_init, .-ota_init
	.section	.text.unlikely.ota_init
.LCOLDE16:
	.section	.text.ota_init
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"mqtt_service_event!"
	.section	.text.unlikely.mqtt_service_event,"ax",@progbits
.LCOLDB18:
	.section	.text.mqtt_service_event,"ax",@progbits
.LHOTB18:
	.type	mqtt_service_event, @function
mqtt_service_event:
.LFB20:
	.loc 1 147 0
	.cfi_startproc
.LVL55:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 147 0
	movl	8(%ebp), %eax
	.loc 1 149 0
	cmpw	$1, 4(%eax)
	jne	.L19
	.loc 1 153 0
	cmpw	$8, 6(%eax)
	jne	.L19
.LVL56:
.LBB6:
.LBB7:
	.loc 1 156 0
	call	aos_now_ms
.LVL57:
	pushl	%edx
	pushl	$.LC17
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL58:
	movl	$.LC17, (%esp)
	call	csp_printf
.LVL59:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL60:
	.loc 1 157 0
	addl	$16, %esp
	movl	$0, 8(%ebp)
.LVL61:
.LBE7:
.LBE6:
	.loc 1 158 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB9:
.LBB8:
	.loc 1 157 0
	jmp	mqtt_work
.LVL62:
.L19:
	.cfi_restore_state
.LBE8:
.LBE9:
	.loc 1 158 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	mqtt_service_event, .-mqtt_service_event
	.section	.text.unlikely.mqtt_service_event
.LCOLDE18:
	.section	.text.mqtt_service_event
.LHOTE18:
	.section	.rodata.str1.1
.LC19:
	.string	"yfTuLfBJTiL"
.LC20:
	.string	"TestDeviceForDemo"
.LC21:
	.string	"fSCl9Ns5YPnYN8Ocg0VEel1kXFnRlV6c"
.LC22:
	.string	"mqtt_init_instance failed\n"
	.section	.text.unlikely.mqtt_client_example,"ax",@progbits
.LCOLDB23:
	.section	.text.mqtt_client_example,"ax",@progbits
.LHOTB23:
	.globl	mqtt_client_example
	.type	mqtt_client_example, @function
mqtt_client_example:
.LFB22:
	.loc 1 174 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 175 0
	movl	$mqtt, %edx
	xorl	%eax, %eax
	movl	$30, %ecx
	.loc 1 174 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 175 0
	movl	%edx, %edi
	.loc 1 174 0
	subl	$8, %esp
	.loc 1 175 0
	rep stosl
	.loc 1 177 0
	pushl	$15
	pushl	$.LC19
	pushl	%edx
	call	strncpy
.LVL63:
	.loc 1 178 0
	addl	$12, %esp
	pushl	$31
	pushl	$.LC20
	pushl	$mqtt+16
	call	strncpy
.LVL64:
	.loc 1 179 0
	addl	$12, %esp
	pushl	$47
	pushl	$.LC21
	pushl	$mqtt+48
	call	strncpy
.LVL65:
	.loc 1 186 0
	pushl	$2048
	pushl	$mqtt+48
	pushl	$mqtt+16
	pushl	$mqtt
	.loc 1 181 0
	movl	$2048, mqtt+96
	.loc 1 182 0
	movl	$8, mqtt+100
	.loc 1 184 0
	movl	$smartled_event_handler, mqtt+108
	.loc 1 186 0
	call	mqtt_init_instance
.LVL66:
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L23
.LBB12:
.LBB13:
	.loc 1 187 0
	call	aos_now_ms
.LVL67:
	pushl	%edx
	pushl	$.LC22
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL68:
	movl	$.LC22, (%esp)
	call	csp_printf
.LVL69:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL70:
	addl	$16, %esp
	orl	$-1, %eax
	jmp	.L24
.L23:
.LBE13:
.LBE12:
	.loc 1 190 0
	pushl	%eax
	pushl	$0
	pushl	$mqtt_service_event
	pushl	$1
	call	aos_register_event_filter
.LVL71:
	.loc 1 192 0
	addl	$16, %esp
	xorl	%eax, %eax
.L24:
	.loc 1 194 0
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	mqtt_client_example, .-mqtt_client_example
	.section	.text.unlikely.mqtt_client_example
.LCOLDE23:
	.section	.text.mqtt_client_example
.LHOTE23:
	.section	.text.unlikely.handle_mqtt,"ax",@progbits
.LCOLDB24:
	.section	.text.handle_mqtt,"ax",@progbits
.LHOTB24:
	.type	handle_mqtt, @function
handle_mqtt:
.LFB23:
	.loc 1 197 0
	.cfi_startproc
.LVL72:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 199 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 198 0
	jmp	mqtt_client_example
.LVL73:
	.cfi_endproc
.LFE23:
	.size	handle_mqtt, .-handle_mqtt
	.section	.text.unlikely.handle_mqtt
.LCOLDE24:
	.section	.text.handle_mqtt
.LHOTE24:
	.section	.rodata.str1.1
.LC25:
	.string	"wifi_service_event!"
	.section	.text.unlikely.wifi_service_event,"ax",@progbits
.LCOLDB26:
	.section	.text.wifi_service_event,"ax",@progbits
.LHOTB26:
	.type	wifi_service_event, @function
wifi_service_event:
.LFB17:
	.loc 1 58 0
	.cfi_startproc
.LVL74:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 58 0
	movl	8(%ebp), %eax
	.loc 1 59 0
	cmpw	$2, 4(%eax)
	jne	.L28
	.loc 1 63 0
	cmpw	$5, 6(%eax)
	jne	.L28
.LVL75:
.LBB16:
.LBB17:
	.loc 1 66 0
	call	aos_now_ms
.LVL76:
	pushl	%edx
	pushl	$.LC25
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL77:
	movl	$.LC25, (%esp)
	call	csp_printf
.LVL78:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL79:
	.loc 1 67 0
	addl	$16, %esp
.LBE17:
.LBE16:
	.loc 1 68 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB19:
.LBB18:
	.loc 1 67 0
	jmp	mqtt_client_example
.LVL80:
.L28:
	.cfi_restore_state
.LBE18:
.LBE19:
	.loc 1 68 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	wifi_service_event, .-wifi_service_event
	.section	.text.unlikely.wifi_service_event
.LCOLDE26:
	.section	.text.wifi_service_event
.LHOTE26:
	.section	.text.unlikely.application_start,"ax",@progbits
.LCOLDB27:
	.section	.text.application_start,"ax",@progbits
.LHOTB27:
	.globl	application_start
	.type	application_start, @function
application_start:
.LFB24:
	.loc 1 220 0
	.cfi_startproc
.LVL81:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 234 0
	pushl	$5
	call	aos_set_log_level
.LVL82:
	.loc 1 236 0
	addl	$12, %esp
	pushl	$0
	pushl	$wifi_service_event
	pushl	$2
	call	aos_register_event_filter
.LVL83:
	.loc 1 238 0
	call	netmgr_init
.LVL84:
	.loc 1 239 0
	movl	$0, (%esp)
	call	netmgr_start
.LVL85:
	.loc 1 241 0
	movl	$mqttcmd, (%esp)
	call	aos_cli_register_command
.LVL86:
	.loc 1 243 0
	call	aos_loop_run
.LVL87:
	.loc 1 245 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	application_start, .-application_start
	.section	.text.unlikely.application_start
.LCOLDE27:
	.section	.text.application_start
.LHOTE27:
	.section	.rodata.str1.1
.LC28:
	.string	"mqtt"
.LC29:
	.string	"factory mqtt"
	.section	.data.mqttcmd,"aw",@progbits
	.align 4
	.type	mqttcmd, @object
	.size	mqttcmd, 12
mqttcmd:
	.long	.LC28
	.long	.LC29
	.long	handle_mqtt
	.section	.bss.mqtt,"aw",@nobits
	.align 32
	.type	mqtt, @object
	.size	mqtt, 120
mqtt:
	.zero	120
	.globl	msg_pub
	.section	.bss.msg_pub,"aw",@nobits
	.align 32
	.type	msg_pub, @object
	.size	msg_pub, 128
msg_pub:
	.zero	128
	.section	.bss.is_subscribed,"aw",@nobits
	.align 4
	.type	is_subscribed, @object
	.size	is_subscribed, 4
is_subscribed:
	.zero	4
	.globl	cnt
	.section	.bss.cnt,"aw",@nobits
	.align 4
	.type	cnt, @object
	.size	cnt, 4
cnt:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.mqtt_sub_callback
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/aos/yloop.h"
	.file 5 "./include/aos/cli.h"
	.file 6 "./include/aos/log.h"
	.file 7 "./framework/connectivity/mqtt/./iot_export_mqtt.h"
	.file 8 "./include/aos/kernel.h"
	.file 9 "./include/aos/internal/log_impl.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 11 "./framework/connectivity/mqtt/./mqtt_instance.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 13 "./framework/netmgr/include/netmgr.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8ef
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF90
	.byte	0xc
	.long	.LASF91
	.long	.LASF92
	.long	.Ldebug_ranges0+0x48
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x2b
	.long	0x45
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.byte	0x4
	.long	0xa4
	.uleb128 0x7
	.long	0x88
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x24
	.long	0x3a
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x8
	.byte	0x4
	.long	0x7a
	.byte	0x6
	.byte	0xe
	.long	0xf0
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
	.byte	0x10
	.byte	0x4
	.byte	0x41
	.long	0x135
	.uleb128 0xb
	.long	.LASF22
	.byte	0x4
	.byte	0x43
	.long	0xb4
	.byte	0
	.uleb128 0xb
	.long	.LASF23
	.byte	0x4
	.byte	0x45
	.long	0xa9
	.byte	0x4
	.uleb128 0xb
	.long	.LASF24
	.byte	0x4
	.byte	0x47
	.long	0xa9
	.byte	0x6
	.uleb128 0xb
	.long	.LASF25
	.byte	0x4
	.byte	0x49
	.long	0x5e
	.byte	0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x4
	.byte	0x4b
	.long	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x4
	.byte	0x4c
	.long	0xf0
	.uleb128 0x6
	.byte	0x4
	.long	0x135
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF28
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF29
	.uleb128 0xc
	.long	.LASF93
	.byte	0xc
	.byte	0x5
	.byte	0x16
	.long	0x185
	.uleb128 0xb
	.long	.LASF30
	.byte	0x5
	.byte	0x17
	.long	0x9e
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0x18
	.long	0x9e
	.byte	0x4
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0x1a
	.long	0x1a5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x19f
	.uleb128 0xe
	.long	0x98
	.uleb128 0xe
	.long	0x73
	.uleb128 0xe
	.long	0x73
	.uleb128 0xe
	.long	0x19f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x98
	.uleb128 0x6
	.byte	0x4
	.long	0x185
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF33
	.uleb128 0x8
	.byte	0x4
	.long	0x7a
	.byte	0x7
	.byte	0x18
	.long	0x1d1
	.uleb128 0x9
	.long	.LASF34
	.byte	0
	.uleb128 0x9
	.long	.LASF35
	.byte	0x1
	.uleb128 0x9
	.long	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.byte	0x78
	.byte	0x1
	.byte	0x1a
	.long	0x246
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.byte	0x1b
	.long	0x246
	.byte	0
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1
	.byte	0x1c
	.long	0x256
	.byte	0x10
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.byte	0x1d
	.long	0x266
	.byte	0x30
	.uleb128 0xb
	.long	.LASF40
	.byte	0x1
	.byte	0x1f
	.long	0x73
	.byte	0x60
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.byte	0x20
	.long	0x73
	.byte	0x64
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.byte	0x21
	.long	0x73
	.byte	0x68
	.uleb128 0xb
	.long	.LASF43
	.byte	0x1
	.byte	0x22
	.long	0x28a
	.byte	0x6c
	.uleb128 0xb
	.long	.LASF44
	.byte	0x1
	.byte	0x23
	.long	0x2a9
	.byte	0x70
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x24
	.long	0x96
	.byte	0x74
	.byte	0
	.uleb128 0x10
	.long	0x88
	.long	0x256
	.uleb128 0x11
	.long	0x8f
	.byte	0xf
	.byte	0
	.uleb128 0x10
	.long	0x88
	.long	0x266
	.uleb128 0x11
	.long	0x8f
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	0x88
	.long	0x276
	.uleb128 0x11
	.long	0x8f
	.byte	0x2f
	.byte	0
	.uleb128 0x12
	.long	0x73
	.long	0x28a
	.uleb128 0xe
	.long	0x73
	.uleb128 0xe
	.long	0x96
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x276
	.uleb128 0x12
	.long	0x73
	.long	0x2a9
	.uleb128 0xe
	.long	0x98
	.uleb128 0xe
	.long	0x98
	.uleb128 0xe
	.long	0x96
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x290
	.uleb128 0x3
	.long	.LASF45
	.byte	0x1
	.byte	0x25
	.long	0x1d1
	.uleb128 0x13
	.long	.LASF48
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.long	0x2dd
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.byte	0x92
	.long	0x140
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0x92
	.long	0x96
	.byte	0
	.uleb128 0x15
	.long	.LASF94
	.byte	0x1
	.byte	0xad
	.long	0x73
	.byte	0x1
	.uleb128 0x13
	.long	.LASF49
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.long	0x30c
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.byte	0x39
	.long	0x140
	.uleb128 0x14
	.long	.LASF47
	.byte	0x1
	.byte	0x39
	.long	0x96
	.byte	0
	.uleb128 0x16
	.long	.LASF55
	.byte	0x1
	.byte	0x46
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f8
	.uleb128 0x17
	.long	.LASF50
	.byte	0x1
	.byte	0x46
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF51
	.byte	0x1
	.byte	0x46
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF52
	.byte	0x1
	.byte	0x46
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x46
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0x46
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.long	.LVL1
	.long	0x813
	.uleb128 0x19
	.long	.LVL2
	.long	0x81f
	.uleb128 0x19
	.long	.LVL3
	.long	0x81f
	.uleb128 0x19
	.long	.LVL4
	.long	0x81f
	.uleb128 0x19
	.long	.LVL5
	.long	0x813
	.uleb128 0x19
	.long	.LVL6
	.long	0x81f
	.uleb128 0x19
	.long	.LVL7
	.long	0x81f
	.uleb128 0x19
	.long	.LVL8
	.long	0x81f
	.uleb128 0x19
	.long	.LVL9
	.long	0x813
	.uleb128 0x19
	.long	.LVL10
	.long	0x81f
	.uleb128 0x19
	.long	.LVL11
	.long	0x81f
	.uleb128 0x19
	.long	.LVL12
	.long	0x81f
	.uleb128 0x19
	.long	.LVL13
	.long	0x813
	.uleb128 0x19
	.long	.LVL14
	.long	0x81f
	.uleb128 0x19
	.long	.LVL15
	.long	0x81f
	.uleb128 0x1a
	.long	.LVL16
	.long	0x81f
	.byte	0
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.byte	0xa0
	.long	0x73
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x452
	.uleb128 0x17
	.long	.LASF54
	.byte	0x1
	.byte	0xa0
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"ctx"
	.byte	0x1
	.byte	0xa0
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LVL18
	.long	0x813
	.uleb128 0x19
	.long	.LVL19
	.long	0x81f
	.uleb128 0x19
	.long	.LVL20
	.long	0x81f
	.uleb128 0x19
	.long	.LVL21
	.long	0x81f
	.byte	0
	.uleb128 0x16
	.long	.LASF56
	.byte	0x1
	.byte	0x65
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0x65
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"rc"
	.byte	0x1
	.byte	0x68
	.long	0x73
	.long	.LLST0
	.uleb128 0x1d
	.long	.Ldebug_ranges0+0
	.long	0x51a
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x1
	.byte	0x77
	.long	0x73
	.long	.LLST1
	.uleb128 0x19
	.long	.LVL31
	.long	0x82a
	.uleb128 0x19
	.long	.LVL33
	.long	0x813
	.uleb128 0x19
	.long	.LVL34
	.long	0x81f
	.uleb128 0x19
	.long	.LVL35
	.long	0x81f
	.uleb128 0x19
	.long	.LVL36
	.long	0x81f
	.uleb128 0x19
	.long	.LVL37
	.long	0x836
	.uleb128 0x19
	.long	.LVL39
	.long	0x813
	.uleb128 0x19
	.long	.LVL40
	.long	0x81f
	.uleb128 0x19
	.long	.LVL41
	.long	0x81f
	.uleb128 0x19
	.long	.LVL42
	.long	0x81f
	.uleb128 0x19
	.long	.LVL43
	.long	0x813
	.uleb128 0x19
	.long	.LVL44
	.long	0x81f
	.uleb128 0x19
	.long	.LVL45
	.long	0x81f
	.uleb128 0x19
	.long	.LVL46
	.long	0x81f
	.byte	0
	.uleb128 0x19
	.long	.LVL23
	.long	0x841
	.uleb128 0x19
	.long	.LVL25
	.long	0x813
	.uleb128 0x19
	.long	.LVL26
	.long	0x81f
	.uleb128 0x19
	.long	.LVL27
	.long	0x81f
	.uleb128 0x19
	.long	.LVL28
	.long	0x81f
	.uleb128 0x19
	.long	.LVL29
	.long	0x84c
	.uleb128 0x19
	.long	.LVL47
	.long	0x857
	.uleb128 0x19
	.long	.LVL48
	.long	0x862
	.uleb128 0x19
	.long	.LVL49
	.long	0x86d
	.uleb128 0x19
	.long	.LVL50
	.long	0x878
	.uleb128 0x19
	.long	.LVL51
	.long	0x884
	.byte	0
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.byte	0xf7
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a9
	.uleb128 0x18
	.string	"P"
	.byte	0x1
	.byte	0xf7
	.long	0x96
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LVL54
	.long	0x88f
	.byte	0
	.uleb128 0x1f
	.long	0x2ba
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x612
	.uleb128 0x20
	.long	0x2c6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x2d1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.long	0x2c6
	.long	.LLST2
	.uleb128 0x22
	.long	0x2d1
	.long	.LLST3
	.uleb128 0x19
	.long	.LVL57
	.long	0x813
	.uleb128 0x19
	.long	.LVL58
	.long	0x81f
	.uleb128 0x19
	.long	.LVL59
	.long	0x81f
	.uleb128 0x19
	.long	.LVL60
	.long	0x81f
	.uleb128 0x1a
	.long	.LVL62
	.long	0x452
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x2dd
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x677
	.uleb128 0x19
	.long	.LVL63
	.long	0x89a
	.uleb128 0x19
	.long	.LVL64
	.long	0x89a
	.uleb128 0x19
	.long	.LVL65
	.long	0x89a
	.uleb128 0x19
	.long	.LVL66
	.long	0x8a5
	.uleb128 0x19
	.long	.LVL67
	.long	0x813
	.uleb128 0x19
	.long	.LVL68
	.long	0x81f
	.uleb128 0x19
	.long	.LVL69
	.long	0x81f
	.uleb128 0x19
	.long	.LVL70
	.long	0x81f
	.uleb128 0x19
	.long	.LVL71
	.long	0x8b0
	.byte	0
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.byte	0xc4
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ce
	.uleb128 0x17
	.long	.LASF61
	.byte	0x1
	.byte	0xc4
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.byte	0xc4
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0xc4
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0xc4
	.long	0x19f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1a
	.long	.LVL73
	.long	0x2dd
	.byte	0
	.uleb128 0x1f
	.long	0x2e9
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x737
	.uleb128 0x20
	.long	0x2f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x300
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x22
	.long	0x2f5
	.long	.LLST4
	.uleb128 0x22
	.long	0x300
	.long	.LLST5
	.uleb128 0x19
	.long	.LVL76
	.long	0x813
	.uleb128 0x19
	.long	.LVL77
	.long	0x81f
	.uleb128 0x19
	.long	.LVL78
	.long	0x81f
	.uleb128 0x19
	.long	.LVL79
	.long	0x81f
	.uleb128 0x1a
	.long	.LVL80
	.long	0x2dd
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF96
	.byte	0x1
	.byte	0xdb
	.long	0x73
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a3
	.uleb128 0x17
	.long	.LASF63
	.byte	0x1
	.byte	0xdb
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF64
	.byte	0x1
	.byte	0xdb
	.long	0x19f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.long	.LVL82
	.long	0x8bb
	.uleb128 0x19
	.long	.LVL83
	.long	0x8b0
	.uleb128 0x19
	.long	.LVL84
	.long	0x8c6
	.uleb128 0x19
	.long	.LVL85
	.long	0x8d1
	.uleb128 0x19
	.long	.LVL86
	.long	0x8dc
	.uleb128 0x19
	.long	.LVL87
	.long	0x8e7
	.byte	0
	.uleb128 0x24
	.long	.LASF65
	.byte	0x1
	.byte	0x2f
	.long	0x73
	.uleb128 0x5
	.byte	0x3
	.long	is_subscribed
	.uleb128 0x24
	.long	.LASF66
	.byte	0x1
	.byte	0xab
	.long	0x2af
	.uleb128 0x5
	.byte	0x3
	.long	mqtt
	.uleb128 0x24
	.long	.LASF67
	.byte	0x1
	.byte	0xc9
	.long	0x154
	.uleb128 0x5
	.byte	0x3
	.long	mqttcmd
	.uleb128 0x25
	.long	.LASF68
	.byte	0x6
	.byte	0x17
	.long	0x7a
	.uleb128 0x26
	.string	"cnt"
	.byte	0x1
	.byte	0x2e
	.long	0x73
	.uleb128 0x5
	.byte	0x3
	.long	cnt
	.uleb128 0x10
	.long	0x88
	.long	0x802
	.uleb128 0x11
	.long	0x8f
	.byte	0x7f
	.byte	0
	.uleb128 0x27
	.long	.LASF69
	.byte	0x1
	.byte	0x35
	.long	0x7f2
	.uleb128 0x5
	.byte	0x3
	.long	msg_pub
	.uleb128 0x28
	.long	.LASF70
	.long	.LASF70
	.byte	0x8
	.value	0x20e
	.uleb128 0x29
	.long	.LASF71
	.long	.LASF71
	.byte	0x9
	.byte	0x50
	.uleb128 0x28
	.long	.LASF72
	.long	.LASF72
	.byte	0xa
	.value	0x10a
	.uleb128 0x29
	.long	.LASF73
	.long	.LASF73
	.byte	0xb
	.byte	0x7d
	.uleb128 0x29
	.long	.LASF74
	.long	.LASF74
	.byte	0xb
	.byte	0x62
	.uleb128 0x29
	.long	.LASF75
	.long	.LASF75
	.byte	0x4
	.byte	0xa9
	.uleb128 0x29
	.long	.LASF76
	.long	.LASF76
	.byte	0x4
	.byte	0x93
	.uleb128 0x29
	.long	.LASF77
	.long	.LASF77
	.byte	0x4
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF78
	.long	.LASF78
	.byte	0xb
	.byte	0x6e
	.uleb128 0x28
	.long	.LASF79
	.long	.LASF79
	.byte	0x8
	.value	0x215
	.uleb128 0x29
	.long	.LASF80
	.long	.LASF80
	.byte	0xb
	.byte	0x47
	.uleb128 0x29
	.long	.LASF81
	.long	.LASF81
	.byte	0x4
	.byte	0x74
	.uleb128 0x29
	.long	.LASF82
	.long	.LASF82
	.byte	0xc
	.byte	0x28
	.uleb128 0x29
	.long	.LASF83
	.long	.LASF83
	.byte	0xb
	.byte	0x3c
	.uleb128 0x29
	.long	.LASF84
	.long	.LASF84
	.byte	0x4
	.byte	0x5e
	.uleb128 0x29
	.long	.LASF85
	.long	.LASF85
	.byte	0x6
	.byte	0x25
	.uleb128 0x29
	.long	.LASF86
	.long	.LASF86
	.byte	0xd
	.byte	0x58
	.uleb128 0x29
	.long	.LASF87
	.long	.LASF87
	.byte	0xd
	.byte	0x5a
	.uleb128 0x29
	.long	.LASF88
	.long	.LASF88
	.byte	0x5
	.byte	0x43
	.uleb128 0x29
	.long	.LASF89
	.long	.LASF89
	.byte	0x4
	.byte	0xbe
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.long	.LVL22
	.long	.LVL24
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x50
	.long	.LVL25-1
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL38
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39-1
	.value	0x1
	.byte	0x50
	.long	.LVL39-1
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL32
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL56
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL56
	.long	.LVL62
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL75
	.long	.LVL80
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL75
	.long	.LVL80
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
	.long	.LBB6
	.long	.LBE6
	.long	.LBB9
	.long	.LBE9
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LFB18
	.long	.LFE18
	.long	.LFB21
	.long	.LFE21
	.long	.LFB19
	.long	.LFE19
	.long	.LFB25
	.long	.LFE25
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB17
	.long	.LFE17
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF58:
	.string	"msg_len"
.LASF40:
	.string	"max_msg_size"
.LASF28:
	.string	"float"
.LASF87:
	.string	"netmgr_start"
.LASF79:
	.string	"aos_msleep"
.LASF84:
	.string	"aos_register_event_filter"
.LASF91:
	.string	"src/mqtt-example.c"
.LASF76:
	.string	"aos_post_delayed_action"
.LASF94:
	.string	"mqtt_client_example"
.LASF95:
	.string	"smartled_event_handler"
.LASF48:
	.string	"mqtt_service_event"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"AOS_LL_WARN"
.LASF13:
	.string	"sizetype"
.LASF43:
	.string	"event_handler"
.LASF8:
	.string	"long long int"
.LASF6:
	.string	"__uint32_t"
.LASF39:
	.string	"deviceSecret"
.LASF5:
	.string	"__uint16_t"
.LASF25:
	.string	"value"
.LASF31:
	.string	"help"
.LASF51:
	.string	"topic_len"
.LASF93:
	.string	"cli_command"
.LASF42:
	.string	"connected"
.LASF66:
	.string	"mqtt"
.LASF15:
	.string	"uint32_t"
.LASF38:
	.string	"deviceName"
.LASF17:
	.string	"AOS_LL_FATAL"
.LASF54:
	.string	"event_type"
.LASF70:
	.string	"aos_now_ms"
.LASF44:
	.string	"delete_subdev"
.LASF85:
	.string	"aos_set_log_level"
.LASF56:
	.string	"mqtt_work"
.LASF55:
	.string	"mqtt_sub_callback"
.LASF4:
	.string	"long int"
.LASF65:
	.string	"is_subscribed"
.LASF21:
	.string	"AOS_LL_DEBUG"
.LASF68:
	.string	"aos_log_level"
.LASF96:
	.string	"application_start"
.LASF72:
	.string	"snprintf"
.LASF30:
	.string	"name"
.LASF61:
	.string	"pwbuf"
.LASF50:
	.string	"topic"
.LASF35:
	.string	"IOTX_MQTT_QOS1"
.LASF11:
	.string	"long double"
.LASF67:
	.string	"mqttcmd"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"MqttContext"
.LASF88:
	.string	"aos_cli_register_command"
.LASF63:
	.string	"argc"
.LASF89:
	.string	"aos_loop_run"
.LASF0:
	.string	"signed char"
.LASF83:
	.string	"mqtt_init_instance"
.LASF9:
	.string	"long long unsigned int"
.LASF23:
	.string	"type"
.LASF10:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF24:
	.string	"code"
.LASF64:
	.string	"argv"
.LASF22:
	.string	"time"
.LASF41:
	.string	"max_msgq_size"
.LASF86:
	.string	"netmgr_init"
.LASF82:
	.string	"strncpy"
.LASF12:
	.string	"char"
.LASF32:
	.string	"function"
.LASF20:
	.string	"AOS_LL_INFO"
.LASF49:
	.string	"wifi_service_event"
.LASF3:
	.string	"short unsigned int"
.LASF74:
	.string	"mqtt_subscribe"
.LASF75:
	.string	"aos_schedule_call"
.LASF33:
	.string	"_Bool"
.LASF34:
	.string	"IOTX_MQTT_QOS0"
.LASF60:
	.string	"handle_mqtt"
.LASF36:
	.string	"IOTX_MQTT_QOS2"
.LASF26:
	.string	"extra"
.LASF27:
	.string	"input_event_t"
.LASF18:
	.string	"AOS_LL_ERROR"
.LASF71:
	.string	"csp_printf"
.LASF77:
	.string	"aos_cancel_delayed_action"
.LASF46:
	.string	"event"
.LASF81:
	.string	"aos_post_event"
.LASF7:
	.string	"long unsigned int"
.LASF80:
	.string	"mqtt_deinit_instance"
.LASF29:
	.string	"double"
.LASF69:
	.string	"msg_pub"
.LASF73:
	.string	"mqtt_publish"
.LASF78:
	.string	"mqtt_unsubscribe"
.LASF57:
	.string	"parms"
.LASF90:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF47:
	.string	"priv_data"
.LASF59:
	.string	"ota_init"
.LASF92:
	.string	"/home/stone/Documents/pca"
.LASF53:
	.string	"payload_len"
.LASF16:
	.string	"AOS_LL_NONE"
.LASF37:
	.string	"productKey"
.LASF62:
	.string	"blen"
.LASF52:
	.string	"payload"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
