	.file	"ota_service.c"
	.text
.Ltext0:
	.section	.text.unlikely.do_update,"ax",@progbits
.LCOLDB0:
	.section	.text.do_update,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.do_update
.Ltext_cold0:
	.section	.text.do_update
	.globl	do_update
	.type	do_update, @function
do_update:
.LFB21:
	.file 1 "framework/fota/ota_service.c"
	.loc 1 74 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 78 0
	pushl	12(%ebp)
	call	ota_set_resp_msg
.LVL1:
	.loc 1 79 0
	call	ota_get_resp_msg
.LVL2:
	addl	$16, %esp
	movl	%eax, 12(%ebp)
	movl	$update_action, 8(%ebp)
	.loc 1 81 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 79 0
	jmp	aos_schedule_call
.LVL3:
	.cfi_endproc
.LFE21:
	.size	do_update, .-do_update
	.section	.text.unlikely.do_update
.LCOLDE0:
	.section	.text.do_update
.LHOTE0:
	.section	.text.unlikely.ota_hal_finish_cb,"ax",@progbits
.LCOLDB1:
	.section	.text.ota_hal_finish_cb,"ax",@progbits
.LHOTB1:
	.type	ota_hal_finish_cb, @function
ota_hal_finish_cb:
.LFB19:
	.loc 1 38 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 38 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 40 0
	movl	12(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -32(%ebp)
	.loc 1 41 0
	movl	8(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 42 0
	call	ota_get_firmware_type
.LVL5:
	movl	%eax, -24(%ebp)
	.loc 1 43 0
	call	ota_get_splict_size
.LVL6:
	movl	%eax, -20(%ebp)
	.loc 1 44 0
	call	ota_get_diff_version
.LVL7:
	movb	%al, -16(%ebp)
	.loc 1 45 0
	call	hal_ota_get_default_module
.LVL8:
	pushl	%edx
	pushl	%edx
	leal	-32(%ebp), %edx
	pushl	%edx
	pushl	%eax
	call	hal_ota_set_boot
.LVL9:
	.loc 1 46 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L4
	call	__stack_chk_fail
.LVL10:
.L4:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	ota_hal_finish_cb, .-ota_hal_finish_cb
	.section	.text.unlikely.ota_hal_finish_cb
.LCOLDE1:
	.section	.text.ota_hal_finish_cb
.LHOTE1:
	.section	.text.unlikely.ota_hal_write_cb,"ax",@progbits
.LCOLDB2:
	.section	.text.ota_hal_write_cb,"ax",@progbits
.LHOTB2:
	.type	ota_hal_write_cb, @function
ota_hal_write_cb:
.LFB18:
	.loc 1 33 0
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
	.loc 1 33 0
	movl	16(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 34 0
	call	hal_ota_get_default_module
.LVL12:
	movl	$0, 12(%ebp)
	movl	%eax, 8(%ebp)
	movl	%esi, 20(%ebp)
	movl	%ebx, 16(%ebp)
	.loc 1 35 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 34 0
	jmp	hal_ota_write
.LVL13:
	.cfi_endproc
.LFE18:
	.size	ota_hal_write_cb, .-ota_hal_write_cb
	.section	.text.unlikely.ota_hal_write_cb
.LCOLDE2:
	.section	.text.ota_hal_write_cb
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"do update buf is null"
.LC4:
	.string	"[%06d]<E> "
.LC5:
	.string	"\r\n"
	.section	.text.unlikely.update_action,"ax",@progbits
.LCOLDB6:
	.section	.text.update_action,"ax",@progbits
.LHOTB6:
	.type	update_action, @function
update_action:
.LFB20:
	.loc 1 56 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$1264, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 56 0
	movl	8(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 58 0
	testl	%edx, %edx
	jne	.L10
.LVL15:
.LBB22:
.LBB23:
	.loc 1 59 0
	testb	$2, aos_log_level
	je	.L9
	call	aos_now_ms
.LVL16:
	pushl	%edx
	pushl	$.LC3
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL17:
	movl	$.LC3, (%esp)
	call	csp_printf
.LVL18:
	movl	$.LC5, (%esp)
	call	csp_printf
.LVL19:
	jmp	.L18
.LVL20:
.L10:
.LBE23:
.LBE22:
	.loc 1 64 0
	leal	-1272(%ebp), %ebx
	xorl	%eax, %eax
	movl	$315, %ecx
.LBB24:
.LBB25:
	.loc 1 23 0
	movl	$ota_hal_write_cb, ota_write_flash_callback
	.loc 1 24 0
	movl	$ota_hal_finish_cb, ota_finish_callbak
.LBE25:
.LBE24:
	.loc 1 64 0
	movl	%ebx, %edi
	rep stosl
.LVL21:
	.loc 1 67 0
	orl	$-1, %ecx
	movl	%edx, %edi
	repnz scasb
.LVL22:
	pushl	%eax
	pushl	%ebx
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	%edx
	call	platform_ota_parse_response
.LVL23:
	addl	$16, %esp
	testb	%al, %al
	jne	.L9
	.loc 1 68 0
	pushl	ota_finish_callbak
	pushl	ota_write_flash_callback
	pushl	$ota_request_parmas
	pushl	%ebx
	call	ota_do_update_packet
.LVL24:
.L18:
	addl	$16, %esp
.L9:
	.loc 1 71 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L13
	call	__stack_chk_fail
.LVL25:
.L13:
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
.LFE20:
	.size	update_action, .-update_action
	.section	.text.unlikely.update_action
.LCOLDE6:
	.section	.text.update_action
.LHOTE6:
	.section	.rodata.str1.1
.LC7:
	.string	"cancel update buf is null"
	.section	.text.unlikely.cancel_update,"ax",@progbits
.LCOLDB8:
	.section	.text.cancel_update,"ax",@progbits
.LHOTB8:
	.globl	cancel_update
	.type	cancel_update, @function
cancel_update:
.LFB22:
	.loc 1 84 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$1264, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 84 0
	movl	12(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 86 0
	testl	%edx, %edx
	jne	.L20
.LVL27:
.LBB30:
.LBB31:
	.loc 1 87 0
	testb	$2, aos_log_level
	je	.L19
	call	aos_now_ms
.LVL28:
	pushl	%edx
	pushl	$.LC7
	pushl	%eax
	pushl	$.LC4
	call	csp_printf
.LVL29:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL30:
	movl	$.LC5, (%esp)
	call	csp_printf
.LVL31:
	jmp	.L27
.LVL32:
.L20:
.LBE31:
.LBE30:
	.loc 1 92 0
	xorl	%eax, %eax
	movl	%edx, %edi
	orl	$-1, %ecx
	repnz scasb
.LVL33:
	leal	-1272(%ebp), %ebx
	pushl	%eax
	notl	%ecx
	decl	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	call	platform_ota_parse_cancel_responce
.LVL34:
	.loc 1 93 0
	movl	%ebx, (%esp)
	call	ota_cancel_update_packet
.LVL35:
.L27:
	addl	$16, %esp
.L19:
	.loc 1 94 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L22
	call	__stack_chk_fail
.LVL36:
.L22:
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
.LFE22:
	.size	cancel_update, .-cancel_update
	.section	.text.unlikely.cancel_update
.LCOLDE8:
	.section	.text.cancel_update
.LHOTE8:
	.section	.text.unlikely.ota_hal_init,"ax",@progbits
.LCOLDB9:
	.section	.text.ota_hal_init,"ax",@progbits
.LHOTB9:
	.globl	ota_hal_init
	.type	ota_hal_init, @function
ota_hal_init:
.LFB17:
	.loc 1 28 0
	.cfi_startproc
.LVL37:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 29 0
	leal	8(%ebp), %eax
.LVL38:
	pushl	%eax
	call	hal_ota_init
.LVL39:
	.loc 1 30 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL40:
	ret
	.cfi_endproc
.LFE17:
	.size	ota_hal_init, .-ota_hal_init
	.section	.text.unlikely.ota_hal_init
.LCOLDE9:
	.section	.text.ota_hal_init
.LHOTE9:
	.section	.text.unlikely.ota_check_update,"ax",@progbits
.LCOLDB10:
	.section	.text.ota_check_update,"ax",@progbits
.LHOTB10:
	.globl	ota_check_update
	.type	ota_check_update, @function
ota_check_update:
.LFB23:
	.loc 1 97 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 98 0
	movl	$ota_request_parmas, 8(%ebp)
.LVL42:
	.loc 1 99 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 98 0
	jmp	platform_ota_publish_request
.LVL43:
	.cfi_endproc
.LFE23:
	.size	ota_check_update, .-ota_check_update
	.section	.text.unlikely.ota_check_update
.LCOLDE10:
	.section	.text.ota_check_update
.LHOTE10:
	.section	.text.unlikely.ota_regist_upgrade,"ax",@progbits
.LCOLDB11:
	.section	.text.ota_regist_upgrade,"ax",@progbits
.LHOTB11:
	.globl	ota_regist_upgrade
	.type	ota_regist_upgrade, @function
ota_regist_upgrade:
.LFB24:
	.loc 1 102 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 103 0
	pushl	$do_update
	call	platform_ota_subscribe_upgrade
.LVL44:
	.loc 1 104 0
	call	ota_post_version_msg
.LVL45:
	.loc 1 105 0
	movl	$cancel_update, (%esp)
	call	platform_ota_cancel_upgrade
.LVL46:
	.loc 1 106 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	ota_regist_upgrade, .-ota_regist_upgrade
	.section	.text.unlikely.ota_regist_upgrade
.LCOLDE11:
	.section	.text.ota_regist_upgrade
.LHOTE11:
	.section	.rodata
.LC12:
	.string	""
	.string	""
	.section	.text.unlikely.ota_service_event,"ax",@progbits
.LCOLDB13:
	.section	.text.ota_service_event,"ax",@progbits
.LHOTB13:
	.globl	ota_service_event
	.type	ota_service_event, @function
ota_service_event:
.LFB26:
	.loc 1 124 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 124 0
	movl	8(%ebp), %eax
	.loc 1 125 0
	cmpl	$327681, 4(%eax)
	jne	.L34
	.loc 1 126 0
	cmpl	$0, ota_init
	jne	.L34
.LVL48:
.LBB36:
.LBB37:
	.loc 1 130 0
	subl	$12, %esp
	pushl	8(%eax)
	.loc 1 129 0
	movl	$1, ota_init
	.loc 1 130 0
	call	platform_ota_init
.LVL49:
.LBB38:
.LBB39:
	.loc 1 114 0
	call	aos_get_app_version
.LVL50:
	.loc 1 116 0
	movl	$.LC12, ota_request_parmas+4
	.loc 1 114 0
	movl	%eax, ota_request_parmas
	.loc 1 120 0
	call	platform_ota_get_id
.LVL51:
.LBE39:
.LBE38:
	.loc 1 132 0
	addl	$16, %esp
.LBB41:
.LBB40:
	.loc 1 120 0
	movl	%eax, ota_request_parmas+12
.LBE40:
.LBE41:
.LBE37:
.LBE36:
	.loc 1 134 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB43:
.LBB42:
	.loc 1 132 0
	jmp	ota_regist_upgrade
.LVL52:
.L34:
	.cfi_restore_state
.LBE42:
.LBE43:
	.loc 1 134 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	ota_service_event, .-ota_service_event
	.section	.text.unlikely.ota_service_event
.LCOLDE13:
	.section	.text.ota_service_event
.LHOTE13:
	.section	.text.unlikely.ota_service_init,"ax",@progbits
.LCOLDB14:
	.section	.text.ota_service_init,"ax",@progbits
.LHOTB14:
	.globl	ota_service_init
	.type	ota_service_init, @function
ota_service_init:
.LFB27:
	.loc 1 137 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 138 0
	pushl	$0
	pushl	$ota_service_event
	pushl	$1
	call	aos_register_event_filter
.LVL53:
	.loc 1 139 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	ota_service_init, .-ota_service_init
	.section	.text.unlikely.ota_service_init
.LCOLDE14:
	.section	.text.ota_service_init
.LHOTE14:
	.section	.bss.ota_finish_callbak,"aw",@nobits
	.align 4
	.type	ota_finish_callbak, @object
	.size	ota_finish_callbak, 4
ota_finish_callbak:
	.zero	4
	.section	.bss.ota_write_flash_callback,"aw",@nobits
	.align 4
	.type	ota_write_flash_callback, @object
	.size	ota_write_flash_callback, 4
ota_write_flash_callback:
	.zero	4
	.section	.bss.ota_request_parmas,"aw",@nobits
	.align 4
	.type	ota_request_parmas, @object
	.size	ota_request_parmas, 16
ota_request_parmas:
	.zero	16
	.section	.bss.ota_init,"aw",@nobits
	.align 4
	.type	ota_init, @object
	.size	ota_init, 4
ota_init:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.do_update
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/aos/yloop.h"
	.file 5 "./include/hal/ota.h"
	.file 6 "./include/hal/sensor.h"
	.file 7 "./framework/fota/./platform/ota_transport.h"
	.file 8 "framework/fota/ota_update_manifest.h"
	.file 9 "framework/fota/ota_util.h"
	.file 10 "./include/aos/kernel.h"
	.file 11 "./include/aos/internal/log_impl.h"
	.file 12 "./include/aos/version.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x999
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF123
	.byte	0xc
	.long	.LASF124
	.long	.LASF125
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x1d
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x2b
	.long	0x6c
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x3f
	.long	0x7e
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x2
	.byte	0x41
	.long	0x90
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x6
	.byte	0x4
	.long	0xb4
	.uleb128 0x7
	.long	0xa7
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0x18
	.long	0x48
	.uleb128 0x4
	.long	.LASF17
	.byte	0x3
	.byte	0x24
	.long	0x61
	.uleb128 0x4
	.long	.LASF18
	.byte	0x3
	.byte	0x2c
	.long	0x73
	.uleb128 0x4
	.long	.LASF19
	.byte	0x3
	.byte	0x30
	.long	0x85
	.uleb128 0x8
	.long	.LASF126
	.byte	0x4
	.long	0x25
	.byte	0xb
	.byte	0x12
	.long	0x120
	.uleb128 0x9
	.long	.LASF20
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF21
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0x2
	.uleb128 0xa
	.long	.LASF24
	.byte	0x3
	.uleb128 0xa
	.long	.LASF25
	.byte	0x4
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0x4
	.byte	0x41
	.long	0x165
	.uleb128 0xc
	.long	.LASF27
	.byte	0x4
	.byte	0x43
	.long	0xda
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.byte	0x45
	.long	0xc4
	.byte	0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x4
	.byte	0x47
	.long	0xc4
	.byte	0x6
	.uleb128 0xc
	.long	.LASF30
	.byte	0x4
	.byte	0x49
	.long	0x90
	.byte	0x8
	.uleb128 0xc
	.long	.LASF31
	.byte	0x4
	.byte	0x4b
	.long	0x90
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF32
	.byte	0x4
	.byte	0x4c
	.long	0x120
	.uleb128 0x6
	.byte	0x4
	.long	0x165
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF33
	.uleb128 0xd
	.byte	0x4
	.long	0x2c
	.byte	0x5
	.byte	0x13
	.long	0x19c
	.uleb128 0xa
	.long	.LASF34
	.byte	0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.uleb128 0xa
	.long	.LASF36
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF37
	.byte	0x5
	.byte	0x17
	.long	0x17d
	.uleb128 0xd
	.byte	0x4
	.long	0x2c
	.byte	0x5
	.byte	0x1a
	.long	0x1c0
	.uleb128 0xa
	.long	.LASF38
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF40
	.byte	0x5
	.byte	0x1d
	.long	0x1a7
	.uleb128 0xd
	.byte	0x4
	.long	0x2c
	.byte	0x5
	.byte	0x27
	.long	0x1e4
	.uleb128 0xa
	.long	.LASF41
	.byte	0
	.uleb128 0xa
	.long	.LASF42
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF43
	.byte	0x5
	.byte	0x2a
	.long	0x1cb
	.uleb128 0xb
	.byte	0x14
	.byte	0x5
	.byte	0x2c
	.long	0x234
	.uleb128 0xc
	.long	.LASF44
	.byte	0x5
	.byte	0x2e
	.long	0x19c
	.byte	0
	.uleb128 0xc
	.long	.LASF45
	.byte	0x5
	.byte	0x2f
	.long	0x1c0
	.byte	0x4
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5
	.byte	0x30
	.long	0x1e4
	.byte	0x8
	.uleb128 0xc
	.long	.LASF47
	.byte	0x5
	.byte	0x31
	.long	0xda
	.byte	0xc
	.uleb128 0xc
	.long	.LASF48
	.byte	0x5
	.byte	0x32
	.long	0xb9
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.long	.LASF49
	.byte	0x5
	.byte	0x33
	.long	0x1ef
	.uleb128 0x6
	.byte	0x4
	.long	0xb9
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF50
	.uleb128 0xd
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x48
	.long	0x2a7
	.uleb128 0xa
	.long	.LASF51
	.byte	0
	.uleb128 0xa
	.long	.LASF52
	.byte	0x1
	.uleb128 0xa
	.long	.LASF53
	.byte	0x2
	.uleb128 0xa
	.long	.LASF54
	.byte	0x3
	.uleb128 0xa
	.long	.LASF55
	.byte	0x4
	.uleb128 0xa
	.long	.LASF56
	.byte	0x5
	.uleb128 0xa
	.long	.LASF57
	.byte	0x6
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.uleb128 0xa
	.long	.LASF59
	.byte	0x8
	.uleb128 0xa
	.long	.LASF60
	.byte	0x9
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.uleb128 0xa
	.long	.LASF62
	.byte	0xb
	.uleb128 0xa
	.long	.LASF63
	.byte	0xc
	.byte	0
	.uleb128 0xe
	.long	0xa7
	.long	0x2b7
	.uleb128 0xf
	.long	0x9e
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.byte	0x10
	.byte	0x7
	.byte	0x10
	.long	0x2f0
	.uleb128 0xc
	.long	.LASF64
	.byte	0x7
	.byte	0x11
	.long	0xae
	.byte	0
	.uleb128 0xc
	.long	.LASF65
	.byte	0x7
	.byte	0x12
	.long	0xae
	.byte	0x4
	.uleb128 0xc
	.long	.LASF66
	.byte	0x7
	.byte	0x13
	.long	0xae
	.byte	0x8
	.uleb128 0xc
	.long	.LASF67
	.byte	0x7
	.byte	0x14
	.long	0xae
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.long	.LASF68
	.byte	0x7
	.byte	0x15
	.long	0x2b7
	.uleb128 0x10
	.value	0x4ec
	.byte	0x7
	.byte	0x17
	.long	0x35c
	.uleb128 0xc
	.long	.LASF64
	.byte	0x7
	.byte	0x18
	.long	0x2a7
	.byte	0
	.uleb128 0xc
	.long	.LASF65
	.byte	0x7
	.byte	0x19
	.long	0x2a7
	.byte	0x40
	.uleb128 0xc
	.long	.LASF66
	.byte	0x7
	.byte	0x1a
	.long	0xae
	.byte	0x80
	.uleb128 0xc
	.long	.LASF69
	.byte	0x7
	.byte	0x1b
	.long	0x35c
	.byte	0x84
	.uleb128 0x11
	.long	.LASF70
	.byte	0x7
	.byte	0x1c
	.long	0x25
	.value	0x484
	.uleb128 0x11
	.long	.LASF67
	.byte	0x7
	.byte	0x1d
	.long	0x2a7
	.value	0x488
	.uleb128 0x12
	.string	"md5"
	.byte	0x7
	.byte	0x1e
	.long	0x36d
	.value	0x4c8
	.byte	0
	.uleb128 0xe
	.long	0xa7
	.long	0x36d
	.uleb128 0x13
	.long	0x9e
	.value	0x3ff
	.byte	0
	.uleb128 0xe
	.long	0xa7
	.long	0x37d
	.uleb128 0xf
	.long	0x9e
	.byte	0x21
	.byte	0
	.uleb128 0x4
	.long	.LASF71
	.byte	0x7
	.byte	0x1f
	.long	0x2fb
	.uleb128 0x4
	.long	.LASF72
	.byte	0x8
	.byte	0xc
	.long	0x393
	.uleb128 0x6
	.byte	0x4
	.long	0x399
	.uleb128 0x14
	.long	0x25
	.long	0x3b7
	.uleb128 0x15
	.long	0xcf
	.uleb128 0x15
	.long	0x23f
	.uleb128 0x15
	.long	0xcf
	.uleb128 0x15
	.long	0x25
	.byte	0
	.uleb128 0x4
	.long	.LASF73
	.byte	0x8
	.byte	0xf
	.long	0x3c2
	.uleb128 0x6
	.byte	0x4
	.long	0x3c8
	.uleb128 0x14
	.long	0x25
	.long	0x3dc
	.uleb128 0x15
	.long	0x1c0
	.uleb128 0x15
	.long	0xa5
	.byte	0
	.uleb128 0x16
	.long	.LASF127
	.byte	0xb
	.byte	0xd
	.long	0x2c
	.byte	0x3
	.uleb128 0x17
	.long	.LASF76
	.byte	0x1
	.byte	0x14
	.byte	0x1
	.long	0x40b
	.uleb128 0x18
	.long	.LASF74
	.byte	0x1
	.byte	0x14
	.long	0x388
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.byte	0x15
	.long	0x3b7
	.byte	0
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x42e
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x37
	.long	0xa5
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x3f
	.long	0x37d
	.byte	0
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	0x45c
	.uleb128 0x19
	.string	"len"
	.byte	0x1
	.byte	0x53
	.long	0x25
	.uleb128 0x19
	.string	"buf"
	.byte	0x1
	.byte	0x53
	.long	0xae
	.uleb128 0x1a
	.long	.LASF78
	.byte	0x1
	.byte	0x5b
	.long	0x37d
	.byte	0
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.long	0x47f
	.uleb128 0x18
	.long	.LASF81
	.byte	0x1
	.byte	0x7b
	.long	0x170
	.uleb128 0x18
	.long	.LASF82
	.byte	0x1
	.byte	0x7b
	.long	0xa5
	.byte	0
	.uleb128 0x1c
	.long	.LASF90
	.byte	0x1
	.byte	0x49
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cc
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x49
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x49
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LVL1
	.long	0x88a
	.uleb128 0x1e
	.long	.LVL2
	.long	0x895
	.uleb128 0x1f
	.long	.LVL3
	.long	0x8a0
	.byte	0
	.uleb128 0x20
	.long	.LASF85
	.byte	0x1
	.byte	0x25
	.long	0x25
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x546
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.byte	0x25
	.long	0x1c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.byte	0x25
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.long	.LASF94
	.byte	0x1
	.byte	0x27
	.long	0x234
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1e
	.long	.LVL5
	.long	0x8ab
	.uleb128 0x1e
	.long	.LVL6
	.long	0x8b6
	.uleb128 0x1e
	.long	.LVL7
	.long	0x8c1
	.uleb128 0x1e
	.long	.LVL8
	.long	0x8cc
	.uleb128 0x1e
	.long	.LVL9
	.long	0x8d7
	.uleb128 0x1e
	.long	.LVL10
	.long	0x8e2
	.byte	0
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.byte	0x20
	.long	0x25
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x5b1
	.uleb128 0x21
	.long	.LASF87
	.byte	0x1
	.byte	0x20
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x20
	.long	0x23f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF88
	.byte	0x1
	.byte	0x20
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF28
	.byte	0x1
	.byte	0x20
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.long	.LVL12
	.long	0x8cc
	.uleb128 0x23
	.long	.LVL13
	.long	0x8eb
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x40b
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x65a
	.uleb128 0x26
	.long	0x417
	.long	.LLST0
	.uleb128 0x27
	.long	0x422
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x28
	.long	.LBB22
	.long	.LBE22-.LBB22
	.long	0x620
	.uleb128 0x26
	.long	0x417
	.long	.LLST1
	.uleb128 0x29
	.long	.LBB23
	.long	.LBE23-.LBB23
	.uleb128 0x2a
	.long	0x422
	.uleb128 0x1e
	.long	.LVL16
	.long	0x8f6
	.uleb128 0x1e
	.long	.LVL17
	.long	0x902
	.uleb128 0x1e
	.long	.LVL18
	.long	0x902
	.uleb128 0x1e
	.long	.LVL19
	.long	0x902
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0x3e8
	.long	.LBB24
	.long	.LBE24-.LBB24
	.byte	0x1
	.byte	0x42
	.long	0x63e
	.uleb128 0x2c
	.long	0x3ff
	.uleb128 0x2c
	.long	0x3f4
	.byte	0
	.uleb128 0x1e
	.long	.LVL23
	.long	0x90d
	.uleb128 0x1e
	.long	.LVL24
	.long	0x918
	.uleb128 0x1e
	.long	.LVL25
	.long	0x8e2
	.byte	0
	.uleb128 0x25
	.long	0x42e
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f6
	.uleb128 0x2d
	.long	0x43a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	0x445
	.long	.LLST2
	.uleb128 0x27
	.long	0x450
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1280
	.uleb128 0x28
	.long	.LBB30
	.long	.LBE30-.LBB30
	.long	0x6da
	.uleb128 0x26
	.long	0x43a
	.long	.LLST3
	.uleb128 0x26
	.long	0x445
	.long	.LLST4
	.uleb128 0x29
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x2a
	.long	0x450
	.uleb128 0x1e
	.long	.LVL28
	.long	0x8f6
	.uleb128 0x1e
	.long	.LVL29
	.long	0x902
	.uleb128 0x1e
	.long	.LVL30
	.long	0x902
	.uleb128 0x1e
	.long	.LVL31
	.long	0x902
	.byte	0
	.byte	0
	.uleb128 0x1e
	.long	.LVL34
	.long	0x923
	.uleb128 0x1e
	.long	.LVL35
	.long	0x92e
	.uleb128 0x1e
	.long	.LVL36
	.long	0x8e2
	.byte	0
	.uleb128 0x2e
	.long	.LASF128
	.byte	0x1
	.byte	0x1b
	.long	0x25
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x728
	.uleb128 0x2f
	.long	.LASF89
	.byte	0x1
	.byte	0x1b
	.long	0xda
	.long	.LLST5
	.uleb128 0x1e
	.long	.LVL39
	.long	0x939
	.byte	0
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.byte	0x60
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x76f
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.byte	0x60
	.long	0xae
	.long	.LLST6
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x60
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LVL43
	.long	0x944
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	ota_request_parmas
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF92
	.byte	0x1
	.byte	0x65
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a0
	.uleb128 0x1e
	.long	.LVL44
	.long	0x94f
	.uleb128 0x1e
	.long	.LVL45
	.long	0x95a
	.uleb128 0x1e
	.long	.LVL46
	.long	0x965
	.byte	0
	.uleb128 0x31
	.long	.LASF129
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uleb128 0x25
	.long	0x45c
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x81c
	.uleb128 0x2d
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	0x473
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x32
	.long	.Ldebug_ranges0+0
	.uleb128 0x26
	.long	0x473
	.long	.LLST7
	.uleb128 0x26
	.long	0x468
	.long	.LLST8
	.uleb128 0x33
	.long	0x7a0
	.long	.LBB38
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x83
	.long	0x808
	.uleb128 0x1e
	.long	.LVL50
	.long	0x970
	.uleb128 0x1e
	.long	.LVL51
	.long	0x97b
	.byte	0
	.uleb128 0x1e
	.long	.LVL49
	.long	0x986
	.uleb128 0x1f
	.long	.LVL52
	.long	0x76f
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.byte	0x88
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x83b
	.uleb128 0x1e
	.long	.LVL53
	.long	0x991
	.byte	0
	.uleb128 0x22
	.long	.LASF95
	.byte	0x1
	.byte	0xe
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	ota_init
	.uleb128 0x22
	.long	.LASF96
	.byte	0x1
	.byte	0xf
	.long	0x2f0
	.uleb128 0x5
	.byte	0x3
	.long	ota_request_parmas
	.uleb128 0x22
	.long	.LASF97
	.byte	0x1
	.byte	0x11
	.long	0x388
	.uleb128 0x5
	.byte	0x3
	.long	ota_write_flash_callback
	.uleb128 0x22
	.long	.LASF98
	.byte	0x1
	.byte	0x12
	.long	0x3b7
	.uleb128 0x5
	.byte	0x3
	.long	ota_finish_callbak
	.uleb128 0x34
	.long	.LASF130
	.byte	0xd
	.byte	0x17
	.long	0x2c
	.uleb128 0x35
	.long	.LASF99
	.long	.LASF99
	.byte	0x8
	.byte	0x1b
	.uleb128 0x35
	.long	.LASF100
	.long	.LASF100
	.byte	0x8
	.byte	0x19
	.uleb128 0x35
	.long	.LASF101
	.long	.LASF101
	.byte	0x4
	.byte	0xa9
	.uleb128 0x35
	.long	.LASF102
	.long	.LASF102
	.byte	0x9
	.byte	0x56
	.uleb128 0x35
	.long	.LASF103
	.long	.LASF103
	.byte	0x9
	.byte	0x5e
	.uleb128 0x35
	.long	.LASF104
	.long	.LASF104
	.byte	0x9
	.byte	0x5a
	.uleb128 0x35
	.long	.LASF105
	.long	.LASF105
	.byte	0x5
	.byte	0x99
	.uleb128 0x35
	.long	.LASF106
	.long	.LASF106
	.byte	0x5
	.byte	0x91
	.uleb128 0x36
	.long	.LASF131
	.long	.LASF131
	.uleb128 0x35
	.long	.LASF107
	.long	.LASF107
	.byte	0x5
	.byte	0x72
	.uleb128 0x37
	.long	.LASF108
	.long	.LASF108
	.byte	0xa
	.value	0x20e
	.uleb128 0x35
	.long	.LASF109
	.long	.LASF109
	.byte	0xb
	.byte	0x50
	.uleb128 0x35
	.long	.LASF110
	.long	.LASF110
	.byte	0x7
	.byte	0x25
	.uleb128 0x35
	.long	.LASF111
	.long	.LASF111
	.byte	0x8
	.byte	0x12
	.uleb128 0x35
	.long	.LASF112
	.long	.LASF112
	.byte	0x7
	.byte	0x27
	.uleb128 0x35
	.long	.LASF113
	.long	.LASF113
	.byte	0x8
	.byte	0x15
	.uleb128 0x35
	.long	.LASF114
	.long	.LASF114
	.byte	0x5
	.byte	0x61
	.uleb128 0x35
	.long	.LASF115
	.long	.LASF115
	.byte	0x7
	.byte	0x2d
	.uleb128 0x35
	.long	.LASF116
	.long	.LASF116
	.byte	0x7
	.byte	0x29
	.uleb128 0x35
	.long	.LASF117
	.long	.LASF117
	.byte	0x8
	.byte	0x17
	.uleb128 0x35
	.long	.LASF118
	.long	.LASF118
	.byte	0x7
	.byte	0x2b
	.uleb128 0x35
	.long	.LASF119
	.long	.LASF119
	.byte	0xc
	.byte	0x22
	.uleb128 0x35
	.long	.LASF120
	.long	.LASF120
	.byte	0x7
	.byte	0x33
	.uleb128 0x35
	.long	.LASF121
	.long	.LASF121
	.byte	0x7
	.byte	0x21
	.uleb128 0x35
	.long	.LASF122
	.long	.LASF122
	.byte	0x4
	.byte	0x5e
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2117
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0xb
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL14
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 0
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
	.long	.LVL26
	.long	.LVL33
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL27
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL27
	.long	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL37
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL38
	.long	.LVL39-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL39-1
	.long	.LVL40
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL40
	.long	.LFE17
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL48
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL48
	.long	.LVL49-1
	.value	0x1
	.byte	0x50
	.long	.LVL49-1
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB36
	.long	.LBE36
	.long	.LBB43
	.long	.LBE43
	.long	0
	.long	0
	.long	.LBB38
	.long	.LBE38
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LFB21
	.long	.LFE21
	.long	.LFB19
	.long	.LFE19
	.long	.LFB18
	.long	.LFE18
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	.LFB17
	.long	.LFE17
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"update_type"
.LASF38:
	.string	"OTA_FINISH"
.LASF20:
	.string	"AOS_LL_V_NONE_BIT"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"__uint8_t"
.LASF58:
	.string	"TAG_DEV_UV"
.LASF106:
	.string	"hal_ota_set_boot"
.LASF26:
	.string	"AOS_LL_V_MAX_BIT"
.LASF28:
	.string	"type"
.LASF13:
	.string	"long long unsigned int"
.LASF43:
	.string	"OTA_ENUM_FIRMWARE_TYPE"
.LASF119:
	.string	"aos_get_app_version"
.LASF108:
	.string	"aos_now_ms"
.LASF23:
	.string	"AOS_LL_V_WARN_BIT"
.LASF98:
	.string	"ota_finish_callbak"
.LASF1:
	.string	"long long int"
.LASF84:
	.string	"updated_type"
.LASF88:
	.string	"buf_len"
.LASF56:
	.string	"TAG_DEV_BARO"
.LASF69:
	.string	"download_url"
.LASF32:
	.string	"input_event_t"
.LASF10:
	.string	"long int"
.LASF59:
	.string	"TAG_DEV_HUMI"
.LASF34:
	.string	"OTA_KERNEL"
.LASF71:
	.string	"ota_response_params"
.LASF125:
	.string	"/home/stone/Documents/pca"
.LASF85:
	.string	"ota_hal_finish_cb"
.LASF70:
	.string	"frimware_size"
.LASF11:
	.string	"__uint32_t"
.LASF109:
	.string	"csp_printf"
.LASF92:
	.string	"ota_regist_upgrade"
.LASF122:
	.string	"aos_register_event_filter"
.LASF110:
	.string	"platform_ota_parse_response"
.LASF76:
	.string	"ota_set_callbacks"
.LASF30:
	.string	"value"
.LASF74:
	.string	"flash_cb"
.LASF52:
	.string	"TAG_DEV_MAG"
.LASF0:
	.string	"unsigned int"
.LASF86:
	.string	"ota_hal_write_cb"
.LASF17:
	.string	"uint16_t"
.LASF61:
	.string	"TAG_DEV_HR"
.LASF107:
	.string	"hal_ota_write"
.LASF67:
	.string	"device_uuid"
.LASF37:
	.string	"OTA_ENUM_UPDATE_TYPE"
.LASF12:
	.string	"long unsigned int"
.LASF49:
	.string	"ota_finish_param_t"
.LASF121:
	.string	"platform_ota_init"
.LASF116:
	.string	"platform_ota_subscribe_upgrade"
.LASF41:
	.string	"OTA_RAW"
.LASF81:
	.string	"event"
.LASF8:
	.string	"short unsigned int"
.LASF118:
	.string	"platform_ota_cancel_upgrade"
.LASF103:
	.string	"ota_get_splict_size"
.LASF80:
	.string	"ota_service_event"
.LASF111:
	.string	"ota_do_update_packet"
.LASF35:
	.string	"OTA_APP"
.LASF100:
	.string	"ota_get_resp_msg"
.LASF124:
	.string	"src/ota_service.c"
.LASF24:
	.string	"AOS_LL_V_INFO_BIT"
.LASF39:
	.string	"OTA_BREAKPOINT"
.LASF95:
	.string	"ota_init"
.LASF91:
	.string	"ota_check_update"
.LASF120:
	.string	"platform_ota_get_id"
.LASF115:
	.string	"platform_ota_publish_request"
.LASF73:
	.string	"ota_finish_cb_t"
.LASF47:
	.string	"splict_size"
.LASF128:
	.string	"ota_hal_init"
.LASF117:
	.string	"ota_post_version_msg"
.LASF14:
	.string	"sizetype"
.LASF93:
	.string	"ota_service_init"
.LASF78:
	.string	"response_parmas"
.LASF97:
	.string	"ota_write_flash_callback"
.LASF126:
	.string	"log_level_bit"
.LASF22:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF27:
	.string	"time"
.LASF68:
	.string	"ota_request_params"
.LASF50:
	.string	"float"
.LASF83:
	.string	"finished_result"
.LASF48:
	.string	"diff_version"
.LASF114:
	.string	"hal_ota_init"
.LASF25:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF127:
	.string	"aos_log_get_level"
.LASF104:
	.string	"ota_get_diff_version"
.LASF45:
	.string	"result_type"
.LASF33:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF90:
	.string	"do_update"
.LASF5:
	.string	"short int"
.LASF40:
	.string	"OTA_ENUM_RESULT_TYPE"
.LASF75:
	.string	"finish_cb"
.LASF102:
	.string	"ota_get_firmware_type"
.LASF79:
	.string	"cancel_update"
.LASF60:
	.string	"TAG_DEV_HALL"
.LASF82:
	.string	"priv_data"
.LASF21:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF131:
	.string	"__stack_chk_fail"
.LASF113:
	.string	"ota_cancel_update_packet"
.LASF123:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF19:
	.string	"uint32_t"
.LASF51:
	.string	"TAG_DEV_ACC"
.LASF2:
	.string	"long double"
.LASF53:
	.string	"TAG_DEV_GYRO"
.LASF15:
	.string	"char"
.LASF112:
	.string	"platform_ota_parse_cancel_responce"
.LASF7:
	.string	"__uint16_t"
.LASF62:
	.string	"TAG_DEV_GPS"
.LASF57:
	.string	"TAG_DEV_TEMP"
.LASF9:
	.string	"__int32_t"
.LASF72:
	.string	"write_flash_cb_t"
.LASF89:
	.string	"offset"
.LASF96:
	.string	"ota_request_parmas"
.LASF64:
	.string	"primary_version"
.LASF55:
	.string	"TAG_DEV_PS"
.LASF29:
	.string	"code"
.LASF130:
	.string	"aos_log_level"
.LASF36:
	.string	"OTA_ALL"
.LASF99:
	.string	"ota_set_resp_msg"
.LASF16:
	.string	"uint8_t"
.LASF46:
	.string	"firmware_type"
.LASF77:
	.string	"update_action"
.LASF31:
	.string	"extra"
.LASF63:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF65:
	.string	"secondary_version"
.LASF101:
	.string	"aos_schedule_call"
.LASF54:
	.string	"TAG_DEV_ALS"
.LASF94:
	.string	"finsh_para"
.LASF42:
	.string	"OTA_DIFF"
.LASF105:
	.string	"hal_ota_get_default_module"
.LASF66:
	.string	"product_type"
.LASF129:
	.string	"init_device_parmas"
.LASF87:
	.string	"writed_size"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
