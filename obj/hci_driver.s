	.file	"hci_driver.c"
	.text
.Ltext0:
	.section	.text.unlikely._hci_driver_init,"ax",@progbits
.LCOLDB0:
	.section	.text._hci_driver_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._hci_driver_init
.Ltext_cold0:
	.section	.text._hci_driver_init
	.type	_hci_driver_init, @function
_hci_driver_init:
.LFB216:
	.file 1 "src/hci_driver.c"
	.loc 1 6478 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 6480 0
	pushl	$drv
	call	bt_hci_driver_register
.LVL1:
	.loc 1 6482 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE216:
	.size	_hci_driver_init, .-_hci_driver_init
	.section	.text.unlikely._hci_driver_init
.LCOLDE0:
	.section	.text._hci_driver_init
.LHOTE0:
	.section	.text.unlikely.hci_driver_send,"ax",@progbits
.LCOLDB1:
	.section	.text.hci_driver_send,"ax",@progbits
.LHOTB1:
	.type	hci_driver_send, @function
hci_driver_send:
.LFB214:
	.loc 1 6405 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 6405 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 6411 0
	movl	$-22, %eax
	.loc 1 6409 0
	cmpw	$0, 12(%esi)
	je	.L4
.LBB10:
.LBB11:
	.loc 1 3231 0
	movzwl	14(%esi), %eax
	leal	19(%esi,%eax), %eax
	andl	$-4, %eax
.LBE11:
.LBE10:
	.loc 1 6414 0
	movb	(%eax), %al
	testb	%al, %al
	je	.L5
	cmpb	$2, %al
	jne	.L21
.LVL3:
.LBB12:
.LBB13:
	.loc 1 6397 0
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%esi
	call	hci_acl_handle
.LVL4:
	movl	%eax, %ebx
.LVL5:
	.loc 1 6398 0
	movl	-16(%ebp), %eax
.LVL6:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L7
	.loc 1 6400 0
	subl	$12, %esp
	pushl	%eax
	call	bt_recv_prio
.LVL7:
	addl	$16, %esp
.L7:
.LVL8:
.LBE13:
.LBE12:
	.loc 1 6425 0
	testl	%ebx, %ebx
	movl	%ebx, %eax
	jne	.L4
.LVL9:
	jmp	.L8
.LVL10:
.L5:
.LBB14:
.LBB15:
	.loc 1 6386 0
	subl	$12, %esp
	pushl	%esi
	call	hci_cmd_handle
.LVL11:
	.loc 1 6387 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L8
	.loc 1 6389 0
	subl	$12, %esp
	pushl	%eax
	call	bt_recv_prio
.LVL12:
	addl	$16, %esp
	jmp	.L8
.LVL13:
.L21:
.LBE15:
.LBE14:
	.loc 1 6423 0
	movl	$-22, %eax
.L4:
	.loc 1 6433 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L9
	call	__stack_chk_fail
.LVL14:
.L8:
	.loc 1 6426 0
	subl	$12, %esp
	pushl	%esi
	call	net_buf_unref
.LVL15:
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L4
.L9:
	.loc 1 6433 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE214:
	.size	hci_driver_send, .-hci_driver_send
	.section	.text.unlikely.hci_driver_send
.LCOLDE1:
	.section	.text.hci_driver_send
.LHOTE1:
	.section	.text.unlikely.recv_thread,"ax",@progbits
.LCOLDB2:
	.section	.text.recv_thread,"ax",@progbits
.LHOTB2:
	.type	recv_thread, @function
recv_thread:
.LFB211:
	.loc 1 6358 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB21:
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.loc 1 6345 0
	leal	-16(%ebp), %esi
.LBE25:
.LBE24:
.LBE23:
.LBE22:
.LBE21:
	.loc 1 6358 0
	subl	$16, %esp
	.loc 1 6358 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.L35:
.LVL17:
.LBB30:
	.loc 1 6367 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$recv_fifo
	call	k_queue_get
.LVL18:
	.loc 1 6369 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6367 0
	movl	%eax, %ebx
.LVL19:
	.loc 1 6369 0
	je	.L27
.LVL20:
.LBB29:
.LBB28:
	.loc 1 6350 0
	subl	$12, %esp
	pushl	%eax
	call	hci_get_class
.LVL21:
.LBB27:
.LBB26:
	.loc 1 6322 0
	addl	$16, %esp
	testb	%al, %al
	movl	%ebx, -16(%ebp)
.LVL22:
	js	.L37
	cmpb	$2, %al
	jle	.L29
	cmpb	$3, %al
	jne	.L37
	.loc 1 6336 0
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	$3
	call	bt_buf_get_rx
.LVL23:
	.loc 1 6337 0
	popl	%ecx
	.loc 1 6336 0
	movl	%eax, %ebx
.LVL24:
	.loc 1 6337 0
	popl	%eax
.LVL25:
	pushl	%ebx
	pushl	-16(%ebp)
	call	hci_acl_encode
.LVL26:
	jmp	.L46
.LVL27:
.L29:
	.loc 1 6326 0
	decb	%al
.LVL28:
	jne	.L31
	.loc 1 6327 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	jmp	.L45
.L31:
	.loc 1 6329 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
.L45:
	pushl	$1
	call	bt_buf_get_rx
.LVL29:
	addl	$16, %esp
	.loc 1 6331 0
	testl	%eax, %eax
	.loc 1 6329 0
	movl	%eax, %ebx
.LVL30:
	.loc 1 6331 0
	je	.L28
.LVL31:
	.loc 1 6332 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	-16(%ebp)
	call	hci_evt_encode
.LVL32:
.L46:
	.loc 1 6337 0
	addl	$16, %esp
	jmp	.L28
.LVL33:
.L37:
	.loc 1 6319 0
	xorl	%ebx, %ebx
.LVL34:
.L28:
	.loc 1 6343 0
	pushl	%eax
	pushl	%eax
	movl	-16(%ebp), %eax
	pushl	$0
	movzwl	8(%eax), %eax
	pushl	%eax
	call	radio_rx_fc_set
.LVL35:
	.loc 1 6344 0
	movl	-16(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 6345 0
	movl	%esi, (%esp)
	call	radio_rx_mem_release
.LVL36:
.LBE26:
.LBE27:
.LBE28:
.LBE29:
	.loc 1 6372 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L27
	.loc 1 6373 0
	cmpw	$0, 12(%ebx)
	je	.L34
	.loc 1 6375 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_recv
.LVL37:
	jmp	.L47
.L34:
	.loc 1 6377 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL38:
.L47:
	addl	$16, %esp
.LVL39:
.L27:
	.loc 1 6380 0
	call	k_yield
.LVL40:
.LBE30:
	.loc 1 6381 0
	jmp	.L35
	.cfi_endproc
.LFE211:
	.size	recv_thread, .-recv_thread
	.section	.text.unlikely.recv_thread
.LCOLDE2:
	.section	.text.recv_thread
.LHOTE2:
	.section	.text.unlikely.prio_recv_thread,"ax",@progbits
.LCOLDB3:
	.section	.text.prio_recv_thread,"ax",@progbits
.LHOTB3:
	.type	prio_recv_thread, @function
prio_recv_thread:
.LFB208:
	.loc 1 6292 0
	.cfi_startproc
.LVL41:
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
.LBB31:
	.loc 1 6297 0
	leal	-34(%ebp), %esi
	leal	-32(%ebp), %edi
.LBE31:
	.loc 1 6292 0
	subl	$44, %esp
	.loc 1 6292 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.L50:
.LBB33:
	.loc 1 6297 0
	pushl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	%edi
	call	radio_rx_get
.LVL42:
	movzbl	%al, %ebx
.LVL43:
	addl	$16, %esp
	testb	%bl, %bl
	je	.L57
.LBB32:
	.loc 1 6299 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$1
	call	bt_buf_get_rx
.LVL44:
	.loc 1 6300 0
	movzwl	-34(%ebp), %edx
	addl	$12, %esp
	movl	%eax, -44(%ebp)
	pushl	%ebx
	pushl	%edx
	pushl	%eax
	call	hci_num_cmplt_encode
.LVL45:
	.loc 1 6302 0
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	call	bt_recv_prio
.LVL46:
	.loc 1 6303 0
	call	k_yield
.LVL47:
.L56:
	addl	$16, %esp
	jmp	.L50
.L57:
.LBE32:
	.loc 1 6305 0
	cmpl	$0, -32(%ebp)
	je	.L52
	.loc 1 6306 0
	call	radio_rx_dequeue
.LVL48:
	.loc 1 6308 0
	pushl	%edx
	pushl	%edx
	pushl	-32(%ebp)
	pushl	$recv_fifo
	call	k_queue_append
.LVL49:
	jmp	.L56
.L52:
	.loc 1 6312 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$sem_prio_recv
	call	k_sem_take
.LVL50:
	jmp	.L56
.LBE33:
	.cfi_endproc
.LFE208:
	.size	prio_recv_thread, .-prio_recv_thread
	.section	.text.unlikely.prio_recv_thread
.LCOLDE3:
	.section	.text.prio_recv_thread
.LHOTE3:
	.section	.text.unlikely.hci_driver_open,"ax",@progbits
.LCOLDB4:
	.section	.text.hci_driver_open,"ax",@progbits
.LHOTB4:
	.type	hci_driver_open, @function
hci_driver_open:
.LFB215:
	.loc 1 6435 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 3, -12
	.loc 1 6438 0
	pushl	$-1
	pushl	$0
	pushl	$sem_prio_recv
	call	k_sem_init
.LVL51:
	.loc 1 6439 0
	movl	$sem_prio_recv, (%esp)
	call	ll_init
.LVL52:
	.loc 1 6440 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6439 0
	movl	%eax, %ebx
.LVL53:
	.loc 1 6440 0
	jne	.L59
.LBB36:
.LBB37:
	.loc 1 6444 0
	subl	$12, %esp
	pushl	$0
	call	hci_init
.LVL54:
	.loc 1 6447 0
	movl	$recv_fifo, (%esp)
	call	k_queue_init
.LVL55:
	.loc 1 6448 0
	popl	%eax
	popl	%edx
	pushl	$0
	pushl	$0
	pushl	$19
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$prio_recv_thread
	pushl	$624
	pushl	$prio_recv_thread_stack
	pushl	$prio_recv_thread_data
	call	k_thread_create
.LVL56:
	.loc 1 6458 0
	addl	$40, %esp
	pushl	$0
	pushl	$0
	pushl	$21
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$recv_thread
	pushl	$2048
	pushl	$recv_thread_stack
	pushl	$recv_thread_data
	call	k_thread_create
.LVL57:
	addl	$48, %esp
.L59:
.LBE37:
.LBE36:
	.loc 1 6470 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL58:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE215:
	.size	hci_driver_open, .-hci_driver_open
	.section	.text.unlikely.hci_driver_open
.LCOLDE4:
	.section	.text.hci_driver_open
.LHOTE4:
	.section	.text.unlikely.hci_driver_init,"ax",@progbits
.LCOLDB5:
	.section	.text.hci_driver_init,"ax",@progbits
.LHOTB5:
	.globl	hci_driver_init
	.type	hci_driver_init, @function
hci_driver_init:
.LFB217:
	.loc 1 6484 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 6485 0
	pushl	$drv
	call	bt_hci_driver_register
.LVL59:
	.loc 1 6487 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE217:
	.size	hci_driver_init, .-hci_driver_init
	.section	.text.unlikely.hci_driver_init
.LCOLDE5:
	.section	.text.hci_driver_init
.LHOTE5:
	.section	.init_POST_KERNEL0,"aw",@progbits
	.align 4
	.type	__device_sys_init__hci_driver_init0, @object
	.size	__device_sys_init__hci_driver_init0, 12
__device_sys_init__hci_driver_init0:
	.long	__config_sys_init__hci_driver_init0
	.long	0
	.long	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	""
	.section	.devconfig.init,"aw",@progbits
	.align 4
	.type	__config_sys_init__hci_driver_init0, @object
	.size	__config_sys_init__hci_driver_init0, 16
__config_sys_init__hci_driver_init0:
	.long	.LC6
	.long	_hci_driver_init
	.long	device_pm_control_nop
	.long	0
	.section	.rodata.str1.1
.LC7:
	.string	"Controller"
	.section	.rodata.drv,"a",@progbits
	.align 4
	.type	drv, @object
	.size	drv, 16
drv:
	.long	.LC7
	.long	0
	.long	hci_driver_open
	.long	hci_driver_send
	.section	.bss.recv_thread_stack,"aw",@nobits
	.align 32
	.type	recv_thread_stack, @object
	.size	recv_thread_stack, 2048
recv_thread_stack:
	.zero	2048
	.globl	recv_thread_data
	.section	.bss.recv_thread_data,"aw",@nobits
	.align 4
	.type	recv_thread_data, @object
	.size	recv_thread_data, 4
recv_thread_data:
	.zero	4
	.section	.bss.prio_recv_thread_stack,"aw",@nobits
	.align 32
	.type	prio_recv_thread_stack, @object
	.size	prio_recv_thread_stack, 624
prio_recv_thread_stack:
	.zero	624
	.globl	prio_recv_thread_data
	.section	.bss.prio_recv_thread_data,"aw",@nobits
	.align 4
	.type	prio_recv_thread_data, @object
	.size	prio_recv_thread_data, 4
prio_recv_thread_data:
	.zero	4
	.section	._k_queue.static.recv_fifo,"aw",@progbits
	.align 4
	.type	recv_fifo, @object
	.size	recv_fifo, 12
recv_fifo:
	.zero	12
	.section	._k_sem.static.sem_prio_recv,"aw",@progbits
	.align 4
	.type	sem_prio_recv, @object
	.size	sem_prio_recv, 12
sem_prio_recv:
	.zero	12
	.text
.Letext0:
	.section	.text.unlikely._hci_driver_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xd87
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF152
	.byte	0xc
	.long	.LASF153
	.long	.LASF154
	.long	.Ldebug_ranges0+0x60
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xd
	.long	0x68
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x1
	.byte	0xe
	.long	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0x97
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x6
	.byte	0x4
	.long	0xa4
	.uleb128 0x7
	.long	0x97
	.uleb128 0x8
	.long	.LASF14
	.byte	0x1
	.value	0x108
	.long	0x5d
	.uleb128 0x8
	.long	.LASF15
	.byte	0x1
	.value	0x109
	.long	0x6f
	.uleb128 0x8
	.long	.LASF16
	.byte	0x1
	.value	0x120
	.long	0x41
	.uleb128 0x8
	.long	.LASF17
	.byte	0x1
	.value	0x124
	.long	0x48
	.uleb128 0x8
	.long	.LASF18
	.byte	0x1
	.value	0x125
	.long	0x56
	.uleb128 0x8
	.long	.LASF19
	.byte	0x1
	.value	0x126
	.long	0x2c
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.byte	0x1
	.value	0x128
	.long	0x10c
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0x129
	.long	0x10c
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xf1
	.uleb128 0x8
	.long	.LASF20
	.byte	0x1
	.value	0x12b
	.long	0xf1
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x1c1
	.long	0x140
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x1c2
	.long	0x15a
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x1c3
	.long	0x15a
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x8
	.byte	0x1
	.value	0x1c0
	.long	0x15a
	.uleb128 0xd
	.long	0x11e
	.byte	0
	.uleb128 0xd
	.long	0x160
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x140
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x1c5
	.long	0x182
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x1c6
	.long	0x15a
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x1c7
	.long	0x15a
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x1
	.value	0x1ca
	.long	0x140
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.value	0x28d
	.long	0x1a5
	.uleb128 0xf
	.string	"hdl"
	.byte	0x1
	.value	0x28e
	.long	0x8f
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF28
	.byte	0x1
	.value	0x28f
	.long	0x18e
	.uleb128 0x8
	.long	.LASF29
	.byte	0x1
	.value	0x290
	.long	0x1a5
	.uleb128 0x8
	.long	.LASF30
	.byte	0x1
	.value	0x292
	.long	0x1a5
	.uleb128 0x8
	.long	.LASF31
	.byte	0x1
	.value	0x293
	.long	0x1a5
	.uleb128 0x8
	.long	.LASF32
	.byte	0x1
	.value	0x2ec
	.long	0xb5
	.uleb128 0x8
	.long	.LASF33
	.byte	0x1
	.value	0x2f3
	.long	0x1c9
	.uleb128 0x8
	.long	.LASF34
	.byte	0x1
	.value	0x2f4
	.long	0x1bd
	.uleb128 0x8
	.long	.LASF35
	.byte	0x1
	.value	0x2f5
	.long	0x1b1
	.uleb128 0x8
	.long	.LASF36
	.byte	0x1
	.value	0x2f6
	.long	0x1d5
	.uleb128 0x9
	.long	.LASF37
	.byte	0xc
	.byte	0x1
	.value	0x302
	.long	0x239
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.value	0x303
	.long	0x239
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.value	0x304
	.long	0x182
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1e1
	.uleb128 0x9
	.long	.LASF40
	.byte	0xc
	.byte	0x1
	.value	0x311
	.long	0x25a
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.value	0x312
	.long	0x211
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0xc
	.byte	0x1
	.value	0x314
	.long	0x282
	.uleb128 0xf
	.string	"sem"
	.byte	0x1
	.value	0x315
	.long	0x1ed
	.byte	0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.value	0x316
	.long	0x182
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF42
	.byte	0x4
	.byte	0x1
	.value	0x331
	.long	0x29d
	.uleb128 0xa
	.long	.LASF43
	.byte	0x1
	.value	0x332
	.long	0x1f9
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2a3
	.uleb128 0x10
	.uleb128 0x9
	.long	.LASF44
	.byte	0xc
	.byte	0x1
	.value	0x5ae
	.long	0x2d9
	.uleb128 0xa
	.long	.LASF45
	.byte	0x1
	.value	0x5af
	.long	0x31b
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x1
	.value	0x5b0
	.long	0x29d
	.byte	0x4
	.uleb128 0xa
	.long	.LASF47
	.byte	0x1
	.value	0x5b1
	.long	0x8f
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x10
	.byte	0x1
	.value	0x5b3
	.long	0x31b
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.value	0x5b4
	.long	0x91
	.byte	0
	.uleb128 0xa
	.long	.LASF50
	.byte	0x1
	.value	0x5b5
	.long	0x336
	.byte	0x4
	.uleb128 0xa
	.long	.LASF51
	.byte	0x1
	.value	0x5b6
	.long	0x355
	.byte	0x8
	.uleb128 0xa
	.long	.LASF52
	.byte	0x1
	.value	0x5b8
	.long	0x29d
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2d9
	.uleb128 0x11
	.long	0x25
	.long	0x330
	.uleb128 0x12
	.long	0x330
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2a4
	.uleb128 0x6
	.byte	0x4
	.long	0x321
	.uleb128 0x11
	.long	0x25
	.long	0x355
	.uleb128 0x12
	.long	0x330
	.uleb128 0x12
	.long	0xe5
	.uleb128 0x12
	.long	0x8f
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x33c
	.uleb128 0x9
	.long	.LASF53
	.byte	0x8
	.byte	0x1
	.value	0x644
	.long	0x39d
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.value	0x645
	.long	0x39d
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x646
	.long	0xd9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.value	0x647
	.long	0xd9
	.byte	0x6
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.value	0x648
	.long	0x3a3
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xcd
	.uleb128 0x13
	.long	0xcd
	.long	0x3b2
	.uleb128 0x14
	.long	0x88
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x67d
	.long	0x3d4
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.value	0x67e
	.long	0x112
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1
	.value	0x67f
	.long	0x422
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0x10
	.byte	0x1
	.value	0x67c
	.long	0x422
	.uleb128 0xd
	.long	0x3b2
	.byte	0
	.uleb128 0xf
	.string	"ref"
	.byte	0x1
	.value	0x681
	.long	0xcd
	.byte	0x4
	.uleb128 0xa
	.long	.LASF60
	.byte	0x1
	.value	0x682
	.long	0xcd
	.byte	0x5
	.uleb128 0xa
	.long	.LASF61
	.byte	0x1
	.value	0x683
	.long	0xcd
	.byte	0x6
	.uleb128 0xd
	.long	0x459
	.byte	0x8
	.uleb128 0xa
	.long	.LASF56
	.byte	0x1
	.value	0x68c
	.long	0x472
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3d4
	.uleb128 0xe
	.byte	0x8
	.byte	0x1
	.value	0x685
	.long	0x459
	.uleb128 0xa
	.long	.LASF54
	.byte	0x1
	.value	0x686
	.long	0x39d
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x687
	.long	0xd9
	.byte	0x4
	.uleb128 0xa
	.long	.LASF55
	.byte	0x1
	.value	0x688
	.long	0xd9
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.value	0x684
	.long	0x472
	.uleb128 0x15
	.long	0x428
	.uleb128 0x16
	.string	"b"
	.byte	0x1
	.value	0x68a
	.long	0x35b
	.byte	0
	.uleb128 0x13
	.long	0xcd
	.long	0x481
	.uleb128 0x14
	.long	0x88
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF62
	.uleb128 0x17
	.long	.LASF67
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0xc91
	.long	0x4b2
	.uleb128 0x18
	.long	.LASF63
	.byte	0
	.uleb128 0x18
	.long	.LASF64
	.byte	0x1
	.uleb128 0x18
	.long	.LASF65
	.byte	0x2
	.uleb128 0x18
	.long	.LASF66
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.long	.LASF68
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0xcb4
	.long	0x4fa
	.uleb128 0x18
	.long	.LASF69
	.byte	0
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.uleb128 0x18
	.long	.LASF71
	.byte	0x2
	.uleb128 0x18
	.long	.LASF72
	.byte	0x3
	.uleb128 0x18
	.long	.LASF73
	.byte	0x4
	.uleb128 0x18
	.long	.LASF74
	.byte	0x5
	.uleb128 0x18
	.long	.LASF75
	.byte	0x6
	.uleb128 0x18
	.long	.LASF76
	.byte	0x7
	.uleb128 0x18
	.long	.LASF77
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF78
	.byte	0x10
	.byte	0x1
	.value	0xcbf
	.long	0x53c
	.uleb128 0xa
	.long	.LASF49
	.byte	0x1
	.value	0xcc0
	.long	0x9e
	.byte	0
	.uleb128 0xf
	.string	"bus"
	.byte	0x1
	.value	0xcc1
	.long	0x4b2
	.byte	0x4
	.uleb128 0xa
	.long	.LASF79
	.byte	0x1
	.value	0xcc2
	.long	0x541
	.byte	0x8
	.uleb128 0xa
	.long	.LASF80
	.byte	0x1
	.value	0xcc3
	.long	0x556
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.long	0x25
	.uleb128 0x6
	.byte	0x4
	.long	0x53c
	.uleb128 0x11
	.long	0x25
	.long	0x556
	.uleb128 0x12
	.long	0x422
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x547
	.uleb128 0x13
	.long	0xcd
	.long	0x56c
	.uleb128 0x1a
	.long	0x88
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF81
	.byte	0x4
	.long	0x2c
	.byte	0x1
	.value	0xe4f
	.long	0x5b4
	.uleb128 0x18
	.long	.LASF82
	.byte	0
	.uleb128 0x18
	.long	.LASF83
	.byte	0x1
	.uleb128 0x18
	.long	.LASF84
	.byte	0x2
	.uleb128 0x18
	.long	.LASF85
	.byte	0x3
	.uleb128 0x18
	.long	.LASF86
	.byte	0x4
	.uleb128 0x18
	.long	.LASF87
	.byte	0x5
	.uleb128 0x18
	.long	.LASF88
	.byte	0x6
	.uleb128 0x18
	.long	.LASF89
	.byte	0x7
	.uleb128 0x18
	.long	.LASF90
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0xe7b
	.long	0x5ee
	.uleb128 0xc
	.long	.LASF57
	.byte	0x1
	.value	0xe7c
	.long	0x112
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0xe7d
	.long	0x8f
	.uleb128 0xc
	.long	.LASF91
	.byte	0x1
	.value	0xe7e
	.long	0x8f
	.uleb128 0xc
	.long	.LASF92
	.byte	0x1
	.value	0xe7f
	.long	0xcd
	.byte	0
	.uleb128 0x9
	.long	.LASF93
	.byte	0xc
	.byte	0x1
	.value	0xe7a
	.long	0x623
	.uleb128 0xa
	.long	.LASF94
	.byte	0x1
	.value	0xe80
	.long	0x5b4
	.byte	0
	.uleb128 0xa
	.long	.LASF95
	.byte	0x1
	.value	0xe81
	.long	0x56c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF96
	.byte	0x1
	.value	0xe82
	.long	0xd9
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x10
	.byte	0x1
	.value	0xe84
	.long	0x64b
	.uleb128 0xf
	.string	"hdr"
	.byte	0x1
	.value	0xe85
	.long	0x5ee
	.byte	0
	.uleb128 0xa
	.long	.LASF98
	.byte	0x1
	.value	0xe86
	.long	0x55c
	.byte	0xc
	.byte	0
	.uleb128 0x1b
	.long	0xa9
	.uleb128 0x1c
	.long	.LASF99
	.byte	0x1
	.value	0x1922
	.long	0x25
	.byte	0x1
	.long	0x66e
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.value	0x1924
	.long	0xe5
	.byte	0
	.uleb128 0x1e
	.long	.LASF104
	.byte	0x1
	.value	0x194d
	.long	0x25
	.long	.LFB216
	.long	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a1
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x1
	.value	0x194d
	.long	0x330
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL1
	.long	0xc61
	.byte	0
	.uleb128 0x1c
	.long	.LASF100
	.byte	0x1
	.value	0xc9d
	.long	0x488
	.byte	0x3
	.long	0x6bf
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.value	0xc9d
	.long	0x422
	.byte	0
	.uleb128 0x1c
	.long	.LASF101
	.byte	0x1
	.value	0x6ac
	.long	0x8f
	.byte	0x3
	.long	0x6dd
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.value	0x6ac
	.long	0x422
	.byte	0
	.uleb128 0x1c
	.long	.LASF102
	.byte	0x1
	.value	0x18f9
	.long	0x25
	.byte	0x1
	.long	0x713
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.value	0x18f9
	.long	0x422
	.uleb128 0x1d
	.string	"evt"
	.byte	0x1
	.value	0x18fb
	.long	0x422
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.value	0x18fc
	.long	0x25
	.byte	0
	.uleb128 0x1c
	.long	.LASF103
	.byte	0x1
	.value	0x18ef
	.long	0x25
	.byte	0x1
	.long	0x73d
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.value	0x18ef
	.long	0x422
	.uleb128 0x1d
	.string	"evt"
	.byte	0x1
	.value	0x18f1
	.long	0x422
	.byte	0
	.uleb128 0x1e
	.long	.LASF105
	.byte	0x1
	.value	0x1904
	.long	0x25
	.long	.LFB214
	.long	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.long	0x83d
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0x1904
	.long	0x422
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x23
	.long	.LASF95
	.byte	0x1
	.value	0x1906
	.long	0xcd
	.uleb128 0x24
	.string	"err"
	.byte	0x1
	.value	0x1907
	.long	0x25
	.long	.LLST0
	.uleb128 0x25
	.long	0x6a1
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.value	0x190d
	.long	0x79c
	.uleb128 0x26
	.long	0x6b2
	.byte	0
	.uleb128 0x25
	.long	0x6dd
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.value	0x1910
	.long	0x7e7
	.uleb128 0x27
	.long	0x6ee
	.long	.LLST1
	.uleb128 0x28
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x29
	.long	0x6fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2a
	.long	0x706
	.long	.LLST2
	.uleb128 0x20
	.long	.LVL4
	.long	0xc6d
	.uleb128 0x20
	.long	.LVL7
	.long	0xc79
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	0x713
	.long	.LBB14
	.long	.LBE14-.LBB14
	.byte	0x1
	.value	0x1913
	.long	0x82a
	.uleb128 0x27
	.long	0x724
	.long	.LLST3
	.uleb128 0x28
	.long	.LBB15
	.long	.LBE15-.LBB15
	.uleb128 0x2a
	.long	0x730
	.long	.LLST4
	.uleb128 0x20
	.long	.LVL11
	.long	0xc85
	.uleb128 0x20
	.long	.LVL12
	.long	0xc79
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL14
	.long	0xc91
	.uleb128 0x20
	.long	.LVL15
	.long	0xc9a
	.byte	0
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x1
	.value	0x18cc
	.long	0x422
	.byte	0x3
	.long	0x873
	.uleb128 0x2b
	.long	.LASF108
	.byte	0x1
	.value	0x18cc
	.long	0x873
	.uleb128 0x23
	.long	.LASF109
	.byte	0x1
	.value	0x18ce
	.long	0xc1
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x18cf
	.long	0x422
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x623
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x1
	.value	0x18ac
	.long	0x422
	.byte	0x3
	.long	0x8af
	.uleb128 0x2b
	.long	.LASF108
	.byte	0x1
	.value	0x18ac
	.long	0x873
	.uleb128 0x2b
	.long	.LASF109
	.byte	0x1
	.value	0x18ad
	.long	0xc1
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.value	0x18af
	.long	0x422
	.byte	0
	.uleb128 0x2c
	.long	.LASF111
	.byte	0x1
	.value	0x18d5
	.long	.LFB211
	.long	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e5
	.uleb128 0x22
	.string	"p1"
	.byte	0x1
	.value	0x18d5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"p2"
	.byte	0x1
	.value	0x18d5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"p3"
	.byte	0x1
	.value	0x18d5
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0
	.uleb128 0x2e
	.long	.LASF108
	.byte	0x1
	.value	0x18d8
	.long	0x873
	.long	.LLST5
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x18db
	.long	0x422
	.long	.LLST6
	.uleb128 0x2f
	.long	0x83d
	.long	.LBB22
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x18e2
	.long	0x9bf
	.uleb128 0x27
	.long	0x84e
	.long	.LLST7
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2a
	.long	0x85a
	.long	.LLST8
	.uleb128 0x2a
	.long	0x866
	.long	.LLST9
	.uleb128 0x2f
	.long	0x879
	.long	.LBB24
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x18d2
	.long	0x9b4
	.uleb128 0x27
	.long	0x896
	.long	.LLST10
	.uleb128 0x27
	.long	0x88a
	.long	.LLST11
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2a
	.long	0x8a2
	.long	.LLST12
	.uleb128 0x20
	.long	.LVL23
	.long	0xca6
	.uleb128 0x20
	.long	.LVL26
	.long	0xcb2
	.uleb128 0x20
	.long	.LVL29
	.long	0xca6
	.uleb128 0x20
	.long	.LVL32
	.long	0xcbe
	.uleb128 0x20
	.long	.LVL35
	.long	0xcca
	.uleb128 0x20
	.long	.LVL36
	.long	0xcd6
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL21
	.long	0xce2
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL18
	.long	0xcee
	.uleb128 0x20
	.long	.LVL37
	.long	0xcfa
	.uleb128 0x20
	.long	.LVL38
	.long	0xc9a
	.uleb128 0x20
	.long	.LVL40
	.long	0xd06
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF112
	.byte	0x1
	.value	0x1893
	.long	.LFB208
	.long	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.long	0xabe
	.uleb128 0x22
	.string	"p1"
	.byte	0x1
	.value	0x1893
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"p2"
	.byte	0x1
	.value	0x1893
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"p3"
	.byte	0x1
	.value	0x1893
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x1896
	.long	0x873
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x30
	.long	.LASF113
	.byte	0x1
	.value	0x1897
	.long	0xcd
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.long	.LASF96
	.byte	0x1
	.value	0x1898
	.long	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x31
	.long	.LBB32
	.long	.LBE32-.LBB32
	.long	0xa98
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.value	0x189a
	.long	0x422
	.long	.LLST13
	.uleb128 0x20
	.long	.LVL44
	.long	0xca6
	.uleb128 0x20
	.long	.LVL45
	.long	0xd12
	.uleb128 0x20
	.long	.LVL46
	.long	0xc79
	.uleb128 0x20
	.long	.LVL47
	.long	0xd06
	.byte	0
	.uleb128 0x20
	.long	.LVL42
	.long	0xd1e
	.uleb128 0x20
	.long	.LVL48
	.long	0xd2a
	.uleb128 0x20
	.long	.LVL49
	.long	0xd36
	.uleb128 0x20
	.long	.LVL50
	.long	0xd42
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	0x650
	.long	.LFB215
	.long	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.long	0xb24
	.uleb128 0x2a
	.long	0x661
	.long	.LLST14
	.uleb128 0x31
	.long	.LBB37
	.long	.LBE37-.LBB37
	.long	0xb11
	.uleb128 0x33
	.long	0x661
	.uleb128 0x20
	.long	.LVL54
	.long	0xd4e
	.uleb128 0x20
	.long	.LVL55
	.long	0xd5a
	.uleb128 0x20
	.long	.LVL56
	.long	0xd66
	.uleb128 0x20
	.long	.LVL57
	.long	0xd66
	.byte	0
	.uleb128 0x20
	.long	.LVL51
	.long	0xd72
	.uleb128 0x20
	.long	.LVL52
	.long	0xd7e
	.byte	0
	.uleb128 0x34
	.long	.LASF155
	.byte	0x1
	.value	0x1953
	.long	0x25
	.long	.LFB217
	.long	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.long	0xb48
	.uleb128 0x20
	.long	.LVL59
	.long	0xc61
	.byte	0
	.uleb128 0x35
	.long	.LASF114
	.byte	0x1
	.value	0x5aa
	.long	0xb55
	.byte	0x1
	.uleb128 0x7
	.long	0x25
	.uleb128 0x35
	.long	.LASF115
	.byte	0x1
	.value	0x5ab
	.long	0xb55
	.byte	0x1
	.uleb128 0x35
	.long	.LASF116
	.byte	0x1
	.value	0x5ac
	.long	0xb55
	.byte	0x1
	.uleb128 0x35
	.long	.LASF117
	.byte	0x1
	.value	0x5ad
	.long	0xb55
	.byte	0x1
	.uleb128 0x30
	.long	.LASF118
	.byte	0x1
	.value	0x188c
	.long	0x25a
	.uleb128 0x5
	.byte	0x3
	.long	sem_prio_recv
	.uleb128 0x30
	.long	.LASF119
	.byte	0x1
	.value	0x188d
	.long	0x23f
	.uleb128 0x5
	.byte	0x3
	.long	recv_fifo
	.uleb128 0x13
	.long	0x205
	.long	0xbb5
	.uleb128 0x1a
	.long	0x88
	.byte	0x9b
	.byte	0
	.uleb128 0x30
	.long	.LASF120
	.byte	0x1
	.value	0x188f
	.long	0xba5
	.uleb128 0x5
	.byte	0x3
	.long	prio_recv_thread_stack
	.uleb128 0x13
	.long	0x205
	.long	0xbd8
	.uleb128 0x36
	.long	0x88
	.value	0x1ff
	.byte	0
	.uleb128 0x30
	.long	.LASF121
	.byte	0x1
	.value	0x1892
	.long	0xbc7
	.uleb128 0x5
	.byte	0x3
	.long	recv_thread_stack
	.uleb128 0x37
	.string	"drv"
	.byte	0x1
	.value	0x1947
	.long	0xbfc
	.uleb128 0x5
	.byte	0x3
	.long	drv
	.uleb128 0x7
	.long	0x4fa
	.uleb128 0x30
	.long	.LASF122
	.byte	0x1
	.value	0x1958
	.long	0x2d9
	.uleb128 0x5
	.byte	0x3
	.long	__config_sys_init__hci_driver_init0
	.uleb128 0x30
	.long	.LASF123
	.byte	0x1
	.value	0x195a
	.long	0x2a4
	.uleb128 0x5
	.byte	0x3
	.long	__device_sys_init__hci_driver_init0
	.uleb128 0x38
	.long	.LASF124
	.byte	0x1
	.value	0x2e0
	.long	0x2c
	.uleb128 0x38
	.long	.LASF125
	.byte	0x1
	.value	0x12c5
	.long	0x64b
	.uleb128 0x39
	.long	.LASF126
	.byte	0x1
	.value	0x188e
	.long	0x282
	.uleb128 0x5
	.byte	0x3
	.long	prio_recv_thread_data
	.uleb128 0x39
	.long	.LASF127
	.byte	0x1
	.value	0x1891
	.long	0x282
	.uleb128 0x5
	.byte	0x3
	.long	recv_thread_data
	.uleb128 0x3a
	.long	.LASF128
	.long	.LASF128
	.byte	0x1
	.value	0xcc5
	.uleb128 0x3a
	.long	.LASF129
	.long	.LASF129
	.byte	0x1
	.value	0xee9
	.uleb128 0x3a
	.long	.LASF130
	.long	.LASF130
	.byte	0x1
	.value	0xcb3
	.uleb128 0x3a
	.long	.LASF131
	.long	.LASF131
	.byte	0x1
	.value	0xee6
	.uleb128 0x3b
	.long	.LASF156
	.long	.LASF156
	.uleb128 0x3a
	.long	.LASF132
	.long	.LASF132
	.byte	0x1
	.value	0x6a9
	.uleb128 0x3a
	.long	.LASF133
	.long	.LASF133
	.byte	0x1
	.value	0xc97
	.uleb128 0x3a
	.long	.LASF134
	.long	.LASF134
	.byte	0x1
	.value	0xeea
	.uleb128 0x3a
	.long	.LASF135
	.long	.LASF135
	.byte	0x1
	.value	0xee7
	.uleb128 0x3a
	.long	.LASF136
	.long	.LASF136
	.byte	0x1
	.value	0xea3
	.uleb128 0x3a
	.long	.LASF137
	.long	.LASF137
	.byte	0x1
	.value	0xea2
	.uleb128 0x3a
	.long	.LASF138
	.long	.LASF138
	.byte	0x1
	.value	0xee8
	.uleb128 0x3a
	.long	.LASF139
	.long	.LASF139
	.byte	0x1
	.value	0x30c
	.uleb128 0x3a
	.long	.LASF140
	.long	.LASF140
	.byte	0x1
	.value	0xcb2
	.uleb128 0x3a
	.long	.LASF141
	.long	.LASF141
	.byte	0x1
	.value	0x33f
	.uleb128 0x3a
	.long	.LASF142
	.long	.LASF142
	.byte	0x1
	.value	0xeeb
	.uleb128 0x3a
	.long	.LASF143
	.long	.LASF143
	.byte	0x1
	.value	0xe9f
	.uleb128 0x3a
	.long	.LASF144
	.long	.LASF144
	.byte	0x1
	.value	0xea1
	.uleb128 0x3a
	.long	.LASF145
	.long	.LASF145
	.byte	0x1
	.value	0x308
	.uleb128 0x3a
	.long	.LASF146
	.long	.LASF146
	.byte	0x1
	.value	0x319
	.uleb128 0x3a
	.long	.LASF147
	.long	.LASF147
	.byte	0x1
	.value	0xee5
	.uleb128 0x3a
	.long	.LASF148
	.long	.LASF148
	.byte	0x1
	.value	0x306
	.uleb128 0x3a
	.long	.LASF149
	.long	.LASF149
	.byte	0x1
	.value	0x33b
	.uleb128 0x3a
	.long	.LASF150
	.long	.LASF150
	.byte	0x1
	.value	0x318
	.uleb128 0x3a
	.long	.LASF151
	.long	.LASF151
	.byte	0x1
	.value	0xeac
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL8
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL10
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL12-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL17
	.long	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL21-1
	.value	0x1
	.byte	0x50
	.long	.LVL21-1
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL17
	.long	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL36
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL21-1
	.value	0x1
	.byte	0x50
	.long	.LVL21-1
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL21
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL21
	.long	.LVL36
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL27
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL27
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL33
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	.LVL34
	.long	.LVL36
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL22
	.long	.LVL24
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	.LVL27
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL44
	.long	.LVL45-1
	.value	0x1
	.byte	0x50
	.long	.LVL45-1
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST14:
	.long	.LVL53
	.long	.LVL54-1
	.value	0x1
	.byte	0x50
	.long	.LVL54-1
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	.LVL58
	.long	.LFE215
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x44
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB216
	.long	.LFE216-.LFB216
	.long	.LFB214
	.long	.LFE214-.LFB214
	.long	.LFB211
	.long	.LFE211-.LFB211
	.long	.LFB208
	.long	.LFE208-.LFB208
	.long	.LFB215
	.long	.LFE215-.LFB215
	.long	.LFB217
	.long	.LFE217-.LFB217
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB21
	.long	.LBE21
	.long	.LBB30
	.long	.LBE30
	.long	0
	.long	0
	.long	.LBB22
	.long	.LBE22
	.long	.LBB29
	.long	.LBE29
	.long	0
	.long	0
	.long	.LBB24
	.long	.LBE24
	.long	.LBB27
	.long	.LBE27
	.long	0
	.long	0
	.long	.LBB31
	.long	.LBE31
	.long	.LBB33
	.long	.LBE33
	.long	0
	.long	0
	.long	.LFB216
	.long	.LFE216
	.long	.LFB214
	.long	.LFE214
	.long	.LFB211
	.long	.LFE211
	.long	.LFB208
	.long	.LFE208
	.long	.LFB215
	.long	.LFE215
	.long	.LFB217
	.long	.LFE217
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"sem_prio_recv"
.LASF92:
	.string	"packet_release_last"
.LASF153:
	.string	"src/hci_driver.c"
.LASF66:
	.string	"BT_BUF_ACL_IN"
.LASF48:
	.string	"device_config"
.LASF93:
	.string	"radio_pdu_node_rx_hdr"
.LASF26:
	.string	"prev"
.LASF31:
	.string	"aos_queue_t"
.LASF43:
	.string	"task"
.LASF95:
	.string	"type"
.LASF50:
	.string	"init"
.LASF155:
	.string	"hci_driver_init"
.LASF145:
	.string	"k_queue_append"
.LASF147:
	.string	"hci_init"
.LASF11:
	.string	"long long unsigned int"
.LASF97:
	.string	"radio_pdu_node_rx"
.LASF120:
	.string	"prio_recv_thread_stack"
.LASF125:
	.string	"ITM_RxBuffer"
.LASF84:
	.string	"NODE_RX_TYPE_REPORT"
.LASF22:
	.string	"next"
.LASF44:
	.string	"device"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF116:
	.string	"_INIT_LEVEL_POST_KERNEL"
.LASF131:
	.string	"hci_cmd_handle"
.LASF112:
	.string	"prio_recv_thread"
.LASF104:
	.string	"_hci_driver_init"
.LASF39:
	.string	"poll_events"
.LASF30:
	.string	"aos_sem_t"
.LASF7:
	.string	"long int"
.LASF23:
	.string	"_snode"
.LASF134:
	.string	"hci_acl_encode"
.LASF143:
	.string	"radio_rx_get"
.LASF141:
	.string	"k_yield"
.LASF38:
	.string	"_queue"
.LASF107:
	.string	"process_node"
.LASF105:
	.string	"hci_driver_send"
.LASF35:
	.string	"_task_t"
.LASF71:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF73:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF154:
	.string	"/home/stone/Documents/pca"
.LASF123:
	.string	"__device_sys_init__hci_driver_init0"
.LASF151:
	.string	"ll_init"
.LASF47:
	.string	"driver_data"
.LASF9:
	.string	"__uint32_t"
.LASF91:
	.string	"link"
.LASF64:
	.string	"BT_BUF_EVT"
.LASF132:
	.string	"net_buf_unref"
.LASF124:
	.string	"aos_log_level"
.LASF101:
	.string	"net_buf_user_data"
.LASF0:
	.string	"unsigned int"
.LASF20:
	.string	"sys_snode_t"
.LASF69:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF45:
	.string	"config"
.LASF103:
	.string	"cmd_handle"
.LASF75:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF10:
	.string	"long unsigned int"
.LASF128:
	.string	"bt_hci_driver_register"
.LASF19:
	.string	"u32_t"
.LASF49:
	.string	"name"
.LASF139:
	.string	"k_queue_get"
.LASF33:
	.string	"_queue_t"
.LASF54:
	.string	"data"
.LASF55:
	.string	"size"
.LASF6:
	.string	"short unsigned int"
.LASF61:
	.string	"pool_id"
.LASF25:
	.string	"tail"
.LASF63:
	.string	"BT_BUF_CMD"
.LASF113:
	.string	"num_cmplt"
.LASF65:
	.string	"BT_BUF_ACL_OUT"
.LASF100:
	.string	"bt_buf_get_type"
.LASF108:
	.string	"node_rx"
.LASF85:
	.string	"NODE_RX_TYPE_CONNECTION"
.LASF98:
	.string	"pdu_data"
.LASF111:
	.string	"recv_thread"
.LASF150:
	.string	"k_sem_init"
.LASF106:
	.string	"unused"
.LASF17:
	.string	"u8_t"
.LASF12:
	.string	"sizetype"
.LASF133:
	.string	"bt_buf_get_rx"
.LASF79:
	.string	"open"
.LASF99:
	.string	"hci_driver_open"
.LASF51:
	.string	"device_pm_control"
.LASF80:
	.string	"send"
.LASF129:
	.string	"hci_acl_handle"
.LASF36:
	.string	"_stack_element_t"
.LASF28:
	.string	"aos_hdl_t"
.LASF40:
	.string	"k_fifo"
.LASF144:
	.string	"radio_rx_dequeue"
.LASF58:
	.string	"frags"
.LASF88:
	.string	"NODE_RX_TYPE_ENC_REFRESH"
.LASF56:
	.string	"__buf"
.LASF126:
	.string	"prio_recv_thread_data"
.LASF67:
	.string	"bt_buf_type"
.LASF109:
	.string	"class"
.LASF137:
	.string	"radio_rx_mem_release"
.LASF62:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF4:
	.string	"unsigned char"
.LASF78:
	.string	"bt_hci_driver"
.LASF57:
	.string	"node"
.LASF5:
	.string	"short int"
.LASF86:
	.string	"NODE_RX_TYPE_TERMINATE"
.LASF138:
	.string	"hci_get_class"
.LASF136:
	.string	"radio_rx_fc_set"
.LASF70:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF82:
	.string	"NODE_RX_TYPE_NONE"
.LASF27:
	.string	"sys_dlist_t"
.LASF156:
	.string	"__stack_chk_fail"
.LASF16:
	.string	"s8_t"
.LASF21:
	.string	"head"
.LASF102:
	.string	"acl_handle"
.LASF152:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF15:
	.string	"uint32_t"
.LASF130:
	.string	"bt_recv_prio"
.LASF122:
	.string	"__config_sys_init__hci_driver_init0"
.LASF2:
	.string	"long double"
.LASF13:
	.string	"char"
.LASF119:
	.string	"recv_fifo"
.LASF32:
	.string	"cpu_stack_t"
.LASF46:
	.string	"driver_api"
.LASF24:
	.string	"_dnode"
.LASF89:
	.string	"NODE_RX_TYPE_CHAN_SEL_ALGO"
.LASF74:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF8:
	.string	"__int32_t"
.LASF77:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF149:
	.string	"k_thread_create"
.LASF114:
	.string	"_INIT_LEVEL_PRE_KERNEL_1"
.LASF115:
	.string	"_INIT_LEVEL_PRE_KERNEL_2"
.LASF37:
	.string	"k_queue"
.LASF146:
	.string	"k_sem_take"
.LASF18:
	.string	"u16_t"
.LASF72:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF59:
	.string	"net_buf"
.LASF81:
	.string	"radio_pdu_node_rx_type"
.LASF117:
	.string	"_INIT_LEVEL_APPLICATION"
.LASF29:
	.string	"aos_task_t"
.LASF42:
	.string	"k_thread"
.LASF148:
	.string	"k_queue_init"
.LASF110:
	.string	"encode_node"
.LASF52:
	.string	"config_info"
.LASF140:
	.string	"bt_recv"
.LASF60:
	.string	"flags"
.LASF142:
	.string	"hci_num_cmplt_encode"
.LASF34:
	.string	"_sem_t"
.LASF96:
	.string	"handle"
.LASF135:
	.string	"hci_evt_encode"
.LASF94:
	.string	"onion"
.LASF53:
	.string	"net_buf_simple"
.LASF121:
	.string	"recv_thread_stack"
.LASF127:
	.string	"recv_thread_data"
.LASF41:
	.string	"k_sem"
.LASF76:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF83:
	.string	"NODE_RX_TYPE_DC_PDU"
.LASF90:
	.string	"NODE_RX_TYPE_PHY_UPDATE"
.LASF68:
	.string	"bt_hci_driver_bus"
.LASF87:
	.string	"NODE_RX_TYPE_CONN_UPDATE"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
