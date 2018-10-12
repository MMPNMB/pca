	.file	"class_interface.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"constructed"
.LC1:
	.string	"%s %s @%p\n"
	.section	.text.unlikely.new_object,"ax",@progbits
.LCOLDB2:
	.section	.text.new_object,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.new_object
.Ltext_cold0:
	.section	.text.new_object
	.globl	new_object
	.type	new_object, @function
new_object:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/iotkit-system/src/class_interface.c"
	.loc 1 25 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 25 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 28 0
	pushl	(%esi)
	pushl	$28
	pushl	$__func__.3292
	call	LITE_malloc_internal
.LVL2:
	movl	%eax, %ebx
.LVL3:
	.loc 1 30 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL4:
	testl	%ebx, %ebx
	je	.L2
	.loc 1 32 0
	movl	%esi, (%ebx)
	.loc 1 34 0
	cmpl	$0, 8(%esi)
	je	.L3
.LBB2:
	.loc 1 37 0
	leal	12(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 38 0
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	call	*8(%esi)
.LVL5:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL6:
.L3:
.LBE2:
	.loc 1 42 0
	pushl	%ebx
	pushl	$.LC0
	pushl	4(%esi)
	pushl	$.LC1
	call	printf
.LVL7:
	.loc 1 44 0
	addl	$16, %esp
	movl	%ebx, %eax
.L2:
	.loc 1 45 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L4
	call	__stack_chk_fail
.LVL8:
.L4:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL9:
	popl	%esi
	.cfi_restore 6
.LVL10:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	new_object, .-new_object
	.section	.text.unlikely.new_object
.LCOLDE2:
	.section	.text.new_object
.LHOTE2:
	.section	.rodata.str1.1
.LC3:
	.string	"destructed"
.LC4:
	.string	"_object"
.LC5:
	.string	"%s == NULL! LITE_free(%s) aborted."
	.section	.text.unlikely.delete_object,"ax",@progbits
.LCOLDB6:
	.section	.text.delete_object,"ax",@progbits
.LHOTB6:
	.globl	delete_object
	.type	delete_object, @function
delete_object:
.LFB19:
	.loc 1 48 0
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
	.loc 1 48 0
	movl	8(%ebp), %ebx
.LVL12:
	.loc 1 51 0
	testl	%ebx, %ebx
	je	.L9
	.loc 1 51 0 is_stmt 0 discriminator 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 51 0 discriminator 2
	movl	12(%eax), %eax
	testl	%eax, %eax
	je	.L9
	.loc 1 52 0 is_stmt 1
	subl	$12, %esp
	pushl	%ebx
	call	*%eax
.LVL13:
	.loc 1 54 0
	pushl	%eax
	.loc 1 52 0
	movl	%eax, %esi
.LVL14:
	.loc 1 54 0
	pushl	$.LC3
	movl	(%ebx), %eax
.LVL15:
	pushl	4(%eax)
	pushl	$.LC1
	call	printf
.LVL16:
	.loc 1 56 0
	addl	$32, %esp
	testl	%esi, %esi
	jne	.L11
	.loc 1 56 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC4
	pushl	$.LC4
	pushl	$.LC5
	pushl	$2
	pushl	$56
	pushl	$__FUNCTION__.3298
	call	LITE_syslog
.LVL17:
	addl	$32, %esp
	jmp	.L9
.L11:
	.loc 1 56 0 discriminator 2
	movl	%esi, 8(%ebp)
.LVL18:
	.loc 1 58 0 is_stmt 1 discriminator 2
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL19:
	popl	%esi
	.cfi_restore 6
.LVL20:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 56 0 discriminator 2
	jmp	LITE_free_internal
.LVL21:
.L9:
	.cfi_restore_state
	.loc 1 58 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL22:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	delete_object, .-delete_object
	.section	.text.unlikely.delete_object
.LCOLDE6:
	.section	.text.delete_object
.LHOTE6:
	.section	.rodata.__FUNCTION__.3298,"a",@progbits
	.align 4
	.type	__FUNCTION__.3298, @object
	.size	__FUNCTION__.3298, 14
__FUNCTION__.3298:
	.string	"delete_object"
	.section	.rodata.__func__.3292,"a",@progbits
	.align 4
	.type	__func__.3292, @object
	.size	__func__.3292, 11
__func__.3292:
	.string	"new_object"
	.text
.Letext0:
	.section	.text.unlikely.new_object
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 5 "./framework/protocol/linkkit/iotkit/iotkit-system/class_interface.h"
	.file 6 "./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-utils.h"
	.file 7 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2c3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF36
	.byte	0xc
	.long	.LASF37
	.long	.LASF38
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
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0xd8
	.long	0x64
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF11
	.byte	0x3
	.byte	0x28
	.long	0x88
	.uleb128 0x5
	.byte	0x4
	.long	.LASF39
	.long	0x92
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x2e
	.long	0x7d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.long	0xb3
	.uleb128 0x8
	.long	0x92
	.uleb128 0x7
	.byte	0x4
	.long	0xbe
	.uleb128 0x9
	.uleb128 0xa
	.byte	0x10
	.byte	0x5
	.byte	0xd
	.long	0xf8
	.uleb128 0xb
	.long	.LASF15
	.byte	0x5
	.byte	0xe
	.long	0x6b
	.byte	0
	.uleb128 0xb
	.long	.LASF16
	.byte	0x5
	.byte	0xf
	.long	0xad
	.byte	0x4
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.byte	0x10
	.long	0x112
	.byte	0x8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x11
	.long	0x127
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.long	0xab
	.long	0x10c
	.uleb128 0xd
	.long	0xab
	.uleb128 0xd
	.long	0x10c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x99
	.uleb128 0x7
	.byte	0x4
	.long	0xf8
	.uleb128 0xc
	.long	0xab
	.long	0x127
	.uleb128 0xd
	.long	0xab
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x118
	.uleb128 0x4
	.long	.LASF19
	.byte	0x5
	.byte	0x12
	.long	0xbf
	.uleb128 0xe
	.long	.LASF40
	.byte	0x4
	.long	0x64
	.byte	0x7
	.byte	0x22
	.long	0x16d
	.uleb128 0xf
	.long	.LASF20
	.byte	0
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.uleb128 0xf
	.long	.LASF22
	.byte	0x2
	.uleb128 0xf
	.long	.LASF23
	.byte	0x3
	.uleb128 0xf
	.long	.LASF24
	.byte	0x4
	.uleb128 0xf
	.long	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.byte	0x18
	.long	0xab
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f8
	.uleb128 0x11
	.long	.LASF28
	.byte	0x1
	.byte	0x18
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0x1a
	.long	0x1f8
	.long	.LLST0
	.uleb128 0x14
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.long	0xab
	.long	.LLST1
	.uleb128 0x15
	.long	.LASF30
	.long	0x213
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3292
	.uleb128 0x16
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x1dc
	.uleb128 0x17
	.long	.LASF27
	.byte	0x1
	.byte	0x23
	.long	0x99
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x18
	.long	.LVL2
	.long	0x291
	.uleb128 0x18
	.long	.LVL7
	.long	0x29c
	.uleb128 0x18
	.long	.LVL8
	.long	0x2a7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1fe
	.uleb128 0x8
	.long	0x12d
	.uleb128 0x19
	.long	0xb3
	.long	0x213
	.uleb128 0x1a
	.long	0xa4
	.byte	0xa
	.byte	0
	.uleb128 0x8
	.long	0x203
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x1
	.byte	0x2f
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x276
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x1
	.byte	0x2f
	.long	0xab
	.long	.LLST2
	.uleb128 0x13
	.long	.LASF26
	.byte	0x1
	.byte	0x31
	.long	0x276
	.long	.LLST3
	.uleb128 0x15
	.long	.LASF31
	.long	0x28c
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3298
	.uleb128 0x18
	.long	.LVL16
	.long	0x29c
	.uleb128 0x18
	.long	.LVL17
	.long	0x2b0
	.uleb128 0x1d
	.long	.LVL21
	.long	0x2bb
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f8
	.uleb128 0x19
	.long	0xb3
	.long	0x28c
	.uleb128 0x1a
	.long	0xa4
	.byte	0xd
	.byte	0
	.uleb128 0x8
	.long	0x27c
	.uleb128 0x1e
	.long	.LASF32
	.long	.LASF32
	.byte	0x6
	.byte	0x50
	.uleb128 0x1e
	.long	.LASF33
	.long	.LASF33
	.byte	0x4
	.byte	0xc8
	.uleb128 0x1f
	.long	.LASF43
	.long	.LASF43
	.uleb128 0x1e
	.long	.LASF34
	.long	.LASF34
	.byte	0x7
	.byte	0x34
	.uleb128 0x1e
	.long	.LASF35
	.long	.LASF35
	.byte	0x6
	.byte	0x52
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
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2116
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.long	.LVL1
	.long	.LVL10
	.value	0x1
	.byte	0x56
	.long	.LVL10
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL11
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL20
	.value	0x1
	.byte	0x56
	.long	.LVL20
	.long	.LVL21-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL12
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x24
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"LOG_EMERG_LEVEL"
.LASF10:
	.string	"size_t"
.LASF39:
	.string	"__builtin_va_list"
.LASF32:
	.string	"LITE_malloc_internal"
.LASF17:
	.string	"ctor"
.LASF26:
	.string	"ab_class"
.LASF29:
	.string	"_object"
.LASF19:
	.string	"abstract_class_t"
.LASF15:
	.string	"_size"
.LASF30:
	.string	"__func__"
.LASF13:
	.string	"va_list"
.LASF1:
	.string	"unsigned char"
.LASF24:
	.string	"LOG_INFO_LEVEL"
.LASF18:
	.string	"dtor"
.LASF36:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF3:
	.string	"short unsigned int"
.LASF43:
	.string	"__stack_chk_fail"
.LASF28:
	.string	"_class"
.LASF27:
	.string	"params"
.LASF5:
	.string	"long unsigned int"
.LASF11:
	.string	"__gnuc_va_list"
.LASF31:
	.string	"__FUNCTION__"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF34:
	.string	"LITE_syslog"
.LASF42:
	.string	"delete_object"
.LASF16:
	.string	"_class_name"
.LASF40:
	.string	"_LOGLEVEL"
.LASF37:
	.string	"src/class_interface.c"
.LASF21:
	.string	"LOG_CRIT_LEVEL"
.LASF25:
	.string	"LOG_DEBUG_LEVEL"
.LASF14:
	.string	"sizetype"
.LASF6:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF33:
	.string	"printf"
.LASF38:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF41:
	.string	"new_object"
.LASF23:
	.string	"LOG_WARNING_LEVEL"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF22:
	.string	"LOG_ERR_LEVEL"
.LASF0:
	.string	"signed char"
.LASF35:
	.string	"LITE_free_internal"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
