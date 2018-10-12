	.file	"download_common.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"key_ota_breakpoint"
	.section	.text.unlikely.ota_get_update_breakpoint,"ax",@progbits
.LCOLDB1:
	.section	.text.ota_get_update_breakpoint,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.ota_get_update_breakpoint
.Ltext_cold0:
	.section	.text.ota_get_update_breakpoint
	.globl	ota_get_update_breakpoint
	.type	ota_get_update_breakpoint, @function
ota_get_update_breakpoint:
.LFB18:
	.file 1 "framework/fota/download/download_common.c"
	.loc 1 30 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 30 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 34 0
	leal	-16(%ebp), %eax
	.loc 1 31 0
	movl	$0, -20(%ebp)
	.loc 1 33 0
	movl	$4, -16(%ebp)
	.loc 1 34 0
	pushl	%eax
	leal	-20(%ebp), %eax
	pushl	%eax
	pushl	$.LC0
	call	aos_kv_get
.LVL0:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 35 0
	movl	$0, -20(%ebp)
.L2:
	.loc 1 40 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	movl	-20(%ebp), %eax
	je	.L3
	call	__stack_chk_fail
.LVL1:
.L3:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	ota_get_update_breakpoint, .-ota_get_update_breakpoint
	.section	.text.unlikely.ota_get_update_breakpoint
.LCOLDE1:
	.section	.text.ota_get_update_breakpoint
.LHOTE1:
	.section	.text.unlikely.ota_set_update_breakpoint,"ax",@progbits
.LCOLDB2:
	.section	.text.ota_set_update_breakpoint,"ax",@progbits
.LHOTB2:
	.globl	ota_set_update_breakpoint
	.type	ota_set_update_breakpoint, @function
ota_set_update_breakpoint:
.LFB19:
	.loc 1 43 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 45 0
	leal	8(%ebp), %eax
.LVL3:
	pushl	$1
	pushl	$4
	pushl	%eax
	pushl	$.LC0
	call	aos_kv_set
.LVL4:
	.loc 1 48 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL5:
	ret
	.cfi_endproc
.LFE19:
	.size	ota_set_update_breakpoint, .-ota_set_update_breakpoint
	.section	.text.unlikely.ota_set_update_breakpoint
.LCOLDE2:
	.section	.text.ota_set_update_breakpoint
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"key_ota_md5"
	.section	.text.unlikely.ota_get_last_MD5,"ax",@progbits
.LCOLDB4:
	.section	.text.ota_get_last_MD5,"ax",@progbits
.LHOTB4:
	.globl	ota_get_last_MD5
	.type	ota_get_last_MD5, @function
ota_get_last_MD5:
.LFB20:
	.loc 1 51 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 51 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 54 0
	leal	-16(%ebp), %eax
	.loc 1 53 0
	movl	$33, -16(%ebp)
	.loc 1 54 0
	pushl	%eax
	pushl	8(%ebp)
	pushl	$.LC3
	call	aos_kv_get
.LVL7:
	.loc 1 58 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L12
	call	__stack_chk_fail
.LVL8:
.L12:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	ota_get_last_MD5, .-ota_get_last_MD5
	.section	.text.unlikely.ota_get_last_MD5
.LCOLDE4:
	.section	.text.ota_get_last_MD5
.LHOTE4:
	.section	.text.unlikely.ota_set_cur_MD5,"ax",@progbits
.LCOLDB5:
	.section	.text.ota_set_cur_MD5,"ax",@progbits
.LHOTB5:
	.globl	ota_set_cur_MD5
	.type	ota_set_cur_MD5, @function
ota_set_cur_MD5:
.LFB21:
	.loc 1 61 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 63 0
	pushl	$1
	pushl	$33
	pushl	8(%ebp)
	pushl	$.LC3
	call	aos_kv_set
.LVL10:
	.loc 1 66 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	ota_set_cur_MD5, .-ota_set_cur_MD5
	.section	.text.unlikely.ota_set_cur_MD5
.LCOLDE5:
	.section	.text.ota_set_cur_MD5
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"key_ota_md5_ctx"
	.section	.text.unlikely.ota_get_last_MD5_context,"ax",@progbits
.LCOLDB7:
	.section	.text.ota_get_last_MD5_context,"ax",@progbits
.LHOTB7:
	.globl	ota_get_last_MD5_context
	.type	ota_get_last_MD5_context, @function
ota_get_last_MD5_context:
.LFB22:
	.loc 1 69 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$28, %esp
	.loc 1 69 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 72 0
	leal	-16(%ebp), %eax
	.loc 1 71 0
	movl	$88, -16(%ebp)
	.loc 1 72 0
	pushl	%eax
	pushl	8(%ebp)
	pushl	$.LC6
	call	aos_kv_get
.LVL12:
	.loc 1 76 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L17
	call	__stack_chk_fail
.LVL13:
.L17:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	ota_get_last_MD5_context, .-ota_get_last_MD5_context
	.section	.text.unlikely.ota_get_last_MD5_context
.LCOLDE7:
	.section	.text.ota_get_last_MD5_context
.LHOTE7:
	.section	.text.unlikely.ota_set_cur_MD5_context,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_set_cur_MD5_context,"ax",@progbits
.LHOTB8:
	.globl	ota_set_cur_MD5_context
	.type	ota_set_cur_MD5_context, @function
ota_set_cur_MD5_context:
.LFB23:
	.loc 1 79 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 81 0
	pushl	$1
	pushl	$88
	pushl	8(%ebp)
	pushl	$.LC6
	call	aos_kv_set
.LVL15:
	.loc 1 84 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	ota_set_cur_MD5_context, .-ota_set_cur_MD5_context
	.section	.text.unlikely.ota_set_cur_MD5_context
.LCOLDE8:
	.section	.text.ota_set_cur_MD5_context
.LHOTE8:
	.section	.text.unlikely.save_state,"ax",@progbits
.LCOLDB9:
	.section	.text.save_state,"ax",@progbits
.LHOTB9:
	.globl	save_state
	.type	save_state, @function
save_state:
.LFB17:
	.loc 1 22 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 22 0
	movl	12(%ebp), %ebx
	.loc 1 24 0
	pushl	8(%ebp)
	call	ota_set_update_breakpoint
.LVL17:
	.loc 1 25 0
	movl	%ebx, 8(%ebp)
	addl	$16, %esp
	.loc 1 27 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 25 0
	jmp	ota_set_cur_MD5_context
.LVL18:
	.cfi_endproc
.LFE17:
	.size	save_state, .-save_state
	.section	.text.unlikely.save_state
.LCOLDE9:
	.section	.text.save_state
.LHOTE9:
	.text
.Letext0:
	.section	.text.unlikely.ota_get_update_breakpoint
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./utility/digest_algorithm/./md5.h"
	.file 5 "./include/aos/kv.h"
	.file 6 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x30d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF34
	.byte	0xc
	.long	.LASF35
	.long	.LASF36
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
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
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF13
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.long	0xa5
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF16
	.uleb128 0x6
	.byte	0x58
	.byte	0x4
	.byte	0xc
	.long	0xe6
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0xd
	.long	0xe6
	.byte	0
	.uleb128 0x7
	.long	.LASF18
	.byte	0x4
	.byte	0xe
	.long	0xf6
	.byte	0x10
	.uleb128 0x7
	.long	.LASF19
	.byte	0x4
	.byte	0xf
	.long	0x106
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.long	0x8c
	.long	0xf6
	.uleb128 0x9
	.long	0x9e
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.long	0x8c
	.long	0x106
	.uleb128 0x9
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	0x81
	.long	0x116
	.uleb128 0x9
	.long	0x9e
	.byte	0x3f
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0x10
	.long	0xb9
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.byte	0x1d
	.long	0x8c
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x169
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x1f
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x21
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LVL0
	.long	0x2f1
	.uleb128 0xd
	.long	.LVL1
	.long	0x2fc
	.byte	0
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.byte	0x2a
	.long	0x73
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x19b
	.uleb128 0xe
	.long	.LASF21
	.byte	0x1
	.byte	0x2a
	.long	0x8c
	.long	.LLST0
	.uleb128 0xd
	.long	.LVL4
	.long	0x305
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x1
	.byte	0x32
	.long	0x73
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x32
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x35
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.long	0x73
	.long	.LLST1
	.uleb128 0xd
	.long	.LVL7
	.long	0x2f1
	.uleb128 0xd
	.long	.LVL8
	.long	0x2fc
	.byte	0
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x3c
	.long	0x73
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x223
	.uleb128 0xf
	.long	.LASF25
	.byte	0x1
	.byte	0x3c
	.long	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LVL10
	.long	0x305
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x44
	.long	0x73
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x26b
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x44
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"len"
	.byte	0x1
	.byte	0x47
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0xd
	.long	.LVL12
	.long	0x2f1
	.uleb128 0xd
	.long	.LVL13
	.long	0x2fc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x116
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x4e
	.long	0x73
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a2
	.uleb128 0xf
	.long	.LASF28
	.byte	0x1
	.byte	0x4e
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LVL15
	.long	0x305
	.byte	0
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.byte	0x15
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e6
	.uleb128 0xf
	.long	.LASF30
	.byte	0x1
	.byte	0x15
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.long	.LASF31
	.byte	0x1
	.byte	0x15
	.long	0x26b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LVL17
	.long	0x169
	.uleb128 0x12
	.long	.LVL18
	.long	0x271
	.byte	0
	.uleb128 0x13
	.long	.LASF38
	.byte	0x6
	.byte	0x17
	.long	0x7a
	.uleb128 0x14
	.long	.LASF32
	.long	.LASF32
	.byte	0x5
	.byte	0x28
	.uleb128 0x15
	.long	.LASF39
	.long	.LASF39
	.uleb128 0x14
	.long	.LASF33
	.long	.LASF33
	.byte	0x5
	.byte	0x19
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
	.uleb128 0x7
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.long	.LVL2
	.long	.LVL3
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL3
	.long	.LVL4-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL4-1
	.long	.LVL5
	.value	0x2
	.byte	0x75
	.sleb128 8
	.long	.LVL5
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LFE20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
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
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB17
	.long	.LFE17-.LFB17
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
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"__uint8_t"
.LASF17:
	.string	"state"
.LASF25:
	.string	"value"
.LASF18:
	.string	"count"
.LASF26:
	.string	"ota_set_cur_MD5"
.LASF22:
	.string	"ota_get_update_breakpoint"
.LASF31:
	.string	"pMD5"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"ota_get_last_MD5_context"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"__stack_chk_fail"
.LASF29:
	.string	"ota_set_cur_MD5_context"
.LASF33:
	.string	"aos_kv_set"
.LASF6:
	.string	"__uint32_t"
.LASF24:
	.string	"ota_get_last_MD5"
.LASF10:
	.string	"unsigned int"
.LASF30:
	.string	"breakpoint"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF38:
	.string	"aos_log_level"
.LASF28:
	.string	"md5ctx"
.LASF35:
	.string	"src/download_common.c"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"sizetype"
.LASF15:
	.string	"char"
.LASF32:
	.string	"aos_kv_get"
.LASF21:
	.string	"offset"
.LASF36:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"buffer"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"MD5_CTX"
.LASF13:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"_Bool"
.LASF23:
	.string	"ota_set_update_breakpoint"
.LASF37:
	.string	"save_state"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
