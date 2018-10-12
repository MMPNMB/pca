	.file	"mqtt_instance.c"
	.text
.Ltext0:
	.section	.text.unlikely.event_handle,"ax",@progbits
.LCOLDB0:
	.section	.text.event_handle,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.event_handle
.Ltext_cold0:
	.section	.text.event_handle
	.type	event_handle, @function
event_handle:
.LFB20:
	.file 1 "framework/connectivity/mqtt/mqtt_instance.c"
	.loc 1 59 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 62 0
	movl	16(%ebp), %eax
	movl	(%eax), %eax
	cmpl	$1, %eax
	je	.L3
	cmpl	$2, %eax
	jne	.L1
	.loc 1 64 0
	movl	$1, %esi
	jmp	.L4
.L3:
	.loc 1 67 0
	xorl	%esi, %esi
.L4:
.LVL1:
	.loc 1 74 0
	movl	first_event, %ebx
.LVL2:
.L5:
	.loc 1 74 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx
	je	.L1
	.loc 1 75 0 is_stmt 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L6
	.loc 1 76 0
	pushl	%edx
	pushl	%edx
	pushl	4(%ebx)
	pushl	%esi
	call	*%eax
.LVL3:
	addl	$16, %esp
.L6:
	.loc 1 74 0 discriminator 2
	movl	8(%ebx), %ebx
.LVL4:
	jmp	.L5
.LVL5:
.L1:
	.loc 1 78 0
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
.LFE20:
	.size	event_handle, .-event_handle
	.section	.text.unlikely.event_handle
.LCOLDE0:
	.section	.text.event_handle
.LHOTE0:
	.section	.text.unlikely.subscriber_cb,"ax",@progbits
.LCOLDB1:
	.section	.text.subscriber_cb,"ax",@progbits
.LHOTB1:
	.type	subscriber_cb, @function
subscriber_cb:
.LFB29:
	.loc 1 249 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 249 0
	movl	8(%ebp), %edx
.LVL7:
	.loc 1 253 0
	testl	%edx, %edx
	je	.L14
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	4(%edx), %ecx
	testl	%ecx, %ecx
	je	.L14
	.loc 1 251 0 is_stmt 1
	movl	16(%ebp), %eax
	.loc 1 254 0
	subl	$12, %esp
	.loc 1 251 0
	movl	4(%eax), %eax
	.loc 1 254 0
	pushl	8(%edx)
.LVL8:
	movzwl	8(%eax), %edx
.LVL9:
	pushl	%edx
	pushl	16(%eax)
	movzwl	6(%eax), %edx
	pushl	%edx
	pushl	12(%eax)
	call	*%ecx
.LVL10:
	addl	$32, %esp
.L14:
	.loc 1 257 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	subscriber_cb, .-subscriber_cb
	.section	.text.unlikely.subscriber_cb
.LCOLDE1:
	.section	.text.subscriber_cb
.LHOTE1:
	.section	.text.unlikely.mqtt_get_instance,"ax",@progbits
.LCOLDB2:
	.section	.text.mqtt_get_instance,"ax",@progbits
.LHOTB2:
	.globl	mqtt_get_instance
	.type	mqtt_get_instance, @function
mqtt_get_instance:
.LFB21:
	.loc 1 82 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 84 0
	movl	mqtt_client, %eax
	.loc 1 82 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 84 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	mqtt_get_instance, .-mqtt_get_instance
	.section	.text.unlikely.mqtt_get_instance
.LCOLDE2:
	.section	.text.mqtt_get_instance
.LHOTE2:
	.section	.text.unlikely.mqtt_remove_instance,"ax",@progbits
.LCOLDB3:
	.section	.text.mqtt_remove_instance,"ax",@progbits
.LHOTB3:
	.globl	mqtt_remove_instance
	.type	mqtt_remove_instance, @function
mqtt_remove_instance:
.LFB22:
	.loc 1 87 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 88 0
	movl	$0, mqtt_client
	.loc 1 87 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 89 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	mqtt_remove_instance, .-mqtt_remove_instance
	.section	.text.unlikely.mqtt_remove_instance
.LCOLDE3:
	.section	.text.mqtt_remove_instance
.LHOTE3:
	.section	.text.unlikely.mqtt_set_instance,"ax",@progbits
.LCOLDB4:
	.section	.text.mqtt_set_instance,"ax",@progbits
.LHOTB4:
	.globl	mqtt_set_instance
	.type	mqtt_set_instance, @function
mqtt_set_instance:
.LFB23:
	.loc 1 92 0
	.cfi_startproc
.LVL11:
	.loc 1 93 0
	cmpl	$0, mqtt_client
	.loc 1 92 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 92 0
	movl	8(%ebp), %eax
	.loc 1 93 0
	jne	.L29
	testl	%eax, %eax
	je	.L29
	.loc 1 96 0
	movl	%eax, mqtt_client
	.loc 1 97 0
	xorl	%eax, %eax
	jmp	.L28
.LVL12:
.L29:
	.loc 1 94 0
	orl	$-1, %eax
.LVL13:
.L28:
	.loc 1 98 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	mqtt_set_instance, .-mqtt_set_instance
	.section	.text.unlikely.mqtt_set_instance
.LCOLDE4:
	.section	.text.mqtt_set_instance
.LHOTE4:
	.section	.text.unlikely.mqtt_deinit_instance,"ax",@progbits
.LCOLDB5:
	.section	.text.mqtt_deinit_instance,"ax",@progbits
.LHOTB5:
	.globl	mqtt_deinit_instance
	.type	mqtt_deinit_instance, @function
mqtt_deinit_instance:
.LFB25:
	.loc 1 163 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 166 0
	movl	mqtt_rbuf, %eax
	testl	%eax, %eax
	je	.L32
	.loc 1 167 0 discriminator 2
	subl	$12, %esp
	pushl	%eax
	call	LITE_free_internal
.LVL14:
	movl	$0, mqtt_rbuf
	addl	$16, %esp
.L32:
	.loc 1 171 0
	movl	mqtt_wbuf, %eax
	testl	%eax, %eax
	je	.L33
	.loc 1 172 0 discriminator 2
	subl	$12, %esp
	pushl	%eax
	call	LITE_free_internal
.LVL15:
	movl	$0, mqtt_wbuf
	addl	$16, %esp
.L33:
	.loc 1 176 0
	cmpl	$0, mqtt_client
	je	.L34
	.loc 1 177 0
	subl	$12, %esp
	pushl	$mqtt_client
	call	IOT_MQTT_Destroy
.LVL16:
	.loc 1 178 0
	movl	$0, mqtt_client
	addl	$16, %esp
.L34:
	.loc 1 182 0
	movl	first_event, %eax
.LVL17:
.L35:
	.loc 1 182 0 is_stmt 0 discriminator 1
	testl	%eax, %eax
	je	.L48
	.loc 1 183 0 is_stmt 1
	movl	8(%eax), %ebx
.LVL18:
.LBB4:
.LBB5:
	.loc 1 48 0
	movl	$first_event, %ecx
.LVL19:
.L36:
	.loc 1 49 0
	movl	(%ecx), %edx
	testl	%edx, %edx
	je	.L49
.LVL20:
	.loc 1 51 0
	cmpl	%edx, %eax
	jne	.L37
	.loc 1 52 0
	movl	8(%eax), %edx
.LVL21:
	movl	%edx, (%ecx)
.LVL22:
	jmp	.L36
.LVL23:
.L37:
	.loc 1 54 0
	leal	8(%edx), %ecx
.LVL24:
	jmp	.L36
.LVL25:
.L49:
.LBE5:
.LBE4:
	.loc 1 185 0 discriminator 2
	subl	$12, %esp
	pushl	%eax
	call	LITE_free_internal
.LVL26:
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L35
.LVL27:
.L48:
	.loc 1 188 0
	movl	$0, first_event
	.loc 1 193 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	mqtt_deinit_instance, .-mqtt_deinit_instance
	.section	.text.unlikely.mqtt_deinit_instance
.LCOLDE5:
	.section	.text.mqtt_deinit_instance
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"masterslave"
	.section	.text.unlikely.mqtt_init_instance,"ax",@progbits
.LCOLDB7:
	.section	.text.mqtt_init_instance,"ax",@progbits
.LHOTB7:
	.globl	mqtt_init_instance
	.type	mqtt_init_instance, @function
mqtt_init_instance:
.LFB24:
	.loc 1 107 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$108, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 107 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 108 0
	cmpl	$0, mqtt_client
	.loc 1 107 0
	movl	16(%ebp), %edx
	.loc 1 109 0
	movl	$1, %eax
	.loc 1 107 0
	movl	20(%ebp), %ebx
	.loc 1 108 0
	jne	.L51
	.loc 1 111 0
	subl	$12, %esp
	movl	%edx, -108(%ebp)
	pushl	$.LC6
	call	IOT_OpenLog
.LVL29:
	.loc 1 112 0
	movl	$5, (%esp)
	call	IOT_SetLogLevel
.LVL30:
	.loc 1 117 0
	movl	-108(%ebp), %edx
	leal	-92(%ebp), %eax
	pushl	%eax
	pushl	%edx
	pushl	%edi
	pushl	%esi
	call	IOT_SetupConnInfo
.LVL31:
	.loc 1 118 0
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 117 0
	movl	%eax, %esi
.LVL32:
	.loc 1 118 0
	jne	.L65
	.loc 1 121 0
	pushl	%edx
	pushl	%ebx
	pushl	$121
	pushl	$__func__.3878
	call	LITE_malloc_internal
.LVL33:
	.loc 1 122 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 121 0
	movl	%eax, mqtt_rbuf
	.loc 1 122 0
	je	.L65
	.loc 1 125 0
	pushl	%eax
	pushl	%ebx
	pushl	$125
	pushl	$__func__.3878
	call	LITE_malloc_internal
.LVL34:
	.loc 1 126 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 125 0
	movl	%eax, %edx
	movl	%eax, mqtt_wbuf
	.loc 1 126 0
	jne	.L54
.L55:
.LDL1:
	.loc 1 158 0
	call	mqtt_deinit_instance
.LVL35:
.L65:
	.loc 1 159 0
	orl	$-1, %eax
	jmp	.L51
.L54:
	.loc 1 130 0
	leal	-88(%ebp), %edi
	movl	%esi, %eax
	movl	$15, %ecx
	.loc 1 151 0
	subl	$12, %esp
	.loc 1 130 0
	rep stosl
	.loc 1 132 0
	movl	-92(%ebp), %eax
	movl	(%eax), %ecx
	.loc 1 139 0
	movl	$2000, -60(%ebp)
	.loc 1 141 0
	movl	$60000, -56(%ebp)
	.loc 1 143 0
	movl	%ebx, -40(%ebp)
	.loc 1 144 0
	movl	%edx, -52(%ebp)
	.loc 1 145 0
	movl	%ebx, -48(%ebp)
	.loc 1 132 0
	movw	%cx, -88(%ebp)
	.loc 1 133 0
	leal	2(%eax), %ecx
	.loc 1 147 0
	movl	$event_handle, -36(%ebp)
	.loc 1 133 0
	movl	%ecx, -84(%ebp)
	.loc 1 134 0
	leal	131(%eax), %ecx
	movl	%ecx, -80(%ebp)
	.loc 1 135 0
	leal	388(%eax), %ecx
	movl	%ecx, -76(%ebp)
	.loc 1 136 0
	leal	901(%eax), %ecx
	.loc 1 137 0
	movl	1160(%eax), %eax
	.loc 1 136 0
	movl	%ecx, -72(%ebp)
	.loc 1 137 0
	movl	%eax, -68(%ebp)
	.loc 1 142 0
	movl	mqtt_rbuf, %eax
	movl	%eax, -44(%ebp)
	.loc 1 151 0
	leal	-88(%ebp), %eax
	pushl	%eax
	call	IOT_MQTT_Construct
.LVL36:
	.loc 1 152 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 151 0
	movl	%eax, mqtt_client
	.loc 1 152 0
	je	.L55
	.loc 1 155 0
	xorl	%eax, %eax
.LVL37:
.L51:
	.loc 1 160 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L56
	call	__stack_chk_fail
.LVL38:
.L56:
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
	.size	mqtt_init_instance, .-mqtt_init_instance
	.section	.text.unlikely.mqtt_init_instance
.LCOLDE7:
	.section	.text.mqtt_init_instance
.LHOTE7:
	.section	.text.unlikely.mqtt_set_event_cb,"ax",@progbits
.LCOLDB8:
	.section	.text.mqtt_set_event_cb,"ax",@progbits
.LHOTB8:
	.globl	mqtt_set_event_cb
	.type	mqtt_set_event_cb, @function
mqtt_set_event_cb:
.LFB26:
	.loc 1 196 0
	.cfi_startproc
.LVL39:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 196 0
	movl	8(%ebp), %ebx
	.loc 1 197 0
	testl	%ebx, %ebx
	jne	.L67
.L69:
	.loc 1 198 0
	orl	$-1, %eax
	jmp	.L68
.L67:
	.loc 1 200 0
	cmpl	$0, mqtt_client
	je	.L69
	.loc 1 203 0
	pushl	%eax
	pushl	$12
	pushl	$203
	pushl	$__func__.3899
	call	LITE_malloc_internal
.LVL40:
	.loc 1 204 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 203 0
	movl	%eax, %edx
.LVL41:
	.loc 1 204 0
	je	.L69
	.loc 1 206 0
	xorl	%eax, %eax
.LVL42:
	movl	$3, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 209 0
	movl	12(%ebp), %eax
	.loc 1 208 0
	movl	%ebx, (%edx)
	.loc 1 209 0
	movl	%eax, 4(%edx)
.LVL43:
.LBB8:
.LBB9:
	.loc 1 39 0
	movl	first_event, %eax
	.loc 1 40 0
	movl	%edx, first_event
	.loc 1 39 0
	movl	%eax, 8(%edx)
.LBE9:
.LBE8:
	.loc 1 213 0
	xorl	%eax, %eax
.LVL44:
.L68:
	.loc 1 214 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	mqtt_set_event_cb, .-mqtt_set_event_cb
	.section	.text.unlikely.mqtt_set_event_cb
.LCOLDE8:
	.section	.text.mqtt_set_event_cb
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"t->topic"
.LC10:
	.string	"%s == NULL! LITE_free(%s) aborted."
	.section	.text.unlikely.mqtt_subscribe,"ax",@progbits
.LCOLDB11:
	.section	.text.mqtt_subscribe,"ax",@progbits
.LHOTB11:
	.globl	mqtt_subscribe
	.type	mqtt_subscribe, @function
mqtt_subscribe:
.LFB30:
	.loc 1 260 0
	.cfi_startproc
.LVL45:
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
	.loc 1 260 0
	movl	8(%ebp), %esi
	.loc 1 261 0
	testl	%esi, %esi
	je	.L87
	cmpl	$0, 12(%ebp)
	sete	-25(%ebp)
	je	.L87
	.loc 1 264 0
	cmpl	$0, mqtt_client
	je	.L87
	.loc 1 267 0
	pushl	%eax
	pushl	$16
	pushl	$267
	pushl	$__func__.3941
	call	LITE_malloc_internal
.LVL46:
	.loc 1 268 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 267 0
	movl	%eax, %ebx
.LVL47:
	.loc 1 268 0
	je	.L87
	.loc 1 270 0
	xorl	%eax, %eax
.LVL48:
	movl	$4, %ecx
	movl	%ebx, %edi
	rep stosl
	.loc 1 272 0
	movb	-25(%ebp), %al
	movl	%esi, %edi
	orl	$-1, %ecx
	repnz scasb
.LVL49:
	notl	%ecx
	pushl	%edi
	pushl	%ecx
	pushl	$272
	pushl	$__func__.3941
	call	LITE_malloc_internal
.LVL50:
	.loc 1 273 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 272 0
	movl	%eax, (%ebx)
	.loc 1 273 0
	jne	.L79
.L88:
	.loc 1 274 0 discriminator 2
	subl	$12, %esp
	pushl	%ebx
	call	LITE_free_internal
.LVL51:
	addl	$16, %esp
.LVL52:
.L87:
	.loc 1 275 0 discriminator 2
	orl	$-1, %eax
	jmp	.L77
.LVL53:
.L79:
	.loc 1 277 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%eax
	call	strcpy
.LVL54:
	.loc 1 279 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%ebx)
	.loc 1 280 0
	movl	16(%ebp), %eax
	movl	%eax, 8(%ebx)
	.loc 1 282 0
	movl	%ebx, (%esp)
	pushl	$subscriber_cb
	pushl	$1
	pushl	(%ebx)
	pushl	mqtt_client
	call	IOT_MQTT_Subscribe
.LVL55:
	.loc 1 283 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L80
	.loc 1 284 0
	movl	(%ebx), %eax
.LVL56:
	testl	%eax, %eax
	jne	.L81
	.loc 1 284 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC9
	pushl	$.LC9
	pushl	$.LC10
	pushl	$2
	pushl	$284
	pushl	$__FUNCTION__.3942
	call	LITE_syslog
.LVL57:
	addl	$32, %esp
	jmp	.L88
.L81:
	.loc 1 284 0 discriminator 2
	subl	$12, %esp
	pushl	%eax
	call	LITE_free_internal
.LVL58:
	movl	$0, (%ebx)
	addl	$16, %esp
	jmp	.L88
.LVL59:
.L80:
.LBB12:
.LBB13:
	.loc 1 229 0 is_stmt 1
	movl	first_topic, %eax
.LVL60:
	.loc 1 230 0
	movl	%ebx, first_topic
	.loc 1 229 0
	movl	%eax, 12(%ebx)
.LBE13:
.LBE12:
	.loc 1 291 0
	xorl	%eax, %eax
.LVL61:
.L77:
	.loc 1 292 0
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
.LFE30:
	.size	mqtt_subscribe, .-mqtt_subscribe
	.section	.text.unlikely.mqtt_subscribe
.LCOLDE11:
	.section	.text.mqtt_subscribe
.LHOTE11:
	.section	.text.unlikely.mqtt_unsubscribe,"ax",@progbits
.LCOLDB12:
	.section	.text.mqtt_unsubscribe,"ax",@progbits
.LHOTB12:
	.globl	mqtt_unsubscribe
	.type	mqtt_unsubscribe, @function
mqtt_unsubscribe:
.LFB31:
	.loc 1 295 0
	.cfi_startproc
.LVL62:
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
	.loc 1 298 0
	cmpl	$0, mqtt_client
	.loc 1 295 0
	movl	8(%ebp), %esi
	.loc 1 301 0
	movl	first_topic, %ebx
	.loc 1 298 0
	je	.L103
.L91:
.LVL63:
	.loc 1 301 0 discriminator 1
	testl	%ebx, %ebx
	je	.L104
	.loc 1 302 0
	movl	12(%ebx), %edi
.LVL64:
	.loc 1 304 0
	pushl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	(%ebx)
	call	strcmp
.LVL65:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L92
	.loc 1 305 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	mqtt_client
	call	IOT_MQTT_Unsubscribe
.LVL66:
	addl	$16, %esp
.LBB16:
.LBB17:
	.loc 1 238 0
	movl	$first_topic, %edx
.LVL67:
.L93:
	.loc 1 239 0
	movl	(%edx), %eax
	testl	%eax, %eax
	je	.L105
.LVL68:
	.loc 1 241 0
	cmpl	%eax, %ebx
	jne	.L94
	.loc 1 242 0
	movl	12(%ebx), %eax
.LVL69:
	movl	%eax, (%edx)
.LVL70:
	jmp	.L93
.LVL71:
.L94:
	.loc 1 244 0
	leal	12(%eax), %edx
.LVL72:
	jmp	.L93
.LVL73:
.L105:
.LBE17:
.LBE16:
	.loc 1 307 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	jne	.L97
	.loc 1 307 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC9
	pushl	$.LC9
	pushl	$.LC10
	pushl	$2
	pushl	$307
	pushl	$__FUNCTION__.3952
	call	LITE_syslog
.LVL74:
	addl	$32, %esp
	jmp	.L98
.L97:
	.loc 1 307 0 discriminator 2
	subl	$12, %esp
	pushl	%eax
	call	LITE_free_internal
.LVL75:
	movl	$0, (%ebx)
	addl	$16, %esp
.L98:
	.loc 1 308 0 is_stmt 1
	subl	$12, %esp
	pushl	%ebx
	call	LITE_free_internal
.LVL76:
	addl	$16, %esp
.LVL77:
.L92:
.LBB19:
.LBB18:
	.loc 1 238 0 discriminator 1
	movl	%edi, %ebx
	jmp	.L91
.LVL78:
.L104:
.LBE18:
.LBE19:
	.loc 1 313 0
	xorl	%eax, %eax
	jmp	.L90
.LVL79:
.L103:
	orl	$-1, %eax
.L90:
	.loc 1 314 0
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
	.size	mqtt_unsubscribe, .-mqtt_unsubscribe
	.section	.text.unlikely.mqtt_unsubscribe
.LCOLDE12:
	.section	.text.mqtt_unsubscribe
.LHOTE12:
	.section	.rodata.str1.1
.LC13:
	.string	"\033[1;31;40m%s.%d: "
.LC14:
	.string	"IOT_MQTT_Publish failed"
.LC15:
	.string	"\033[0m"
	.section	.text.unlikely.mqtt_publish,"ax",@progbits
.LCOLDB16:
	.section	.text.mqtt_publish,"ax",@progbits
.LHOTB16:
	.globl	mqtt_publish
	.type	mqtt_publish, @function
mqtt_publish:
.LFB32:
	.loc 1 317 0
	.cfi_startproc
.LVL80:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 321 0
	orl	$-1, %edx
	.loc 1 317 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 317 0
	movl	8(%ebp), %eax
	.loc 1 320 0
	movl	mqtt_client, %ebx
	.loc 1 317 0
	movl	16(%ebp), %esi
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 320 0
	testl	%ebx, %ebx
	je	.L107
	.loc 1 322 0
	leal	-48(%ebp), %edx
	movl	$5, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 324 0
	movl	12(%ebp), %eax
	.loc 1 327 0
	movl	%esi, -32(%ebp)
	.loc 1 324 0
	movb	%al, -46(%ebp)
	.loc 1 328 0
	movl	20(%ebp), %eax
	.loc 1 330 0
	pushl	%ecx
	pushl	%edx
	pushl	-60(%ebp)
	pushl	%ebx
	.loc 1 328 0
	movw	%ax, -40(%ebp)
	.loc 1 330 0
	call	IOT_MQTT_Publish
.LVL81:
	addl	$16, %esp
	.loc 1 335 0
	xorl	%edx, %edx
	.loc 1 330 0
	testl	%eax, %eax
	jns	.L107
	.loc 1 331 0
	pushl	%eax
	pushl	$331
	pushl	$__func__.3965
	pushl	$.LC13
	call	printf
.LVL82:
	movl	$.LC14, (%esp)
	call	puts
.LVL83:
	movl	$.LC15, (%esp)
	call	printf
.LVL84:
	.loc 1 332 0
	addl	$16, %esp
	orl	$-1, %edx
.L107:
	.loc 1 336 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L108
	call	__stack_chk_fail
.LVL85:
.L108:
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
	.size	mqtt_publish, .-mqtt_publish
	.section	.text.unlikely.mqtt_publish
.LCOLDE16:
	.section	.text.mqtt_publish
.LHOTE16:
	.section	.rodata.__func__.3965,"a",@progbits
	.align 4
	.type	__func__.3965, @object
	.size	__func__.3965, 13
__func__.3965:
	.string	"mqtt_publish"
	.section	.rodata.__FUNCTION__.3952,"a",@progbits
	.align 4
	.type	__FUNCTION__.3952, @object
	.size	__FUNCTION__.3952, 17
__FUNCTION__.3952:
	.string	"mqtt_unsubscribe"
	.section	.rodata.__FUNCTION__.3942,"a",@progbits
	.align 4
	.type	__FUNCTION__.3942, @object
	.size	__FUNCTION__.3942, 15
__FUNCTION__.3942:
	.string	"mqtt_subscribe"
	.section	.rodata.__func__.3941,"a",@progbits
	.align 4
	.type	__func__.3941, @object
	.size	__func__.3941, 15
__func__.3941:
	.string	"mqtt_subscribe"
	.section	.rodata.__func__.3899,"a",@progbits
	.align 4
	.type	__func__.3899, @object
	.size	__func__.3899, 18
__func__.3899:
	.string	"mqtt_set_event_cb"
	.section	.rodata.__func__.3878,"a",@progbits
	.align 4
	.type	__func__.3878, @object
	.size	__func__.3878, 19
__func__.3878:
	.string	"mqtt_init_instance"
	.section	.bss.first_topic,"aw",@nobits
	.align 4
	.type	first_topic, @object
	.size	first_topic, 4
first_topic:
	.zero	4
	.section	.bss.first_event,"aw",@nobits
	.align 4
	.type	first_event, @object
	.size	first_event, 4
first_event:
	.zero	4
	.section	.bss.mqtt_wbuf,"aw",@nobits
	.align 4
	.type	mqtt_wbuf, @object
	.size	mqtt_wbuf, 4
mqtt_wbuf:
	.zero	4
	.section	.bss.mqtt_rbuf,"aw",@nobits
	.align 4
	.type	mqtt_rbuf, @object
	.size	mqtt_rbuf, 4
mqtt_rbuf:
	.zero	4
	.section	.bss.mqtt_client,"aw",@nobits
	.align 4
	.type	mqtt_client, @object
	.size	mqtt_client, 4
mqtt_client:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.event_handle
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.file 5 "./framework/protocol/linkkit/iotkit/base/utils/iot_export.h"
	.file 6 "./framework/protocol/linkkit/iotkit/base/utils/exports/iot_export_errno.h"
	.file 7 "framework/connectivity/mqtt/iot_export_mqtt.h"
	.file 8 "framework/connectivity/mqtt/mqtt_instance.h"
	.file 9 "./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-utils.h"
	.file 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1161
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF324
	.byte	0xc
	.long	.LASF325
	.long	.LASF326
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
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
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x2b
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
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
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x93
	.uleb128 0x6
	.byte	0x4
	.long	0xaf
	.uleb128 0x7
	.long	0x93
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x24
	.long	0x45
	.uleb128 0x3
	.long	.LASF17
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x22
	.long	0x10a
	.uleb128 0x9
	.long	.LASF18
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.uleb128 0x9
	.long	.LASF20
	.byte	0x2
	.uleb128 0x9
	.long	.LASF21
	.byte	0x3
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0x1d
	.long	0x13f
	.uleb128 0x9
	.long	.LASF26
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.uleb128 0x9
	.long	.LASF29
	.byte	0x3
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.value	0x48c
	.byte	0x5
	.byte	0x3e
	.long	0x194
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0x3f
	.long	0xbf
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.byte	0x40
	.long	0x194
	.byte	0x2
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.byte	0x41
	.long	0x1a4
	.byte	0x83
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.byte	0x42
	.long	0x1b5
	.value	0x184
	.uleb128 0xc
	.long	.LASF36
	.byte	0x5
	.byte	0x43
	.long	0x1a4
	.value	0x385
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.byte	0x44
	.long	0xa9
	.value	0x488
	.byte	0
	.uleb128 0xd
	.long	0x93
	.long	0x1a4
	.uleb128 0xe
	.long	0x9a
	.byte	0x80
	.byte	0
	.uleb128 0xd
	.long	0x93
	.long	0x1b5
	.uleb128 0xf
	.long	0x9a
	.value	0x100
	.byte	0
	.uleb128 0xd
	.long	0x93
	.long	0x1c6
	.uleb128 0xf
	.long	0x9a
	.value	0x200
	.byte	0
	.uleb128 0x3
	.long	.LASF38
	.byte	0x5
	.byte	0x49
	.long	0x1d1
	.uleb128 0x6
	.byte	0x4
	.long	0x13f
	.uleb128 0x8
	.long	.LASF39
	.byte	0x4
	.long	0x7e
	.byte	0x6
	.byte	0x17
	.long	0x6c4
	.uleb128 0x10
	.long	.LASF40
	.sleb128 -311
	.uleb128 0x10
	.long	.LASF41
	.sleb128 -310
	.uleb128 0x10
	.long	.LASF42
	.sleb128 -309
	.uleb128 0x10
	.long	.LASF43
	.sleb128 -308
	.uleb128 0x10
	.long	.LASF44
	.sleb128 -307
	.uleb128 0x10
	.long	.LASF45
	.sleb128 -306
	.uleb128 0x10
	.long	.LASF46
	.sleb128 -305
	.uleb128 0x10
	.long	.LASF47
	.sleb128 -304
	.uleb128 0x10
	.long	.LASF48
	.sleb128 -303
	.uleb128 0x10
	.long	.LASF49
	.sleb128 -302
	.uleb128 0x10
	.long	.LASF50
	.sleb128 -301
	.uleb128 0x10
	.long	.LASF51
	.sleb128 -300
	.uleb128 0x10
	.long	.LASF52
	.sleb128 -43
	.uleb128 0x10
	.long	.LASF53
	.sleb128 -42
	.uleb128 0x10
	.long	.LASF54
	.sleb128 -41
	.uleb128 0x10
	.long	.LASF55
	.sleb128 -40
	.uleb128 0x10
	.long	.LASF56
	.sleb128 -39
	.uleb128 0x10
	.long	.LASF57
	.sleb128 -38
	.uleb128 0x10
	.long	.LASF58
	.sleb128 -37
	.uleb128 0x10
	.long	.LASF59
	.sleb128 -36
	.uleb128 0x10
	.long	.LASF60
	.sleb128 -35
	.uleb128 0x10
	.long	.LASF61
	.sleb128 -34
	.uleb128 0x10
	.long	.LASF62
	.sleb128 -33
	.uleb128 0x10
	.long	.LASF63
	.sleb128 -32
	.uleb128 0x10
	.long	.LASF64
	.sleb128 -31
	.uleb128 0x10
	.long	.LASF65
	.sleb128 -30
	.uleb128 0x10
	.long	.LASF66
	.sleb128 -29
	.uleb128 0x10
	.long	.LASF67
	.sleb128 -28
	.uleb128 0x10
	.long	.LASF68
	.sleb128 -27
	.uleb128 0x10
	.long	.LASF69
	.sleb128 -26
	.uleb128 0x10
	.long	.LASF70
	.sleb128 -25
	.uleb128 0x10
	.long	.LASF71
	.sleb128 -24
	.uleb128 0x10
	.long	.LASF72
	.sleb128 -23
	.uleb128 0x10
	.long	.LASF73
	.sleb128 -22
	.uleb128 0x10
	.long	.LASF74
	.sleb128 -21
	.uleb128 0x10
	.long	.LASF75
	.sleb128 -20
	.uleb128 0x10
	.long	.LASF76
	.sleb128 -19
	.uleb128 0x10
	.long	.LASF77
	.sleb128 -18
	.uleb128 0x10
	.long	.LASF78
	.sleb128 -17
	.uleb128 0x10
	.long	.LASF79
	.sleb128 -16
	.uleb128 0x10
	.long	.LASF80
	.sleb128 -15
	.uleb128 0x10
	.long	.LASF81
	.sleb128 -14
	.uleb128 0x10
	.long	.LASF82
	.sleb128 -13
	.uleb128 0x10
	.long	.LASF83
	.sleb128 -2008
	.uleb128 0x10
	.long	.LASF84
	.sleb128 -2007
	.uleb128 0x10
	.long	.LASF85
	.sleb128 -2006
	.uleb128 0x10
	.long	.LASF86
	.sleb128 -2005
	.uleb128 0x10
	.long	.LASF87
	.sleb128 -2004
	.uleb128 0x10
	.long	.LASF88
	.sleb128 -2003
	.uleb128 0x10
	.long	.LASF89
	.sleb128 -2002
	.uleb128 0x10
	.long	.LASF90
	.sleb128 -2001
	.uleb128 0x10
	.long	.LASF91
	.sleb128 -2000
	.uleb128 0x10
	.long	.LASF92
	.sleb128 -1501
	.uleb128 0x10
	.long	.LASF93
	.sleb128 -1500
	.uleb128 0x10
	.long	.LASF94
	.sleb128 -1499
	.uleb128 0x10
	.long	.LASF95
	.sleb128 -1498
	.uleb128 0x10
	.long	.LASF96
	.sleb128 -1497
	.uleb128 0x10
	.long	.LASF97
	.sleb128 -1496
	.uleb128 0x10
	.long	.LASF98
	.sleb128 -1495
	.uleb128 0x10
	.long	.LASF99
	.sleb128 -1494
	.uleb128 0x10
	.long	.LASF100
	.sleb128 -1493
	.uleb128 0x10
	.long	.LASF101
	.sleb128 -1492
	.uleb128 0x10
	.long	.LASF102
	.sleb128 -1491
	.uleb128 0x10
	.long	.LASF103
	.sleb128 -1490
	.uleb128 0x10
	.long	.LASF104
	.sleb128 -1489
	.uleb128 0x10
	.long	.LASF105
	.sleb128 -1488
	.uleb128 0x10
	.long	.LASF106
	.sleb128 -1487
	.uleb128 0x10
	.long	.LASF107
	.sleb128 -1486
	.uleb128 0x10
	.long	.LASF108
	.sleb128 -1485
	.uleb128 0x10
	.long	.LASF109
	.sleb128 -1484
	.uleb128 0x10
	.long	.LASF110
	.sleb128 -1483
	.uleb128 0x10
	.long	.LASF111
	.sleb128 -1482
	.uleb128 0x10
	.long	.LASF112
	.sleb128 -1481
	.uleb128 0x10
	.long	.LASF113
	.sleb128 -1480
	.uleb128 0x10
	.long	.LASF114
	.sleb128 -1479
	.uleb128 0x10
	.long	.LASF115
	.sleb128 -6099
	.uleb128 0x10
	.long	.LASF116
	.sleb128 -6100
	.uleb128 0x10
	.long	.LASF117
	.sleb128 -6101
	.uleb128 0x10
	.long	.LASF118
	.sleb128 -6102
	.uleb128 0x10
	.long	.LASF119
	.sleb128 -6103
	.uleb128 0x10
	.long	.LASF120
	.sleb128 -6104
	.uleb128 0x10
	.long	.LASF121
	.sleb128 -6105
	.uleb128 0x10
	.long	.LASF122
	.sleb128 -6106
	.uleb128 0x10
	.long	.LASF123
	.sleb128 -6107
	.uleb128 0x10
	.long	.LASF124
	.sleb128 -6108
	.uleb128 0x10
	.long	.LASF125
	.sleb128 -6109
	.uleb128 0x10
	.long	.LASF126
	.sleb128 -6150
	.uleb128 0x10
	.long	.LASF127
	.sleb128 -6151
	.uleb128 0x10
	.long	.LASF128
	.sleb128 -6200
	.uleb128 0x10
	.long	.LASF129
	.sleb128 -6201
	.uleb128 0x10
	.long	.LASF130
	.sleb128 -6202
	.uleb128 0x10
	.long	.LASF131
	.sleb128 -6203
	.uleb128 0x10
	.long	.LASF132
	.sleb128 -6204
	.uleb128 0x10
	.long	.LASF133
	.sleb128 -6205
	.uleb128 0x10
	.long	.LASF134
	.sleb128 -6206
	.uleb128 0x10
	.long	.LASF135
	.sleb128 -6207
	.uleb128 0x10
	.long	.LASF136
	.sleb128 -6208
	.uleb128 0x10
	.long	.LASF137
	.sleb128 -6209
	.uleb128 0x10
	.long	.LASF138
	.sleb128 -6250
	.uleb128 0x10
	.long	.LASF139
	.sleb128 -6251
	.uleb128 0x10
	.long	.LASF140
	.sleb128 -6252
	.uleb128 0x10
	.long	.LASF141
	.sleb128 -6253
	.uleb128 0x10
	.long	.LASF142
	.sleb128 -6254
	.uleb128 0x10
	.long	.LASF143
	.sleb128 -6255
	.uleb128 0x10
	.long	.LASF144
	.sleb128 -6256
	.uleb128 0x10
	.long	.LASF145
	.sleb128 -6257
	.uleb128 0x10
	.long	.LASF146
	.sleb128 -6258
	.uleb128 0x10
	.long	.LASF147
	.sleb128 -6259
	.uleb128 0x10
	.long	.LASF148
	.sleb128 -6260
	.uleb128 0x10
	.long	.LASF149
	.sleb128 -6261
	.uleb128 0x10
	.long	.LASF150
	.sleb128 -6262
	.uleb128 0x10
	.long	.LASF151
	.sleb128 -6263
	.uleb128 0x10
	.long	.LASF152
	.sleb128 -6264
	.uleb128 0x10
	.long	.LASF153
	.sleb128 -6265
	.uleb128 0x10
	.long	.LASF154
	.sleb128 -6266
	.uleb128 0x10
	.long	.LASF155
	.sleb128 -6267
	.uleb128 0x10
	.long	.LASF156
	.sleb128 -6268
	.uleb128 0x10
	.long	.LASF157
	.sleb128 -6269
	.uleb128 0x10
	.long	.LASF158
	.sleb128 -6270
	.uleb128 0x10
	.long	.LASF159
	.sleb128 -6271
	.uleb128 0x10
	.long	.LASF160
	.sleb128 -6272
	.uleb128 0x10
	.long	.LASF161
	.sleb128 -6273
	.uleb128 0x10
	.long	.LASF162
	.sleb128 -6274
	.uleb128 0x10
	.long	.LASF163
	.sleb128 -6275
	.uleb128 0x10
	.long	.LASF164
	.sleb128 -6276
	.uleb128 0x10
	.long	.LASF165
	.sleb128 -6277
	.uleb128 0x10
	.long	.LASF166
	.sleb128 -6278
	.uleb128 0x10
	.long	.LASF167
	.sleb128 -6279
	.uleb128 0x10
	.long	.LASF168
	.sleb128 -6280
	.uleb128 0x10
	.long	.LASF169
	.sleb128 -6281
	.uleb128 0x10
	.long	.LASF170
	.sleb128 -6282
	.uleb128 0x10
	.long	.LASF171
	.sleb128 -6283
	.uleb128 0x10
	.long	.LASF172
	.sleb128 -6284
	.uleb128 0x10
	.long	.LASF173
	.sleb128 -6285
	.uleb128 0x10
	.long	.LASF174
	.sleb128 -6300
	.uleb128 0x10
	.long	.LASF175
	.sleb128 -6301
	.uleb128 0x10
	.long	.LASF176
	.sleb128 -6302
	.uleb128 0x10
	.long	.LASF177
	.sleb128 -6303
	.uleb128 0x10
	.long	.LASF178
	.sleb128 -6304
	.uleb128 0x10
	.long	.LASF179
	.sleb128 -6305
	.uleb128 0x10
	.long	.LASF180
	.sleb128 -6306
	.uleb128 0x10
	.long	.LASF181
	.sleb128 -6307
	.uleb128 0x10
	.long	.LASF182
	.sleb128 -6308
	.uleb128 0x10
	.long	.LASF183
	.sleb128 -6309
	.uleb128 0x10
	.long	.LASF184
	.sleb128 -6310
	.uleb128 0x10
	.long	.LASF185
	.sleb128 -6311
	.uleb128 0x10
	.long	.LASF186
	.sleb128 -6312
	.uleb128 0x10
	.long	.LASF187
	.sleb128 -6313
	.uleb128 0x10
	.long	.LASF188
	.sleb128 -6314
	.uleb128 0x10
	.long	.LASF189
	.sleb128 -6315
	.uleb128 0x10
	.long	.LASF190
	.sleb128 -6316
	.uleb128 0x10
	.long	.LASF191
	.sleb128 -6317
	.uleb128 0x10
	.long	.LASF192
	.sleb128 -6318
	.uleb128 0x10
	.long	.LASF193
	.sleb128 -6319
	.uleb128 0x10
	.long	.LASF194
	.sleb128 -6320
	.uleb128 0x10
	.long	.LASF195
	.sleb128 -6321
	.uleb128 0x10
	.long	.LASF196
	.sleb128 -6321
	.uleb128 0x10
	.long	.LASF197
	.sleb128 -6322
	.uleb128 0x10
	.long	.LASF198
	.sleb128 -6350
	.uleb128 0x10
	.long	.LASF199
	.sleb128 -6351
	.uleb128 0x10
	.long	.LASF200
	.sleb128 -6352
	.uleb128 0x10
	.long	.LASF201
	.sleb128 -6353
	.uleb128 0x10
	.long	.LASF202
	.sleb128 -6400
	.uleb128 0x10
	.long	.LASF203
	.sleb128 -6401
	.uleb128 0x10
	.long	.LASF204
	.sleb128 -6402
	.uleb128 0x10
	.long	.LASF205
	.sleb128 -6450
	.uleb128 0x10
	.long	.LASF206
	.sleb128 -6550
	.uleb128 0x10
	.long	.LASF207
	.sleb128 -1016
	.uleb128 0x10
	.long	.LASF208
	.sleb128 -1015
	.uleb128 0x10
	.long	.LASF209
	.sleb128 -1014
	.uleb128 0x10
	.long	.LASF210
	.sleb128 -1013
	.uleb128 0x10
	.long	.LASF211
	.sleb128 -12
	.uleb128 0x10
	.long	.LASF212
	.sleb128 -11
	.uleb128 0x10
	.long	.LASF213
	.sleb128 -10
	.uleb128 0x10
	.long	.LASF214
	.sleb128 -9
	.uleb128 0x10
	.long	.LASF215
	.sleb128 -8
	.uleb128 0x10
	.long	.LASF216
	.sleb128 -7
	.uleb128 0x10
	.long	.LASF217
	.sleb128 -6
	.uleb128 0x10
	.long	.LASF218
	.sleb128 -5
	.uleb128 0x10
	.long	.LASF219
	.sleb128 -4
	.uleb128 0x10
	.long	.LASF220
	.sleb128 -3
	.uleb128 0x10
	.long	.LASF221
	.sleb128 -2
	.uleb128 0x10
	.long	.LASF222
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF223
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.long	0x85
	.byte	0x7
	.byte	0x18
	.long	0x6e3
	.uleb128 0x9
	.long	.LASF224
	.byte	0
	.uleb128 0x9
	.long	.LASF225
	.byte	0x1
	.uleb128 0x9
	.long	.LASF226
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.long	0x85
	.byte	0x7
	.byte	0x1e
	.long	0x744
	.uleb128 0x9
	.long	.LASF227
	.byte	0
	.uleb128 0x9
	.long	.LASF228
	.byte	0x1
	.uleb128 0x9
	.long	.LASF229
	.byte	0x2
	.uleb128 0x9
	.long	.LASF230
	.byte	0x3
	.uleb128 0x9
	.long	.LASF231
	.byte	0x4
	.uleb128 0x9
	.long	.LASF232
	.byte	0x5
	.uleb128 0x9
	.long	.LASF233
	.byte	0x6
	.uleb128 0x9
	.long	.LASF234
	.byte	0x7
	.uleb128 0x9
	.long	.LASF235
	.byte	0x8
	.uleb128 0x9
	.long	.LASF236
	.byte	0x9
	.uleb128 0x9
	.long	.LASF237
	.byte	0xa
	.uleb128 0x9
	.long	.LASF238
	.byte	0xb
	.uleb128 0x9
	.long	.LASF239
	.byte	0xc
	.uleb128 0x9
	.long	.LASF240
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF241
	.byte	0x7
	.byte	0x49
	.long	0x6e3
	.uleb128 0x12
	.byte	0x14
	.byte	0x7
	.byte	0x4c
	.long	0x7b8
	.uleb128 0xb
	.long	.LASF242
	.byte	0x7
	.byte	0x4d
	.long	0xbf
	.byte	0
	.uleb128 0x13
	.string	"qos"
	.byte	0x7
	.byte	0x4e
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.string	"dup"
	.byte	0x7
	.byte	0x4f
	.long	0xb4
	.byte	0x3
	.uleb128 0xb
	.long	.LASF243
	.byte	0x7
	.byte	0x50
	.long	0xb4
	.byte	0x4
	.uleb128 0xb
	.long	.LASF244
	.byte	0x7
	.byte	0x51
	.long	0xbf
	.byte	0x6
	.uleb128 0xb
	.long	.LASF245
	.byte	0x7
	.byte	0x52
	.long	0xbf
	.byte	0x8
	.uleb128 0xb
	.long	.LASF246
	.byte	0x7
	.byte	0x53
	.long	0xa9
	.byte	0xc
	.uleb128 0xb
	.long	.LASF247
	.byte	0x7
	.byte	0x54
	.long	0xa9
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.long	.LASF248
	.byte	0x7
	.byte	0x55
	.long	0x74f
	.uleb128 0x3
	.long	.LASF249
	.byte	0x7
	.byte	0x55
	.long	0x7ce
	.uleb128 0x6
	.byte	0x4
	.long	0x74f
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.byte	0x57
	.long	0x7f5
	.uleb128 0xb
	.long	.LASF250
	.byte	0x7
	.byte	0x5a
	.long	0x744
	.byte	0
	.uleb128 0x13
	.string	"msg"
	.byte	0x7
	.byte	0x73
	.long	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF251
	.byte	0x7
	.byte	0x74
	.long	0x800
	.uleb128 0x6
	.byte	0x4
	.long	0x7d4
	.uleb128 0x3
	.long	.LASF252
	.byte	0x7
	.byte	0x81
	.long	0x811
	.uleb128 0x6
	.byte	0x4
	.long	0x817
	.uleb128 0x14
	.long	0x82c
	.uleb128 0x15
	.long	0xa1
	.uleb128 0x15
	.long	0xa1
	.uleb128 0x15
	.long	0x7f5
	.byte	0
	.uleb128 0x12
	.byte	0x8
	.byte	0x7
	.byte	0x85
	.long	0x84d
	.uleb128 0xb
	.long	.LASF253
	.byte	0x7
	.byte	0x86
	.long	0x806
	.byte	0
	.uleb128 0xb
	.long	.LASF254
	.byte	0x7
	.byte	0x87
	.long	0xa1
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF255
	.byte	0x7
	.byte	0x88
	.long	0x82c
	.uleb128 0x12
	.byte	0x3c
	.byte	0x7
	.byte	0x8c
	.long	0x909
	.uleb128 0xb
	.long	.LASF32
	.byte	0x7
	.byte	0x8e
	.long	0xbf
	.byte	0
	.uleb128 0xb
	.long	.LASF256
	.byte	0x7
	.byte	0x8f
	.long	0xa9
	.byte	0x4
	.uleb128 0xb
	.long	.LASF34
	.byte	0x7
	.byte	0x90
	.long	0xa9
	.byte	0x8
	.uleb128 0xb
	.long	.LASF35
	.byte	0x7
	.byte	0x91
	.long	0xa9
	.byte	0xc
	.uleb128 0xb
	.long	.LASF36
	.byte	0x7
	.byte	0x92
	.long	0xa9
	.byte	0x10
	.uleb128 0xb
	.long	.LASF37
	.byte	0x7
	.byte	0x98
	.long	0xa9
	.byte	0x14
	.uleb128 0xb
	.long	.LASF257
	.byte	0x7
	.byte	0x9a
	.long	0xb4
	.byte	0x18
	.uleb128 0xb
	.long	.LASF258
	.byte	0x7
	.byte	0x9b
	.long	0xca
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF259
	.byte	0x7
	.byte	0x9c
	.long	0xca
	.byte	0x20
	.uleb128 0xb
	.long	.LASF260
	.byte	0x7
	.byte	0x9e
	.long	0xa3
	.byte	0x24
	.uleb128 0xb
	.long	.LASF261
	.byte	0x7
	.byte	0x9f
	.long	0xca
	.byte	0x28
	.uleb128 0xb
	.long	.LASF262
	.byte	0x7
	.byte	0xa0
	.long	0xa3
	.byte	0x2c
	.uleb128 0xb
	.long	.LASF263
	.byte	0x7
	.byte	0xa1
	.long	0xca
	.byte	0x30
	.uleb128 0xb
	.long	.LASF264
	.byte	0x7
	.byte	0xa3
	.long	0x84d
	.byte	0x34
	.byte	0
	.uleb128 0x3
	.long	.LASF265
	.byte	0x7
	.byte	0xa5
	.long	0x858
	.uleb128 0x11
	.byte	0x4
	.long	0x85
	.byte	0x8
	.byte	0x4
	.long	0x92d
	.uleb128 0x9
	.long	.LASF266
	.byte	0
	.uleb128 0x9
	.long	.LASF267
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.long	.LASF271
	.byte	0xc
	.byte	0x1
	.byte	0x1c
	.long	0x95e
	.uleb128 0xb
	.long	.LASF268
	.byte	0x1
	.byte	0x1d
	.long	0x96e
	.byte	0
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0x1e
	.long	0xa1
	.byte	0x4
	.uleb128 0xb
	.long	.LASF269
	.byte	0x1
	.byte	0x20
	.long	0x974
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x96e
	.uleb128 0x15
	.long	0x7e
	.uleb128 0x15
	.long	0xa1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x95e
	.uleb128 0x6
	.byte	0x4
	.long	0x92d
	.uleb128 0x3
	.long	.LASF270
	.byte	0x1
	.byte	0x21
	.long	0x92d
	.uleb128 0x16
	.long	.LASF272
	.byte	0x10
	.byte	0x1
	.byte	0xd8
	.long	0x9c1
	.uleb128 0xb
	.long	.LASF273
	.byte	0x1
	.byte	0xd9
	.long	0xa3
	.byte	0
	.uleb128 0x13
	.string	"cb"
	.byte	0x1
	.byte	0xdb
	.long	0x9e0
	.byte	0x4
	.uleb128 0x13
	.string	"ctx"
	.byte	0x1
	.byte	0xdc
	.long	0xa1
	.byte	0x8
	.uleb128 0xb
	.long	.LASF269
	.byte	0x1
	.byte	0xde
	.long	0x9e6
	.byte	0xc
	.byte	0
	.uleb128 0x14
	.long	0x9e0
	.uleb128 0x15
	.long	0xa3
	.uleb128 0x15
	.long	0x7e
	.uleb128 0x15
	.long	0xa1
	.uleb128 0x15
	.long	0x7e
	.uleb128 0x15
	.long	0xa1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9c1
	.uleb128 0x6
	.byte	0x4
	.long	0x985
	.uleb128 0x3
	.long	.LASF274
	.byte	0x1
	.byte	0xdf
	.long	0x985
	.uleb128 0x17
	.long	.LASF277
	.byte	0x1
	.byte	0x3a
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0xa54
	.uleb128 0x18
	.long	.LASF254
	.byte	0x1
	.byte	0x3a
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF275
	.byte	0x1
	.byte	0x3a
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0x3a
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1a
	.long	.LASF276
	.byte	0x1
	.byte	0x3c
	.long	0x7e
	.long	.LLST0
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0x49
	.long	0xa54
	.long	.LLST1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x97a
	.uleb128 0x17
	.long	.LASF278
	.byte	0x1
	.byte	0xf8
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xab6
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0xf8
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF275
	.byte	0x1
	.byte	0xf8
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x19
	.string	"msg"
	.byte	0x1
	.byte	0xf8
	.long	0x7f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1b
	.string	"t"
	.byte	0x1
	.byte	0xfa
	.long	0xab6
	.long	.LLST2
	.uleb128 0x1a
	.long	.LASF279
	.byte	0x1
	.byte	0xfb
	.long	0x7c3
	.long	.LLST3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9ec
	.uleb128 0x1c
	.long	.LASF327
	.byte	0x1
	.byte	0x51
	.long	0xa1
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF328
	.byte	0x1
	.byte	0x56
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.long	.LASF281
	.byte	0x1
	.byte	0x5b
	.long	0x7e
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xb0b
	.uleb128 0x1f
	.long	.LASF280
	.byte	0x1
	.byte	0x5b
	.long	0xa1
	.long	.LLST4
	.byte	0
	.uleb128 0x20
	.long	.LASF292
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.long	0xb36
	.uleb128 0x21
	.string	"ev"
	.byte	0x1
	.byte	0x2b
	.long	0xa54
	.uleb128 0x22
	.string	"ep"
	.byte	0x1
	.byte	0x2d
	.long	0xb36
	.uleb128 0x22
	.string	"e1"
	.byte	0x1
	.byte	0x2d
	.long	0xa54
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xa54
	.uleb128 0x1e
	.long	.LASF282
	.byte	0x1
	.byte	0xa2
	.long	0x7e
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd9
	.uleb128 0x23
	.long	.LASF297
	.long	0xbe9
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0xb5
	.long	0xa54
	.long	.LLST5
	.uleb128 0x1a
	.long	.LASF283
	.byte	0x1
	.byte	0xb5
	.long	0xa54
	.long	.LLST6
	.uleb128 0x24
	.long	0xb0b
	.long	.LBB4
	.long	.LBE4-.LBB4
	.byte	0x1
	.byte	0xb8
	.long	0xbb4
	.uleb128 0x25
	.long	0xb17
	.long	.LLST7
	.uleb128 0x26
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x27
	.long	0xb21
	.long	.LLST8
	.uleb128 0x27
	.long	0xb2b
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LVL14
	.long	0x10b0
	.uleb128 0x28
	.long	.LVL15
	.long	0x10b0
	.uleb128 0x28
	.long	.LVL16
	.long	0x10bb
	.uleb128 0x28
	.long	.LVL26
	.long	0x10b0
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0xbe9
	.uleb128 0xe
	.long	0x9a
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.long	0xbd9
	.uleb128 0x1e
	.long	.LASF284
	.byte	0x1
	.byte	0x6a
	.long	0x7e
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xccf
	.uleb128 0x18
	.long	.LASF285
	.byte	0x1
	.byte	0x6a
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LASF286
	.byte	0x1
	.byte	0x6a
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF287
	.byte	0x1
	.byte	0x6a
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x18
	.long	.LASF288
	.byte	0x1
	.byte	0x6a
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x29
	.long	.LASF289
	.byte	0x1
	.byte	0x72
	.long	0x1c6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x29
	.long	.LASF290
	.byte	0x1
	.byte	0x73
	.long	0x909
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0x75
	.long	0x7e
	.long	.LLST10
	.uleb128 0x2a
	.long	.LASF291
	.long	0xcdf
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3878
	.uleb128 0x2b
	.long	.LASF329
	.byte	0x1
	.byte	0x9d
	.long	.LDL1
	.uleb128 0x28
	.long	.LVL29
	.long	0x10c6
	.uleb128 0x28
	.long	.LVL30
	.long	0x10d1
	.uleb128 0x28
	.long	.LVL31
	.long	0x10dc
	.uleb128 0x28
	.long	.LVL33
	.long	0x10e7
	.uleb128 0x28
	.long	.LVL34
	.long	0x10e7
	.uleb128 0x28
	.long	.LVL35
	.long	0xb3c
	.uleb128 0x28
	.long	.LVL36
	.long	0x10f2
	.uleb128 0x28
	.long	.LVL38
	.long	0x10fd
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0xcdf
	.uleb128 0xe
	.long	0x9a
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.long	0xccf
	.uleb128 0x20
	.long	.LASF293
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.long	0xcfb
	.uleb128 0x21
	.string	"ev"
	.byte	0x1
	.byte	0x25
	.long	0xa54
	.byte	0
	.uleb128 0x1e
	.long	.LASF294
	.byte	0x1
	.byte	0xc3
	.long	0x7e
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xd74
	.uleb128 0x18
	.long	.LASF268
	.byte	0x1
	.byte	0xc3
	.long	0x96e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.string	"ctx"
	.byte	0x1
	.byte	0xc3
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.string	"ev"
	.byte	0x1
	.byte	0xcb
	.long	0xa54
	.long	.LLST11
	.uleb128 0x2a
	.long	.LASF291
	.long	0xd84
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3899
	.uleb128 0x24
	.long	0xce4
	.long	.LBB8
	.long	.LBE8-.LBB8
	.byte	0x1
	.byte	0xd3
	.long	0xd6a
	.uleb128 0x25
	.long	0xcf0
	.long	.LLST12
	.byte	0
	.uleb128 0x28
	.long	.LVL40
	.long	0x10e7
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0xd84
	.uleb128 0xe
	.long	0x9a
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.long	0xd74
	.uleb128 0x20
	.long	.LASF295
	.byte	0x1
	.byte	0xe3
	.byte	0x1
	.long	0xd9f
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0xe3
	.long	0xab6
	.byte	0
	.uleb128 0x2c
	.long	.LASF296
	.byte	0x1
	.value	0x103
	.long	0x7e
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xe80
	.uleb128 0x2d
	.long	.LASF273
	.byte	0x1
	.value	0x103
	.long	0xa3
	.long	.LLST13
	.uleb128 0x2e
	.string	"cb"
	.byte	0x1
	.value	0x103
	.long	0x9e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2e
	.string	"ctx"
	.byte	0x1
	.value	0x103
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x10b
	.long	0xab6
	.long	.LLST14
	.uleb128 0x2a
	.long	.LASF291
	.long	0xe90
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3941
	.uleb128 0x2a
	.long	.LASF297
	.long	0xe95
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3942
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.value	0x11a
	.long	0x7e
	.long	.LLST15
	.uleb128 0x30
	.long	0xd89
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.value	0x121
	.long	0xe40
	.uleb128 0x25
	.long	0xd95
	.long	.LLST16
	.byte	0
	.uleb128 0x28
	.long	.LVL46
	.long	0x10e7
	.uleb128 0x28
	.long	.LVL50
	.long	0x10e7
	.uleb128 0x28
	.long	.LVL51
	.long	0x10b0
	.uleb128 0x28
	.long	.LVL54
	.long	0x1106
	.uleb128 0x28
	.long	.LVL55
	.long	0x1111
	.uleb128 0x28
	.long	.LVL57
	.long	0x111c
	.uleb128 0x28
	.long	.LVL58
	.long	0x10b0
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0xe90
	.uleb128 0xe
	.long	0x9a
	.byte	0xe
	.byte	0
	.uleb128 0x7
	.long	0xe80
	.uleb128 0x7
	.long	0xe80
	.uleb128 0x20
	.long	.LASF298
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0xec4
	.uleb128 0x21
	.string	"t"
	.byte	0x1
	.byte	0xe9
	.long	0xab6
	.uleb128 0x22
	.string	"tp"
	.byte	0x1
	.byte	0xeb
	.long	0xec4
	.uleb128 0x22
	.string	"t1"
	.byte	0x1
	.byte	0xeb
	.long	0xab6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xab6
	.uleb128 0x2c
	.long	.LASF299
	.byte	0x1
	.value	0x126
	.long	0x7e
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xf84
	.uleb128 0x31
	.long	.LASF273
	.byte	0x1
	.value	0x126
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"t"
	.byte	0x1
	.value	0x128
	.long	0xab6
	.long	.LLST17
	.uleb128 0x32
	.long	.LASF300
	.byte	0x1
	.value	0x128
	.long	0xab6
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF297
	.long	0xf94
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3952
	.uleb128 0x33
	.long	0xe9a
	.long	.LBB16
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x132
	.long	0xf56
	.uleb128 0x25
	.long	0xea6
	.long	.LLST19
	.uleb128 0x34
	.long	.Ldebug_ranges0+0
	.uleb128 0x27
	.long	0xeaf
	.long	.LLST20
	.uleb128 0x27
	.long	0xeb9
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LVL65
	.long	0x1127
	.uleb128 0x28
	.long	.LVL66
	.long	0x1132
	.uleb128 0x28
	.long	.LVL74
	.long	0x111c
	.uleb128 0x28
	.long	.LVL75
	.long	0x10b0
	.uleb128 0x28
	.long	.LVL76
	.long	0x10b0
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0xf94
	.uleb128 0xe
	.long	0x9a
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	0xf84
	.uleb128 0x2c
	.long	.LASF301
	.byte	0x1
	.value	0x13c
	.long	0x7e
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x103b
	.uleb128 0x31
	.long	.LASF273
	.byte	0x1
	.value	0x13c
	.long	0xa3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.string	"qos"
	.byte	0x1
	.value	0x13c
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	.LASF302
	.byte	0x1
	.value	0x13c
	.long	0xa1
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.value	0x13c
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x35
	.long	.LASF303
	.byte	0x1
	.value	0x13e
	.long	0x7b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.long	.LASF291
	.long	0x104b
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3965
	.uleb128 0x28
	.long	.LVL81
	.long	0x113e
	.uleb128 0x28
	.long	.LVL82
	.long	0x114a
	.uleb128 0x28
	.long	.LVL83
	.long	0x1155
	.uleb128 0x28
	.long	.LVL84
	.long	0x114a
	.uleb128 0x28
	.long	.LVL85
	.long	0x10fd
	.byte	0
	.uleb128 0xd
	.long	0xaf
	.long	0x104b
	.uleb128 0xe
	.long	0x9a
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x103b
	.uleb128 0x29
	.long	.LASF304
	.byte	0x1
	.byte	0x15
	.long	0xa1
	.uleb128 0x5
	.byte	0x3
	.long	mqtt_client
	.uleb128 0x29
	.long	.LASF305
	.byte	0x1
	.byte	0x17
	.long	0xa1
	.uleb128 0x5
	.byte	0x3
	.long	mqtt_rbuf
	.uleb128 0x29
	.long	.LASF306
	.byte	0x1
	.byte	0x18
	.long	0xa1
	.uleb128 0x5
	.byte	0x3
	.long	mqtt_wbuf
	.uleb128 0x36
	.long	.LASF307
	.byte	0x1
	.byte	0x1a
	.long	0x7e
	.uleb128 0x29
	.long	.LASF308
	.byte	0x1
	.byte	0x23
	.long	0xa54
	.uleb128 0x5
	.byte	0x3
	.long	first_event
	.uleb128 0x29
	.long	.LASF309
	.byte	0x1
	.byte	0xe1
	.long	0xab6
	.uleb128 0x5
	.byte	0x3
	.long	first_topic
	.uleb128 0x37
	.long	.LASF310
	.long	.LASF310
	.byte	0x9
	.byte	0x52
	.uleb128 0x37
	.long	.LASF311
	.long	.LASF311
	.byte	0x7
	.byte	0xd2
	.uleb128 0x37
	.long	.LASF312
	.long	.LASF312
	.byte	0x5
	.byte	0x5c
	.uleb128 0x37
	.long	.LASF313
	.long	.LASF313
	.byte	0x5
	.byte	0x6e
	.uleb128 0x37
	.long	.LASF314
	.long	.LASF314
	.byte	0x5
	.byte	0x8d
	.uleb128 0x37
	.long	.LASF315
	.long	.LASF315
	.byte	0x9
	.byte	0x50
	.uleb128 0x37
	.long	.LASF316
	.long	.LASF316
	.byte	0x7
	.byte	0xb9
	.uleb128 0x38
	.long	.LASF330
	.long	.LASF330
	.uleb128 0x37
	.long	.LASF317
	.long	.LASF317
	.byte	0xa
	.byte	0x22
	.uleb128 0x37
	.long	.LASF318
	.long	.LASF318
	.byte	0x7
	.byte	0xfd
	.uleb128 0x37
	.long	.LASF319
	.long	.LASF319
	.byte	0x4
	.byte	0x34
	.uleb128 0x37
	.long	.LASF320
	.long	.LASF320
	.byte	0xa
	.byte	0x20
	.uleb128 0x39
	.long	.LASF321
	.long	.LASF321
	.byte	0x7
	.value	0x110
	.uleb128 0x39
	.long	.LASF322
	.long	.LASF322
	.byte	0x7
	.value	0x121
	.uleb128 0x37
	.long	.LASF323
	.long	.LASF323
	.byte	0xb
	.byte	0xc8
	.uleb128 0x3a
	.long	.LASF331
	.long	.LASF332
	.byte	0xc
	.byte	0
	.long	.LASF331
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL9
	.value	0x1
	.byte	0x52
	.long	.LVL9
	.long	.LFE29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.value	0x5
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL8
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL26-1
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL27
	.long	.LFE25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL18
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL19
	.value	0x6
	.byte	0x3
	.long	first_event
	.byte	0x9f
	.long	.LVL19
	.long	.LVL25
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x52
	.long	.LVL21
	.long	.LVL22
	.value	0x2
	.byte	0x71
	.sleb128 0
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST10:
	.long	.LVL32
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST11:
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL44
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST12:
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL45
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST14:
	.long	.LVL47
	.long	.LVL48
	.value	0x1
	.byte	0x50
	.long	.LVL48
	.long	.LVL51
	.value	0x1
	.byte	0x53
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL53
	.long	.LVL61
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST15:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL59
	.long	.LVL61
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST17:
	.long	.LVL63
	.long	.LVL76
	.value	0x1
	.byte	0x53
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST18:
	.long	.LVL64
	.long	.LVL78
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST19:
	.long	.LVL66
	.long	.LVL73
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL66
	.long	.LVL67
	.value	0x6
	.byte	0x3
	.long	first_topic
	.byte	0x9f
	.long	.LVL67
	.long	.LVL73
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x2
	.byte	0x72
	.sleb128 0
	.long	.LVL71
	.long	.LVL73
	.value	0x1
	.byte	0x50
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LFB20
	.long	.LFE20
	.long	.LFB29
	.long	.LFE29
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB25
	.long	.LFE25
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF202:
	.string	"ERROR_TOPO_RELATION_COUNT_EXCEED"
.LASF69:
	.string	"MQTT_SUBSCRIBE_PACKET_ERROR"
.LASF104:
	.string	"ERROR_SUBDEV_REPLY_VAL_CHECK"
.LASF36:
	.string	"password"
.LASF299:
	.string	"mqtt_unsubscribe"
.LASF172:
	.string	"ERROR_LORA_DEVICE_METHOD_ERROR"
.LASF109:
	.string	"ERROR_SUBDEV_CREATE_SESSION_FAIL"
.LASF282:
	.string	"mqtt_deinit_instance"
.LASF44:
	.string	"ERROR_NET_SOCKET"
.LASF141:
	.string	"ERROR_ADD_DEVICE_FAILED"
.LASF175:
	.string	"ERROR_DSL_PARSE_PARAMS_FORMAT_ERROR"
.LASF152:
	.string	"ERROR_DELETE_DEVICE_FAILED"
.LASF308:
	.string	"first_event"
.LASF311:
	.string	"IOT_MQTT_Destroy"
.LASF251:
	.string	"iotx_mqtt_event_msg_pt"
.LASF140:
	.string	"ERROR_JUDGE_DEVICE_EXISTS_ERROR"
.LASF297:
	.string	"__FUNCTION__"
.LASF91:
	.string	"ERROR_SHADOW_INVALID_STATE"
.LASF253:
	.string	"h_fp"
.LASF271:
	.string	"mqtt_instance_event_s"
.LASF21:
	.string	"LOG_WARNING_LEVEL"
.LASF23:
	.string	"LOG_DEBUG_LEVEL"
.LASF52:
	.string	"MQTT_SUB_INFO_NOT_FOUND_ERROR"
.LASF144:
	.string	"ERROR_SYN_DEVICE_FAILED"
.LASF178:
	.string	"ERROR_DSL_PARSE_PARAMS_NOT_EXIST"
.LASF26:
	.string	"IOT_LOG_EMERG"
.LASF278:
	.string	"subscriber_cb"
.LASF183:
	.string	"ERROR_DSL_PARSE_ENUM_SPECS_ERROR"
.LASF146:
	.string	"ERROR_TENANID_ILLEGAL"
.LASF11:
	.string	"unsigned int"
.LASF190:
	.string	"ERROR_DSL_PARSE_SPECS_NUMBER_FORMAT_ERROR"
.LASF139:
	.string	"ERROR_DEVICE_EXISTS"
.LASF167:
	.string	"ERROR_JUDGE_AGR_FAILED"
.LASF256:
	.string	"host"
.LASF318:
	.string	"IOT_MQTT_Subscribe"
.LASF117:
	.string	"ERROR_TOO_LARGE_PAGE_SIZE"
.LASF239:
	.string	"IOTX_MQTT_EVENT_PUBLISH_RECVEIVED"
.LASF84:
	.string	"ERROR_SHADOW_UNDEF_TYPE"
.LASF261:
	.string	"write_buf_size"
.LASF266:
	.string	"MQTT_INSTANCE_EVENT_DISCONNECTED"
.LASF267:
	.string	"MQTT_INSTANCE_EVENT_CONNECTED"
.LASF55:
	.string	"NETWORK_RECONNECT_TIMED_OUT_ERROR"
.LASF48:
	.string	"ERROR_NET_RECV"
.LASF241:
	.string	"iotx_mqtt_event_type_t"
.LASF179:
	.string	"ERROR_DSL_PARSE_PARAMS_TYPE_ERROR"
.LASF77:
	.string	"MQTT_PUBLISH_COMP_PACKET_ERROR"
.LASF254:
	.string	"pcontext"
.LASF128:
	.string	"ERROR_SCRIPT_REL_NOT_EXIST"
.LASF319:
	.string	"LITE_syslog"
.LASF156:
	.string	"ERROR_INSERT_AGR_FAILED"
.LASF169:
	.string	"ERROR_DELETE_APPLY_DEVICE_FAILED"
.LASF157:
	.string	"ERROR_QUERY_DEVICE_APPLY_FAILED"
.LASF118:
	.string	"ERROR_DEVICE_COUNT_FAULT"
.LASF43:
	.string	"ERROR_NET_SETOPT_TIMEOUT"
.LASF50:
	.string	"ERROR_NET_CONN"
.LASF300:
	.string	"t_next"
.LASF98:
	.string	"ERROR_SUBDEV_REPLY_TYPE_NOT_DEF"
.LASF132:
	.string	"ERROR_DEVICE_IS_DISABLED"
.LASF213:
	.string	"ERROR_HTTP_BREAK"
.LASF166:
	.string	"ERROR_QUERY_AGR_FAILED"
.LASF231:
	.string	"IOTX_MQTT_EVENT_SUBCRIBE_TIMEOUT"
.LASF28:
	.string	"IOT_LOG_ERROR"
.LASF66:
	.string	"MQTT_CONNECT_ACK_PACKET_ERROR"
.LASF262:
	.string	"pread_buf"
.LASF230:
	.string	"IOTX_MQTT_EVENT_SUBCRIBE_SUCCESS"
.LASF46:
	.string	"ERROR_NET_BIND"
.LASF17:
	.string	"uint32_t"
.LASF317:
	.string	"strcpy"
.LASF275:
	.string	"pclient"
.LASF129:
	.string	"ERROR_SCRIPT_CONVERT_DATA_IS_NULL"
.LASF160:
	.string	"ERROR_RELEASE_TRIAD_FAILED"
.LASF124:
	.string	"ERROR_DEVICE_STATUS_FAULT"
.LASF276:
	.string	"event"
.LASF277:
	.string	"event_handle"
.LASF103:
	.string	"ERROR_SUBDEV_REPLY_TOPIC_NOT_MATCH"
.LASF56:
	.string	"MQTT_CONNACK_UNKNOWN_ERROR"
.LASF10:
	.string	"long long unsigned int"
.LASF42:
	.string	"ERROR_CERT_VERIFY_FAIL"
.LASF221:
	.string	"NULL_VALUE_ERROR"
.LASF143:
	.string	"ERROR_INSERT_DGR_FAILED"
.LASF102:
	.string	"ERROR_SUBDEV_REPLY_PROC"
.LASF136:
	.string	"ERROR_THING_STATUS_PROHIBITED"
.LASF73:
	.string	"MQTT_UNSUBSCRIBE_PACKET_ERROR"
.LASF242:
	.string	"packet_id"
.LASF4:
	.string	"__uint16_t"
.LASF174:
	.string	"ERROR_DSL_PARSE_METHOD_NOT_EXIST"
.LASF287:
	.string	"deviceSecret"
.LASF252:
	.string	"iotx_mqtt_event_handle_func_fpt"
.LASF303:
	.string	"mqtt_msg"
.LASF227:
	.string	"IOTX_MQTT_EVENT_UNDEF"
.LASF326:
	.string	"/home/stone/Documents/pca"
.LASF285:
	.string	"productKey"
.LASF22:
	.string	"LOG_INFO_LEVEL"
.LASF249:
	.string	"iotx_mqtt_topic_info_pt"
.LASF191:
	.string	"ERROR_DSL_PARSE_TEMPLATE_ERROR"
.LASF321:
	.string	"IOT_MQTT_Unsubscribe"
.LASF88:
	.string	"ERROR_SHADOW_ATTR_NO_EXIST"
.LASF304:
	.string	"mqtt_client"
.LASF331:
	.string	"puts"
.LASF327:
	.string	"mqtt_get_instance"
.LASF328:
	.string	"mqtt_remove_instance"
.LASF247:
	.string	"payload"
.LASF119:
	.string	"ERROR_DEVICE_DETAIL_FAULT"
.LASF155:
	.string	"ERROR_QUERY_ACTIVE_DEVICE_COUNT_FAILED"
.LASF246:
	.string	"ptopic"
.LASF45:
	.string	"ERROR_NET_CONNECT"
.LASF130:
	.string	"ERROR_DEVICE_PRODUCT_NOT_EXIST"
.LASF195:
	.string	"ERROR_DSL_PARSE_IDENTIFIER_IS_NULL"
.LASF209:
	.string	"ERROR_MALLOC"
.LASF149:
	.string	"ERROR_INSERT_DEVICE_APPLY_DETAIL_FAILED"
.LASF81:
	.string	"MQTT_NETWORK_ERROR"
.LASF289:
	.string	"pconn_info"
.LASF162:
	.string	"ERROR_REG_LORA_DEVICE_FAILED"
.LASF53:
	.string	"MQTT_PUSH_TO_LIST_ERROR"
.LASF257:
	.string	"clean_session"
.LASF223:
	.string	"SUCCESS_RETURN"
.LASF218:
	.string	"ERROR_HTTP_PRTCL"
.LASF260:
	.string	"pwrite_buf"
.LASF313:
	.string	"IOT_SetLogLevel"
.LASF64:
	.string	"MQTT_PING_PACKET_ERROR"
.LASF322:
	.string	"IOT_MQTT_Publish"
.LASF180:
	.string	"ERROR_DSL_PARSE_INT_SPECS_ERROR"
.LASF306:
	.string	"mqtt_wbuf"
.LASF95:
	.string	"ERROR_SUBDEV_INVALID_GATEWAY_HANDLE"
.LASF201:
	.string	"ERROR_PRODUCT_KEY_ELEMENT_ALREADY_EXIST"
.LASF280:
	.string	"mqtt_t"
.LASF173:
	.string	"ERROR_APPLY_NOT_READY"
.LASF40:
	.string	"ERROR_DEVICE_NOT_EXSIT"
.LASF210:
	.string	"ERROR_NO_ENOUGH_MEM"
.LASF212:
	.string	"ERROR_NO_PERSISTENCE"
.LASF13:
	.string	"char"
.LASF49:
	.string	"ERROR_NET_SEND"
.LASF176:
	.string	"ERROR_DSL_PARSE_PARAMS_VALUE_EMPTY"
.LASF229:
	.string	"IOTX_MQTT_EVENT_RECONNECT"
.LASF137:
	.string	"ERROR_THING_STATUS_NOT_ACTIVE"
.LASF203:
	.string	"ERROR_TOPO_RELATION_NOT_EXIST"
.LASF219:
	.string	"ERROR_HTTP"
.LASF80:
	.string	"MQTT_UNSUBSCRIBE_ACK_PACKET_ERROR"
.LASF193:
	.string	"ERROR_DSL_PARSE_EVENT_CALL_TYPE_ERROR"
.LASF15:
	.string	"uint8_t"
.LASF332:
	.string	"__builtin_puts"
.LASF215:
	.string	"ERROR_HTTP_CONN"
.LASF163:
	.string	"ERROR_SYN_APPLY_DEVICE_FAILED"
.LASF199:
	.string	"ERROR_SERVICE_PUT_ERROR"
.LASF232:
	.string	"IOTX_MQTT_EVENT_SUBCRIBE_NACK"
.LASF200:
	.string	"ERROR_DEVICE_GET_EVENT_FAULT"
.LASF105:
	.string	"ERROR_SUBDEV_REGISTER_TYPE_NOT_DEF"
.LASF245:
	.string	"payload_len"
.LASF9:
	.string	"long long int"
.LASF323:
	.string	"printf"
.LASF107:
	.string	"ERROR_SUBDEV_MQTT_PUBLISH_FAIL"
.LASF67:
	.string	"MQTT_NETWORK_CONNECT_ERROR"
.LASF279:
	.string	"ptopic_info"
.LASF198:
	.string	"ERROR_EVENT_PUT_ERROR"
.LASF41:
	.string	"ERROR_NET_TIMEOUT"
.LASF134:
	.string	"ERROR_PRODUCT_PROPERTY_NOT_EXIST"
.LASF305:
	.string	"mqtt_rbuf"
.LASF233:
	.string	"IOTX_MQTT_EVENT_UNSUBCRIBE_SUCCESS"
.LASF265:
	.string	"iotx_mqtt_param_t"
.LASF108:
	.string	"ERROR_SUBDEV_REPLY_PARSE_FAIL"
.LASF214:
	.string	"ERROR_NULL_VALUE"
.LASF57:
	.string	"MQTT_CONANCK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR"
.LASF70:
	.string	"MQTT_SUBSCRIBE_ACK_PACKET_ERROR"
.LASF240:
	.string	"IOTX_MQTT_EVENT_BUFFER_OVERFLOW"
.LASF96:
	.string	"ERROR_SUBDEV_SESSION_NOT_FOUND"
.LASF250:
	.string	"event_type"
.LASF93:
	.string	"ERROR_SUBDEV_NOT_NULL_VALUE"
.LASF85:
	.string	"ERROR_SHADOW_UPDATE_TIMEOUT"
.LASF196:
	.string	"ERROR_DSL_DEVICE_NOT_EXIST_IN_PRODUCT"
.LASF161:
	.string	"ERROR_UPDATE_DAD_STATUS_FAILED"
.LASF47:
	.string	"ERROR_NET_LISTEN"
.LASF316:
	.string	"IOT_MQTT_Construct"
.LASF238:
	.string	"IOTX_MQTT_EVENT_PUBLISH_NACK"
.LASF89:
	.string	"ERROR_SHADOW_ATTR_EXIST"
.LASF112:
	.string	"ERROR_SUBDEV_SUB_UNSUB_FAIL"
.LASF34:
	.string	"client_id"
.LASF224:
	.string	"IOTX_MQTT_QOS0"
.LASF225:
	.string	"IOTX_MQTT_QOS1"
.LASF226:
	.string	"IOTX_MQTT_QOS2"
.LASF181:
	.string	"ERROR_DSL_PARSE_FLOAT_SPECS_ERROR"
.LASF37:
	.string	"pub_key"
.LASF18:
	.string	"LOG_EMERG_LEVEL"
.LASF30:
	.string	"IOT_LOG_INFO"
.LASF153:
	.string	"ERROR_QUERY_DEVICE_DETAIL_FAILED"
.LASF111:
	.string	"ERROR_SUBDEV_HAS_BEEN_LOGIN"
.LASF281:
	.string	"mqtt_set_instance"
.LASF255:
	.string	"iotx_mqtt_event_handle_t"
.LASF68:
	.string	"MQTT_STATE_ERROR"
.LASF74:
	.string	"MQTT_PUBLISH_PACKET_ERROR"
.LASF206:
	.string	"ERROR_DEVICE_GROUP_NOT_FOUND"
.LASF270:
	.string	"mqtt_instance_event_t"
.LASF237:
	.string	"IOTX_MQTT_EVENT_PUBLISH_TIMEOUT"
.LASF114:
	.string	"ERROR_SUBDEV_MEMORY_NOT_ENOUGH"
.LASF170:
	.string	"ERROR_GEN_DEVICEID_FAILED"
.LASF234:
	.string	"IOTX_MQTT_EVENT_UNSUBCRIBE_TIMEOUT"
.LASF236:
	.string	"IOTX_MQTT_EVENT_PUBLISH_SUCCESS"
.LASF302:
	.string	"data"
.LASF290:
	.string	"mqtt_params"
.LASF12:
	.string	"long double"
.LASF16:
	.string	"uint16_t"
.LASF33:
	.string	"host_name"
.LASF110:
	.string	"ERROR_SUBDEV_INVALID_CLEAN_SESSION_TYPE"
.LASF187:
	.string	"ERROR_DSL_SERVICE_NOT_AVAILABLE"
.LASF79:
	.string	"MQTT_PUBLISH_REL_PACKET_ERROR"
.LASF147:
	.string	"ERROR_PRODUCT_REGION_ILLEGAL"
.LASF222:
	.string	"FAIL_RETURN"
.LASF75:
	.string	"MQTT_PUBLISH_QOS_ERROR"
.LASF92:
	.string	"ERROR_SUBDEV_NULL_VALUE"
.LASF120:
	.string	"ERROR_TOO_LARGE_LIST_SIZE"
.LASF283:
	.string	"ev_next"
.LASF2:
	.string	"short int"
.LASF154:
	.string	"ERROR_QUERY_DEVICE_COUNT_FAILED"
.LASF158:
	.string	"ERROR_QUERY_PRODUCT_FAILED"
.LASF309:
	.string	"first_topic"
.LASF192:
	.string	"ERROR_DSL_EXCEPTION"
.LASF6:
	.string	"long int"
.LASF185:
	.string	"ERROR_DSL_PARSE_DATE_SPECS_ERROR"
.LASF272:
	.string	"mqtt_instance_topic_s"
.LASF274:
	.string	"mqtt_instance_topic_t"
.LASF35:
	.string	"username"
.LASF330:
	.string	"__stack_chk_fail"
.LASF25:
	.string	"_IOT_LogLevel"
.LASF269:
	.string	"next"
.LASF207:
	.string	"ERROR_NO_MEM"
.LASF204:
	.string	"ERROR_TOPO_RELATION_CANNOT_ADD_BYSELF"
.LASF314:
	.string	"IOT_SetupConnInfo"
.LASF76:
	.string	"MQTT_PUBLISH_ACK_PACKET_ERROR"
.LASF159:
	.string	"ERROR_DEVICE_APPLY_NOT_FOUND"
.LASF205:
	.string	"ERROR_ALINK_METHOD_NOT_EXIST"
.LASF87:
	.string	"ERROR_SHADOW_NO_ATTRIBUTE"
.LASF325:
	.string	"src/mqtt_instance.c"
.LASF83:
	.string	"ERROR_SHADOW_NO_METHOD"
.LASF94:
	.string	"ERROR_SUBDEV_STRING_NULL_VALUE"
.LASF82:
	.string	"MQTT_PUBLISH_ACK_TYPE_ERROR"
.LASF100:
	.string	"ERROR_SUBDEV_DATA_LEN_OVERFLOW"
.LASF294:
	.string	"mqtt_set_event_cb"
.LASF150:
	.string	"ERROR_UPDATE_DEVICE_APPLY_STATUS_FAILED"
.LASF208:
	.string	"ERROR_CERTIFICATE_EXPIRED"
.LASF3:
	.string	"__uint8_t"
.LASF310:
	.string	"LITE_free_internal"
.LASF197:
	.string	"ERROR_DSL_PARSE_DOUBLE_SPECS_ERROR"
.LASF194:
	.string	"ERROR_DSL_PARSE_NO_PROPERTY"
.LASF165:
	.string	"ERROR_JUDGE_DGR_FAILED"
.LASF113:
	.string	"ERROR_SUBDEV_SESSION_STATE_FAIL"
.LASF244:
	.string	"topic_len"
.LASF62:
	.string	"MQTT_CONNECT_ERROR"
.LASF123:
	.string	"ERROR_MAP_SIZE_CANNOT_BE_ZERO"
.LASF189:
	.string	"ERROR_DATA_NOT_SATISFY_DSL"
.LASF125:
	.string	"ERROR_DEVICE_INFO_FAULT"
.LASF220:
	.string	"ERROR_HTTP_CLOSED"
.LASF14:
	.string	"sizetype"
.LASF288:
	.string	"maxMsgSize"
.LASF8:
	.string	"long unsigned int"
.LASF177:
	.string	"ERROR_DSL_PARSE_PARAMS_NUMBER_ERROR"
.LASF217:
	.string	"ERROR_HTTP_UNRESOLVED_DNS"
.LASF39:
	.string	"IOT_RETURN_CODES"
.LASF133:
	.string	"ERROR_IOT_MESSAGE_ERROR"
.LASF292:
	.string	"event_list_remove"
.LASF211:
	.string	"ERROR_NO_SUPPORT"
.LASF31:
	.string	"IOT_LOG_DEBUG"
.LASF293:
	.string	"event_list_add"
.LASF32:
	.string	"port"
.LASF101:
	.string	"ERROR_SUBDEV_MSG_LEN"
.LASF307:
	.string	"abort_request"
.LASF58:
	.string	"MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR"
.LASF65:
	.string	"MQTT_CONNECT_PACKET_ERROR"
.LASF301:
	.string	"mqtt_publish"
.LASF51:
	.string	"ERROR_NET_UNKNOWN_HOST"
.LASF115:
	.string	"ERROR_REPLY_TIMEOUT"
.LASF216:
	.string	"ERROR_HTTP_PARSE"
.LASF72:
	.string	"MQTT_SUBSCRIBE_QOS_ERROR"
.LASF97:
	.string	"ERROR_SUBDEV_RRPC_CB_NOT_NULL"
.LASF286:
	.string	"deviceName"
.LASF127:
	.string	"ERROR_INVOKE_THING_SERVICE_ERROR"
.LASF188:
	.string	"ERROR_DSL_PARSE_DATA_TYPE_PARSE_ERROR"
.LASF86:
	.string	"ERROR_SHADOW_UPDATE_NACK"
.LASF99:
	.string	"ERROR_SUBDEV_GET_JSON_VAL"
.LASF1:
	.string	"unsigned char"
.LASF168:
	.string	"ERROR_DEVICENAME_NOT_MEET_SPECS"
.LASF7:
	.string	"__uint32_t"
.LASF171:
	.string	"ERROR_APPLY_ILLEGAL"
.LASF324:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF54:
	.string	"MQTT_TOPIC_FORMAT_ERROR"
.LASF228:
	.string	"IOTX_MQTT_EVENT_DISCONNECT"
.LASF295:
	.string	"topic_list_add"
.LASF122:
	.string	"ERROR_TOO_LARGE_MAP_SIZE"
.LASF259:
	.string	"keepalive_interval_ms"
.LASF131:
	.string	"ERROR_TOPIC_NOT_EXIST"
.LASF186:
	.string	"ERROR_DSL_PARSE_STRUCT_SPECS_ERROR"
.LASF164:
	.string	"ERROR_QUERY_DGR_FAILED"
.LASF20:
	.string	"LOG_ERR_LEVEL"
.LASF121:
	.string	"ERROR_LIST_SIZE_CANNOT_BE_ZERO"
.LASF138:
	.string	"ERROR_PRODUCT_NOT_FOUND"
.LASF273:
	.string	"topic"
.LASF184:
	.string	"ERROR_DSL_PARSE_STRING_SPECS_ERROR"
.LASF78:
	.string	"MQTT_PUBLISH_REC_PACKET_ERROR"
.LASF329:
	.string	"fail"
.LASF284:
	.string	"mqtt_init_instance"
.LASF296:
	.string	"mqtt_subscribe"
.LASF268:
	.string	"event_cb"
.LASF145:
	.string	"ERROR_PRODUCT_DOMAIN_ILLEGAL"
.LASF106:
	.string	"ERROR_SUBDEV_PACKET_SPLICE_FAIL"
.LASF61:
	.string	"MQTT_CONNACK_NOT_AUTHORIZED_ERROR"
.LASF263:
	.string	"read_buf_size"
.LASF27:
	.string	"IOT_LOG_CRIT"
.LASF312:
	.string	"IOT_OpenLog"
.LASF135:
	.string	"ERROR_DATA_FORMAT_ERROR"
.LASF0:
	.string	"signed char"
.LASF298:
	.string	"topic_list_remove"
.LASF264:
	.string	"handle_event"
.LASF5:
	.string	"short unsigned int"
.LASF19:
	.string	"LOG_CRIT_LEVEL"
.LASF248:
	.string	"iotx_mqtt_topic_info_t"
.LASF29:
	.string	"IOT_LOG_WARNING"
.LASF59:
	.string	"MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR"
.LASF90:
	.string	"ERROR_SHADOW_WAIT_LIST_OVERFLOW"
.LASF60:
	.string	"MQTT_CONNACK_BAD_USERDATA_ERROR"
.LASF291:
	.string	"__func__"
.LASF71:
	.string	"MQTT_SUBSCRIBE_ACK_FAILURE"
.LASF142:
	.string	"ERROR_UPDATE_DEVICE_FAILED"
.LASF126:
	.string	"ERROR_SET_THING_PROPERTIES_ERROR"
.LASF148:
	.string	"ERROR_PRODUCT_NETTYPE_ILLEGAL"
.LASF151:
	.string	"ERROR_DELERE_DGR_FAILED"
.LASF24:
	.string	"_LOGLEVEL"
.LASF63:
	.string	"MQTT_CREATE_THREAD_ERROR"
.LASF38:
	.string	"iotx_conn_info_pt"
.LASF116:
	.string	"ERROR_DEVICE_NOT_FOUND"
.LASF182:
	.string	"ERROR_DSL_PARSE_BOOL_SPECS_ERROR"
.LASF243:
	.string	"retain"
.LASF258:
	.string	"request_timeout_ms"
.LASF235:
	.string	"IOTX_MQTT_EVENT_UNSUBCRIBE_NACK"
.LASF315:
	.string	"LITE_malloc_internal"
.LASF320:
	.string	"strcmp"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
