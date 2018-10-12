	.file	"poll.c"
	.text
.Ltext0:
	.section	.text.unlikely.polling_events.constprop.1,"ax",@progbits
.LCOLDB0:
	.section	.text.polling_events.constprop.1,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.polling_events.constprop.1
.Ltext_cold0:
	.section	.text.polling_events.constprop.1
	.type	polling_events.constprop.1, @function
polling_events.constprop.1:
.LFB56:
	.file 1 "src/poll.c"
	.loc 1 1351 0
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
	movl	%eax, %edi
.LBB50:
	.loc 1 1360 0
	xorl	%esi, %esi
.LBE50:
	.loc 1 1356 0
	movb	$1, %bl
	.loc 1 1351 0
	subl	$28, %esp
	.loc 1 1351 0
	movl	%edx, -32(%ebp)
	movl	%ecx, -36(%ebp)
.LVL1:
.L2:
.LBB67:
	.loc 1 1360 0
	cmpl	-32(%ebp), %esi
	jge	.L26
.LBB51:
	.loc 1 1362 0
	call	irq_lock
.LVL2:
	movl	%eax, -28(%ebp)
.LVL3:
.LBB52:
.LBB53:
	.loc 1 1250 0
	movb	13(%edi), %al
.LVL4:
	andl	$15, %eax
	cmpb	$2, %al
	je	.L4
	cmpb	$3, %al
	je	.L5
	decb	%al
	jne	.L3
	jmp	.L27
.L4:
	.loc 1 1252 0
	subl	$12, %esp
	pushl	16(%edi)
	call	k_sem_count_get
.LVL5:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L3
	.loc 1 1253 0
	movl	$3, %eax
	jmp	.L7
.L5:
	.loc 1 1258 0
	subl	$12, %esp
	pushl	16(%edi)
	call	k_queue_is_empty
.LVL6:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L3
	.loc 1 1259 0
	movl	$4, %eax
	jmp	.L7
.L27:
	.loc 1 1264 0
	movl	16(%edi), %ecx
	.loc 1 1265 0
	movl	$2, %eax
	.loc 1 1264 0
	cmpl	$0, 8(%ecx)
	je	.L3
.L7:
.LVL7:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 1 1347 0
	movb	13(%edi), %bl
.LVL8:
	.loc 1 1344 0
	movl	$0, 8(%edi)
	.loc 1 1347 0
	movb	%bl, %cl
	andl	$15, %ebx
	shrb	$4, %cl
	orl	%ecx, %eax
.LVL9:
	sall	$4, %eax
	orl	%eax, %ebx
	movb	%bl, 13(%edi)
.LVL10:
.LBE55:
.LBE54:
	.loc 1 1365 0
	xorl	%ebx, %ebx
.LVL11:
.L14:
	.loc 1 1378 0
	subl	$12, %esp
	pushl	-28(%ebp)
.LBE51:
	.loc 1 1360 0
	incl	%esi
.LVL12:
	addl	$20, %edi
.LBB66:
	.loc 1 1378 0
	call	irq_unlock
.LVL13:
	addl	$16, %esp
	jmp	.L2
.LVL14:
.L3:
	.loc 1 1368 0
	cmpl	$0, -36(%ebp)
	je	.L14
	testb	%bl, %bl
	je	.L14
.LVL15:
.LBB56:
.LBB57:
	.loc 1 1285 0
	movb	13(%edi), %al
	andl	$15, %eax
	cmpb	$2, %al
	je	.L11
	cmpb	$3, %al
	je	.L11
	decb	%al
	jne	.L9
	.loc 1 1296 0
	movl	16(%edi), %eax
.LVL16:
.LBB58:
.LBB59:
.LBB60:
	.loc 1 799 0
	movl	%eax, (%edi)
	.loc 1 800 0
	movl	4(%eax), %ecx
	movl	%ecx, 4(%edi)
	.loc 1 801 0
	movl	4(%eax), %ecx
	movl	%edi, (%ecx)
	.loc 1 802 0
	movl	%edi, 4(%eax)
	jmp	.L9
.LVL17:
.L11:
.LBE60:
.LBE59:
.LBE58:
	.loc 1 1292 0
	movl	16(%edi), %eax
.LVL18:
	leal	4(%eax), %ecx
.LVL19:
	movl	%ecx, (%edi)
.LBB61:
.LBB62:
.LBB63:
	.loc 1 800 0
	movl	8(%eax), %ecx
.LVL20:
	movl	%ecx, 4(%edi)
	.loc 1 801 0
	movl	8(%eax), %ecx
	movl	%edi, (%ecx)
.LVL21:
	.loc 1 802 0
	movl	%edi, 8(%eax)
.LVL22:
.L9:
.LBE63:
.LBE62:
.LBE61:
.LBE57:
.LBE56:
	.loc 1 1373 0
	movl	8(%ebp), %eax
.LBB65:
.LBB64:
	.loc 1 1304 0
	movl	$0, 8(%edi)
.LVL23:
.LBE64:
.LBE65:
	.loc 1 1373 0
	movb	$1, %bl
.LVL24:
	incl	(%eax)
	jmp	.L14
.LVL25:
.L26:
.LBE66:
.LBE67:
	.loc 1 1381 0
	leal	-12(%ebp), %esp
	movb	%bl, %al
	popl	%ebx
	.cfi_restore 3
.LVL26:
	popl	%esi
	.cfi_restore 6
.LVL27:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE56:
	.size	polling_events.constprop.1, .-polling_events.constprop.1
	.section	.text.unlikely.polling_events.constprop.1
.LCOLDE0:
	.section	.text.polling_events.constprop.1
.LHOTE0:
	.section	.text.unlikely.k_poll_event_init,"ax",@progbits
.LCOLDB1:
	.section	.text.k_poll_event_init,"ax",@progbits
.LHOTB1:
	.globl	k_poll_event_init
	.type	k_poll_event_init, @function
k_poll_event_init:
.LFB43:
	.loc 1 1234 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 1243 0
	movb	12(%ebp), %dl
	.loc 1 1234 0
	movl	8(%ebp), %eax
	.loc 1 1243 0
	andl	$15, %edx
	.loc 1 1244 0
	movb	14(%eax), %cl
	.loc 1 1239 0
	movl	$0, 8(%eax)
	.loc 1 1243 0
	movb	%dl, 13(%eax)
.LVL29:
	.loc 1 1244 0
	movb	16(%ebp), %dl
	andl	$-2, %ecx
	andl	$1, %edx
	orl	%ecx, %edx
	movb	%dl, 14(%eax)
	.loc 1 1245 0
	andw	$1, 14(%eax)
	.loc 1 1246 0
	movl	20(%ebp), %edx
	movl	%edx, 16(%eax)
	.loc 1 1247 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE43:
	.size	k_poll_event_init, .-k_poll_event_init
	.section	.text.unlikely.k_poll_event_init
.LCOLDE1:
	.section	.text.k_poll_event_init
.LHOTE1:
	.section	.text.unlikely.k_poll,"ax",@progbits
.LCOLDB2:
	.section	.text.k_poll,"ax",@progbits
.LHOTB2:
	.globl	k_poll
	.type	k_poll, @function
k_poll:
.LFB51:
	.loc 1 1383 0
	.cfi_startproc
.LVL30:
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
	.loc 1 1392 0
	leal	-32(%ebp), %edi
	.loc 1 1383 0
	subl	$40, %esp
	.loc 1 1383 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 1392 0
	movl	12(%ebp), %edx
	pushl	%edi
	.loc 1 1383 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1392 0
	movl	%esi, %ecx
	movl	%ebx, %eax
	.loc 1 1386 0
	movl	$-1, -32(%ebp)
.LVL31:
	.loc 1 1392 0
	call	polling_events.constprop.1
.LVL32:
	.loc 1 1393 0
	addl	$16, %esp
	testb	%al, %al
	je	.L31
.LVL33:
	.loc 1 1398 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	$g_poll_sem
	call	k_sem_take
.LVL34:
	.loc 1 1400 0
	movl	12(%ebp), %edx
	movl	%esi, %ecx
	movl	%ebx, %eax
	movl	%edi, (%esp)
	.loc 1 1399 0
	movl	$-1, -32(%ebp)
	.loc 1 1400 0
	call	polling_events.constprop.1
.LVL35:
	addl	$16, %esp
.L31:
	.loc 1 1402 0
	call	irq_lock
.LVL36:
	.loc 1 1403 0
	movl	-32(%ebp), %esi
	.loc 1 1402 0
	movl	%eax, %edi
.LVL37:
	imull	$20, %esi, %eax
.LVL38:
	addl	%eax, %ebx
.LVL39:
	.loc 1 1403 0
	movl	%edi, %eax
.LVL40:
.L32:
.LBB78:
.LBB79:
	.loc 1 1336 0
	testl	%esi, %esi
	js	.L43
.LVL41:
.LBB80:
.LBB81:
	.loc 1 1312 0
	movb	13(%ebx), %dl
	.loc 1 1309 0
	movl	$0, 8(%ebx)
	.loc 1 1312 0
	andl	$15, %edx
	cmpb	$2, %dl
	je	.L36
	cmpb	$3, %dl
	je	.L36
	decb	%dl
	jne	.L33
.L36:
.LVL42:
.LBB82:
.LBB83:
	.loc 1 850 0
	movl	(%ebx), %ecx
	movl	4(%ebx), %edx
	movl	%ecx, (%edx)
	.loc 1 851 0
	movl	(%ebx), %ecx
	movl	%edx, 4(%ecx)
.LVL43:
.L33:
.LBE83:
.LBE82:
.LBE81:
.LBE80:
	.loc 1 1338 0
	subl	$12, %esp
	.loc 1 1336 0
	decl	%esi
.LVL44:
	subl	$20, %ebx
	.loc 1 1338 0
	pushl	%eax
	call	irq_unlock
.LVL45:
	.loc 1 1339 0
	call	irq_lock
.LVL46:
	addl	$16, %esp
	jmp	.L32
.L43:
.LVL47:
.LBE79:
.LBE78:
	.loc 1 1404 0
	subl	$12, %esp
	pushl	%edi
	call	irq_unlock
.LVL48:
	.loc 1 1406 0
	xorl	%eax, %eax
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
.LVL49:
	je	.L38
	call	__stack_chk_fail
.LVL50:
.L38:
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
.LFE51:
	.size	k_poll, .-k_poll
	.section	.text.unlikely.k_poll
.LCOLDE2:
	.section	.text.k_poll
.LHOTE2:
	.section	.text.unlikely.k_poll_signal,"ax",@progbits
.LCOLDB3:
	.section	.text.k_poll_signal,"ax",@progbits
.LHOTB3:
	.globl	k_poll_signal
	.type	k_poll_signal, @function
k_poll_signal:
.LFB53:
	.loc 1 1415 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 1415 0
	movl	8(%ebp), %ebx
	.loc 1 1416 0
	call	irq_lock
.LVL52:
	movl	%eax, %esi
.LVL53:
	.loc 1 1419 0
	movl	12(%ebp), %eax
.LVL54:
	.loc 1 1420 0
	movl	$1, 8(%ebx)
.LVL55:
	.loc 1 1419 0
	movl	%eax, 12(%ebx)
.LBB93:
.LBB94:
.LBB95:
.LBB96:
	.loc 1 761 0
	movl	(%ebx), %eax
.LVL56:
.LBE96:
.LBE95:
	.loc 1 856 0
	cmpl	%eax, %ebx
	je	.L45
.LVL57:
.LBB97:
.LBB98:
	.loc 1 850 0
	movl	(%eax), %ecx
	movl	4(%eax), %edx
.LBE98:
.LBE97:
.LBE94:
.LBE93:
	.loc 1 1428 0
	subl	$12, %esp
.LBB102:
.LBB101:
.LBB100:
.LBB99:
	.loc 1 850 0
	movl	%ecx, (%edx)
	.loc 1 851 0
	movl	(%eax), %ecx
	movl	%edx, 4(%ecx)
.LVL58:
.LBE99:
.LBE100:
.LBE101:
.LBE102:
.LBB103:
.LBB104:
.LBB105:
	.loc 1 1347 0
	orb	$32, 13(%eax)
.LVL59:
	.loc 1 1344 0
	movl	$0, 8(%eax)
.LBE105:
.LBE104:
.LBE103:
	.loc 1 1428 0
	pushl	$g_poll_sem
	call	k_sem_give
.LVL60:
	.loc 1 1429 0
	movl	%esi, (%esp)
	jmp	.L49
.LVL61:
.L45:
	.loc 1 1423 0
	subl	$12, %esp
	pushl	%esi
.L49:
	call	irq_unlock
.LVL62:
	.loc 1 1424 0
	addl	$16, %esp
	.loc 1 1431 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL63:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	k_poll_signal, .-k_poll_signal
	.section	.text.unlikely.k_poll_signal
.LCOLDE3:
	.section	.text.k_poll_signal
.LHOTE3:
	.globl	g_poll_sem
	.section	.bss.g_poll_sem,"aw",@nobits
	.align 4
	.type	g_poll_sem, @object
	.size	g_poll_sem, 12
g_poll_sem:
	.zero	12
	.text
.Letext0:
	.section	.text.unlikely.polling_events.constprop.1
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xab9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF88
	.byte	0xc
	.long	.LASF89
	.long	.LASF90
	.long	.Ldebug_ranges0+0x78
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
	.uleb128 0x5
	.long	.LASF12
	.byte	0x1
	.value	0x240
	.long	0x5d
	.uleb128 0x5
	.long	.LASF13
	.byte	0x1
	.value	0x244
	.long	0x64
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.value	0x2df
	.long	0xbc
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.value	0x2e0
	.long	0xd6
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.value	0x2e1
	.long	0xd6
	.byte	0
	.uleb128 0x8
	.long	.LASF25
	.byte	0x8
	.byte	0x1
	.value	0x2de
	.long	0xd6
	.uleb128 0x9
	.long	0x9a
	.byte	0
	.uleb128 0x9
	.long	0xdc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xbc
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.value	0x2e3
	.long	0xfe
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.value	0x2e4
	.long	0xd6
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.value	0x2e5
	.long	0xd6
	.byte	0
	.uleb128 0x5
	.long	.LASF18
	.byte	0x1
	.value	0x2e8
	.long	0xbc
	.uleb128 0x5
	.long	.LASF19
	.byte	0x1
	.value	0x2e9
	.long	0xbc
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x36f
	.long	0x12d
	.uleb128 0xc
	.string	"hdl"
	.byte	0x1
	.value	0x370
	.long	0x80
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF20
	.byte	0x1
	.value	0x371
	.long	0x116
	.uleb128 0x5
	.long	.LASF21
	.byte	0x1
	.value	0x374
	.long	0x12d
	.uleb128 0x5
	.long	.LASF22
	.byte	0x1
	.value	0x375
	.long	0x12d
	.uleb128 0x5
	.long	.LASF23
	.byte	0x1
	.value	0x40e
	.long	0x145
	.uleb128 0x5
	.long	.LASF24
	.byte	0x1
	.value	0x40f
	.long	0x139
	.uleb128 0x8
	.long	.LASF26
	.byte	0xc
	.byte	0x1
	.value	0x41d
	.long	0x191
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.value	0x41e
	.long	0x191
	.byte	0
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x41f
	.long	0xfe
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x151
	.uleb128 0x8
	.long	.LASF29
	.byte	0xc
	.byte	0x1
	.value	0x42c
	.long	0x1b2
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.value	0x42d
	.long	0x169
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF30
	.byte	0xc
	.byte	0x1
	.value	0x42f
	.long	0x1da
	.uleb128 0xc
	.string	"sem"
	.byte	0x1
	.value	0x430
	.long	0x15d
	.byte	0
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x431
	.long	0xfe
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x4a2
	.long	0x20a
	.uleb128 0xf
	.long	.LASF31
	.byte	0
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.uleb128 0xf
	.long	.LASF33
	.byte	0x2
	.uleb128 0xf
	.long	.LASF34
	.byte	0x3
	.uleb128 0xf
	.long	.LASF35
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF37
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x4a9
	.long	0x23a
	.uleb128 0xf
	.long	.LASF38
	.byte	0
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.uleb128 0xf
	.long	.LASF40
	.byte	0x2
	.uleb128 0xf
	.long	.LASF41
	.byte	0x3
	.uleb128 0xf
	.long	.LASF42
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x1
	.value	0x4b8
	.long	0x280
	.uleb128 0x10
	.string	"obj"
	.byte	0x1
	.value	0x4b9
	.long	0x80
	.uleb128 0x7
	.long	.LASF43
	.byte	0x1
	.value	0x4ba
	.long	0x2b5
	.uleb128 0x10
	.string	"sem"
	.byte	0x1
	.value	0x4bb
	.long	0x2bb
	.uleb128 0x7
	.long	.LASF44
	.byte	0x1
	.value	0x4bc
	.long	0x2c1
	.uleb128 0x7
	.long	.LASF45
	.byte	0x1
	.value	0x4bd
	.long	0x2c7
	.byte	0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x10
	.byte	0x1
	.value	0x4c0
	.long	0x2b5
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x4c1
	.long	0xfe
	.byte	0
	.uleb128 0xd
	.long	.LASF47
	.byte	0x1
	.value	0x4c2
	.long	0x64
	.byte	0x8
	.uleb128 0xd
	.long	.LASF48
	.byte	0x1
	.value	0x4c3
	.long	0x5d
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x280
	.uleb128 0xa
	.byte	0x4
	.long	0x1b2
	.uleb128 0xa
	.byte	0x4
	.long	0x197
	.uleb128 0xa
	.byte	0x4
	.long	0x169
	.uleb128 0x8
	.long	.LASF49
	.byte	0x14
	.byte	0x1
	.value	0x4b0
	.long	0x34b
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.value	0x4b1
	.long	0x10a
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x1
	.value	0x4b2
	.long	0x350
	.byte	0x8
	.uleb128 0x11
	.string	"tag"
	.byte	0x1
	.value	0x4b3
	.long	0x8e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0xc
	.uleb128 0x12
	.long	.LASF52
	.byte	0x1
	.value	0x4b4
	.long	0x8e
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0x4b5
	.long	0x8e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.value	0x4b6
	.long	0x8e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.value	0x4b7
	.long	0x8e
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xc
	.uleb128 0x9
	.long	0x23a
	.byte	0x10
	.byte	0
	.uleb128 0x13
	.long	.LASF91
	.uleb128 0xa
	.byte	0x4
	.long	0x34b
	.uleb128 0x14
	.long	.LASF61
	.byte	0x1
	.value	0x2f7
	.long	0x5d
	.byte	0x3
	.long	0x374
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x2f7
	.long	0x374
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xfe
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0x4fd
	.byte	0x3
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x4fd
	.long	0x374
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x4fd
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.value	0x4fe
	.long	0x350
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x2cd
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.value	0x53e
	.byte	0x3
	.long	0x3d8
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x53e
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.value	0x53e
	.long	0x8e
	.byte	0
	.uleb128 0x14
	.long	.LASF62
	.byte	0x1
	.value	0x57f
	.long	0x5d
	.byte	0x1
	.long	0x40e
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x57f
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.value	0x57f
	.long	0x8e
	.uleb128 0x15
	.long	.LASF63
	.byte	0x1
	.value	0x580
	.long	0x40e
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x5d
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.value	0x502
	.long	0x5d
	.byte	0x3
	.long	0x43e
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x502
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF51
	.byte	0x1
	.value	0x503
	.long	0x350
	.byte	0
	.uleb128 0x14
	.long	.LASF65
	.byte	0x1
	.value	0x547
	.long	0x4be
	.byte	0x1
	.long	0x4be
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x547
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF66
	.byte	0x1
	.value	0x547
	.long	0x5d
	.uleb128 0x15
	.long	.LASF67
	.byte	0x1
	.value	0x548
	.long	0x82
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.value	0x548
	.long	0x40e
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.value	0x54a
	.long	0x5d
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.value	0x54c
	.long	0x4be
	.uleb128 0x17
	.string	"key"
	.byte	0x1
	.value	0x54f
	.long	0x64
	.uleb128 0x19
	.uleb128 0x17
	.string	"ii"
	.byte	0x1
	.value	0x550
	.long	0x5d
	.uleb128 0x19
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.value	0x551
	.long	0x8e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF70
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.value	0x4e0
	.long	0x5d
	.byte	0x3
	.long	0x4ef
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x4e0
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF53
	.byte	0x1
	.value	0x4e0
	.long	0x4ef
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x8e
	.uleb128 0x16
	.long	.LASF72
	.byte	0x1
	.value	0x31d
	.byte	0x3
	.long	0x51b
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x31d
	.long	0x374
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.value	0x31d
	.long	0x51b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x10a
	.uleb128 0x1a
	.long	0x43e
	.long	.LFB56
	.long	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c8
	.uleb128 0x1b
	.long	0x44f
	.long	.LLST0
	.uleb128 0x1b
	.long	0x45b
	.long	.LLST1
	.uleb128 0x1b
	.long	0x467
	.long	.LLST2
	.uleb128 0x1c
	.long	0x473
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	0x47f
	.uleb128 0x1e
	.long	0x48a
	.long	.LLST3
	.uleb128 0x1e
	.long	0x496
	.long	.LLST4
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0
	.uleb128 0x1e
	.long	0x4a3
	.long	.LLST5
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x1e
	.long	0x4af
	.long	.LLST6
	.uleb128 0x20
	.long	0x4c5
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x1
	.value	0x553
	.long	0x5c3
	.uleb128 0x1b
	.long	0x4e2
	.long	.LLST7
	.uleb128 0x1b
	.long	0x4d6
	.long	.LLST8
	.uleb128 0x21
	.long	.LVL5
	.long	0xa6b
	.uleb128 0x21
	.long	.LVL6
	.long	0xa77
	.byte	0
	.uleb128 0x20
	.long	0x3b2
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.value	0x554
	.long	0x5ea
	.uleb128 0x1b
	.long	0x3cb
	.long	.LLST6
	.uleb128 0x1b
	.long	0x3bf
	.long	.LLST10
	.byte	0
	.uleb128 0x22
	.long	0x414
	.long	.LBB56
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x559
	.long	0x6b3
	.uleb128 0x1b
	.long	0x431
	.long	.LLST11
	.uleb128 0x1b
	.long	0x425
	.long	.LLST12
	.uleb128 0x20
	.long	0x37a
	.long	.LBB58
	.long	.LBE58-.LBB58
	.byte	0x1
	.value	0x510
	.long	0x663
	.uleb128 0x1b
	.long	0x39f
	.long	.LLST13
	.uleb128 0x1b
	.long	0x393
	.long	.LLST14
	.uleb128 0x1b
	.long	0x387
	.long	.LLST15
	.uleb128 0x23
	.long	0x4f5
	.long	.LBB59
	.long	.LBE59-.LBB59
	.byte	0x1
	.value	0x500
	.uleb128 0x1b
	.long	0x50e
	.long	.LLST14
	.uleb128 0x1b
	.long	0x502
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x37a
	.long	.LBB61
	.long	.LBE61-.LBB61
	.byte	0x1
	.value	0x50c
	.uleb128 0x1b
	.long	0x39f
	.long	.LLST18
	.uleb128 0x1b
	.long	0x393
	.long	.LLST19
	.uleb128 0x1b
	.long	0x387
	.long	.LLST20
	.uleb128 0x23
	.long	0x4f5
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.value	0x500
	.uleb128 0x1b
	.long	0x50e
	.long	.LLST19
	.uleb128 0x1b
	.long	0x502
	.long	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL2
	.long	0xa83
	.uleb128 0x21
	.long	.LVL13
	.long	0xa8f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF92
	.byte	0x1
	.value	0x4d0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x71f
	.uleb128 0x25
	.long	.LASF58
	.byte	0x1
	.value	0x4d0
	.long	0x3ac
	.long	.LLST23
	.uleb128 0x25
	.long	.LASF52
	.byte	0x1
	.value	0x4d0
	.long	0x8e
	.long	.LLST24
	.uleb128 0x25
	.long	.LASF54
	.byte	0x1
	.value	0x4d1
	.long	0x5d
	.long	.LLST25
	.uleb128 0x26
	.string	"obj"
	.byte	0x1
	.value	0x4d1
	.long	0x80
	.long	.LLST26
	.byte	0
	.uleb128 0x16
	.long	.LASF74
	.byte	0x1
	.value	0x534
	.byte	0x3
	.long	0x751
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x534
	.long	0x3ac
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.value	0x535
	.long	0x5d
	.uleb128 0x27
	.string	"key"
	.byte	0x1
	.value	0x536
	.long	0x64
	.byte	0
	.uleb128 0x16
	.long	.LASF75
	.byte	0x1
	.value	0x51b
	.byte	0x3
	.long	0x76b
	.uleb128 0x15
	.long	.LASF58
	.byte	0x1
	.value	0x51b
	.long	0x3ac
	.byte	0
	.uleb128 0x16
	.long	.LASF76
	.byte	0x1
	.value	0x350
	.byte	0x3
	.long	0x785
	.uleb128 0x15
	.long	.LASF73
	.byte	0x1
	.value	0x350
	.long	0x51b
	.byte	0
	.uleb128 0x28
	.long	.LASF78
	.byte	0x1
	.value	0x566
	.long	0x5d
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x8e8
	.uleb128 0x29
	.long	.LASF57
	.byte	0x1
	.value	0x566
	.long	0x3ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF66
	.byte	0x1
	.value	0x566
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF67
	.byte	0x1
	.value	0x566
	.long	0x82
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF68
	.byte	0x1
	.value	0x56a
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2b
	.string	"key"
	.byte	0x1
	.value	0x56b
	.long	0x64
	.long	.LLST27
	.uleb128 0x2c
	.long	.LASF69
	.byte	0x1
	.value	0x56d
	.long	0x4be
	.long	.LLST28
	.uleb128 0x2d
	.long	.LASF93
	.byte	0x1
	.value	0x579
	.long	.L31
	.uleb128 0x20
	.long	0x71f
	.long	.LBB78
	.long	.LBE78-.LBB78
	.byte	0x1
	.value	0x57b
	.long	0x881
	.uleb128 0x1b
	.long	0x744
	.long	.LLST29
	.uleb128 0x1b
	.long	0x738
	.long	.LLST30
	.uleb128 0x1b
	.long	0x72c
	.long	.LLST31
	.uleb128 0x20
	.long	0x751
	.long	.LBB80
	.long	.LBE80-.LBB80
	.byte	0x1
	.value	0x539
	.long	0x86e
	.uleb128 0x1b
	.long	0x75e
	.long	.LLST32
	.uleb128 0x23
	.long	0x76b
	.long	.LBB82
	.long	.LBE82-.LBB82
	.byte	0x1
	.value	0x52b
	.uleb128 0x1b
	.long	0x778
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL45
	.long	0xa8f
	.uleb128 0x21
	.long	.LVL46
	.long	0xa83
	.byte	0
	.uleb128 0x2e
	.long	.LVL32
	.long	0x521
	.long	0x8a2
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LVL34
	.long	0xa9b
	.uleb128 0x2e
	.long	.LVL35
	.long	0x521
	.long	0x8cc
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LVL36
	.long	0xa83
	.uleb128 0x21
	.long	.LVL48
	.long	0xa8f
	.uleb128 0x21
	.long	.LVL50
	.long	0xaa7
	.byte	0
	.uleb128 0x14
	.long	.LASF77
	.byte	0x1
	.value	0x355
	.long	0x51b
	.byte	0x3
	.long	0x912
	.uleb128 0x15
	.long	.LASF56
	.byte	0x1
	.value	0x355
	.long	0x374
	.uleb128 0x18
	.long	.LASF73
	.byte	0x1
	.value	0x357
	.long	0x51b
	.byte	0
	.uleb128 0x28
	.long	.LASF46
	.byte	0x1
	.value	0x586
	.long	0x5d
	.long	.LFB53
	.long	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0xa4d
	.uleb128 0x29
	.long	.LASF43
	.byte	0x1
	.value	0x586
	.long	0x2b5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF48
	.byte	0x1
	.value	0x586
	.long	0x5d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.string	"key"
	.byte	0x1
	.value	0x588
	.long	0x64
	.long	.LLST34
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.value	0x589
	.long	0x3ac
	.uleb128 0x2c
	.long	.LASF63
	.byte	0x1
	.value	0x58a
	.long	0x5d
	.long	.LLST35
	.uleb128 0x17
	.string	"rc"
	.byte	0x1
	.value	0x592
	.long	0x5d
	.uleb128 0x22
	.long	0x8e8
	.long	.LBB93
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x58d
	.long	0x9e6
	.uleb128 0x1b
	.long	0x8f9
	.long	.LLST36
	.uleb128 0x1f
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x1e
	.long	0x905
	.long	.LLST37
	.uleb128 0x20
	.long	0x356
	.long	.LBB95
	.long	.LBE95-.LBB95
	.byte	0x1
	.value	0x358
	.long	0x9ca
	.uleb128 0x1b
	.long	0x367
	.long	.LLST38
	.byte	0
	.uleb128 0x30
	.long	0x76b
	.long	.LBB97
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.value	0x35e
	.uleb128 0x1b
	.long	0x778
	.long	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x3d8
	.long	.LBB103
	.long	.LBE103-.LBB103
	.byte	0x1
	.value	0x592
	.long	0xa31
	.uleb128 0x1b
	.long	0x401
	.long	.LLST40
	.uleb128 0x1b
	.long	0x3f5
	.long	.LLST41
	.uleb128 0x31
	.long	0x3e9
	.uleb128 0x23
	.long	0x3b2
	.long	.LBB104
	.long	.LBE104-.LBB104
	.byte	0x1
	.value	0x583
	.uleb128 0x1b
	.long	0x3cb
	.long	.LLST41
	.uleb128 0x31
	.long	0x3bf
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LVL52
	.long	0xa83
	.uleb128 0x21
	.long	.LVL60
	.long	0xab0
	.uleb128 0x21
	.long	.LVL62
	.long	0xa8f
	.byte	0
	.uleb128 0x32
	.long	.LASF80
	.byte	0x1
	.value	0x3c2
	.long	0x64
	.uleb128 0x33
	.long	.LASF81
	.byte	0x1
	.value	0x4cf
	.long	0x1b2
	.uleb128 0x5
	.byte	0x3
	.long	g_poll_sem
	.uleb128 0x34
	.long	.LASF82
	.long	.LASF82
	.byte	0x1
	.value	0x437
	.uleb128 0x34
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.value	0x428
	.uleb128 0x34
	.long	.LASF84
	.long	.LASF84
	.byte	0x1
	.value	0x45b
	.uleb128 0x34
	.long	.LASF85
	.long	.LASF85
	.byte	0x1
	.value	0x45c
	.uleb128 0x34
	.long	.LASF86
	.long	.LASF86
	.byte	0x1
	.value	0x434
	.uleb128 0x35
	.long	.LASF94
	.long	.LASF94
	.uleb128 0x34
	.long	.LASF87
	.long	.LASF87
	.byte	0x1
	.value	0x435
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LFE56
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x52
	.long	.LVL1
	.long	.LFE56
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x51
	.long	.LVL1
	.long	.LFE56
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL11
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x53
	.long	.LVL26
	.long	.LFE56
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL10
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL14
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST5:
	.long	.LVL1
	.long	.LVL12
	.value	0x1
	.byte	0x56
	.long	.LVL12
	.long	.LVL13
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL13
	.long	.LVL27
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST6:
	.long	.LVL7
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL3
	.long	.LVL7
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1409
	.sleb128 0
	.long	0
	.long	0
.LLST8:
	.long	.LVL3
	.long	.LVL7
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST10:
	.long	.LVL7
	.long	.LVL10
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL23
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL18
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL18
	.long	.LVL22
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST20:
	.long	.LVL18
	.long	.LVL19
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x51
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x77
	.sleb128 0
	.long	.LVL21
	.long	.LVL22
	.value	0x3
	.byte	0x70
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL29
	.long	.LFE43
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST26:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST27:
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL49
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST28:
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x57
	.long	.LVL40
	.long	.LVL45-1
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL37
	.long	.LVL44
	.value	0x1
	.byte	0x56
	.long	.LVL44
	.long	.LVL46
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST31:
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST32:
	.long	.LVL41
	.long	.LVL43
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST33:
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST34:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LVL63
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST35:
	.long	.LVL58
	.long	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL55
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL57
	.long	.LVL60-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST38:
	.long	.LVL55
	.long	.LVL56
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST40:
	.long	.LVL58
	.long	.LVL59
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2406
	.sleb128 0
	.long	0
	.long	0
.LLST41:
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB50
	.long	.LBE50
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB51
	.long	.LBE51
	.long	.LBB66
	.long	.LBE66
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB65
	.long	.LBE65
	.long	0
	.long	0
	.long	.LBB93
	.long	.LBE93
	.long	.LBB102
	.long	.LBE102
	.long	0
	.long	0
	.long	.LBB97
	.long	.LBE97
	.long	.LBB100
	.long	.LBE100
	.long	0
	.long	0
	.long	.LFB56
	.long	.LFE56
	.long	.LFB43
	.long	.LFE43
	.long	.LFB51
	.long	.LFE51
	.long	.LFB53
	.long	.LFE53
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"k_queue"
.LASF69:
	.string	"polling"
.LASF38:
	.string	"_POLL_STATE_NOT_READY"
.LASF35:
	.string	"_POLL_NUM_TYPES"
.LASF48:
	.string	"result"
.LASF76:
	.string	"sys_dlist_remove"
.LASF46:
	.string	"k_poll_signal"
.LASF71:
	.string	"is_condition_met"
.LASF81:
	.string	"g_poll_sem"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"sizetype"
.LASF50:
	.string	"_node"
.LASF91:
	.string	"_poller"
.LASF12:
	.string	"s32_t"
.LASF85:
	.string	"irq_unlock"
.LASF84:
	.string	"irq_lock"
.LASF54:
	.string	"mode"
.LASF68:
	.string	"last_registered"
.LASF58:
	.string	"event"
.LASF77:
	.string	"sys_dlist_get"
.LASF49:
	.string	"k_poll_event"
.LASF59:
	.string	"add_event"
.LASF20:
	.string	"aos_hdl_t"
.LASF14:
	.string	"head"
.LASF13:
	.string	"u32_t"
.LASF30:
	.string	"k_sem"
.LASF6:
	.string	"long long int"
.LASF83:
	.string	"k_queue_is_empty"
.LASF78:
	.string	"k_poll"
.LASF10:
	.string	"char"
.LASF40:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF4:
	.string	"long int"
.LASF51:
	.string	"poller"
.LASF79:
	.string	"poll_event"
.LASF28:
	.string	"poll_events"
.LASF80:
	.string	"aos_log_level"
.LASF73:
	.string	"node"
.LASF53:
	.string	"state"
.LASF45:
	.string	"queue"
.LASF93:
	.string	"exit"
.LASF18:
	.string	"sys_dlist_t"
.LASF9:
	.string	"long double"
.LASF16:
	.string	"tail"
.LASF1:
	.string	"unsigned char"
.LASF25:
	.string	"_dnode"
.LASF87:
	.string	"k_sem_give"
.LASF31:
	.string	"_POLL_TYPE_IGNORE"
.LASF0:
	.string	"signed char"
.LASF7:
	.string	"long long unsigned int"
.LASF47:
	.string	"signaled"
.LASF60:
	.string	"set_event_ready"
.LASF27:
	.string	"_queue"
.LASF41:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF29:
	.string	"k_fifo"
.LASF61:
	.string	"sys_dlist_is_empty"
.LASF3:
	.string	"short unsigned int"
.LASF44:
	.string	"fifo"
.LASF74:
	.string	"clear_event_registrations"
.LASF33:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF43:
	.string	"signal"
.LASF52:
	.string	"type"
.LASF75:
	.string	"clear_event_registration"
.LASF56:
	.string	"list"
.LASF66:
	.string	"num_events"
.LASF70:
	.string	"_Bool"
.LASF88:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF23:
	.string	"_queue_t"
.LASF64:
	.string	"register_event"
.LASF82:
	.string	"k_sem_count_get"
.LASF21:
	.string	"aos_sem_t"
.LASF5:
	.string	"long unsigned int"
.LASF24:
	.string	"_sem_t"
.LASF39:
	.string	"_POLL_STATE_SIGNALED"
.LASF65:
	.string	"polling_events"
.LASF36:
	.string	"_poll_types_bits"
.LASF86:
	.string	"k_sem_take"
.LASF22:
	.string	"aos_queue_t"
.LASF72:
	.string	"sys_dlist_append"
.LASF62:
	.string	"_signal_poll_event"
.LASF89:
	.string	"src/poll.c"
.LASF37:
	.string	"_poll_states_bits"
.LASF57:
	.string	"events"
.LASF19:
	.string	"sys_dnode_t"
.LASF90:
	.string	"/home/stone/Documents/pca"
.LASF42:
	.string	"_POLL_NUM_STATES"
.LASF94:
	.string	"__stack_chk_fail"
.LASF17:
	.string	"prev"
.LASF8:
	.string	"unsigned int"
.LASF34:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF92:
	.string	"k_poll_event_init"
.LASF55:
	.string	"unused"
.LASF63:
	.string	"must_reschedule"
.LASF67:
	.string	"timeout"
.LASF15:
	.string	"next"
.LASF32:
	.string	"_POLL_TYPE_SIGNAL"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
