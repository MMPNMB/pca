	.file	"version_report.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"-"
.LC1:
	.string	"cur str=%s"
.LC2:
	.string	"[%06d]<V> "
.LC3:
	.string	"\r\n"
.LC4:
	.string	"."
.LC5:
	.string	"get_hex_version err "
.LC6:
	.string	"get os version failed"
.LC7:
	.string	"os ver=%d.%d.%d.%d\n"
.LC8:
	.string	"mac=%02x.%02x.%02x.%02x.%02x.%02x\n"
.LC9:
	.string	"random =%02x%02x%02x%02x\n"
.LC10:
	.string	"aos_get_version_info failed"
.LC11:
	.string	"-----------------\n"
.LC12:
	.string	"after aos_get_version_info output:\n"
.LC13:
	.string	"%s\n"
.LC14:
	.string	"{\"id\":%d,\"version\":\"1.0\",\"params\":[{\"attrKey\":\"SYS_ALIOS_ACTIVATION\",\"attrValue\":\"%s\"}],\"method\":\"thing.deviceinfo.update\"}"
.LC15:
	.string	"snprintf failed"
.LC16:
	.string	"active_gen_update_msg failed"
.LC17:
	.string	"generate topic name of info failed"
.LC18:
	.string	"publish failed"
.LC19:
	.string	"active_publish failed"
.LC20:
	.string	"update"
.LC21:
	.string	"/sys/%s/%s/thing/deviceinfo/%s"
.LC22:
	.string	"--- public topic=%s ,payload=%s\n"
	.section	.text.unlikely.version_report,"ax",@progbits
.LCOLDB23:
	.section	.text.version_report,"ax",@progbits
.LHOTB23:
	.section	.text.unlikely.version_report
.Ltext_cold0:
	.section	.text.version_report
	.globl	version_report
	.type	version_report, @function
version_report:
.LFB10:
	.file 1 "framework/fota/platform/mqtt/version_report.c"
	.loc 1 244 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 250 0
	movl	$25, %ecx
	.loc 1 244 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 250 0
	leal	-512(%ebp), %edi
	xorl	%ebx, %ebx
	.loc 1 244 0
	subl	$700, %esp
	.loc 1 246 0
	movl	$0, -680(%ebp)
	movl	$0, -676(%ebp)
	.loc 1 244 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL0:
	.loc 1 247 0
	movl	$0, -692(%ebp)
	.loc 1 249 0
	movl	$0, -684(%ebp)
	.loc 1 250 0
	rep stosl
	.loc 1 252 0
	call	aos_get_kernel_version
.LVL1:
.LBB12:
.LBB13:
	.loc 1 199 0
	leal	-412(%ebp), %edi
.LBE13:
.LBE12:
	.loc 1 252 0
	movl	%eax, %edx
.LVL2:
.LBB15:
.LBB14:
	.loc 1 199 0
	movl	$8, %ecx
	movl	%ebx, %eax
.LVL3:
	.loc 1 200 0
	testl	%edx, %edx
	.loc 1 199 0
	rep stosl
	.loc 1 200 0
	je	.L22
	leal	-412(%ebp), %ebx
	.loc 1 206 0
	pushl	%eax
	pushl	$31
	pushl	%edx
	pushl	%ebx
	call	strncpy
.LVL4:
	.loc 1 208 0
	popl	%eax
	popl	%edx
	pushl	$.LC0
	pushl	%ebx
	call	strtok
.LVL5:
	.loc 1 210 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L3
.LVL6:
	.loc 1 214 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC0
	pushl	$0
	call	strtok
.LVL7:
	.loc 1 210 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L3
	.loc 1 214 0
	pushl	%ecx
	pushl	%ecx
	pushl	$.LC0
	pushl	$0
	call	strtok
.LVL8:
	movl	%eax, %ebx
.LVL9:
	.loc 1 217 0
	call	aos_now_ms
.LVL10:
	pushl	%ebx
	pushl	$.LC1
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL11:
	addl	$24, %esp
	pushl	%ebx
	pushl	$.LC1
	call	csp_printf
.LVL12:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL13:
	.loc 1 219 0
	popl	%esi
	popl	%edi
	pushl	$.LC4
	pushl	%ebx
	.loc 1 220 0
	xorl	%ebx, %ebx
.LVL14:
	.loc 1 219 0
	call	strtok
.LVL15:
	addl	$16, %esp
	jmp	.L4
.LVL16:
.L3:
	.loc 1 211 0
	call	aos_now_ms
.LVL17:
	pushl	%edx
	pushl	$.LC5
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL18:
	movl	$.LC5, (%esp)
	call	csp_printf
.LVL19:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL20:
	addl	$16, %esp
	jmp	.L22
.LVL21:
.L34:
	.loc 1 225 0
	subl	$12, %esp
	pushl	%eax
	call	atoi
.LVL22:
	.loc 1 227 0
	popl	%edi
	.loc 1 225 0
	movb	%al, -692(%ebp,%ebx)
	.loc 1 220 0
	incl	%ebx
.LVL23:
	.loc 1 227 0
	popl	%eax
	pushl	$.LC4
	pushl	$0
	call	strtok
.LVL24:
	.loc 1 220 0
	addl	$16, %esp
	cmpl	$4, %ebx
	je	.L7
.LVL25:
.L4:
	.loc 1 221 0
	testl	%eax, %eax
	jne	.L34
	jmp	.L7
.LVL26:
.L22:
.LBE14:
.LBE15:
	.loc 1 254 0 discriminator 1
	call	aos_now_ms
.LVL27:
	pushl	%esi
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL28:
	movl	$.LC6, (%esp)
	call	csp_printf
.LVL29:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL30:
	addl	$16, %esp
.L7:
	.loc 1 256 0 discriminator 1
	movzbl	-689(%ebp), %ecx
	movzbl	-690(%ebp), %edi
	movzbl	-691(%ebp), %esi
	movzbl	-692(%ebp), %ebx
	movl	%ecx, -700(%ebp)
	call	aos_now_ms
.LVL31:
	movl	-700(%ebp), %ecx
	pushl	%edx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	$.LC7
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL32:
	movzbl	-689(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	movzbl	-690(%ebp), %eax
	pushl	%eax
	movzbl	-691(%ebp), %eax
	pushl	%eax
	movzbl	-692(%ebp), %eax
	pushl	%eax
	pushl	$.LC7
	call	csp_printf
.LVL33:
	addl	$20, %esp
	pushl	$.LC3
	call	csp_printf
.LVL34:
	.loc 1 258 0 discriminator 1
	popl	%ecx
	leal	-680(%ebp), %eax
	popl	%ebx
	pushl	%eax
	pushl	$0
	call	hal_wifi_get_mac_addr
.LVL35:
	.loc 1 259 0 discriminator 1
	movzbl	-679(%ebp), %eax
	movzbl	-675(%ebp), %ecx
	movzbl	-678(%ebp), %ebx
	movzbl	-676(%ebp), %edi
	movzbl	-677(%ebp), %esi
	movl	%eax, -700(%ebp)
	movzbl	-680(%ebp), %eax
	movl	%ecx, -708(%ebp)
	movl	%eax, -704(%ebp)
	call	aos_now_ms
.LVL36:
	movl	-708(%ebp), %ecx
	movl	%ecx, (%esp)
	pushl	%edi
	pushl	%esi
	pushl	%ebx
.LBB16:
.LBB17:
	.loc 1 238 0 discriminator 1
	xorl	%ebx, %ebx
.LBE17:
.LBE16:
	.loc 1 259 0 discriminator 1
	pushl	-700(%ebp)
	pushl	-704(%ebp)
	pushl	$.LC8
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL37:
	movzbl	-675(%ebp), %eax
	addl	$44, %esp
	pushl	%eax
	movzbl	-676(%ebp), %eax
	pushl	%eax
	movzbl	-677(%ebp), %eax
	pushl	%eax
	movzbl	-678(%ebp), %eax
	pushl	%eax
	movzbl	-679(%ebp), %eax
	pushl	%eax
	movzbl	-680(%ebp), %eax
	pushl	%eax
	pushl	$.LC8
	call	csp_printf
.LVL38:
	addl	$20, %esp
	pushl	$.LC3
	call	csp_printf
.LVL39:
.LBB19:
.LBB18:
	.loc 1 236 0 discriminator 1
	call	aos_now
.LVL40:
	.loc 1 237 0 discriminator 1
	movl	%eax, (%esp)
	call	srand
.LVL41:
	addl	$16, %esp
.LVL42:
.L8:
	.loc 1 239 0
	call	rand
.LVL43:
	movb	%al, -688(%ebp,%ebx)
	.loc 1 238 0
	incl	%ebx
.LVL44:
	cmpl	$4, %ebx
	jne	.L8
.LVL45:
.LBE18:
.LBE19:
	.loc 1 263 0 discriminator 1
	movzbl	-685(%ebp), %ecx
	movzbl	-686(%ebp), %edi
	movzbl	-687(%ebp), %esi
	movzbl	-688(%ebp), %ebx
	movl	%ecx, -700(%ebp)
	call	aos_now_ms
.LVL46:
	movl	-700(%ebp), %ecx
	pushl	%edx
	pushl	%ecx
	pushl	%edi
	.loc 1 265 0 discriminator 1
	leal	-412(%ebp), %edi
	.loc 1 263 0 discriminator 1
	pushl	%esi
	pushl	%ebx
	pushl	$.LC9
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL47:
	movzbl	-685(%ebp), %eax
	addl	$20, %esp
	pushl	%eax
	movzbl	-686(%ebp), %eax
	pushl	%eax
	movzbl	-687(%ebp), %eax
	pushl	%eax
	movzbl	-688(%ebp), %eax
	pushl	%eax
	pushl	$.LC9
	call	csp_printf
.LVL48:
	addl	$20, %esp
	pushl	$.LC3
	call	csp_printf
.LVL49:
	.loc 1 265 0 discriminator 1
	xorl	%eax, %eax
	movl	$96, %ecx
	rep stosl
	.loc 1 267 0 discriminator 1
	leal	-684(%ebp), %eax
	leal	-512(%ebp), %edi
	popl	%ecx
	popl	%ebx
	pushl	$100
	pushl	%edi
	leal	-412(%ebp), %ebx
	pushl	%eax
	leal	-680(%ebp), %eax
	pushl	%eax
	leal	-688(%ebp), %eax
	pushl	%eax
	leal	-692(%ebp), %eax
	pushl	%eax
	call	aos_get_version_info
.LVL50:
	.loc 1 268 0 discriminator 1
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 267 0 discriminator 1
	movl	%eax, %esi
.LVL51:
	.loc 1 268 0 discriminator 1
	je	.L9
	.loc 1 269 0 discriminator 1
	call	aos_now_ms
.LVL52:
	pushl	%ebx
	pushl	$.LC10
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL53:
	movl	$.LC10, (%esp)
	jmp	.L32
.LVL54:
.L9:
	.loc 1 273 0 discriminator 1
	call	aos_now_ms
.LVL55:
	pushl	%ecx
	pushl	$.LC11
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL56:
	movl	$.LC11, (%esp)
	call	csp_printf
.LVL57:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL58:
	.loc 1 274 0 discriminator 1
	call	aos_now_ms
.LVL59:
	addl	$12, %esp
	pushl	$.LC12
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL60:
	movl	$.LC12, (%esp)
	call	csp_printf
.LVL61:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL62:
	.loc 1 275 0 discriminator 1
	call	aos_now_ms
.LVL63:
	pushl	%edi
	pushl	$.LC13
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL64:
	addl	$24, %esp
	pushl	%edi
	pushl	$.LC13
	call	csp_printf
.LVL65:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL66:
	.loc 1 276 0 discriminator 1
	call	aos_now_ms
.LVL67:
	addl	$12, %esp
	pushl	$.LC11
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL68:
	movl	$.LC11, (%esp)
	call	csp_printf
.LVL69:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL70:
.LBB20:
.LBB21:
	.loc 1 114 0 discriminator 1
	movl	%edi, (%esp)
	pushl	$1
	pushl	$.LC14
	pushl	$384
	pushl	%ebx
	call	snprintf
.LVL71:
	.loc 1 119 0 discriminator 1
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L11
	.loc 1 120 0
	call	aos_now_ms
.LVL72:
	pushl	%edx
	pushl	$.LC15
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL73:
	movl	$.LC15, (%esp)
	call	csp_printf
.LVL74:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL75:
.LBE21:
.LBE20:
	.loc 1 280 0
	call	aos_now_ms
.LVL76:
	addl	$12, %esp
	pushl	$.LC16
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL77:
	movl	$.LC16, (%esp)
	jmp	.L32
.LVL78:
.L11:
.LBB22:
.LBB23:
	.loc 1 89 0
	leal	-608(%ebp), %edi
	movl	%esi, %eax
	movl	$24, %ecx
	.loc 1 93 0
	leal	-672(%ebp), %esi
	subl	$12, %esp
	.loc 1 89 0
	rep stosl
	.loc 1 91 0
	leal	-672(%ebp), %edi
	movl	$8, %ecx
	rep stosl
	.loc 1 92 0
	leal	-640(%ebp), %edi
	movl	$8, %ecx
	rep stosl
	.loc 1 93 0
	pushl	%esi
	.loc 1 94 0
	leal	-640(%ebp), %edi
	.loc 1 93 0
	call	HAL_GetProductKey
.LVL79:
	.loc 1 94 0
	movl	%edi, (%esp)
	call	HAL_GetDeviceName
.LVL80:
.LBB24:
.LBB25:
	.loc 1 76 0
	popl	%edx
	popl	%ecx
	pushl	$.LC20
	pushl	%edi
	pushl	%esi
	leal	-608(%ebp), %esi
.LVL81:
	pushl	$.LC21
.LVL82:
	pushl	$96
.LVL83:
	pushl	%esi
.LVL84:
	call	snprintf
.LVL85:
	.loc 1 78 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L35
	.loc 1 79 0
	call	aos_now_ms
.LVL86:
.LVL87:
	pushl	%edi
	pushl	$.LC15
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL88:
	movl	$.LC15, (%esp)
	call	csp_printf
.LVL89:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL90:
.LBE25:
.LBE24:
	.loc 1 98 0
	call	aos_now_ms
.LVL91:
	addl	$12, %esp
	pushl	$.LC17
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL92:
	movl	$.LC17, (%esp)
.L31:
	.loc 1 104 0
	call	csp_printf
.LVL93:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL94:
	addl	$16, %esp
.LVL95:
.LBE23:
.LBE22:
	.loc 1 285 0
	call	aos_now_ms
.LVL96:
	pushl	%ebx
	pushl	$.LC19
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL97:
	movl	$.LC19, (%esp)
.L32:
	.loc 1 285 0 is_stmt 0 discriminator 1
	call	csp_printf
.LVL98:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL99:
	.loc 1 286 0 is_stmt 1 discriminator 1
	addl	$16, %esp
	orl	$-1, %eax
.L10:
	.loc 1 289 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L15
	call	__stack_chk_fail
.LVL100:
.L35:
.LBB27:
.LBB26:
	.loc 1 101 0
	pushl	%eax
	pushl	%ebx
	.loc 1 102 0
	movl	%ebx, %edi
	.loc 1 101 0
	pushl	%esi
	pushl	$.LC22
	call	printf
.LVL101:
	.loc 1 102 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
	notl	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$1
	pushl	%esi
	call	mqtt_publish
.LVL102:
	.loc 1 103 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L36
	.loc 1 104 0
	call	aos_now_ms
.LVL103:
	pushl	%esi
	pushl	$.LC18
	pushl	%eax
	pushl	$.LC2
	call	csp_printf
.LVL104:
	movl	$.LC18, (%esp)
	jmp	.L31
.LVL105:
.L36:
	.loc 1 107 0
	xorl	%eax, %eax
.LVL106:
	jmp	.L10
.LVL107:
.L15:
.LBE26:
.LBE27:
	.loc 1 289 0
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
	.size	version_report, .-version_report
	.section	.text.unlikely.version_report
.LCOLDE23:
	.section	.text.version_report
.LHOTE23:
	.text
.Letext0:
	.section	.text.unlikely.version_report
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 6 "./include/aos/kernel.h"
	.file 7 "./include/aos/internal/log_impl.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 10 "./framework/protocol/linkkit/iotkit/sdk-encap/imports/iot_import_product.h"
	.file 11 "./framework/connectivity/mqtt/./mqtt_instance.h"
	.file 12 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x892
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF50
	.byte	0xc
	.long	.LASF51
	.long	.LASF52
	.long	.Ldebug_ranges0+0x48
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF9
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0xd8
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF11
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x2c
	.uleb128 0x5
	.byte	0x4
	.long	0x8f
	.uleb128 0x5
	.byte	0x4
	.long	0x37
	.uleb128 0x5
	.byte	0x4
	.long	0xb3
	.uleb128 0x6
	.long	0x8f
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF15
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x48
	.long	0x68
	.byte	0x1
	.long	0x112
	.uleb128 0x8
	.string	"buf"
	.byte	0x1
	.byte	0x48
	.long	0xa1
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x48
	.long	0x76
	.uleb128 0x9
	.long	.LASF17
	.byte	0x1
	.byte	0x48
	.long	0xad
	.uleb128 0x9
	.long	.LASF18
	.byte	0x1
	.byte	0x48
	.long	0xad
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x49
	.long	0xad
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.long	0x68
	.byte	0
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x56
	.long	0x68
	.byte	0x1
	.long	0x165
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x56
	.long	0xad
	.uleb128 0x8
	.string	"msg"
	.byte	0x1
	.byte	0x56
	.long	0xad
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x58
	.long	0x68
	.uleb128 0xb
	.long	.LASF23
	.byte	0x1
	.byte	0x59
	.long	0x165
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x5b
	.long	0x175
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x5c
	.long	0x175
	.byte	0
	.uleb128 0xc
	.long	0x8f
	.long	0x175
	.uleb128 0xd
	.long	0x88
	.byte	0x5f
	.byte	0
	.uleb128 0xc
	.long	0x8f
	.long	0x185
	.uleb128 0xd
	.long	0x88
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0x6f
	.long	0x68
	.byte	0x1
	.long	0x1cc
	.uleb128 0x8
	.string	"buf"
	.byte	0x1
	.byte	0x6f
	.long	0xa1
	.uleb128 0x9
	.long	.LASF16
	.byte	0x1
	.byte	0x6f
	.long	0x76
	.uleb128 0x8
	.string	"id"
	.byte	0x1
	.byte	0x6f
	.long	0x68
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x6f
	.long	0xad
	.uleb128 0xa
	.string	"ret"
	.byte	0x1
	.byte	0x71
	.long	0x68
	.byte	0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.long	0x203
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0xe9
	.long	0xa7
	.uleb128 0x8
	.string	"len"
	.byte	0x1
	.byte	0xe9
	.long	0x6f
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.long	0x68
	.uleb128 0xb
	.long	.LASF27
	.byte	0x1
	.byte	0xec
	.long	0x5a
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.byte	0xc0
	.long	0x68
	.byte	0x1
	.long	0x25b
	.uleb128 0x8
	.string	"str"
	.byte	0x1
	.byte	0xc0
	.long	0xa1
	.uleb128 0x8
	.string	"hex"
	.byte	0x1
	.byte	0xc0
	.long	0xa1
	.uleb128 0xa
	.string	"p"
	.byte	0x1
	.byte	0xc3
	.long	0xa1
	.uleb128 0xa
	.string	"q"
	.byte	0x1
	.byte	0xc4
	.long	0xa1
	.uleb128 0xa
	.string	"arr"
	.byte	0x1
	.byte	0xc5
	.long	0x25b
	.uleb128 0xa
	.string	"i"
	.byte	0x1
	.byte	0xc6
	.long	0x68
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.byte	0xc7
	.long	0x175
	.byte	0
	.uleb128 0xc
	.long	0x68
	.long	0x26b
	.uleb128 0xd
	.long	0x88
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.byte	0xf3
	.long	0x68
	.long	.LFB10
	.long	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x78b
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0xf5
	.long	0x68
	.long	.LLST0
	.uleb128 0x11
	.string	"mac"
	.byte	0x1
	.byte	0xf6
	.long	0x78b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -688
	.uleb128 0x12
	.long	.LASF30
	.byte	0x1
	.byte	0xf7
	.long	0x79b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -700
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0xf8
	.long	0x79b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -696
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0xf9
	.long	0x79b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -692
	.uleb128 0x12
	.long	.LASF33
	.byte	0x1
	.byte	0xfa
	.long	0x7ab
	.uleb128 0x3
	.byte	0x91
	.sleb128 -520
	.uleb128 0x13
	.long	.LASF34
	.byte	0x1
	.byte	0xfc
	.long	0x68
	.long	0x2ef
	.uleb128 0x14
	.byte	0
	.uleb128 0x15
	.long	.LASF35
	.byte	0x1
	.value	0x102
	.long	0x68
	.long	0x301
	.uleb128 0x14
	.byte	0
	.uleb128 0x16
	.string	"msg"
	.byte	0x1
	.value	0x109
	.long	0x7bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x15
	.long	.LASF36
	.byte	0x1
	.value	0x10b
	.long	0x68
	.long	0x323
	.uleb128 0x14
	.byte	0
	.uleb128 0x17
	.long	0x203
	.long	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfc
	.long	0x3ff
	.uleb128 0x18
	.long	0x21e
	.long	.LLST1
	.uleb128 0x18
	.long	0x213
	.long	.LLST2
	.uleb128 0x19
	.long	.Ldebug_ranges0+0
	.uleb128 0x1a
	.long	0x229
	.long	.LLST3
	.uleb128 0x1a
	.long	0x232
	.long	.LLST4
	.uleb128 0x1b
	.long	0x23b
	.uleb128 0x1a
	.long	0x246
	.long	.LLST5
	.uleb128 0x1c
	.long	0x24f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x1d
	.long	.LVL4
	.long	0x7d7
	.uleb128 0x1d
	.long	.LVL5
	.long	0x7e2
	.uleb128 0x1d
	.long	.LVL7
	.long	0x7e2
	.uleb128 0x1d
	.long	.LVL8
	.long	0x7e2
	.uleb128 0x1d
	.long	.LVL10
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL11
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL12
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL13
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL15
	.long	0x7e2
	.uleb128 0x1d
	.long	.LVL17
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL18
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL19
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL20
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL22
	.long	0x804
	.uleb128 0x1d
	.long	.LVL24
	.long	0x7e2
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x1cc
	.long	.LBB16
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x105
	.long	0x459
	.uleb128 0x18
	.long	0x1e3
	.long	.LLST6
	.uleb128 0x18
	.long	0x1d8
	.long	.LLST7
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1a
	.long	0x1ee
	.long	.LLST8
	.uleb128 0x1a
	.long	0x1f7
	.long	.LLST9
	.uleb128 0x1d
	.long	.LVL40
	.long	0x80f
	.uleb128 0x1d
	.long	.LVL41
	.long	0x81b
	.uleb128 0x1d
	.long	.LVL43
	.long	0x826
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x185
	.long	.LBB20
	.long	.LBE20-.LBB20
	.byte	0x1
	.value	0x116
	.long	0x4d2
	.uleb128 0x18
	.long	0x1a0
	.long	.LLST10
	.uleb128 0x18
	.long	0x1ab
	.long	.LLST11
	.uleb128 0x18
	.long	0x1b5
	.long	.LLST12
	.uleb128 0x18
	.long	0x195
	.long	.LLST13
	.uleb128 0x20
	.long	.LBB21
	.long	.LBE21-.LBB21
	.uleb128 0x1a
	.long	0x1c0
	.long	.LLST14
	.uleb128 0x1d
	.long	.LVL71
	.long	0x831
	.uleb128 0x1d
	.long	.LVL72
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL73
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL74
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL75
	.long	0x7f9
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	0x112
	.long	.LBB22
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x11b
	.long	0x5fe
	.uleb128 0x18
	.long	0x122
	.long	.LLST15
	.uleb128 0x18
	.long	0x12d
	.long	.LLST16
	.uleb128 0x19
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x1a
	.long	0x138
	.long	.LLST17
	.uleb128 0x1c
	.long	0x143
	.uleb128 0x3
	.byte	0x91
	.sleb128 -616
	.uleb128 0x1c
	.long	0x14e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -680
	.uleb128 0x1c
	.long	0x159
	.uleb128 0x3
	.byte	0x91
	.sleb128 -648
	.uleb128 0x21
	.long	0xbf
	.long	.LBB24
	.long	.LBE24-.LBB24
	.byte	0x1
	.byte	0x60
	.long	0x5a2
	.uleb128 0x18
	.long	0xda
	.long	.LLST18
	.uleb128 0x18
	.long	0xfb
	.long	.LLST19
	.uleb128 0x18
	.long	0xf0
	.long	.LLST20
	.uleb128 0x18
	.long	0xe5
	.long	.LLST21
	.uleb128 0x18
	.long	0xcf
	.long	.LLST22
	.uleb128 0x20
	.long	.LBB25
	.long	.LBE25-.LBB25
	.uleb128 0x1a
	.long	0x106
	.long	.LLST23
	.uleb128 0x1d
	.long	.LVL85
	.long	0x831
	.uleb128 0x1d
	.long	.LVL86
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL88
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL89
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL90
	.long	0x7f9
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL79
	.long	0x83d
	.uleb128 0x1d
	.long	.LVL80
	.long	0x848
	.uleb128 0x1d
	.long	.LVL91
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL92
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL93
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL94
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL101
	.long	0x853
	.uleb128 0x1d
	.long	.LVL102
	.long	0x85e
	.uleb128 0x1d
	.long	.LVL103
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL104
	.long	0x7f9
	.byte	0
	.byte	0
	.uleb128 0x1d
	.long	.LVL1
	.long	0x869
	.uleb128 0x1d
	.long	.LVL27
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL28
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL29
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL30
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL31
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL32
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL33
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL34
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL35
	.long	0x874
	.uleb128 0x1d
	.long	.LVL36
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL37
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL38
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL39
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL46
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL47
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL48
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL49
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL50
	.long	0x880
	.uleb128 0x1d
	.long	.LVL52
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL53
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL55
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL56
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL57
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL58
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL59
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL60
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL61
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL62
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL63
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL64
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL65
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL66
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL67
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL68
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL69
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL70
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL76
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL77
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL96
	.long	0x7ed
	.uleb128 0x1d
	.long	.LVL97
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL98
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL99
	.long	0x7f9
	.uleb128 0x1d
	.long	.LVL100
	.long	0x88c
	.byte	0
	.uleb128 0xc
	.long	0x96
	.long	0x79b
	.uleb128 0xd
	.long	0x88
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.long	0x96
	.long	0x7ab
	.uleb128 0xd
	.long	0x88
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	0x8f
	.long	0x7bb
	.uleb128 0xd
	.long	0x88
	.byte	0x63
	.byte	0
	.uleb128 0xc
	.long	0x8f
	.long	0x7cc
	.uleb128 0x22
	.long	0x88
	.value	0x17f
	.byte	0
	.uleb128 0x23
	.long	.LASF55
	.byte	0xc
	.byte	0x17
	.long	0x6f
	.uleb128 0x24
	.long	.LASF37
	.long	.LASF37
	.byte	0x5
	.byte	0x28
	.uleb128 0x24
	.long	.LASF38
	.long	.LASF38
	.byte	0x5
	.byte	0x2e
	.uleb128 0x25
	.long	.LASF39
	.long	.LASF39
	.byte	0x6
	.value	0x20e
	.uleb128 0x24
	.long	.LASF40
	.long	.LASF40
	.byte	0x7
	.byte	0x50
	.uleb128 0x24
	.long	.LASF41
	.long	.LASF41
	.byte	0x8
	.byte	0x51
	.uleb128 0x25
	.long	.LASF42
	.long	.LASF42
	.byte	0x6
	.value	0x207
	.uleb128 0x24
	.long	.LASF43
	.long	.LASF43
	.byte	0x8
	.byte	0x9a
	.uleb128 0x24
	.long	.LASF44
	.long	.LASF44
	.byte	0x8
	.byte	0x8c
	.uleb128 0x25
	.long	.LASF45
	.long	.LASF45
	.byte	0x9
	.value	0x10a
	.uleb128 0x24
	.long	.LASF46
	.long	.LASF46
	.byte	0xa
	.byte	0x51
	.uleb128 0x24
	.long	.LASF47
	.long	.LASF47
	.byte	0xa
	.byte	0x59
	.uleb128 0x24
	.long	.LASF48
	.long	.LASF48
	.byte	0x9
	.byte	0xc8
	.uleb128 0x24
	.long	.LASF49
	.long	.LASF49
	.byte	0xb
	.byte	0x7d
	.uleb128 0x24
	.long	.LASF34
	.long	.LASF34
	.byte	0x1
	.byte	0xfc
	.uleb128 0x25
	.long	.LASF35
	.long	.LASF35
	.byte	0x1
	.value	0x102
	.uleb128 0x25
	.long	.LASF36
	.long	.LASF36
	.byte	0x1
	.value	0x10b
	.uleb128 0x26
	.long	.LASF56
	.long	.LASF56
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.long	.LVL26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52-1
	.value	0x1
	.byte	0x50
	.long	.LVL52-1
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	.LVL54
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	.LVL55-1
	.long	.LVL75
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL26
	.value	0x4
	.byte	0x75
	.sleb128 -692
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST3:
	.long	.LVL2
	.long	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL14
	.long	.LVL15-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL2
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x50
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL2
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL9
	.long	.LVL15
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LVL24
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL39
	.long	.LVL45
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL39
	.long	.LVL45
	.value	0x4
	.byte	0x75
	.sleb128 -688
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL39
	.long	.LVL42
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL42
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL40
	.long	.LVL41-1
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST10:
	.long	.LVL70
	.long	.LVL75
	.value	0x4
	.byte	0xa
	.value	0x180
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL70
	.long	.LVL75
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL70
	.long	.LVL75
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL70
	.long	.LVL75
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL71
	.long	.LVL72-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL78
	.long	.LVL95
	.value	0x6
	.byte	0x3
	.long	.LC20
	.byte	0x9f
	.long	.LVL100
	.long	.LVL107
	.value	0x6
	.byte	0x3
	.long	.LC20
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL78
	.long	.LVL95
	.value	0x1
	.byte	0x53
	.long	.LVL100
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST17:
	.long	.LVL102
	.long	.LVL103-1
	.value	0x1
	.byte	0x50
	.long	.LVL105
	.long	.LVL106
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL80
	.long	.LVL90
	.value	0x3
	.byte	0x8
	.byte	0x60
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL80
	.long	.LVL90
	.value	0x6
	.byte	0x3
	.long	.LC20
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL80
	.long	.LVL87
	.value	0x1
	.byte	0x57
	.long	.LVL87
	.long	.LVL90
	.value	0x4
	.byte	0x75
	.sleb128 -640
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x56
	.long	.LVL81
	.long	.LVL82
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL82
	.long	.LVL83
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL83
	.long	.LVL84
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL84
	.long	.LVL85-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL85-1
	.long	.LVL90
	.value	0x4
	.byte	0x75
	.sleb128 -672
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL80
	.long	.LVL81
	.value	0x4
	.byte	0x75
	.sleb128 -608
	.byte	0x9f
	.long	.LVL81
	.long	.LVL90
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST23:
	.long	.LVL85
	.long	.LVL86-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB12
	.long	.LBE12
	.long	.LBB15
	.long	.LBE15
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB22
	.long	.LBE22
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LFB10
	.long	.LFE10
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.string	"strncpy"
.LASF28:
	.string	"get_hex_version"
.LASF30:
	.string	"version"
.LASF19:
	.string	"topic"
.LASF26:
	.string	"random"
.LASF31:
	.string	"random_num"
.LASF2:
	.string	"short int"
.LASF10:
	.string	"size_t"
.LASF12:
	.string	"sizetype"
.LASF23:
	.string	"topic_name"
.LASF35:
	.string	"hal_wifi_get_mac_addr"
.LASF42:
	.string	"aos_now"
.LASF14:
	.string	"uint8_t"
.LASF34:
	.string	"aos_get_kernel_version"
.LASF44:
	.string	"rand"
.LASF39:
	.string	"aos_now_ms"
.LASF6:
	.string	"long long int"
.LASF32:
	.string	"chip_code"
.LASF4:
	.string	"long int"
.LASF48:
	.string	"printf"
.LASF38:
	.string	"strtok"
.LASF9:
	.string	"__uint8_t"
.LASF24:
	.string	"active_gen_update_msg"
.LASF55:
	.string	"aos_log_level"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"atoi"
.LASF45:
	.string	"snprintf"
.LASF11:
	.string	"long double"
.LASF18:
	.string	"device_name"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF8:
	.string	"unsigned int"
.LASF25:
	.string	"active_info"
.LASF47:
	.string	"HAL_GetDeviceName"
.LASF20:
	.string	"active_gen_topic_name"
.LASF17:
	.string	"product_key"
.LASF13:
	.string	"char"
.LASF21:
	.string	"active_publish"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"buf_len"
.LASF54:
	.string	"version_report"
.LASF40:
	.string	"csp_printf"
.LASF5:
	.string	"long unsigned int"
.LASF46:
	.string	"HAL_GetProductKey"
.LASF22:
	.string	"topic_type"
.LASF49:
	.string	"mqtt_publish"
.LASF27:
	.string	"seed"
.LASF51:
	.string	"src/version_report.c"
.LASF50:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF33:
	.string	"output"
.LASF36:
	.string	"aos_get_version_info"
.LASF52:
	.string	"/home/stone/Documents/pca"
.LASF15:
	.string	"double"
.LASF56:
	.string	"__stack_chk_fail"
.LASF43:
	.string	"srand"
.LASF53:
	.string	"produce_random"
.LASF29:
	.string	"str_ver"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
