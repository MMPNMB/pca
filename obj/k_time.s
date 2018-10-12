	.file	"k_time.c"
	.text
.Ltext0:
	.section	.text.unlikely.krhino_tick_proc,"ax",@progbits
.LCOLDB0:
	.section	.text.krhino_tick_proc,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.krhino_tick_proc
.Ltext_cold0:
	.section	.text.krhino_tick_proc
	.globl	krhino_tick_proc
	.type	krhino_tick_proc, @function
krhino_tick_proc:
.LFB12:
	.file 1 "kernel/rhino/core/k_time.c"
	.loc 1 8 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 17 0
	pushl	$0
	pushl	$1
	call	tick_list_update
.LVL0:
	.loc 1 20 0
	addl	$16, %esp
	.loc 1 22 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 20 0
	jmp	time_slice_update
.LVL1:
	.cfi_endproc
.LFE12:
	.size	krhino_tick_proc, .-krhino_tick_proc
	.section	.text.unlikely.krhino_tick_proc
.LCOLDE0:
	.section	.text.krhino_tick_proc
.LHOTE0:
	.section	.text.unlikely.krhino_sys_tick_get,"ax",@progbits
.LCOLDB1:
	.section	.text.krhino_sys_tick_get,"ax",@progbits
.LHOTB1:
	.globl	krhino_sys_tick_get
	.type	krhino_sys_tick_get, @function
krhino_sys_tick_get:
.LFB13:
	.loc 1 25 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 30 0
	call	cpu_intrpt_save
.LVL2:
	.loc 1 31 0
	movl	g_tick_count+4, %edx
	.loc 1 30 0
	movl	%eax, %ecx
.LVL3:
	.loc 1 32 0
	subl	$12, %esp
	.loc 1 31 0
	movl	g_tick_count, %eax
.LVL4:
	.loc 1 32 0
	pushl	%ecx
	.loc 1 31 0
	movl	%edx, -12(%ebp)
.LVL5:
	movl	%eax, -16(%ebp)
.LVL6:
	.loc 1 32 0
	call	cpu_intrpt_restore
.LVL7:
	.loc 1 35 0
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	krhino_sys_tick_get, .-krhino_sys_tick_get
	.section	.text.unlikely.krhino_sys_tick_get
.LCOLDE1:
	.section	.text.krhino_sys_tick_get
.LHOTE1:
	.globl	__udivdi3
	.section	.text.unlikely.krhino_sys_time_get,"ax",@progbits
.LCOLDB2:
	.section	.text.krhino_sys_time_get,"ax",@progbits
.LHOTB2:
	.globl	krhino_sys_time_get
	.type	krhino_sys_time_get, @function
krhino_sys_time_get:
.LFB14:
	.loc 1 38 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%eax
	.cfi_offset 6, -12
	.loc 1 39 0
	call	krhino_sys_tick_get
.LVL8:
	movl	%eax, %ecx
	movl	$1000, %eax
	pushl	$0
	imull	$1000, %edx, %esi
	pushl	$500
	mull	%ecx
	addl	%esi, %edx
	pushl	%edx
	pushl	%eax
	call	__udivdi3
.LVL9:
	addl	$16, %esp
	.loc 1 40 0
	movl	-4(%ebp), %esi
	leave
	.cfi_restore 5
	.cfi_restore 6
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	krhino_sys_time_get, .-krhino_sys_time_get
	.section	.text.unlikely.krhino_sys_time_get
.LCOLDE2:
	.section	.text.krhino_sys_time_get
.LHOTE2:
	.globl	__umoddi3
	.section	.text.unlikely.krhino_ms_to_ticks,"ax",@progbits
.LCOLDB3:
	.section	.text.krhino_ms_to_ticks,"ax",@progbits
.LHOTB3:
	.globl	krhino_ms_to_ticks
	.type	krhino_ms_to_ticks, @function
krhino_ms_to_ticks:
.LFB15:
	.loc 1 43 0
	.cfi_startproc
.LVL10:
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
	.loc 1 43 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
.LVL11:
	.loc 1 49 0
	pushl	$0
	pushl	$1000
	pushl	%edi
	pushl	%esi
	call	__udivdi3
.LVL12:
	movl	%eax, %ebx
	movl	$500, %eax
	addl	$16, %esp
	imull	$500, %edx, %ecx
	.loc 1 55 0
	pushl	$0
	pushl	$1000
	.loc 1 49 0
	mull	%ebx
	.loc 1 55 0
	pushl	%edi
	pushl	%esi
	.loc 1 49 0
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	addl	%ecx, -28(%ebp)
.LVL13:
	.loc 1 55 0
	call	__umoddi3
.LVL14:
	incl	%eax
	addl	$16, %esp
	sarl	%eax
	cltd
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	.loc 1 56 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL15:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	krhino_ms_to_ticks, .-krhino_ms_to_ticks
	.section	.text.unlikely.krhino_ms_to_ticks
.LCOLDE3:
	.section	.text.krhino_ms_to_ticks
.LHOTE3:
	.section	.text.unlikely.krhino_ticks_to_ms,"ax",@progbits
.LCOLDB4:
	.section	.text.krhino_ticks_to_ms,"ax",@progbits
.LHOTB4:
	.globl	krhino_ticks_to_ms
	.type	krhino_ticks_to_ms, @function
krhino_ticks_to_ms:
.LFB16:
	.loc 1 59 0
	.cfi_startproc
.LVL16:
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
	.loc 1 59 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
.LVL17:
	.loc 1 65 0
	pushl	$0
	pushl	$500
	pushl	%edi
	pushl	%esi
	call	__udivdi3
.LVL18:
	movl	%eax, %ebx
	movl	$1000, %eax
	addl	$16, %esp
	imull	$1000, %edx, %ecx
	.loc 1 71 0
	pushl	$0
	pushl	$500
	.loc 1 65 0
	mull	%ebx
	.loc 1 71 0
	pushl	%edi
	pushl	%esi
	.loc 1 65 0
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	addl	%ecx, -28(%ebp)
.LVL19:
	.loc 1 71 0
	call	__umoddi3
.LVL20:
	imull	$1000, %eax, %eax
	xorl	%edx, %edx
	movl	$500, %ecx
	addl	$16, %esp
	divl	%ecx
	xorl	%edx, %edx
	addl	-32(%ebp), %eax
	adcl	-28(%ebp), %edx
	.loc 1 72 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL21:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	krhino_ticks_to_ms, .-krhino_ticks_to_ms
	.section	.text.unlikely.krhino_ticks_to_ms
.LCOLDE4:
	.section	.text.krhino_ticks_to_ms
.LHOTE4:
	.text
.Letext0:
	.section	.text.unlikely.krhino_tick_proc
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./kernel/rhino/core/include/k_sys.h"
	.file 6 "./kernel/rhino/core/include/k_internal.h"
	.file 7 "././platform/arch/arm/armv5/./gcc/port.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x24f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF35
	.byte	0xc
	.long	.LASF36
	.long	.LASF37
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0xd8
	.long	0x2c
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF5
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x3
	.byte	0x2b
	.long	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x41
	.long	0x8c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x3
	.byte	0x5b
	.long	0x25
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x24
	.long	0x6f
	.uleb128 0x4
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0x81
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x3c
	.long	0x93
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0x12
	.long	0xb4
	.uleb128 0x4
	.long	.LASF20
	.byte	0x5
	.byte	0x15
	.long	0xb4
	.uleb128 0x5
	.long	.LASF38
	.byte	0x1
	.byte	0x7
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b
	.uleb128 0x6
	.long	.LVL0
	.long	0x226
	.uleb128 0x7
	.long	.LVL1
	.long	0x231
	.byte	0
	.uleb128 0x8
	.long	.LASF23
	.byte	0x1
	.byte	0x18
	.long	0xcd
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x155
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0x1a
	.long	0x41
	.long	.LLST0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x1c
	.long	0xcd
	.long	.LLST1
	.uleb128 0x6
	.long	.LVL2
	.long	0x23c
	.uleb128 0x6
	.long	.LVL7
	.long	0x247
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.byte	0x1
	.byte	0x25
	.long	0xcd
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x178
	.uleb128 0x6
	.long	.LVL8
	.long	0x10b
	.byte	0
	.uleb128 0xa
	.long	.LASF25
	.byte	0x1
	.byte	0x2a
	.long	0xd8
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c9
	.uleb128 0xb
	.string	"ms"
	.byte	0x1
	.byte	0x2a
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x2c
	.long	0x9e
	.byte	0x1
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x2d
	.long	0x9e
	.long	.LLST2
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x2e
	.long	0xd8
	.long	.LLST3
	.byte	0
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.byte	0x3a
	.long	0xcd
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x21b
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.byte	0x3a
	.long	0xd8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x3c
	.long	0xa9
	.byte	0
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x3d
	.long	0xa9
	.long	.LLST4
	.uleb128 0x9
	.long	.LASF30
	.byte	0x1
	.byte	0x3e
	.long	0xcd
	.long	.LLST5
	.byte	0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x6
	.byte	0x1d
	.long	0xd8
	.uleb128 0xf
	.long	.LASF31
	.long	.LASF31
	.byte	0x6
	.byte	0x96
	.uleb128 0xf
	.long	.LASF32
	.long	.LASF32
	.byte	0x6
	.byte	0x84
	.uleb128 0xf
	.long	.LASF33
	.long	.LASF33
	.byte	0x7
	.byte	0x8
	.uleb128 0xf
	.long	.LASF34
	.long	.LASF34
	.byte	0x7
	.byte	0x9
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.long	.LVL4
	.long	.LVL7-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL15
	.value	0xc
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0xa
	.value	0x3e8
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL13
	.long	.LVL15
	.value	0x1a
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0xa
	.value	0x3e8
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x23
	.uleb128 0x1
	.byte	0x31
	.byte	0x26
	.byte	0xf7
	.uleb128 0x33
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL17
	.long	.LVL21
	.value	0xc
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0xa
	.value	0x1f4
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL21
	.value	0x24
	.byte	0xf5
	.uleb128 0x6
	.uleb128 0x25
	.byte	0xa
	.value	0x1f4
	.byte	0xf7
	.uleb128 0x25
	.byte	0x1d
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xa
	.value	0x3e8
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xa
	.value	0x1f4
	.byte	0xf7
	.uleb128 0x2c
	.byte	0x1b
	.byte	0xf7
	.uleb128 0
	.byte	0xf7
	.uleb128 0x2c
	.byte	0xf7
	.uleb128 0x25
	.byte	0x91
	.sleb128 -40
	.byte	0xf6
	.byte	0x8
	.uleb128 0x25
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"tick_tmp"
.LASF28:
	.string	"ticks"
.LASF8:
	.string	"size_t"
.LASF39:
	.string	"g_tick_count"
.LASF32:
	.string	"time_slice_update"
.LASF25:
	.string	"krhino_ms_to_ticks"
.LASF36:
	.string	"src/k_time.c"
.LASF16:
	.string	"uint64_t"
.LASF23:
	.string	"krhino_sys_tick_get"
.LASF38:
	.string	"krhino_tick_proc"
.LASF12:
	.string	"long unsigned int"
.LASF35:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF2:
	.string	"short unsigned int"
.LASF6:
	.string	"unsigned char"
.LASF9:
	.string	"__uint16_t"
.LASF11:
	.string	"__uint32_t"
.LASF19:
	.string	"sys_time_t"
.LASF1:
	.string	"unsigned int"
.LASF20:
	.string	"tick_t"
.LASF0:
	.string	"long long unsigned int"
.LASF26:
	.string	"padding"
.LASF30:
	.string	"time"
.LASF17:
	.string	"sizetype"
.LASF3:
	.string	"long long int"
.LASF34:
	.string	"cpu_intrpt_restore"
.LASF18:
	.string	"char"
.LASF37:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"short int"
.LASF31:
	.string	"tick_list_update"
.LASF13:
	.string	"__uint64_t"
.LASF14:
	.string	"uint16_t"
.LASF29:
	.string	"krhino_ticks_to_ms"
.LASF15:
	.string	"uint32_t"
.LASF10:
	.string	"long int"
.LASF4:
	.string	"long double"
.LASF27:
	.string	"surplus"
.LASF5:
	.string	"signed char"
.LASF33:
	.string	"cpu_intrpt_save"
.LASF21:
	.string	"cpsr"
.LASF24:
	.string	"krhino_sys_time_get"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
