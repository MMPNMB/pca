	.file	"utils_timer.c"
	.text
.Ltext0:
	.section	.text.unlikely.iotx_time_start,"ax",@progbits
.LCOLDB0:
	.section	.text.iotx_time_start,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.iotx_time_start
.Ltext_cold0:
	.section	.text.iotx_time_start
	.globl	iotx_time_start
	.type	iotx_time_start, @function
iotx_time_start:
.LFB1:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_timer.c"
	.loc 1 26 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 26 0
	movl	8(%ebp), %ebx
	.loc 1 27 0
	testl	%ebx, %ebx
	je	.L1
	.loc 1 31 0
	call	HAL_UptimeMs
.LVL1:
	movl	%eax, (%ebx)
.L1:
	.loc 1 32 0
	popl	%eax
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	iotx_time_start, .-iotx_time_start
	.section	.text.unlikely.iotx_time_start
.LCOLDE0:
	.section	.text.iotx_time_start
.LHOTE0:
	.section	.text.unlikely.utils_time_spend,"ax",@progbits
.LCOLDB1:
	.section	.text.utils_time_spend,"ax",@progbits
.LHOTB1:
	.globl	utils_time_spend
	.type	utils_time_spend, @function
utils_time_spend:
.LFB2:
	.loc 1 35 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 35 0
	movl	8(%ebp), %ebx
	.loc 1 38 0
	testl	%ebx, %ebx
	je	.L9
	.loc 1 42 0
	call	HAL_UptimeMs
.LVL3:
	.loc 1 44 0
	subl	(%ebx), %eax
.LVL4:
.L9:
	.loc 1 45 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	utils_time_spend, .-utils_time_spend
	.section	.text.unlikely.utils_time_spend
.LCOLDE1:
	.section	.text.utils_time_spend
.LHOTE1:
	.section	.text.unlikely.utils_time_is_expired,"ax",@progbits
.LCOLDB2:
	.section	.text.utils_time_is_expired,"ax",@progbits
.LHOTB2:
	.globl	utils_time_is_expired
	.type	utils_time_is_expired, @function
utils_time_is_expired:
.LFB4:
	.loc 1 65 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 65 0
	movl	8(%ebp), %ebx
	.loc 1 68 0
	testl	%ebx, %ebx
	je	.L14
	.loc 1 72 0
	call	HAL_UptimeMs
.LVL6:
	.loc 1 69 0
	subl	(%ebx), %eax
.LVL7:
	cmpl	$2147483646, %eax
	setbe	%al
	movzbl	%al, %eax
.L14:
	.loc 1 83 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	utils_time_is_expired, .-utils_time_is_expired
	.section	.text.unlikely.utils_time_is_expired
.LCOLDE2:
	.section	.text.utils_time_is_expired
.LHOTE2:
	.section	.text.unlikely.iotx_time_left,"ax",@progbits
.LCOLDB3:
	.section	.text.iotx_time_left,"ax",@progbits
.LHOTB3:
	.globl	iotx_time_left
	.type	iotx_time_left, @function
iotx_time_left:
.LFB3:
	.loc 1 48 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 48 0
	movl	8(%ebp), %ebx
	.loc 1 51 0
	testl	%ebx, %ebx
	jne	.L19
.L21:
	.loc 1 52 0
	xorl	%eax, %eax
	jmp	.L20
.L19:
	.loc 1 55 0
	subl	$12, %esp
	pushl	%ebx
	call	utils_time_is_expired
.LVL9:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L21
	.loc 1 59 0
	call	HAL_UptimeMs
.LVL10:
	.loc 1 60 0
	movl	(%ebx), %edx
.LVL11:
	.loc 1 61 0
	subl	%eax, %edx
.LVL12:
	movl	%edx, %eax
.LVL13:
.L20:
	.loc 1 62 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	iotx_time_left, .-iotx_time_left
	.section	.text.unlikely.iotx_time_left
.LCOLDE3:
	.section	.text.iotx_time_left
.LHOTE3:
	.section	.text.unlikely.iotx_time_init,"ax",@progbits
.LCOLDB4:
	.section	.text.iotx_time_init,"ax",@progbits
.LHOTB4:
	.globl	iotx_time_init
	.type	iotx_time_init, @function
iotx_time_init:
.LFB5:
	.loc 1 86 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 86 0
	movl	8(%ebp), %eax
	.loc 1 87 0
	testl	%eax, %eax
	je	.L23
	.loc 1 91 0
	movl	$0, (%eax)
.L23:
	.loc 1 92 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	iotx_time_init, .-iotx_time_init
	.section	.text.unlikely.iotx_time_init
.LCOLDE4:
	.section	.text.iotx_time_init
.LHOTE4:
	.section	.text.unlikely.utils_time_countdown_ms,"ax",@progbits
.LCOLDB5:
	.section	.text.utils_time_countdown_ms,"ax",@progbits
.LHOTB5:
	.globl	utils_time_countdown_ms
	.type	utils_time_countdown_ms, @function
utils_time_countdown_ms:
.LFB6:
	.loc 1 95 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 95 0
	movl	8(%ebp), %ebx
	.loc 1 96 0
	testl	%ebx, %ebx
	je	.L29
	.loc 1 100 0
	call	HAL_UptimeMs
.LVL16:
	addl	12(%ebp), %eax
	movl	%eax, (%ebx)
.L29:
	.loc 1 101 0
	popl	%eax
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	utils_time_countdown_ms, .-utils_time_countdown_ms
	.section	.text.unlikely.utils_time_countdown_ms
.LCOLDE5:
	.section	.text.utils_time_countdown_ms
.LHOTE5:
	.section	.text.unlikely.utils_time_get_ms,"ax",@progbits
.LCOLDB6:
	.section	.text.utils_time_get_ms,"ax",@progbits
.LHOTB6:
	.globl	utils_time_get_ms
	.type	utils_time_get_ms, @function
utils_time_get_ms:
.LFB7:
	.loc 1 104 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 105 0
	call	HAL_UptimeMs
.LVL17:
	.loc 1 106 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	utils_time_get_ms, .-utils_time_get_ms
	.section	.text.unlikely.utils_time_get_ms
.LCOLDE6:
	.section	.text.utils_time_get_ms
.LHOTE6:
	.text
.Letext0:
	.section	.text.unlikely.iotx_time_start
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_timer.h"
	.file 5 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x25a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF26
	.byte	0xc
	.long	.LASF27
	.long	.LASF28
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
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0x41
	.long	0x53
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
	.uleb128 0x3
	.long	.LASF13
	.byte	0x3
	.byte	0x30
	.long	0x48
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x1b
	.long	0xab
	.uleb128 0x6
	.long	.LASF29
	.byte	0x4
	.byte	0x1c
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x1d
	.long	0x96
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x19
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x19
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x9
	.long	.LVL1
	.long	0x252
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xab
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x22
	.long	0x8b
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x138
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.byte	0x22
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"now"
	.byte	0x1
	.byte	0x24
	.long	0x8b
	.long	.LLST0
	.uleb128 0xc
	.string	"res"
	.byte	0x1
	.byte	0x24
	.long	0x8b
	.long	.LLST1
	.uleb128 0x9
	.long	.LVL3
	.long	0x252
	.byte	0
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x40
	.long	0x8b
	.long	.LFB4
	.long	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x178
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x40
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x42
	.long	0x8b
	.long	.LLST2
	.uleb128 0x9
	.long	.LVL6
	.long	0x252
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x2f
	.long	0x8b
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.byte	0x2f
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.string	"now"
	.byte	0x1
	.byte	0x31
	.long	0x8b
	.long	.LLST3
	.uleb128 0xc
	.string	"res"
	.byte	0x1
	.byte	0x31
	.long	0x8b
	.long	.LLST4
	.uleb128 0x9
	.long	.LVL9
	.long	0x138
	.uleb128 0x9
	.long	.LVL10
	.long	0x252
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.byte	0x55
	.long	.LFB5
	.long	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f4
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x55
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x5e
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x22f
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.byte	0x5e
	.long	0xe3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x1
	.byte	0x5e
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x9
	.long	.LVL16
	.long	0x252
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x1
	.byte	0x67
	.long	0x8b
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x252
	.uleb128 0x9
	.long	.LVL17
	.long	0x252
	.byte	0
	.uleb128 0xf
	.long	.LASF30
	.long	.LASF30
	.byte	0x5
	.byte	0xdb
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x52
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
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB4
	.long	.LFE4
	.long	.LFB3
	.long	.LFE3
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF24:
	.string	"millisecond"
.LASF16:
	.string	"start"
.LASF14:
	.string	"iotx_time_t"
.LASF21:
	.string	"iotx_time_start"
.LASF18:
	.string	"utils_time_is_expired"
.LASF23:
	.string	"utils_time_countdown_ms"
.LASF20:
	.string	"iotx_time_left"
.LASF1:
	.string	"unsigned char"
.LASF15:
	.string	"timer"
.LASF5:
	.string	"long unsigned int"
.LASF22:
	.string	"iotx_time_init"
.LASF3:
	.string	"short unsigned int"
.LASF12:
	.string	"__uint32_t"
.LASF8:
	.string	"unsigned int"
.LASF27:
	.string	"src/utils_timer.c"
.LASF7:
	.string	"long long unsigned int"
.LASF29:
	.string	"time"
.LASF19:
	.string	"cur_time"
.LASF11:
	.string	"sizetype"
.LASF25:
	.string	"utils_time_get_ms"
.LASF6:
	.string	"long long int"
.LASF17:
	.string	"utils_time_spend"
.LASF10:
	.string	"char"
.LASF28:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"HAL_UptimeMs"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
