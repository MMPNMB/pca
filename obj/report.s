	.file	"report.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%s_%s_mid"
	.section	.text.unlikely.iotx_midreport_reqid,"ax",@progbits
.LCOLDB1:
	.section	.text.iotx_midreport_reqid,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.iotx_midreport_reqid
.Ltext_cold0:
	.section	.text.iotx_midreport_reqid
	.globl	iotx_midreport_reqid
	.type	iotx_midreport_reqid, @function
iotx_midreport_reqid:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/iotkit-system/src/report.c"
	.loc 1 27 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 30 0
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$.LC0
	pushl	$58
	pushl	8(%ebp)
	call	HAL_Snprintf
.LVL1:
	.loc 1 36 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	iotx_midreport_reqid, .-iotx_midreport_reqid
	.section	.text.unlikely.iotx_midreport_reqid
.LCOLDE1:
	.section	.text.iotx_midreport_reqid
.LHOTE1:
	.section	.rodata.str1.1
.LC2:
	.string	"{\"id\":\"%s\",\"params\":{\"_sys_device_mid\":\"%s\",\"_sys_device_pid\":\"%s\"}}"
	.section	.text.unlikely.iotx_midreport_payload,"ax",@progbits
.LCOLDB3:
	.section	.text.iotx_midreport_payload,"ax",@progbits
.LHOTB3:
	.globl	iotx_midreport_payload
	.type	iotx_midreport_payload, @function
iotx_midreport_payload:
.LFB19:
	.loc 1 39 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 42 0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$.LC2
	pushl	$223
	pushl	8(%ebp)
	call	HAL_Snprintf
.LVL3:
	.loc 1 49 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	iotx_midreport_payload, .-iotx_midreport_payload
	.section	.text.unlikely.iotx_midreport_payload
.LCOLDE3:
	.section	.text.iotx_midreport_payload
.LHOTE3:
	.section	.rodata.str1.1
.LC4:
	.string	"%s/sys/%s/%s/thing/status/update"
	.section	.text.unlikely.iotx_midreport_topic,"ax",@progbits
.LCOLDB5:
	.section	.text.iotx_midreport_topic,"ax",@progbits
.LHOTB5:
	.globl	iotx_midreport_topic
	.type	iotx_midreport_topic, @function
iotx_midreport_topic:
.LFB20:
	.loc 1 52 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 55 0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	$.LC4
	pushl	$135
	pushl	8(%ebp)
	call	HAL_Snprintf
.LVL5:
	.loc 1 62 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	iotx_midreport_topic, .-iotx_midreport_topic
	.section	.text.unlikely.iotx_midreport_topic
.LCOLDE5:
	.section	.text.iotx_midreport_topic
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.iotx_midreport_reqid
.Letext_cold0:
	.file 2 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1b9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0xc
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.long	0x72
	.uleb128 0x5
	.long	.LASF15
	.byte	0x1
	.byte	0x1a
	.long	0x5d
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x1a
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x1a
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x1a
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x7
	.string	"ret"
	.byte	0x1
	.byte	0x1c
	.long	0x5d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.long	.LVL1
	.long	0x1b0
	.byte	0
	.uleb128 0x5
	.long	.LASF16
	.byte	0x1
	.byte	0x26
	.long	0x5d
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x148
	.uleb128 0x9
	.string	"msg"
	.byte	0x1
	.byte	0x26
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.byte	0x1
	.byte	0x26
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.string	"mid"
	.byte	0x1
	.byte	0x26
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x9
	.string	"pid"
	.byte	0x1
	.byte	0x26
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x7
	.string	"ret"
	.byte	0x1
	.byte	0x28
	.long	0x5d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.long	.LVL3
	.long	0x1b0
	.byte	0
	.uleb128 0x5
	.long	.LASF17
	.byte	0x1
	.byte	0x33
	.long	0x5d
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b0
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0x33
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x1
	.byte	0x33
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.byte	0x33
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x6
	.long	.LASF14
	.byte	0x1
	.byte	0x33
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x7
	.string	"ret"
	.byte	0x1
	.byte	0x35
	.long	0x5d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.long	.LVL5
	.long	0x1b0
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.long	.LASF23
	.byte	0x2
	.value	0x112
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.section	.debug_aranges,"",@progbits
	.long	0x2c
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF15:
	.string	"iotx_midreport_reqid"
.LASF20:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF8:
	.string	"unsigned int"
.LASF19:
	.string	"topic_head"
.LASF1:
	.string	"unsigned char"
.LASF18:
	.string	"topic_name"
.LASF5:
	.string	"long unsigned int"
.LASF12:
	.string	"requestId"
.LASF7:
	.string	"long long unsigned int"
.LASF17:
	.string	"iotx_midreport_topic"
.LASF10:
	.string	"char"
.LASF22:
	.string	"/home/stone/Documents/pca"
.LASF4:
	.string	"long int"
.LASF14:
	.string	"device_name"
.LASF16:
	.string	"iotx_midreport_payload"
.LASF23:
	.string	"HAL_Snprintf"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"src/report.c"
.LASF13:
	.string	"product_key"
.LASF9:
	.string	"long double"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
