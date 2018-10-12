	.file	"mem_stats.c"
	.text
.Ltext0:
	.section	.text.unlikely.LITE_track_malloc_callstack,"ax",@progbits
.LCOLDB0:
	.section	.text.LITE_track_malloc_callstack,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.LITE_track_malloc_callstack
.Ltext_cold0:
	.section	.text.LITE_track_malloc_callstack
	.globl	LITE_track_malloc_callstack
	.type	LITE_track_malloc_callstack, @function
LITE_track_malloc_callstack:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/mem_stats.c"
	.loc 1 94 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 96 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	LITE_track_malloc_callstack, .-LITE_track_malloc_callstack
	.section	.text.unlikely.LITE_track_malloc_callstack
.LCOLDE0:
	.section	.text.LITE_track_malloc_callstack
.LHOTE0:
	.section	.text.unlikely.LITE_realloc_internal,"ax",@progbits
.LCOLDB1:
	.section	.text.LITE_realloc_internal,"ax",@progbits
.LHOTB1:
	.globl	LITE_realloc_internal
	.type	LITE_realloc_internal, @function
LITE_realloc_internal:
.LFB19:
	.loc 1 101 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 140 0
	pushl	20(%ebp)
	pushl	16(%ebp)
	call	realloc
.LVL2:
	.loc 1 142 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	LITE_realloc_internal, .-LITE_realloc_internal
	.section	.text.unlikely.LITE_realloc_internal
.LCOLDE1:
	.section	.text.LITE_realloc_internal
.LHOTE1:
	.section	.text.unlikely.LITE_malloc_internal,"ax",@progbits
.LCOLDB2:
	.section	.text.LITE_malloc_internal,"ax",@progbits
.LHOTB2:
	.globl	LITE_malloc_internal
	.type	LITE_malloc_internal, @function
LITE_malloc_internal:
.LFB20:
	.loc 1 297 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$16, %esp
	.cfi_offset 7, -12
	.loc 1 382 0
	pushl	16(%ebp)
	call	HAL_Malloc
.LVL4:
	.loc 1 383 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 382 0
	movl	%eax, %edx
.LVL5:
	.loc 1 383 0
	je	.L6
	.loc 1 386 0
	movl	16(%ebp), %ecx
	xorl	%eax, %eax
.LVL6:
	movl	%edx, %edi
	rep stosb
.L6:
	.loc 1 389 0
	movl	%edx, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	LITE_malloc_internal, .-LITE_malloc_internal
	.section	.text.unlikely.LITE_malloc_internal
.LCOLDE2:
	.section	.text.LITE_malloc_internal
.LHOTE2:
	.section	.text.unlikely.LITE_free_internal,"ax",@progbits
.LCOLDB3:
	.section	.text.LITE_free_internal,"ax",@progbits
.LHOTB3:
	.globl	LITE_free_internal
	.type	LITE_free_internal, @function
LITE_free_internal:
.LFB21:
	.loc 1 392 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 438 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 437 0
	jmp	HAL_Free
.LVL8:
	.cfi_endproc
.LFE21:
	.size	LITE_free_internal, .-LITE_free_internal
	.section	.text.unlikely.LITE_free_internal
.LCOLDE3:
	.section	.text.LITE_free_internal
.LHOTE3:
	.section	.text.unlikely.LITE_malloc_routine,"ax",@progbits
.LCOLDB4:
	.section	.text.LITE_malloc_routine,"ax",@progbits
.LHOTB4:
	.globl	LITE_malloc_routine
	.type	LITE_malloc_routine, @function
LITE_malloc_routine:
.LFB22:
	.loc 1 441 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 456 0
	pushl	$0
	pushl	$0
	pushl	8(%ebp)
	pushl	$456
	pushl	$__func__.3620
	call	LITE_malloc_internal
.LVL10:
	.loc 1 457 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	LITE_malloc_routine, .-LITE_malloc_routine
	.section	.text.unlikely.LITE_malloc_routine
.LCOLDE4:
	.section	.text.LITE_malloc_routine
.LHOTE4:
	.section	.text.unlikely.LITE_calloc_routine,"ax",@progbits
.LCOLDB5:
	.section	.text.LITE_calloc_routine,"ax",@progbits
.LHOTB5:
	.globl	LITE_calloc_routine
	.type	LITE_calloc_routine, @function
LITE_calloc_routine:
.LFB23:
	.loc 1 460 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 475 0
	movl	12(%ebp), %eax
	pushl	$0
	imull	8(%ebp), %eax
	pushl	$0
	pushl	%eax
	pushl	$475
	pushl	$__func__.3627
	call	LITE_malloc_internal
.LVL12:
	.loc 1 476 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	LITE_calloc_routine, .-LITE_calloc_routine
	.section	.text.unlikely.LITE_calloc_routine
.LCOLDE5:
	.section	.text.LITE_calloc_routine
.LHOTE5:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"ptr"
.LC7:
	.string	"%s == NULL! LITE_free(%s) aborted."
	.section	.text.unlikely.LITE_free_routine,"ax",@progbits
.LCOLDB8:
	.section	.text.LITE_free_routine,"ax",@progbits
.LHOTB8:
	.globl	LITE_free_routine
	.type	LITE_free_routine, @function
LITE_free_routine:
.LFB24:
	.loc 1 479 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 479 0
	movl	8(%ebp), %eax
	.loc 1 480 0
	testl	%eax, %eax
	jne	.L19
	.loc 1 480 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$.LC6
	pushl	$.LC6
	pushl	$.LC7
	pushl	$2
	pushl	$480
	pushl	$__FUNCTION__.3631
	call	LITE_syslog
.LVL14:
	addl	$32, %esp
	.loc 1 481 0 is_stmt 1 discriminator 1
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L19:
	.cfi_restore_state
.LVL15:
.LBB4:
.LBB5:
	.loc 1 437 0
	movl	%eax, 8(%ebp)
.LVL16:
.LBE5:
.LBE4:
	.loc 1 481 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB7:
.LBB6:
	.loc 1 437 0
	jmp	HAL_Free
.LVL17:
.LBE6:
.LBE7:
	.cfi_endproc
.LFE24:
	.size	LITE_free_routine, .-LITE_free_routine
	.section	.text.unlikely.LITE_free_routine
.LCOLDE8:
	.section	.text.LITE_free_routine
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"WITH_MEM_STATS = %d"
	.section	.text.unlikely.LITE_dump_malloc_free_stats,"ax",@progbits
.LCOLDB10:
	.section	.text.LITE_dump_malloc_free_stats,"ax",@progbits
.LHOTB10:
	.globl	LITE_dump_malloc_free_stats
	.type	LITE_dump_malloc_free_stats, @function
LITE_dump_malloc_free_stats:
.LFB25:
	.loc 1 484 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 594 0
	pushl	$0
	pushl	$.LC9
	pushl	$2
	pushl	$594
	pushl	$__FUNCTION__.3636
	call	LITE_syslog
.LVL19:
	.loc 1 597 0
	addl	$32, %esp
	.loc 1 598 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	LITE_dump_malloc_free_stats, .-LITE_dump_malloc_free_stats
	.section	.text.unlikely.LITE_dump_malloc_free_stats
.LCOLDE10:
	.section	.text.LITE_dump_malloc_free_stats
.LHOTE10:
	.section	.rodata.__FUNCTION__.3636,"a",@progbits
	.align 4
	.type	__FUNCTION__.3636, @object
	.size	__FUNCTION__.3636, 28
__FUNCTION__.3636:
	.string	"LITE_dump_malloc_free_stats"
	.section	.rodata.__FUNCTION__.3631,"a",@progbits
	.align 4
	.type	__FUNCTION__.3631, @object
	.size	__FUNCTION__.3631, 18
__FUNCTION__.3631:
	.string	"LITE_free_routine"
	.section	.rodata.__func__.3627,"a",@progbits
	.align 4
	.type	__func__.3627, @object
	.size	__func__.3627, 20
__func__.3627:
	.string	"LITE_calloc_routine"
	.section	.rodata.__func__.3620,"a",@progbits
	.align 4
	.type	__func__.3620, @object
	.size	__func__.3620, 20
__func__.3620:
	.string	"LITE_malloc_routine"
	.globl	mem_recs
	.section	.data.mem_recs,"aw",@progbits
	.align 4
	.type	mem_recs, @object
	.size	mem_recs, 8
mem_recs:
	.long	mem_recs
	.long	mem_recs
	.text
.Letext0:
	.section	.text.unlikely.LITE_track_malloc_callstack
.Letext_cold0:
	.file 2 "framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-list.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.file 4 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 5 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x40c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF38
	.byte	0xc
	.long	.LASF39
	.long	.LASF40
	.long	.Ldebug_ranges0+0x18
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
	.long	.LASF41
	.byte	0x6
	.byte	0xd8
	.long	0x64
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
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x7d
	.uleb128 0x6
	.byte	0x4
	.long	0x99
	.uleb128 0x7
	.long	0x7d
	.uleb128 0x8
	.long	.LASF42
	.byte	0x4
	.long	0x64
	.byte	0x5
	.byte	0x22
	.long	0xd3
	.uleb128 0x9
	.long	.LASF12
	.byte	0
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.uleb128 0x9
	.long	.LASF14
	.byte	0x2
	.uleb128 0x9
	.long	.LASF15
	.byte	0x3
	.uleb128 0x9
	.long	.LASF16
	.byte	0x4
	.uleb128 0x9
	.long	.LASF17
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.long	.LASF43
	.byte	0x8
	.byte	0x2
	.byte	0x1b
	.long	0xf8
	.uleb128 0xb
	.long	.LASF18
	.byte	0x2
	.byte	0x1c
	.long	0xf8
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x2
	.byte	0x1c
	.long	0xf8
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xd3
	.uleb128 0xc
	.long	.LASF44
	.byte	0x1
	.value	0x187
	.byte	0x1
	.long	0x118
	.uleb128 0xd
	.string	"ptr"
	.byte	0x1
	.value	0x187
	.long	0x8b
	.byte	0
	.uleb128 0xe
	.long	.LASF29
	.byte	0x1
	.byte	0x5d
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x13c
	.uleb128 0xf
	.long	.LASF20
	.byte	0x1
	.byte	0x5d
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0x64
	.long	0x8b
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x194
	.uleb128 0x11
	.string	"f"
	.byte	0x1
	.byte	0x64
	.long	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"l"
	.byte	0x1
	.byte	0x64
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"ptr"
	.byte	0x1
	.byte	0x64
	.long	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.long	.LASF21
	.byte	0x1
	.byte	0x64
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x12
	.uleb128 0x13
	.long	.LVL2
	.long	0x3e3
	.byte	0
	.uleb128 0x7
	.long	0x5d
	.uleb128 0x14
	.long	.LASF23
	.byte	0x1
	.value	0x128
	.long	0x8b
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f7
	.uleb128 0x15
	.string	"f"
	.byte	0x1
	.value	0x128
	.long	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"l"
	.byte	0x1
	.value	0x128
	.long	0x194
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.value	0x128
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x12
	.uleb128 0x17
	.string	"ptr"
	.byte	0x1
	.value	0x12a
	.long	0x8b
	.long	.LLST0
	.uleb128 0x13
	.long	.LVL4
	.long	0x3ee
	.byte	0
	.uleb128 0x18
	.long	0xfe
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x225
	.uleb128 0x19
	.long	0x10b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	.LVL8
	.long	0x3f9
	.uleb128 0x1b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF24
	.byte	0x1
	.value	0x1b8
	.long	0x8b
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x282
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.value	0x1b8
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x12
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x1
	.value	0x1ba
	.long	0x5d
	.byte	0
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x1
	.value	0x1bb
	.long	0x8d
	.byte	0
	.uleb128 0x1d
	.long	.LASF28
	.long	0x292
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3620
	.uleb128 0x13
	.long	.LVL10
	.long	0x199
	.byte	0
	.uleb128 0x1e
	.long	0x99
	.long	0x292
	.uleb128 0x1f
	.long	0x84
	.byte	0x13
	.byte	0
	.uleb128 0x7
	.long	0x282
	.uleb128 0x14
	.long	.LASF27
	.byte	0x1
	.value	0x1cb
	.long	0x8b
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff
	.uleb128 0x15
	.string	"n"
	.byte	0x1
	.value	0x1cb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.string	"s"
	.byte	0x1
	.value	0x1cb
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x12
	.uleb128 0x1c
	.long	.LASF25
	.byte	0x1
	.value	0x1cd
	.long	0x5d
	.byte	0
	.uleb128 0x1c
	.long	.LASF26
	.byte	0x1
	.value	0x1ce
	.long	0x8d
	.byte	0
	.uleb128 0x1d
	.long	.LASF28
	.long	0x2ff
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3627
	.uleb128 0x13
	.long	.LVL12
	.long	0x199
	.byte	0
	.uleb128 0x7
	.long	0x282
	.uleb128 0x20
	.long	.LASF30
	.byte	0x1
	.value	0x1de
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a
	.uleb128 0x21
	.string	"ptr"
	.byte	0x1
	.value	0x1de
	.long	0x8b
	.long	.LLST1
	.uleb128 0x1d
	.long	.LASF31
	.long	0x37a
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3631
	.uleb128 0x22
	.long	0xfe
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1e0
	.long	0x360
	.uleb128 0x23
	.long	0x10b
	.long	.LLST2
	.uleb128 0x24
	.long	.LVL17
	.long	0x3f9
	.byte	0
	.uleb128 0x13
	.long	.LVL14
	.long	0x404
	.byte	0
	.uleb128 0x1e
	.long	0x99
	.long	0x37a
	.uleb128 0x1f
	.long	0x84
	.byte	0x11
	.byte	0
	.uleb128 0x7
	.long	0x36a
	.uleb128 0x20
	.long	.LASF32
	.byte	0x1
	.value	0x1e3
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bd
	.uleb128 0x16
	.long	.LASF33
	.byte	0x1
	.value	0x1e3
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LASF31
	.long	0x3cd
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3636
	.uleb128 0x13
	.long	.LVL19
	.long	0x404
	.byte	0
	.uleb128 0x1e
	.long	0x99
	.long	0x3cd
	.uleb128 0x1f
	.long	0x84
	.byte	0x1b
	.byte	0
	.uleb128 0x7
	.long	0x3bd
	.uleb128 0x25
	.long	.LASF45
	.byte	0x1
	.byte	0x16
	.long	0xd3
	.uleb128 0x5
	.byte	0x3
	.long	mem_recs
	.uleb128 0x26
	.long	.LASF34
	.long	.LASF34
	.byte	0x3
	.byte	0x8d
	.uleb128 0x26
	.long	.LASF35
	.long	.LASF35
	.byte	0x4
	.byte	0xcc
	.uleb128 0x26
	.long	.LASF36
	.long	.LASF36
	.byte	0x4
	.byte	0xd4
	.uleb128 0x26
	.long	.LASF37
	.long	.LASF37
	.byte	0x5
	.byte	0x34
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0x18
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
	.long	.LVL5
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LFE20
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL13
	.long	.LVL16
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL15
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x54
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
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
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
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"LOG_EMERG_LEVEL"
.LASF41:
	.string	"size_t"
.LASF18:
	.string	"next"
.LASF24:
	.string	"LITE_malloc_routine"
.LASF20:
	.string	"state"
.LASF30:
	.string	"LITE_free_routine"
.LASF33:
	.string	"level"
.LASF32:
	.string	"LITE_dump_malloc_free_stats"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"__func__"
.LASF36:
	.string	"HAL_Free"
.LASF21:
	.string	"size"
.LASF16:
	.string	"LOG_INFO_LEVEL"
.LASF5:
	.string	"long unsigned int"
.LASF38:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"HAL_Malloc"
.LASF34:
	.string	"realloc"
.LASF31:
	.string	"__FUNCTION__"
.LASF29:
	.string	"LITE_track_malloc_callstack"
.LASF26:
	.string	"module_name"
.LASF23:
	.string	"LITE_malloc_internal"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF37:
	.string	"LITE_syslog"
.LASF42:
	.string	"_LOGLEVEL"
.LASF13:
	.string	"LOG_CRIT_LEVEL"
.LASF17:
	.string	"LOG_DEBUG_LEVEL"
.LASF27:
	.string	"LITE_calloc_routine"
.LASF11:
	.string	"sizetype"
.LASF43:
	.string	"list_head"
.LASF6:
	.string	"long long int"
.LASF10:
	.string	"char"
.LASF40:
	.string	"/home/stone/Documents/pca"
.LASF2:
	.string	"short int"
.LASF45:
	.string	"mem_recs"
.LASF15:
	.string	"LOG_WARNING_LEVEL"
.LASF44:
	.string	"LITE_free_internal"
.LASF4:
	.string	"long int"
.LASF9:
	.string	"long double"
.LASF14:
	.string	"LOG_ERR_LEVEL"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"LITE_realloc_internal"
.LASF25:
	.string	"magic"
.LASF39:
	.string	"src/mem_stats.c"
.LASF19:
	.string	"prev"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
