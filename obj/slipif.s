	.file	"slipif.c"
	.text
.Ltext0:
	.section	.text.unlikely.slipif_rxbyte_input,"ax",@progbits
.LCOLDB0:
	.section	.text.slipif_rxbyte_input,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.slipif_rxbyte_input
.Ltext_cold0:
	.section	.text.slipif_rxbyte_input
	.type	slipif_rxbyte_input, @function
slipif_rxbyte_input:
.LFB26:
	.file 1 "kernel/protocols/net/netif/slipif.c"
	.loc 1 311 0
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$12, %esp
.LBB4:
.LBB5:
	.loc 1 215 0
	movl	32(%eax), %ebx
.LVL1:
	.loc 1 217 0
	movb	12(%ebx), %cl
	testb	%cl, %cl
	je	.L3
	decb	%cl
	je	.L4
	jmp	.L2
.L3:
	.loc 1 219 0
	cmpb	$-64, %dl
	je	.L5
	cmpb	$-37, %dl
	jne	.L2
	.loc 1 236 0
	movb	$1, 12(%ebx)
	jmp	.L1
.L5:
	movl	%eax, %edi
	.loc 1 221 0
	movzwl	16(%ebx), %eax
.LVL2:
	testw	%ax, %ax
	je	.L1
.LVL3:
	.loc 1 224 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	8(%ebx)
	call	pbuf_realloc
.LVL4:
	.loc 1 229 0
	movl	8(%ebx), %esi
.LVL5:
.LBE5:
.LBE4:
	.loc 1 314 0
	addl	$16, %esp
.LBB8:
.LBB6:
	.loc 1 230 0
	movl	$0, 8(%ebx)
	movl	$0, 4(%ebx)
	.loc 1 231 0
	movw	$0, 16(%ebx)
	movw	$0, 14(%ebx)
.LVL6:
.LBE6:
.LBE8:
	.loc 1 314 0
	testl	%esi, %esi
	jne	.L8
	jmp	.L1
.LVL7:
.L4:
.LBB9:
.LBB7:
	.loc 1 245 0
	cmpb	$-36, %dl
	je	.L17
	.loc 1 250 0
	cmpb	$-35, %dl
	movb	$-37, %al
.LVL8:
	cmove	%eax, %esi
	jmp	.L11
.LVL9:
.L17:
	.loc 1 247 0
	movl	$-64, %esi
.LVL10:
.L11:
	.loc 1 255 0
	movb	$0, 12(%ebx)
.L2:
	.loc 1 262 0
	cmpl	$0, 4(%ebx)
	jne	.L13
	.loc 1 265 0
	pushl	%edi
	pushl	$3
	pushl	$1566
	pushl	$2
	call	pbuf_alloc
.LVL11:
	.loc 1 267 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 265 0
	movl	%eax, 4(%ebx)
	.loc 1 267 0
	je	.L1
	.loc 1 274 0
	movl	8(%ebx), %edx
	testl	%edx, %edx
	je	.L14
	.loc 1 276 0
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	pbuf_cat
.LVL12:
	addl	$16, %esp
	jmp	.L13
.L14:
	.loc 1 279 0
	movl	%eax, 8(%ebx)
.L13:
	.loc 1 284 0
	movl	4(%ebx), %eax
	testl	%eax, %eax
	je	.L1
	.loc 1 284 0
	cmpw	$1500, 16(%ebx)
	ja	.L1
	.loc 1 285 0
	movzwl	14(%ebx), %edx
	movl	4(%eax), %eax
	movl	%esi, %ecx
	movb	%cl, (%eax,%edx)
	.loc 1 287 0
	movw	14(%ebx), %ax
	.loc 1 288 0
	movl	4(%ebx), %edx
	.loc 1 286 0
	incw	16(%ebx)
	.loc 1 287 0
	incl	%eax
	.loc 1 288 0
	cmpw	10(%edx), %ax
	.loc 1 287 0
	movw	%ax, 14(%ebx)
	.loc 1 288 0
	jb	.L1
.LVL13:
	.loc 1 291 0
	movl	(%edx), %eax
	.loc 1 290 0
	movw	$0, 14(%ebx)
	.loc 1 291 0
	testl	%eax, %eax
	je	.L15
	.loc 1 291 0
	cmpw	$0, 10(%eax)
	je	.L15
	.loc 1 293 0
	movl	%eax, 4(%ebx)
	jmp	.L1
.L15:
	.loc 1 297 0
	movl	$0, 4(%ebx)
	jmp	.L1
.LVL14:
.L8:
.LBE7:
.LBE9:
	.loc 1 315 0
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	*16(%edi)
.LVL15:
	addl	$16, %esp
	testb	%al, %al
	je	.L1
	.loc 1 316 0
	subl	$12, %esp
	pushl	%esi
	call	pbuf_free
.LVL16:
	addl	$16, %esp
.LVL17:
.L1:
	.loc 1 319 0
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
.LFE26:
	.size	slipif_rxbyte_input, .-slipif_rxbyte_input
	.section	.text.unlikely.slipif_rxbyte_input
.LCOLDE0:
	.section	.text.slipif_rxbyte_input
.LHOTE0:
	.section	.text.unlikely.slipif_loop_thread,"ax",@progbits
.LCOLDB1:
	.section	.text.slipif_loop_thread,"ax",@progbits
.LHOTB1:
	.type	slipif_loop_thread, @function
slipif_loop_thread:
.LFB27:
	.loc 1 331 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 337 0
	leal	-29(%ebp), %edi
	.loc 1 331 0
	subl	$28, %esp
	.loc 1 331 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL19:
	.loc 1 334 0
	movl	32(%ebx), %esi
.LVL20:
.L36:
	.loc 1 337 0
	pushl	%eax
	pushl	$1
	pushl	%edi
	pushl	(%esi)
	call	sio_read
.LVL21:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L36
	.loc 1 338 0
	movzbl	-29(%ebp), %edx
	movl	%ebx, %eax
	call	slipif_rxbyte_input
.LVL22:
	jmp	.L36
	.cfi_endproc
.LFE27:
	.size	slipif_loop_thread, .-slipif_loop_thread
	.section	.text.unlikely.slipif_loop_thread
.LCOLDE1:
	.section	.text.slipif_loop_thread
.LHOTE1:
	.section	.text.unlikely.slipif_output_v4,"ax",@progbits
.LCOLDB2:
	.section	.text.slipif_output_v4,"ax",@progbits
.LHOTB2:
	.type	slipif_output_v4, @function
slipif_output_v4:
.LFB24:
	.loc 1 173 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	8(%ebp), %eax
	.loc 1 173 0
	movl	12(%ebp), %esi
	movl	32(%eax), %ebx
.LVL24:
.LBB12:
.LBB13:
	.loc 1 132 0
	pushl	(%ebx)
	pushl	$192
	call	sio_send
.LVL25:
	addl	$16, %esp
.LVL26:
.L43:
	.loc 1 134 0
	testl	%esi, %esi
	je	.L49
	xorl	%edi, %edi
.L50:
.LVL27:
	.loc 1 135 0
	cmpw	10(%esi), %di
	jnb	.L54
	.loc 1 136 0
	movl	4(%esi), %edx
	movzwl	%di, %eax
	movzbl	(%edx,%eax), %eax
.LVL28:
	.loc 1 137 0
	cmpb	$-64, %al
	je	.L45
	cmpb	$-37, %al
	jne	.L55
	.loc 1 145 0
	pushl	%ecx
	pushl	%ecx
	pushl	(%ebx)
	pushl	$219
	call	sio_send
.LVL29:
	.loc 1 146 0
	popl	%eax
	popl	%edx
	pushl	(%ebx)
	pushl	$221
	jmp	.L53
.LVL30:
.L45:
	.loc 1 140 0
	pushl	%ecx
	pushl	%ecx
	pushl	(%ebx)
	pushl	$219
	call	sio_send
.LVL31:
	.loc 1 141 0
	popl	%eax
	popl	%edx
	pushl	(%ebx)
	pushl	$220
	jmp	.L53
.LVL32:
.L55:
	.loc 1 150 0
	pushl	%edx
	pushl	%edx
	pushl	(%ebx)
	pushl	%eax
.LVL33:
.L53:
	call	sio_send
.LVL34:
	.loc 1 135 0
	incl	%edi
.LVL35:
	.loc 1 150 0
	addl	$16, %esp
	jmp	.L50
.L54:
	.loc 1 134 0
	movl	(%esi), %esi
.LVL36:
	jmp	.L43
.LVL37:
.L49:
	.loc 1 156 0
	pushl	%eax
	pushl	%eax
	pushl	(%ebx)
	pushl	$192
	call	sio_send
.LVL38:
.LBE13:
.LBE12:
	.loc 1 176 0
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL39:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	slipif_output_v4, .-slipif_output_v4
	.section	.text.unlikely.slipif_output_v4
.LCOLDE2:
	.section	.text.slipif_output_v4
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"slipif_loop"
	.section	.text.unlikely.slipif_init,"ax",@progbits
.LCOLDB4:
	.section	.text.slipif_init,"ax",@progbits
.LHOTB4:
	.globl	slipif_init
	.type	slipif_init, @function
slipif_init:
.LFB28:
	.loc 1 362 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 362 0
	movl	8(%ebp), %esi
	.loc 1 369 0
	subl	$12, %esp
	pushl	$20
	call	mem_malloc
.LVL41:
	movl	%eax, %ebx
.LVL42:
	.loc 1 370 0
	addl	$16, %esp
	.loc 1 371 0
	movb	$-1, %al
.LVL43:
	.loc 1 370 0
	testl	%ebx, %ebx
	je	.L57
	.loc 1 385 0
	movl	32(%esi), %eax
	.loc 1 374 0
	movb	$115, 62(%esi)
	.loc 1 375 0
	movb	$108, 63(%esi)
	.loc 1 377 0
	movl	$slipif_output_v4, 20(%esi)
	.loc 1 382 0
	movw	$1500, 52(%esi)
	.loc 1 385 0
	testl	%eax, %eax
	je	.L58
	.loc 1 386 0
	movzbl	(%eax), %eax
.LVL44:
	jmp	.L59
.LVL45:
.L58:
	.loc 1 388 0
	movzbl	64(%esi), %eax
.LVL46:
.L59:
	.loc 1 391 0
	subl	$12, %esp
	pushl	%eax
	call	sio_open
.LVL47:
	.loc 1 392 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 391 0
	movl	%eax, (%ebx)
	.loc 1 392 0
	jne	.L60
	.loc 1 394 0
	subl	$12, %esp
	pushl	%ebx
	call	mem_free
.LVL48:
	.loc 1 395 0
	addl	$16, %esp
	movb	$-12, %al
	jmp	.L57
.L60:
	.loc 1 415 0
	subl	$12, %esp
	.loc 1 399 0
	movl	$0, 4(%ebx)
	.loc 1 400 0
	movl	$0, 8(%ebx)
	.loc 1 401 0
	movb	$0, 12(%ebx)
	.loc 1 402 0
	movw	$0, 14(%ebx)
	.loc 1 403 0
	movw	$0, 16(%ebx)
	.loc 1 408 0
	movl	%ebx, 32(%esi)
	.loc 1 415 0
	pushl	$1
	pushl	$0
	pushl	%esi
	pushl	$slipif_loop_thread
	pushl	$.LC3
	call	sys_thread_new
.LVL49:
	.loc 1 418 0
	addl	$32, %esp
	xorl	%eax, %eax
.L57:
	.loc 1 419 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL50:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	slipif_init, .-slipif_init
	.section	.text.unlikely.slipif_init
.LCOLDE4:
	.section	.text.slipif_init
.LHOTE4:
	.section	.text.unlikely.slipif_poll,"ax",@progbits
.LCOLDB5:
	.section	.text.slipif_poll,"ax",@progbits
.LHOTB5:
	.globl	slipif_poll
	.type	slipif_poll, @function
slipif_poll:
.LFB29:
	.loc 1 428 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 437 0
	leal	-29(%ebp), %edi
	.loc 1 428 0
	subl	$28, %esp
	.loc 1 428 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 435 0
	movl	32(%ebx), %esi
.LVL52:
.L64:
	.loc 1 437 0
	pushl	%eax
	pushl	$1
	pushl	%edi
	pushl	(%esi)
	call	sio_tryread
.LVL53:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L68
	.loc 1 438 0
	movzbl	-29(%ebp), %edx
	movl	%ebx, %eax
	call	slipif_rxbyte_input
.LVL54:
	jmp	.L64
.L68:
	.loc 1 440 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L66
	call	__stack_chk_fail
.LVL55:
.L66:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL56:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	slipif_poll, .-slipif_poll
	.section	.text.unlikely.slipif_poll
.LCOLDE5:
	.section	.text.slipif_poll
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.slipif_rxbyte_input
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 5 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 6 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 7 "./kernel/protocols/net/include/lwip/netif.h"
	.file 8 "./kernel/protocols/net/include/lwip/sio.h"
	.file 9 "./kernel/protocols/net/include/lwip/mem.h"
	.file 10 "./kernel/protocols/net/include/lwip/sys.h"
	.file 11 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8a5
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF107
	.byte	0xc
	.long	.LASF108
	.long	.LASF109
	.long	.Ldebug_ranges0+0x20
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.byte	0x31
	.long	0x48
	.uleb128 0x7
	.long	.LASF15
	.byte	0x2
	.byte	0x32
	.long	0x41
	.uleb128 0x7
	.long	.LASF16
	.byte	0x2
	.byte	0x33
	.long	0x56
	.uleb128 0x7
	.long	.LASF17
	.byte	0x2
	.byte	0x34
	.long	0x4f
	.uleb128 0x7
	.long	.LASF18
	.byte	0x2
	.byte	0x35
	.long	0x64
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0x39
	.long	0xa6
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x3
	.byte	0x3d
	.long	0x150
	.uleb128 0x9
	.long	.LASF20
	.byte	0
	.uleb128 0xa
	.long	.LASF21
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF22
	.sleb128 -2
	.uleb128 0xa
	.long	.LASF23
	.sleb128 -3
	.uleb128 0xa
	.long	.LASF24
	.sleb128 -4
	.uleb128 0xa
	.long	.LASF25
	.sleb128 -5
	.uleb128 0xa
	.long	.LASF26
	.sleb128 -6
	.uleb128 0xa
	.long	.LASF27
	.sleb128 -7
	.uleb128 0xa
	.long	.LASF28
	.sleb128 -8
	.uleb128 0xa
	.long	.LASF29
	.sleb128 -9
	.uleb128 0xa
	.long	.LASF30
	.sleb128 -10
	.uleb128 0xa
	.long	.LASF31
	.sleb128 -11
	.uleb128 0xa
	.long	.LASF32
	.sleb128 -12
	.uleb128 0xa
	.long	.LASF33
	.sleb128 -13
	.uleb128 0xa
	.long	.LASF34
	.sleb128 -14
	.uleb128 0xa
	.long	.LASF35
	.sleb128 -15
	.uleb128 0xa
	.long	.LASF36
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF37
	.uleb128 0xb
	.long	.LASF49
	.byte	0x4
	.byte	0x4
	.byte	0x35
	.long	0x170
	.uleb128 0xc
	.long	.LASF51
	.byte	0x4
	.byte	0x36
	.long	0xc7
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF38
	.byte	0x4
	.byte	0x49
	.long	0x157
	.uleb128 0x7
	.long	.LASF39
	.byte	0x5
	.byte	0xe1
	.long	0x170
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x48
	.long	0x1b1
	.uleb128 0x9
	.long	.LASF40
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x1
	.uleb128 0x9
	.long	.LASF42
	.byte	0x2
	.uleb128 0x9
	.long	.LASF43
	.byte	0x3
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x69
	.long	0x1d6
	.uleb128 0x9
	.long	.LASF45
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.uleb128 0x9
	.long	.LASF47
	.byte	0x2
	.uleb128 0x9
	.long	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x10
	.byte	0x6
	.byte	0x9d
	.long	0x237
	.uleb128 0xc
	.long	.LASF52
	.byte	0x6
	.byte	0x9f
	.long	0x237
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x6
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0xc
	.long	.LASF54
	.byte	0x6
	.byte	0xab
	.long	0xb1
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x6
	.byte	0xae
	.long	0xb1
	.byte	0xa
	.uleb128 0xc
	.long	.LASF55
	.byte	0x6
	.byte	0xb1
	.long	0x9b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF56
	.byte	0x6
	.byte	0xb4
	.long	0x9b
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x6
	.byte	0xc2
	.long	0xb1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1d6
	.uleb128 0xe
	.long	.LASF83
	.byte	0x4
	.long	0x2c
	.byte	0x7
	.byte	0x8f
	.long	0x25a
	.uleb128 0x9
	.long	.LASF57
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x260
	.uleb128 0xb
	.long	.LASF59
	.byte	0x54
	.byte	0x7
	.byte	0xe5
	.long	0x384
	.uleb128 0xc
	.long	.LASF52
	.byte	0x7
	.byte	0xe7
	.long	0x25a
	.byte	0
	.uleb128 0xc
	.long	.LASF60
	.byte	0x7
	.byte	0xeb
	.long	0x17b
	.byte	0x4
	.uleb128 0xc
	.long	.LASF61
	.byte	0x7
	.byte	0xec
	.long	0x17b
	.byte	0x8
	.uleb128 0xd
	.string	"gw"
	.byte	0x7
	.byte	0xed
	.long	0x17b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF62
	.byte	0x7
	.byte	0xf8
	.long	0x384
	.byte	0x10
	.uleb128 0xc
	.long	.LASF63
	.byte	0x7
	.byte	0xfe
	.long	0x3a9
	.byte	0x14
	.uleb128 0xf
	.long	.LASF64
	.byte	0x7
	.value	0x103
	.long	0x3de
	.byte	0x18
	.uleb128 0xf
	.long	.LASF65
	.byte	0x7
	.value	0x10e
	.long	0x403
	.byte	0x1c
	.uleb128 0xf
	.long	.LASF66
	.byte	0x7
	.value	0x11b
	.long	0x79
	.byte	0x20
	.uleb128 0xf
	.long	.LASF67
	.byte	0x7
	.value	0x11d
	.long	0x449
	.byte	0x24
	.uleb128 0xf
	.long	.LASF68
	.byte	0x7
	.value	0x125
	.long	0x9b
	.byte	0x2c
	.uleb128 0xf
	.long	.LASF69
	.byte	0x7
	.value	0x129
	.long	0x82
	.byte	0x30
	.uleb128 0x10
	.string	"mtu"
	.byte	0x7
	.value	0x12f
	.long	0xb1
	.byte	0x34
	.uleb128 0xf
	.long	.LASF70
	.byte	0x7
	.value	0x131
	.long	0x9b
	.byte	0x36
	.uleb128 0xf
	.long	.LASF71
	.byte	0x7
	.value	0x133
	.long	0x459
	.byte	0x37
	.uleb128 0xf
	.long	.LASF56
	.byte	0x7
	.value	0x135
	.long	0x9b
	.byte	0x3d
	.uleb128 0xf
	.long	.LASF72
	.byte	0x7
	.value	0x137
	.long	0x469
	.byte	0x3e
	.uleb128 0x10
	.string	"num"
	.byte	0x7
	.value	0x139
	.long	0x9b
	.byte	0x40
	.uleb128 0xf
	.long	.LASF73
	.byte	0x7
	.value	0x147
	.long	0x41f
	.byte	0x44
	.uleb128 0xf
	.long	.LASF74
	.byte	0x7
	.value	0x153
	.long	0x237
	.byte	0x48
	.uleb128 0xf
	.long	.LASF75
	.byte	0x7
	.value	0x154
	.long	0x237
	.byte	0x4c
	.uleb128 0xf
	.long	.LASF76
	.byte	0x7
	.value	0x156
	.long	0xb1
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF77
	.byte	0x7
	.byte	0xa2
	.long	0x38f
	.uleb128 0x5
	.byte	0x4
	.long	0x395
	.uleb128 0x11
	.long	0xd2
	.long	0x3a9
	.uleb128 0x12
	.long	0x237
	.uleb128 0x12
	.long	0x25a
	.byte	0
	.uleb128 0x7
	.long	.LASF78
	.byte	0x7
	.byte	0xb1
	.long	0x3b4
	.uleb128 0x5
	.byte	0x4
	.long	0x3ba
	.uleb128 0x11
	.long	0xd2
	.long	0x3d3
	.uleb128 0x12
	.long	0x25a
	.uleb128 0x12
	.long	0x237
	.uleb128 0x12
	.long	0x3d3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3d9
	.uleb128 0x6
	.long	0x170
	.uleb128 0x7
	.long	.LASF79
	.byte	0x7
	.byte	0xc8
	.long	0x3e9
	.uleb128 0x5
	.byte	0x4
	.long	0x3ef
	.uleb128 0x11
	.long	0xd2
	.long	0x403
	.uleb128 0x12
	.long	0x25a
	.uleb128 0x12
	.long	0x237
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.byte	0x7
	.byte	0xca
	.long	0x40e
	.uleb128 0x5
	.byte	0x4
	.long	0x414
	.uleb128 0x13
	.long	0x41f
	.uleb128 0x12
	.long	0x25a
	.byte	0
	.uleb128 0x7
	.long	.LASF81
	.byte	0x7
	.byte	0xcd
	.long	0x42a
	.uleb128 0x5
	.byte	0x4
	.long	0x430
	.uleb128 0x11
	.long	0xd2
	.long	0x449
	.uleb128 0x12
	.long	0x25a
	.uleb128 0x12
	.long	0x3d3
	.uleb128 0x12
	.long	0x23d
	.byte	0
	.uleb128 0x14
	.long	0x79
	.long	0x459
	.uleb128 0x15
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x9b
	.long	0x469
	.uleb128 0x15
	.long	0x72
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	0x7b
	.long	0x479
	.uleb128 0x15
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF82
	.byte	0x8
	.byte	0x30
	.long	0x79
	.uleb128 0xe
	.long	.LASF84
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.byte	0x5a
	.long	0x4a1
	.uleb128 0x9
	.long	.LASF85
	.byte	0
	.uleb128 0x9
	.long	.LASF86
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF87
	.byte	0x14
	.byte	0x1
	.byte	0x5f
	.long	0x4ef
	.uleb128 0xd
	.string	"sd"
	.byte	0x1
	.byte	0x60
	.long	0x479
	.byte	0
	.uleb128 0xd
	.string	"p"
	.byte	0x1
	.byte	0x62
	.long	0x237
	.byte	0x4
	.uleb128 0xd
	.string	"q"
	.byte	0x1
	.byte	0x62
	.long	0x237
	.byte	0x8
	.uleb128 0xc
	.long	.LASF66
	.byte	0x1
	.byte	0x63
	.long	0x9b
	.byte	0xc
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x64
	.long	0xb1
	.byte	0xe
	.uleb128 0xc
	.long	.LASF88
	.byte	0x1
	.byte	0x64
	.long	0xb1
	.byte	0x10
	.byte	0
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.byte	0x74
	.long	0xd2
	.byte	0x1
	.long	0x53a
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0x74
	.long	0x25a
	.uleb128 0x18
	.string	"p"
	.byte	0x1
	.byte	0x74
	.long	0x237
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.byte	0x76
	.long	0x53a
	.uleb128 0x1a
	.string	"q"
	.byte	0x1
	.byte	0x77
	.long	0x237
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x78
	.long	0xb1
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x79
	.long	0x9b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x4a1
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0xcf
	.long	0x237
	.byte	0x1
	.long	0x579
	.uleb128 0x17
	.long	.LASF59
	.byte	0x1
	.byte	0xcf
	.long	0x25a
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.byte	0xcf
	.long	0x9b
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.byte	0xd1
	.long	0x53a
	.uleb128 0x1a
	.string	"t"
	.byte	0x1
	.byte	0xd2
	.long	0x237
	.byte	0
	.uleb128 0x1b
	.long	.LASF110
	.byte	0x1
	.value	0x136
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x61b
	.uleb128 0x1c
	.long	.LASF59
	.byte	0x1
	.value	0x136
	.long	0x25a
	.long	.LLST0
	.uleb128 0x1d
	.string	"c"
	.byte	0x1
	.value	0x136
	.long	0x9b
	.long	.LLST1
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x138
	.long	0x237
	.uleb128 0x1f
	.long	0x540
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x139
	.long	0x611
	.uleb128 0x20
	.long	0x55b
	.long	.LLST2
	.uleb128 0x20
	.long	0x550
	.long	.LLST3
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x22
	.long	0x564
	.long	.LLST4
	.uleb128 0x22
	.long	0x56f
	.long	.LLST5
	.uleb128 0x23
	.long	.LVL4
	.long	0x822
	.uleb128 0x23
	.long	.LVL11
	.long	0x82e
	.uleb128 0x23
	.long	.LVL12
	.long	0x839
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL16
	.long	0x845
	.byte	0
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.value	0x14a
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x682
	.uleb128 0x25
	.string	"nf"
	.byte	0x1
	.value	0x14a
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x14c
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x27
	.long	.LASF59
	.byte	0x1
	.value	0x14d
	.long	0x25a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x27
	.long	.LASF89
	.byte	0x1
	.value	0x14e
	.long	0x53a
	.uleb128 0x1
	.byte	0x56
	.uleb128 0x23
	.long	.LVL21
	.long	0x851
	.uleb128 0x28
	.long	.LVL22
	.long	0x579
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF93
	.byte	0x1
	.byte	0xac
	.long	0xd2
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x740
	.uleb128 0x2b
	.long	.LASF59
	.byte	0x1
	.byte	0xac
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xac
	.long	0x237
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF94
	.byte	0x1
	.byte	0xac
	.long	0x3d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	0x4ef
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0xaf
	.uleb128 0x2e
	.long	0x4ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x50a
	.long	.LLST6
	.uleb128 0x2f
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x22
	.long	0x513
	.long	.LLST7
	.uleb128 0x22
	.long	0x51e
	.long	.LLST8
	.uleb128 0x22
	.long	0x527
	.long	.LLST9
	.uleb128 0x22
	.long	0x530
	.long	.LLST10
	.uleb128 0x23
	.long	.LVL25
	.long	0x85c
	.uleb128 0x23
	.long	.LVL29
	.long	0x85c
	.uleb128 0x23
	.long	.LVL31
	.long	0x85c
	.uleb128 0x23
	.long	.LVL34
	.long	0x85c
	.uleb128 0x23
	.long	.LVL38
	.long	0x85c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF111
	.byte	0x1
	.value	0x169
	.long	0xd2
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ae
	.uleb128 0x31
	.long	.LASF59
	.byte	0x1
	.value	0x169
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0x16b
	.long	0x53a
	.long	.LLST11
	.uleb128 0x32
	.long	.LASF95
	.byte	0x1
	.value	0x16c
	.long	0x9b
	.long	.LLST12
	.uleb128 0x23
	.long	.LVL41
	.long	0x867
	.uleb128 0x23
	.long	.LVL47
	.long	0x872
	.uleb128 0x23
	.long	.LVL48
	.long	0x87d
	.uleb128 0x23
	.long	.LVL49
	.long	0x888
	.byte	0
	.uleb128 0x33
	.long	.LASF112
	.byte	0x1
	.value	0x1ab
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x817
	.uleb128 0x31
	.long	.LASF59
	.byte	0x1
	.value	0x1ab
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"c"
	.byte	0x1
	.value	0x1ad
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x32
	.long	.LASF89
	.byte	0x1
	.value	0x1ae
	.long	0x53a
	.long	.LLST13
	.uleb128 0x23
	.long	.LVL53
	.long	0x894
	.uleb128 0x34
	.long	.LVL54
	.long	0x579
	.long	0x80d
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	.LVL55
	.long	0x89f
	.byte	0
	.uleb128 0x35
	.long	.LASF113
	.byte	0xb
	.byte	0x17
	.long	0x2c
	.uleb128 0x36
	.long	.LASF96
	.long	.LASF96
	.byte	0x6
	.value	0x105
	.uleb128 0x37
	.long	.LASF97
	.long	.LASF97
	.byte	0x6
	.byte	0xfa
	.uleb128 0x36
	.long	.LASF98
	.long	.LASF98
	.byte	0x6
	.value	0x10b
	.uleb128 0x36
	.long	.LASF99
	.long	.LASF99
	.byte	0x6
	.value	0x109
	.uleb128 0x37
	.long	.LASF100
	.long	.LASF100
	.byte	0x8
	.byte	0x63
	.uleb128 0x37
	.long	.LASF101
	.long	.LASF101
	.byte	0x8
	.byte	0x49
	.uleb128 0x37
	.long	.LASF102
	.long	.LASF102
	.byte	0x9
	.byte	0x49
	.uleb128 0x37
	.long	.LASF103
	.long	.LASF103
	.byte	0x8
	.byte	0x3d
	.uleb128 0x37
	.long	.LASF104
	.long	.LASF104
	.byte	0x9
	.byte	0x4b
	.uleb128 0x36
	.long	.LASF105
	.long	.LASF105
	.byte	0xa
	.value	0x171
	.uleb128 0x37
	.long	.LASF106
	.long	.LASF106
	.byte	0x8
	.byte	0x70
	.uleb128 0x38
	.long	.LASF114
	.long	.LASF114
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL14
	.long	.LVL17
	.value	0x1
	.byte	0x57
	.long	.LVL17
	.long	.LFE26
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	.LVL5
	.long	.LVL7
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL7
	.long	.LVL11-1
	.value	0x1
	.byte	0x52
	.long	.LVL11-1
	.long	.LFE26
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	.LVL5
	.long	.LVL6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL7
	.long	.LVL10
	.value	0x1
	.byte	0x52
	.long	.LVL10
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x50
	.long	.LVL2
	.long	.LVL6
	.value	0x1
	.byte	0x57
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL14
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL1
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST6:
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x56
	.long	.LVL26
	.long	.LVL38
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL38
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL25
	.long	.LVL39
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL27
	.long	.LVL37
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL31-1
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL47-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL52
	.long	.LVL56
	.value	0x1
	.byte	0x56
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB8
	.long	.LBE8
	.long	.LBB9
	.long	.LBE9
	.long	0
	.long	0
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	.LFB24
	.long	.LFE24
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF103:
	.string	"sio_open"
.LASF104:
	.string	"mem_free"
.LASF62:
	.string	"input"
.LASF99:
	.string	"pbuf_free"
.LASF45:
	.string	"PBUF_RAM"
.LASF44:
	.string	"PBUF_RAW"
.LASF56:
	.string	"flags"
.LASF35:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_USE"
.LASF36:
	.string	"ERR_ARG"
.LASF0:
	.string	"unsigned int"
.LASF52:
	.string	"next"
.LASF105:
	.string	"sys_thread_new"
.LASF19:
	.string	"err_t"
.LASF90:
	.string	"slipif_output"
.LASF64:
	.string	"linkoutput"
.LASF100:
	.string	"sio_read"
.LASF16:
	.string	"u16_t"
.LASF78:
	.string	"netif_output_fn"
.LASF34:
	.string	"ERR_RST"
.LASF76:
	.string	"loop_cnt_current"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF29:
	.string	"ERR_ALREADY"
.LASF77:
	.string	"netif_input_fn"
.LASF12:
	.string	"float"
.LASF23:
	.string	"ERR_TIMEOUT"
.LASF71:
	.string	"hwaddr"
.LASF113:
	.string	"aos_log_level"
.LASF9:
	.string	"long long unsigned int"
.LASF85:
	.string	"SLIP_RECV_NORMAL"
.LASF38:
	.string	"ip4_addr_t"
.LASF70:
	.string	"hwaddr_len"
.LASF26:
	.string	"ERR_VAL"
.LASF109:
	.string	"/home/stone/Documents/pca"
.LASF47:
	.string	"PBUF_REF"
.LASF54:
	.string	"tot_len"
.LASF94:
	.string	"ipaddr"
.LASF102:
	.string	"mem_malloc"
.LASF53:
	.string	"payload"
.LASF41:
	.string	"PBUF_IP"
.LASF63:
	.string	"output"
.LASF75:
	.string	"loop_last"
.LASF37:
	.string	"_Bool"
.LASF48:
	.string	"PBUF_POOL"
.LASF88:
	.string	"recved"
.LASF15:
	.string	"s8_t"
.LASF112:
	.string	"slipif_poll"
.LASF87:
	.string	"slipif_priv"
.LASF27:
	.string	"ERR_WOULDBLOCK"
.LASF108:
	.string	"src/slipif.c"
.LASF67:
	.string	"client_data"
.LASF89:
	.string	"priv"
.LASF11:
	.string	"char"
.LASF96:
	.string	"pbuf_realloc"
.LASF73:
	.string	"igmp_mac_filter"
.LASF58:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF92:
	.string	"slipif_loop_thread"
.LASF97:
	.string	"pbuf_alloc"
.LASF69:
	.string	"hostname"
.LASF61:
	.string	"netmask"
.LASF1:
	.string	"long long int"
.LASF32:
	.string	"ERR_IF"
.LASF65:
	.string	"status_callback"
.LASF14:
	.string	"u8_t"
.LASF101:
	.string	"sio_send"
.LASF98:
	.string	"pbuf_cat"
.LASF110:
	.string	"slipif_rxbyte_input"
.LASF42:
	.string	"PBUF_LINK"
.LASF57:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF2:
	.string	"long double"
.LASF84:
	.string	"slipif_recv_state"
.LASF22:
	.string	"ERR_BUF"
.LASF82:
	.string	"sio_fd_t"
.LASF18:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF93:
	.string	"slipif_output_v4"
.LASF114:
	.string	"__stack_chk_fail"
.LASF74:
	.string	"loop_first"
.LASF95:
	.string	"sio_num"
.LASF25:
	.string	"ERR_INPROGRESS"
.LASF49:
	.string	"ip4_addr"
.LASF111:
	.string	"slipif_init"
.LASF30:
	.string	"ERR_ISCONN"
.LASF72:
	.string	"name"
.LASF79:
	.string	"netif_linkoutput_fn"
.LASF68:
	.string	"rs_count"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF83:
	.string	"netif_mac_filter_action"
.LASF17:
	.string	"s16_t"
.LASF55:
	.string	"type"
.LASF4:
	.string	"unsigned char"
.LASF107:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF80:
	.string	"netif_status_callback_fn"
.LASF50:
	.string	"pbuf"
.LASF51:
	.string	"addr"
.LASF66:
	.string	"state"
.LASF59:
	.string	"netif"
.LASF33:
	.string	"ERR_ABRT"
.LASF86:
	.string	"SLIP_RECV_ESCAPE"
.LASF81:
	.string	"netif_igmp_mac_filter_fn"
.LASF20:
	.string	"ERR_OK"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF31:
	.string	"ERR_CONN"
.LASF24:
	.string	"ERR_RTE"
.LASF13:
	.string	"double"
.LASF39:
	.string	"ip_addr_t"
.LASF91:
	.string	"slipif_rxbyte"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF46:
	.string	"PBUF_ROM"
.LASF106:
	.string	"sio_tryread"
.LASF21:
	.string	"ERR_MEM"
.LASF60:
	.string	"ip_addr"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
