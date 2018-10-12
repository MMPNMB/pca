	.file	"tcpip.c"
	.text
.Ltext0:
	.section	.text.unlikely.tcpip_thread,"ax",@progbits
.LCOLDB0:
	.section	.text.tcpip_thread,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.tcpip_thread
.Ltext_cold0:
	.section	.text.tcpip_thread
	.type	tcpip_thread, @function
tcpip_thread:
.LFB17:
	.file 1 "kernel/protocols/net/api/tcpip.c"
	.loc 1 88 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 88 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 92 0
	movl	tcpip_init_done, %eax
	testl	%eax, %eax
	je	.L2
	.loc 1 93 0
	subl	$12, %esp
	pushl	tcpip_init_done_arg
	call	*%eax
.LVL1:
	addl	$16, %esp
.L2:
	.loc 1 96 0
	subl	$12, %esp
	.loc 1 101 0
	leal	-16(%ebp), %ebx
	.loc 1 96 0
	pushl	$lock_tcpip_core
	call	sys_mutex_lock
.LVL2:
	addl	$16, %esp
.L3:
	.loc 1 98 0
	subl	$12, %esp
	pushl	$lock_tcpip_core
	call	sys_mutex_unlock
.LVL3:
	.loc 1 101 0
	popl	%ecx
	popl	%eax
	pushl	%ebx
	pushl	$mbox
	call	sys_timeouts_mbox_fetch
.LVL4:
	.loc 1 102 0
	movl	$lock_tcpip_core, (%esp)
	call	sys_mutex_lock
.LVL5:
	.loc 1 103 0
	movl	-16(%ebp), %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L3
	.loc 1 108 0
	movl	(%eax), %edx
	cmpl	$3, %edx
	je	.L5
	cmpl	$4, %edx
	je	.L6
	cmpl	$2, %edx
	jne	.L3
	.loc 1 124 0
	pushl	%ecx
	pushl	%ecx
	pushl	8(%eax)
	pushl	4(%eax)
	call	*12(%eax)
.LVL6:
	.loc 1 125 0
	popl	%eax
	popl	%edx
	pushl	-16(%ebp)
	pushl	$8
	jmp	.L17
.L5:
	.loc 1 144 0
	subl	$12, %esp
	pushl	8(%eax)
	call	*4(%eax)
.LVL7:
	.loc 1 145 0
	popl	%eax
	popl	%edx
	pushl	-16(%ebp)
	pushl	$7
.L17:
	call	memp_free
.LVL8:
	jmp	.L16
.L6:
	.loc 1 150 0
	subl	$12, %esp
	pushl	8(%eax)
	call	*4(%eax)
.LVL9:
.L16:
	.loc 1 151 0
	addl	$16, %esp
	jmp	.L3
	.cfi_endproc
.LFE17:
	.size	tcpip_thread, .-tcpip_thread
	.section	.text.unlikely.tcpip_thread
.LCOLDE0:
	.section	.text.tcpip_thread
.LHOTE0:
	.section	.text.unlikely.pbuf_free_int,"ax",@progbits
.LCOLDB1:
	.section	.text.pbuf_free_int,"ax",@progbits
.LHOTB1:
	.type	pbuf_free_int, @function
pbuf_free_int:
.LFB27:
	.loc 1 527 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL11:
	.loc 1 530 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 529 0
	jmp	pbuf_free
.LVL12:
	.cfi_endproc
.LFE27:
	.size	pbuf_free_int, .-pbuf_free_int
	.section	.text.unlikely.pbuf_free_int
.LCOLDE1:
	.section	.text.pbuf_free_int
.LHOTE1:
	.section	.text.unlikely.tcpip_inpkt,"ax",@progbits
.LCOLDB2:
	.section	.text.tcpip_inpkt,"ax",@progbits
.LHOTB2:
	.globl	tcpip_inpkt
	.type	tcpip_inpkt, @function
tcpip_inpkt:
.LFB18:
	.loc 1 209 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 222 0
	pushl	$8
	call	memp_malloc
.LVL14:
	movl	%eax, %ebx
.LVL15:
	.loc 1 223 0
	addl	$16, %esp
	.loc 1 224 0
	movb	$-1, %al
.LVL16:
	.loc 1 223 0
	testl	%ebx, %ebx
	je	.L22
	.loc 1 228 0
	movl	8(%ebp), %eax
	.loc 1 227 0
	movl	$2, (%ebx)
	.loc 1 228 0
	movl	%eax, 4(%ebx)
	.loc 1 229 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebx)
	.loc 1 230 0
	movl	16(%ebp), %eax
	movl	%eax, 12(%ebx)
	.loc 1 231 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	$mbox
	call	sys_mbox_trypost
.LVL17:
	addl	$16, %esp
	testb	%al, %al
	je	.L22
	.loc 1 232 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$8
	call	memp_free
.LVL18:
	.loc 1 233 0
	addl	$16, %esp
	movb	$-1, %al
.L22:
	.loc 1 237 0
	movl	-4(%ebp), %ebx
.LVL19:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	tcpip_inpkt, .-tcpip_inpkt
	.section	.text.unlikely.tcpip_inpkt
.LCOLDE2:
	.section	.text.tcpip_inpkt
.LHOTE2:
	.section	.text.unlikely.tcpip_input,"ax",@progbits
.LCOLDB3:
	.section	.text.tcpip_input,"ax",@progbits
.LHOTB3:
	.globl	tcpip_input
	.type	tcpip_input, @function
tcpip_input:
.LFB19:
	.loc 1 252 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 252 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	.loc 1 254 0
	testb	$24, 61(%eax)
	je	.L29
	.loc 1 255 0
	pushl	%ecx
	pushl	$ethernet_input
	jmp	.L32
.L29:
	.loc 1 258 0
	pushl	%ecx
	pushl	$ip4_input
.L32:
	pushl	%eax
	pushl	%edx
	call	tcpip_inpkt
.LVL21:
	addl	$16, %esp
	.loc 1 259 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	tcpip_input, .-tcpip_input
	.section	.text.unlikely.tcpip_input
.LCOLDE3:
	.section	.text.tcpip_input
.LHOTE3:
	.section	.text.unlikely.tcpip_callback_with_block,"ax",@progbits
.LCOLDB4:
	.section	.text.tcpip_callback_with_block,"ax",@progbits
.LHOTB4:
	.globl	tcpip_callback_with_block
	.type	tcpip_callback_with_block, @function
tcpip_callback_with_block:
.LFB20:
	.loc 1 274 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 274 0
	movl	16(%ebp), %esi
	.loc 1 279 0
	subl	$12, %esp
	pushl	$7
	call	memp_malloc
.LVL23:
	movl	%eax, %ebx
.LVL24:
	.loc 1 280 0
	addl	$16, %esp
	.loc 1 281 0
	movb	$-1, %al
.LVL25:
	.loc 1 280 0
	testl	%ebx, %ebx
	je	.L34
	.loc 1 285 0
	movl	8(%ebp), %eax
	.loc 1 284 0
	movl	$3, (%ebx)
	.loc 1 285 0
	movl	%eax, 4(%ebx)
	.loc 1 286 0
	movl	12(%ebp), %eax
	movl	%eax, 8(%ebx)
	.loc 1 287 0
	movl	%esi, %eax
	testb	%al, %al
	je	.L35
	.loc 1 288 0
	pushl	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$mbox
	call	sys_mbox_post
.LVL26:
	addl	$16, %esp
	.loc 1 295 0
	xorl	%eax, %eax
	jmp	.L34
.L35:
	.loc 1 290 0
	pushl	%edx
	pushl	%edx
	pushl	%ebx
	pushl	$mbox
	call	sys_mbox_trypost
.LVL27:
	addl	$16, %esp
	testb	%al, %al
	je	.L34
	.loc 1 291 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$7
	call	memp_free
.LVL28:
	.loc 1 292 0
	addl	$16, %esp
	movb	$-1, %al
.L34:
	.loc 1 296 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL29:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	tcpip_callback_with_block, .-tcpip_callback_with_block
	.section	.text.unlikely.tcpip_callback_with_block
.LCOLDE4:
	.section	.text.tcpip_callback_with_block
.LHOTE4:
	.section	.text.unlikely.tcpip_send_msg_wait_sem,"ax",@progbits
.LCOLDB5:
	.section	.text.tcpip_send_msg_wait_sem,"ax",@progbits
.LHOTB5:
	.globl	tcpip_send_msg_wait_sem
	.type	tcpip_send_msg_wait_sem, @function
tcpip_send_msg_wait_sem:
.LFB21:
	.loc 1 369 0
	.cfi_startproc
.LVL30:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 372 0
	pushl	$lock_tcpip_core
	call	sys_mutex_lock
.LVL31:
	.loc 1 373 0
	popl	%eax
	pushl	12(%ebp)
	call	*8(%ebp)
.LVL32:
	.loc 1 374 0
	movl	$lock_tcpip_core, (%esp)
	call	sys_mutex_unlock
.LVL33:
	.loc 1 391 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	tcpip_send_msg_wait_sem, .-tcpip_send_msg_wait_sem
	.section	.text.unlikely.tcpip_send_msg_wait_sem
.LCOLDE5:
	.section	.text.tcpip_send_msg_wait_sem
.LHOTE5:
	.section	.text.unlikely.tcpip_api_call,"ax",@progbits
.LCOLDB6:
	.section	.text.tcpip_api_call,"ax",@progbits
.LHOTB6:
	.globl	tcpip_api_call
	.type	tcpip_api_call, @function
tcpip_api_call:
.LFB22:
	.loc 1 405 0
	.cfi_startproc
.LVL34:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 408 0
	pushl	$lock_tcpip_core
	call	sys_mutex_lock
.LVL35:
	.loc 1 409 0
	popl	%eax
	pushl	12(%ebp)
	call	*8(%ebp)
.LVL36:
	movb	%al, -9(%ebp)
.LVL37:
	.loc 1 410 0
	movl	$lock_tcpip_core, (%esp)
	call	sys_mutex_unlock
.LVL38:
	.loc 1 443 0
	movb	-9(%ebp), %al
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	tcpip_api_call, .-tcpip_api_call
	.section	.text.unlikely.tcpip_api_call
.LCOLDE6:
	.section	.text.tcpip_api_call
.LHOTE6:
	.section	.text.unlikely.tcpip_callbackmsg_new,"ax",@progbits
.LCOLDB7:
	.section	.text.tcpip_callbackmsg_new,"ax",@progbits
.LHOTB7:
	.globl	tcpip_callbackmsg_new
	.type	tcpip_callbackmsg_new, @function
tcpip_callbackmsg_new:
.LFB23:
	.loc 1 455 0
	.cfi_startproc
.LVL39:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 456 0
	pushl	$7
	call	memp_malloc
.LVL40:
	.loc 1 457 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L46
	.loc 1 461 0
	movl	8(%ebp), %edx
	.loc 1 460 0
	movl	$4, (%eax)
	.loc 1 461 0
	movl	%edx, 4(%eax)
	.loc 1 462 0
	movl	12(%ebp), %edx
	movl	%edx, 8(%eax)
.L46:
	.loc 1 464 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	tcpip_callbackmsg_new, .-tcpip_callbackmsg_new
	.section	.text.unlikely.tcpip_callbackmsg_new
.LCOLDE7:
	.section	.text.tcpip_callbackmsg_new
.LHOTE7:
	.section	.text.unlikely.tcpip_callbackmsg_delete,"ax",@progbits
.LCOLDB8:
	.section	.text.tcpip_callbackmsg_delete,"ax",@progbits
.LHOTB8:
	.globl	tcpip_callbackmsg_delete
	.type	tcpip_callbackmsg_delete, @function
tcpip_callbackmsg_delete:
.LFB24:
	.loc 1 473 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 474 0
	pushl	8(%ebp)
	pushl	$7
	call	memp_free
.LVL42:
	.loc 1 475 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	tcpip_callbackmsg_delete, .-tcpip_callbackmsg_delete
	.section	.text.unlikely.tcpip_callbackmsg_delete
.LCOLDE8:
	.section	.text.tcpip_callbackmsg_delete
.LHOTE8:
	.section	.text.unlikely.tcpip_trycallback,"ax",@progbits
.LCOLDB9:
	.section	.text.tcpip_trycallback,"ax",@progbits
.LHOTB9:
	.globl	tcpip_trycallback
	.type	tcpip_trycallback, @function
tcpip_trycallback:
.LFB25:
	.loc 1 486 0
	.cfi_startproc
.LVL43:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 488 0
	pushl	8(%ebp)
	pushl	$mbox
	call	sys_mbox_trypost
.LVL44:
	.loc 1 489 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	tcpip_trycallback, .-tcpip_trycallback
	.section	.text.unlikely.tcpip_trycallback
.LCOLDE9:
	.section	.text.tcpip_trycallback
.LHOTE9:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"tcp/ip"
	.section	.text.unlikely.tcpip_init,"ax",@progbits
.LCOLDB11:
	.section	.text.tcpip_init,"ax",@progbits
.LHOTB11:
	.globl	tcpip_init
	.type	tcpip_init, @function
tcpip_init:
.LFB26:
	.loc 1 502 0
	.cfi_startproc
.LVL45:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 503 0
	call	lwip_init
.LVL46:
	.loc 1 505 0
	movl	8(%ebp), %eax
	.loc 1 507 0
	pushl	%edx
	pushl	%edx
	pushl	$16
	pushl	$mbox
	.loc 1 505 0
	movl	%eax, tcpip_init_done
	.loc 1 506 0
	movl	12(%ebp), %eax
	movl	%eax, tcpip_init_done_arg
	.loc 1 507 0
	call	sys_mbox_new
.LVL47:
	.loc 1 511 0
	movl	$lock_tcpip_core, (%esp)
	call	sys_mutex_new
.LVL48:
	.loc 1 516 0
	movl	$7, (%esp)
	pushl	$3072
	pushl	$0
	pushl	$tcpip_thread
	pushl	$.LC10
	call	sys_thread_new
.LVL49:
	.loc 1 517 0
	addl	$32, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	tcpip_init, .-tcpip_init
	.section	.text.unlikely.tcpip_init
.LCOLDE11:
	.section	.text.tcpip_init
.LHOTE11:
	.section	.text.unlikely.pbuf_free_callback,"ax",@progbits
.LCOLDB12:
	.section	.text.pbuf_free_callback,"ax",@progbits
.LHOTB12:
	.globl	pbuf_free_callback
	.type	pbuf_free_callback, @function
pbuf_free_callback:
.LFB28:
	.loc 1 540 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 541 0
	pushl	$0
	pushl	8(%ebp)
	pushl	$pbuf_free_int
	call	tcpip_callback_with_block
.LVL51:
	.loc 1 542 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	pbuf_free_callback, .-pbuf_free_callback
	.section	.text.unlikely.pbuf_free_callback
.LCOLDE12:
	.section	.text.pbuf_free_callback
.LHOTE12:
	.section	.text.unlikely.mem_free_callback,"ax",@progbits
.LCOLDB13:
	.section	.text.mem_free_callback,"ax",@progbits
.LHOTB13:
	.globl	mem_free_callback
	.type	mem_free_callback, @function
mem_free_callback:
.LFB29:
	.loc 1 553 0
	.cfi_startproc
.LVL52:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 554 0
	pushl	$0
	pushl	8(%ebp)
	pushl	$mem_free
	call	tcpip_callback_with_block
.LVL53:
	.loc 1 555 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	mem_free_callback, .-mem_free_callback
	.section	.text.unlikely.mem_free_callback
.LCOLDE13:
	.section	.text.mem_free_callback
.LHOTE13:
	.globl	lock_tcpip_core
	.section	.bss.lock_tcpip_core,"aw",@nobits
	.align 4
	.type	lock_tcpip_core, @object
	.size	lock_tcpip_core, 4
lock_tcpip_core:
	.zero	4
	.section	.bss.mbox,"aw",@nobits
	.align 4
	.type	mbox, @object
	.size	mbox, 4
mbox:
	.zero	4
	.section	.bss.tcpip_init_done_arg,"aw",@nobits
	.align 4
	.type	tcpip_init_done_arg, @object
	.size	tcpip_init_done_arg, 4
tcpip_init_done_arg:
	.zero	4
	.section	.bss.tcpip_init_done,"aw",@nobits
	.align 4
	.type	tcpip_init_done, @object
	.size	tcpip_init_done, 4
tcpip_init_done:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.tcpip_thread
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./include/aos/kernel.h"
	.file 5 "./kernel/protocols/net/port/include/arch/sys_arch.h"
	.file 6 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 7 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 8 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 9 "./kernel/protocols/net/include/lwip/memp.h"
	.file 10 "./kernel/protocols/net/include/lwip/netif.h"
	.file 11 "./kernel/protocols/net/include/lwip/tcpip.h"
	.file 12 "./kernel/protocols/net/include/lwip/priv/tcpip_priv.h"
	.file 13 "./include/aos/log.h"
	.file 14 "./kernel/protocols/net/include/lwip/sys.h"
	.file 15 "./kernel/protocols/net/include/lwip/timeouts.h"
	.file 16 "./kernel/protocols/net/include/lwip/init.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb70
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF148
	.byte	0xc
	.long	.LASF149
	.long	.LASF150
	.long	.Ldebug_ranges0+0
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
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x13
	.long	0x165
	.uleb128 0xc
	.string	"hdl"
	.byte	0x4
	.byte	0x14
	.long	0x79
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x4
	.byte	0x15
	.long	0x150
	.uleb128 0x7
	.long	.LASF38
	.byte	0x4
	.byte	0x18
	.long	0x165
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.byte	0x19
	.long	0x165
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.byte	0x1a
	.long	0x165
	.uleb128 0x5
	.byte	0x4
	.long	0x197
	.uleb128 0xd
	.long	0x1a2
	.uleb128 0xe
	.long	0x79
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF41
	.uleb128 0x7
	.long	.LASF42
	.byte	0x5
	.byte	0x2e
	.long	0x17b
	.uleb128 0x7
	.long	.LASF43
	.byte	0x5
	.byte	0x35
	.long	0x170
	.uleb128 0x7
	.long	.LASF44
	.byte	0x5
	.byte	0x49
	.long	0x186
	.uleb128 0xf
	.long	.LASF48
	.byte	0x4
	.byte	0x6
	.byte	0x35
	.long	0x1e3
	.uleb128 0x10
	.long	.LASF45
	.byte	0x6
	.byte	0x36
	.long	0xc7
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF46
	.byte	0x6
	.byte	0x49
	.long	0x1ca
	.uleb128 0x7
	.long	.LASF47
	.byte	0x7
	.byte	0xe1
	.long	0x1e3
	.uleb128 0xf
	.long	.LASF49
	.byte	0x10
	.byte	0x8
	.byte	0x9d
	.long	0x25a
	.uleb128 0x10
	.long	.LASF50
	.byte	0x8
	.byte	0x9f
	.long	0x25a
	.byte	0
	.uleb128 0x10
	.long	.LASF51
	.byte	0x8
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0x10
	.long	.LASF52
	.byte	0x8
	.byte	0xab
	.long	0xb1
	.byte	0x8
	.uleb128 0xc
	.string	"len"
	.byte	0x8
	.byte	0xae
	.long	0xb1
	.byte	0xa
	.uleb128 0x10
	.long	.LASF53
	.byte	0x8
	.byte	0xb1
	.long	0x9b
	.byte	0xc
	.uleb128 0x10
	.long	.LASF54
	.byte	0x8
	.byte	0xb4
	.long	0x9b
	.byte	0xd
	.uleb128 0xc
	.string	"ref"
	.byte	0x8
	.byte	0xc2
	.long	0xb1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1f9
	.uleb128 0x8
	.byte	0x4
	.long	0x2c
	.byte	0x9
	.byte	0x32
	.long	0x2c7
	.uleb128 0x9
	.long	.LASF55
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x1
	.uleb128 0x9
	.long	.LASF57
	.byte	0x2
	.uleb128 0x9
	.long	.LASF58
	.byte	0x3
	.uleb128 0x9
	.long	.LASF59
	.byte	0x4
	.uleb128 0x9
	.long	.LASF60
	.byte	0x5
	.uleb128 0x9
	.long	.LASF61
	.byte	0x6
	.uleb128 0x9
	.long	.LASF62
	.byte	0x7
	.uleb128 0x9
	.long	.LASF63
	.byte	0x8
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.uleb128 0x9
	.long	.LASF65
	.byte	0xa
	.uleb128 0x9
	.long	.LASF66
	.byte	0xb
	.uleb128 0x9
	.long	.LASF67
	.byte	0xc
	.uleb128 0x9
	.long	.LASF68
	.byte	0xd
	.uleb128 0x9
	.long	.LASF69
	.byte	0xe
	.byte	0
	.uleb128 0x11
	.long	.LASF73
	.byte	0x4
	.long	0x2c
	.byte	0xa
	.byte	0x6b
	.long	0x2ea
	.uleb128 0x9
	.long	.LASF70
	.byte	0
	.uleb128 0x9
	.long	.LASF71
	.byte	0x1
	.uleb128 0x9
	.long	.LASF72
	.byte	0x2
	.byte	0
	.uleb128 0x11
	.long	.LASF74
	.byte	0x4
	.long	0x2c
	.byte	0xa
	.byte	0x8f
	.long	0x307
	.uleb128 0x9
	.long	.LASF75
	.byte	0
	.uleb128 0x9
	.long	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x30d
	.uleb128 0xf
	.long	.LASF77
	.byte	0x54
	.byte	0xa
	.byte	0xe5
	.long	0x431
	.uleb128 0x10
	.long	.LASF50
	.byte	0xa
	.byte	0xe7
	.long	0x307
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0xa
	.byte	0xeb
	.long	0x1ee
	.byte	0x4
	.uleb128 0x10
	.long	.LASF79
	.byte	0xa
	.byte	0xec
	.long	0x1ee
	.byte	0x8
	.uleb128 0xc
	.string	"gw"
	.byte	0xa
	.byte	0xed
	.long	0x1ee
	.byte	0xc
	.uleb128 0x10
	.long	.LASF80
	.byte	0xa
	.byte	0xf8
	.long	0x431
	.byte	0x10
	.uleb128 0x10
	.long	.LASF81
	.byte	0xa
	.byte	0xfe
	.long	0x456
	.byte	0x14
	.uleb128 0x12
	.long	.LASF82
	.byte	0xa
	.value	0x103
	.long	0x48b
	.byte	0x18
	.uleb128 0x12
	.long	.LASF83
	.byte	0xa
	.value	0x10e
	.long	0x4b0
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF84
	.byte	0xa
	.value	0x11b
	.long	0x79
	.byte	0x20
	.uleb128 0x12
	.long	.LASF85
	.byte	0xa
	.value	0x11d
	.long	0x4f6
	.byte	0x24
	.uleb128 0x12
	.long	.LASF86
	.byte	0xa
	.value	0x125
	.long	0x9b
	.byte	0x2c
	.uleb128 0x12
	.long	.LASF87
	.byte	0xa
	.value	0x129
	.long	0x82
	.byte	0x30
	.uleb128 0x13
	.string	"mtu"
	.byte	0xa
	.value	0x12f
	.long	0xb1
	.byte	0x34
	.uleb128 0x12
	.long	.LASF88
	.byte	0xa
	.value	0x131
	.long	0x9b
	.byte	0x36
	.uleb128 0x12
	.long	.LASF89
	.byte	0xa
	.value	0x133
	.long	0x506
	.byte	0x37
	.uleb128 0x12
	.long	.LASF54
	.byte	0xa
	.value	0x135
	.long	0x9b
	.byte	0x3d
	.uleb128 0x12
	.long	.LASF90
	.byte	0xa
	.value	0x137
	.long	0x516
	.byte	0x3e
	.uleb128 0x13
	.string	"num"
	.byte	0xa
	.value	0x139
	.long	0x9b
	.byte	0x40
	.uleb128 0x12
	.long	.LASF91
	.byte	0xa
	.value	0x147
	.long	0x4cc
	.byte	0x44
	.uleb128 0x12
	.long	.LASF92
	.byte	0xa
	.value	0x153
	.long	0x25a
	.byte	0x48
	.uleb128 0x12
	.long	.LASF93
	.byte	0xa
	.value	0x154
	.long	0x25a
	.byte	0x4c
	.uleb128 0x12
	.long	.LASF94
	.byte	0xa
	.value	0x156
	.long	0xb1
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF95
	.byte	0xa
	.byte	0xa2
	.long	0x43c
	.uleb128 0x5
	.byte	0x4
	.long	0x442
	.uleb128 0x14
	.long	0xd2
	.long	0x456
	.uleb128 0xe
	.long	0x25a
	.uleb128 0xe
	.long	0x307
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0xa
	.byte	0xb1
	.long	0x461
	.uleb128 0x5
	.byte	0x4
	.long	0x467
	.uleb128 0x14
	.long	0xd2
	.long	0x480
	.uleb128 0xe
	.long	0x307
	.uleb128 0xe
	.long	0x25a
	.uleb128 0xe
	.long	0x480
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x486
	.uleb128 0x6
	.long	0x1e3
	.uleb128 0x7
	.long	.LASF97
	.byte	0xa
	.byte	0xc8
	.long	0x496
	.uleb128 0x5
	.byte	0x4
	.long	0x49c
	.uleb128 0x14
	.long	0xd2
	.long	0x4b0
	.uleb128 0xe
	.long	0x307
	.uleb128 0xe
	.long	0x25a
	.byte	0
	.uleb128 0x7
	.long	.LASF98
	.byte	0xa
	.byte	0xca
	.long	0x4bb
	.uleb128 0x5
	.byte	0x4
	.long	0x4c1
	.uleb128 0xd
	.long	0x4cc
	.uleb128 0xe
	.long	0x307
	.byte	0
	.uleb128 0x7
	.long	.LASF99
	.byte	0xa
	.byte	0xcd
	.long	0x4d7
	.uleb128 0x5
	.byte	0x4
	.long	0x4dd
	.uleb128 0x14
	.long	0xd2
	.long	0x4f6
	.uleb128 0xe
	.long	0x307
	.uleb128 0xe
	.long	0x480
	.uleb128 0xe
	.long	0x2ea
	.byte	0
	.uleb128 0x15
	.long	0x79
	.long	0x506
	.uleb128 0x16
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	0x9b
	.long	0x516
	.uleb128 0x16
	.long	0x72
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.long	0x7b
	.long	0x526
	.uleb128 0x16
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF100
	.byte	0xb
	.byte	0x44
	.long	0x191
	.uleb128 0x7
	.long	.LASF101
	.byte	0xb
	.byte	0x46
	.long	0x191
	.uleb128 0xf
	.long	.LASF102
	.byte	0x1
	.byte	0xc
	.byte	0x61
	.long	0x555
	.uleb128 0x10
	.long	.LASF103
	.byte	0xc
	.byte	0x69
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF104
	.byte	0xc
	.byte	0x6c
	.long	0x560
	.uleb128 0x5
	.byte	0x4
	.long	0x566
	.uleb128 0x14
	.long	0xd2
	.long	0x575
	.uleb128 0xe
	.long	0x575
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x53c
	.uleb128 0x11
	.long	.LASF105
	.byte	0x4
	.long	0x2c
	.byte	0xc
	.byte	0x6f
	.long	0x5aa
	.uleb128 0x9
	.long	.LASF106
	.byte	0
	.uleb128 0x9
	.long	.LASF107
	.byte	0x1
	.uleb128 0x9
	.long	.LASF108
	.byte	0x2
	.uleb128 0x9
	.long	.LASF109
	.byte	0x3
	.uleb128 0x9
	.long	.LASF110
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0x84
	.long	0x5cb
	.uleb128 0x10
	.long	.LASF111
	.byte	0xc
	.byte	0x85
	.long	0x531
	.byte	0
	.uleb128 0xc
	.string	"msg"
	.byte	0xc
	.byte	0x86
	.long	0x79
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0xc
	.byte	0xc
	.byte	0x88
	.long	0x5f8
	.uleb128 0x10
	.long	.LASF111
	.byte	0xc
	.byte	0x89
	.long	0x555
	.byte	0
	.uleb128 0xc
	.string	"arg"
	.byte	0xc
	.byte	0x8a
	.long	0x575
	.byte	0x4
	.uleb128 0xc
	.string	"sem"
	.byte	0xc
	.byte	0x8b
	.long	0x5f8
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1a9
	.uleb128 0xb
	.byte	0xc
	.byte	0xc
	.byte	0x8d
	.long	0x629
	.uleb128 0xc
	.string	"p"
	.byte	0xc
	.byte	0x8e
	.long	0x25a
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0xc
	.byte	0x8f
	.long	0x307
	.byte	0x4
	.uleb128 0x10
	.long	.LASF112
	.byte	0xc
	.byte	0x90
	.long	0x431
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0xc
	.byte	0x9a
	.long	0x64a
	.uleb128 0x10
	.long	.LASF111
	.byte	0xc
	.byte	0x9b
	.long	0x531
	.byte	0
	.uleb128 0xc
	.string	"ctx"
	.byte	0xc
	.byte	0x9c
	.long	0x79
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0xc
	.byte	0xc
	.byte	0x83
	.long	0x67e
	.uleb128 0x18
	.long	.LASF113
	.byte	0xc
	.byte	0x87
	.long	0x5aa
	.uleb128 0x18
	.long	.LASF114
	.byte	0xc
	.byte	0x8c
	.long	0x5cb
	.uleb128 0x19
	.string	"inp"
	.byte	0xc
	.byte	0x91
	.long	0x5fe
	.uleb128 0x19
	.string	"cb"
	.byte	0xc
	.byte	0x9d
	.long	0x629
	.byte	0
	.uleb128 0xf
	.long	.LASF115
	.byte	0x10
	.byte	0xc
	.byte	0x81
	.long	0x6a3
	.uleb128 0x10
	.long	.LASF53
	.byte	0xc
	.byte	0x82
	.long	0x57b
	.byte	0
	.uleb128 0xc
	.string	"msg"
	.byte	0xc
	.byte	0xa5
	.long	0x64a
	.byte	0x4
	.byte	0
	.uleb128 0x1a
	.long	.LASF151
	.byte	0x1
	.byte	0x57
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x702
	.uleb128 0x1b
	.string	"arg"
	.byte	0x1
	.byte	0x57
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x59
	.long	0x702
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1d
	.long	.LVL2
	.long	0xaea
	.uleb128 0x1d
	.long	.LVL3
	.long	0xaf5
	.uleb128 0x1d
	.long	.LVL4
	.long	0xb00
	.uleb128 0x1d
	.long	.LVL5
	.long	0xaea
	.uleb128 0x1d
	.long	.LVL8
	.long	0xb0b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x67e
	.uleb128 0x1e
	.long	.LASF152
	.byte	0x1
	.value	0x20e
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x74b
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x20e
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"q"
	.byte	0x1
	.value	0x210
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LVL12
	.long	0xb16
	.uleb128 0x22
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF116
	.byte	0x1
	.byte	0xd0
	.long	0xd2
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b7
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0xd0
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"inp"
	.byte	0x1
	.byte	0xd0
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x24
	.long	.LASF112
	.byte	0x1
	.byte	0xd0
	.long	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.string	"msg"
	.byte	0x1
	.byte	0xda
	.long	0x702
	.long	.LLST0
	.uleb128 0x1d
	.long	.LVL14
	.long	0xb22
	.uleb128 0x1d
	.long	.LVL17
	.long	0xb2d
	.uleb128 0x1d
	.long	.LVL18
	.long	0xb0b
	.byte	0
	.uleb128 0x23
	.long	.LASF117
	.byte	0x1
	.byte	0xfb
	.long	0xd2
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f4
	.uleb128 0x1b
	.string	"p"
	.byte	0x1
	.byte	0xfb
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1b
	.string	"inp"
	.byte	0x1
	.byte	0xfb
	.long	0x307
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LVL21
	.long	0x74b
	.byte	0
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x111
	.long	0xd2
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x870
	.uleb128 0x27
	.long	.LASF111
	.byte	0x1
	.value	0x111
	.long	0x531
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.value	0x111
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF119
	.byte	0x1
	.value	0x111
	.long	0x9b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.value	0x113
	.long	0x702
	.long	.LLST1
	.uleb128 0x1d
	.long	.LVL23
	.long	0xb22
	.uleb128 0x1d
	.long	.LVL26
	.long	0xb39
	.uleb128 0x1d
	.long	.LVL27
	.long	0xb2d
	.uleb128 0x1d
	.long	.LVL28
	.long	0xb0b
	.byte	0
	.uleb128 0x29
	.long	.LASF120
	.byte	0x1
	.value	0x170
	.long	0xd2
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c9
	.uleb128 0x1f
	.string	"fn"
	.byte	0x1
	.value	0x170
	.long	0x531
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF121
	.byte	0x1
	.value	0x170
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.string	"sem"
	.byte	0x1
	.value	0x170
	.long	0x5f8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.long	.LVL31
	.long	0xaea
	.uleb128 0x1d
	.long	.LVL33
	.long	0xaf5
	.byte	0
	.uleb128 0x29
	.long	.LASF122
	.byte	0x1
	.value	0x194
	.long	0xd2
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x923
	.uleb128 0x1f
	.string	"fn"
	.byte	0x1
	.value	0x194
	.long	0x555
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF123
	.byte	0x1
	.value	0x194
	.long	0x575
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"err"
	.byte	0x1
	.value	0x197
	.long	0xd2
	.long	.LLST2
	.uleb128 0x1d
	.long	.LVL35
	.long	0xaea
	.uleb128 0x1d
	.long	.LVL38
	.long	0xaf5
	.byte	0
	.uleb128 0x2a
	.long	.LASF153
	.uleb128 0x26
	.long	.LASF124
	.byte	0x1
	.value	0x1c6
	.long	0x978
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x978
	.uleb128 0x27
	.long	.LASF111
	.byte	0x1
	.value	0x1c6
	.long	0x531
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"ctx"
	.byte	0x1
	.value	0x1c6
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.string	"msg"
	.byte	0x1
	.value	0x1c8
	.long	0x702
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1d
	.long	.LVL40
	.long	0xb22
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x923
	.uleb128 0x2b
	.long	.LASF126
	.byte	0x1
	.value	0x1d8
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x9ad
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.value	0x1d8
	.long	0x978
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL42
	.long	0xb0b
	.byte	0
	.uleb128 0x26
	.long	.LASF125
	.byte	0x1
	.value	0x1e5
	.long	0xd2
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e0
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.value	0x1e5
	.long	0x978
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL44
	.long	0xb2d
	.byte	0
	.uleb128 0x2b
	.long	.LASF127
	.byte	0x1
	.value	0x1f5
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xa39
	.uleb128 0x27
	.long	.LASF128
	.byte	0x1
	.value	0x1f5
	.long	0x526
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"arg"
	.byte	0x1
	.value	0x1f5
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LVL46
	.long	0xb45
	.uleb128 0x1d
	.long	.LVL47
	.long	0xb50
	.uleb128 0x1d
	.long	.LVL48
	.long	0xb5c
	.uleb128 0x1d
	.long	.LVL49
	.long	0xb67
	.byte	0
	.uleb128 0x26
	.long	.LASF129
	.byte	0x1
	.value	0x21b
	.long	0xd2
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xa6a
	.uleb128 0x1f
	.string	"p"
	.byte	0x1
	.value	0x21b
	.long	0x25a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL51
	.long	0x7f4
	.byte	0
	.uleb128 0x26
	.long	.LASF130
	.byte	0x1
	.value	0x228
	.long	0xd2
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xa9b
	.uleb128 0x1f
	.string	"m"
	.byte	0x1
	.value	0x228
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.long	.LVL53
	.long	0x7f4
	.byte	0
	.uleb128 0x2c
	.long	.LASF131
	.byte	0x1
	.byte	0x3b
	.long	0x526
	.uleb128 0x5
	.byte	0x3
	.long	tcpip_init_done
	.uleb128 0x2c
	.long	.LASF132
	.byte	0x1
	.byte	0x3c
	.long	0x79
	.uleb128 0x5
	.byte	0x3
	.long	tcpip_init_done_arg
	.uleb128 0x2c
	.long	.LASF133
	.byte	0x1
	.byte	0x3d
	.long	0x1bf
	.uleb128 0x5
	.byte	0x3
	.long	mbox
	.uleb128 0x2d
	.long	.LASF134
	.byte	0xd
	.byte	0x17
	.long	0x2c
	.uleb128 0x2e
	.long	.LASF135
	.byte	0x1
	.byte	0x41
	.long	0x1b4
	.uleb128 0x5
	.byte	0x3
	.long	lock_tcpip_core
	.uleb128 0x2f
	.long	.LASF136
	.long	.LASF136
	.byte	0xe
	.byte	0xaf
	.uleb128 0x2f
	.long	.LASF137
	.long	.LASF137
	.byte	0xe
	.byte	0xb5
	.uleb128 0x2f
	.long	.LASF138
	.long	.LASF138
	.byte	0xf
	.byte	0x6f
	.uleb128 0x2f
	.long	.LASF139
	.long	.LASF139
	.byte	0x9
	.byte	0x93
	.uleb128 0x30
	.long	.LASF140
	.long	.LASF140
	.byte	0x8
	.value	0x109
	.uleb128 0x2f
	.long	.LASF141
	.long	.LASF141
	.byte	0x9
	.byte	0x91
	.uleb128 0x30
	.long	.LASF142
	.long	.LASF142
	.byte	0xe
	.value	0x128
	.uleb128 0x30
	.long	.LASF143
	.long	.LASF143
	.byte	0xe
	.value	0x121
	.uleb128 0x2f
	.long	.LASF144
	.long	.LASF144
	.byte	0x10
	.byte	0x5e
	.uleb128 0x30
	.long	.LASF145
	.long	.LASF145
	.byte	0xe
	.value	0x119
	.uleb128 0x2f
	.long	.LASF146
	.long	.LASF146
	.byte	0xe
	.byte	0xa9
	.uleb128 0x30
	.long	.LASF147
	.long	.LASF147
	.byte	0xe
	.value	0x171
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
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x87
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL37
	.long	.LVL38-1
	.value	0x1
	.byte	0x50
	.long	.LVL38-1
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB27
	.long	.LFE27-.LFB27
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	.LFB27
	.long	.LFE27
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
	.long	.LFB26
	.long	.LFE26
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"sys_mbox_t"
.LASF58:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF80:
	.string	"input"
.LASF140:
	.string	"pbuf_free"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF54:
	.string	"flags"
.LASF35:
	.string	"ERR_CLSD"
.LASF28:
	.string	"ERR_USE"
.LASF36:
	.string	"ERR_ARG"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"next"
.LASF147:
	.string	"sys_thread_new"
.LASF19:
	.string	"err_t"
.LASF82:
	.string	"linkoutput"
.LASF122:
	.string	"tcpip_api_call"
.LASF16:
	.string	"u16_t"
.LASF103:
	.string	"dummy"
.LASF137:
	.string	"sys_mutex_unlock"
.LASF149:
	.string	"src/tcpip.c"
.LASF129:
	.string	"pbuf_free_callback"
.LASF96:
	.string	"netif_output_fn"
.LASF68:
	.string	"MEMP_PBUF_POOL"
.LASF34:
	.string	"ERR_RST"
.LASF94:
	.string	"loop_cnt_current"
.LASF146:
	.string	"sys_mutex_new"
.LASF29:
	.string	"ERR_ALREADY"
.LASF38:
	.string	"aos_mutex_t"
.LASF95:
	.string	"netif_input_fn"
.LASF61:
	.string	"MEMP_NETCONN"
.LASF64:
	.string	"MEMP_IGMP_GROUP"
.LASF62:
	.string	"MEMP_TCPIP_MSG_API"
.LASF12:
	.string	"float"
.LASF108:
	.string	"TCPIP_MSG_INPKT"
.LASF89:
	.string	"hwaddr"
.LASF134:
	.string	"aos_log_level"
.LASF9:
	.string	"long long unsigned int"
.LASF135:
	.string	"lock_tcpip_core"
.LASF46:
	.string	"ip4_addr_t"
.LASF88:
	.string	"hwaddr_len"
.LASF26:
	.string	"ERR_VAL"
.LASF150:
	.string	"/home/stone/Documents/pca"
.LASF127:
	.string	"tcpip_init"
.LASF63:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF139:
	.string	"memp_free"
.LASF100:
	.string	"tcpip_init_done_fn"
.LASF136:
	.string	"sys_mutex_lock"
.LASF52:
	.string	"tot_len"
.LASF51:
	.string	"payload"
.LASF81:
	.string	"output"
.LASF93:
	.string	"loop_last"
.LASF41:
	.string	"_Bool"
.LASF123:
	.string	"call"
.LASF112:
	.string	"input_fn"
.LASF151:
	.string	"tcpip_thread"
.LASF42:
	.string	"sys_sem_t"
.LASF69:
	.string	"MEMP_MAX"
.LASF132:
	.string	"tcpip_init_done_arg"
.LASF15:
	.string	"s8_t"
.LASF40:
	.string	"aos_queue_t"
.LASF114:
	.string	"api_call"
.LASF102:
	.string	"tcpip_api_call_data"
.LASF27:
	.string	"ERR_WOULDBLOCK"
.LASF23:
	.string	"ERR_TIMEOUT"
.LASF67:
	.string	"MEMP_PBUF"
.LASF37:
	.string	"aos_hdl_t"
.LASF85:
	.string	"client_data"
.LASF11:
	.string	"char"
.LASF130:
	.string	"mem_free_callback"
.LASF91:
	.string	"igmp_mac_filter"
.LASF76:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF87:
	.string	"hostname"
.LASF109:
	.string	"TCPIP_MSG_CALLBACK"
.LASF113:
	.string	"api_msg"
.LASF141:
	.string	"memp_malloc"
.LASF105:
	.string	"tcpip_msg_type"
.LASF60:
	.string	"MEMP_NETBUF"
.LASF79:
	.string	"netmask"
.LASF1:
	.string	"long long int"
.LASF43:
	.string	"sys_mutex_t"
.LASF32:
	.string	"ERR_IF"
.LASF83:
	.string	"status_callback"
.LASF117:
	.string	"tcpip_input"
.LASF57:
	.string	"MEMP_TCP_PCB"
.LASF14:
	.string	"u8_t"
.LASF39:
	.string	"aos_sem_t"
.LASF125:
	.string	"tcpip_trycallback"
.LASF128:
	.string	"initfunc"
.LASF75:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF152:
	.string	"pbuf_free_int"
.LASF126:
	.string	"tcpip_callbackmsg_delete"
.LASF142:
	.string	"sys_mbox_trypost"
.LASF2:
	.string	"long double"
.LASF22:
	.string	"ERR_BUF"
.LASF18:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"long int"
.LASF121:
	.string	"apimsg"
.LASF124:
	.string	"tcpip_callbackmsg_new"
.LASF65:
	.string	"MEMP_SYS_TIMEOUT"
.LASF101:
	.string	"tcpip_callback_fn"
.LASF106:
	.string	"TCPIP_MSG_API"
.LASF92:
	.string	"loop_first"
.LASF56:
	.string	"MEMP_UDP_PCB"
.LASF144:
	.string	"lwip_init"
.LASF133:
	.string	"mbox"
.LASF25:
	.string	"ERR_INPROGRESS"
.LASF119:
	.string	"block"
.LASF48:
	.string	"ip4_addr"
.LASF118:
	.string	"tcpip_callback_with_block"
.LASF30:
	.string	"ERR_ISCONN"
.LASF90:
	.string	"name"
.LASF97:
	.string	"netif_linkoutput_fn"
.LASF86:
	.string	"rs_count"
.LASF55:
	.string	"MEMP_RAW_PCB"
.LASF10:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF143:
	.string	"sys_mbox_post"
.LASF74:
	.string	"netif_mac_filter_action"
.LASF17:
	.string	"s16_t"
.LASF110:
	.string	"TCPIP_MSG_CALLBACK_STATIC"
.LASF107:
	.string	"TCPIP_MSG_API_CALL"
.LASF53:
	.string	"type"
.LASF4:
	.string	"unsigned char"
.LASF73:
	.string	"lwip_internal_netif_client_data_index"
.LASF111:
	.string	"function"
.LASF148:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF59:
	.string	"MEMP_TCP_SEG"
.LASF98:
	.string	"netif_status_callback_fn"
.LASF49:
	.string	"pbuf"
.LASF116:
	.string	"tcpip_inpkt"
.LASF45:
	.string	"addr"
.LASF84:
	.string	"state"
.LASF72:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF120:
	.string	"tcpip_send_msg_wait_sem"
.LASF77:
	.string	"netif"
.LASF131:
	.string	"tcpip_init_done"
.LASF33:
	.string	"ERR_ABRT"
.LASF145:
	.string	"sys_mbox_new"
.LASF99:
	.string	"netif_igmp_mac_filter_fn"
.LASF20:
	.string	"ERR_OK"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF3:
	.string	"signed char"
.LASF6:
	.string	"short unsigned int"
.LASF138:
	.string	"sys_timeouts_mbox_fetch"
.LASF31:
	.string	"ERR_CONN"
.LASF153:
	.string	"tcpip_callback_msg"
.LASF24:
	.string	"ERR_RTE"
.LASF13:
	.string	"double"
.LASF47:
	.string	"ip_addr_t"
.LASF66:
	.string	"MEMP_NETDB"
.LASF115:
	.string	"tcpip_msg"
.LASF104:
	.string	"tcpip_api_call_fn"
.LASF21:
	.string	"ERR_MEM"
.LASF78:
	.string	"ip_addr"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
