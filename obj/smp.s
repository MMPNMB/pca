	.file	"smp.c"
	.text
.Ltext0:
	.section	.text.unlikely.sys_memcpy_swap,"ax",@progbits
.LCOLDB0:
	.section	.text.sys_memcpy_swap,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sys_memcpy_swap
.Ltext_cold0:
	.section	.text.sys_memcpy_swap
	.type	sys_memcpy_swap, @function
sys_memcpy_swap:
.LFB54:
	.file 1 "src/smp.c"
	.loc 1 1008 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	movl	%ecx, %edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 1011 0
	leal	-1(%edx,%ecx), %ebx
.LVL1:
	.loc 1 1012 0
	xorl	%edx, %edx
.LVL2:
.L2:
	.loc 1 1012 0 is_stmt 0 discriminator 1
	cmpl	%edx, %edi
	je	.L6
.LVL3:
	.loc 1 1013 0 is_stmt 1 discriminator 2
	movl	%edx, %esi
	negl	%esi
	movb	(%ebx,%esi), %cl
	movb	%cl, (%eax,%edx)
	incl	%edx
.LVL4:
	jmp	.L2
.L6:
	.loc 1 1015 0
	popl	%ebx
	.cfi_restore 3
.LVL5:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL6:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE54:
	.size	sys_memcpy_swap, .-sys_memcpy_swap
	.section	.text.unlikely.sys_memcpy_swap
.LCOLDE0:
	.section	.text.sys_memcpy_swap
.LHOTE0:
	.section	.text.unlikely.get_io_capa,"ax",@progbits
.LCOLDB1:
	.section	.text.get_io_capa,"ax",@progbits
.LHOTB1:
	.type	get_io_capa, @function
get_io_capa:
.LFB78:
	.loc 1 3728 0
	.cfi_startproc
	.loc 1 3729 0
	movl	bt_auth, %edx
	.loc 1 3728 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3746 0
	movb	$3, %al
	.loc 1 3728 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3729 0
	testl	%edx, %edx
	je	.L8
	.loc 1 3732 0
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L9
	.loc 1 3732 0 is_stmt 0 discriminator 1
	cmpl	$0, 4(%edx)
	je	.L9
	.loc 1 3732 0 discriminator 2
	cmpl	$0, 8(%edx)
	.loc 1 3734 0 is_stmt 1 discriminator 2
	movb	$4, %al
	.loc 1 3732 0 discriminator 2
	jne	.L8
	.loc 1 3733 0
	cmpb	$0, sc_supported
	je	.L8
.L9:
	.loc 1 3736 0
	cmpb	$0, sc_supported
	je	.L10
	testl	%ecx, %ecx
	je	.L10
	.loc 1 3736 0 is_stmt 0 discriminator 2
	cmpl	$0, 8(%edx)
	.loc 1 3738 0 is_stmt 1 discriminator 2
	movb	$1, %al
	.loc 1 3736 0 discriminator 2
	jne	.L8
.L10:
	.loc 1 3740 0
	cmpl	$0, 4(%edx)
	.loc 1 3741 0
	movb	$2, %al
	.loc 1 3740 0
	jne	.L8
	.loc 1 3744 0
	cmpl	$1, %ecx
	sbbl	%eax, %eax
	andl	$3, %eax
.L8:
	.loc 1 3747 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE78:
	.size	get_io_capa, .-get_io_capa
	.section	.text.unlikely.get_io_capa
.LCOLDE1:
	.section	.text.get_io_capa
.LHOTE1:
	.section	.text.unlikely.smp_security_request,"ax",@progbits
.LCOLDB2:
	.section	.text.smp_security_request,"ax",@progbits
.LHOTB2:
	.type	smp_security_request, @function
smp_security_request:
.LFB129:
	.loc 1 4864 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4866 0
	movb	$7, %al
	.loc 1 4864 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4866 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE129:
	.size	smp_security_request, .-smp_security_request
	.section	.text.unlikely.smp_security_request
.LCOLDE2:
	.section	.text.smp_security_request
.LHOTE2:
	.section	.text.unlikely.bt_smp_accept,"ax",@progbits
.LCOLDB3:
	.section	.text.bt_smp_accept,"ax",@progbits
.LHOTB3:
	.type	bt_smp_accept, @function
bt_smp_accept:
.LFB149:
	.loc 1 5400 0
	.cfi_startproc
.LVL8:
.LBB32:
	.loc 1 5411 0
	cmpl	$0, bt_smp_pool
	jne	.L29
.LBE32:
	.loc 1 5400 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB33:
	.loc 1 5414 0
	movl	$ops.5768, bt_smp_pool+4
.LBE33:
	.loc 1 5400 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LBB34:
	.loc 1 5415 0
	movl	12(%ebp), %eax
	movl	$bt_smp_pool, (%eax)
	.loc 1 5416 0
	xorl	%eax, %eax
.LBE34:
	.loc 1 5420 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.L29:
	movl	$-12, %eax
	ret
	.cfi_endproc
.LFE149:
	.size	bt_smp_accept, .-bt_smp_accept
	.section	.text.unlikely.bt_smp_accept
.LCOLDE3:
	.section	.text.bt_smp_accept
.LHOTE3:
	.section	.text.unlikely.smp_chan_get,"ax",@progbits
.LCOLDB4:
	.section	.text.smp_chan_get,"ax",@progbits
.LHOTB4:
	.type	smp_chan_get, @function
smp_chan_get:
.LFB114:
	.loc 1 4441 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 4443 0
	pushl	$6
	pushl	%eax
	call	bt_l2cap_le_lookup_rx_cid
.LVL10:
	.loc 1 4457 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE114:
	.size	smp_chan_get, .-smp_chan_get
	.section	.text.unlikely.smp_chan_get
.LCOLDE4:
	.section	.text.smp_chan_get
.LHOTE4:
	.section	.text.unlikely.atomic_test_bit,"ax",@progbits
.LCOLDB5:
	.section	.text.atomic_test_bit,"ax",@progbits
.LHOTB5:
	.type	atomic_test_bit, @function
atomic_test_bit:
.LFB37:
	.loc 1 849 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%edx, %ebx
	.loc 1 850 0
	shrl	$5, %edx
.LVL12:
	leal	(%eax,%edx,4), %eax
.LVL13:
	.loc 1 849 0
	subl	$16, %esp
	.loc 1 850 0
	pushl	%eax
	call	atomic_get
.LVL14:
	.loc 1 851 0
	movl	%ebx, %ecx
	.loc 1 852 0
	movl	-4(%ebp), %ebx
.LVL15:
	.loc 1 851 0
	sarl	%cl, %eax
.LVL16:
	.loc 1 852 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 851 0
	andl	$1, %eax
	.loc 1 852 0
	ret
	.cfi_endproc
.LFE37:
	.size	atomic_test_bit, .-atomic_test_bit
	.section	.text.unlikely.atomic_test_bit
.LCOLDE5:
	.section	.text.atomic_test_bit
.LHOTE5:
	.section	.text.unlikely.smp_create_pdu,"ax",@progbits
.LCOLDB6:
	.section	.text.smp_create_pdu,"ax",@progbits
.LHOTB6:
	.type	smp_create_pdu, @function
smp_create_pdu:
.LFB80:
	.loc 1 3763 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 3, -12
	.loc 1 3763 0
	movl	%edx, -12(%ebp)
	.loc 1 3766 0
	pushl	$0
	pushl	$0
	call	bt_l2cap_create_pdu
.LVL18:
	movl	%eax, %ebx
.LVL19:
	.loc 1 3769 0
	popl	%eax
.LVL20:
	leal	8(%ebx), %eax
	popl	%edx
	pushl	$1
	pushl	%eax
	call	net_buf_simple_add
.LVL21:
	.loc 1 3770 0
	movl	-12(%ebp), %edx
	movb	%dl, (%eax)
	.loc 1 3772 0
	movl	%ebx, %eax
.LVL22:
	movl	-4(%ebp), %ebx
.LVL23:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	smp_create_pdu, .-smp_create_pdu
	.section	.text.unlikely.smp_create_pdu
.LCOLDE6:
	.section	.text.smp_create_pdu
.LHOTE6:
	.section	.text.unlikely.atomic_set_bit,"ax",@progbits
.LCOLDB7:
	.section	.text.atomic_set_bit,"ax",@progbits
.LHOTB7:
	.type	atomic_set_bit, @function
atomic_set_bit:
.LFB41:
	.loc 1 873 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 875 0
	movl	%edx, %ecx
	shrl	$5, %edx
.LVL25:
	leal	(%eax,%edx,4), %eax
.LVL26:
	.loc 1 873 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 875 0
	movl	$1, %ebx
	sall	%cl, %ebx
	.loc 1 873 0
	subl	$12, %esp
	.loc 1 875 0
	pushl	%ebx
	pushl	%eax
	call	atomic_or
.LVL27:
	.loc 1 876 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	atomic_set_bit, .-atomic_set_bit
	.section	.text.unlikely.atomic_set_bit
.LCOLDE7:
	.section	.text.atomic_set_bit
.LHOTE7:
	.section	.text.unlikely.atomic_test_and_clear_bit,"ax",@progbits
.LCOLDB8:
	.section	.text.atomic_test_and_clear_bit,"ax",@progbits
.LHOTB8:
	.type	atomic_test_and_clear_bit, @function
atomic_test_and_clear_bit:
.LFB38:
	.loc 1 854 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 855 0
	movl	%edx, %ecx
	.loc 1 857 0
	shrl	$5, %edx
.LVL29:
	leal	(%eax,%edx,4), %eax
.LVL30:
	.loc 1 854 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 855 0
	movl	$1, %ebx
	sall	%cl, %ebx
.LVL31:
	.loc 1 857 0
	movl	%ebx, %ecx
.LVL32:
	.loc 1 854 0
	subl	$12, %esp
	.loc 1 857 0
	notl	%ecx
	pushl	%ecx
	pushl	%eax
	call	atomic_and
.LVL33:
	.loc 1 858 0
	addl	$16, %esp
	testl	%eax, %ebx
	.loc 1 859 0
	movl	-4(%ebp), %ebx
.LVL34:
	.loc 1 858 0
	setne	%al
.LVL35:
	.loc 1 859 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 858 0
	movzbl	%al, %eax
	.loc 1 859 0
	ret
	.cfi_endproc
.LFE38:
	.size	atomic_test_and_clear_bit, .-atomic_test_and_clear_bit
	.section	.text.unlikely.atomic_test_and_clear_bit
.LCOLDE8:
	.section	.text.atomic_test_and_clear_bit
.LHOTE8:
	.section	.text.unlikely.smp_send,"ax",@progbits
.LCOLDB9:
	.section	.text.smp_send,"ax",@progbits
.LHOTB9:
	.type	smp_send, @function
smp_send:
.LFB91:
	.loc 1 3983 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 3984 0
	pushl	%ecx
	pushl	%edx
	.loc 1 3983 0
	movl	%eax, %ebx
	.loc 1 3984 0
	pushl	$6
	pushl	(%eax)
	.loc 1 3985 0
	addl	$340, %ebx
	.loc 1 3984 0
	call	bt_l2cap_send_cb
.LVL37:
	.loc 1 3985 0
	popl	%eax
	popl	%edx
	pushl	$30000
	pushl	%ebx
	call	k_delayed_work_submit
.LVL38:
	.loc 1 3986 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
.LVL39:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE91:
	.size	smp_send, .-smp_send
	.section	.text.unlikely.smp_send
.LCOLDE9:
	.section	.text.smp_send
.LHOTE9:
	.section	.text.unlikely.send_pairing_rsp,"ax",@progbits
.LCOLDB10:
	.section	.text.send_pairing_rsp,"ax",@progbits
.LHOTB10:
	.type	send_pairing_rsp, @function
send_pairing_rsp:
.LFB100:
	.loc 1 4151 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LVL41:
	.loc 1 4155 0
	movl	$6, %ecx
	movl	$2, %edx
	.loc 1 4151 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4151 0
	movl	%eax, %ebx
	.loc 1 4155 0
	movl	(%eax), %eax
.LVL42:
	call	smp_create_pdu
.LVL43:
	.loc 1 4156 0
	testl	%eax, %eax
	je	.L46
	movl	%eax, %esi
.LVL44:
	.loc 1 4159 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$6
	pushl	%eax
	call	net_buf_simple_add
.LVL45:
	.loc 1 4160 0
	movl	133(%ebx), %edx
	.loc 1 4161 0
	xorl	%ecx, %ecx
	.loc 1 4160 0
	movl	%edx, (%eax)
	movw	137(%ebx), %dx
	movw	%dx, 4(%eax)
	.loc 1 4161 0
	movl	%ebx, %eax
.LVL46:
	movl	%esi, %edx
	call	smp_send
.LVL47:
	.loc 1 4164 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L45
.LVL48:
.L46:
	.loc 1 4157 0
	movb	$8, %al
.LVL49:
.L45:
	.loc 1 4165 0
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
.LFE100:
	.size	send_pairing_rsp, .-send_pairing_rsp
	.section	.text.unlikely.send_pairing_rsp
.LCOLDE10:
	.section	.text.send_pairing_rsp
.LHOTE10:
	.section	.text.unlikely.sc_send_public_key,"ax",@progbits
.LCOLDB11:
	.section	.text.sc_send_public_key,"ax",@progbits
.LHOTB11:
	.type	sc_send_public_key, @function
sc_send_public_key:
.LFB117:
	.loc 1 4552 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4555 0
	movl	$64, %ecx
	movl	$12, %edx
	.loc 1 4552 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4552 0
	movl	%eax, -28(%ebp)
	.loc 1 4555 0
	movl	(%eax), %eax
.LVL52:
	call	smp_create_pdu
.LVL53:
	.loc 1 4557 0
	testl	%eax, %eax
	je	.L50
	movl	%eax, %ebx
.LVL54:
	.loc 1 4560 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$64
	.loc 1 4561 0
	movl	$sc_public_key, %esi
	.loc 1 4560 0
	pushl	%eax
	call	net_buf_simple_add
.LVL55:
	.loc 1 4561 0
	movl	$8, %ecx
	movl	%eax, %edi
	.loc 1 4562 0
	addl	$32, %eax
.LVL56:
	.loc 1 4561 0
	rep movsl
.LVL57:
	.loc 1 4562 0
	movl	%eax, %edi
	movl	$8, %ecx
	.loc 1 4563 0
	movl	-28(%ebp), %eax
.LVL58:
	movl	%ebx, %edx
	.loc 1 4562 0
	rep movsl
.LVL59:
	.loc 1 4563 0
	call	smp_send
.LVL60:
	.loc 1 4569 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L49
.LVL61:
.L50:
	.loc 1 4558 0
	movb	$8, %al
.LVL62:
.L49:
	.loc 1 4570 0
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
.LVL63:
	ret
	.cfi_endproc
.LFE117:
	.size	sc_send_public_key, .-sc_send_public_key
	.section	.text.unlikely.sc_send_public_key
.LCOLDE11:
	.section	.text.sc_send_public_key
.LHOTE11:
	.section	.text.unlikely.smp_send_pairing_random,"ax",@progbits
.LCOLDB12:
	.section	.text.smp_send_pairing_random,"ax",@progbits
.LHOTB12:
	.type	smp_send_pairing_random, @function
smp_send_pairing_random:
.LFB93:
	.loc 1 4003 0
	.cfi_startproc
.LVL64:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LVL65:
	.loc 1 4007 0
	movl	$16, %ecx
	movl	$4, %edx
	.loc 1 4003 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	subl	$28, %esp
	.loc 1 4007 0
	movl	(%eax), %eax
.LVL66:
	call	smp_create_pdu
.LVL67:
	.loc 1 4008 0
	testl	%eax, %eax
	je	.L54
	movl	%eax, %esi
.LVL68:
	.loc 1 4011 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$16
	pushl	%eax
	call	net_buf_simple_add
.LVL69:
	.loc 1 4012 0
	movl	167(%ebx), %edx
	movl	159(%ebx), %edi
	movl	163(%ebx), %ecx
	movl	%edx, -28(%ebp)
	movl	155(%ebx), %edx
	movl	%edi, 4(%eax)
	movl	-28(%ebp), %edi
	movl	%ecx, 8(%eax)
	.loc 1 4013 0
	xorl	%ecx, %ecx
	.loc 1 4012 0
	movl	%edx, (%eax)
	.loc 1 4013 0
	movl	%esi, %edx
	.loc 1 4012 0
	movl	%edi, 12(%eax)
	.loc 1 4013 0
	movl	%ebx, %eax
.LVL70:
	call	smp_send
.LVL71:
	.loc 1 4016 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L53
.LVL72:
.L54:
	.loc 1 4009 0
	movb	$8, %al
.LVL73:
.L53:
	.loc 1 4017 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL74:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE93:
	.size	smp_send_pairing_random, .-smp_send_pairing_random
	.section	.text.unlikely.smp_send_pairing_random
.LCOLDE12:
	.section	.text.smp_send_pairing_random
.LHOTE12:
	.section	.text.unlikely.bt_smp_aes_cmac,"ax",@progbits
.LCOLDB13:
	.section	.text.bt_smp_aes_cmac,"ax",@progbits
.LHOTB13:
	.type	bt_smp_aes_cmac, @function
bt_smp_aes_cmac:
.LFB81:
	.loc 1 3775 0
	.cfi_startproc
.LVL75:
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
	movl	%edx, %edi
	.loc 1 3778 0
	leal	-288(%ebp), %ebx
	.loc 1 3775 0
	subl	$304, %esp
	.loc 1 3775 0
	movl	%ecx, -300(%ebp)
	movl	8(%ebp), %esi
	movl	%gs:20, %edx
	movl	%edx, -28(%ebp)
	xorl	%edx, %edx
.LVL76:
	.loc 1 3778 0
	leal	-204(%ebp), %edx
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	call	tc_cmac_setup
.LVL77:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-300(%ebp), %ecx
	jne	.L57
.L59:
	.loc 1 3779 0
	movl	$-5, %eax
	jmp	.L58
.L57:
	.loc 1 3781 0
	pushl	%edx
	pushl	%ecx
	pushl	%edi
	pushl	%ebx
	call	tc_cmac_update
.LVL78:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L59
	.loc 1 3784 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	tc_cmac_final
.LVL79:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L59
	.loc 1 3787 0
	xorl	%eax, %eax
.L58:
	.loc 1 3788 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L60
	call	__stack_chk_fail
.LVL80:
.L60:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL81:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	bt_smp_aes_cmac, .-bt_smp_aes_cmac
	.section	.text.unlikely.bt_smp_aes_cmac
.LCOLDE13:
	.section	.text.bt_smp_aes_cmac
.LHOTE13:
	.section	.text.unlikely.smp_reset,"ax",@progbits
.LCOLDB14:
	.section	.text.smp_reset,"ax",@progbits
.LHOTB14:
	.type	smp_reset, @function
smp_reset:
.LFB88:
	.loc 1 3941 0
	.cfi_startproc
.LVL82:
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
	movl	%eax, %ebx
	.loc 1 3943 0
	addl	$340, %eax
.LVL83:
	.loc 1 3945 0
	leal	116(%ebx), %edi
	.loc 1 3946 0
	addl	$120, %ebx
.LVL84:
	.loc 1 3941 0
	subl	$24, %esp
	.loc 1 3942 0
	movl	-340(%eax), %esi
.LVL85:
	.loc 1 3943 0
	pushl	%eax
	call	k_delayed_work_cancel
.LVL86:
	.loc 1 3944 0
	movb	$0, 4(%ebx)
	.loc 1 3945 0
	popl	%eax
	popl	%edx
	pushl	$0
	pushl	%edi
	call	atomic_set
.LVL87:
	.loc 1 3946 0
	popl	%ecx
	popl	%eax
	pushl	$0
	pushl	%ebx
	call	atomic_set
.LVL88:
	.loc 1 3947 0
	movb	8(%esi), %al
	addl	$16, %esp
	cmpb	%al, 9(%esi)
	je	.L69
	.loc 1 3948 0
	movb	%al, 9(%esi)
.L69:
	.loc 1 3958 0
	leal	-12(%ebp), %esp
	.loc 1 3956 0
	movl	%edi, %eax
	movl	$1, %edx
	.loc 1 3958 0
	popl	%ebx
	.cfi_restore 3
.LVL89:
	popl	%esi
	.cfi_restore 6
.LVL90:
	popl	%edi
	.cfi_restore 7
.LVL91:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3956 0
	jmp	atomic_set_bit
.LVL92:
	.cfi_endproc
.LFE88:
	.size	smp_reset, .-smp_reset
	.section	.text.unlikely.smp_reset
.LCOLDE14:
	.section	.text.smp_reset
.LHOTE14:
	.section	.text.unlikely.smp_pairing_failed,"ax",@progbits
.LCOLDB15:
	.section	.text.smp_pairing_failed,"ax",@progbits
.LHOTB15:
	.type	smp_pairing_failed, @function
smp_pairing_failed:
.LFB125:
	.loc 1 4776 0
	.cfi_startproc
.LVL93:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 4776 0
	movl	8(%ebp), %ebx
.LVL94:
	.loc 1 4781 0
	movb	124(%ebx), %al
	decl	%eax
	cmpb	$2, %al
	ja	.L72
	.loc 1 4785 0
	movl	bt_auth, %eax
	subl	$12, %esp
	pushl	(%ebx)
.LVL95:
	call	*12(%eax)
.LVL96:
	.loc 1 4786 0
	addl	$16, %esp
.L72:
	.loc 1 4790 0
	leal	120(%ebx), %eax
	movl	$2, %edx
	call	atomic_test_bit
.LVL97:
	testl	%eax, %eax
	je	.L74
	.loc 1 4791 0 discriminator 1
	movl	(%ebx), %eax
	movl	104(%eax), %eax
	.loc 1 4790 0 discriminator 1
	testl	%eax, %eax
	je	.L74
	.loc 1 4792 0
	subl	$12, %esp
	pushl	%eax
	call	bt_keys_clear
.LVL98:
	addl	$16, %esp
.L74:
.LVL99:
.LBB35:
.LBB36:
	.loc 1 3962 0
	movl	%ebx, %eax
	call	smp_reset
.LVL100:
.LBE36:
.LBE35:
	.loc 1 4796 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE125:
	.size	smp_pairing_failed, .-smp_pairing_failed
	.section	.text.unlikely.smp_pairing_failed
.LCOLDE15:
	.section	.text.smp_pairing_failed
.LHOTE15:
	.section	.text.unlikely.bt_smp_disconnected,"ax",@progbits
.LCOLDB16:
	.section	.text.bt_smp_disconnected,"ax",@progbits
.LHOTB16:
	.type	bt_smp_disconnected, @function
bt_smp_disconnected:
.LFB138:
	.loc 1 5133 0
	.cfi_startproc
.LVL101:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5133 0
	movl	8(%ebp), %ebx
.LVL102:
	.loc 1 5141 0
	movl	(%ebx), %eax
	movl	104(%eax), %esi
.LVL103:
	.loc 1 5143 0
	leal	340(%ebx), %eax
	pushl	%eax
	call	k_delayed_work_cancel
.LVL104:
	.loc 1 5144 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L84
	.loc 1 5145 0
	cmpw	$0, 12(%esi)
	jne	.L85
.L86:
	.loc 1 5147 0
	subl	$12, %esp
	pushl	%esi
	call	bt_keys_clear
.LVL105:
	addl	$16, %esp
	jmp	.L84
.L85:
	.loc 1 5146 0 discriminator 1
	leal	8(%esi), %eax
	movl	$1, %edx
	call	atomic_test_bit
.LVL106:
	.loc 1 5145 0 discriminator 1
	testl	%eax, %eax
	jne	.L86
.L84:
	.loc 1 5150 0
	movl	%ebx, %edi
	movl	$94, %ecx
	xorl	%eax, %eax
	rep stosl
	.loc 1 5151 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL107:
	popl	%esi
	.cfi_restore 6
.LVL108:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE138:
	.size	bt_smp_disconnected, .-bt_smp_disconnected
	.section	.text.unlikely.bt_smp_disconnected
.LCOLDE16:
	.section	.text.bt_smp_disconnected
.LHOTE16:
	.section	.text.unlikely.smp_timeout,"ax",@progbits
.LCOLDB17:
	.section	.text.smp_timeout,"ax",@progbits
.LHOTB17:
	.type	smp_timeout, @function
smp_timeout:
.LFB90:
	.loc 1 3965 0
	.cfi_startproc
.LVL109:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3974 0
	movl	$2, %edx
	.loc 1 3965 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3965 0
	movl	8(%ebp), %ebx
	.loc 1 3974 0
	leal	-220(%ebx), %esi
	.loc 1 3966 0
	leal	-340(%ebx), %edi
.LVL110:
	.loc 1 3974 0
	movl	%esi, %eax
	call	atomic_test_bit
.LVL111:
	testl	%eax, %eax
	je	.L90
	.loc 1 3975 0 discriminator 1
	movl	-340(%ebx), %eax
	movl	104(%eax), %eax
	.loc 1 3974 0 discriminator 1
	testl	%eax, %eax
	je	.L90
	.loc 1 3976 0
	subl	$12, %esp
	pushl	%eax
	call	bt_keys_clear
.LVL112:
	addl	$16, %esp
.L90:
.LVL113:
.LBB37:
.LBB38:
	.loc 1 3962 0
	movl	%edi, %eax
	call	smp_reset
.LVL114:
.LBE38:
.LBE37:
	.loc 1 3980 0
	leal	-12(%ebp), %esp
	.loc 1 3979 0
	movl	%esi, %eax
	movl	$4, %edx
	.loc 1 3980 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL115:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3979 0
	jmp	atomic_set_bit
.LVL116:
	.cfi_endproc
.LFE90:
	.size	smp_timeout, .-smp_timeout
	.section	.text.unlikely.smp_timeout
.LCOLDE17:
	.section	.text.smp_timeout
.LHOTE17:
	.section	.text.unlikely.smp_ident_info,"ax",@progbits
.LCOLDB18:
	.section	.text.smp_ident_info,"ax",@progbits
.LHOTB18:
	.type	smp_ident_info, @function
smp_ident_info:
.LFB126:
	.loc 1 4798 0
	.cfi_startproc
.LVL117:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4800 0
	movl	$10, %edx
	.loc 1 4798 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4798 0
	movl	8(%ebp), %ebx
	.loc 1 4800 0
	leal	120(%ebx), %eax
	call	atomic_test_bit
.LVL118:
	testl	%eax, %eax
	je	.L99
.LBB39:
	.loc 1 4801 0
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
.LVL119:
	.loc 1 4804 0
	pushl	%eax
.LVL120:
	pushl	%eax
	movl	(%ebx), %eax
	addl	$64, %eax
	pushl	%eax
	pushl	$2
	call	bt_keys_get_type
.LVL121:
	movl	%eax, %edx
.LVL122:
	.loc 1 4805 0
	addl	$16, %esp
	.loc 1 4807 0
	movb	$8, %al
.LVL123:
	.loc 1 4805 0
	testl	%edx, %edx
	je	.L100
	.loc 1 4809 0
	movl	(%esi), %edi
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	movl	12(%esi), %esi
.LVL124:
	movl	%edi, 44(%edx)
	movl	%ecx, 48(%edx)
	movl	%eax, 52(%edx)
	movl	%esi, 56(%edx)
.LVL125:
.L99:
.LBE39:
	.loc 1 4811 0
	leal	116(%ebx), %eax
	movl	$9, %edx
	call	atomic_set_bit
.LVL126:
	.loc 1 4812 0
	xorl	%eax, %eax
.L100:
	.loc 1 4813 0
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
.LFE126:
	.size	smp_ident_info, .-smp_ident_info
	.section	.text.unlikely.smp_ident_info
.LCOLDE18:
	.section	.text.smp_ident_info
.LHOTE18:
	.section	.text.unlikely.smp_master_ident,"ax",@progbits
.LCOLDB19:
	.section	.text.smp_master_ident,"ax",@progbits
.LHOTB19:
	.type	smp_master_ident, @function
smp_master_ident:
.LFB110:
	.loc 1 4365 0
	.cfi_startproc
.LVL127:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4368 0
	movl	$10, %edx
	.loc 1 4365 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4365 0
	movl	8(%ebp), %ebx
	.loc 1 4368 0
	leal	120(%ebx), %eax
	.loc 1 4366 0
	movl	(%ebx), %esi
.LVL128:
	.loc 1 4368 0
	call	atomic_test_bit
.LVL129:
	testl	%eax, %eax
	je	.L107
.LBB40:
	.loc 1 4369 0
	movl	12(%ebp), %eax
	.loc 1 4371 0
	addl	$64, %esi
.LVL130:
	.loc 1 4369 0
	movl	8(%eax), %edi
.LVL131:
	.loc 1 4371 0
	pushl	%eax
	pushl	%eax
	pushl	%esi
	.loc 1 4374 0
	movl	$8, %esi
.LVL132:
	.loc 1 4371 0
	pushl	$4
.LVL133:
	call	bt_keys_get_type
.LVL134:
	.loc 1 4372 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L108
	.loc 1 4376 0
	movw	(%edi), %dx
	.loc 1 4377 0
	movl	6(%edi), %ecx
	.loc 1 4376 0
	movw	%dx, 24(%eax)
	.loc 1 4377 0
	movl	2(%edi), %edx
	movl	%ecx, 20(%eax)
	movl	%edx, 16(%eax)
	.loc 1 4378 0
	andb	$-2, 338(%ebx)
.LVL135:
.L107:
.LBE40:
	.loc 1 4380 0
	movb	338(%ebx), %al
	testb	$2, %al
	je	.L109
	.loc 1 4381 0
	leal	116(%ebx), %eax
	movl	$8, %edx
	jmp	.L120
.L109:
	.loc 1 4382 0
	testb	$4, %al
	je	.L110
	.loc 1 4383 0
	leal	116(%ebx), %eax
	movl	$10, %edx
.L120:
	call	atomic_set_bit
.LVL136:
.L110:
	.loc 1 4392 0
	xorl	%esi, %esi
	.loc 1 4389 0
	testl	$16776960, 336(%ebx)
	jne	.L108
.LVL137:
.LBB41:
.LBB42:
	.loc 1 3962 0
	movl	%ebx, %eax
	call	smp_reset
.LVL138:
.L108:
.LBE42:
.LBE41:
	.loc 1 4393 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
.LFE110:
	.size	smp_master_ident, .-smp_master_ident
	.section	.text.unlikely.smp_master_ident
.LCOLDE19:
	.section	.text.smp_master_ident
.LHOTE19:
	.section	.text.unlikely.smp_encrypt_info,"ax",@progbits
.LCOLDB20:
	.section	.text.smp_encrypt_info,"ax",@progbits
.LHOTB20:
	.type	smp_encrypt_info, @function
smp_encrypt_info:
.LFB109:
	.loc 1 4348 0
	.cfi_startproc
.LVL139:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4350 0
	movl	$10, %edx
	.loc 1 4348 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4348 0
	movl	8(%ebp), %ebx
	.loc 1 4350 0
	leal	120(%ebx), %eax
	call	atomic_test_bit
.LVL140:
	testl	%eax, %eax
	je	.L122
.LBB43:
	.loc 1 4351 0
	movl	12(%ebp), %eax
	movl	8(%eax), %esi
.LVL141:
	.loc 1 4354 0
	pushl	%eax
.LVL142:
	pushl	%eax
	movl	(%ebx), %eax
	addl	$64, %eax
	pushl	%eax
	pushl	$4
	call	bt_keys_get_type
.LVL143:
	movl	%eax, %edx
.LVL144:
	.loc 1 4355 0
	addl	$16, %esp
	.loc 1 4357 0
	movb	$8, %al
.LVL145:
	.loc 1 4355 0
	testl	%edx, %edx
	je	.L123
	.loc 1 4359 0
	movl	(%esi), %edi
	movl	4(%esi), %ecx
	movl	8(%esi), %eax
	movl	12(%esi), %esi
.LVL146:
	movl	%edi, 26(%edx)
	movl	%ecx, 30(%edx)
	movl	%eax, 34(%edx)
	movl	%esi, 38(%edx)
.LVL147:
.L122:
.LBE43:
	.loc 1 4361 0
	leal	116(%ebx), %eax
	movl	$7, %edx
	call	atomic_set_bit
.LVL148:
	.loc 1 4362 0
	xorl	%eax, %eax
.L123:
	.loc 1 4363 0
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
.LFE109:
	.size	smp_encrypt_info, .-smp_encrypt_info
	.section	.text.unlikely.smp_encrypt_info
.LCOLDE20:
	.section	.text.smp_encrypt_info
.LHOTE20:
	.section	.text.unlikely.smp_pairing_req,"ax",@progbits
.LCOLDB21:
	.section	.text.smp_pairing_req,"ax",@progbits
.LHOTB21:
	.type	smp_pairing_req, @function
smp_pairing_req:
.LFB116:
	.loc 1 4489 0
	.cfi_startproc
.LVL149:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4496 0
	movb	$6, %cl
	.loc 1 4489 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4489 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 4490 0
	movl	12(%ebp), %eax
	movl	8(%eax), %ebx
.LVL150:
	.loc 1 4494 0
	movb	3(%ebx), %al
	subl	$7, %eax
	cmpb	$9, %al
	ja	.L130
.LVL151:
.LBB56:
.LBB57:
	.loc 1 4396 0
	leal	116(%esi), %eax
	leal	116(%esi), %edi
	movl	$56, %ecx
	movl	%eax, -44(%ebp)
	xorl	%eax, %eax
	rep stosl
	.loc 1 4398 0
	leal	155(%esi), %eax
	pushl	%ecx
	pushl	%ecx
	pushl	$16
	pushl	%eax
	call	bt_rand
.LVL152:
	addl	$16, %esp
	testl	%eax, %eax
.LBE57:
.LBE56:
	.loc 1 4500 0
	movb	$8, %cl
.LBB59:
.LBB58:
	.loc 1 4398 0
	jne	.L130
	.loc 1 4402 0
	leal	116(%esi), %eax
	movl	$5, %edx
	call	atomic_set_bit
.LVL153:
.LBE58:
.LBE59:
	.loc 1 4502 0
	movb	$1, 125(%esi)
	.loc 1 4503 0
	movl	(%ebx), %eax
	movl	%eax, 126(%esi)
	movw	4(%ebx), %ax
	.loc 1 4504 0
	movb	$2, 132(%esi)
.LVL154:
	.loc 1 4503 0
	movw	%ax, 130(%esi)
	.loc 1 4506 0
	movb	2(%ebx), %al
.LVL155:
.LBB60:
.LBB61:
	.loc 1 4408 0
	movl	%eax, %edi
	andl	$7, %eax
.LVL156:
	andl	$15, %edi
.LVL157:
	cmpb	$0, sc_supported
	cmove	%eax, %edi
.LVL158:
	.loc 1 4412 0
	call	get_io_capa
.LVL159:
	.loc 1 4413 0
	movl	%edi, %edx
	orl	$4, %edi
.LVL160:
	andl	$-5, %edx
.LVL161:
	cmpb	$3, %al
	cmove	%edx, %edi
.LBE61:
.LBE60:
	.loc 1 4506 0
	movl	%edi, %eax
	movb	%al, 135(%esi)
	.loc 1 4507 0
	call	get_io_capa
.LVL162:
	.loc 1 4508 0
	movb	$0, 134(%esi)
	.loc 1 4507 0
	movb	%al, 133(%esi)
	.loc 1 4509 0
	movb	$16, 136(%esi)
	.loc 1 4510 0
	movb	4(%ebx), %al
	andl	$3, %eax
	movb	%al, 137(%esi)
	.loc 1 4511 0
	movb	5(%ebx), %al
	andl	$1, %eax
	.loc 1 4512 0
	andl	$8, %edi
	leal	120(%esi), %edi
	.loc 1 4511 0
	movb	%al, 138(%esi)
	.loc 1 4512 0
	je	.L135
	.loc 1 4512 0 is_stmt 0 discriminator 1
	testb	$8, 2(%ebx)
	je	.L135
	.loc 1 4514 0 is_stmt 1
	movl	$5, %edx
	movl	%edi, %eax
	call	atomic_set_bit
.LVL163:
	.loc 1 4515 0
	andb	$2, 137(%esi)
	.loc 1 4516 0
	movb	$0, 138(%esi)
.L135:
	.loc 1 4518 0
	testb	$32, 135(%esi)
	je	.L136
	.loc 1 4518 0 is_stmt 0 discriminator 1
	testb	$32, 2(%ebx)
	je	.L136
	.loc 1 4520 0 is_stmt 1
	movl	$17, %edx
	movl	%edi, %eax
	call	atomic_set_bit
.LVL164:
.L136:
	.loc 1 4522 0
	movb	138(%esi), %al
	.loc 1 4524 0
	testb	$1, 135(%esi)
	.loc 1 4522 0
	movb	%al, 337(%esi)
	.loc 1 4523 0
	movb	137(%esi), %al
	movb	%al, 338(%esi)
	.loc 1 4524 0
	je	.L137
	.loc 1 4524 0 is_stmt 0 discriminator 1
	testb	$1, 2(%ebx)
	je	.L137
	.loc 1 4526 0 is_stmt 1
	movl	$10, %edx
	movl	%edi, %eax
	call	atomic_set_bit
.LVL165:
.L137:
	.loc 1 4528 0
	movl	$3, %edx
	movl	%edi, %eax
	call	atomic_set_bit
.LVL166:
	.loc 1 4529 0
	movl	$5, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL167:
.LBB62:
.LBB63:
.LBB64:
.LBB65:
	.loc 1 4178 0
	xorl	%ecx, %ecx
.LBE65:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 4529 0
	testl	%eax, %eax
	movzbl	(%ebx), %ebx
.LVL168:
	jne	.L138
.LVL169:
.LBB71:
.LBB70:
.LBB67:
.LBB66:
	.loc 1 4177 0
	cmpb	$4, %bl
	ja	.L139
.LVL170:
	movb	128(%esi), %cl
	orb	135(%esi), %cl
	.loc 1 4182 0
	andb	$4, %cl
	je	.L139
	.loc 1 4185 0
	leal	(%ebx,%ebx,4), %ebx
.LVL171:
	call	get_io_capa
.LVL172:
	movzbl	%al, %eax
	movb	gen_method_legacy(%eax,%ebx), %cl
.LVL173:
	.loc 1 4186 0
	cmpb	$4, %cl
	jne	.L139
	.loc 1 4187 0
	movl	(%esi), %eax
	.loc 1 4190 0
	cmpb	$1, 3(%eax)
	sbbl	%ecx, %ecx
.LVL174:
	notl	%ecx
	addl	$2, %ecx
.LVL175:
.L139:
.LBE66:
.LBE67:
	.loc 1 4254 0
	testb	%cl, %cl
	.loc 1 4253 0
	movb	%cl, 124(%esi)
	.loc 1 4254 0
	movb	%cl, -44(%ebp)
	jne	.L140
	.loc 1 4255 0
	movl	$12, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL176:
	.loc 1 4254 0
	testl	%eax, %eax
	jne	.L140
	.loc 1 4255 0
	movl	bt_auth, %eax
	testl	%eax, %eax
	je	.L140
	.loc 1 4256 0
	cmpl	$0, 16(%eax)
	jne	.L195
.L140:
	.loc 1 4261 0
	movl	%esi, %eax
	call	send_pairing_rsp
.LVL177:
	.loc 1 4262 0
	testb	%al, %al
	movb	%al, %cl
	jne	.L130
	.loc 1 4265 0
	leal	116(%esi), %eax
.LVL178:
	movl	$3, %edx
	call	atomic_set_bit
.LVL179:
.LBB68:
.LBB69:
	.loc 1 4197 0
	movl	(%esi), %ebx
.LVL180:
	.loc 1 4200 0
	subl	$12, %esp
	leal	64(%ebx), %eax
	pushl	%eax
	call	bt_keys_find_addr
.LVL181:
	.loc 1 4201 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L141
.LVL182:
.L146:
	.loc 1 4206 0
	movb	124(%esi), %cl
	cmpb	$1, %cl
	je	.L143
	jb	.L130
	cmpb	$2, %cl
	je	.L145
	jmp	.L192
.LVL183:
.L141:
	.loc 1 4201 0
	addl	$8, %eax
.LVL184:
	xorl	%edx, %edx
	call	atomic_test_bit
.LVL185:
	testl	%eax, %eax
	je	.L146
	cmpb	$0, 124(%esi)
	je	.L192
	jmp	.L146
.L145:
	.loc 1 4208 0
	leal	-32(%ebp), %eax
	pushl	%edx
	pushl	%edx
	pushl	$4
	pushl	%eax
	call	bt_rand
.LVL186:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L192
	.loc 1 4211 0
	movl	-32(%ebp), %eax
	movl	$1000000, %ecx
	xorl	%edx, %edx
	divl	%ecx
	.loc 1 4212 0
	pushl	%eax
	pushl	%eax
	movl	bt_auth, %eax
	pushl	%edx
	.loc 1 4211 0
	movl	%edx, -32(%ebp)
	.loc 1 4212 0
	pushl	%ebx
	call	*(%eax)
.LVL187:
	.loc 1 4214 0
	movl	-32(%ebp), %eax
	movl	%eax, 187(%esi)
	jmp	.L194
.L143:
	.loc 1 4217 0
	movl	%edi, %eax
	movl	$9, %edx
	call	atomic_set_bit
.LVL188:
	.loc 1 4218 0
	movl	bt_auth, %eax
	subl	$12, %esp
	pushl	%ebx
	call	*4(%eax)
.LVL189:
.L194:
	addl	$16, %esp
	.loc 1 4226 0
	xorl	%ecx, %ecx
	jmp	.L130
.L192:
	.loc 1 4224 0
	movb	$8, %cl
.LVL190:
	jmp	.L130
.LVL191:
.L138:
.LBE69:
.LBE68:
.LBE70:
.LBE71:
.LBB72:
.LBB73:
	.loc 1 3751 0
	cmpb	$4, %bl
	ja	.L148
.LVL192:
	movb	128(%esi), %cl
	orb	135(%esi), %cl
	.loc 1 3756 0
	andb	$4, %cl
	je	.L148
	.loc 1 3759 0
	leal	(%ebx,%ebx,4), %ebx
.LVL193:
	call	get_io_capa
.LVL194:
	movzbl	%al, %eax
	movb	gen_method_sc(%eax,%ebx), %cl
.LVL195:
.L148:
.LBE73:
.LBE72:
	.loc 1 4537 0
	testb	%cl, %cl
	.loc 1 4532 0
	movb	%cl, 124(%esi)
	.loc 1 4537 0
	movb	%cl, -44(%ebp)
	jne	.L149
	.loc 1 4541 0
	movl	$12, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL196:
	testl	%eax, %eax
	jne	.L149
	.loc 1 4541 0 is_stmt 0 discriminator 1
	movl	bt_auth, %eax
	testl	%eax, %eax
	je	.L149
	.loc 1 4542 0 is_stmt 1
	cmpl	$0, 16(%eax)
	je	.L149
.L195:
	.loc 1 4543 0
	movl	$9, %edx
	movl	%edi, %eax
	call	atomic_set_bit
.LVL197:
	.loc 1 4544 0
	movl	bt_auth, %eax
	subl	$12, %esp
	pushl	(%esi)
	call	*16(%eax)
.LVL198:
	.loc 1 4545 0
	addl	$16, %esp
	movb	-44(%ebp), %cl
	jmp	.L130
.L149:
	.loc 1 4548 0
	leal	116(%esi), %eax
	movl	$12, %edx
	call	atomic_set_bit
.LVL199:
	.loc 1 4549 0
	movl	%esi, %eax
	call	send_pairing_rsp
.LVL200:
	movb	%al, %cl
.LVL201:
.L130:
	.loc 1 4550 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	movb	%cl, %al
	je	.L150
	call	__stack_chk_fail
.LVL202:
.L150:
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
.LFE116:
	.size	smp_pairing_req, .-smp_pairing_req
	.section	.text.unlikely.smp_pairing_req
.LCOLDE21:
	.section	.text.smp_pairing_req
.LHOTE21:
	.section	.text.unlikely.bt_smp_connected,"ax",@progbits
.LCOLDB22:
	.section	.text.bt_smp_connected,"ax",@progbits
.LHOTB22:
	.type	bt_smp_connected, @function
bt_smp_connected:
.LFB137:
	.loc 1 5120 0
	.cfi_startproc
.LVL203:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 5120 0
	movl	8(%ebp), %ebx
.LVL204:
	.loc 1 5129 0
	pushl	$smp_timeout
	leal	340(%ebx), %eax
	pushl	%eax
	call	k_delayed_work_init
.LVL205:
	.loc 1 5130 0
	addl	$16, %esp
	movl	%ebx, %eax
	.loc 1 5131 0
	movl	-4(%ebp), %ebx
.LVL206:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 5130 0
	jmp	smp_reset
.LVL207:
	.cfi_endproc
.LFE137:
	.size	bt_smp_connected, .-bt_smp_connected
	.section	.text.unlikely.bt_smp_connected
.LCOLDE22:
	.section	.text.bt_smp_connected
.LHOTE22:
	.section	.text.unlikely.bt_smp_encrypt_change,"ax",@progbits
.LCOLDB23:
	.section	.text.bt_smp_encrypt_change,"ax",@progbits
.LHOTB23:
	.type	bt_smp_encrypt_change, @function
bt_smp_encrypt_change:
.LFB139:
	.loc 1 5154 0
	.cfi_startproc
.LVL208:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$76, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5154 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL209:
	.loc 1 5164 0
	cmpb	$0, 12(%ebp)
	jne	.L198
	.loc 1 5167 0 discriminator 1
	movl	(%ebx), %eax
	cmpb	$0, 10(%eax)
	je	.L198
.LVL210:
.LBB83:
.LBB84:
	.loc 1 5170 0
	leal	120(%ebx), %eax
	movl	$1, %edx
	movl	%eax, -76(%ebp)
	call	atomic_test_and_clear_bit
.LVL211:
	testl	%eax, %eax
	je	.L198
	.loc 1 5173 0
	leal	120(%ebx), %eax
	movl	$3, %edx
	call	atomic_test_bit
.LVL212:
	testl	%eax, %eax
	jne	.L202
	.loc 1 5174 0
	leal	116(%ebx), %eax
	movl	$11, %edx
	call	atomic_set_bit
.LVL213:
	jmp	.L198
.L202:
	.loc 1 5177 0
	leal	120(%ebx), %eax
	movl	$5, %edx
	call	atomic_test_bit
.LVL214:
	testl	%eax, %eax
	je	.L203
	.loc 1 5178 0
	testb	$8, 337(%ebx)
	je	.L204
	testb	$8, 338(%ebx)
	je	.L204
	.loc 1 5180 0
	leal	120(%ebx), %eax
	movl	$14, %edx
	call	atomic_set_bit
.LVL215:
.L204:
	.loc 1 5182 0
	andb	$-9, 337(%ebx)
	.loc 1 5183 0
	andb	$-9, 338(%ebx)
.L203:
	.loc 1 5185 0
	movb	338(%ebx), %al
	testb	$1, %al
	je	.L205
	.loc 1 5186 0
	leal	116(%ebx), %eax
	movl	$6, %edx
	jmp	.L243
.L205:
	.loc 1 5187 0
	testb	$2, %al
	je	.L207
	.loc 1 5188 0
	leal	116(%ebx), %eax
	movl	$8, %edx
	jmp	.L243
.L207:
	.loc 1 5189 0
	testb	$4, %al
	je	.L206
	.loc 1 5190 0
	leal	116(%ebx), %eax
	movl	$10, %edx
.L243:
	call	atomic_set_bit
.LVL216:
.L206:
	.loc 1 5192 0
	leal	120(%ebx), %eax
	movl	$2, %edx
	call	atomic_set_bit
.LVL217:
.LBB85:
.LBB86:
	.loc 1 4141 0
	movl	(%ebx), %eax
	.loc 1 4142 0
	cmpl	$0, 104(%eax)
	je	.L209
	.loc 1 4146 0
	leal	120(%ebx), %eax
	movl	$5, %edx
	call	atomic_test_bit
.LVL218:
	testl	%eax, %eax
	jne	.L209
.LVL219:
.LBB87:
.LBB88:
	.loc 1 4094 0
	testb	$1, 337(%ebx)
	je	.L209
	.loc 1 4092 0
	movl	(%ebx), %eax
	movl	%eax, -80(%ebp)
.LVL220:
	.loc 1 4093 0
	movl	104(%eax), %eax
.LBB89:
	.loc 1 4101 0
	pushl	%esi
.LVL221:
	pushl	%esi
	leal	-44(%ebp), %esi
	pushl	$16
	pushl	%esi
.LBE89:
	.loc 1 4093 0
	movl	%eax, -76(%ebp)
.LBB90:
	.loc 1 4101 0
	call	bt_rand
.LVL222:
	.loc 1 4102 0
	popl	%edi
	popl	%eax
	leal	-56(%ebp), %eax
	pushl	$8
	pushl	%eax
	call	bt_rand
.LVL223:
	.loc 1 4103 0
	popl	%eax
	leal	-58(%ebp), %eax
	popl	%edx
	pushl	$2
	pushl	%eax
	call	bt_rand
.LVL224:
	.loc 1 4104 0
	movl	-80(%ebp), %eax
	movl	$16, %ecx
	movl	$6, %edx
	call	smp_create_pdu
.LVL225:
	.loc 1 4106 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4104 0
	movl	%eax, -84(%ebp)
.LVL226:
	.loc 1 4106 0
	je	.L209
	.loc 1 4110 0
	addl	$8, %eax
.LVL227:
	pushl	%ecx
	pushl	%ecx
	pushl	$16
	pushl	%eax
	call	net_buf_simple_add
.LVL228:
	.loc 1 4111 0
	movl	-76(%ebp), %edi
	.loc 1 4112 0
	addl	$16, %esp
	.loc 1 4111 0
	movzbl	7(%edi), %ecx
	movl	%eax, %edi
	rep movsb
	.loc 1 4112 0
	movl	-76(%ebp), %edi
	movzbl	7(%edi), %edx
	cmpb	$15, %dl
	ja	.L212
	.loc 1 4113 0
	movl	$16, %ecx
	subl	%edx, %ecx
	addl	%eax, %edx
	xorl	%eax, %eax
.LVL229:
	movl	%edx, %edi
	rep stosb
.L212:
	.loc 1 4116 0
	movl	-84(%ebp), %edx
	xorl	%ecx, %ecx
	movl	%ebx, %eax
	call	smp_send
.LVL230:
	.loc 1 4119 0
	movl	-80(%ebp), %eax
	movl	$10, %ecx
	movl	$7, %edx
	call	smp_create_pdu
.LVL231:
	.loc 1 4121 0
	testl	%eax, %eax
	.loc 1 4119 0
	movl	%eax, %esi
.LVL232:
	.loc 1 4121 0
	je	.L209
	.loc 1 4125 0
	leal	8(%eax), %eax
.LVL233:
	pushl	%edx
	pushl	%edx
	pushl	$10
	pushl	%eax
	call	net_buf_simple_add
.LVL234:
	.loc 1 4126 0
	movl	-52(%ebp), %ecx
	movl	-56(%ebp), %edx
	movl	%ecx, 6(%eax)
	.loc 1 4127 0
	movw	-58(%ebp), %cx
	.loc 1 4126 0
	movl	%edx, 2(%eax)
	.loc 1 4128 0
	movl	%esi, %edx
	.loc 1 4127 0
	movw	%cx, (%eax)
	.loc 1 4128 0
	movl	$ident_sent, %ecx
	movl	%ebx, %eax
.LVL235:
	call	smp_send
.LVL236:
	.loc 1 4129 0
	leal	120(%ebx), %eax
	movl	$10, %edx
	call	atomic_test_bit
.LVL237:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L209
	.loc 1 4130 0
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	-76(%ebp)
	call	bt_keys_add_type
.LVL238:
	.loc 1 4131 0
	movl	-76(%ebp), %esi
.LVL239:
	movl	-44(%ebp), %eax
	.loc 1 4134 0
	addl	$16, %esp
	.loc 1 4133 0
	movl	-52(%ebp), %edx
	.loc 1 4131 0
	movl	%eax, 78(%esi)
	movl	-40(%ebp), %eax
	.loc 1 4133 0
	movl	%edx, 72(%esi)
	.loc 1 4131 0
	movl	%eax, 82(%esi)
	movl	-36(%ebp), %eax
	movl	%eax, 86(%esi)
	movl	-32(%ebp), %eax
	movl	%eax, 90(%esi)
	.loc 1 4133 0
	movl	-56(%ebp), %eax
	movl	%eax, 68(%esi)
	.loc 1 4134 0
	movw	-58(%ebp), %ax
	movw	%ax, 76(%esi)
.LVL240:
.L209:
.LBE90:
.LBE88:
.LBE87:
.LBE86:
.LBE85:
	.loc 1 5198 0
	testl	$16776960, 336(%ebx)
	jne	.L198
.LVL241:
.LBB91:
.LBB92:
	.loc 1 3962 0
	movl	%ebx, %eax
	call	smp_reset
.LVL242:
.L198:
.LBE92:
.LBE91:
.LBE84:
.LBE83:
	.loc 1 5201 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L214
	call	__stack_chk_fail
.LVL243:
.L214:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL244:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE139:
	.size	bt_smp_encrypt_change, .-bt_smp_encrypt_change
	.section	.text.unlikely.bt_smp_encrypt_change
.LCOLDE23:
	.section	.text.bt_smp_encrypt_change
.LHOTE23:
	.section	.text.unlikely.ident_sent,"ax",@progbits
.LCOLDB24:
	.section	.text.ident_sent,"ax",@progbits
.LHOTB24:
	.type	ident_sent, @function
ident_sent:
.LFB97:
	.loc 1 4087 0
	.cfi_startproc
.LVL245:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4087 0
	movl	8(%ebp), %eax
.LVL246:
.LBB98:
.LBB99:
	.loc 1 3922 0
	cmpb	$0, 2(%eax)
	jne	.L244
.LBB100:
	.loc 1 3924 0
	pushl	%edx
	pushl	%edx
	pushl	$6
	pushl	%eax
	call	bt_l2cap_le_lookup_tx_cid
.LVL247:
	.loc 1 3933 0
	andb	$-2, 337(%eax)
	.loc 1 3934 0
	addl	$16, %esp
	testl	$16776960, 336(%eax)
	jne	.L244
.LVL248:
.LBE100:
.LBE99:
.LBE98:
	.loc 1 4089 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB105:
.LBB104:
.LBB103:
.LBB101:
.LBB102:
	.loc 1 3962 0
	jmp	smp_reset
.LVL249:
.L244:
	.cfi_restore_state
.LBE102:
.LBE101:
.LBE103:
.LBE104:
.LBE105:
	.loc 1 4089 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE97:
	.size	ident_sent, .-ident_sent
	.section	.text.unlikely.ident_sent
.LCOLDE24:
	.section	.text.ident_sent
.LHOTE24:
	.section	.text.unlikely.sys_mem_swap.constprop.10,"ax",@progbits
.LCOLDB25:
	.section	.text.sys_mem_swap.constprop.10,"ax",@progbits
.LHOTB25:
	.type	sys_mem_swap.constprop.10, @function
sys_mem_swap.constprop.10:
.LFB165:
	.loc 1 1016 0
	.cfi_startproc
.LVL250:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	leal	15(%eax), %ecx
	.loc 1 1019 0
	xorl	%edx, %edx
	.loc 1 1016 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LVL251:
.L250:
.LBB106:
	.loc 1 1020 0
	movzbl	(%eax,%edx), %esi
.LVL252:
	.loc 1 1021 0
	movb	(%ecx), %bl
	decl	%ecx
	movb	%bl, (%eax,%edx)
.LBE106:
	.loc 1 1019 0
	incl	%edx
.LVL253:
.LBB107:
	.loc 1 1022 0
	movl	%esi, %ebx
	movb	%bl, 1(%ecx)
.LBE107:
	.loc 1 1019 0
	cmpl	$8, %edx
	jne	.L250
	.loc 1 1024 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL254:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE165:
	.size	sys_mem_swap.constprop.10, .-sys_mem_swap.constprop.10
	.section	.text.unlikely.sys_mem_swap.constprop.10
.LCOLDE25:
	.section	.text.sys_mem_swap.constprop.10
.LHOTE25:
	.section	.text.unlikely.smp_f6,"ax",@progbits
.LCOLDB26:
	.section	.text.smp_f6,"ax",@progbits
.LHOTB26:
	.type	smp_f6, @function
smp_f6:
.LFB84:
	.loc 1 3862 0
	.cfi_startproc
.LVL255:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$124, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3862 0
	movl	%eax, -124(%ebp)
	movl	8(%ebp), %eax
.LVL256:
	movl	%ecx, -128(%ebp)
	.loc 1 3870 0
	movl	$16, %ecx
.LVL257:
	.loc 1 3862 0
	movl	20(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	24(%ebp), %edi
	movl	%eax, -132(%ebp)
	movl	12(%ebp), %eax
	movl	%eax, -136(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 3870 0
	leal	-93(%ebp), %eax
	call	sys_memcpy_swap
.LVL258:
	.loc 1 3871 0
	movl	-128(%ebp), %edx
	leal	-77(%ebp), %eax
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL259:
	.loc 1 3872 0
	movl	-132(%ebp), %edx
	leal	-61(%ebp), %eax
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL260:
	.loc 1 3873 0
	movl	-136(%ebp), %edx
	leal	-45(%ebp), %eax
	movl	$3, %ecx
	call	sys_memcpy_swap
.LVL261:
	.loc 1 3874 0
	movb	(%esi), %al
	.loc 1 3875 0
	leal	1(%esi), %edx
	.loc 1 3876 0
	movl	$6, %ecx
	.loc 1 3874 0
	movb	%al, -42(%ebp)
	.loc 1 3875 0
	movl	1(%esi), %eax
	movl	%eax, -41(%ebp)
	movw	4(%edx), %ax
	movw	%ax, -37(%ebp)
	.loc 1 3876 0
	leal	-41(%ebp), %eax
	call	sys_memcpy_swap
.LVL262:
	.loc 1 3877 0
	movb	(%ebx), %al
	.loc 1 3878 0
	leal	1(%ebx), %edx
	.loc 1 3879 0
	movl	$6, %ecx
	.loc 1 3877 0
	movb	%al, -35(%ebp)
	.loc 1 3878 0
	movl	1(%ebx), %eax
	movl	%eax, -34(%ebp)
	movw	4(%edx), %ax
	movw	%ax, -30(%ebp)
	.loc 1 3879 0
	leal	-34(%ebp), %eax
	call	sys_memcpy_swap
.LVL263:
	.loc 1 3880 0
	movl	-124(%ebp), %edx
	leal	-109(%ebp), %eax
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL264:
	.loc 1 3881 0
	subl	$12, %esp
	leal	-93(%ebp), %edx
	leal	-109(%ebp), %eax
	pushl	%edi
	movl	$65, %ecx
	call	bt_smp_aes_cmac
.LVL265:
	.loc 1 3882 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 3881 0
	movl	%eax, %ebx
.LVL266:
	.loc 1 3882 0
	jne	.L254
	.loc 1 3886 0
	movl	%edi, %eax
.LVL267:
	call	sys_mem_swap.constprop.10
.LVL268:
.L254:
	.loc 1 3888 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%ebx, %eax
	je	.L255
.LVL269:
	call	__stack_chk_fail
.LVL270:
.L255:
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
.LFE84:
	.size	smp_f6, .-smp_f6
	.section	.text.unlikely.smp_f6
.LCOLDE26:
	.section	.text.smp_f6
.LHOTE26:
	.section	.text.unlikely.compute_and_check_and_send_slave_dhcheck,"ax",@progbits
.LCOLDB27:
	.section	.text.compute_and_check_and_send_slave_dhcheck,"ax",@progbits
.LHOTB27:
	.type	compute_and_check_and_send_slave_dhcheck, @function
compute_and_check_and_send_slave_dhcheck:
.LFB121:
	.loc 1 4626 0
	.cfi_startproc
.LVL271:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4628 0
	movl	$4, %ecx
	.loc 1 4626 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.loc 1 4628 0
	leal	-145(%ebp), %edx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4626 0
	movl	%eax, %ebx
	subl	$156, %esp
	.loc 1 4628 0
	movl	%edx, %edi
	.loc 1 4626 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL272:
	.loc 1 4628 0
	rep stosl
	.loc 1 4629 0
	movb	124(%ebx), %al
	cmpb	$2, %al
	ja	.L259
	cmpb	$1, %al
	jb	.L261
	.loc 1 4635 0
	movl	332(%ebx), %eax
	movl	%eax, -145(%ebp)
	.loc 1 4636 0
	jmp	.L261
.L259:
	.loc 1 4629 0
	cmpb	$3, %al
	jne	.L280
.L261:
	.loc 1 4642 0
	leal	315(%ebx), %eax
.LBB112:
.LBB113:
	.loc 1 3818 0
	leal	-81(%ebp), %edi
	movl	$53, %ecx
.LBE113:
.LBE112:
	.loc 1 4640 0
	leal	267(%ebx), %edx
	.loc 1 4642 0
	movl	(%ebx), %esi
	movl	%eax, -156(%ebp)
	.loc 1 4640 0
	leal	171(%ebx), %eax
	movl	%eax, -160(%ebp)
.LVL273:
.LBB116:
.LBB114:
	.loc 1 3818 0
	xorl	%eax, %eax
.LVL274:
	rep stosb
	.loc 1 3832 0
	leal	-113(%ebp), %eax
	movl	$32, %ecx
	.loc 1 3833 0
	leal	-129(%ebp), %edi
	.loc 1 3818 0
	movb	$98, -80(%ebp)
	movb	$116, -79(%ebp)
	movb	$108, -78(%ebp)
	movb	$101, -77(%ebp)
	movb	$1, -30(%ebp)
	.loc 1 3832 0
	call	sys_memcpy_swap
.LVL275:
	.loc 1 3833 0
	subl	$12, %esp
	leal	-113(%ebp), %edx
	movl	$32, %ecx
	pushl	%edi
	movl	$salt.5306, %eax
	call	bt_smp_aes_cmac
.LVL276:
	.loc 1 3834 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L262
	.loc 1 3838 0
	leal	171(%ebx), %edx
	leal	-76(%ebp), %eax
.LVL277:
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL278:
	.loc 1 3839 0
	leal	155(%ebx), %edx
	leal	-60(%ebp), %eax
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL279:
	.loc 1 3840 0
	movb	71(%esi), %al
	.loc 1 3841 0
	leal	72(%esi), %edx
	movl	$6, %ecx
	.loc 1 3840 0
	movb	%al, -44(%ebp)
	.loc 1 3841 0
	leal	-43(%ebp), %eax
	call	sys_memcpy_swap
.LVL280:
	.loc 1 3842 0
	movb	78(%esi), %al
	.loc 1 3843 0
	leal	79(%esi), %edx
	movl	$6, %ecx
	.loc 1 3842 0
	movb	%al, -37(%ebp)
	.loc 1 3843 0
	leal	-36(%ebp), %eax
	call	sys_memcpy_swap
.LVL281:
	.loc 1 3844 0
	subl	$12, %esp
	leal	-81(%ebp), %edx
	pushl	-156(%ebp)
	movl	$53, %ecx
	movl	%edi, %eax
	call	bt_smp_aes_cmac
.LVL282:
	.loc 1 3845 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L262
	.loc 1 3849 0
	leal	315(%ebx), %eax
.LVL283:
.LBE114:
.LBE116:
	.loc 1 4643 0
	leal	187(%ebx), %esi
.LVL284:
.LBB117:
.LBB115:
	.loc 1 3849 0
	call	sys_mem_swap.constprop.10
.LVL285:
	.loc 1 3851 0
	subl	$12, %esp
	leal	-81(%ebp), %edx
	movl	$53, %ecx
	pushl	%esi
	movl	%edi, %eax
	.loc 1 3850 0
	movb	$1, -81(%ebp)
	.loc 1 3851 0
	call	bt_smp_aes_cmac
.LVL286:
	.loc 1 3852 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L262
	.loc 1 3856 0
	movl	%esi, %eax
.LVL287:
	call	sys_mem_swap.constprop.10
.LVL288:
	jmp	.L263
.LVL289:
.L262:
.LBE115:
.LBE117:
	.loc 1 4640 0
	testl	%eax, %eax
	jne	.L280
.L263:
	.loc 1 4648 0
	movl	(%ebx), %eax
	.loc 1 4646 0
	leal	-81(%ebp), %edx
	subl	$12, %esp
	leal	-145(%ebp), %edi
	leal	171(%ebx), %ecx
	pushl	%edx
	.loc 1 4648 0
	leal	71(%eax), %edx
	.loc 1 4647 0
	addl	$78, %eax
	.loc 1 4646 0
	pushl	%edx
	pushl	%eax
	leal	133(%ebx), %eax
	leal	155(%ebx), %edx
	pushl	%eax
	leal	315(%ebx), %eax
	pushl	%edi
	call	smp_f6
.LVL290:
	addl	$32, %esp
	testl	%eax, %eax
	jne	.L280
	.loc 1 4653 0
	movl	(%ebx), %eax
	.loc 1 4651 0
	leal	-113(%ebp), %esi
	subl	$12, %esp
	leal	155(%ebx), %ecx
	pushl	%esi
	.loc 1 4653 0
	leal	78(%eax), %edx
	.loc 1 4652 0
	addl	$71, %eax
	.loc 1 4651 0
	pushl	%edx
	pushl	%eax
	leal	126(%ebx), %eax
	leal	171(%ebx), %edx
	pushl	%eax
	leal	315(%ebx), %eax
	pushl	%edi
	call	smp_f6
.LVL291:
	addl	$32, %esp
	testl	%eax, %eax
	jne	.L280
	.loc 1 4656 0
	leal	299(%ebx), %eax
	pushl	%edx
	pushl	$16
	pushl	%esi
	pushl	%eax
	call	memcmp
.LVL292:
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4657 0
	movb	$11, %dl
	.loc 1 4656 0
	jne	.L258
.LVL293:
.LBB118:
.LBB119:
	.loc 1 4613 0
	movl	(%ebx), %eax
	movl	$16, %ecx
	movl	$13, %edx
	call	smp_create_pdu
.LVL294:
	.loc 1 4615 0
	testl	%eax, %eax
	.loc 1 4613 0
	movl	%eax, %esi
.LVL295:
	.loc 1 4615 0
	je	.L265
.LVL296:
	.loc 1 4618 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$16
	pushl	%eax
	call	net_buf_simple_add
.LVL297:
	.loc 1 4619 0
	movl	-69(%ebp), %edx
	movl	-77(%ebp), %edi
	movl	-73(%ebp), %ecx
	movl	%edx, -156(%ebp)
	movl	-81(%ebp), %edx
	movl	%edi, 4(%eax)
	movl	-156(%ebp), %edi
	movl	%ecx, 8(%eax)
	.loc 1 4620 0
	xorl	%ecx, %ecx
	.loc 1 4619 0
	movl	%edx, (%eax)
	.loc 1 4620 0
	movl	%esi, %edx
	.loc 1 4619 0
	movl	%edi, 12(%eax)
	.loc 1 4620 0
	movl	%ebx, %eax
.LVL298:
	call	smp_send
.LVL299:
	addl	$16, %esp
.L265:
.LVL300:
.LBE119:
.LBE118:
	.loc 1 4660 0
	leal	120(%ebx), %eax
	movl	$1, %edx
	call	atomic_set_bit
.LVL301:
	.loc 1 4661 0
	xorl	%edx, %edx
	jmp	.L258
.L280:
	.loc 1 4638 0
	movb	$8, %dl
.L258:
	.loc 1 4662 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movb	%dl, %al
	je	.L266
	call	__stack_chk_fail
.LVL302:
.L266:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL303:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE121:
	.size	compute_and_check_and_send_slave_dhcheck, .-compute_and_check_and_send_slave_dhcheck
	.section	.text.unlikely.compute_and_check_and_send_slave_dhcheck
.LCOLDE27:
	.section	.text.compute_and_check_and_send_slave_dhcheck
.LHOTE27:
	.section	.text.unlikely.smp_f4,"ax",@progbits
.LCOLDB28:
	.section	.text.smp_f4,"ax",@progbits
.LHOTB28:
	.type	smp_f4, @function
smp_f4:
.LFB82:
	.loc 1 3791 0
	.cfi_startproc
.LVL304:
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
	movl	%edx, %edi
	.loc 1 3798 0
	movl	%eax, %edx
.LVL305:
	leal	-93(%ebp), %eax
.LVL306:
	.loc 1 3791 0
	movl	%ecx, %esi
	subl	$124, %esp
	.loc 1 3791 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %ecx
	movl	%ecx, -28(%ebp)
	xorl	%ecx, %ecx
.LVL307:
	.loc 1 3798 0
	movl	$32, %ecx
	.loc 1 3791 0
	movl	%ebx, -124(%ebp)
	movl	12(%ebp), %ebx
	.loc 1 3798 0
	call	sys_memcpy_swap
.LVL308:
	.loc 1 3799 0
	leal	-61(%ebp), %eax
	movl	$32, %ecx
	movl	%edi, %edx
	call	sys_memcpy_swap
.LVL309:
	.loc 1 3800 0
	movb	-124(%ebp), %al
	.loc 1 3801 0
	movl	%esi, %edx
	movl	$16, %ecx
	.loc 1 3800 0
	movb	%al, -29(%ebp)
	.loc 1 3801 0
	leal	-109(%ebp), %eax
	call	sys_memcpy_swap
.LVL310:
	.loc 1 3802 0
	subl	$12, %esp
	leal	-93(%ebp), %edx
	leal	-109(%ebp), %eax
	pushl	%ebx
	movl	$65, %ecx
	call	bt_smp_aes_cmac
.LVL311:
	.loc 1 3803 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 3802 0
	movl	%eax, %esi
.LVL312:
	.loc 1 3803 0
	jne	.L283
	.loc 1 3806 0
	movl	%ebx, %eax
.LVL313:
	call	sys_mem_swap.constprop.10
.LVL314:
.L283:
	.loc 1 3809 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
.LVL315:
	movl	%esi, %eax
	je	.L284
.LVL316:
	call	__stack_chk_fail
.LVL317:
.L284:
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
.LFE82:
	.size	smp_f4, .-smp_f4
	.section	.text.unlikely.smp_f4
.LCOLDE28:
	.section	.text.smp_f4
.LHOTE28:
	.section	.text.unlikely.smp_pairing_rsp,"ax",@progbits
.LCOLDB29:
	.section	.text.smp_pairing_rsp,"ax",@progbits
.LHOTB29:
	.type	smp_pairing_rsp, @function
smp_pairing_rsp:
.LFB164:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movb	$7, %al
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE164:
	.size	smp_pairing_rsp, .-smp_pairing_rsp
	.section	.text.unlikely.smp_pairing_rsp
.LCOLDE29:
	.section	.text.smp_pairing_rsp
.LHOTE29:
	.section	.text.unlikely.smp_signing_info,"ax",@progbits
.LCOLDB30:
	.section	.text.smp_signing_info,"ax",@progbits
.LHOTB30:
	.type	smp_signing_info, @function
smp_signing_info:
.LFB162:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movb	$7, %al
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE162:
	.size	smp_signing_info, .-smp_signing_info
	.section	.text.unlikely.smp_signing_info
.LCOLDE30:
	.section	.text.smp_signing_info
.LHOTE30:
	.section	.text.unlikely.smp_error,"ax",@progbits
.LCOLDB31:
	.section	.text.smp_error,"ax",@progbits
.LHOTB31:
	.type	smp_error, @function
smp_error:
.LFB92:
	.loc 1 3988 0
	.cfi_startproc
.LVL318:
	.loc 1 3988 0
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
	movl	%eax, %ebx
	movl	%edx, %edi
.LVL319:
	subl	$12, %esp
.LBB124:
.LBB125:
	.loc 1 3962 0
	call	smp_reset
.LVL320:
.LBE125:
.LBE124:
	.loc 1 3992 0
	movl	(%ebx), %eax
	movl	$1, %ecx
	movl	$5, %edx
	call	smp_create_pdu
.LVL321:
	.loc 1 3994 0
	testl	%eax, %eax
	je	.L292
	movl	%eax, %esi
.LVL322:
	.loc 1 3997 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$1
	pushl	%eax
	call	net_buf_simple_add
.LVL323:
	.loc 1 3998 0
	movl	%edi, %ecx
	movb	%cl, (%eax)
.LVL324:
.LBB126:
.LBB127:
	.loc 1 3525 0
	pushl	$0
.LVL325:
	pushl	%esi
	pushl	$6
	pushl	(%ebx)
	call	bt_l2cap_send_cb
.LVL326:
	addl	$32, %esp
.LBE127:
.LBE126:
	.loc 1 4000 0
	xorl	%eax, %eax
	jmp	.L291
.LVL327:
.L292:
	.loc 1 3995 0
	movl	$-55, %eax
.LVL328:
.L291:
	.loc 1 4001 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL329:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	smp_error, .-smp_error
	.section	.text.unlikely.smp_error
.LCOLDE31:
	.section	.text.smp_error
.LHOTE31:
	.section	.text.unlikely.bt_smp_dhkey_ready,"ax",@progbits
.LCOLDB32:
	.section	.text.bt_smp_dhkey_ready,"ax",@progbits
.LHOTB32:
	.type	bt_smp_dhkey_ready, @function
bt_smp_dhkey_ready:
.LFB122:
	.loc 1 4664 0
	.cfi_startproc
.LVL330:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4671 0
	movl	$7, %edx
	movl	$bt_smp_pool+120, %eax
	.loc 1 4664 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 4664 0
	movl	8(%ebp), %esi
	.loc 1 4671 0
	call	atomic_test_and_clear_bit
.LVL331:
	testl	%eax, %eax
	je	.L294
.LVL332:
	.loc 1 4680 0
	testl	%esi, %esi
	jne	.L308
	.loc 1 4681 0
	movl	$11, %edx
	jmp	.L310
.L308:
	.loc 1 4684 0
	movl	$bt_smp_pool+267, %eax
	movl	$8, %ecx
	.loc 1 4685 0
	movl	$9, %edx
	.loc 1 4684 0
	movl	%eax, %edi
	.loc 1 4685 0
	movl	$bt_smp_pool+120, %eax
	.loc 1 4684 0
	rep movsl
	.loc 1 4685 0
	call	atomic_test_bit
.LVL333:
	testl	%eax, %eax
	je	.L297
.L298:
	.loc 1 4700 0
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4686 0
	movl	$8, %edx
	movl	$bt_smp_pool+120, %eax
	jmp	atomic_set_bit
.LVL334:
.L297:
	.cfi_restore_state
	.loc 1 4689 0
	movl	$13, %edx
	movl	$bt_smp_pool+120, %eax
	call	atomic_test_bit
.LVL335:
	testl	%eax, %eax
	jne	.L298
	.loc 1 4693 0
	movl	$8, %edx
	movl	$bt_smp_pool+120, %eax
	call	atomic_test_bit
.LVL336:
	testl	%eax, %eax
	je	.L294
.LBB128:
	.loc 1 4695 0
	movl	$bt_smp_pool, %eax
	call	compute_and_check_and_send_slave_dhcheck
.LVL337:
	.loc 1 4696 0
	testb	%al, %al
	je	.L294
	.loc 1 4697 0
	movzbl	%al, %edx
.LVL338:
.L310:
.LBE128:
	.loc 1 4700 0
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB129:
	.loc 1 4697 0
	movl	$bt_smp_pool, %eax
	jmp	smp_error
.LVL339:
.L294:
	.cfi_restore_state
.LBE129:
	.loc 1 4700 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE122:
	.size	bt_smp_dhkey_ready, .-bt_smp_dhkey_ready
	.section	.text.unlikely.bt_smp_dhkey_ready
.LCOLDE32:
	.section	.text.bt_smp_dhkey_ready
.LHOTE32:
	.section	.text.unlikely.bt_smp_recv,"ax",@progbits
.LCOLDB33:
	.section	.text.bt_smp_recv,"ax",@progbits
.LHOTB33:
	.type	bt_smp_recv, @function
bt_smp_recv:
.LFB135:
	.loc 1 5039 0
	.cfi_startproc
.LVL340:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5039 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
.LVL341:
	.loc 1 5049 0
	cmpw	$0, 12(%esi)
	je	.L311
	.loc 1 5054 0
	leal	8(%esi), %eax
.LVL342:
	.loc 1 5047 0
	movl	8(%esi), %edi
	.loc 1 5054 0
	pushl	%ecx
.LVL343:
	pushl	%ecx
	pushl	$1
	pushl	%eax
	call	net_buf_simple_pull
.LVL344:
	.loc 1 5055 0
	leal	120(%ebx), %eax
	movl	$4, %edx
	call	atomic_test_bit
.LVL345:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L311
	.loc 1 5059 0
	movzbl	(%edi), %edx
	cmpb	$13, %dl
	ja	.L315
	.loc 1 5059 0 is_stmt 0 discriminator 1
	cmpl	$0, handlers(,%edx,8)
	jne	.L316
.L315:
	.loc 1 5061 0 is_stmt 1
	movl	$7, %edx
	jmp	.L323
.L316:
	.loc 1 5064 0
	cmpl	$14, 116(%ebx)
	jg	.L317
	.loc 1 5065 0 discriminator 1
	leal	116(%ebx), %eax
	call	atomic_test_and_clear_bit
.LVL346:
	.loc 1 5064 0 discriminator 1
	testl	%eax, %eax
	jne	.L317
	.loc 1 5067 0
	cmpb	$5, (%edi)
	.loc 1 5068 0
	movl	$8, %edx
	.loc 1 5067 0
	jne	.L323
	jmp	.L311
.L317:
	.loc 1 5072 0
	movzbl	(%edi), %eax
	movzbl	handlers+4(,%eax,8), %edx
	cmpw	%dx, 12(%esi)
	je	.L318
	.loc 1 5074 0
	movl	$10, %edx
	jmp	.L323
.L318:
	.loc 1 5077 0
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%ebx
	call	*handlers(,%eax,8)
.LVL347:
	.loc 1 5078 0
	addl	$16, %esp
	testb	%al, %al
	je	.L311
	.loc 1 5079 0
	movzbl	%al, %edx
.LVL348:
.L323:
	.loc 1 5081 0
	leal	-12(%ebp), %esp
	.loc 1 5079 0
	movl	%ebx, %eax
	.loc 1 5081 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL349:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL350:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5079 0
	jmp	smp_error
.LVL351:
.L311:
	.cfi_restore_state
	.loc 1 5081 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL352:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE135:
	.size	bt_smp_recv, .-bt_smp_recv
	.section	.text.unlikely.bt_smp_recv
.LCOLDE33:
	.section	.text.bt_smp_recv
.LHOTE33:
	.section	.text.unlikely.smp_dhkey_check,"ax",@progbits
.LCOLDB34:
	.section	.text.smp_dhkey_check,"ax",@progbits
.LHOTB34:
	.type	smp_dhkey_check, @function
smp_dhkey_check:
.LFB134:
	.loc 1 4970 0
	.cfi_startproc
.LVL353:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4970 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
.LVL354:
	.loc 1 5004 0
	movl	(%ebx), %edx
	cmpb	$1, 3(%edx)
	jne	.L325
	.loc 1 5005 0
	leal	120(%ebx), %esi
.LVL355:
	.loc 1 4971 0
	movl	8(%eax), %edi
.LVL356:
.LBB132:
.LBB133:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-8193
	pushl	%esi
	call	atomic_and
.LVL357:
.LBE133:
.LBE132:
	.loc 1 5006 0
	movl	4(%edi), %edx
	movl	8(%edi), %eax
	movl	(%edi), %ecx
	movl	12(%edi), %edi
.LVL358:
	movl	%edx, 303(%ebx)
	movl	%eax, 307(%ebx)
	.loc 1 5007 0
	movl	$7, %edx
	.loc 1 5006 0
	movl	%ecx, 299(%ebx)
	movl	%edi, 311(%ebx)
	.loc 1 5007 0
	movl	%esi, %eax
	call	atomic_test_bit
.LVL359:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L330
	.loc 1 5011 0
	movl	$9, %edx
	movl	%esi, %eax
	call	atomic_test_bit
.LVL360:
	testl	%eax, %eax
	je	.L327
.L330:
	.loc 1 5012 0
	movl	$8, %edx
	movl	%esi, %eax
	call	atomic_set_bit
.LVL361:
	.loc 1 5013 0
	jmp	.L325
.L327:
	.loc 1 5018 0
	leal	-12(%ebp), %esp
	.loc 1 5015 0
	movl	%ebx, %eax
	.loc 1 5018 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5015 0
	jmp	compute_and_check_and_send_slave_dhcheck
.LVL362:
.L325:
	.cfi_restore_state
	.loc 1 5018 0 discriminator 1
	leal	-12(%ebp), %esp
	xorl	%eax, %eax
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
.LFE134:
	.size	smp_dhkey_check, .-smp_dhkey_check
	.section	.text.unlikely.smp_dhkey_check
.LCOLDE34:
	.section	.text.smp_dhkey_check
.LHOTE34:
	.section	.text.unlikely.smp_send_pairing_confirm,"ax",@progbits
.LCOLDB35:
	.section	.text.smp_send_pairing_confirm,"ax",@progbits
.LHOTB35:
	.type	smp_send_pairing_confirm, @function
smp_send_pairing_confirm:
.LFB96:
	.loc 1 4053 0
	.cfi_startproc
.LVL363:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LVL364:
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4058 0
	movb	124(%eax), %dl
	cmpb	$2, %dl
	ja	.L333
	cmpb	$1, %dl
	jb	.L338
	.loc 1 4065 0
	movzbl	336(%eax), %ecx
	movl	332(%eax), %edx
	shrl	%cl, %edx
	andl	$1, %edx
.LVL365:
	.loc 1 4066 0
	orl	$-128, %edx
.LVL366:
	movb	%dl, -25(%ebp)
.LVL367:
	.loc 1 4067 0
	jmp	.L335
.LVL368:
.L333:
	.loc 1 4058 0
	cmpb	$3, %dl
	jne	.L346
.L338:
	.loc 1 4061 0
	movb	$0, -25(%ebp)
.L335:
	movl	%eax, %ebx
.LVL369:
	.loc 1 4071 0
	movl	(%eax), %eax
.LVL370:
	movl	$16, %ecx
	movl	$3, %edx
	.loc 1 4073 0
	movl	$8, %edi
	.loc 1 4071 0
	call	smp_create_pdu
.LVL371:
	.loc 1 4072 0
	testl	%eax, %eax
	.loc 1 4071 0
	movl	%eax, %esi
.LVL372:
	.loc 1 4072 0
	je	.L332
	.loc 1 4075 0
	leal	8(%eax), %eax
.LVL373:
	pushl	%edx
	pushl	%edx
	pushl	$16
	pushl	%eax
	call	net_buf_simple_add
.LVL374:
	.loc 1 4076 0
	addl	$8, %esp
	leal	155(%ebx), %ecx
	leal	203(%ebx), %edx
	pushl	%eax
	movzbl	-25(%ebp), %eax
.LVL375:
	pushl	%eax
.LVL376:
	movl	$sc_public_key, %eax
	call	smp_f4
.LVL377:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L336
	.loc 1 4077 0
	subl	$12, %esp
	pushl	%esi
	call	net_buf_unref
.LVL378:
	.loc 1 4078 0
	addl	$16, %esp
	jmp	.L332
.L336:
	.loc 1 4080 0
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	%esi, %edx
	.loc 1 4083 0
	addl	$120, %ebx
.LVL379:
	.loc 1 4084 0
	xorl	%edi, %edi
	.loc 1 4080 0
	call	smp_send
.LVL380:
.LBB136:
.LBB137:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-2
	pushl	%ebx
	call	atomic_and
.LVL381:
	addl	$16, %esp
	jmp	.L332
.LVL382:
.L346:
.LBE137:
.LBE136:
	.loc 1 4069 0
	movl	$8, %edi
.LVL383:
.L332:
	.loc 1 4085 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
.LFE96:
	.size	smp_send_pairing_confirm, .-smp_send_pairing_confirm
	.section	.text.unlikely.smp_send_pairing_confirm
.LCOLDE35:
	.section	.text.smp_send_pairing_confirm
.LHOTE35:
	.section	.text.unlikely.smp_public_key_slave.part.4,"ax",@progbits
.LCOLDB36:
	.section	.text.smp_public_key_slave.part.4,"ax",@progbits
.LHOTB36:
	.type	smp_public_key_slave.part.4, @function
smp_public_key_slave.part.4:
.LFB156:
	.loc 1 4886 0
	.cfi_startproc
.LVL384:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	pushl	%edx
	.loc 1 4893 0
	movb	124(%eax), %al
.LVL385:
	cmpb	$1, %al
	je	.L349
	jb	.L350
	cmpb	$2, %al
	je	.L351
	cmpb	$3, %al
	jne	.L360
.L350:
	.loc 1 4896 0
	leal	116(%ebx), %eax
	movl	$4, %edx
	call	atomic_set_bit
.LVL386:
	.loc 1 4897 0
	movl	%ebx, %eax
	call	smp_send_pairing_confirm
.LVL387:
	.loc 1 4898 0
	testb	%al, %al
	je	.L352
	jmp	.L348
.LVL388:
.L351:
.LBB142:
.LBB143:
	.loc 1 4877 0
	pushl	%eax
	pushl	%eax
	leal	332(%ebx), %eax
	pushl	$4
	pushl	%eax
	call	bt_rand
.LVL389:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L360
	.loc 1 4880 0
	movl	332(%ebx), %eax
	movl	$1000000, %ecx
	xorl	%edx, %edx
	.loc 1 4881 0
	movb	$0, 336(%ebx)
	.loc 1 4880 0
	divl	%ecx
	.loc 1 4882 0
	movl	bt_auth, %eax
	pushl	%ecx
	pushl	%ecx
	.loc 1 4880 0
	movl	%edx, 332(%ebx)
	.loc 1 4882 0
	pushl	%edx
	pushl	(%ebx)
	call	*(%eax)
.LVL390:
.LBE143:
.LBE142:
	.loc 1 4907 0
	leal	116(%ebx), %eax
	movl	$3, %edx
	call	atomic_set_bit
.LVL391:
	jmp	.L362
.L349:
	.loc 1 4910 0
	leal	116(%ebx), %eax
	movl	$3, %edx
	call	atomic_set_bit
.LVL392:
	.loc 1 4911 0
	leal	120(%ebx), %eax
	movl	$9, %edx
	call	atomic_set_bit
.LVL393:
	.loc 1 4912 0
	movl	bt_auth, %eax
	subl	$12, %esp
	pushl	(%ebx)
	call	*4(%eax)
.LVL394:
.L362:
	addl	$16, %esp
.L352:
.LVL395:
.LBB144:
.LBB145:
	.loc 1 4869 0
	pushl	%eax
	pushl	%eax
	leal	203(%ebx), %eax
	pushl	$bt_smp_dhkey_ready
	pushl	%eax
	call	bt_dh_key_gen
.LVL396:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L360
	.loc 1 4872 0
	leal	120(%ebx), %eax
	movl	$7, %edx
	call	atomic_set_bit
.LVL397:
	.loc 1 4873 0
	xorl	%eax, %eax
	jmp	.L348
.LVL398:
.L360:
.LBE145:
.LBE144:
	.loc 1 4915 0
	movb	$8, %al
.L348:
	.loc 1 4918 0
	movl	-4(%ebp), %ebx
.LVL399:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE156:
	.size	smp_public_key_slave.part.4, .-smp_public_key_slave.part.4
	.section	.text.unlikely.smp_public_key_slave.part.4
.LCOLDE36:
	.section	.text.smp_public_key_slave.part.4
.LHOTE36:
	.section	.text.unlikely.bt_smp_pkey_ready,"ax",@progbits
.LCOLDB37:
	.section	.text.bt_smp_pkey_ready,"ax",@progbits
.LHOTB37:
	.type	bt_smp_pkey_ready, @function
bt_smp_pkey_ready:
.LFB136:
	.loc 1 5083 0
	.cfi_startproc
.LVL400:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 5083 0
	movl	8(%ebp), %esi
	.loc 1 5086 0
	testl	%esi, %esi
	jne	.L364
	.loc 1 5088 0
	movb	$0, sc_local_pkey_valid
	.loc 1 5091 0
	jmp	.L363
.L364:
.LBB151:
.LBB152:
.LBB153:
	.loc 1 5100 0
	movl	$6, %edx
	movl	$bt_smp_pool+120, %eax
.LBE153:
.LBE152:
.LBE151:
	.loc 1 5093 0
	movl	$sc_public_key, %edi
	movl	$16, %ecx
	.loc 1 5094 0
	movb	$1, sc_local_pkey_valid
.LVL401:
	.loc 1 5093 0
	rep movsl
.LBB160:
.LBB158:
.LBB156:
	.loc 1 5100 0
	call	atomic_test_bit
.LVL402:
	testl	%eax, %eax
	je	.L363
.LVL403:
.LBB154:
.LBB155:
	.loc 1 4889 0
	movl	$bt_smp_pool, %eax
	call	sc_send_public_key
.LVL404:
	.loc 1 4890 0
	testb	%al, %al
	jne	.L368
	movl	$bt_smp_pool, %eax
.LVL405:
	call	smp_public_key_slave.part.4
.LVL406:
.LBE155:
.LBE154:
	.loc 1 5114 0
	testb	%al, %al
	je	.L363
.L368:
.LBE156:
.LBE158:
.LBE160:
	.loc 1 5118 0
	popl	%esi
	.cfi_remember_state
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB161:
.LBB159:
.LBB157:
	.loc 1 5115 0
	movzbl	%al, %edx
	movl	$bt_smp_pool, %eax
	jmp	smp_error
.LVL407:
.L363:
	.cfi_restore_state
.LBE157:
.LBE159:
.LBE161:
	.loc 1 5118 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE136:
	.size	bt_smp_pkey_ready, .-bt_smp_pkey_ready
	.section	.text.unlikely.bt_smp_pkey_ready
.LCOLDE37:
	.section	.text.bt_smp_pkey_ready
.LHOTE37:
	.section	.text.unlikely.smp_public_key,"ax",@progbits
.LCOLDB38:
	.section	.text.smp_public_key,"ax",@progbits
.LHOTB38:
	.type	smp_public_key, @function
smp_public_key:
.LFB133:
	.loc 1 4920 0
	.cfi_startproc
.LVL408:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4924 0
	movl	$8, %ecx
	.loc 1 4920 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4921 0
	movl	12(%ebp), %eax
	.loc 1 4920 0
	movl	8(%ebp), %ebx
	.loc 1 4921 0
	movl	8(%eax), %edx
.LVL409:
	.loc 1 4924 0
	leal	203(%ebx), %eax
	movl	%eax, %edi
	movl	%edx, %esi
	rep movsl
	.loc 1 4925 0
	leal	235(%ebx), %ecx
	leal	32(%edx), %esi
	movl	%ecx, %edi
	movl	$8, %ecx
	rep movsl
	.loc 1 4926 0
	pushl	$64
	pushl	$sc_debug_public_key
	pushl	%eax
	call	memcmp
.LVL410:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L376
	.loc 1 4928 0
	leal	120(%ebx), %eax
	movl	$11, %edx
	call	atomic_set_bit
.LVL411:
.L376:
	.loc 1 4959 0
	cmpb	$0, sc_local_pkey_valid
	jne	.L377
	.loc 1 4960 0
	leal	120(%ebx), %eax
	movl	$6, %edx
	call	atomic_set_bit
.LVL412:
	.loc 1 4961 0
	xorl	%eax, %eax
	jmp	.L378
.L377:
.LVL413:
.LBB166:
.LBB167:
.LBB168:
.LBB169:
	.loc 1 4889 0
	movl	%ebx, %eax
	call	sc_send_public_key
.LVL414:
	.loc 1 4890 0
	testb	%al, %al
	jne	.L378
.LBE169:
.LBE168:
.LBE167:
.LBE166:
	.loc 1 4968 0
	leal	-12(%ebp), %esp
.LBB176:
.LBB174:
.LBB172:
.LBB170:
	movl	%ebx, %eax
.LVL415:
.LBE170:
.LBE172:
.LBE174:
.LBE176:
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL416:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB177:
.LBB175:
.LBB173:
.LBB171:
	jmp	smp_public_key_slave.part.4
.LVL417:
.L378:
	.cfi_restore_state
.LBE171:
.LBE173:
.LBE175:
.LBE177:
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
.LFE133:
	.size	smp_public_key, .-smp_public_key
	.section	.text.unlikely.smp_public_key
.LCOLDE38:
	.section	.text.smp_public_key
.LHOTE38:
	.section	.text.unlikely.smp_c1,"ax",@progbits
.LCOLDB39:
	.section	.text.smp_c1,"ax",@progbits
.LHOTB39:
	.type	smp_c1, @function
smp_c1:
.LFB95:
	.loc 1 4029 0
	.cfi_startproc
.LVL418:
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
	movl	%ecx, %esi
	.loc 1 4037 0
	movl	$7, %ecx
.LVL419:
	.loc 1 4029 0
	subl	$76, %esp
	.loc 1 4029 0
	movl	%eax, -80(%ebp)
	movl	12(%ebp), %eax
.LVL420:
	movl	%edx, -84(%ebp)
	movl	16(%ebp), %edx
.LVL421:
	movl	20(%ebp), %ebx
	movl	%eax, -76(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 4035 0
	movl	-76(%ebp), %eax
	movb	(%eax), %al
	movb	%al, -60(%ebp)
	.loc 1 4036 0
	movb	(%edx), %al
	movb	%al, -59(%ebp)
	.loc 1 4037 0
	leal	-58(%ebp), %eax
	movl	%eax, %edi
	.loc 1 4038 0
	leal	-51(%ebp), %eax
	.loc 1 4037 0
	rep movsb
.LVL422:
	.loc 1 4038 0
	movl	$7, %ecx
	movl	%eax, %edi
	movl	8(%ebp), %esi
.LVL423:
	rep movsb
.LVL424:
.L382:
.LBB184:
.LBB185:
	.loc 1 4022 0
	movl	-84(%ebp), %eax
	movb	(%eax,%ecx), %al
	xorb	-60(%ebp,%ecx), %al
	movb	%al, (%ebx,%ecx)
	incl	%ecx
.LVL425:
	.loc 1 4021 0
	cmpl	$16, %ecx
	jne	.L382
.LBE185:
.LBE184:
	.loc 1 4041 0
	pushl	%eax
	pushl	%ebx
	pushl	%ebx
	pushl	-80(%ebp)
	movl	%edx, -84(%ebp)
.LVL426:
	call	bt_encrypt_le
.LVL427:
	.loc 1 4042 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	-84(%ebp), %edx
	jne	.L383
.LVL428:
.LBB186:
.LBB187:
	.loc 1 4045 0
	movl	1(%edx), %eax
.LVL429:
	.loc 1 4047 0
	movl	$0, -32(%ebp)
.LVL430:
	.loc 1 4045 0
	movl	%eax, -44(%ebp)
	movw	5(%edx), %ax
	movw	%ax, -40(%ebp)
	.loc 1 4046 0
	movl	-76(%ebp), %eax
	movl	1(%eax), %eax
	movl	%eax, -38(%ebp)
	movl	-76(%ebp), %eax
	movw	5(%eax), %ax
	movw	%ax, -34(%ebp)
	.loc 1 4047 0
	xorl	%eax, %eax
.LVL431:
.L384:
.LBB188:
.LBB189:
	.loc 1 4022 0
	movb	-44(%ebp,%eax), %dl
	xorb	%dl, (%ebx,%eax)
	incl	%eax
.LVL432:
	.loc 1 4021 0
	cmpl	$16, %eax
	jne	.L384
.LVL433:
.LBE189:
.LBE188:
	.loc 1 4050 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	jne	.L390
	movl	-80(%ebp), %eax
	movl	%ebx, 16(%ebp)
	movl	%ebx, 12(%ebp)
	movl	%eax, 8(%ebp)
.LVL434:
.LBE187:
.LBE186:
	.loc 1 4051 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL435:
	popl	%esi
	.cfi_restore 6
.LVL436:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB191:
.LBB190:
	.loc 1 4050 0
	jmp	bt_encrypt_le
.LVL437:
.L383:
	.cfi_restore_state
.LBE190:
.LBE191:
	.loc 1 4051 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L386
.LVL438:
.L390:
	call	__stack_chk_fail
.LVL439:
.L386:
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
.LFE95:
	.size	smp_c1, .-smp_c1
	.section	.text.unlikely.smp_c1
.LCOLDE39:
	.section	.text.smp_c1
.LHOTE39:
	.section	.text.unlikely.legacy_pairing_confirm,"ax",@progbits
.LCOLDB40:
	.section	.text.legacy_pairing_confirm,"ax",@progbits
.LHOTB40:
	.type	legacy_pairing_confirm, @function
legacy_pairing_confirm:
.LFB107:
	.loc 1 4310 0
	.cfi_startproc
.LVL440:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4318 0
	movl	$9, %edx
	.loc 1 4310 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %ebx
	.loc 1 4318 0
	addl	$120, %eax
.LVL441:
	.loc 1 4310 0
	subl	$28, %esp
	.loc 1 4318 0
	movl	%eax, -32(%ebp)
	call	atomic_test_bit
.LVL442:
	testl	%eax, %eax
	jne	.L392
.LVL443:
.LBB198:
.LBB199:
	.loc 1 4319 0
	leal	116(%ebx), %eax
	movl	$4, %edx
	call	atomic_set_bit
.LVL444:
.LBB200:
.LBB201:
	.loc 1 4230 0
	movl	(%ebx), %esi
.LVL445:
	.loc 1 4233 0
	movl	$16, %ecx
	movl	$3, %edx
	movl	%esi, %eax
	call	smp_create_pdu
.LVL446:
	.loc 1 4234 0
	testl	%eax, %eax
	.loc 1 4233 0
	movl	%eax, %edi
.LVL447:
	.loc 1 4235 0
	movb	$8, -25(%ebp)
	.loc 1 4234 0
	je	.L393
	.loc 1 4237 0
	leal	8(%eax), %eax
.LVL448:
	pushl	%edx
	pushl	%edx
	pushl	$16
	pushl	%eax
	call	net_buf_simple_add
.LVL449:
	movl	%eax, -36(%ebp)
.LVL450:
	.loc 1 4239 0
	leal	78(%esi), %eax
.LVL451:
	.loc 1 4238 0
	pushl	-36(%ebp)
	.loc 1 4239 0
	addl	$71, %esi
.LVL452:
	.loc 1 4238 0
	leal	125(%ebx), %ecx
	leal	155(%ebx), %edx
	pushl	%eax
	leal	132(%ebx), %eax
	pushl	%esi
	pushl	%eax
	leal	187(%ebx), %eax
	call	smp_c1
.LVL453:
	addl	$32, %esp
	testl	%eax, %eax
	je	.L394
	.loc 1 4240 0
	subl	$12, %esp
	pushl	%edi
	call	net_buf_unref
.LVL454:
	addl	$16, %esp
	jmp	.L393
.L394:
	.loc 1 4243 0
	movl	%ebx, %eax
	xorl	%ecx, %ecx
	movl	%edi, %edx
	call	smp_send
.LVL455:
.LBB202:
.LBB203:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-2
	pushl	-32(%ebp)
	call	atomic_and
.LVL456:
	addl	$16, %esp
	jmp	.L398
.LVL457:
.L392:
.LBE203:
.LBE202:
.LBE201:
.LBE200:
.LBE199:
.LBE198:
	.loc 1 4323 0
	movl	-32(%ebp), %eax
	xorl	%edx, %edx
	call	atomic_set_bit
.LVL458:
.L398:
	.loc 1 4325 0
	movb	$0, -25(%ebp)
.L393:
	.loc 1 4326 0
	movb	-25(%ebp), %al
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL459:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL460:
	ret
	.cfi_endproc
.LFE107:
	.size	legacy_pairing_confirm, .-legacy_pairing_confirm
	.section	.text.unlikely.legacy_pairing_confirm
.LCOLDE40:
	.section	.text.legacy_pairing_confirm
.LHOTE40:
	.section	.text.unlikely.smp_pairing_confirm,"ax",@progbits
.LCOLDB41:
	.section	.text.smp_pairing_confirm,"ax",@progbits
.LHOTB41:
	.type	smp_pairing_confirm, @function
smp_pairing_confirm:
.LFB119:
	.loc 1 4576 0
	.cfi_startproc
.LVL461:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL462:
	pushl	%esi
.LVL463:
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4579 0
	movl	12(%ebp), %eax
	.loc 1 4576 0
	movl	8(%ebp), %ebx
	.loc 1 4579 0
	movl	8(%eax), %eax
	movl	(%eax), %esi
	movl	8(%eax), %edx
	movl	4(%eax), %ecx
	movl	12(%eax), %eax
	movl	%esi, 139(%ebx)
	.loc 1 4588 0
	leal	120(%ebx), %esi
	.loc 1 4579 0
	movl	%edx, 147(%ebx)
	movl	%eax, 151(%ebx)
	movl	%ecx, 143(%ebx)
	.loc 1 4588 0
	movl	$5, %edx
	movl	%esi, %eax
	call	atomic_test_bit
.LVL464:
	testl	%eax, %eax
	jne	.L400
	.loc 1 4589 0
	movl	%ebx, %eax
	.loc 1 4607 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4589 0
	jmp	legacy_pairing_confirm
.LVL465:
.L400:
	.cfi_restore_state
	.loc 1 4591 0
	movb	124(%ebx), %al
	cmpb	$1, %al
	je	.L402
	cmpb	$2, %al
	jne	.L406
	jmp	.L404
.L402:
	.loc 1 4596 0
	movl	$9, %edx
	movl	%esi, %eax
	call	atomic_test_bit
.LVL466:
	testl	%eax, %eax
	je	.L404
	.loc 1 4597 0
	movl	%esi, %eax
	xorl	%edx, %edx
	call	atomic_set_bit
.LVL467:
	.loc 1 4598 0
	xorl	%eax, %eax
	jmp	.L401
.L404:
	.loc 1 4600 0
	leal	116(%ebx), %eax
	movl	$4, %edx
	call	atomic_set_bit
.LVL468:
	.loc 1 4601 0
	movl	%ebx, %eax
	.loc 1 4607 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4601 0
	jmp	smp_send_pairing_confirm
.LVL469:
.L406:
	.cfi_restore_state
	.loc 1 4605 0
	movb	$8, %al
.L401:
	.loc 1 4607 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE119:
	.size	smp_pairing_confirm, .-smp_pairing_confirm
	.section	.text.unlikely.smp_pairing_confirm
.LCOLDE41:
	.section	.text.smp_pairing_confirm
.LHOTE41:
	.section	.text.unlikely.smp_pairing_random,"ax",@progbits
.LCOLDB42:
	.section	.text.smp_pairing_random,"ax",@progbits
.LHOTB42:
	.type	smp_pairing_random, @function
smp_pairing_random:
.LFB124:
	.loc 1 4728 0
	.cfi_startproc
.LVL470:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$140, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4728 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL471:
	.loc 1 4733 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
	movl	8(%eax), %edx
	movl	(%eax), %esi
	movl	4(%eax), %ecx
	movl	12(%eax), %eax
	movl	%edx, 179(%ebx)
.LVL472:
	movl	%esi, 171(%ebx)
	.loc 1 4734 0
	movl	$5, %edx
	.loc 1 4733 0
	movl	%eax, 183(%ebx)
	.loc 1 4734 0
	leal	120(%ebx), %eax
	.loc 1 4733 0
	movl	%ecx, 175(%ebx)
	.loc 1 4734 0
	movl	%eax, -140(%ebp)
	call	atomic_test_bit
.LVL473:
	testl	%eax, %eax
	jne	.L409
.LVL474:
.LBB212:
.LBB213:
	.loc 1 4270 0
	movl	(%ebx), %esi
.LVL475:
	.loc 1 4274 0
	leal	187(%ebx), %eax
	leal	-108(%ebp), %edi
	leal	125(%ebx), %ecx
	leal	171(%ebx), %edx
	movl	%eax, -140(%ebp)
	pushl	%edi
	.loc 1 4275 0
	leal	78(%esi), %eax
	.loc 1 4274 0
	pushl	%eax
	.loc 1 4275 0
	leal	71(%esi), %eax
	.loc 1 4274 0
	pushl	%eax
	leal	132(%ebx), %eax
	pushl	%eax
	leal	187(%ebx), %eax
	call	smp_c1
.LVL476:
	.loc 1 4276 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L428
.LVL477:
	.loc 1 4280 0
	pushl	%eax
	leal	139(%ebx), %eax
	pushl	$16
	pushl	%edi
	.loc 1 4281 0
	movl	$4, %esi
.LVL478:
	.loc 1 4280 0
	pushl	%eax
	call	memcmp
.LVL479:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L413
.LVL480:
.LBB214:
.LBB215:
	.loc 1 4169 0
	movl	171(%ebx), %eax
	movl	175(%ebx), %edx
	movl	%eax, -108(%ebp)
	.loc 1 4170 0
	movl	155(%ebx), %eax
	.loc 1 4169 0
	movl	%edx, -104(%ebp)
	.loc 1 4170 0
	movl	159(%ebx), %edx
	movl	%eax, -100(%ebp)
	.loc 1 4171 0
	pushl	%eax
	pushl	%edi
	pushl	%edi
	pushl	-140(%ebp)
	.loc 1 4170 0
	movl	%edx, -96(%ebp)
	.loc 1 4171 0
	call	bt_encrypt_le
.LVL481:
.LBE215:
.LBE214:
	.loc 1 4299 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L428
	.loc 1 4302 0
	movl	-108(%ebp), %eax
	.loc 1 4304 0
	movl	$1, %edx
	.loc 1 4302 0
	movl	%eax, 187(%ebx)
	movl	-104(%ebp), %eax
	movl	%eax, 191(%ebx)
	movl	-100(%ebp), %eax
	movl	%eax, 195(%ebx)
	movl	-96(%ebp), %eax
	movl	%eax, 199(%ebx)
	jmp	.L430
.LVL482:
.L409:
.LBE213:
.LBE212:
	.loc 1 4737 0
	movb	124(%ebx), %al
	cmpb	$2, %al
	ja	.L414
	cmpb	$1, %al
	jb	.L416
	jmp	.L431
.L414:
	cmpb	$3, %al
	jne	.L428
.LVL483:
	.loc 1 4739 0
	leal	203(%ebx), %edx
.LVL484:
.LBB216:
.LBB217:
	.loc 1 3897 0
	leal	-108(%ebp), %eax
	movl	$32, %ecx
	.loc 1 3900 0
	leal	-124(%ebp), %edi
	.loc 1 3897 0
	call	sys_memcpy_swap
.LVL485:
	.loc 1 3898 0
	leal	-76(%ebp), %eax
	movl	$32, %ecx
	movl	$sc_public_key, %edx
	call	sys_memcpy_swap
.LVL486:
.LBE217:
.LBE216:
	.loc 1 4739 0
	leal	155(%ebx), %edx
.LVL487:
.LBB221:
.LBB218:
	.loc 1 3899 0
	leal	-44(%ebp), %eax
	movl	$16, %ecx
	call	sys_memcpy_swap
.LVL488:
.LBE218:
.LBE221:
	.loc 1 4739 0
	leal	171(%ebx), %edx
.LVL489:
.LBB222:
.LBB219:
	.loc 1 3900 0
	movl	$16, %ecx
	movl	%edi, %eax
	call	sys_memcpy_swap
.LVL490:
	.loc 1 3901 0
	subl	$12, %esp
	leal	-108(%ebp), %edx
	movl	$80, %ecx
	pushl	%edi
	movl	%edi, %eax
	call	bt_smp_aes_cmac
.LVL491:
	.loc 1 3902 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L428
	movl	-112(%ebp), %eax
.LVL492:
	.loc 1 3907 0
	movl	$1000000, %esi
	xorl	%edx, %edx
	bswap	%eax
.LVL493:
	divl	%esi
.LBE219:
.LBE222:
	.loc 1 4743 0
	leal	120(%ebx), %eax
.LBB223:
.LBB220:
	.loc 1 3907 0
	movl	%edx, %edi
.LVL494:
.LBE220:
.LBE223:
	.loc 1 4743 0
	movl	$9, %edx
.LVL495:
	call	atomic_set_bit
.LVL496:
	.loc 1 4744 0
	pushl	%eax
	pushl	%eax
	movl	bt_auth, %eax
	pushl	%edi
	pushl	(%ebx)
	call	*8(%eax)
.LVL497:
	.loc 1 4745 0
	addl	$16, %esp
	jmp	.L416
.LVL498:
.L431:
.LBB224:
.LBB225:
	.loc 1 4712 0
	movzbl	336(%ebx), %ecx
	movl	332(%ebx), %edx
	.loc 1 4718 0
	leal	-108(%ebp), %edi
	leal	203(%ebx), %eax
	pushl	%esi
	pushl	%esi
	pushl	%edi
	.loc 1 4719 0
	movl	$8, %esi
	.loc 1 4712 0
	shrl	%cl, %edx
	.loc 1 4718 0
	leal	171(%ebx), %ecx
	.loc 1 4712 0
	andl	$1, %edx
.LVL499:
	.loc 1 4718 0
	orl	$-128, %edx
.LVL500:
	movzbl	%dl, %edx
	pushl	%edx
	movl	$sc_public_key, %edx
	call	smp_f4
.LVL501:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L413
	.loc 1 4722 0
	leal	139(%ebx), %eax
	pushl	%edx
	pushl	$16
	pushl	%edi
	.loc 1 4723 0
	movl	$4, %esi
	.loc 1 4722 0
	pushl	%eax
	call	memcmp
.LVL502:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L413
.LBE225:
.LBE224:
	.loc 1 4754 0
	leal	116(%ebx), %edi
	movl	$3, %edx
.LBB227:
.LBB226:
	.loc 1 4725 0
	xorl	%esi, %esi
.LVL503:
.LBE226:
.LBE227:
	.loc 1 4754 0
	movl	%edi, %eax
	call	atomic_set_bit
.LVL504:
	.loc 1 4756 0
	movl	%ebx, %eax
	call	smp_send_pairing_random
.LVL505:
	.loc 1 4757 0
	movb	336(%ebx), %al
	incl	%eax
	.loc 1 4758 0
	cmpb	$20, %al
	.loc 1 4757 0
	movb	%al, 336(%ebx)
	.loc 1 4758 0
	jne	.L421
	.loc 1 4759 0
	movl	%edi, %eax
	movl	$13, %edx
	call	atomic_set_bit
.LVL506:
	.loc 1 4760 0
	movl	-140(%ebp), %eax
	movl	$13, %edx
	call	atomic_set_bit
.LVL507:
	.loc 1 4761 0
	jmp	.L413
.L421:
	.loc 1 4763 0
	addl	$155, %ebx
	pushl	%eax
	pushl	%eax
	pushl	$16
	pushl	%ebx
	call	bt_rand
.LVL508:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L428
	jmp	.L413
.L416:
	.loc 1 4770 0
	leal	116(%ebx), %eax
	movl	$13, %edx
	call	atomic_set_bit
.LVL509:
	.loc 1 4771 0
	movl	$13, %edx
.L430:
	leal	120(%ebx), %eax
	.loc 1 4773 0
	xorl	%esi, %esi
	.loc 1 4771 0
	call	atomic_set_bit
.LVL510:
	.loc 1 4772 0
	movl	%ebx, %eax
	call	smp_send_pairing_random
.LVL511:
	.loc 1 4773 0
	jmp	.L413
.L428:
	.loc 1 4768 0
	movl	$8, %esi
.L413:
	.loc 1 4774 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%esi, %eax
	je	.L423
	call	__stack_chk_fail
.LVL512:
.L423:
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
.LFE124:
	.size	smp_pairing_random, .-smp_pairing_random
	.section	.text.unlikely.smp_pairing_random
.LCOLDE42:
	.section	.text.smp_pairing_random
.LHOTE42:
	.section	.text.unlikely.smp_ident_addr_info,"ax",@progbits
.LCOLDB43:
	.section	.text.smp_ident_addr_info,"ax",@progbits
.LHOTB43:
	.type	smp_ident_addr_info, @function
smp_ident_addr_info:
.LFB127:
	.loc 1 4815 0
	.cfi_startproc
.LVL513:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL514:
	pushl	%edi
.LVL515:
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4817 0
	movl	12(%ebp), %eax
	movl	8(%eax), %eax
.LBB243:
.LBB244:
	.loc 1 1478 0
	cmpb	$0, (%eax)
.LBE244:
.LBE243:
	.loc 1 4817 0
	movl	%eax, -28(%ebp)
.LVL516:
.LBB246:
.LBB245:
	.loc 1 1478 0
	je	.L433
.LVL517:
.LBE245:
.LBE246:
	.loc 1 4819 0
	movb	6(%eax), %al
.LVL518:
	.loc 1 4821 0
	movl	$10, %esi
	.loc 1 4819 0
	movb	%al, -32(%ebp)
	andl	$-64, %eax
	cmpb	$-64, %al
	jne	.L434
.L433:
	.loc 1 4816 0
	movl	8(%ebp), %eax
	.loc 1 4823 0
	movl	$10, %edx
	.loc 1 4816 0
	movl	(%eax), %ebx
	.loc 1 4823 0
	addl	$120, %eax
	call	atomic_test_bit
.LVL519:
	testl	%eax, %eax
	je	.L435
.LBB247:
	.loc 1 4826 0
	leal	64(%ebx), %eax
	pushl	%edx
	pushl	%edx
	.loc 1 4829 0
	movl	$8, %esi
	.loc 1 4826 0
	pushl	%eax
	pushl	$2
	movl	%eax, -32(%ebp)
	call	bt_keys_get_type
.LVL520:
	.loc 1 4827 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L434
	.loc 1 4832 0
	cmpb	$0, 3(%ebx)
	leal	78(%ebx), %esi
	leal	71(%ebx), %ecx
	cmove	%esi, %ecx
.LVL521:
.LBB248:
.LBB249:
	.loc 1 1467 0
	cmpb	$1, (%ecx)
	jne	.L439
.LVL522:
.LBE249:
.LBE248:
	.loc 1 4836 0
	movb	6(%ecx), %dl
	andl	$-64, %edx
	cmpb	$64, %dl
	jne	.L439
.LVL523:
.LBB250:
.LBB251:
	.loc 1 1455 0
	movl	1(%ecx), %esi
	movl	%esi, 60(%eax)
	movw	5(%ecx), %cx
.LVL524:
	movw	%cx, 64(%eax)
.LVL525:
.LBE251:
.LBE250:
.LBB252:
.LBB253:
	.loc 1 1478 0
	cmpb	$0, 64(%ebx)
	je	.L439
.LVL526:
.LBE253:
.LBE252:
	.loc 1 4838 0
	movb	70(%ebx), %cl
	andl	$-64, %ecx
	cmpb	$-64, %cl
	je	.L439
.LVL527:
.LBB254:
.LBB255:
	.loc 1 1459 0
	movl	%eax, %edi
	movl	-28(%ebp), %esi
	movl	$7, %ecx
	rep movsb
.LVL528:
.LBE255:
.LBE254:
.LBB257:
.LBB258:
	movl	-28(%ebp), %esi
	movl	$7, %ecx
	leal	64(%ebx), %edi
.LBE258:
.LBE257:
	.loc 1 4841 0
	subl	$12, %esp
.LBB260:
.LBB256:
	.loc 1 1459 0
	movl	%eax, -32(%ebp)
.LVL529:
.LBE256:
.LBE260:
.LBB261:
.LBB259:
	rep movsb
.LVL530:
.LBE259:
.LBE261:
	.loc 1 4841 0
	pushl	%ebx
	call	bt_conn_identity_resolved
.LVL531:
	movl	-32(%ebp), %eax
	addl	$16, %esp
.LVL532:
.L439:
	.loc 1 4844 0
	subl	$12, %esp
	pushl	%eax
	call	bt_id_add
.LVL533:
	addl	$16, %esp
.L435:
.LBE247:
	.loc 1 4846 0
	movl	8(%ebp), %eax
	movl	8(%ebp), %edi
	movb	338(%eax), %al
	movb	%al, %dl
	andl	$-3, %edx
	.loc 1 4847 0
	testb	$4, %al
	.loc 1 4846 0
	movb	%dl, 338(%edi)
	.loc 1 4847 0
	je	.L441
	.loc 1 4848 0
	movl	%edi, %eax
	movl	$10, %edx
	addl	$116, %eax
	call	atomic_set_bit
.LVL534:
.L441:
	.loc 1 4854 0
	movl	8(%ebp), %eax
	.loc 1 4857 0
	xorl	%esi, %esi
	.loc 1 4854 0
	testl	$16776960, 336(%eax)
	jne	.L434
.LVL535:
.LBB262:
.LBB263:
	.loc 1 3962 0
	call	smp_reset
.LVL536:
.L434:
.LBE263:
.LBE262:
	.loc 1 4858 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
.LFE127:
	.size	smp_ident_addr_info, .-smp_ident_addr_info
	.section	.text.unlikely.smp_ident_addr_info
.LCOLDE43:
	.section	.text.smp_ident_addr_info
.LHOTE43:
	.section	.text.unlikely.bt_smp_send_security_req,"ax",@progbits
.LCOLDB44:
	.section	.text.bt_smp_send_security_req,"ax",@progbits
.LHOTB44:
	.globl	bt_smp_send_security_req
	.type	bt_smp_send_security_req, @function
bt_smp_send_security_req:
.LFB115:
	.loc 1 4459 0
	.cfi_startproc
.LVL537:
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
	.loc 1 4466 0
	movl	$-57, %esi
	.loc 1 4459 0
	subl	$28, %esp
	.loc 1 4464 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL538:
	.loc 1 4465 0
	testl	%eax, %eax
	je	.L456
	.loc 1 4468 0
	leal	120(%eax), %ebx
	movl	%eax, %edi
	movl	$4, %edx
	.loc 1 4469 0
	movl	$-5, %esi
	.loc 1 4468 0
	movl	%ebx, %eax
.LVL539:
	call	atomic_test_bit
.LVL540:
	testl	%eax, %eax
	jne	.L456
	.loc 1 4471 0
	movl	$3, %edx
	movl	%ebx, %eax
	call	atomic_test_bit
.LVL541:
	testl	%eax, %eax
	movl	%eax, %esi
	jne	.L468
.LVL542:
.LBB270:
.LBB271:
	.loc 1 4423 0
	movl	8(%ebp), %eax
	movb	9(%eax), %al
	cmpb	$3, %al
	je	.L457
	ja	.L458
	cmpb	$1, %al
	jnb	.L459
	jmp	.L471
.L458:
	cmpb	$4, %al
	je	.L460
	jmp	.L471
.L457:
	.loc 1 4430 0
	call	get_io_capa
.LVL543:
	cmpb	$3, %al
	setne	%al
	jmp	.L461
.L460:
	.loc 1 4432 0
	call	get_io_capa
.LVL544:
	xorl	%edx, %edx
	cmpb	$3, %al
	je	.L462
	movzbl	sc_supported, %edx
.L462:
	movb	%dl, %al
	andl	$1, %eax
.L461:
.LBE271:
.LBE270:
	.loc 1 4474 0
	testb	%al, %al
	je	.L471
.L459:
	.loc 1 4477 0
	movl	8(%ebp), %eax
	movl	$11, %edx
	movl	$1, %ecx
	call	smp_create_pdu
.LVL545:
	.loc 1 4479 0
	testl	%eax, %eax
	.loc 1 4477 0
	movl	%eax, %edx
.LVL546:
	.loc 1 4479 0
	je	.L472
.LVL547:
	.loc 1 4482 0
	pushl	%eax
	pushl	%eax
	leal	8(%edx), %eax
	pushl	$1
	movl	%edx, -32(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL548:
.LBB272:
.LBB273:
	.loc 1 4407 0
	addl	$16, %esp
	.loc 1 4410 0
	cmpb	$1, sc_supported
.LBE273:
.LBE272:
	.loc 1 4482 0
	movl	%eax, -28(%ebp)
.LVL549:
.LBB277:
.LBB274:
	.loc 1 4410 0
	sbbl	%ebx, %ebx
	andl	$-8, %ebx
	addl	$9, %ebx
.LVL550:
	.loc 1 4412 0
	call	get_io_capa
.LVL551:
	.loc 1 4413 0
	movb	%bl, %cl
.LBE274:
.LBE277:
.LBB278:
.LBB279:
	.loc 1 3525 0
	movl	-32(%ebp), %edx
.LBE279:
.LBE278:
.LBB281:
.LBB275:
	.loc 1 4413 0
	orl	$4, %ebx
.LVL552:
	andl	$-5, %ecx
.LVL553:
	cmpb	$3, %al
.LBE275:
.LBE281:
	.loc 1 4483 0
	movl	-28(%ebp), %eax
.LBB282:
.LBB276:
	.loc 1 4413 0
	cmove	%ecx, %ebx
.LBE276:
.LBE282:
	.loc 1 4483 0
	movb	%bl, (%eax)
.LVL554:
.LBB283:
.LBB280:
	.loc 1 3525 0
	pushl	$0
	pushl	%edx
	pushl	$6
	pushl	8(%ebp)
	call	bt_l2cap_send_cb
.LVL555:
.LBE280:
.LBE283:
	.loc 1 4485 0
	leal	116(%edi), %eax
	movl	$5, %edx
	call	atomic_set_bit
.LVL556:
	.loc 1 4486 0
	addl	$16, %esp
	jmp	.L456
.LVL557:
.L468:
	.loc 1 4472 0
	movl	$-16, %esi
	jmp	.L456
.LVL558:
.L471:
	.loc 1 4475 0
	movl	$-22, %esi
	jmp	.L456
.LVL559:
.L472:
	.loc 1 4480 0
	movl	$-55, %esi
.LVL560:
.L456:
	.loc 1 4487 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
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
.LFE115:
	.size	bt_smp_send_security_req, .-bt_smp_send_security_req
	.section	.text.unlikely.bt_smp_send_security_req
.LCOLDE44:
	.section	.text.bt_smp_send_security_req
.LHOTE44:
	.section	.text.unlikely.bt_smp_sign_verify,"ax",@progbits
.LCOLDB45:
	.section	.text.bt_smp_sign_verify,"ax",@progbits
.LHOTB45:
	.globl	bt_smp_sign_verify
	.type	bt_smp_sign_verify, @function
bt_smp_sign_verify:
.LFB160:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-35, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE160:
	.size	bt_smp_sign_verify, .-bt_smp_sign_verify
	.section	.text.unlikely.bt_smp_sign_verify
.LCOLDE45:
	.section	.text.bt_smp_sign_verify
.LHOTE45:
	.section	.text.unlikely.bt_smp_sign,"ax",@progbits
.LCOLDB46:
	.section	.text.bt_smp_sign,"ax",@progbits
.LHOTB46:
	.globl	bt_smp_sign
	.type	bt_smp_sign, @function
bt_smp_sign:
.LFB141:
	.loc 1 5207 0
	.cfi_startproc
.LVL561:
	.loc 1 5207 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5209 0
	movl	$-35, %eax
	.loc 1 5207 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5209 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE141:
	.size	bt_smp_sign, .-bt_smp_sign
	.section	.text.unlikely.bt_smp_sign
.LCOLDE46:
	.section	.text.bt_smp_sign
.LHOTE46:
	.section	.text.unlikely.bt_smp_auth_passkey_entry,"ax",@progbits
.LCOLDB47:
	.section	.text.bt_smp_auth_passkey_entry,"ax",@progbits
.LHOTB47:
	.globl	bt_smp_auth_passkey_entry
	.type	bt_smp_auth_passkey_entry, @function
bt_smp_auth_passkey_entry:
.LFB143:
	.loc 1 5215 0
	.cfi_startproc
.LVL562:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5217 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL563:
	.loc 1 5218 0
	testl	%eax, %eax
	jne	.L480
.LVL564:
.L482:
	.loc 1 5219 0
	movl	$-22, %esi
	jmp	.L481
.LVL565:
.L480:
	.loc 1 5221 0
	leal	120(%eax), %edi
	movl	%eax, %ebx
	movl	$9, %edx
	movl	%edi, %eax
.LVL566:
	call	atomic_test_and_clear_bit
.LVL567:
	testl	%eax, %eax
	je	.L482
	.loc 1 5224 0
	movl	$5, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL568:
	movl	%eax, %esi
.LBB286:
.LBB287:
	.loc 1 4330 0
	movl	12(%ebp), %eax
.LBE287:
.LBE286:
	.loc 1 5224 0
	testl	%esi, %esi
	jne	.L483
.LVL569:
.LBB289:
.LBB288:
	.loc 1 4330 0
	movl	%eax, 187(%ebx)
	.loc 1 4331 0
	xorl	%edx, %edx
	movl	%edi, %eax
.LVL570:
	call	atomic_test_and_clear_bit
.LVL571:
	testl	%eax, %eax
	je	.L495
	.loc 1 4334 0
	movl	%ebx, %eax
	call	legacy_pairing_confirm
.LVL572:
	testb	%al, %al
	je	.L485
	.loc 1 4335 0
	movl	$1, %edx
	movl	%ebx, %eax
	call	smp_error
.LVL573:
	jmp	.L481
.L485:
	.loc 1 4344 0
	leal	116(%ebx), %eax
	movl	$4, %edx
	call	atomic_set_bit
.LVL574:
	jmp	.L481
.LVL575:
.L483:
.LBE288:
.LBE289:
	.loc 1 5228 0
	movl	%eax, 332(%ebx)
	.loc 1 5239 0
	xorl	%edx, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL576:
	.loc 1 5238 0
	testl	%eax, %eax
	je	.L495
	.loc 1 5240 0
	movl	%ebx, %eax
	call	smp_send_pairing_confirm
.LVL577:
	testb	%al, %al
	je	.L487
	.loc 1 5241 0
	movl	$1, %edx
	movl	%ebx, %eax
	call	smp_error
.LVL578:
	jmp	.L495
.L487:
	.loc 1 5244 0
	leal	116(%ebx), %eax
	movl	$4, %edx
	call	atomic_set_bit
.LVL579:
.L495:
	.loc 1 5246 0
	xorl	%esi, %esi
.LVL580:
.L481:
	.loc 1 5247 0
	addl	$12, %esp
	movl	%esi, %eax
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
.LFE143:
	.size	bt_smp_auth_passkey_entry, .-bt_smp_auth_passkey_entry
	.section	.text.unlikely.bt_smp_auth_passkey_entry
.LCOLDE47:
	.section	.text.bt_smp_auth_passkey_entry
.LHOTE47:
	.section	.text.unlikely.bt_smp_auth_passkey_confirm,"ax",@progbits
.LCOLDB48:
	.section	.text.bt_smp_auth_passkey_confirm,"ax",@progbits
.LHOTB48:
	.globl	bt_smp_auth_passkey_confirm
	.type	bt_smp_auth_passkey_confirm, @function
bt_smp_auth_passkey_confirm:
.LFB144:
	.loc 1 5249 0
	.cfi_startproc
.LVL581:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5251 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL582:
	.loc 1 5252 0
	testl	%eax, %eax
	jne	.L497
.LVL583:
.L499:
	.loc 1 5253 0
	movl	$-22, %esi
	jmp	.L498
.LVL584:
.L497:
	.loc 1 5255 0
	leal	120(%eax), %ebx
	movl	%eax, %edi
	movl	$9, %edx
	movl	%ebx, %eax
.LVL585:
	call	atomic_test_and_clear_bit
.LVL586:
	testl	%eax, %eax
	je	.L499
	.loc 1 5258 0
	movl	$7, %edx
	movl	%ebx, %eax
	call	atomic_test_bit
.LVL587:
	testl	%eax, %eax
	je	.L500
	.loc 1 5259 0
	movl	$8, %edx
	movl	%ebx, %eax
	jmp	.L511
.L500:
	.loc 1 5262 0
	movl	$13, %edx
	movl	%ebx, %eax
	call	atomic_test_bit
.LVL588:
	movl	%eax, %esi
	.loc 1 5263 0
	movl	$8, %edx
	movl	%ebx, %eax
	.loc 1 5262 0
	testl	%esi, %esi
	je	.L501
.L511:
	.loc 1 5263 0
	call	atomic_set_bit
.LVL589:
	.loc 1 5264 0
	xorl	%esi, %esi
	jmp	.L498
.L501:
	.loc 1 5266 0
	call	atomic_test_bit
.LVL590:
	testl	%eax, %eax
	je	.L498
.LBB290:
	.loc 1 5268 0
	movl	%edi, %eax
	call	compute_and_check_and_send_slave_dhcheck
.LVL591:
	.loc 1 5269 0
	testb	%al, %al
	je	.L498
	.loc 1 5270 0
	movzbl	%al, %edx
	movl	%edi, %eax
.LVL592:
	call	smp_error
.LVL593:
.L498:
.LBE290:
	.loc 1 5274 0
	addl	$12, %esp
	movl	%esi, %eax
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
.LFE144:
	.size	bt_smp_auth_passkey_confirm, .-bt_smp_auth_passkey_confirm
	.section	.text.unlikely.bt_smp_auth_passkey_confirm
.LCOLDE48:
	.section	.text.bt_smp_auth_passkey_confirm
.LHOTE48:
	.section	.text.unlikely.bt_smp_auth_cancel,"ax",@progbits
.LCOLDB49:
	.section	.text.bt_smp_auth_cancel,"ax",@progbits
.LHOTB49:
	.globl	bt_smp_auth_cancel
	.type	bt_smp_auth_cancel, @function
bt_smp_auth_cancel:
.LFB145:
	.loc 1 5276 0
	.cfi_startproc
.LVL594:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 5278 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL595:
	.loc 1 5279 0
	testl	%eax, %eax
	jne	.L513
.LVL596:
.L515:
	.loc 1 5280 0
	movl	$-22, %eax
	jmp	.L514
.LVL597:
.L513:
	movl	%eax, %ebx
	.loc 1 5282 0
	leal	120(%eax), %eax
.LVL598:
	movl	$9, %edx
	call	atomic_test_and_clear_bit
.LVL599:
	testl	%eax, %eax
	je	.L515
	.loc 1 5285 0
	movb	124(%ebx), %al
	cmpb	$2, %al
	ja	.L516
	cmpb	$1, %al
	.loc 1 5292 0
	movl	$8, %edx
	.loc 1 5285 0
	jb	.L527
	.loc 1 5288 0
	movl	$1, %edx
	jmp	.L527
.L516:
	.loc 1 5285 0
	cmpb	$3, %al
	.loc 1 5290 0
	movl	$4, %edx
	.loc 1 5285 0
	jne	.L528
.L527:
	.loc 1 5296 0
	popl	%ecx
	.loc 1 5292 0
	movl	%ebx, %eax
	.loc 1 5296 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL600:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5292 0
	jmp	smp_error
.LVL601:
.L528:
	.cfi_restore_state
	.loc 1 5294 0
	xorl	%eax, %eax
.LVL602:
.L514:
	.loc 1 5296 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	bt_smp_auth_cancel, .-bt_smp_auth_cancel
	.section	.text.unlikely.bt_smp_auth_cancel
.LCOLDE49:
	.section	.text.bt_smp_auth_cancel
.LHOTE49:
	.section	.text.unlikely.bt_smp_auth_pairing_confirm,"ax",@progbits
.LCOLDB50:
	.section	.text.bt_smp_auth_pairing_confirm,"ax",@progbits
.LHOTB50:
	.globl	bt_smp_auth_pairing_confirm
	.type	bt_smp_auth_pairing_confirm, @function
bt_smp_auth_pairing_confirm:
.LFB146:
	.loc 1 5298 0
	.cfi_startproc
.LVL603:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 5300 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL604:
	.loc 1 5301 0
	testl	%eax, %eax
	jne	.L530
.LVL605:
.L532:
	.loc 1 5302 0
	movl	$-22, %eax
	jmp	.L531
.LVL606:
.L530:
	.loc 1 5304 0
	leal	120(%eax), %esi
	movl	%eax, %ebx
	movl	$9, %edx
	movl	%esi, %eax
.LVL607:
	call	atomic_test_and_clear_bit
.LVL608:
	testl	%eax, %eax
	je	.L532
	.loc 1 5321 0
	movl	$5, %edx
	movl	%esi, %eax
	call	atomic_test_bit
.LVL609:
	testl	%eax, %eax
	leal	116(%ebx), %eax
	jne	.L533
	.loc 1 5322 0
	movl	$3, %edx
	call	atomic_set_bit
.LVL610:
	.loc 1 5324 0
	movl	%ebx, %eax
	call	send_pairing_rsp
.LVL611:
	movzbl	%al, %eax
	jmp	.L531
.L533:
	.loc 1 5326 0
	movl	$12, %edx
	call	atomic_set_bit
.LVL612:
	.loc 1 5327 0
	movl	%ebx, %eax
	call	send_pairing_rsp
.LVL613:
	.loc 1 5330 0
	cmpb	$1, %al
	sbbl	%eax, %eax
	notl	%eax
	andl	$-5, %eax
.LVL614:
.L531:
	.loc 1 5331 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE146:
	.size	bt_smp_auth_pairing_confirm, .-bt_smp_auth_pairing_confirm
	.section	.text.unlikely.bt_smp_auth_pairing_confirm
.LCOLDE50:
	.section	.text.bt_smp_auth_pairing_confirm
.LHOTE50:
	.section	.text.unlikely.bt_smp_update_keys,"ax",@progbits
.LCOLDB51:
	.section	.text.bt_smp_update_keys,"ax",@progbits
.LHOTB51:
	.globl	bt_smp_update_keys
	.type	bt_smp_update_keys, @function
bt_smp_update_keys:
.LFB147:
	.loc 1 5333 0
	.cfi_startproc
.LVL615:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5333 0
	movl	8(%ebp), %ebx
	.loc 1 5335 0
	movl	%ebx, %eax
	call	smp_chan_get
.LVL616:
	.loc 1 5336 0
	testl	%eax, %eax
	je	.L539
	.loc 1 5339 0
	leal	120(%eax), %edi
	movl	%eax, %esi
	movl	$3, %edx
	movl	%edi, %eax
.LVL617:
	call	atomic_test_bit
.LVL618:
	testl	%eax, %eax
	je	.L539
	.loc 1 5342 0
	movl	104(%ebx), %eax
	testl	%eax, %eax
	je	.L543
	.loc 1 5343 0
	subl	$12, %esp
	pushl	%eax
	call	bt_keys_clear
.LVL619:
	addl	$16, %esp
.L543:
	.loc 1 5345 0
	leal	64(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	bt_keys_get_addr
.LVL620:
	.loc 1 5346 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5345 0
	movl	%eax, 104(%ebx)
	.loc 1 5346 0
	je	.L539
	.loc 1 5350 0
	movl	$11, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL621:
	testl	%eax, %eax
	je	.L544
	.loc 1 5351 0
	movl	104(%ebx), %eax
	movl	$1, %edx
	addl	$8, %eax
	call	atomic_set_bit
.LVL622:
.L544:
	.loc 1 5353 0
	movb	124(%esi), %al
	decl	%eax
	cmpb	$2, %al
	movl	104(%ebx), %eax
	ja	.L545
	.loc 1 5357 0
	addl	$8, %eax
	xorl	%edx, %edx
	call	atomic_set_bit
.LVL623:
	.loc 1 5358 0
	jmp	.L547
.L545:
.LVL624:
	.loc 1 5361 0
	addl	$8, %eax
.LBB295:
.LBB296:
	.loc 1 870 0
	pushl	%edx
.LVL625:
	pushl	%edx
	pushl	$-2
	pushl	%eax
	call	atomic_and
.LVL626:
	addl	$16, %esp
.LVL627:
.L547:
.LBE296:
.LBE295:
	.loc 1 5364 0
	movb	129(%esi), %cl
	movb	136(%esi), %al
	movl	104(%ebx), %edx
.LVL628:
	cmpb	%cl, %al
	cmova	%ecx, %eax
	movb	%al, 7(%edx)
	.loc 1 5365 0
	movl	$5, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL629:
	testl	%eax, %eax
	je	.L539
	.loc 1 5366 0 discriminator 1
	movl	$10, %edx
	movl	%edi, %eax
	call	atomic_test_bit
.LVL630:
	.loc 1 5365 0 discriminator 1
	testl	%eax, %eax
	je	.L539
	.loc 1 5367 0
	pushl	%eax
	pushl	%eax
	pushl	$32
	pushl	104(%ebx)
	call	bt_keys_add_type
.LVL631:
	.loc 1 5368 0
	movl	104(%ebx), %eax
	movl	187(%esi), %edi
	.loc 1 5371 0
	addl	$16, %esp
	.loc 1 5368 0
	movl	191(%esi), %ecx
	movl	195(%esi), %edx
	movl	199(%esi), %esi
.LVL632:
	movl	%edi, 26(%eax)
	movl	%ecx, 30(%eax)
	movl	%edx, 34(%eax)
	movl	%esi, 38(%eax)
	.loc 1 5370 0
	movl	104(%ebx), %eax
	movl	$0, 16(%eax)
	movl	$0, 20(%eax)
	.loc 1 5371 0
	movl	104(%ebx), %eax
	movw	$0, 24(%eax)
.L539:
	.loc 1 5373 0
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
.LFE147:
	.size	bt_smp_update_keys, .-bt_smp_update_keys
	.section	.text.unlikely.bt_smp_update_keys
.LCOLDE51:
	.section	.text.bt_smp_update_keys
.LHOTE51:
	.section	.text.unlikely.bt_smp_get_tk,"ax",@progbits
.LCOLDB52:
	.section	.text.bt_smp_get_tk,"ax",@progbits
.LHOTB52:
	.globl	bt_smp_get_tk
	.type	bt_smp_get_tk, @function
bt_smp_get_tk:
.LFB148:
	.loc 1 5376 0
	.cfi_startproc
.LVL633:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5379 0
	movl	8(%ebp), %eax
	call	smp_chan_get
.LVL634:
	.loc 1 5380 0
	testl	%eax, %eax
	jne	.L568
.LVL635:
.L570:
	.loc 1 5382 0
	xorl	%esi, %esi
	jmp	.L569
.LVL636:
.L568:
	movl	%eax, %esi
	.loc 1 5385 0
	leal	120(%eax), %eax
.LVL637:
	movl	$3, %edx
	call	atomic_test_bit
.LVL638:
	testl	%eax, %eax
	je	.L570
.LVL639:
.LBB297:
.LBB298:
	.loc 1 3916 0
	movb	129(%esi), %al
	movb	136(%esi), %bl
.LBE298:
.LBE297:
	.loc 1 5391 0
	movl	12(%ebp), %edi
.LBB300:
.LBB299:
	.loc 1 3916 0
	cmpb	%al, %bl
	cmova	%eax, %ebx
.LVL640:
.LBE299:
.LBE300:
	.loc 1 5391 0
	addl	$187, %esi
.LVL641:
	movzbl	%bl, %edx
	.loc 1 5392 0
	cmpb	$15, %bl
	.loc 1 5391 0
	movl	%edx, %ecx
	rep movsb
.LVL642:
	.loc 1 5396 0
	movl	$1, %esi
	.loc 1 5392 0
	ja	.L569
	.loc 1 5393 0
	movl	$16, %ecx
	xorl	%eax, %eax
	subl	%edx, %ecx
	rep stosb
.L569:
	.loc 1 5398 0
	addl	$12, %esp
	movl	%esi, %eax
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
.LFE148:
	.size	bt_smp_get_tk, .-bt_smp_get_tk
	.section	.text.unlikely.bt_smp_get_tk
.LCOLDE52:
	.section	.text.bt_smp_get_tk
.LHOTE52:
	.section	.text.unlikely.bt_smp_init,"ax",@progbits
.LCOLDB53:
	.section	.text.bt_smp_init,"ax",@progbits
.LHOTB53:
	.globl	bt_smp_init
	.type	bt_smp_init, @function
bt_smp_init:
.LFB151:
	.loc 1 5429 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 5437 0
	movb	bt_dev+64, %al
	.loc 1 5442 0
	pushl	$chan.5780
	.loc 1 5437 0
	andl	$6, %eax
	cmpb	$6, %al
	sete	sc_supported
	.loc 1 5442 0
	call	bt_l2cap_le_fixed_chan_register
.LVL643:
	.loc 1 5444 0
	movl	$pub_key_cb.5781, (%esp)
	call	bt_pub_key_gen
.LVL644:
	.loc 1 5446 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE151:
	.size	bt_smp_init, .-bt_smp_init
	.section	.text.unlikely.bt_smp_init
.LCOLDE53:
	.section	.text.bt_smp_init
.LHOTE53:
	.section	.data.ops.5768,"aw",@progbits
	.align 4
	.type	ops.5768, @object
	.size	ops.5768, 20
ops.5768:
	.long	bt_smp_connected
	.long	bt_smp_disconnected
	.long	bt_smp_encrypt_change
	.zero	4
	.long	bt_smp_recv
	.section	.data.pub_key_cb.5781,"aw",@progbits
	.align 4
	.type	pub_key_cb.5781, @object
	.size	pub_key_cb.5781, 8
pub_key_cb.5781:
	.long	bt_smp_pkey_ready
	.zero	4
	.section	.data.chan.5780,"aw",@progbits
	.align 4
	.type	chan.5780, @object
	.size	chan.5780, 12
chan.5780:
	.value	6
	.zero	2
	.long	bt_smp_accept
	.zero	4
	.section	.rodata.salt.5306,"a",@progbits
	.align 4
	.type	salt.5306, @object
	.size	salt.5306, 16
salt.5306:
	.byte	108
	.byte	-120
	.byte	-125
	.byte	-111
	.byte	-86
	.byte	-11
	.byte	-91
	.byte	56
	.byte	96
	.byte	55
	.byte	11
	.byte	-37
	.byte	90
	.byte	96
	.byte	-125
	.byte	-66
	.section	.rodata.handlers,"a",@progbits
	.align 32
	.type	handlers, @object
	.size	handlers, 112
handlers:
	.zero	8
	.long	smp_pairing_req
	.byte	6
	.zero	3
	.long	smp_pairing_rsp
	.byte	6
	.zero	3
	.long	smp_pairing_confirm
	.byte	16
	.zero	3
	.long	smp_pairing_random
	.byte	16
	.zero	3
	.long	smp_pairing_failed
	.byte	1
	.zero	3
	.long	smp_encrypt_info
	.byte	16
	.zero	3
	.long	smp_master_ident
	.byte	10
	.zero	3
	.long	smp_ident_info
	.byte	16
	.zero	3
	.long	smp_ident_addr_info
	.byte	7
	.zero	3
	.long	smp_signing_info
	.byte	16
	.zero	3
	.long	smp_security_request
	.byte	1
	.zero	3
	.long	smp_public_key
	.byte	64
	.zero	3
	.long	smp_dhkey_check
	.byte	16
	.zero	3
	.section	.bss.sc_public_key,"aw",@nobits
	.align 32
	.type	sc_public_key, @object
	.size	sc_public_key, 64
sc_public_key:
	.zero	64
	.section	.bss.sc_local_pkey_valid,"aw",@nobits
	.type	sc_local_pkey_valid, @object
	.size	sc_local_pkey_valid, 1
sc_local_pkey_valid:
	.zero	1
	.section	.bss.sc_supported,"aw",@nobits
	.type	sc_supported, @object
	.size	sc_supported, 1
sc_supported:
	.zero	1
	.section	.bss.bt_smp_pool,"aw",@nobits
	.align 32
	.type	bt_smp_pool, @object
	.size	bt_smp_pool, 376
bt_smp_pool:
	.zero	376
	.section	.rodata.sc_debug_public_key,"a",@progbits
	.align 32
	.type	sc_debug_public_key, @object
	.size	sc_debug_public_key, 64
sc_debug_public_key:
	.byte	-26
	.byte	-99
	.byte	53
	.byte	14
	.byte	72
	.byte	1
	.byte	3
	.byte	-52
	.byte	-37
	.byte	-3
	.byte	-12
	.byte	-84
	.byte	17
	.byte	-111
	.byte	-12
	.byte	-17
	.byte	-71
	.byte	-91
	.byte	-7
	.byte	-23
	.byte	-89
	.byte	-125
	.byte	44
	.byte	94
	.byte	44
	.byte	-66
	.byte	-105
	.byte	-14
	.byte	-46
	.byte	3
	.byte	-80
	.byte	32
	.byte	-117
	.byte	-46
	.byte	-119
	.byte	21
	.byte	-48
	.byte	-114
	.byte	28
	.byte	116
	.byte	36
	.byte	48
	.byte	-19
	.byte	-113
	.byte	-62
	.byte	69
	.byte	99
	.byte	118
	.byte	92
	.byte	21
	.byte	82
	.byte	90
	.byte	-65
	.byte	-102
	.byte	50
	.byte	99
	.byte	109
	.byte	-21
	.byte	42
	.byte	101
	.byte	73
	.byte	-100
	.byte	-128
	.byte	-36
	.section	.rodata.gen_method_sc,"a",@progbits
	.align 4
	.type	gen_method_sc, @object
	.size	gen_method_sc, 25
gen_method_sc:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	3
	.byte	1
	.byte	0
	.byte	3
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	3
	.byte	1
	.byte	0
	.byte	3
	.section	.rodata.gen_method_legacy,"a",@progbits
	.align 4
	.type	gen_method_legacy, @object
	.size	gen_method_legacy, 25
gen_method_legacy:
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	1
	.byte	0
	.byte	4
	.text
.Letext0:
	.section	.text.unlikely.sys_memcpy_swap
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4e12
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF432
	.byte	0xc
	.long	.LASF433
	.long	.LASF434
	.long	.Ldebug_ranges0+0x250
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x2
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
	.byte	0x1
	.byte	0x6
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x1
	.byte	0x8
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x1a
	.long	0x6c
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x30
	.long	0x85
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF16
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x3a
	.long	0x37
	.uleb128 0x3
	.long	.LASF18
	.byte	0x1
	.byte	0x3b
	.long	0x45
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x3c
	.long	0x85
	.uleb128 0x3
	.long	.LASF20
	.byte	0x1
	.byte	0x3d
	.long	0x77
	.uleb128 0x5
	.long	.LASF22
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.long	0x104
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x3f
	.long	0x104
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xeb
	.uleb128 0x3
	.long	.LASF21
	.byte	0x1
	.byte	0x41
	.long	0xeb
	.uleb128 0x5
	.long	.LASF23
	.byte	0x8
	.byte	0x1
	.byte	0x42
	.long	0x13a
	.uleb128 0x6
	.long	.LASF25
	.byte	0x1
	.byte	0x43
	.long	0x13a
	.byte	0
	.uleb128 0x6
	.long	.LASF26
	.byte	0x1
	.byte	0x44
	.long	0x13a
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x10a
	.uleb128 0x3
	.long	.LASF27
	.byte	0x1
	.byte	0x46
	.long	0x115
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xd7
	.long	0x16a
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0xd8
	.long	0x183
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0xd9
	.long	0x183
	.byte	0
	.uleb128 0x5
	.long	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.long	0x183
	.uleb128 0xa
	.long	0x14b
	.byte	0
	.uleb128 0xa
	.long	0x189
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x16a
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.long	0x1a8
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0xdc
	.long	0x183
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0xdd
	.long	0x183
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x1
	.byte	0xe0
	.long	0x16a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF31
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x1da
	.uleb128 0xd
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x1ba
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.value	0x1d1
	.long	0x1c3
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x1d4
	.long	0x1da
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.value	0x1d5
	.long	0x1da
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.value	0x1d6
	.long	0x1da
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.value	0x2f2
	.long	0x1f2
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.value	0x2f3
	.long	0x1e6
	.uleb128 0xf
	.long	.LASF39
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x24a
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.value	0x302
	.long	0x24a
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.value	0x303
	.long	0x1a8
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x20a
	.uleb128 0xf
	.long	.LASF42
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x26b
	.uleb128 0x10
	.long	.LASF40
	.byte	0x1
	.value	0x311
	.long	0x222
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF43
	.byte	0xc
	.byte	0x1
	.value	0x313
	.long	0x293
	.uleb128 0xd
	.string	"sem"
	.byte	0x1
	.value	0x314
	.long	0x216
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.value	0x315
	.long	0x1a8
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF44
	.byte	0x1
	.value	0x320
	.long	0x29f
	.uleb128 0x7
	.byte	0x4
	.long	0x2a5
	.uleb128 0x11
	.long	0x2b5
	.uleb128 0x12
	.long	0x1ba
	.uleb128 0x12
	.long	0x1ba
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x14
	.byte	0x1
	.value	0x321
	.long	0x304
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.value	0x322
	.long	0x1fe
	.byte	0
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.value	0x323
	.long	0x293
	.byte	0x4
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.value	0x324
	.long	0x1ba
	.byte	0x8
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.value	0x325
	.long	0x97
	.byte	0xc
	.uleb128 0x10
	.long	.LASF50
	.byte	0x1
	.value	0x326
	.long	0x97
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.value	0x327
	.long	0x2b5
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.value	0x341
	.long	0x7e
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.value	0x342
	.long	0x310
	.uleb128 0xf
	.long	.LASF54
	.byte	0xc
	.byte	0x1
	.value	0x36d
	.long	0x343
	.uleb128 0x10
	.long	.LASF55
	.byte	0x1
	.value	0x36e
	.long	0x250
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF56
	.byte	0x1
	.value	0x375
	.long	0x34f
	.uleb128 0x7
	.byte	0x4
	.long	0x355
	.uleb128 0x11
	.long	0x360
	.uleb128 0x12
	.long	0x360
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x366
	.uleb128 0xf
	.long	.LASF57
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x39b
	.uleb128 0x10
	.long	.LASF58
	.byte	0x1
	.value	0x377
	.long	0x1ba
	.byte	0
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.value	0x378
	.long	0x343
	.byte	0x4
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0x379
	.long	0x39b
	.byte	0x8
	.byte	0
	.uleb128 0x13
	.long	0x310
	.long	0x3ab
	.uleb128 0x14
	.long	0x1b3
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x24
	.byte	0x1
	.value	0x37d
	.long	0x3e0
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.value	0x37e
	.long	0x366
	.byte	0
	.uleb128 0x10
	.long	.LASF62
	.byte	0x1
	.value	0x37f
	.long	0x3e0
	.byte	0xc
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.value	0x380
	.long	0x304
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x328
	.uleb128 0x15
	.long	.LASF68
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0x386
	.long	0x416
	.uleb128 0x16
	.long	.LASF63
	.byte	0
	.uleb128 0x16
	.long	.LASF64
	.byte	0x1
	.uleb128 0x16
	.long	.LASF65
	.byte	0x2
	.uleb128 0x16
	.long	.LASF66
	.byte	0x3
	.uleb128 0x16
	.long	.LASF67
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.long	.LASF69
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0x38d
	.long	0x446
	.uleb128 0x16
	.long	.LASF70
	.byte	0
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.uleb128 0x16
	.long	.LASF72
	.byte	0x2
	.uleb128 0x16
	.long	.LASF73
	.byte	0x3
	.uleb128 0x16
	.long	.LASF74
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	.LASF75
	.byte	0x8
	.byte	0x1
	.value	0x525
	.long	0x488
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.value	0x526
	.long	0x488
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x527
	.long	0xca
	.byte	0x4
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.value	0x528
	.long	0xca
	.byte	0x6
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.value	0x529
	.long	0x48e
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xbf
	.uleb128 0x13
	.long	0xbf
	.long	0x49d
	.uleb128 0x17
	.long	0x1b3
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.value	0x55e
	.long	0x4bf
	.uleb128 0x19
	.long	.LASF79
	.byte	0x1
	.value	0x55f
	.long	0x10a
	.uleb128 0x19
	.long	.LASF80
	.byte	0x1
	.value	0x560
	.long	0x50d
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0x10
	.byte	0x1
	.value	0x55d
	.long	0x50d
	.uleb128 0xa
	.long	0x49d
	.byte	0
	.uleb128 0xd
	.string	"ref"
	.byte	0x1
	.value	0x562
	.long	0xbf
	.byte	0x4
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0x563
	.long	0xbf
	.byte	0x5
	.uleb128 0x10
	.long	.LASF82
	.byte	0x1
	.value	0x564
	.long	0xbf
	.byte	0x6
	.uleb128 0xa
	.long	0x544
	.byte	0x8
	.uleb128 0x10
	.long	.LASF78
	.byte	0x1
	.value	0x56d
	.long	0x55d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x4bf
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.value	0x566
	.long	0x544
	.uleb128 0x10
	.long	.LASF76
	.byte	0x1
	.value	0x567
	.long	0x488
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x568
	.long	0xca
	.byte	0x4
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.value	0x569
	.long	0xca
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x1
	.value	0x565
	.long	0x55d
	.uleb128 0x1a
	.long	0x513
	.uleb128 0x1b
	.string	"b"
	.byte	0x1
	.value	0x56b
	.long	0x446
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x56c
	.uleb128 0x17
	.long	0x1b3
	.byte	0
	.uleb128 0xc
	.byte	0x6
	.byte	0x1
	.value	0x59e
	.long	0x583
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0x59f
	.long	0x583
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x593
	.uleb128 0x14
	.long	0x1b3
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	.LASF83
	.byte	0x1
	.value	0x5a0
	.long	0x56c
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.value	0x5a1
	.long	0x5c1
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1
	.value	0x5a2
	.long	0xbf
	.byte	0
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x5a3
	.long	0x593
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF85
	.byte	0x1
	.value	0x5a4
	.long	0x59f
	.uleb128 0x13
	.long	0xbf
	.long	0x5dd
	.uleb128 0x14
	.long	0x1b3
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x5ed
	.uleb128 0x14
	.long	0x1b3
	.byte	0x7
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x5fd
	.uleb128 0x14
	.long	0x1b3
	.byte	0x3f
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x60d
	.uleb128 0x14
	.long	0x1b3
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x613
	.uleb128 0x1c
	.long	0xbf
	.uleb128 0x7
	.byte	0x4
	.long	0x61e
	.uleb128 0x1c
	.long	0x593
	.uleb128 0x7
	.byte	0x4
	.long	0x629
	.uleb128 0x1c
	.long	0x5c1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF86
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xb7d
	.long	0x655
	.uleb128 0x16
	.long	.LASF87
	.byte	0
	.uleb128 0x16
	.long	.LASF88
	.byte	0x1
	.uleb128 0x16
	.long	.LASF89
	.byte	0x2
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xb8c
	.long	0x66f
	.uleb128 0x16
	.long	.LASF90
	.byte	0
	.uleb128 0x16
	.long	.LASF91
	.byte	0x1
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	0x37
	.byte	0x1
	.value	0xba4
	.long	0x69b
	.uleb128 0x16
	.long	.LASF92
	.byte	0
	.uleb128 0x16
	.long	.LASF93
	.byte	0x1
	.uleb128 0x16
	.long	.LASF94
	.byte	0x2
	.uleb128 0x16
	.long	.LASF95
	.byte	0x3
	.uleb128 0x16
	.long	.LASF96
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x1
	.value	0xbaa
	.long	0x66f
	.uleb128 0x7
	.byte	0x4
	.long	0x6ad
	.uleb128 0xf
	.long	.LASF98
	.byte	0x90
	.byte	0x1
	.value	0xcb4
	.long	0x790
	.uleb128 0x10
	.long	.LASF99
	.byte	0x1
	.value	0xcb5
	.long	0xca
	.byte	0
	.uleb128 0x10
	.long	.LASF84
	.byte	0x1
	.value	0xcb6
	.long	0xbf
	.byte	0x2
	.uleb128 0x10
	.long	.LASF100
	.byte	0x1
	.value	0xcb7
	.long	0xbf
	.byte	0x3
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0xcb8
	.long	0x39b
	.byte	0x4
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1
	.value	0xcb9
	.long	0x69b
	.byte	0x8
	.uleb128 0x10
	.long	.LASF102
	.byte	0x1
	.value	0xcba
	.long	0x69b
	.byte	0x9
	.uleb128 0x10
	.long	.LASF103
	.byte	0x1
	.value	0xcbb
	.long	0xbf
	.byte	0xa
	.uleb128 0xd
	.string	"err"
	.byte	0x1
	.value	0xcbc
	.long	0xbf
	.byte	0xb
	.uleb128 0x10
	.long	.LASF104
	.byte	0x1
	.value	0xcbd
	.long	0xc5c
	.byte	0xc
	.uleb128 0x10
	.long	.LASF105
	.byte	0x1
	.value	0xcbe
	.long	0xca
	.byte	0xe
	.uleb128 0xd
	.string	"rx"
	.byte	0x1
	.value	0xcbf
	.long	0x50d
	.byte	0x10
	.uleb128 0x10
	.long	.LASF106
	.byte	0x1
	.value	0xcc0
	.long	0x140
	.byte	0x14
	.uleb128 0x10
	.long	.LASF107
	.byte	0x1
	.value	0xcc1
	.long	0x250
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF108
	.byte	0x1
	.value	0xcc2
	.long	0x250
	.byte	0x28
	.uleb128 0x10
	.long	.LASF109
	.byte	0x1
	.value	0xcc3
	.long	0x140
	.byte	0x34
	.uleb128 0xd
	.string	"ref"
	.byte	0x1
	.value	0xcc4
	.long	0x310
	.byte	0x3c
	.uleb128 0xa
	.long	0xd61
	.byte	0x40
	.byte	0
	.uleb128 0xf
	.long	.LASF110
	.byte	0x14
	.byte	0x1
	.value	0xbbc
	.long	0x7df
	.uleb128 0x10
	.long	.LASF111
	.byte	0x1
	.value	0xbbd
	.long	0x7ef
	.byte	0
	.uleb128 0x10
	.long	.LASF112
	.byte	0x1
	.value	0xbbe
	.long	0x800
	.byte	0x4
	.uleb128 0x10
	.long	.LASF113
	.byte	0x1
	.value	0xbbf
	.long	0x7ef
	.byte	0x8
	.uleb128 0x10
	.long	.LASF114
	.byte	0x1
	.value	0xbc0
	.long	0x800
	.byte	0xc
	.uleb128 0x10
	.long	.LASF115
	.byte	0x1
	.value	0xbc1
	.long	0x800
	.byte	0x10
	.byte	0
	.uleb128 0x11
	.long	0x7ef
	.uleb128 0x12
	.long	0x6a7
	.uleb128 0x12
	.long	0x85
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x7df
	.uleb128 0x11
	.long	0x800
	.uleb128 0x12
	.long	0x6a7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x7f5
	.uleb128 0xf
	.long	.LASF116
	.byte	0xb0
	.byte	0x1
	.value	0xbe0
	.long	0x821
	.uleb128 0x10
	.long	.LASF117
	.byte	0x1
	.value	0xbe1
	.long	0x821
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	0x85
	.long	0x831
	.uleb128 0x14
	.long	0x1b3
	.byte	0x2b
	.byte	0
	.uleb128 0xe
	.long	.LASF118
	.byte	0x1
	.value	0xbe2
	.long	0x83d
	.uleb128 0x7
	.byte	0x4
	.long	0x806
	.uleb128 0xf
	.long	.LASF119
	.byte	0x54
	.byte	0x1
	.value	0xbee
	.long	0x8b6
	.uleb128 0xd
	.string	"iv"
	.byte	0x1
	.value	0xbef
	.long	0x8b6
	.byte	0
	.uleb128 0xd
	.string	"K1"
	.byte	0x1
	.value	0xbf0
	.long	0x8b6
	.byte	0x10
	.uleb128 0xd
	.string	"K2"
	.byte	0x1
	.value	0xbf1
	.long	0x8b6
	.byte	0x20
	.uleb128 0x10
	.long	.LASF120
	.byte	0x1
	.value	0xbf2
	.long	0x8b6
	.byte	0x30
	.uleb128 0x10
	.long	.LASF121
	.byte	0x1
	.value	0xbf3
	.long	0x85
	.byte	0x40
	.uleb128 0x10
	.long	.LASF122
	.byte	0x1
	.value	0xbf4
	.long	0x85
	.byte	0x44
	.uleb128 0x10
	.long	.LASF123
	.byte	0x1
	.value	0xbf5
	.long	0x831
	.byte	0x48
	.uleb128 0x10
	.long	.LASF124
	.byte	0x1
	.value	0xbf6
	.long	0xa2
	.byte	0x4c
	.byte	0
	.uleb128 0x13
	.long	0x8c
	.long	0x8c6
	.uleb128 0x14
	.long	0x1b3
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc06
	.long	0x928
	.uleb128 0x16
	.long	.LASF125
	.byte	0
	.uleb128 0x16
	.long	.LASF126
	.byte	0x1
	.uleb128 0x16
	.long	.LASF127
	.byte	0x2
	.uleb128 0x16
	.long	.LASF128
	.byte	0x3
	.uleb128 0x16
	.long	.LASF129
	.byte	0x4
	.uleb128 0x16
	.long	.LASF130
	.byte	0x5
	.uleb128 0x16
	.long	.LASF131
	.byte	0x6
	.uleb128 0x16
	.long	.LASF132
	.byte	0x7
	.uleb128 0x16
	.long	.LASF133
	.byte	0x8
	.uleb128 0x16
	.long	.LASF134
	.byte	0x9
	.uleb128 0x16
	.long	.LASF135
	.byte	0xa
	.uleb128 0x16
	.long	.LASF136
	.byte	0xb
	.uleb128 0x16
	.long	.LASF137
	.byte	0xc
	.uleb128 0x16
	.long	.LASF138
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.long	.LASF139
	.byte	0x24
	.byte	0x1
	.value	0xc16
	.long	0x984
	.uleb128 0x10
	.long	.LASF140
	.byte	0x1
	.value	0xc17
	.long	0x5dd
	.byte	0
	.uleb128 0x10
	.long	.LASF141
	.byte	0x1
	.value	0xc18
	.long	0xe0
	.byte	0x8
	.uleb128 0xd
	.string	"mtu"
	.byte	0x1
	.value	0xc19
	.long	0xca
	.byte	0x10
	.uleb128 0x10
	.long	.LASF142
	.byte	0x1
	.value	0xc1a
	.long	0x26b
	.byte	0x14
	.uleb128 0x10
	.long	.LASF143
	.byte	0x1
	.value	0xc1b
	.long	0xbf
	.byte	0x20
	.uleb128 0x10
	.long	.LASF144
	.byte	0x1
	.value	0xc1c
	.long	0xbf
	.byte	0x21
	.byte	0
	.uleb128 0xf
	.long	.LASF145
	.byte	0xcc
	.byte	0x1
	.value	0xc1e
	.long	0xa7b
	.uleb128 0x10
	.long	.LASF146
	.byte	0x1
	.value	0xc1f
	.long	0x5c1
	.byte	0
	.uleb128 0x10
	.long	.LASF147
	.byte	0x1
	.value	0xc20
	.long	0x5c1
	.byte	0x7
	.uleb128 0x10
	.long	.LASF148
	.byte	0x1
	.value	0xc21
	.long	0xbf
	.byte	0xe
	.uleb128 0x10
	.long	.LASF149
	.byte	0x1
	.value	0xc22
	.long	0xbf
	.byte	0xf
	.uleb128 0x10
	.long	.LASF150
	.byte	0x1
	.value	0xc23
	.long	0xca
	.byte	0x10
	.uleb128 0x10
	.long	.LASF151
	.byte	0x1
	.value	0xc24
	.long	0xca
	.byte	0x12
	.uleb128 0x10
	.long	.LASF152
	.byte	0x1
	.value	0xc25
	.long	0xca
	.byte	0x14
	.uleb128 0x10
	.long	.LASF140
	.byte	0x1
	.value	0xc26
	.long	0xa7b
	.byte	0x16
	.uleb128 0x10
	.long	.LASF153
	.byte	0x1
	.value	0xc27
	.long	0x5ed
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF154
	.byte	0x1
	.value	0xc28
	.long	0x366
	.byte	0x60
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0xc29
	.long	0x39b
	.byte	0x6c
	.uleb128 0xd
	.string	"le"
	.byte	0x1
	.value	0xc2a
	.long	0x928
	.byte	0x70
	.uleb128 0x10
	.long	.LASF155
	.byte	0x1
	.value	0xc2b
	.long	0x26b
	.byte	0x94
	.uleb128 0x10
	.long	.LASF156
	.byte	0x1
	.value	0xc2c
	.long	0x50d
	.byte	0xa0
	.uleb128 0x10
	.long	.LASF157
	.byte	0x1
	.value	0xc2d
	.long	0x250
	.byte	0xa4
	.uleb128 0x10
	.long	.LASF158
	.byte	0x1
	.value	0xc2e
	.long	0x250
	.byte	0xb0
	.uleb128 0x10
	.long	.LASF159
	.byte	0x1
	.value	0xc2f
	.long	0x250
	.byte	0xbc
	.uleb128 0xd
	.string	"drv"
	.byte	0x1
	.value	0xc30
	.long	0xa96
	.byte	0xc8
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0xa91
	.uleb128 0x14
	.long	0x1b3
	.byte	0
	.uleb128 0x14
	.long	0x1b3
	.byte	0x7
	.byte	0
	.uleb128 0x1e
	.long	.LASF435
	.uleb128 0x7
	.byte	0x4
	.long	0xa9c
	.uleb128 0x1c
	.long	0xa91
	.uleb128 0xf
	.long	.LASF160
	.byte	0x8
	.byte	0x1
	.value	0xc45
	.long	0xac9
	.uleb128 0x10
	.long	.LASF161
	.byte	0x1
	.value	0xc46
	.long	0xad4
	.byte	0
	.uleb128 0x10
	.long	.LASF162
	.byte	0x1
	.value	0xc47
	.long	0xada
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.long	0xad4
	.uleb128 0x12
	.long	0x60d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xac9
	.uleb128 0x7
	.byte	0x4
	.long	0xaa1
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc4d
	.long	0xb18
	.uleb128 0x16
	.long	.LASF163
	.byte	0x1
	.uleb128 0x16
	.long	.LASF164
	.byte	0x2
	.uleb128 0x16
	.long	.LASF165
	.byte	0x4
	.uleb128 0x16
	.long	.LASF166
	.byte	0x8
	.uleb128 0x16
	.long	.LASF167
	.byte	0x10
	.uleb128 0x16
	.long	.LASF168
	.byte	0x20
	.uleb128 0x16
	.long	.LASF169
	.byte	0x3f
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc58
	.long	0xb44
	.uleb128 0x16
	.long	.LASF170
	.byte	0
	.uleb128 0x16
	.long	.LASF171
	.byte	0x1
	.uleb128 0x16
	.long	.LASF172
	.byte	0x2
	.uleb128 0x16
	.long	.LASF173
	.byte	0x3
	.uleb128 0x16
	.long	.LASF174
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.long	.LASF175
	.byte	0x1c
	.byte	0x1
	.value	0xc5f
	.long	0xb79
	.uleb128 0x10
	.long	.LASF176
	.byte	0x1
	.value	0xc60
	.long	0xe0
	.byte	0
	.uleb128 0x10
	.long	.LASF177
	.byte	0x1
	.value	0xc61
	.long	0xca
	.byte	0x8
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xc62
	.long	0x5cd
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.long	.LASF178
	.byte	0x16
	.byte	0x1
	.value	0xc64
	.long	0xba1
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xc65
	.long	0x5cd
	.byte	0
	.uleb128 0xd
	.string	"rpa"
	.byte	0x1
	.value	0xc66
	.long	0x593
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF179
	.byte	0x60
	.byte	0x1
	.value	0xc6c
	.long	0xc0a
	.uleb128 0x10
	.long	.LASF180
	.byte	0x1
	.value	0xc6d
	.long	0x5c1
	.byte	0
	.uleb128 0x10
	.long	.LASF181
	.byte	0x1
	.value	0xc6e
	.long	0xbf
	.byte	0x7
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0xc6f
	.long	0x39b
	.byte	0x8
	.uleb128 0x10
	.long	.LASF182
	.byte	0x1
	.value	0xc70
	.long	0xca
	.byte	0xc
	.uleb128 0xd
	.string	"ltk"
	.byte	0x1
	.value	0xc71
	.long	0xb44
	.byte	0x10
	.uleb128 0xd
	.string	"irk"
	.byte	0x1
	.value	0xc72
	.long	0xb79
	.byte	0x2c
	.uleb128 0x10
	.long	.LASF183
	.byte	0x1
	.value	0xc73
	.long	0xb44
	.byte	0x44
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc7e
	.long	0xc30
	.uleb128 0x16
	.long	.LASF184
	.byte	0
	.uleb128 0x16
	.long	.LASF185
	.byte	0x1
	.uleb128 0x16
	.long	.LASF186
	.byte	0x2
	.uleb128 0x16
	.long	.LASF187
	.byte	0x3
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.long	0x37
	.byte	0x1
	.value	0xc8f
	.long	0xc5c
	.uleb128 0x16
	.long	.LASF188
	.byte	0
	.uleb128 0x16
	.long	.LASF189
	.byte	0x1
	.uleb128 0x16
	.long	.LASF190
	.byte	0x2
	.uleb128 0x16
	.long	.LASF191
	.byte	0x3
	.uleb128 0x16
	.long	.LASF192
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF193
	.byte	0x1
	.value	0xc95
	.long	0xc30
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xc96
	.long	0xcb2
	.uleb128 0x16
	.long	.LASF194
	.byte	0
	.uleb128 0x16
	.long	.LASF195
	.byte	0x1
	.uleb128 0x16
	.long	.LASF196
	.byte	0x2
	.uleb128 0x16
	.long	.LASF197
	.byte	0x3
	.uleb128 0x16
	.long	.LASF198
	.byte	0x4
	.uleb128 0x16
	.long	.LASF199
	.byte	0x5
	.uleb128 0x16
	.long	.LASF200
	.byte	0x6
	.uleb128 0x16
	.long	.LASF201
	.byte	0x7
	.uleb128 0x16
	.long	.LASF202
	.byte	0x8
	.uleb128 0x16
	.long	.LASF203
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.long	.LASF204
	.byte	0x50
	.byte	0x1
	.value	0xca2
	.long	0xd4f
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.value	0xca3
	.long	0x5c1
	.byte	0
	.uleb128 0x10
	.long	.LASF205
	.byte	0x1
	.value	0xca4
	.long	0x5c1
	.byte	0x7
	.uleb128 0x10
	.long	.LASF206
	.byte	0x1
	.value	0xca5
	.long	0x5c1
	.byte	0xe
	.uleb128 0x10
	.long	.LASF207
	.byte	0x1
	.value	0xca6
	.long	0xca
	.byte	0x16
	.uleb128 0x10
	.long	.LASF208
	.byte	0x1
	.value	0xca7
	.long	0xca
	.byte	0x18
	.uleb128 0x10
	.long	.LASF209
	.byte	0x1
	.value	0xca8
	.long	0xca
	.byte	0x1a
	.uleb128 0x10
	.long	.LASF210
	.byte	0x1
	.value	0xca9
	.long	0xca
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.value	0xcaa
	.long	0xca
	.byte	0x1e
	.uleb128 0x10
	.long	.LASF140
	.byte	0x1
	.value	0xcab
	.long	0x5dd
	.byte	0x20
	.uleb128 0x10
	.long	.LASF182
	.byte	0x1
	.value	0xcac
	.long	0xd4f
	.byte	0x28
	.uleb128 0x10
	.long	.LASF211
	.byte	0x1
	.value	0xcad
	.long	0x3ab
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xba1
	.uleb128 0xe
	.long	.LASF212
	.byte	0x1
	.value	0xcaf
	.long	0x800
	.uleb128 0x18
	.byte	0x50
	.byte	0x1
	.value	0xcc5
	.long	0xd76
	.uleb128 0x1b
	.string	"le"
	.byte	0x1
	.value	0xcc6
	.long	0xcb2
	.byte	0
	.uleb128 0xe
	.long	.LASF213
	.byte	0x1
	.value	0xcf4
	.long	0xd82
	.uleb128 0x7
	.byte	0x4
	.long	0xd88
	.uleb128 0x11
	.long	0xd93
	.uleb128 0x12
	.long	0xd93
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd99
	.uleb128 0xf
	.long	.LASF214
	.byte	0x34
	.byte	0x1
	.value	0xcfe
	.long	0xde8
	.uleb128 0x10
	.long	.LASF215
	.byte	0x1
	.value	0xcff
	.long	0x6a7
	.byte	0
	.uleb128 0xd
	.string	"ops"
	.byte	0x1
	.value	0xd00
	.long	0xe37
	.byte	0x4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.value	0xd01
	.long	0x10a
	.byte	0x8
	.uleb128 0x10
	.long	.LASF216
	.byte	0x1
	.value	0xd02
	.long	0xd76
	.byte	0xc
	.uleb128 0x10
	.long	.LASF217
	.byte	0x1
	.value	0xd03
	.long	0x3ab
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.long	.LASF218
	.byte	0x14
	.byte	0x1
	.value	0xd1f
	.long	0xe37
	.uleb128 0x10
	.long	.LASF219
	.byte	0x1
	.value	0xd20
	.long	0xd82
	.byte	0
	.uleb128 0x10
	.long	.LASF220
	.byte	0x1
	.value	0xd21
	.long	0xd82
	.byte	0x4
	.uleb128 0x10
	.long	.LASF221
	.byte	0x1
	.value	0xd22
	.long	0xf03
	.byte	0x8
	.uleb128 0x10
	.long	.LASF222
	.byte	0x1
	.value	0xd23
	.long	0xf18
	.byte	0xc
	.uleb128 0x10
	.long	.LASF223
	.byte	0x1
	.value	0xd24
	.long	0xf2e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xde8
	.uleb128 0xf
	.long	.LASF224
	.byte	0x14
	.byte	0x1
	.value	0xd05
	.long	0xe8c
	.uleb128 0xd
	.string	"cid"
	.byte	0x1
	.value	0xd06
	.long	0xca
	.byte	0
	.uleb128 0xd
	.string	"mtu"
	.byte	0x1
	.value	0xd07
	.long	0xca
	.byte	0x2
	.uleb128 0xd
	.string	"mps"
	.byte	0x1
	.value	0xd08
	.long	0xca
	.byte	0x4
	.uleb128 0x10
	.long	.LASF225
	.byte	0x1
	.value	0xd09
	.long	0xca
	.byte	0x6
	.uleb128 0x10
	.long	.LASF226
	.byte	0x1
	.value	0xd0a
	.long	0x26b
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF227
	.byte	0x74
	.byte	0x1
	.value	0xd0c
	.long	0xef3
	.uleb128 0x10
	.long	.LASF228
	.byte	0x1
	.value	0xd0d
	.long	0xd99
	.byte	0
	.uleb128 0xd
	.string	"rx"
	.byte	0x1
	.value	0xd0e
	.long	0xe3d
	.byte	0x34
	.uleb128 0xd
	.string	"tx"
	.byte	0x1
	.value	0xd0f
	.long	0xe3d
	.byte	0x48
	.uleb128 0x10
	.long	.LASF108
	.byte	0x1
	.value	0xd10
	.long	0x250
	.byte	0x5c
	.uleb128 0x10
	.long	.LASF229
	.byte	0x1
	.value	0xd11
	.long	0x50d
	.byte	0x68
	.uleb128 0x10
	.long	.LASF230
	.byte	0x1
	.value	0xd12
	.long	0x50d
	.byte	0x6c
	.uleb128 0x10
	.long	.LASF231
	.byte	0x1
	.value	0xd13
	.long	0xca
	.byte	0x70
	.byte	0
	.uleb128 0x11
	.long	0xf03
	.uleb128 0x12
	.long	0xd93
	.uleb128 0x12
	.long	0xbf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xef3
	.uleb128 0x1f
	.long	0x50d
	.long	0xf18
	.uleb128 0x12
	.long	0xd93
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf09
	.uleb128 0x11
	.long	0xf2e
	.uleb128 0x12
	.long	0xd93
	.uleb128 0x12
	.long	0x50d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf1e
	.uleb128 0x1f
	.long	0x7e
	.long	0xf48
	.uleb128 0x12
	.long	0x6a7
	.uleb128 0x12
	.long	0xf48
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd93
	.uleb128 0x7
	.byte	0x4
	.long	0xf34
	.uleb128 0xf
	.long	.LASF232
	.byte	0xc
	.byte	0x1
	.value	0xdae
	.long	0xf89
	.uleb128 0xd
	.string	"cid"
	.byte	0x1
	.value	0xdaf
	.long	0xca
	.byte	0
	.uleb128 0x10
	.long	.LASF233
	.byte	0x1
	.value	0xdb0
	.long	0xf4e
	.byte	0x4
	.uleb128 0x10
	.long	.LASF79
	.byte	0x1
	.value	0xdb1
	.long	0x10a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.long	.LASF234
	.byte	0x1
	.byte	0x1
	.value	0xddc
	.long	0xfa4
	.uleb128 0x10
	.long	.LASF235
	.byte	0x1
	.value	0xddd
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF236
	.byte	0x6
	.byte	0x1
	.value	0xde1
	.long	0x1000
	.uleb128 0x10
	.long	.LASF237
	.byte	0x1
	.value	0xde2
	.long	0xbf
	.byte	0
	.uleb128 0x10
	.long	.LASF238
	.byte	0x1
	.value	0xde3
	.long	0xbf
	.byte	0x1
	.uleb128 0x10
	.long	.LASF239
	.byte	0x1
	.value	0xde4
	.long	0xbf
	.byte	0x2
	.uleb128 0x10
	.long	.LASF240
	.byte	0x1
	.value	0xde5
	.long	0xbf
	.byte	0x3
	.uleb128 0x10
	.long	.LASF241
	.byte	0x1
	.value	0xde6
	.long	0xbf
	.byte	0x4
	.uleb128 0x10
	.long	.LASF242
	.byte	0x1
	.value	0xde7
	.long	0xbf
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.long	.LASF243
	.byte	0x10
	.byte	0x1
	.value	0xdeb
	.long	0x101b
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xdec
	.long	0x5cd
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF244
	.byte	0x10
	.byte	0x1
	.value	0xdf0
	.long	0x1036
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xdf1
	.long	0x5cd
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF245
	.byte	0x1
	.byte	0x1
	.value	0xdf5
	.long	0x1051
	.uleb128 0x10
	.long	.LASF246
	.byte	0x1
	.value	0xdf6
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF247
	.byte	0x10
	.byte	0x1
	.value	0xdfa
	.long	0x106c
	.uleb128 0xd
	.string	"ltk"
	.byte	0x1
	.value	0xdfb
	.long	0x5cd
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF248
	.byte	0xa
	.byte	0x1
	.value	0xdff
	.long	0x1094
	.uleb128 0x10
	.long	.LASF177
	.byte	0x1
	.value	0xe00
	.long	0xca
	.byte	0
	.uleb128 0x10
	.long	.LASF176
	.byte	0x1
	.value	0xe01
	.long	0xe0
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF249
	.byte	0x10
	.byte	0x1
	.value	0xe05
	.long	0x10af
	.uleb128 0xd
	.string	"irk"
	.byte	0x1
	.value	0xe06
	.long	0x5cd
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF250
	.byte	0x7
	.byte	0x1
	.value	0xe0a
	.long	0x10ca
	.uleb128 0x10
	.long	.LASF180
	.byte	0x1
	.value	0xe0b
	.long	0x5c1
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF251
	.byte	0x1
	.byte	0x1
	.value	0xe14
	.long	0x10e5
	.uleb128 0x10
	.long	.LASF239
	.byte	0x1
	.value	0xe15
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF252
	.byte	0x40
	.byte	0x1
	.value	0xe19
	.long	0x1109
	.uleb128 0xd
	.string	"x"
	.byte	0x1
	.value	0xe1a
	.long	0x5fd
	.byte	0
	.uleb128 0xd
	.string	"y"
	.byte	0x1
	.value	0xe1b
	.long	0x5fd
	.byte	0x20
	.byte	0
	.uleb128 0xf
	.long	.LASF253
	.byte	0x10
	.byte	0x1
	.value	0xe1f
	.long	0x1122
	.uleb128 0xd
	.string	"e"
	.byte	0x1
	.value	0xe20
	.long	0x5cd
	.byte	0
	.byte	0
	.uleb128 0x15
	.long	.LASF254
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xe31
	.long	0x1152
	.uleb128 0x16
	.long	.LASF255
	.byte	0
	.uleb128 0x16
	.long	.LASF256
	.byte	0x1
	.uleb128 0x16
	.long	.LASF257
	.byte	0x2
	.uleb128 0x16
	.long	.LASF258
	.byte	0x3
	.uleb128 0x16
	.long	.LASF259
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.long	0x85
	.byte	0x1
	.value	0xe38
	.long	0x11d2
	.uleb128 0x16
	.long	.LASF260
	.byte	0
	.uleb128 0x16
	.long	.LASF261
	.byte	0x1
	.uleb128 0x16
	.long	.LASF262
	.byte	0x2
	.uleb128 0x16
	.long	.LASF263
	.byte	0x3
	.uleb128 0x16
	.long	.LASF264
	.byte	0x4
	.uleb128 0x16
	.long	.LASF265
	.byte	0x5
	.uleb128 0x16
	.long	.LASF266
	.byte	0x6
	.uleb128 0x16
	.long	.LASF267
	.byte	0x7
	.uleb128 0x16
	.long	.LASF268
	.byte	0x8
	.uleb128 0x16
	.long	.LASF269
	.byte	0x9
	.uleb128 0x16
	.long	.LASF270
	.byte	0xa
	.uleb128 0x16
	.long	.LASF271
	.byte	0xb
	.uleb128 0x16
	.long	.LASF272
	.byte	0xc
	.uleb128 0x16
	.long	.LASF273
	.byte	0xd
	.uleb128 0x16
	.long	.LASF274
	.byte	0xe
	.uleb128 0x16
	.long	.LASF275
	.byte	0xf
	.uleb128 0x16
	.long	.LASF276
	.byte	0x10
	.uleb128 0x16
	.long	.LASF277
	.byte	0x11
	.uleb128 0x16
	.long	.LASF278
	.byte	0x12
	.byte	0
	.uleb128 0x20
	.long	.LASF279
	.value	0x178
	.byte	0x1
	.value	0xe4d
	.long	0x12dd
	.uleb128 0x10
	.long	.LASF228
	.byte	0x1
	.value	0xe4e
	.long	0xe8c
	.byte	0
	.uleb128 0x10
	.long	.LASF280
	.byte	0x1
	.value	0xe4f
	.long	0x310
	.byte	0x74
	.uleb128 0x10
	.long	.LASF59
	.byte	0x1
	.value	0xe50
	.long	0x39b
	.byte	0x78
	.uleb128 0x10
	.long	.LASF281
	.byte	0x1
	.value	0xe51
	.long	0xbf
	.byte	0x7c
	.uleb128 0x10
	.long	.LASF282
	.byte	0x1
	.value	0xe52
	.long	0x12dd
	.byte	0x7d
	.uleb128 0x10
	.long	.LASF283
	.byte	0x1
	.value	0xe53
	.long	0x12dd
	.byte	0x84
	.uleb128 0x10
	.long	.LASF284
	.byte	0x1
	.value	0xe54
	.long	0x5cd
	.byte	0x8b
	.uleb128 0x10
	.long	.LASF285
	.byte	0x1
	.value	0xe55
	.long	0x5cd
	.byte	0x9b
	.uleb128 0x10
	.long	.LASF286
	.byte	0x1
	.value	0xe56
	.long	0x5cd
	.byte	0xab
	.uleb128 0xd
	.string	"tk"
	.byte	0x1
	.value	0xe57
	.long	0x5cd
	.byte	0xbb
	.uleb128 0x10
	.long	.LASF287
	.byte	0x1
	.value	0xe58
	.long	0x5ed
	.byte	0xcb
	.uleb128 0x21
	.long	.LASF288
	.byte	0x1
	.value	0xe59
	.long	0x5fd
	.value	0x10b
	.uleb128 0x22
	.string	"e"
	.byte	0x1
	.value	0xe5a
	.long	0x5cd
	.value	0x12b
	.uleb128 0x21
	.long	.LASF289
	.byte	0x1
	.value	0xe5b
	.long	0x5cd
	.value	0x13b
	.uleb128 0x21
	.long	.LASF290
	.byte	0x1
	.value	0xe5c
	.long	0xd5
	.value	0x14c
	.uleb128 0x21
	.long	.LASF291
	.byte	0x1
	.value	0xe5d
	.long	0xbf
	.value	0x150
	.uleb128 0x21
	.long	.LASF292
	.byte	0x1
	.value	0xe5e
	.long	0xbf
	.value	0x151
	.uleb128 0x21
	.long	.LASF293
	.byte	0x1
	.value	0xe5f
	.long	0xbf
	.value	0x152
	.uleb128 0x21
	.long	.LASF61
	.byte	0x1
	.value	0xe60
	.long	0x3ab
	.value	0x154
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x12ed
	.uleb128 0x14
	.long	0x1b3
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.value	0x139b
	.long	0x1311
	.uleb128 0x10
	.long	.LASF161
	.byte	0x1
	.value	0x139c
	.long	0x132b
	.byte	0
	.uleb128 0x10
	.long	.LASF294
	.byte	0x1
	.value	0x139d
	.long	0xbf
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.long	0xbf
	.long	0x1325
	.uleb128 0x12
	.long	0x1325
	.uleb128 0x12
	.long	0x50d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x11d2
	.uleb128 0x7
	.byte	0x4
	.long	0x1311
	.uleb128 0x23
	.long	.LASF295
	.byte	0x1
	.value	0x1145
	.long	0x62e
	.byte	0x1
	.long	0x134f
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0x1145
	.long	0x6a7
	.byte	0
	.uleb128 0x23
	.long	.LASF296
	.byte	0x1
	.value	0xfb9
	.long	0x7e
	.byte	0x1
	.long	0x13d1
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0xfb9
	.long	0x60d
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.value	0xfb9
	.long	0x60d
	.uleb128 0x24
	.long	.LASF282
	.byte	0x1
	.value	0xfba
	.long	0x60d
	.uleb128 0x24
	.long	.LASF297
	.byte	0x1
	.value	0xfba
	.long	0x60d
	.uleb128 0x25
	.string	"ia"
	.byte	0x1
	.value	0xfbb
	.long	0x623
	.uleb128 0x25
	.string	"ra"
	.byte	0x1
	.value	0xfbb
	.long	0x623
	.uleb128 0x24
	.long	.LASF298
	.byte	0x1
	.value	0xfbc
	.long	0x488
	.uleb128 0x26
	.string	"p1"
	.byte	0x1
	.value	0xfbe
	.long	0x5cd
	.uleb128 0x26
	.string	"p2"
	.byte	0x1
	.value	0xfbe
	.long	0x5cd
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0xfbf
	.long	0x7e
	.byte	0
	.uleb128 0x23
	.long	.LASF299
	.byte	0x1
	.value	0x10d5
	.long	0xbf
	.byte	0x1
	.long	0x13ef
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x10d5
	.long	0x1325
	.byte	0
	.uleb128 0x27
	.long	.LASF301
	.byte	0x1
	.value	0xf77
	.byte	0x1
	.long	0x1415
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0xf77
	.long	0x1325
	.uleb128 0x24
	.long	.LASF300
	.byte	0x1
	.value	0xf77
	.long	0xbf
	.byte	0
	.uleb128 0x27
	.long	.LASF302
	.byte	0x1
	.value	0x1420
	.byte	0x1
	.long	0x1453
	.uleb128 0x24
	.long	.LASF228
	.byte	0x1
	.value	0x1420
	.long	0xd93
	.uleb128 0x24
	.long	.LASF303
	.byte	0x1
	.value	0x1421
	.long	0xbf
	.uleb128 0x26
	.string	"smp"
	.byte	0x1
	.value	0x1423
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0x142a
	.long	0x6a7
	.byte	0
	.uleb128 0x23
	.long	.LASF304
	.byte	0x1
	.value	0x1316
	.long	0xbf
	.byte	0x1
	.long	0x147d
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1316
	.long	0x1325
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x1318
	.long	0xbf
	.byte	0
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.value	0x1337
	.long	0xbf
	.byte	0x1
	.long	0x14bf
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1337
	.long	0x1325
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x1337
	.long	0x50d
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0x1339
	.long	0x14bf
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x133a
	.long	0xbf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x10e5
	.uleb128 0x27
	.long	.LASF306
	.byte	0x1
	.value	0x13da
	.byte	0x1
	.long	0x1503
	.uleb128 0x24
	.long	.LASF287
	.byte	0x1
	.value	0x13da
	.long	0x60d
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x13dc
	.long	0x7e
	.uleb128 0x29
	.uleb128 0x26
	.string	"smp"
	.byte	0x1
	.value	0x13ea
	.long	0x1325
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x13eb
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF307
	.byte	0x1
	.value	0xf47
	.long	0xbf
	.byte	0x1
	.long	0x1539
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0xf47
	.long	0x1325
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0xf49
	.long	0x1539
	.uleb128 0x26
	.string	"rsp"
	.byte	0x1
	.value	0xf49
	.long	0x1539
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xfa4
	.uleb128 0x2a
	.long	.LASF388
	.byte	0x1
	.value	0x145a
	.long	0x7e
	.byte	0x3
	.uleb128 0x27
	.long	.LASF308
	.byte	0x1
	.value	0x3f8
	.byte	0x3
	.long	0x158a
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x3f8
	.long	0x1ba
	.uleb128 0x24
	.long	.LASF309
	.byte	0x1
	.value	0x3f8
	.long	0xad
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x3fa
	.long	0xad
	.uleb128 0x29
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x3fc
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF310
	.byte	0x1
	.value	0xdc2
	.byte	0x3
	.long	0x15bc
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0xdc2
	.long	0x6a7
	.uleb128 0x25
	.string	"cid"
	.byte	0x1
	.value	0xdc2
	.long	0xca
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0xdc3
	.long	0x50d
	.byte	0
	.uleb128 0x23
	.long	.LASF311
	.byte	0x1
	.value	0xf31
	.long	0x7e
	.byte	0x1
	.long	0x1623
	.uleb128 0x25
	.string	"u"
	.byte	0x1
	.value	0xf31
	.long	0x60d
	.uleb128 0x25
	.string	"v"
	.byte	0x1
	.value	0xf31
	.long	0x60d
	.uleb128 0x25
	.string	"x"
	.byte	0x1
	.value	0xf32
	.long	0x60d
	.uleb128 0x25
	.string	"y"
	.byte	0x1
	.value	0xf32
	.long	0x60d
	.uleb128 0x24
	.long	.LASF290
	.byte	0x1
	.value	0xf32
	.long	0x1623
	.uleb128 0x26
	.string	"m"
	.byte	0x1
	.value	0xf34
	.long	0x1629
	.uleb128 0x26
	.string	"xs"
	.byte	0x1
	.value	0xf34
	.long	0x5cd
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0xf35
	.long	0x7e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd5
	.uleb128 0x13
	.long	0xbf
	.long	0x1639
	.uleb128 0x14
	.long	0x1b3
	.byte	0x4f
	.byte	0
	.uleb128 0x27
	.long	.LASF312
	.byte	0x1
	.value	0xf4f
	.byte	0x1
	.long	0x1679
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0xf4f
	.long	0x6a7
	.uleb128 0x24
	.long	.LASF313
	.byte	0x1
	.value	0xf4f
	.long	0xbf
	.uleb128 0x28
	.long	.LASF228
	.byte	0x1
	.value	0xf51
	.long	0xd93
	.uleb128 0x29
	.uleb128 0x26
	.string	"smp"
	.byte	0x1
	.value	0xf53
	.long	0x1325
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF320
	.byte	0x1
	.value	0x3ef
	.long	.LFB54
	.long	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c0
	.uleb128 0x2c
	.string	"dst"
	.byte	0x1
	.value	0x3ef
	.long	0x1ba
	.long	.LLST0
	.uleb128 0x2c
	.string	"src"
	.byte	0x1
	.value	0x3ef
	.long	0x16c0
	.long	.LLST1
	.uleb128 0x2d
	.long	.LASF309
	.byte	0x1
	.value	0x3ef
	.long	0xad
	.long	.LLST2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x16c6
	.uleb128 0x2e
	.uleb128 0x2f
	.long	.LASF436
	.byte	0x1
	.value	0xe8f
	.long	0xbf
	.long	.LFB78
	.long	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x23
	.long	.LASF314
	.byte	0x1
	.value	0x12ff
	.long	0xbf
	.byte	0x1
	.long	0x1707
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x12ff
	.long	0x1325
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x12ff
	.long	0x50d
	.byte	0
	.uleb128 0x30
	.long	0x16dd
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x172b
	.uleb128 0x31
	.long	0x16ee
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x16fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x32
	.long	.LASF315
	.byte	0x1
	.value	0x1517
	.long	0x7e
	.long	.LFB149
	.long	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x179a
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x1517
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF228
	.byte	0x1
	.value	0x1517
	.long	0xf48
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x1519
	.long	0x7e
	.byte	0
	.uleb128 0x35
	.string	"ops"
	.byte	0x1
	.value	0x151a
	.long	0xde8
	.uleb128 0x5
	.byte	0x3
	.long	ops.5768
	.uleb128 0x36
	.long	.Ldebug_ranges0+0
	.uleb128 0x35
	.string	"smp"
	.byte	0x1
	.value	0x1522
	.long	0x1325
	.uleb128 0x6
	.byte	0x3
	.long	bt_smp_pool
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF316
	.byte	0x1
	.value	0x1158
	.long	0x1325
	.long	.LFB114
	.long	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x17dc
	.uleb128 0x2d
	.long	.LASF215
	.byte	0x1
	.value	0x1158
	.long	0x6a7
	.long	.LLST3
	.uleb128 0x37
	.long	.LASF228
	.byte	0x1
	.value	0x115a
	.long	0xd93
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LVL10
	.long	0x4ca4
	.byte	0
	.uleb128 0x32
	.long	.LASF317
	.byte	0x1
	.value	0x350
	.long	0x7e
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x1830
	.uleb128 0x2d
	.long	.LASF318
	.byte	0x1
	.value	0x350
	.long	0x1830
	.long	.LLST4
	.uleb128 0x2c
	.string	"bit"
	.byte	0x1
	.value	0x350
	.long	0x7e
	.long	.LLST5
	.uleb128 0x39
	.string	"val"
	.byte	0x1
	.value	0x352
	.long	0x31c
	.long	.LLST6
	.uleb128 0x38
	.long	.LVL14
	.long	0x4cb0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1836
	.uleb128 0x1c
	.long	0x310
	.uleb128 0x32
	.long	.LASF319
	.byte	0x1
	.value	0xeb1
	.long	0x50d
	.long	.LFB80
	.long	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b7
	.uleb128 0x2d
	.long	.LASF215
	.byte	0x1
	.value	0xeb1
	.long	0x6a7
	.long	.LLST7
	.uleb128 0x2c
	.string	"op"
	.byte	0x1
	.value	0xeb1
	.long	0xbf
	.long	.LLST8
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0xeb2
	.long	0xad
	.long	.LLST9
	.uleb128 0x39
	.string	"hdr"
	.byte	0x1
	.value	0xeb4
	.long	0x18b7
	.long	.LLST10
	.uleb128 0x39
	.string	"buf"
	.byte	0x1
	.value	0xeb5
	.long	0x50d
	.long	.LLST11
	.uleb128 0x38
	.long	.LVL18
	.long	0x4cbc
	.uleb128 0x38
	.long	.LVL21
	.long	0x4cc8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf89
	.uleb128 0x2b
	.long	.LASF321
	.byte	0x1
	.value	0x368
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x190d
	.uleb128 0x2d
	.long	.LASF318
	.byte	0x1
	.value	0x368
	.long	0x190d
	.long	.LLST12
	.uleb128 0x2c
	.string	"bit"
	.byte	0x1
	.value	0x368
	.long	0x7e
	.long	.LLST13
	.uleb128 0x3a
	.long	.LASF322
	.byte	0x1
	.value	0x36a
	.long	0x31c
	.long	.LLST14
	.uleb128 0x38
	.long	.LVL27
	.long	0x4cd4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x310
	.uleb128 0x32
	.long	.LASF323
	.byte	0x1
	.value	0x355
	.long	0x7e
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x1977
	.uleb128 0x2d
	.long	.LASF318
	.byte	0x1
	.value	0x355
	.long	0x190d
	.long	.LLST15
	.uleb128 0x2c
	.string	"bit"
	.byte	0x1
	.value	0x355
	.long	0x7e
	.long	.LLST16
	.uleb128 0x3a
	.long	.LASF322
	.byte	0x1
	.value	0x357
	.long	0x31c
	.long	.LLST17
	.uleb128 0x39
	.string	"old"
	.byte	0x1
	.value	0x358
	.long	0x31c
	.long	.LLST18
	.uleb128 0x38
	.long	.LVL33
	.long	0x4ce0
	.byte	0
	.uleb128 0x2b
	.long	.LASF324
	.byte	0x1
	.value	0xf8d
	.long	.LFB91
	.long	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x19cf
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0xf8d
	.long	0x1325
	.long	.LLST19
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.value	0xf8d
	.long	0x50d
	.long	.LLST20
	.uleb128 0x2c
	.string	"cb"
	.byte	0x1
	.value	0xf8e
	.long	0xd55
	.long	.LLST21
	.uleb128 0x38
	.long	.LVL37
	.long	0x4cec
	.uleb128 0x38
	.long	.LVL38
	.long	0x4cf8
	.byte	0
	.uleb128 0x32
	.long	.LASF325
	.byte	0x1
	.value	0x1036
	.long	0xbf
	.long	.LFB100
	.long	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a66
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0x1036
	.long	0x1325
	.long	.LLST22
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x1038
	.long	0x6a7
	.long	.LLST23
	.uleb128 0x39
	.string	"rsp"
	.byte	0x1
	.value	0x1039
	.long	0x1539
	.long	.LLST24
	.uleb128 0x3a
	.long	.LASF326
	.byte	0x1
	.value	0x103a
	.long	0x50d
	.long	.LLST25
	.uleb128 0x3b
	.long	.LVL43
	.long	0x183b
	.long	0x1a41
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x38
	.long	.LVL45
	.long	0x4cc8
	.uleb128 0x3d
	.long	.LVL47
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF327
	.byte	0x1
	.value	0x11c7
	.long	0xbf
	.long	.LFB117
	.long	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aef
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0x11c7
	.long	0x1325
	.long	.LLST26
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x11c9
	.long	0x14bf
	.long	.LLST27
	.uleb128 0x3a
	.long	.LASF328
	.byte	0x1
	.value	0x11ca
	.long	0x50d
	.long	.LLST28
	.uleb128 0x3b
	.long	.LVL53
	.long	0x183b
	.long	0x1ac9
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL55
	.long	0x4cc8
	.uleb128 0x3d
	.long	.LVL60
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF329
	.byte	0x1
	.value	0xfa2
	.long	0xbf
	.long	.LFB93
	.long	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b86
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0xfa2
	.long	0x1325
	.long	.LLST29
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0xfa4
	.long	0x6a7
	.long	.LLST30
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0xfa5
	.long	0x1b86
	.long	.LLST31
	.uleb128 0x3a
	.long	.LASF326
	.byte	0x1
	.value	0xfa6
	.long	0x50d
	.long	.LLST32
	.uleb128 0x3b
	.long	.LVL67
	.long	0x183b
	.long	0x1b61
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL69
	.long	0x4cc8
	.uleb128 0x3d
	.long	.LVL71
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x101b
	.uleb128 0x32
	.long	.LASF330
	.byte	0x1
	.value	0xebd
	.long	0x7e
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c29
	.uleb128 0x2c
	.string	"key"
	.byte	0x1
	.value	0xebd
	.long	0x60d
	.long	.LLST33
	.uleb128 0x2c
	.string	"in"
	.byte	0x1
	.value	0xebd
	.long	0x60d
	.long	.LLST34
	.uleb128 0x2c
	.string	"len"
	.byte	0x1
	.value	0xebd
	.long	0xad
	.long	.LLST35
	.uleb128 0x3e
	.string	"out"
	.byte	0x1
	.value	0xebe
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF123
	.byte	0x1
	.value	0xec0
	.long	0x806
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.uleb128 0x37
	.long	.LASF104
	.byte	0x1
	.value	0xec1
	.long	0x843
	.uleb128 0x3
	.byte	0x91
	.sleb128 -296
	.uleb128 0x38
	.long	.LVL77
	.long	0x4d04
	.uleb128 0x38
	.long	.LVL78
	.long	0x4d10
	.uleb128 0x38
	.long	.LVL79
	.long	0x4d1c
	.uleb128 0x38
	.long	.LVL80
	.long	0x4d28
	.byte	0
	.uleb128 0x2b
	.long	.LASF331
	.byte	0x1
	.value	0xf64
	.long	.LFB88
	.long	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c93
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0xf64
	.long	0x1325
	.long	.LLST36
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0xf66
	.long	0x6a7
	.long	.LLST37
	.uleb128 0x38
	.long	.LVL86
	.long	0x4d31
	.uleb128 0x38
	.long	.LVL87
	.long	0x4d3d
	.uleb128 0x38
	.long	.LVL88
	.long	0x4d3d
	.uleb128 0x3f
	.long	.LVL92
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	.LASF332
	.byte	0x1
	.value	0x12a7
	.long	0xbf
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d42
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x12a7
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x12a7
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x12a9
	.long	0x6a7
	.long	.LLST38
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x12aa
	.long	0x1d42
	.long	.LLST39
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB35
	.long	.LBE35-.LBB35
	.byte	0x1
	.value	0x12ba
	.long	0x1d1e
	.uleb128 0x42
	.long	0x1408
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST40
	.uleb128 0x3d
	.long	.LVL100
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL97
	.long	0x17dc
	.long	0x1d38
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x38
	.long	.LVL98
	.long	0x4d49
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1036
	.uleb128 0x2b
	.long	.LASF333
	.byte	0x1
	.value	0x140c
	.long	.LFB138
	.long	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x1db5
	.uleb128 0x33
	.long	.LASF228
	.byte	0x1
	.value	0x140c
	.long	0xd93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x140e
	.long	0x1325
	.long	.LLST41
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.value	0x1415
	.long	0xd4f
	.long	.LLST42
	.uleb128 0x38
	.long	.LVL104
	.long	0x4d31
	.uleb128 0x38
	.long	.LVL105
	.long	0x4d49
	.uleb128 0x3d
	.long	.LVL106
	.long	0x17dc
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF334
	.byte	0x1
	.value	0xf7c
	.long	.LFB90
	.long	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e5d
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.value	0xf7c
	.long	0x360
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0xf7e
	.long	0x1325
	.long	.LLST43
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB37
	.long	.LBE37-.LBB37
	.byte	0x1
	.value	0xf8a
	.long	0x1e21
	.uleb128 0x43
	.long	0x1408
	.long	.LLST44
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST45
	.uleb128 0x3d
	.long	.LVL114
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL111
	.long	0x17dc
	.long	0x1e3a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x38
	.long	.LVL112
	.long	0x4d49
	.uleb128 0x3f
	.long	.LVL116
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0xdc
	.byte	0x1c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF335
	.byte	0x1
	.value	0x12bd
	.long	0xbf
	.long	.LFB126
	.long	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f0d
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x12bd
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x12bd
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x44
	.long	.LBB39
	.long	.LBE39-.LBB39
	.long	0x1edc
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x12c1
	.long	0x1f0d
	.long	.LLST46
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x12c2
	.long	0x6a7
	.long	.LLST47
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.value	0x12c3
	.long	0xd4f
	.long	.LLST48
	.uleb128 0x38
	.long	.LVL121
	.long	0x4d55
	.byte	0
	.uleb128 0x3b
	.long	.LVL118
	.long	0x17dc
	.long	0x1ef6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LVL126
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1094
	.uleb128 0x32
	.long	.LASF336
	.byte	0x1
	.value	0x110c
	.long	0xbf
	.long	.LFB110
	.long	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fed
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x110c
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x110c
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x110e
	.long	0x6a7
	.long	.LLST49
	.uleb128 0x44
	.long	.LBB40
	.long	.LBE40-.LBB40
	.long	0x1f92
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x1111
	.long	0x1fed
	.long	.LLST50
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.value	0x1112
	.long	0xd4f
	.long	.LLST51
	.uleb128 0x38
	.long	.LVL134
	.long	0x4d55
	.byte	0
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB41
	.long	.LBE41-.LBB41
	.byte	0x1
	.value	0x1126
	.long	0x1fc9
	.uleb128 0x43
	.long	0x1408
	.long	.LLST52
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST53
	.uleb128 0x3d
	.long	.LVL138
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL129
	.long	0x17dc
	.long	0x1fe3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LVL136
	.long	0x18bd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x106c
	.uleb128 0x32
	.long	.LASF337
	.byte	0x1
	.value	0x10fb
	.long	0xbf
	.long	.LFB109
	.long	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x20a3
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x10fb
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x10fb
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x44
	.long	.LBB43
	.long	.LBE43-.LBB43
	.long	0x2072
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x10ff
	.long	0x20a3
	.long	.LLST54
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x1100
	.long	0x6a7
	.long	.LLST55
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.value	0x1101
	.long	0xd4f
	.long	.LLST56
	.uleb128 0x38
	.long	.LVL143
	.long	0x4d55
	.byte	0
	.uleb128 0x3b
	.long	.LVL140
	.long	0x17dc
	.long	0x208c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LVL148
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1051
	.uleb128 0x23
	.long	.LASF338
	.byte	0x1
	.value	0x112a
	.long	0x7e
	.byte	0x1
	.long	0x20c7
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x112a
	.long	0x1325
	.byte	0
	.uleb128 0x23
	.long	.LASF339
	.byte	0x1
	.value	0x1135
	.long	0xbf
	.byte	0x1
	.long	0x20e5
	.uleb128 0x24
	.long	.LASF340
	.byte	0x1
	.value	0x1135
	.long	0xbf
	.byte	0
	.uleb128 0x23
	.long	.LASF341
	.byte	0x1
	.value	0x1099
	.long	0xbf
	.byte	0x1
	.long	0x211b
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1099
	.long	0x1325
	.uleb128 0x24
	.long	.LASF342
	.byte	0x1
	.value	0x1099
	.long	0xbf
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x109b
	.long	0xbf
	.byte	0
	.uleb128 0x23
	.long	.LASF343
	.byte	0x1
	.value	0x104d
	.long	0xbf
	.byte	0x1
	.long	0x2169
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x104d
	.long	0x1325
	.uleb128 0x24
	.long	.LASF342
	.byte	0x1
	.value	0x104d
	.long	0xbf
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0x104f
	.long	0x1539
	.uleb128 0x26
	.string	"rsp"
	.byte	0x1
	.value	0x104f
	.long	0x1539
	.uleb128 0x28
	.long	.LASF281
	.byte	0x1
	.value	0x1050
	.long	0xbf
	.byte	0
	.uleb128 0x23
	.long	.LASF344
	.byte	0x1
	.value	0x1063
	.long	0xbf
	.byte	0x1
	.long	0x21ab
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1063
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0x1065
	.long	0x6a7
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.value	0x1066
	.long	0xd4f
	.uleb128 0x28
	.long	.LASF290
	.byte	0x1
	.value	0x1067
	.long	0xd5
	.byte	0
	.uleb128 0x23
	.long	.LASF345
	.byte	0x1
	.value	0xea4
	.long	0xbf
	.byte	0x1
	.long	0x21ed
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0xea4
	.long	0x1325
	.uleb128 0x24
	.long	.LASF342
	.byte	0x1
	.value	0xea4
	.long	0xbf
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0xea6
	.long	0x1539
	.uleb128 0x26
	.string	"rsp"
	.byte	0x1
	.value	0xea6
	.long	0x1539
	.byte	0
	.uleb128 0x40
	.long	.LASF346
	.byte	0x1
	.value	0x1188
	.long	0xbf
	.long	.LFB116
	.long	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x2537
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x1188
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x1188
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x118a
	.long	0x1539
	.long	.LLST57
	.uleb128 0x39
	.string	"rsp"
	.byte	0x1
	.value	0x118b
	.long	0x1539
	.long	.LLST58
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.value	0x118c
	.long	0x7e
	.uleb128 0x45
	.long	0x20a9
	.long	.LBB56
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0x1192
	.long	0x228e
	.uleb128 0x43
	.long	0x20ba
	.long	.LLST59
	.uleb128 0x38
	.long	.LVL152
	.long	0x4d61
	.uleb128 0x3d
	.long	.LVL153
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x20c7
	.long	.LBB60
	.long	.LBE60-.LBB60
	.byte	0x1
	.value	0x119a
	.long	0x22b5
	.uleb128 0x43
	.long	0x20d8
	.long	.LLST60
	.uleb128 0x38
	.long	.LVL159
	.long	0x16c7
	.byte	0
	.uleb128 0x45
	.long	0x20e5
	.long	.LBB62
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.value	0x11b2
	.long	0x23fb
	.uleb128 0x43
	.long	0x2102
	.long	.LLST61
	.uleb128 0x43
	.long	0x20f6
	.long	.LLST62
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x46
	.long	0x210e
	.long	.LLST63
	.uleb128 0x45
	.long	0x211b
	.long	.LBB64
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.value	0x109d
	.long	0x233a
	.uleb128 0x43
	.long	0x2138
	.long	.LLST61
	.uleb128 0x43
	.long	0x212c
	.long	.LLST65
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x46
	.long	0x2144
	.long	.LLST66
	.uleb128 0x46
	.long	0x2150
	.long	.LLST67
	.uleb128 0x46
	.long	0x215c
	.long	.LLST68
	.uleb128 0x38
	.long	.LVL172
	.long	0x16c7
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x2169
	.long	.LBB68
	.long	.LBE68-.LBB68
	.byte	0x1
	.value	0x10aa
	.long	0x23b6
	.uleb128 0x43
	.long	0x217a
	.long	.LLST69
	.uleb128 0x47
	.long	.LBB69
	.long	.LBE69-.LBB69
	.uleb128 0x46
	.long	0x2186
	.long	.LLST70
	.uleb128 0x46
	.long	0x2192
	.long	.LLST71
	.uleb128 0x48
	.long	0x219e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x38
	.long	.LVL181
	.long	0x4d6d
	.uleb128 0x3b
	.long	.LVL185
	.long	0x17dc
	.long	0x2396
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL186
	.long	0x4d61
	.uleb128 0x3d
	.long	.LVL188
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL176
	.long	0x17dc
	.long	0x23cf
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x3b
	.long	.LVL177
	.long	0x19cf
	.long	0x23e3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL179
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x21ab
	.long	.LBB72
	.long	.LBE72-.LBB72
	.byte	0x1
	.value	0x11b4
	.long	0x2447
	.uleb128 0x43
	.long	0x21c8
	.long	.LLST72
	.uleb128 0x43
	.long	0x21bc
	.long	.LLST73
	.uleb128 0x47
	.long	.LBB73
	.long	.LBE73-.LBB73
	.uleb128 0x46
	.long	0x21d4
	.long	.LLST74
	.uleb128 0x46
	.long	0x21e0
	.long	.LLST75
	.uleb128 0x38
	.long	.LVL194
	.long	0x16c7
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL162
	.long	0x16c7
	.uleb128 0x3b
	.long	.LVL163
	.long	0x18bd
	.long	0x2469
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL164
	.long	0x18bd
	.long	0x2482
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x41
	.byte	0
	.uleb128 0x3b
	.long	.LVL165
	.long	0x18bd
	.long	0x249b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3b
	.long	.LVL166
	.long	0x18bd
	.long	0x24b4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL167
	.long	0x17dc
	.long	0x24cd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL196
	.long	0x17dc
	.long	0x24e6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x3b
	.long	.LVL197
	.long	0x18bd
	.long	0x24ff
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL199
	.long	0x18bd
	.long	0x2519
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x3b
	.long	.LVL200
	.long	0x19cf
	.long	0x252d
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL202
	.long	0x4d28
	.byte	0
	.uleb128 0x2b
	.long	.LASF347
	.byte	0x1
	.value	0x13ff
	.long	.LFB137
	.long	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x2587
	.uleb128 0x33
	.long	.LASF228
	.byte	0x1
	.value	0x13ff
	.long	0xd93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x1401
	.long	0x1325
	.long	.LLST76
	.uleb128 0x38
	.long	.LVL205
	.long	0x4d79
	.uleb128 0x3f
	.long	.LVL207
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF348
	.byte	0x1
	.value	0x102a
	.byte	0x1
	.long	0x25b9
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x102a
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0x102c
	.long	0x6a7
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.value	0x102d
	.long	0xd4f
	.byte	0
	.uleb128 0x27
	.long	.LASF349
	.byte	0x1
	.value	0xffa
	.byte	0x1
	.long	0x2635
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0xffa
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0xffc
	.long	0x6a7
	.uleb128 0x28
	.long	.LASF182
	.byte	0x1
	.value	0xffd
	.long	0xd4f
	.uleb128 0x29
	.uleb128 0x28
	.long	.LASF350
	.byte	0x1
	.value	0xfff
	.long	0x20a3
	.uleb128 0x28
	.long	.LASF351
	.byte	0x1
	.value	0x1000
	.long	0x1fed
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x1001
	.long	0x50d
	.uleb128 0x26
	.string	"key"
	.byte	0x1
	.value	0x1002
	.long	0x5cd
	.uleb128 0x28
	.long	.LASF176
	.byte	0x1
	.value	0x1003
	.long	0xe0
	.uleb128 0x28
	.long	.LASF177
	.byte	0x1
	.value	0x1004
	.long	0xca
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x1415
	.long	.LFB139
	.long	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x291a
	.uleb128 0x31
	.long	0x1422
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x142e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x46
	.long	0x143a
	.long	.LLST77
	.uleb128 0x46
	.long	0x1446
	.long	.LLST78
	.uleb128 0x44
	.long	.LBB83
	.long	.LBE83-.LBB83
	.long	0x2910
	.uleb128 0x43
	.long	0x142e
	.long	.LLST79
	.uleb128 0x43
	.long	0x1422
	.long	.LLST80
	.uleb128 0x47
	.long	.LBB84
	.long	.LBE84-.LBB84
	.uleb128 0x49
	.long	0x143a
	.uleb128 0x49
	.long	0x1446
	.uleb128 0x41
	.long	0x2587
	.long	.LBB85
	.long	.LBE85-.LBB85
	.byte	0x1
	.value	0x144d
	.long	0x2834
	.uleb128 0x43
	.long	0x2594
	.long	.LLST81
	.uleb128 0x47
	.long	.LBB86
	.long	.LBE86-.LBB86
	.uleb128 0x46
	.long	0x25a0
	.long	.LLST82
	.uleb128 0x46
	.long	0x25ac
	.long	.LLST83
	.uleb128 0x41
	.long	0x25b9
	.long	.LBB87
	.long	.LBE87-.LBB87
	.byte	0x1
	.value	0x1033
	.long	0x281c
	.uleb128 0x43
	.long	0x25c6
	.long	.LLST84
	.uleb128 0x47
	.long	.LBB88
	.long	.LBE88-.LBB88
	.uleb128 0x46
	.long	0x25d2
	.long	.LLST85
	.uleb128 0x46
	.long	0x25de
	.long	.LLST86
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x68
	.uleb128 0x46
	.long	0x25eb
	.long	.LLST87
	.uleb128 0x46
	.long	0x25f7
	.long	.LLST88
	.uleb128 0x46
	.long	0x2603
	.long	.LLST89
	.uleb128 0x48
	.long	0x260f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x48
	.long	0x261b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x48
	.long	0x2627
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x38
	.long	.LVL222
	.long	0x4d61
	.uleb128 0x38
	.long	.LVL223
	.long	0x4d61
	.uleb128 0x38
	.long	.LVL224
	.long	0x4d61
	.uleb128 0x3b
	.long	.LVL225
	.long	0x183b
	.long	0x2780
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL228
	.long	0x4cc8
	.uleb128 0x3b
	.long	.LVL230
	.long	0x1977
	.long	0x27aa
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL231
	.long	0x183b
	.long	0x27ca
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -88
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LVL234
	.long	0x4cc8
	.uleb128 0x3b
	.long	.LVL236
	.long	0x1977
	.long	0x27f6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.long	ident_sent
	.byte	0
	.uleb128 0x3b
	.long	.LVL237
	.long	0x17dc
	.long	0x2810
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LVL238
	.long	0x4d85
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LVL218
	.long	0x17dc
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB91
	.long	.LBE91-.LBB91
	.byte	0x1
	.value	0x144f
	.long	0x286b
	.uleb128 0x43
	.long	0x1408
	.long	.LLST90
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST91
	.uleb128 0x3d
	.long	.LVL242
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL211
	.long	0x1913
	.long	0x2886
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3b
	.long	.LVL212
	.long	0x17dc
	.long	0x28a1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL213
	.long	0x18bd
	.long	0x28bb
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x3b
	.long	.LVL214
	.long	0x17dc
	.long	0x28d5
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL215
	.long	0x18bd
	.long	0x28ef
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.uleb128 0x38
	.long	.LVL216
	.long	0x18bd
	.uleb128 0x3d
	.long	.LVL217
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL243
	.long	0x4d28
	.byte	0
	.uleb128 0x2b
	.long	.LASF352
	.byte	0x1
	.value	0xff6
	.long	.LFB97
	.long	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x29b7
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0xff6
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4a
	.long	0x1639
	.long	.LBB98
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.value	0xff8
	.uleb128 0x4b
	.long	0x1652
	.byte	0x1
	.uleb128 0x43
	.long	0x1646
	.long	.LLST92
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x46
	.long	0x165e
	.long	.LLST93
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x46
	.long	0x166b
	.long	.LLST93
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB101
	.long	.LBE101-.LBB101
	.byte	0x1
	.value	0xf5f
	.long	0x29aa
	.uleb128 0x43
	.long	0x1408
	.long	.LLST95
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST96
	.uleb128 0x4c
	.long	.LVL249
	.long	0x1c29
	.byte	0
	.uleb128 0x38
	.long	.LVL247
	.long	0x4d91
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x154c
	.long	.LFB165
	.long	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f0
	.uleb128 0x31
	.long	0x1559
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x46
	.long	0x1571
	.long	.LLST97
	.uleb128 0x4b
	.long	0x1565
	.byte	0x10
	.uleb128 0x36
	.long	.Ldebug_ranges0+0xb0
	.uleb128 0x46
	.long	0x157c
	.long	.LLST98
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF353
	.byte	0x1
	.value	0xf13
	.long	0x7e
	.long	.LFB84
	.long	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd0
	.uleb128 0x2c
	.string	"w"
	.byte	0x1
	.value	0xf13
	.long	0x60d
	.long	.LLST99
	.uleb128 0x2c
	.string	"n1"
	.byte	0x1
	.value	0xf13
	.long	0x60d
	.long	.LLST100
	.uleb128 0x2c
	.string	"n2"
	.byte	0x1
	.value	0xf13
	.long	0x60d
	.long	.LLST101
	.uleb128 0x3e
	.string	"r"
	.byte	0x1
	.value	0xf14
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF354
	.byte	0x1
	.value	0xf14
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.string	"a1"
	.byte	0x1
	.value	0xf14
	.long	0x623
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3e
	.string	"a2"
	.byte	0x1
	.value	0xf15
	.long	0x623
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LASF355
	.byte	0x1
	.value	0xf15
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.string	"ws"
	.byte	0x1
	.value	0xf17
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x35
	.string	"m"
	.byte	0x1
	.value	0xf18
	.long	0x2bd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0xf19
	.long	0x7e
	.long	.LLST102
	.uleb128 0x3b
	.long	.LVL258
	.long	0x1679
	.long	0x2acb
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL259
	.long	0x1679
	.long	0x2aed
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -85
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -136
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL260
	.long	0x1679
	.long	0x2b0f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -140
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL261
	.long	0x1679
	.long	0x2b30
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -144
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL262
	.long	0x1679
	.long	0x2b4f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3b
	.long	.LVL263
	.long	0x1679
	.long	0x2b6e
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3b
	.long	.LVL264
	.long	0x1679
	.long	0x2b90
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -132
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL265
	.long	0x1b8c
	.long	0x2bb2
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.uleb128 0x3b
	.long	.LVL268
	.long	0x29b7
	.long	0x2bc6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL270
	.long	0x4d28
	.byte	0
	.uleb128 0x13
	.long	0xbf
	.long	0x2be0
	.uleb128 0x14
	.long	0x1b3
	.byte	0x40
	.byte	0
	.uleb128 0x23
	.long	.LASF356
	.byte	0x1
	.value	0xee2
	.long	0x7e
	.byte	0x1
	.long	0x2c88
	.uleb128 0x25
	.string	"w"
	.byte	0x1
	.value	0xee2
	.long	0x60d
	.uleb128 0x25
	.string	"n1"
	.byte	0x1
	.value	0xee2
	.long	0x60d
	.uleb128 0x25
	.string	"n2"
	.byte	0x1
	.value	0xee2
	.long	0x60d
	.uleb128 0x25
	.string	"a1"
	.byte	0x1
	.value	0xee3
	.long	0x623
	.uleb128 0x25
	.string	"a2"
	.byte	0x1
	.value	0xee3
	.long	0x623
	.uleb128 0x24
	.long	.LASF289
	.byte	0x1
	.value	0xee3
	.long	0x488
	.uleb128 0x25
	.string	"ltk"
	.byte	0x1
	.value	0xee4
	.long	0x488
	.uleb128 0x4d
	.long	.LASF357
	.byte	0x1
	.value	0xee6
	.long	0x2c98
	.byte	0x10
	.byte	0x6c
	.byte	0x88
	.byte	0x83
	.byte	0x91
	.byte	0xaa
	.byte	0xf5
	.byte	0xa5
	.byte	0x38
	.byte	0x60
	.byte	0x37
	.byte	0xb
	.byte	0xdb
	.byte	0x5a
	.byte	0x60
	.byte	0x83
	.byte	0xbe
	.uleb128 0x26
	.string	"m"
	.byte	0x1
	.value	0xeea
	.long	0x2c9d
	.uleb128 0x26
	.string	"t"
	.byte	0x1
	.value	0xef4
	.long	0x5cd
	.uleb128 0x26
	.string	"ws"
	.byte	0x1
	.value	0xef4
	.long	0x5fd
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0xef5
	.long	0x7e
	.byte	0
	.uleb128 0x13
	.long	0x613
	.long	0x2c98
	.uleb128 0x14
	.long	0x1b3
	.byte	0xf
	.byte	0
	.uleb128 0x1c
	.long	0x2c88
	.uleb128 0x13
	.long	0xbf
	.long	0x2cad
	.uleb128 0x14
	.long	0x1b3
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.long	.LASF358
	.byte	0x1
	.value	0x1200
	.long	0xbf
	.byte	0x1
	.long	0x2ced
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1200
	.long	0x1325
	.uleb128 0x25
	.string	"e"
	.byte	0x1
	.value	0x1200
	.long	0x60d
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0x1202
	.long	0x2ced
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x1203
	.long	0x50d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1109
	.uleb128 0x32
	.long	.LASF359
	.byte	0x1
	.value	0x1211
	.long	0xbf
	.long	.LFB121
	.long	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ff3
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0x1211
	.long	0x1325
	.long	.LLST103
	.uleb128 0x35
	.string	"re"
	.byte	0x1
	.value	0x1213
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x35
	.string	"e"
	.byte	0x1
	.value	0x1213
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x35
	.string	"r"
	.byte	0x1
	.value	0x1213
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -153
	.uleb128 0x45
	.long	0x2be0
	.long	.LBB112
	.long	.Ldebug_ranges0+0xc8
	.byte	0x1
	.value	0x1220
	.long	0x2f01
	.uleb128 0x43
	.long	0x2c33
	.long	.LLST104
	.uleb128 0x43
	.long	0x2c27
	.long	.LLST105
	.uleb128 0x43
	.long	0x2c1c
	.long	.LLST106
	.uleb128 0x43
	.long	0x2c11
	.long	.LLST107
	.uleb128 0x43
	.long	0x2c06
	.long	.LLST108
	.uleb128 0x43
	.long	0x2bfb
	.long	.LLST108
	.uleb128 0x43
	.long	0x2bf1
	.long	.LLST110
	.uleb128 0x36
	.long	.Ldebug_ranges0+0xc8
	.uleb128 0x48
	.long	0x2c5c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x48
	.long	0x2c66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -137
	.uleb128 0x48
	.long	0x2c70
	.uleb128 0x3
	.byte	0x91
	.sleb128 -121
	.uleb128 0x46
	.long	0x2c7b
	.long	.LLST111
	.uleb128 0x48
	.long	0x2c3f
	.uleb128 0x5
	.byte	0x3
	.long	salt.5306
	.uleb128 0x3b
	.long	.LVL275
	.long	0x1679
	.long	0x2df1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -113
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 267
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL276
	.long	0x1b8c
	.long	0x2e15
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	salt.5306
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x75
	.sleb128 -113
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL278
	.long	0x1679
	.long	0x2e37
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -76
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x75
	.sleb128 -160
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL279
	.long	0x1679
	.long	0x2e57
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 -60
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL280
	.long	0x1679
	.long	0x2e77
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 -43
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x76
	.sleb128 72
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3b
	.long	.LVL281
	.long	0x1679
	.long	0x2e97
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x76
	.sleb128 79
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3b
	.long	.LVL282
	.long	0x1b8c
	.long	0x2eb8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x75
	.sleb128 -81
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL285
	.long	0x29b7
	.long	0x2ece
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x75
	.sleb128 -156
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL286
	.long	0x1b8c
	.long	0x2eef
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x75
	.sleb128 -81
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x35
	.byte	0
	.uleb128 0x3d
	.long	.LVL288
	.long	0x29b7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x2cad
	.long	.LBB118
	.long	.LBE118-.LBB118
	.byte	0x1
	.value	0x1233
	.long	0x2f80
	.uleb128 0x43
	.long	0x2cca
	.long	.LLST112
	.uleb128 0x43
	.long	0x2cbe
	.long	.LLST113
	.uleb128 0x47
	.long	.LBB119
	.long	.LBE119-.LBB119
	.uleb128 0x46
	.long	0x2cd4
	.long	.LLST114
	.uleb128 0x46
	.long	0x2ce0
	.long	.LLST115
	.uleb128 0x3b
	.long	.LVL294
	.long	0x183b
	.long	0x2f5a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL297
	.long	0x4cc8
	.uleb128 0x3d
	.long	.LVL299
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL290
	.long	0x29f0
	.long	0x2fa3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 315
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 171
	.byte	0
	.uleb128 0x3b
	.long	.LVL291
	.long	0x29f0
	.long	0x2fc6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 315
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 171
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.byte	0
	.uleb128 0x38
	.long	.LVL292
	.long	0x4d9d
	.uleb128 0x3b
	.long	.LVL301
	.long	0x18bd
	.long	0x2fe9
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.long	.LVL302
	.long	0x4d28
	.byte	0
	.uleb128 0x32
	.long	.LASF360
	.byte	0x1
	.value	0xecd
	.long	0x7e
	.long	.LFB82
	.long	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3123
	.uleb128 0x2c
	.string	"u"
	.byte	0x1
	.value	0xecd
	.long	0x60d
	.long	.LLST116
	.uleb128 0x2c
	.string	"v"
	.byte	0x1
	.value	0xecd
	.long	0x60d
	.long	.LLST117
	.uleb128 0x2c
	.string	"x"
	.byte	0x1
	.value	0xecd
	.long	0x60d
	.long	.LLST118
	.uleb128 0x3e
	.string	"z"
	.byte	0x1
	.value	0xece
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"res"
	.byte	0x1
	.value	0xece
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"xs"
	.byte	0x1
	.value	0xed0
	.long	0x5cd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x35
	.string	"m"
	.byte	0x1
	.value	0xed1
	.long	0x2bd0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0xed2
	.long	0x7e
	.long	.LLST119
	.uleb128 0x3b
	.long	.LVL308
	.long	0x1679
	.long	0x30a2
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL309
	.long	0x1679
	.long	0x30c3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -69
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL310
	.long	0x1679
	.long	0x30e3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL311
	.long	0x1b8c
	.long	0x3105
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -117
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -101
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x41
	.byte	0
	.uleb128 0x3b
	.long	.LVL314
	.long	0x29b7
	.long	0x3119
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL317
	.long	0x4d28
	.byte	0
	.uleb128 0x32
	.long	.LASF361
	.byte	0x1
	.value	0xf93
	.long	0x7e
	.long	.LFB92
	.long	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x320f
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0xf93
	.long	0x1325
	.long	.LLST120
	.uleb128 0x2d
	.long	.LASF246
	.byte	0x1
	.value	0xf93
	.long	0xbf
	.long	.LLST121
	.uleb128 0x39
	.string	"rsp"
	.byte	0x1
	.value	0xf95
	.long	0x1d42
	.long	.LLST122
	.uleb128 0x39
	.string	"buf"
	.byte	0x1
	.value	0xf96
	.long	0x50d
	.long	.LLST123
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB124
	.long	.LBE124-.LBB124
	.byte	0x1
	.value	0xf97
	.long	0x31b4
	.uleb128 0x43
	.long	0x1408
	.long	.LLST124
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST125
	.uleb128 0x3d
	.long	.LVL320
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x158a
	.long	.LBB126
	.long	.LBE126-.LBB126
	.byte	0x1
	.value	0xf9f
	.long	0x31ed
	.uleb128 0x43
	.long	0x15a3
	.long	.LLST126
	.uleb128 0x43
	.long	0x15af
	.long	.LLST127
	.uleb128 0x43
	.long	0x1597
	.long	.LLST128
	.uleb128 0x38
	.long	.LVL326
	.long	0x4cec
	.byte	0
	.uleb128 0x3b
	.long	.LVL321
	.long	0x183b
	.long	0x3205
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.long	.LVL323
	.long	0x4cc8
	.byte	0
	.uleb128 0x2b
	.long	.LASF362
	.byte	0x1
	.value	0x1237
	.long	.LFB122
	.long	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x331c
	.uleb128 0x33
	.long	.LASF288
	.byte	0x1
	.value	0x1237
	.long	0x60d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x1239
	.long	0x1325
	.long	.LLST129
	.uleb128 0x34
	.string	"i"
	.byte	0x1
	.value	0x123c
	.long	0x7e
	.byte	0
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0xe8
	.long	0x3293
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0x1256
	.long	0xbf
	.long	.LLST130
	.uleb128 0x3b
	.long	.LVL337
	.long	0x2cf3
	.long	0x327f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.byte	0
	.uleb128 0x3f
	.long	.LVL339
	.long	0x3123
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL331
	.long	0x1913
	.long	0x32af
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3b
	.long	.LVL333
	.long	0x17dc
	.long	0x32cb
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x4f
	.long	.LVL334
	.long	0x18bd
	.long	0x32e7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3b
	.long	.LVL335
	.long	0x17dc
	.long	0x3303
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x3d
	.long	.LVL336
	.long	0x17dc
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	.LASF363
	.byte	0x1
	.value	0x13ae
	.long	.LFB135
	.long	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x33ca
	.uleb128 0x33
	.long	.LASF228
	.byte	0x1
	.value	0x13ae
	.long	0xd93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x13ae
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x13b0
	.long	0x1325
	.long	.LLST131
	.uleb128 0x39
	.string	"hdr"
	.byte	0x1
	.value	0x13b7
	.long	0x18b7
	.long	.LLST132
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0x13b8
	.long	0xbf
	.long	.LLST133
	.uleb128 0x38
	.long	.LVL344
	.long	0x4da9
	.uleb128 0x3b
	.long	.LVL345
	.long	0x17dc
	.long	0x33a3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3b
	.long	.LVL346
	.long	0x1913
	.long	0x33b8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.byte	0
	.uleb128 0x3f
	.long	.LVL351
	.long	0x3123
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF364
	.byte	0x1
	.value	0x363
	.byte	0x3
	.long	0x33fc
	.uleb128 0x24
	.long	.LASF318
	.byte	0x1
	.value	0x363
	.long	0x190d
	.uleb128 0x25
	.string	"bit"
	.byte	0x1
	.value	0x363
	.long	0x7e
	.uleb128 0x28
	.long	.LASF322
	.byte	0x1
	.value	0x365
	.long	0x31c
	.byte	0
	.uleb128 0x32
	.long	.LASF365
	.byte	0x1
	.value	0x1369
	.long	0xbf
	.long	.LFB134
	.long	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e4
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x1369
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x1369
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x136b
	.long	0x2ced
	.long	.LLST134
	.uleb128 0x41
	.long	0x33ca
	.long	.LBB132
	.long	.LBE132-.LBB132
	.byte	0x1
	.value	0x138d
	.long	0x3487
	.uleb128 0x43
	.long	0x33e3
	.long	.LLST135
	.uleb128 0x43
	.long	0x33d7
	.long	.LLST136
	.uleb128 0x47
	.long	.LBB133
	.long	.LBE133-.LBB133
	.uleb128 0x46
	.long	0x33ef
	.long	.LLST137
	.uleb128 0x38
	.long	.LVL357
	.long	0x4ce0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL359
	.long	0x17dc
	.long	0x34a0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3b
	.long	.LVL360
	.long	0x17dc
	.long	0x34b9
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL361
	.long	0x18bd
	.long	0x34d2
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x3f
	.long	.LVL362
	.long	0x2cf3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF366
	.byte	0x1
	.value	0xfd4
	.long	0xbf
	.long	.LFB96
	.long	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x35f8
	.uleb128 0x2c
	.string	"smp"
	.byte	0x1
	.value	0xfd4
	.long	0x1325
	.long	.LLST138
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0xfd6
	.long	0x6a7
	.long	.LLST139
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0xfd7
	.long	0x35f8
	.long	.LLST140
	.uleb128 0x39
	.string	"buf"
	.byte	0x1
	.value	0xfd8
	.long	0x50d
	.long	.LLST141
	.uleb128 0x39
	.string	"r"
	.byte	0x1
	.value	0xfd9
	.long	0xbf
	.long	.LLST142
	.uleb128 0x41
	.long	0x33ca
	.long	.LBB136
	.long	.LBE136-.LBB136
	.byte	0x1
	.value	0xff3
	.long	0x358b
	.uleb128 0x43
	.long	0x33e3
	.long	.LLST143
	.uleb128 0x42
	.long	0x33d7
	.uleb128 0x47
	.long	.LBB137
	.long	.LBE137-.LBB137
	.uleb128 0x46
	.long	0x33ef
	.long	.LLST144
	.uleb128 0x38
	.long	.LVL381
	.long	0x4ce0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL371
	.long	0x183b
	.long	0x35a3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL374
	.long	0x4cc8
	.uleb128 0x3b
	.long	.LVL377
	.long	0x2ff3
	.long	0x35d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	sc_public_key
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 203
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.byte	0
	.uleb128 0x38
	.long	.LVL378
	.long	0x4db5
	.uleb128 0x3d
	.long	.LVL380
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 -120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1000
	.uleb128 0x23
	.long	.LASF367
	.byte	0x1
	.value	0x130b
	.long	0xbf
	.byte	0x1
	.long	0x361c
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x130b
	.long	0x1325
	.byte	0
	.uleb128 0x23
	.long	.LASF368
	.byte	0x1
	.value	0x1303
	.long	0xbf
	.byte	0x1
	.long	0x363a
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1303
	.long	0x1325
	.byte	0
	.uleb128 0x51
	.long	0x1453
	.long	.LFB156
	.long	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x373c
	.uleb128 0x43
	.long	0x1464
	.long	.LLST145
	.uleb128 0x46
	.long	0x1470
	.long	.LLST146
	.uleb128 0x41
	.long	0x35fe
	.long	.LBB142
	.long	.LBE142-.LBB142
	.byte	0x1
	.value	0x1327
	.long	0x3686
	.uleb128 0x43
	.long	0x360f
	.long	.LLST147
	.uleb128 0x38
	.long	.LVL389
	.long	0x4d61
	.byte	0
	.uleb128 0x41
	.long	0x361c
	.long	.LBB144
	.long	.LBE144-.LBB144
	.byte	0x1
	.value	0x1335
	.long	0x36c3
	.uleb128 0x43
	.long	0x362d
	.long	.LLST148
	.uleb128 0x38
	.long	.LVL396
	.long	0x4dc1
	.uleb128 0x3d
	.long	.LVL397
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL386
	.long	0x18bd
	.long	0x36dd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3b
	.long	.LVL387
	.long	0x34e4
	.long	0x36f1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL391
	.long	0x18bd
	.long	0x370b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL392
	.long	0x18bd
	.long	0x3725
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3d
	.long	.LVL393
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x14c5
	.long	.LFB136
	.long	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x381d
	.uleb128 0x31
	.long	0x14d2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.long	0x14de
	.long	.LLST149
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x43
	.long	0x14d2
	.long	.LLST150
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x46
	.long	0x14de
	.long	.LLST149
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x46
	.long	0x14e9
	.long	.LLST152
	.uleb128 0x49
	.long	0x14f5
	.uleb128 0x41
	.long	0x1453
	.long	.LBB154
	.long	.LBE154-.LBB154
	.byte	0x1
	.value	0x13f9
	.long	0x37ea
	.uleb128 0x43
	.long	0x1464
	.long	.LLST153
	.uleb128 0x47
	.long	.LBB155
	.long	.LBE155-.LBB155
	.uleb128 0x46
	.long	0x1470
	.long	.LLST154
	.uleb128 0x3b
	.long	.LVL404
	.long	0x1a66
	.long	0x37d5
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.byte	0
	.uleb128 0x3d
	.long	.LVL406
	.long	0x363a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL402
	.long	0x17dc
	.long	0x3806
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool+120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3f
	.long	.LVL407
	.long	0x3123
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	0x147d
	.long	.LFB133
	.long	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x3902
	.uleb128 0x31
	.long	0x148e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x149a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x46
	.long	0x14a6
	.long	.LLST155
	.uleb128 0x49
	.long	0x14b2
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x120
	.long	0x38c8
	.uleb128 0x43
	.long	0x149a
	.long	.LLST156
	.uleb128 0x43
	.long	0x148e
	.long	.LLST157
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x49
	.long	0x14a6
	.uleb128 0x49
	.long	0x14b2
	.uleb128 0x4a
	.long	0x1453
	.long	.LBB168
	.long	.Ldebug_ranges0+0x120
	.byte	0x1
	.value	0x1363
	.uleb128 0x43
	.long	0x1464
	.long	.LLST157
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x120
	.uleb128 0x46
	.long	0x1470
	.long	.LLST159
	.uleb128 0x3b
	.long	.LVL414
	.long	0x1a66
	.long	0x38b3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	.LVL417
	.long	0x363a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL410
	.long	0x4d9d
	.uleb128 0x3b
	.long	.LVL411
	.long	0x18bd
	.long	0x38eb
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x3d
	.long	.LVL412
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF369
	.byte	0x1
	.value	0xfb2
	.byte	0x1
	.long	0x393a
	.uleb128 0x25
	.string	"p"
	.byte	0x1
	.value	0xfb2
	.long	0x60d
	.uleb128 0x25
	.string	"q"
	.byte	0x1
	.value	0xfb2
	.long	0x60d
	.uleb128 0x25
	.string	"r"
	.byte	0x1
	.value	0xfb2
	.long	0x488
	.uleb128 0x26
	.string	"len"
	.byte	0x1
	.value	0xfb4
	.long	0xad
	.byte	0
	.uleb128 0x30
	.long	0x134f
	.long	.LFB95
	.long	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a9e
	.uleb128 0x43
	.long	0x1360
	.long	.LLST160
	.uleb128 0x43
	.long	0x136a
	.long	.LLST161
	.uleb128 0x43
	.long	0x1374
	.long	.LLST162
	.uleb128 0x31
	.long	0x1380
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x138c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	0x1397
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x31
	.long	0x13a2
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x48
	.long	0x13ae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x49
	.long	0x13b9
	.uleb128 0x46
	.long	0x13c4
	.long	.LLST163
	.uleb128 0x41
	.long	0x3902
	.long	.LBB184
	.long	.LBE184-.LBB184
	.byte	0x1
	.value	0xfc8
	.long	0x39e2
	.uleb128 0x43
	.long	0x3923
	.long	.LLST164
	.uleb128 0x43
	.long	0x3919
	.long	.LLST165
	.uleb128 0x43
	.long	0x390f
	.long	.LLST166
	.uleb128 0x47
	.long	.LBB185
	.long	.LBE185-.LBB185
	.uleb128 0x46
	.long	0x392d
	.long	.LLST167
	.byte	0
	.byte	0
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x140
	.long	0x3a8b
	.uleb128 0x43
	.long	0x136a
	.long	.LLST168
	.uleb128 0x42
	.long	0x1374
	.uleb128 0x43
	.long	0x1380
	.long	.LLST169
	.uleb128 0x43
	.long	0x13a2
	.long	.LLST170
	.uleb128 0x43
	.long	0x1397
	.long	.LLST171
	.uleb128 0x43
	.long	0x138c
	.long	.LLST172
	.uleb128 0x43
	.long	0x1360
	.long	.LLST173
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x140
	.uleb128 0x49
	.long	0x13ae
	.uleb128 0x48
	.long	0x13b9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x49
	.long	0x13c4
	.uleb128 0x41
	.long	0x3902
	.long	.LBB188
	.long	.LBE188-.LBB188
	.byte	0x1
	.value	0xfd1
	.long	0x3a80
	.uleb128 0x43
	.long	0x3923
	.long	.LLST174
	.uleb128 0x43
	.long	0x3919
	.long	.LLST175
	.uleb128 0x43
	.long	0x390f
	.long	.LLST174
	.uleb128 0x47
	.long	.LBB189
	.long	.LBE189-.LBB189
	.uleb128 0x46
	.long	0x392d
	.long	.LLST177
	.byte	0
	.byte	0
	.uleb128 0x4c
	.long	.LVL437
	.long	0x4dcd
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL427
	.long	0x4dcd
	.uleb128 0x38
	.long	.LVL439
	.long	0x4d28
	.byte	0
	.uleb128 0x23
	.long	.LASF370
	.byte	0x1
	.value	0x1084
	.long	0xbf
	.byte	0x1
	.long	0x3ae0
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x1084
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0x1086
	.long	0x6a7
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0x1087
	.long	0x35f8
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x1088
	.long	0x50d
	.byte	0
	.uleb128 0x30
	.long	0x13d1
	.long	.LFB107
	.long	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c4e
	.uleb128 0x43
	.long	0x13e2
	.long	.LLST178
	.uleb128 0x44
	.long	.LBB198
	.long	.LBE198-.LBB198
	.long	0x3c1d
	.uleb128 0x43
	.long	0x13e2
	.long	.LLST179
	.uleb128 0x41
	.long	0x3a9e
	.long	.LBB200
	.long	.LBE200-.LBB200
	.byte	0x1
	.value	0x10e1
	.long	0x3c06
	.uleb128 0x43
	.long	0x3aaf
	.long	.LLST180
	.uleb128 0x47
	.long	.LBB201
	.long	.LBE201-.LBB201
	.uleb128 0x46
	.long	0x3abb
	.long	.LLST181
	.uleb128 0x46
	.long	0x3ac7
	.long	.LLST182
	.uleb128 0x46
	.long	0x3ad3
	.long	.LLST183
	.uleb128 0x41
	.long	0x33ca
	.long	.LBB202
	.long	.LBE202-.LBB202
	.byte	0x1
	.value	0x1096
	.long	0x3b96
	.uleb128 0x43
	.long	0x33e3
	.long	.LLST184
	.uleb128 0x43
	.long	0x33d7
	.long	.LLST185
	.uleb128 0x47
	.long	.LBB203
	.long	.LBE203-.LBB203
	.uleb128 0x46
	.long	0x33ef
	.long	.LLST186
	.uleb128 0x38
	.long	.LVL456
	.long	0x4ce0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL446
	.long	0x183b
	.long	0x3bb4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x38
	.long	.LVL449
	.long	0x4cc8
	.uleb128 0x3b
	.long	.LVL453
	.long	0x134f
	.long	0x3be0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 187
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 125
	.byte	0
	.uleb128 0x38
	.long	.LVL454
	.long	0x4db5
	.uleb128 0x3d
	.long	.LVL455
	.long	0x1977
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LVL444
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL442
	.long	0x17dc
	.long	0x3c37
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3d
	.long	.LVL458
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF371
	.byte	0x1
	.value	0x11df
	.long	0xbf
	.long	.LFB119
	.long	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d22
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x11df
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x11df
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x11e1
	.long	0x35f8
	.long	.LLST187
	.uleb128 0x3b
	.long	.LVL464
	.long	0x17dc
	.long	0x3caf
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x4f
	.long	.LVL465
	.long	0x13d1
	.long	0x3cc4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL466
	.long	0x17dc
	.long	0x3cdd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL467
	.long	0x18bd
	.long	0x3cf6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL468
	.long	0x18bd
	.long	0x3d10
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3f
	.long	.LVL469
	.long	0x34e4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF372
	.byte	0x1
	.value	0x10ac
	.long	0xbf
	.byte	0x1
	.long	0x3d64
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x10ac
	.long	0x1325
	.uleb128 0x28
	.long	.LASF215
	.byte	0x1
	.value	0x10ae
	.long	0x6a7
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x10af
	.long	0x5cd
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x10b0
	.long	0x7e
	.byte	0
	.uleb128 0x23
	.long	.LASF373
	.byte	0x1
	.value	0x1046
	.long	0x7e
	.byte	0x1
	.long	0x3da2
	.uleb128 0x25
	.string	"k"
	.byte	0x1
	.value	0x1046
	.long	0x60d
	.uleb128 0x25
	.string	"r1"
	.byte	0x1
	.value	0x1046
	.long	0x60d
	.uleb128 0x25
	.string	"r2"
	.byte	0x1
	.value	0x1047
	.long	0x60d
	.uleb128 0x25
	.string	"out"
	.byte	0x1
	.value	0x1047
	.long	0x488
	.byte	0
	.uleb128 0x23
	.long	.LASF374
	.byte	0x1
	.value	0x125d
	.long	0xbf
	.byte	0x1
	.long	0x3dd6
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x125d
	.long	0x1325
	.uleb128 0x26
	.string	"cfm"
	.byte	0x1
	.value	0x125f
	.long	0x5cd
	.uleb128 0x26
	.string	"r"
	.byte	0x1
	.value	0x1260
	.long	0xbf
	.byte	0
	.uleb128 0x40
	.long	.LASF375
	.byte	0x1
	.value	0x1277
	.long	0xbf
	.long	.LFB124
	.long	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x4142
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x1277
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x1277
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x1279
	.long	0x1b86
	.long	.LLST188
	.uleb128 0x3a
	.long	.LASF290
	.byte	0x1
	.value	0x127a
	.long	0xd5
	.long	.LLST189
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x127b
	.long	0xbf
	.uleb128 0x41
	.long	0x3d22
	.long	.LBB212
	.long	.LBE212-.LBB212
	.byte	0x1
	.value	0x127f
	.long	0x3eec
	.uleb128 0x43
	.long	0x3d33
	.long	.LLST190
	.uleb128 0x47
	.long	.LBB213
	.long	.LBE213-.LBB213
	.uleb128 0x46
	.long	0x3d3f
	.long	.LLST191
	.uleb128 0x48
	.long	0x3d4b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x46
	.long	0x3d57
	.long	.LLST192
	.uleb128 0x41
	.long	0x3d64
	.long	.LBB214
	.long	.LBE214-.LBB214
	.byte	0x1
	.value	0x10ca
	.long	0x3ebd
	.uleb128 0x43
	.long	0x3d95
	.long	.LLST193
	.uleb128 0x43
	.long	0x3d8a
	.long	.LLST194
	.uleb128 0x43
	.long	0x3d7f
	.long	.LLST195
	.uleb128 0x43
	.long	0x3d75
	.long	.LLST196
	.uleb128 0x38
	.long	.LVL481
	.long	0x4dcd
	.byte	0
	.uleb128 0x3b
	.long	.LVL476
	.long	0x134f
	.long	0x3ee1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 171
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 125
	.byte	0
	.uleb128 0x38
	.long	.LVL479
	.long	0x4d9d
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	0x15bc
	.long	.LBB216
	.long	.Ldebug_ranges0+0x158
	.byte	0x1
	.value	0x1283
	.long	0x3ff2
	.uleb128 0x43
	.long	0x15d7
	.long	.LLST197
	.uleb128 0x43
	.long	0x15f5
	.long	.LLST198
	.uleb128 0x43
	.long	0x15eb
	.long	.LLST199
	.uleb128 0x43
	.long	0x15e1
	.long	.LLST200
	.uleb128 0x43
	.long	0x15cd
	.long	.LLST201
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x158
	.uleb128 0x48
	.long	0x1601
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x48
	.long	0x160b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x46
	.long	0x1616
	.long	.LLST202
	.uleb128 0x3b
	.long	.LVL485
	.long	0x1679
	.long	0x3f6f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 203
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL486
	.long	0x1679
	.long	0x3f93
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	sc_public_key
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.uleb128 0x3b
	.long	.LVL488
	.long	0x1679
	.long	0x3fb3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 155
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3b
	.long	.LVL490
	.long	0x1679
	.long	0x3fd3
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 171
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x3d
	.long	.LVL491
	.long	0x1b8c
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	0x3da2
	.long	.LBB224
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.value	0x128e
	.long	0x4056
	.uleb128 0x43
	.long	0x3db3
	.long	.LLST203
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x48
	.long	0x3dbf
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x46
	.long	0x3dcb
	.long	.LLST204
	.uleb128 0x3b
	.long	.LVL501
	.long	0x2ff3
	.long	0x404b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 203
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	sc_public_key
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x73
	.sleb128 171
	.byte	0
	.uleb128 0x38
	.long	.LVL502
	.long	0x4d9d
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL473
	.long	0x17dc
	.long	0x4071
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL496
	.long	0x18bd
	.long	0x408b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL504
	.long	0x18bd
	.long	0x40a4
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL505
	.long	0x1aef
	.long	0x40b8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL506
	.long	0x18bd
	.long	0x40d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x3b
	.long	.LVL507
	.long	0x18bd
	.long	0x40ec
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -148
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x38
	.long	.LVL508
	.long	0x4d61
	.uleb128 0x3b
	.long	.LVL509
	.long	0x18bd
	.long	0x410f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x3b
	.long	.LVL510
	.long	0x18bd
	.long	0x4124
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.byte	0
	.uleb128 0x3b
	.long	.LVL511
	.long	0x1aef
	.long	0x4138
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL512
	.long	0x4d28
	.byte	0
	.uleb128 0x23
	.long	.LASF376
	.byte	0x1
	.value	0x5c4
	.long	0x62e
	.byte	0x3
	.long	0x4160
	.uleb128 0x24
	.long	.LASF180
	.byte	0x1
	.value	0x5c4
	.long	0x623
	.byte	0
	.uleb128 0x23
	.long	.LASF377
	.byte	0x1
	.value	0x5b9
	.long	0x62e
	.byte	0x3
	.long	0x417e
	.uleb128 0x24
	.long	.LASF180
	.byte	0x1
	.value	0x5b9
	.long	0x623
	.byte	0
	.uleb128 0x27
	.long	.LASF378
	.byte	0x1
	.value	0x5ad
	.byte	0x3
	.long	0x41a4
	.uleb128 0x25
	.string	"dst"
	.byte	0x1
	.value	0x5ad
	.long	0x41a4
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x5ad
	.long	0x618
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x593
	.uleb128 0x27
	.long	.LASF379
	.byte	0x1
	.value	0x5b1
	.byte	0x3
	.long	0x41d0
	.uleb128 0x25
	.string	"dst"
	.byte	0x1
	.value	0x5b1
	.long	0x41d0
	.uleb128 0x25
	.string	"src"
	.byte	0x1
	.value	0x5b1
	.long	0x623
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5c1
	.uleb128 0x32
	.long	.LASF380
	.byte	0x1
	.value	0x12ce
	.long	0xbf
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x43b1
	.uleb128 0x3e
	.string	"smp"
	.byte	0x1
	.value	0x12ce
	.long	0x1325
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x12ce
	.long	0x50d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	.LASF215
	.byte	0x1
	.value	0x12d0
	.long	0x6a7
	.long	.LLST205
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x12d1
	.long	0x43b1
	.long	.LLST206
	.uleb128 0x45
	.long	0x4142
	.long	.LBB243
	.long	.Ldebug_ranges0+0x198
	.byte	0x1
	.value	0x12d3
	.long	0x424c
	.uleb128 0x43
	.long	0x4153
	.long	.LLST207
	.byte	0
	.uleb128 0x44
	.long	.LBB247
	.long	.LBE247-.LBB247
	.long	0x4346
	.uleb128 0x39
	.string	"dst"
	.byte	0x1
	.value	0x12d8
	.long	0x623
	.long	.LLST208
	.uleb128 0x3a
	.long	.LASF182
	.byte	0x1
	.value	0x12d9
	.long	0xd4f
	.long	.LLST209
	.uleb128 0x41
	.long	0x4160
	.long	.LBB248
	.long	.LBE248-.LBB248
	.byte	0x1
	.value	0x12e4
	.long	0x4297
	.uleb128 0x43
	.long	0x4171
	.long	.LLST210
	.byte	0
	.uleb128 0x41
	.long	0x417e
	.long	.LBB250
	.long	.LBE250-.LBB250
	.byte	0x1
	.value	0x12e5
	.long	0x42be
	.uleb128 0x43
	.long	0x4197
	.long	.LLST211
	.uleb128 0x43
	.long	0x418b
	.long	.LLST212
	.byte	0
	.uleb128 0x41
	.long	0x4142
	.long	.LBB252
	.long	.LBE252-.LBB252
	.byte	0x1
	.value	0x12e6
	.long	0x42dc
	.uleb128 0x43
	.long	0x4153
	.long	.LLST213
	.byte	0
	.uleb128 0x45
	.long	0x41aa
	.long	.LBB254
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.value	0x12e7
	.long	0x4303
	.uleb128 0x43
	.long	0x41c3
	.long	.LLST214
	.uleb128 0x43
	.long	0x41b7
	.long	.LLST215
	.byte	0
	.uleb128 0x45
	.long	0x41aa
	.long	.LBB257
	.long	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.value	0x12e8
	.long	0x432a
	.uleb128 0x43
	.long	0x41c3
	.long	.LLST216
	.uleb128 0x43
	.long	0x41b7
	.long	.LLST217
	.byte	0
	.uleb128 0x38
	.long	.LVL520
	.long	0x4d55
	.uleb128 0x38
	.long	.LVL531
	.long	0x4dd9
	.uleb128 0x38
	.long	.LVL533
	.long	0x4de5
	.byte	0
	.uleb128 0x41
	.long	0x13ef
	.long	.LBB262
	.long	.LBE262-.LBB262
	.byte	0x1
	.value	0x12f7
	.long	0x437e
	.uleb128 0x43
	.long	0x1408
	.long	.LLST218
	.uleb128 0x43
	.long	0x13fc
	.long	.LLST219
	.uleb128 0x3d
	.long	.LVL536
	.long	0x1c29
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL519
	.long	0x17dc
	.long	0x439a
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x3d
	.long	.LVL534
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x77
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x10af
	.uleb128 0x52
	.long	.LASF382
	.byte	0x1
	.value	0x116a
	.long	0x7e
	.long	.LFB115
	.long	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x4526
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x116a
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x116c
	.long	0x1325
	.long	.LLST220
	.uleb128 0x39
	.string	"req"
	.byte	0x1
	.value	0x116d
	.long	0x4526
	.long	.LLST221
	.uleb128 0x3a
	.long	.LASF328
	.byte	0x1
	.value	0x116e
	.long	0x50d
	.long	.LLST222
	.uleb128 0x41
	.long	0x1331
	.long	.LBB270
	.long	.LBE270-.LBB270
	.byte	0x1
	.value	0x117a
	.long	0x4440
	.uleb128 0x43
	.long	0x1342
	.long	.LLST223
	.uleb128 0x38
	.long	.LVL543
	.long	0x16c7
	.uleb128 0x38
	.long	.LVL544
	.long	0x16c7
	.byte	0
	.uleb128 0x45
	.long	0x20c7
	.long	.LBB272
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.value	0x1183
	.long	0x4467
	.uleb128 0x43
	.long	0x20d8
	.long	.LLST224
	.uleb128 0x38
	.long	.LVL551
	.long	0x16c7
	.byte	0
	.uleb128 0x45
	.long	0x158a
	.long	.LBB278
	.long	.Ldebug_ranges0+0x208
	.byte	0x1
	.value	0x1184
	.long	0x44a0
	.uleb128 0x43
	.long	0x15a3
	.long	.LLST225
	.uleb128 0x43
	.long	0x15af
	.long	.LLST226
	.uleb128 0x43
	.long	0x1597
	.long	.LLST227
	.uleb128 0x38
	.long	.LVL555
	.long	0x4cec
	.byte	0
	.uleb128 0x3b
	.long	.LVL538
	.long	0x179a
	.long	0x44b5
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL540
	.long	0x17dc
	.long	0x44ce
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3b
	.long	.LVL541
	.long	0x17dc
	.long	0x44e7
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL545
	.long	0x183b
	.long	0x4506
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.long	.LVL548
	.long	0x4cc8
	.uleb128 0x3d
	.long	.LVL556
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x77
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x10ca
	.uleb128 0x53
	.long	.LASF437
	.byte	0x1
	.value	0x1456
	.long	0x7e
	.byte	0x1
	.long	0x4556
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.value	0x1456
	.long	0x6a7
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x1456
	.long	0x50d
	.byte	0
	.uleb128 0x30
	.long	0x452c
	.long	.LFB141
	.long	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x457a
	.uleb128 0x31
	.long	0x453d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x4549
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x27
	.long	.LASF381
	.byte	0x1
	.value	0x10e7
	.byte	0x1
	.long	0x45a0
	.uleb128 0x25
	.string	"smp"
	.byte	0x1
	.value	0x10e7
	.long	0x1325
	.uleb128 0x24
	.long	.LASF290
	.byte	0x1
	.value	0x10e7
	.long	0x85
	.byte	0
	.uleb128 0x52
	.long	.LASF383
	.byte	0x1
	.value	0x145e
	.long	0x7e
	.long	.LFB143
	.long	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x470f
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x145e
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF290
	.byte	0x1
	.value	0x145e
	.long	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x1460
	.long	0x1325
	.long	.LLST228
	.uleb128 0x45
	.long	0x457a
	.long	.LBB286
	.long	.Ldebug_ranges0+0x220
	.byte	0x1
	.value	0x1469
	.long	0x466b
	.uleb128 0x43
	.long	0x4593
	.long	.LLST229
	.uleb128 0x43
	.long	0x4587
	.long	.LLST230
	.uleb128 0x3b
	.long	.LVL571
	.long	0x1913
	.long	0x4627
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL572
	.long	0x13d1
	.long	0x463b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL573
	.long	0x3123
	.long	0x4654
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.long	.LVL574
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL563
	.long	0x179a
	.long	0x4680
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL567
	.long	0x1913
	.long	0x4699
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL568
	.long	0x17dc
	.long	0x46b2
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL576
	.long	0x17dc
	.long	0x46cb
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL577
	.long	0x34e4
	.long	0x46df
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL578
	.long	0x3123
	.long	0x46f8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3d
	.long	.LVL579
	.long	0x18bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	.LASF384
	.byte	0x1
	.value	0x1480
	.long	0x7e
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x47fd
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x1480
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x1482
	.long	0x1325
	.long	.LLST231
	.uleb128 0x44
	.long	.LBB290
	.long	.LBE290-.LBB290
	.long	0x478a
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0x1493
	.long	0xbf
	.long	.LLST232
	.uleb128 0x3b
	.long	.LVL591
	.long	0x2cf3
	.long	0x4779
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LVL593
	.long	0x3123
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL582
	.long	0x179a
	.long	0x479f
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL586
	.long	0x1913
	.long	0x47b8
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL587
	.long	0x17dc
	.long	0x47d1
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3b
	.long	.LVL588
	.long	0x17dc
	.long	0x47ea
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3d
	.byte	0
	.uleb128 0x38
	.long	.LVL589
	.long	0x18bd
	.uleb128 0x38
	.long	.LVL590
	.long	0x17dc
	.byte	0
	.uleb128 0x52
	.long	.LASF385
	.byte	0x1
	.value	0x149b
	.long	0x7e
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x486f
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x149b
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x149d
	.long	0x1325
	.long	.LLST233
	.uleb128 0x3b
	.long	.LVL595
	.long	0x179a
	.long	0x484b
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL599
	.long	0x1913
	.long	0x4865
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x4c
	.long	.LVL601
	.long	0x3123
	.byte	0
	.uleb128 0x52
	.long	.LASF386
	.byte	0x1
	.value	0x14b1
	.long	0x7e
	.long	.LFB146
	.long	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x4941
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x14b1
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x14b3
	.long	0x1325
	.long	.LLST234
	.uleb128 0x3b
	.long	.LVL604
	.long	0x179a
	.long	0x48bd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3b
	.long	.LVL608
	.long	0x1913
	.long	0x48d6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x3b
	.long	.LVL609
	.long	0x17dc
	.long	0x48ef
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL610
	.long	0x18bd
	.long	0x4909
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 116
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x3b
	.long	.LVL611
	.long	0x19cf
	.long	0x491d
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL612
	.long	0x18bd
	.long	0x4930
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x3d
	.long	.LVL613
	.long	0x19cf
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x54
	.long	.LASF438
	.byte	0x1
	.value	0x14d4
	.long	.LFB147
	.long	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a73
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x14d4
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x14d6
	.long	0x1325
	.long	.LLST235
	.uleb128 0x41
	.long	0x33ca
	.long	.LBB295
	.long	.LBE295-.LBB295
	.byte	0x1
	.value	0x14f1
	.long	0x49b9
	.uleb128 0x43
	.long	0x33e3
	.long	.LLST236
	.uleb128 0x43
	.long	0x33d7
	.long	.LLST237
	.uleb128 0x47
	.long	.LBB296
	.long	.LBE296-.LBB296
	.uleb128 0x46
	.long	0x33ef
	.long	.LLST238
	.uleb128 0x38
	.long	.LVL626
	.long	0x4ce0
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL616
	.long	0x179a
	.long	0x49cd
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL618
	.long	0x17dc
	.long	0x49e6
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x38
	.long	.LVL619
	.long	0x4d49
	.uleb128 0x38
	.long	.LVL620
	.long	0x4df1
	.uleb128 0x3b
	.long	.LVL621
	.long	0x17dc
	.long	0x4a11
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3b
	.byte	0
	.uleb128 0x3b
	.long	.LVL622
	.long	0x18bd
	.long	0x4a24
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3b
	.long	.LVL623
	.long	0x18bd
	.long	0x4a37
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3b
	.long	.LVL629
	.long	0x17dc
	.long	0x4a50
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3b
	.long	.LVL630
	.long	0x17dc
	.long	0x4a69
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LVL631
	.long	0x4d85
	.byte	0
	.uleb128 0x52
	.long	.LASF387
	.byte	0x1
	.value	0x14ff
	.long	0x62e
	.long	.LFB148
	.long	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b28
	.uleb128 0x33
	.long	.LASF215
	.byte	0x1
	.value	0x14ff
	.long	0x6a7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"tk"
	.byte	0x1
	.value	0x14ff
	.long	0x488
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x39
	.string	"smp"
	.byte	0x1
	.value	0x1501
	.long	0x1325
	.long	.LLST239
	.uleb128 0x28
	.long	.LASF181
	.byte	0x1
	.value	0x1502
	.long	0xbf
	.uleb128 0x45
	.long	0x1503
	.long	.LBB297
	.long	.Ldebug_ranges0+0x238
	.byte	0x1
	.value	0x150e
	.long	0x4afc
	.uleb128 0x43
	.long	0x1514
	.long	.LLST240
	.uleb128 0x36
	.long	.Ldebug_ranges0+0x238
	.uleb128 0x46
	.long	0x1520
	.long	.LLST241
	.uleb128 0x46
	.long	0x152c
	.long	.LLST242
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LVL634
	.long	0x179a
	.long	0x4b11
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x3d
	.long	.LVL638
	.long	0x17dc
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x76
	.sleb128 120
	.uleb128 0x3c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LASF389
	.byte	0x1
	.value	0x152f
	.long	0x62e
	.byte	0x1
	.uleb128 0x52
	.long	.LASF390
	.byte	0x1
	.value	0x1534
	.long	0x7e
	.long	.LFB151
	.long	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b86
	.uleb128 0x37
	.long	.LASF228
	.byte	0x1
	.value	0x1536
	.long	0xf54
	.uleb128 0x5
	.byte	0x3
	.long	chan.5780
	.uleb128 0x37
	.long	.LASF391
	.byte	0x1
	.value	0x153a
	.long	0xaa1
	.uleb128 0x5
	.byte	0x3
	.long	pub_key_cb.5781
	.uleb128 0x38
	.long	.LVL643
	.long	0x4dfd
	.uleb128 0x38
	.long	.LVL644
	.long	0x4e09
	.byte	0
	.uleb128 0x13
	.long	0x613
	.long	0x4b9c
	.uleb128 0x14
	.long	0x1b3
	.byte	0x4
	.uleb128 0x14
	.long	0x1b3
	.byte	0x4
	.byte	0
	.uleb128 0x37
	.long	.LASF392
	.byte	0x1
	.value	0xe62
	.long	0x4bae
	.uleb128 0x5
	.byte	0x3
	.long	gen_method_legacy
	.uleb128 0x1c
	.long	0x4b86
	.uleb128 0x37
	.long	.LASF393
	.byte	0x1
	.value	0xe6f
	.long	0x4bc5
	.uleb128 0x5
	.byte	0x3
	.long	gen_method_sc
	.uleb128 0x1c
	.long	0x4b86
	.uleb128 0x13
	.long	0x613
	.long	0x4bda
	.uleb128 0x14
	.long	0x1b3
	.byte	0x3f
	.byte	0
	.uleb128 0x37
	.long	.LASF394
	.byte	0x1
	.value	0xe7f
	.long	0x4bec
	.uleb128 0x5
	.byte	0x3
	.long	sc_debug_public_key
	.uleb128 0x1c
	.long	0x4bca
	.uleb128 0x13
	.long	0x11d2
	.long	0x4c01
	.uleb128 0x14
	.long	0x1b3
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF395
	.byte	0x1
	.value	0xe87
	.long	0x4bf1
	.uleb128 0x5
	.byte	0x3
	.long	bt_smp_pool
	.uleb128 0x37
	.long	.LASF396
	.byte	0x1
	.value	0xe8a
	.long	0x62e
	.uleb128 0x5
	.byte	0x3
	.long	sc_supported
	.uleb128 0x37
	.long	.LASF397
	.byte	0x1
	.value	0xe8d
	.long	0x62e
	.uleb128 0x5
	.byte	0x3
	.long	sc_local_pkey_valid
	.uleb128 0x37
	.long	.LASF398
	.byte	0x1
	.value	0xe8e
	.long	0x5ed
	.uleb128 0x5
	.byte	0x3
	.long	sc_public_key
	.uleb128 0x13
	.long	0x4c59
	.long	0x4c59
	.uleb128 0x14
	.long	0x1b3
	.byte	0xd
	.byte	0
	.uleb128 0x1c
	.long	0x12ed
	.uleb128 0x37
	.long	.LASF399
	.byte	0x1
	.value	0x139e
	.long	0x4c70
	.uleb128 0x5
	.byte	0x3
	.long	handlers
	.uleb128 0x1c
	.long	0x4c49
	.uleb128 0x55
	.long	.LASF400
	.byte	0x1
	.value	0x222
	.long	0x85
	.uleb128 0x55
	.long	.LASF145
	.byte	0x1
	.value	0xc32
	.long	0x984
	.uleb128 0x55
	.long	.LASF401
	.byte	0x1
	.value	0xc34
	.long	0x4c99
	.uleb128 0x7
	.byte	0x4
	.long	0x4c9f
	.uleb128 0x1c
	.long	0x790
	.uleb128 0x56
	.long	.LASF402
	.long	.LASF402
	.byte	0x1
	.value	0xdcf
	.uleb128 0x56
	.long	.LASF403
	.long	.LASF403
	.byte	0x1
	.value	0x349
	.uleb128 0x56
	.long	.LASF404
	.long	.LASF404
	.byte	0x1
	.value	0xdbe
	.uleb128 0x56
	.long	.LASF405
	.long	.LASF405
	.byte	0x1
	.value	0x535
	.uleb128 0x56
	.long	.LASF406
	.long	.LASF406
	.byte	0x1
	.value	0x34c
	.uleb128 0x56
	.long	.LASF407
	.long	.LASF407
	.byte	0x1
	.value	0x34e
	.uleb128 0x56
	.long	.LASF408
	.long	.LASF408
	.byte	0x1
	.value	0xdc0
	.uleb128 0x56
	.long	.LASF409
	.long	.LASF409
	.byte	0x1
	.value	0x383
	.uleb128 0x56
	.long	.LASF410
	.long	.LASF410
	.byte	0x1
	.value	0xbf8
	.uleb128 0x56
	.long	.LASF411
	.long	.LASF411
	.byte	0x1
	.value	0xbfc
	.uleb128 0x56
	.long	.LASF412
	.long	.LASF412
	.byte	0x1
	.value	0xbfd
	.uleb128 0x57
	.long	.LASF439
	.long	.LASF439
	.uleb128 0x56
	.long	.LASF413
	.long	.LASF413
	.byte	0x1
	.value	0x384
	.uleb128 0x56
	.long	.LASF414
	.long	.LASF414
	.byte	0x1
	.value	0x34a
	.uleb128 0x56
	.long	.LASF415
	.long	.LASF415
	.byte	0x1
	.value	0xc7c
	.uleb128 0x56
	.long	.LASF416
	.long	.LASF416
	.byte	0x1
	.value	0xc77
	.uleb128 0x56
	.long	.LASF417
	.long	.LASF417
	.byte	0x1
	.value	0xb0e
	.uleb128 0x56
	.long	.LASF418
	.long	.LASF418
	.byte	0x1
	.value	0xc7a
	.uleb128 0x56
	.long	.LASF419
	.long	.LASF419
	.byte	0x1
	.value	0x382
	.uleb128 0x56
	.long	.LASF420
	.long	.LASF420
	.byte	0x1
	.value	0xc7b
	.uleb128 0x56
	.long	.LASF421
	.long	.LASF421
	.byte	0x1
	.value	0xdcd
	.uleb128 0x56
	.long	.LASF422
	.long	.LASF422
	.byte	0x1
	.value	0x2b3
	.uleb128 0x56
	.long	.LASF423
	.long	.LASF423
	.byte	0x1
	.value	0x541
	.uleb128 0x56
	.long	.LASF424
	.long	.LASF424
	.byte	0x1
	.value	0x58a
	.uleb128 0x56
	.long	.LASF425
	.long	.LASF425
	.byte	0x1
	.value	0xc4c
	.uleb128 0x56
	.long	.LASF426
	.long	.LASF426
	.byte	0x1
	.value	0xb0f
	.uleb128 0x56
	.long	.LASF427
	.long	.LASF427
	.byte	0x1
	.value	0xceb
	.uleb128 0x56
	.long	.LASF428
	.long	.LASF428
	.byte	0x1
	.value	0xc43
	.uleb128 0x56
	.long	.LASF429
	.long	.LASF429
	.byte	0x1
	.value	0xc76
	.uleb128 0x56
	.long	.LASF430
	.long	.LASF430
	.byte	0x1
	.value	0xdb3
	.uleb128 0x56
	.long	.LASF431
	.long	.LASF431
	.byte	0x1
	.value	0xc49
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.long	.LVL3
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL4
	.long	.LFE54
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x52
	.long	.LVL1
	.long	.LVL2
	.value	0x1
	.byte	0x53
	.long	.LVL2
	.long	.LVL3
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL5
	.long	.LVL6
	.value	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL6
	.long	.LFE54
	.value	0xc
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x22
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x1
	.byte	0x51
	.long	.LVL2
	.long	.LVL3
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x20
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.value	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	.LVL6
	.long	.LFE54
	.value	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LFE114
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LFE37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x52
	.long	.LVL12
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LFE37
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	.LVL18-1
	.long	.LFE80
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x52
	.long	.LVL18-1
	.long	.LFE80
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x51
	.long	.LVL18-1
	.long	.LFE80
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LFE80
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL24
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL26
	.long	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x52
	.long	.LVL25
	.long	.LVL27-1
	.value	0x1
	.byte	0x51
	.long	.LVL27-1
	.long	.LFE41
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL24
	.long	.LVL25
	.value	0x7
	.byte	0x31
	.byte	0x72
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL25
	.long	.LVL27-1
	.value	0x7
	.byte	0x31
	.byte	0x71
	.sleb128 0
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	.LVL27-1
	.long	.LFE41
	.value	0x8
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4f
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL28
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LFE38
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x52
	.long	.LVL29
	.long	.LVL32
	.value	0x1
	.byte	0x51
	.long	.LVL32
	.long	.LFE38
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL31
	.long	.LVL34
	.value	0x1
	.byte	0x53
	.long	.LVL34
	.long	.LFE38
	.value	0xb
	.byte	0x31
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x4f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL33
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST19:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37-1
	.long	.LVL39
	.value	0x4
	.byte	0x73
	.sleb128 -340
	.byte	0x9f
	.long	.LVL39
	.long	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x52
	.long	.LVL37-1
	.long	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x51
	.long	.LVL37-1
	.long	.LFE91
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL40
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LFE100
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST24:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LVL48
	.value	0x1
	.byte	0x56
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL63
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL63
	.long	.LFE117
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST27:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x57
	.long	.LVL57
	.long	.LVL58
	.value	0x3
	.byte	0x70
	.sleb128 -32
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x3
	.byte	0x77
	.sleb128 -32
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LVL61
	.value	0x1
	.byte	0x53
	.long	.LVL61
	.long	.LVL62
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL64
	.long	.LVL66
	.value	0x1
	.byte	0x50
	.long	.LVL66
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	.LVL74
	.long	.LFE93
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST31:
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x50
	.long	.LVL68
	.long	.LVL72
	.value	0x1
	.byte	0x56
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST33:
	.long	.LVL75
	.long	.LVL77-1
	.value	0x1
	.byte	0x50
	.long	.LVL77-1
	.long	.LFE81
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL75
	.long	.LVL76
	.value	0x1
	.byte	0x52
	.long	.LVL76
	.long	.LVL81
	.value	0x1
	.byte	0x57
	.long	.LVL81
	.long	.LFE81
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL75
	.long	.LVL77-1
	.value	0x1
	.byte	0x51
	.long	.LVL77-1
	.long	.LFE81
	.value	0x3
	.byte	0x91
	.sleb128 -308
	.long	0
	.long	0
.LLST36:
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x53
	.long	.LVL84
	.long	.LVL89
	.value	0x4
	.byte	0x73
	.sleb128 -120
	.byte	0x9f
	.long	.LVL89
	.long	.LVL91
	.value	0x4
	.byte	0x77
	.sleb128 -116
	.byte	0x9f
	.long	.LVL91
	.long	.LVL92-1
	.value	0x4
	.byte	0x70
	.sleb128 -116
	.byte	0x9f
	.long	.LVL92-1
	.long	.LFE88
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL85
	.long	.LVL90
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST38:
	.long	.LVL94
	.long	.LVL95
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	.LVL95
	.long	.LVL96-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	0
	.long	0
.LLST39:
	.long	.LVL94
	.long	.LVL95
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST40:
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST41:
	.long	.LVL102
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	.LVL107
	.long	.LFE138
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST42:
	.long	.LVL103
	.long	.LVL108
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST43:
	.long	.LVL110
	.long	.LVL115
	.value	0x1
	.byte	0x57
	.long	.LVL115
	.long	.LFE90
	.value	0x8
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0xa
	.value	0x154
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL113
	.long	.LVL114
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL113
	.long	.LVL114
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST46:
	.long	.LVL119
	.long	.LVL124
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST47:
	.long	.LVL119
	.long	.LVL120
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST48:
	.long	.LVL122
	.long	.LVL123
	.value	0x1
	.byte	0x50
	.long	.LVL123
	.long	.LVL125
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST49:
	.long	.LVL128
	.long	.LVL130
	.value	0x1
	.byte	0x56
	.long	.LVL130
	.long	.LVL132
	.value	0x3
	.byte	0x76
	.sleb128 -64
	.byte	0x9f
	.long	.LVL132
	.long	.LVL133
	.value	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.long	.LVL133
	.long	.LVL134-1
	.value	0x7
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL131
	.long	.LVL135
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST51:
	.long	.LVL134
	.long	.LVL135
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST52:
	.long	.LVL137
	.long	.LVL138
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL137
	.long	.LVL138
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST54:
	.long	.LVL141
	.long	.LVL146
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST55:
	.long	.LVL141
	.long	.LVL142
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST56:
	.long	.LVL144
	.long	.LVL145
	.value	0x1
	.byte	0x50
	.long	.LVL145
	.long	.LVL147
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST57:
	.long	.LVL150
	.long	.LVL168
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST58:
	.long	.LVL154
	.long	.LVL201
	.value	0x4
	.byte	0x76
	.sleb128 133
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL151
	.long	.LVL153
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST60:
	.long	.LVL155
	.long	.LVL156
	.value	0x1
	.byte	0x50
	.long	.LVL156
	.long	.LVL157
	.value	0x1
	.byte	0x57
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x73
	.sleb128 2
	.long	.LVL158
	.long	.LVL160
	.value	0x1
	.byte	0x57
	.long	.LVL160
	.long	.LVL161
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST61:
	.long	.LVL169
	.long	.LVL171
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST62:
	.long	.LVL169
	.long	.LVL191
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST63:
	.long	.LVL177
	.long	.LVL178
	.value	0x1
	.byte	0x50
	.long	.LVL178
	.long	.LVL179-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST65:
	.long	.LVL169
	.long	.LVL175
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST66:
	.long	.LVL170
	.long	.LVL175
	.value	0x4
	.byte	0x76
	.sleb128 126
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL170
	.long	.LVL175
	.value	0x4
	.byte	0x76
	.sleb128 133
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL173
	.long	.LVL174
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST69:
	.long	.LVL179
	.long	.LVL190
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST70:
	.long	.LVL180
	.long	.LVL190
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST71:
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x50
	.long	.LVL183
	.long	.LVL184
	.value	0x1
	.byte	0x50
	.long	.LVL184
	.long	.LVL185-1
	.value	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL191
	.long	.LVL193
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST73:
	.long	.LVL191
	.long	.LVL195
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST74:
	.long	.LVL192
	.long	.LVL195
	.value	0x4
	.byte	0x76
	.sleb128 126
	.byte	0x9f
	.long	0
	.long	0
.LLST75:
	.long	.LVL192
	.long	.LVL195
	.value	0x4
	.byte	0x76
	.sleb128 133
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL204
	.long	.LVL206
	.value	0x1
	.byte	0x53
	.long	.LVL206
	.long	.LVL207-1
	.value	0x1
	.byte	0x50
	.long	.LVL207-1
	.long	.LFE137
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST77:
	.long	.LVL209
	.long	.LVL244
	.value	0x1
	.byte	0x53
	.long	.LVL244
	.long	.LFE139
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST78:
	.long	.LVL209
	.long	.LVL211-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST79:
	.long	.LVL210
	.long	.LVL242
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL210
	.long	.LVL242
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST81:
	.long	.LVL217
	.long	.LVL240
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST82:
	.long	.LVL217
	.long	.LVL218-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST83:
	.long	.LVL217
	.long	.LVL218-1
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x68
	.long	0
	.long	0
.LLST84:
	.long	.LVL219
	.long	.LVL240
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST85:
	.long	.LVL219
	.long	.LVL221
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	.LVL221
	.long	.LVL240
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST86:
	.long	.LVL219
	.long	.LVL220
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x68
	.long	0
	.long	0
.LLST87:
	.long	.LVL228
	.long	.LVL229
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST88:
	.long	.LVL234
	.long	.LVL235
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST89:
	.long	.LVL226
	.long	.LVL227
	.value	0x1
	.byte	0x50
	.long	.LVL227
	.long	.LVL232
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	.LVL232
	.long	.LVL233
	.value	0x1
	.byte	0x50
	.long	.LVL233
	.long	.LVL239
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST90:
	.long	.LVL241
	.long	.LVL242
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL241
	.long	.LVL242
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST92:
	.long	.LVL246
	.long	.LVL247-1
	.value	0x1
	.byte	0x50
	.long	.LVL247-1
	.long	.LFE97
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST93:
	.long	.LVL247
	.long	.LVL249-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST95:
	.long	.LVL248
	.long	.LVL249
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL248
	.long	.LVL249-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST97:
	.long	.LVL250
	.long	.LVL251
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL251
	.long	.LFE165
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST98:
	.long	.LVL252
	.long	.LVL254
	.value	0x1
	.byte	0x56
	.long	.LVL254
	.long	.LFE165
	.value	0x2
	.byte	0x71
	.sleb128 1
	.long	0
	.long	0
.LLST99:
	.long	.LVL255
	.long	.LVL256
	.value	0x1
	.byte	0x50
	.long	.LVL256
	.long	.LFE84
	.value	0x3
	.byte	0x91
	.sleb128 -132
	.long	0
	.long	0
.LLST100:
	.long	.LVL255
	.long	.LVL258-1
	.value	0x1
	.byte	0x52
	.long	.LVL258-1
	.long	.LFE84
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST101:
	.long	.LVL255
	.long	.LVL257
	.value	0x1
	.byte	0x51
	.long	.LVL257
	.long	.LFE84
	.value	0x3
	.byte	0x91
	.sleb128 -136
	.long	0
	.long	0
.LLST102:
	.long	.LVL266
	.long	.LVL267
	.value	0x1
	.byte	0x50
	.long	.LVL267
	.long	.LVL269
	.value	0x1
	.byte	0x53
	.long	.LVL269
	.long	.LVL270-1
	.value	0x1
	.byte	0x50
	.long	.LVL270-1
	.long	.LVL270
	.value	0x1
	.byte	0x53
	.long	.LVL270
	.long	.LFE84
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST103:
	.long	.LVL271
	.long	.LVL272
	.value	0x1
	.byte	0x50
	.long	.LVL272
	.long	.LVL303
	.value	0x1
	.byte	0x53
	.long	.LVL303
	.long	.LFE121
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL273
	.long	.LVL284
	.value	0x4
	.byte	0x73
	.sleb128 187
	.byte	0x9f
	.long	.LVL284
	.long	.LVL289
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST105:
	.long	.LVL273
	.long	.LVL289
	.value	0x3
	.byte	0x75
	.sleb128 -156
	.long	0
	.long	0
.LLST106:
	.long	.LVL273
	.long	.LVL284
	.value	0x4
	.byte	0x76
	.sleb128 78
	.byte	0x9f
	.long	0
	.long	0
.LLST107:
	.long	.LVL273
	.long	.LVL284
	.value	0x4
	.byte	0x76
	.sleb128 71
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL273
	.long	.LVL274
	.value	0x1
	.byte	0x50
	.long	.LVL274
	.long	.LVL289
	.value	0x3
	.byte	0x75
	.sleb128 -160
	.long	0
	.long	0
.LLST110:
	.long	.LVL273
	.long	.LVL275-1
	.value	0x1
	.byte	0x52
	.long	.LVL275-1
	.long	.LVL289
	.value	0x4
	.byte	0x73
	.sleb128 267
	.byte	0x9f
	.long	0
	.long	0
.LLST111:
	.long	.LVL276
	.long	.LVL277
	.value	0x1
	.byte	0x50
	.long	.LVL282
	.long	.LVL283
	.value	0x1
	.byte	0x50
	.long	.LVL286
	.long	.LVL287
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST112:
	.long	.LVL293
	.long	.LVL300
	.value	0x4
	.byte	0x75
	.sleb128 -81
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL293
	.long	.LVL300
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST114:
	.long	.LVL297
	.long	.LVL298
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST115:
	.long	.LVL295
	.long	.LVL296
	.value	0x1
	.byte	0x50
	.long	.LVL296
	.long	.LVL300
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST116:
	.long	.LVL304
	.long	.LVL306
	.value	0x1
	.byte	0x50
	.long	.LVL306
	.long	.LVL308-1
	.value	0x1
	.byte	0x52
	.long	.LVL308-1
	.long	.LFE82
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST117:
	.long	.LVL304
	.long	.LVL305
	.value	0x1
	.byte	0x52
	.long	.LVL305
	.long	.LVL315
	.value	0x1
	.byte	0x57
	.long	.LVL315
	.long	.LFE82
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST118:
	.long	.LVL304
	.long	.LVL307
	.value	0x1
	.byte	0x51
	.long	.LVL307
	.long	.LVL312
	.value	0x1
	.byte	0x56
	.long	.LVL312
	.long	.LFE82
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST119:
	.long	.LVL312
	.long	.LVL313
	.value	0x1
	.byte	0x50
	.long	.LVL313
	.long	.LVL316
	.value	0x1
	.byte	0x56
	.long	.LVL316
	.long	.LVL317-1
	.value	0x1
	.byte	0x50
	.long	.LVL317-1
	.long	.LVL317
	.value	0x1
	.byte	0x56
	.long	.LVL317
	.long	.LFE82
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST120:
	.long	.LVL318
	.long	.LVL320-1
	.value	0x1
	.byte	0x50
	.long	.LVL320-1
	.long	.LVL329
	.value	0x1
	.byte	0x53
	.long	.LVL329
	.long	.LFE92
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST121:
	.long	.LVL318
	.long	.LVL320-1
	.value	0x1
	.byte	0x52
	.long	.LVL320-1
	.long	.LFE92
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST122:
	.long	.LVL323
	.long	.LVL326-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST123:
	.long	.LVL321
	.long	.LVL322
	.value	0x1
	.byte	0x50
	.long	.LVL322
	.long	.LVL327
	.value	0x1
	.byte	0x56
	.long	.LVL327
	.long	.LVL328
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST124:
	.long	.LVL319
	.long	.LVL320
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST125:
	.long	.LVL319
	.long	.LVL320-1
	.value	0x1
	.byte	0x50
	.long	.LVL320-1
	.long	.LVL320
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST126:
	.long	.LVL324
	.long	.LVL327
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST127:
	.long	.LVL324
	.long	.LVL327
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST128:
	.long	.LVL324
	.long	.LVL325
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST129:
	.long	.LVL330
	.long	.LVL332
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL332
	.long	.LVL339
	.value	0x6
	.byte	0x3
	.long	bt_smp_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST130:
	.long	.LVL337
	.long	.LVL338
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST131:
	.long	.LVL341
	.long	.LVL349
	.value	0x1
	.byte	0x53
	.long	.LVL349
	.long	.LVL351
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL351
	.long	.LVL352
	.value	0x1
	.byte	0x53
	.long	.LVL352
	.long	.LFE135
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST132:
	.long	.LVL341
	.long	.LVL342
	.value	0x2
	.byte	0x76
	.sleb128 8
	.long	.LVL342
	.long	.LVL343
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL343
	.long	.LVL350
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST133:
	.long	.LVL347
	.long	.LVL348
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST134:
	.long	.LVL354
	.long	.LVL356
	.value	0x2
	.byte	0x70
	.sleb128 8
	.long	.LVL356
	.long	.LVL358
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST135:
	.long	.LVL355
	.long	.LVL357
	.value	0x2
	.byte	0x3d
	.byte	0x9f
	.long	0
	.long	0
.LLST136:
	.long	.LVL355
	.long	.LVL357
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST137:
	.long	.LVL355
	.long	.LVL357
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.long	0
	.long	0
.LLST138:
	.long	.LVL363
	.long	.LVL370
	.value	0x1
	.byte	0x50
	.long	.LVL370
	.long	.LVL379
	.value	0x1
	.byte	0x53
	.long	.LVL379
	.long	.LVL380-1
	.value	0x1
	.byte	0x50
	.long	.LVL380-1
	.long	.LVL382
	.value	0x4
	.byte	0x73
	.sleb128 -120
	.byte	0x9f
	.long	.LVL382
	.long	.LVL383
	.value	0x1
	.byte	0x50
	.long	.LVL383
	.long	.LFE96
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST139:
	.long	.LVL363
	.long	.LVL364
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	0
	.long	0
.LLST140:
	.long	.LVL374
	.long	.LVL375
	.value	0x1
	.byte	0x50
	.long	.LVL375
	.long	.LVL376
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL376
	.long	.LVL377-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	0
	.long	0
.LLST141:
	.long	.LVL372
	.long	.LVL373
	.value	0x1
	.byte	0x50
	.long	.LVL373
	.long	.LVL382
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST142:
	.long	.LVL365
	.long	.LVL366
	.value	0x1
	.byte	0x52
	.long	.LVL366
	.long	.LVL367
	.value	0xd
	.byte	0x70
	.sleb128 332
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL367
	.long	.LVL368
	.value	0x1
	.byte	0x52
	.long	.LVL369
	.long	.LVL382
	.value	0x2
	.byte	0x75
	.sleb128 -25
	.long	0
	.long	0
.LLST143:
	.long	.LVL380
	.long	.LVL382
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST144:
	.long	.LVL380
	.long	.LVL382
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST145:
	.long	.LVL384
	.long	.LVL385
	.value	0x1
	.byte	0x50
	.long	.LVL385
	.long	.LVL399
	.value	0x1
	.byte	0x53
	.long	.LVL399
	.long	.LFE156
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST146:
	.long	.LVL387
	.long	.LVL388
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST147:
	.long	.LVL388
	.long	.LVL390
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST148:
	.long	.LVL395
	.long	.LVL398
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST149:
	.long	.LVL401
	.long	.LVL407
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST150:
	.long	.LVL401
	.long	.LVL407
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST152:
	.long	.LVL401
	.long	.LVL407
	.value	0x6
	.byte	0x3
	.long	bt_smp_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST153:
	.long	.LVL403
	.long	.LVL406
	.value	0x6
	.byte	0x3
	.long	bt_smp_pool
	.byte	0x9f
	.long	0
	.long	0
.LLST154:
	.long	.LVL404
	.long	.LVL405
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST155:
	.long	.LVL409
	.long	.LVL410-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST156:
	.long	.LVL413
	.long	.LVL417
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST157:
	.long	.LVL413
	.long	.LVL416
	.value	0x1
	.byte	0x53
	.long	.LVL416
	.long	.LVL417-1
	.value	0x1
	.byte	0x50
	.long	.LVL417-1
	.long	.LVL417
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST159:
	.long	.LVL414
	.long	.LVL415
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST160:
	.long	.LVL418
	.long	.LVL420
	.value	0x1
	.byte	0x50
	.long	.LVL420
	.long	.LFE95
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST161:
	.long	.LVL418
	.long	.LVL421
	.value	0x1
	.byte	0x52
	.long	.LVL421
	.long	.LVL426
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	.LVL426
	.long	.LFE95
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST162:
	.long	.LVL418
	.long	.LVL419
	.value	0x1
	.byte	0x51
	.long	.LVL419
	.long	.LVL422
	.value	0x1
	.byte	0x56
	.long	.LVL422
	.long	.LVL423
	.value	0x3
	.byte	0x76
	.sleb128 -7
	.byte	0x9f
	.long	.LVL423
	.long	.LFE95
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST163:
	.long	.LVL427
	.long	.LVL429
	.value	0x1
	.byte	0x50
	.long	.LVL437
	.long	.LVL438
	.value	0x1
	.byte	0x50
	.long	.LVL439
	.long	.LFE95
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST164:
	.long	.LVL424
	.long	.LVL425
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL425
	.long	.LVL426
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST165:
	.long	.LVL424
	.long	.LVL425
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x43
	.byte	0x1c
	.byte	0x9f
	.long	.LVL425
	.long	.LVL426
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x44
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST166:
	.long	.LVL424
	.long	.LVL425
	.value	0xa
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL425
	.long	.LVL426
	.value	0x8
	.byte	0x91
	.sleb128 -92
	.byte	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST167:
	.long	.LVL424
	.long	.LVL426
	.value	0x5
	.byte	0x3f
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST168:
	.long	.LVL428
	.long	.LVL437
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST169:
	.long	.LVL428
	.long	.LVL434
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL434
	.long	.LVL436
	.value	0x3
	.byte	0x76
	.sleb128 -7
	.byte	0x9f
	.long	0
	.long	0
.LLST170:
	.long	.LVL428
	.long	.LVL435
	.value	0x1
	.byte	0x53
	.long	.LVL435
	.long	.LVL437
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST171:
	.long	.LVL428
	.long	.LVL431
	.value	0x1
	.byte	0x52
	.long	.LVL431
	.long	.LVL437
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	0
	.long	0
.LLST172:
	.long	.LVL428
	.long	.LVL437
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST173:
	.long	.LVL428
	.long	.LVL437
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST174:
	.long	.LVL430
	.long	.LVL431
	.value	0x1
	.byte	0x53
	.long	.LVL431
	.long	.LVL432
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST175:
	.long	.LVL430
	.long	.LVL431
	.value	0x3
	.byte	0x91
	.sleb128 -52
	.byte	0x9f
	.long	.LVL431
	.long	.LVL432
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.long	.LVL432
	.long	.LVL433
	.value	0x9
	.byte	0x91
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST177:
	.long	.LVL430
	.long	.LVL431
	.value	0x2
	.byte	0x3f
	.byte	0x9f
	.long	.LVL431
	.long	.LVL433
	.value	0x5
	.byte	0x3f
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST178:
	.long	.LVL440
	.long	.LVL441
	.value	0x1
	.byte	0x50
	.long	.LVL441
	.long	.LVL459
	.value	0x1
	.byte	0x53
	.long	.LVL459
	.long	.LVL460
	.value	0x7
	.byte	0x75
	.sleb128 -32
	.byte	0x6
	.byte	0x8
	.byte	0x78
	.byte	0x1c
	.byte	0x9f
	.long	.LVL460
	.long	.LFE107
	.value	0x7
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x8
	.byte	0x78
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST179:
	.long	.LVL443
	.long	.LVL457
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST180:
	.long	.LVL444
	.long	.LVL457
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST181:
	.long	.LVL445
	.long	.LVL452
	.value	0x1
	.byte	0x56
	.long	.LVL452
	.long	.LVL457
	.value	0x4
	.byte	0x76
	.sleb128 -71
	.byte	0x9f
	.long	0
	.long	0
.LLST182:
	.long	.LVL450
	.long	.LVL451
	.value	0x1
	.byte	0x50
	.long	.LVL451
	.long	.LVL457
	.value	0x2
	.byte	0x75
	.sleb128 -36
	.long	0
	.long	0
.LLST183:
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL448
	.long	.LVL457
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST184:
	.long	.LVL455
	.long	.LVL457
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST185:
	.long	.LVL455
	.long	.LVL457
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	0
	.long	0
.LLST186:
	.long	.LVL455
	.long	.LVL457
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST187:
	.long	.LVL462
	.long	.LVL463
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST188:
	.long	.LVL471
	.long	.LVL472
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST189:
	.long	.LVL493
	.long	.LVL494
	.value	0x3
	.byte	0x91
	.sleb128 -120
	.long	.LVL494
	.long	.LVL495
	.value	0x1
	.byte	0x52
	.long	.LVL495
	.long	.LVL498
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST190:
	.long	.LVL474
	.long	.LVL482
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST191:
	.long	.LVL475
	.long	.LVL478
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST192:
	.long	.LVL476
	.long	.LVL477
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST193:
	.long	.LVL480
	.long	.LVL481
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST194:
	.long	.LVL480
	.long	.LVL481
	.value	0x4
	.byte	0x73
	.sleb128 171
	.byte	0x9f
	.long	0
	.long	0
.LLST195:
	.long	.LVL480
	.long	.LVL481
	.value	0x4
	.byte	0x73
	.sleb128 155
	.byte	0x9f
	.long	0
	.long	0
.LLST196:
	.long	.LVL480
	.long	.LVL481
	.value	0x3
	.byte	0x91
	.sleb128 -148
	.long	0
	.long	0
.LLST197:
	.long	.LVL483
	.long	.LVL494
	.value	0x6
	.byte	0x3
	.long	sc_public_key
	.byte	0x9f
	.long	0
	.long	0
.LLST198:
	.long	.LVL483
	.long	.LVL494
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+15902
	.sleb128 0
	.long	0
	.long	0
.LLST199:
	.long	.LVL483
	.long	.LVL487
	.value	0x4
	.byte	0x73
	.sleb128 155
	.byte	0x9f
	.long	.LVL487
	.long	.LVL488-1
	.value	0x1
	.byte	0x52
	.long	.LVL488-1
	.long	.LVL494
	.value	0x4
	.byte	0x73
	.sleb128 155
	.byte	0x9f
	.long	0
	.long	0
.LLST200:
	.long	.LVL483
	.long	.LVL489
	.value	0x4
	.byte	0x73
	.sleb128 171
	.byte	0x9f
	.long	.LVL489
	.long	.LVL490-1
	.value	0x1
	.byte	0x52
	.long	.LVL490-1
	.long	.LVL494
	.value	0x4
	.byte	0x73
	.sleb128 171
	.byte	0x9f
	.long	0
	.long	0
.LLST201:
	.long	.LVL483
	.long	.LVL484
	.value	0x4
	.byte	0x73
	.sleb128 203
	.byte	0x9f
	.long	.LVL484
	.long	.LVL485-1
	.value	0x1
	.byte	0x52
	.long	.LVL485-1
	.long	.LVL494
	.value	0x4
	.byte	0x73
	.sleb128 203
	.byte	0x9f
	.long	0
	.long	0
.LLST202:
	.long	.LVL491
	.long	.LVL492
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST203:
	.long	.LVL498
	.long	.LVL503
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST204:
	.long	.LVL499
	.long	.LVL500
	.value	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST205:
	.long	.LVL514
	.long	.LVL515
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0
	.long	0
.LLST206:
	.long	.LVL516
	.long	.LVL518
	.value	0x1
	.byte	0x50
	.long	.LVL518
	.long	.LVL519-1
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL519-1
	.long	.LFE127
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST207:
	.long	.LVL516
	.long	.LVL517
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST208:
	.long	.LVL521
	.long	.LVL524
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST209:
	.long	.LVL520
	.long	.LVL531-1
	.value	0x1
	.byte	0x50
	.long	.LVL531-1
	.long	.LVL532
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST210:
	.long	.LVL521
	.long	.LVL522
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST211:
	.long	.LVL523
	.long	.LVL524
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	0
	.long	0
.LLST212:
	.long	.LVL523
	.long	.LVL525
	.value	0x3
	.byte	0x70
	.sleb128 60
	.byte	0x9f
	.long	0
	.long	0
.LLST213:
	.long	.LVL525
	.long	.LVL526
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST214:
	.long	.LVL527
	.long	.LVL528
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST215:
	.long	.LVL527
	.long	.LVL528
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST216:
	.long	.LVL528
	.long	.LVL530
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST217:
	.long	.LVL528
	.long	.LVL529
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST218:
	.long	.LVL535
	.long	.LVL536
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST219:
	.long	.LVL535
	.long	.LVL536-1
	.value	0x1
	.byte	0x50
	.long	.LVL536-1
	.long	.LVL536
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST220:
	.long	.LVL538
	.long	.LVL539
	.value	0x1
	.byte	0x50
	.long	.LVL539
	.long	.LVL560
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST221:
	.long	.LVL549
	.long	.LVL551-1
	.value	0x1
	.byte	0x50
	.long	.LVL551-1
	.long	.LVL557
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST222:
	.long	.LVL546
	.long	.LVL547
	.value	0x1
	.byte	0x50
	.long	.LVL547
	.long	.LVL548-1
	.value	0x1
	.byte	0x52
	.long	.LVL548-1
	.long	.LVL557
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL559
	.long	.LVL560
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST223:
	.long	.LVL542
	.long	.LVL557
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL558
	.long	.LVL560
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST224:
	.long	.LVL549
	.long	.LVL550
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.long	.LVL550
	.long	.LVL552
	.value	0x1
	.byte	0x53
	.long	.LVL552
	.long	.LVL553
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST225:
	.long	.LVL554
	.long	.LVL555
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST226:
	.long	.LVL554
	.long	.LVL555-1
	.value	0x1
	.byte	0x52
	.long	.LVL555-1
	.long	.LVL555
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST227:
	.long	.LVL554
	.long	.LVL555
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST228:
	.long	.LVL563
	.long	.LVL564
	.value	0x1
	.byte	0x50
	.long	.LVL565
	.long	.LVL566
	.value	0x1
	.byte	0x50
	.long	.LVL566
	.long	.LVL580
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST229:
	.long	.LVL569
	.long	.LVL570
	.value	0x1
	.byte	0x50
	.long	.LVL570
	.long	.LVL575
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST230:
	.long	.LVL569
	.long	.LVL575
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST231:
	.long	.LVL582
	.long	.LVL583
	.value	0x1
	.byte	0x50
	.long	.LVL584
	.long	.LVL585
	.value	0x1
	.byte	0x50
	.long	.LVL585
	.long	.LVL593
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST232:
	.long	.LVL591
	.long	.LVL592
	.value	0x1
	.byte	0x50
	.long	.LVL592
	.long	.LVL593-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST233:
	.long	.LVL595
	.long	.LVL596
	.value	0x1
	.byte	0x50
	.long	.LVL597
	.long	.LVL598
	.value	0x1
	.byte	0x50
	.long	.LVL598
	.long	.LVL600
	.value	0x1
	.byte	0x53
	.long	.LVL600
	.long	.LVL601-1
	.value	0x1
	.byte	0x50
	.long	.LVL601
	.long	.LVL602
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST234:
	.long	.LVL604
	.long	.LVL605
	.value	0x1
	.byte	0x50
	.long	.LVL606
	.long	.LVL607
	.value	0x1
	.byte	0x50
	.long	.LVL607
	.long	.LVL614
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST235:
	.long	.LVL616
	.long	.LVL617
	.value	0x1
	.byte	0x50
	.long	.LVL617
	.long	.LVL632
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST236:
	.long	.LVL624
	.long	.LVL627
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST237:
	.long	.LVL624
	.long	.LVL625
	.value	0x7
	.byte	0x73
	.sleb128 104
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	0
	.long	0
.LLST238:
	.long	.LVL624
	.long	.LVL627
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST239:
	.long	.LVL634
	.long	.LVL635
	.value	0x1
	.byte	0x50
	.long	.LVL636
	.long	.LVL637
	.value	0x1
	.byte	0x50
	.long	.LVL637
	.long	.LVL641
	.value	0x1
	.byte	0x56
	.long	.LVL641
	.long	.LVL642
	.value	0x4
	.byte	0x76
	.sleb128 -187
	.byte	0x9f
	.long	0
	.long	0
.LLST240:
	.long	.LVL639
	.long	.LVL640
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST241:
	.long	.LVL639
	.long	.LVL641
	.value	0x4
	.byte	0x76
	.sleb128 126
	.byte	0x9f
	.long	.LVL641
	.long	.LVL642
	.value	0x3
	.byte	0x76
	.sleb128 -61
	.byte	0x9f
	.long	0
	.long	0
.LLST242:
	.long	.LVL639
	.long	.LVL641
	.value	0x4
	.byte	0x76
	.sleb128 133
	.byte	0x9f
	.long	.LVL641
	.long	.LVL642
	.value	0x3
	.byte	0x76
	.sleb128 -54
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1ac
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB78
	.long	.LFE78-.LFB78
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	.LFB149
	.long	.LFE149-.LFB149
	.long	.LFB114
	.long	.LFE114-.LFB114
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB80
	.long	.LFE80-.LFB80
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	.LFB117
	.long	.LFE117-.LFB117
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB125
	.long	.LFE125-.LFB125
	.long	.LFB138
	.long	.LFE138-.LFB138
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB126
	.long	.LFE126-.LFB126
	.long	.LFB110
	.long	.LFE110-.LFB110
	.long	.LFB109
	.long	.LFE109-.LFB109
	.long	.LFB116
	.long	.LFE116-.LFB116
	.long	.LFB137
	.long	.LFE137-.LFB137
	.long	.LFB139
	.long	.LFE139-.LFB139
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB165
	.long	.LFE165-.LFB165
	.long	.LFB84
	.long	.LFE84-.LFB84
	.long	.LFB121
	.long	.LFE121-.LFB121
	.long	.LFB82
	.long	.LFE82-.LFB82
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB122
	.long	.LFE122-.LFB122
	.long	.LFB135
	.long	.LFE135-.LFB135
	.long	.LFB134
	.long	.LFE134-.LFB134
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB156
	.long	.LFE156-.LFB156
	.long	.LFB136
	.long	.LFE136-.LFB136
	.long	.LFB133
	.long	.LFE133-.LFB133
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB107
	.long	.LFE107-.LFB107
	.long	.LFB119
	.long	.LFE119-.LFB119
	.long	.LFB124
	.long	.LFE124-.LFB124
	.long	.LFB127
	.long	.LFE127-.LFB127
	.long	.LFB115
	.long	.LFE115-.LFB115
	.long	.LFB141
	.long	.LFE141-.LFB141
	.long	.LFB143
	.long	.LFE143-.LFB143
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	.LFB146
	.long	.LFE146-.LFB146
	.long	.LFB147
	.long	.LFE147-.LFB147
	.long	.LFB148
	.long	.LFE148-.LFB148
	.long	.LFB151
	.long	.LFE151-.LFB151
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB32
	.long	.LBE32
	.long	.LBB33
	.long	.LBE33
	.long	.LBB34
	.long	.LBE34
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB59
	.long	.LBE59
	.long	0
	.long	0
	.long	.LBB62
	.long	.LBE62
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB64
	.long	.LBE64
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LBB89
	.long	.LBE89
	.long	.LBB90
	.long	.LBE90
	.long	0
	.long	0
	.long	.LBB98
	.long	.LBE98
	.long	.LBB105
	.long	.LBE105
	.long	0
	.long	0
	.long	.LBB100
	.long	.LBE100
	.long	.LBB103
	.long	.LBE103
	.long	0
	.long	0
	.long	.LBB106
	.long	.LBE106
	.long	.LBB107
	.long	.LBE107
	.long	0
	.long	0
	.long	.LBB112
	.long	.LBE112
	.long	.LBB116
	.long	.LBE116
	.long	.LBB117
	.long	.LBE117
	.long	0
	.long	0
	.long	.LBB128
	.long	.LBE128
	.long	.LBB129
	.long	.LBE129
	.long	0
	.long	0
	.long	.LBB151
	.long	.LBE151
	.long	.LBB160
	.long	.LBE160
	.long	.LBB161
	.long	.LBE161
	.long	0
	.long	0
	.long	.LBB166
	.long	.LBE166
	.long	.LBB176
	.long	.LBE176
	.long	.LBB177
	.long	.LBE177
	.long	0
	.long	0
	.long	.LBB186
	.long	.LBE186
	.long	.LBB191
	.long	.LBE191
	.long	0
	.long	0
	.long	.LBB216
	.long	.LBE216
	.long	.LBB221
	.long	.LBE221
	.long	.LBB222
	.long	.LBE222
	.long	.LBB223
	.long	.LBE223
	.long	0
	.long	0
	.long	.LBB224
	.long	.LBE224
	.long	.LBB227
	.long	.LBE227
	.long	0
	.long	0
	.long	.LBB243
	.long	.LBE243
	.long	.LBB246
	.long	.LBE246
	.long	0
	.long	0
	.long	.LBB254
	.long	.LBE254
	.long	.LBB260
	.long	.LBE260
	.long	0
	.long	0
	.long	.LBB257
	.long	.LBE257
	.long	.LBB261
	.long	.LBE261
	.long	0
	.long	0
	.long	.LBB272
	.long	.LBE272
	.long	.LBB277
	.long	.LBE277
	.long	.LBB281
	.long	.LBE281
	.long	.LBB282
	.long	.LBE282
	.long	0
	.long	0
	.long	.LBB278
	.long	.LBE278
	.long	.LBB283
	.long	.LBE283
	.long	0
	.long	0
	.long	.LBB286
	.long	.LBE286
	.long	.LBB289
	.long	.LBE289
	.long	0
	.long	0
	.long	.LBB297
	.long	.LBE297
	.long	.LBB300
	.long	.LBE300
	.long	0
	.long	0
	.long	.LFB54
	.long	.LFE54
	.long	.LFB78
	.long	.LFE78
	.long	.LFB129
	.long	.LFE129
	.long	.LFB149
	.long	.LFE149
	.long	.LFB114
	.long	.LFE114
	.long	.LFB37
	.long	.LFE37
	.long	.LFB80
	.long	.LFE80
	.long	.LFB41
	.long	.LFE41
	.long	.LFB38
	.long	.LFE38
	.long	.LFB91
	.long	.LFE91
	.long	.LFB100
	.long	.LFE100
	.long	.LFB117
	.long	.LFE117
	.long	.LFB93
	.long	.LFE93
	.long	.LFB81
	.long	.LFE81
	.long	.LFB88
	.long	.LFE88
	.long	.LFB125
	.long	.LFE125
	.long	.LFB138
	.long	.LFE138
	.long	.LFB90
	.long	.LFE90
	.long	.LFB126
	.long	.LFE126
	.long	.LFB110
	.long	.LFE110
	.long	.LFB109
	.long	.LFE109
	.long	.LFB116
	.long	.LFE116
	.long	.LFB137
	.long	.LFE137
	.long	.LFB139
	.long	.LFE139
	.long	.LFB97
	.long	.LFE97
	.long	.LFB165
	.long	.LFE165
	.long	.LFB84
	.long	.LFE84
	.long	.LFB121
	.long	.LFE121
	.long	.LFB82
	.long	.LFE82
	.long	.LFB92
	.long	.LFE92
	.long	.LFB122
	.long	.LFE122
	.long	.LFB135
	.long	.LFE135
	.long	.LFB134
	.long	.LFE134
	.long	.LFB96
	.long	.LFE96
	.long	.LFB156
	.long	.LFE156
	.long	.LFB136
	.long	.LFE136
	.long	.LFB133
	.long	.LFE133
	.long	.LFB95
	.long	.LFE95
	.long	.LFB107
	.long	.LFE107
	.long	.LFB119
	.long	.LFE119
	.long	.LFB124
	.long	.LFE124
	.long	.LFB127
	.long	.LFE127
	.long	.LFB115
	.long	.LFE115
	.long	.LFB141
	.long	.LFE141
	.long	.LFB143
	.long	.LFE143
	.long	.LFB144
	.long	.LFE144
	.long	.LFB145
	.long	.LFE145
	.long	.LFB146
	.long	.LFE146
	.long	.LFB147
	.long	.LFE147
	.long	.LFB148
	.long	.LFE148
	.long	.LFB151
	.long	.LFE151
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF126:
	.string	"BT_DEV_READY"
.LASF67:
	.string	"_POLL_NUM_TYPES"
.LASF178:
	.string	"bt_irk"
.LASF15:
	.string	"size_t"
.LASF424:
	.string	"net_buf_unref"
.LASF31:
	.string	"sizetype"
.LASF92:
	.string	"BT_SECURITY_NONE"
.LASF245:
	.string	"bt_smp_pairing_fail"
.LASF338:
	.string	"smp_init"
.LASF380:
	.string	"smp_ident_addr_info"
.LASF252:
	.string	"bt_smp_public_key"
.LASF347:
	.string	"bt_smp_connected"
.LASF26:
	.string	"tail"
.LASF171:
	.string	"BT_KEYS_DEBUG"
.LASF405:
	.string	"net_buf_simple_add"
.LASF137:
	.string	"BT_DEV_ID_PENDING"
.LASF336:
	.string	"smp_master_ident"
.LASF106:
	.string	"tx_pending"
.LASF62:
	.string	"work_q"
.LASF105:
	.string	"rx_len"
.LASF349:
	.string	"legacy_distribute_keys"
.LASF408:
	.string	"bt_l2cap_send_cb"
.LASF240:
	.string	"max_key_size"
.LASF277:
	.string	"SMP_FLAG_CT2"
.LASF369:
	.string	"xor_128"
.LASF119:
	.string	"tc_cmac_struct"
.LASF292:
	.string	"local_dist"
.LASF142:
	.string	"pkts"
.LASF167:
	.string	"BT_KEYS_REMOTE_CSRK"
.LASF93:
	.string	"BT_SECURITY_LOW"
.LASF35:
	.string	"aos_queue_t"
.LASF213:
	.string	"bt_l2cap_chan_destroy_t"
.LASF104:
	.string	"state"
.LASF183:
	.string	"slave_ltk"
.LASF323:
	.string	"atomic_test_and_clear_bit"
.LASF421:
	.string	"bt_l2cap_le_lookup_tx_cid"
.LASF39:
	.string	"k_queue"
.LASF168:
	.string	"BT_KEYS_LTK_P256"
.LASF206:
	.string	"resp_addr"
.LASF85:
	.string	"bt_addr_le_t"
.LASF84:
	.string	"type"
.LASF318:
	.string	"target"
.LASF344:
	.string	"legacy_request_tk"
.LASF215:
	.string	"conn"
.LASF57:
	.string	"k_work"
.LASF337:
	.string	"smp_encrypt_info"
.LASF395:
	.string	"bt_smp_pool"
.LASF391:
	.string	"pub_key_cb"
.LASF378:
	.string	"bt_addr_copy"
.LASF94:
	.string	"BT_SECURITY_MEDIUM"
.LASF325:
	.string	"send_pairing_rsp"
.LASF165:
	.string	"BT_KEYS_LTK"
.LASF5:
	.string	"__uint8_t"
.LASF207:
	.string	"interval"
.LASF203:
	.string	"BT_CONN_NUM_FLAGS"
.LASF158:
	.string	"rx_prio_queue"
.LASF136:
	.string	"BT_DEV_RPA_VALID"
.LASF388:
	.string	"smp_self_test"
.LASF238:
	.string	"oob_flag"
.LASF55:
	.string	"fifo"
.LASF4:
	.string	"long int"
.LASF312:
	.string	"smp_check_complete"
.LASF437:
	.string	"bt_smp_sign"
.LASF174:
	.string	"BT_KEYS_NUM_FLAGS"
.LASF91:
	.string	"BT_CONN_ROLE_SLAVE"
.LASF375:
	.string	"smp_pairing_random"
.LASF103:
	.string	"encrypt"
.LASF220:
	.string	"disconnected"
.LASF204:
	.string	"bt_conn_le"
.LASF438:
	.string	"bt_smp_update_keys"
.LASF403:
	.string	"atomic_get"
.LASF163:
	.string	"BT_KEYS_SLAVE_LTK"
.LASF176:
	.string	"rand"
.LASF209:
	.string	"interval_max"
.LASF25:
	.string	"head"
.LASF390:
	.string	"bt_smp_init"
.LASF186:
	.string	"BT_LINK_KEY_SC"
.LASF86:
	.string	"_Bool"
.LASF197:
	.string	"BT_CONN_BR_PAIRING"
.LASF217:
	.string	"rtx_work"
.LASF362:
	.string	"bt_smp_dhkey_ready"
.LASF257:
	.string	"PASSKEY_DISPLAY"
.LASF73:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF21:
	.string	"sys_snode_t"
.LASF44:
	.string	"k_timer_handler_t"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"uint8_t"
.LASF243:
	.string	"bt_smp_pairing_confirm"
.LASF38:
	.string	"_sem_t"
.LASF87:
	.string	"BT_CONN_TYPE_LE"
.LASF317:
	.string	"atomic_test_bit"
.LASF184:
	.string	"BT_LINK_KEY_AUTHENTICATED"
.LASF150:
	.string	"hci_revision"
.LASF306:
	.string	"bt_smp_pkey_ready"
.LASF334:
	.string	"smp_timeout"
.LASF266:
	.string	"SMP_FLAG_PKEY_SEND"
.LASF1:
	.string	"unsigned char"
.LASF249:
	.string	"bt_smp_ident_info"
.LASF296:
	.string	"smp_c1"
.LASF382:
	.string	"bt_smp_send_security_req"
.LASF359:
	.string	"compute_and_check_and_send_slave_dhcheck"
.LASF321:
	.string	"atomic_set_bit"
.LASF224:
	.string	"bt_l2cap_le_endpoint"
.LASF135:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF190:
	.string	"BT_CONN_CONNECT"
.LASF284:
	.string	"pcnf"
.LASF434:
	.string	"/home/stone/Documents/pca"
.LASF333:
	.string	"bt_smp_disconnected"
.LASF407:
	.string	"atomic_and"
.LASF47:
	.string	"handler"
.LASF253:
	.string	"bt_smp_dhkey_check"
.LASF290:
	.string	"passkey"
.LASF63:
	.string	"_POLL_TYPE_IGNORE"
.LASF231:
	.string	"_sdu_len"
.LASF315:
	.string	"bt_smp_accept"
.LASF228:
	.string	"chan"
.LASF32:
	.string	"char"
.LASF285:
	.string	"prnd"
.LASF294:
	.string	"expect_len"
.LASF116:
	.string	"tc_aes_key_sched_struct"
.LASF82:
	.string	"pool_id"
.LASF351:
	.string	"ident"
.LASF108:
	.string	"tx_queue"
.LASF153:
	.string	"supported_commands"
.LASF201:
	.string	"BT_CONN_AUTO_PHY_UPDATE"
.LASF46:
	.string	"timer"
.LASF331:
	.string	"smp_reset"
.LASF134:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF198:
	.string	"BT_CONN_BR_NOBOND"
.LASF200:
	.string	"BT_CONN_CLEANUP"
.LASF370:
	.string	"legacy_send_pairing_confirm"
.LASF59:
	.string	"flags"
.LASF225:
	.string	"init_credits"
.LASF386:
	.string	"bt_smp_auth_pairing_confirm"
.LASF112:
	.string	"passkey_entry"
.LASF22:
	.string	"_snode"
.LASF189:
	.string	"BT_CONN_CONNECT_SCAN"
.LASF250:
	.string	"bt_smp_ident_addr_info"
.LASF374:
	.string	"sc_smp_check_confirm"
.LASF79:
	.string	"node"
.LASF140:
	.string	"features"
.LASF159:
	.string	"cmd_tx_queue"
.LASF356:
	.string	"smp_f5"
.LASF353:
	.string	"smp_f6"
.LASF222:
	.string	"alloc_buf"
.LASF346:
	.string	"smp_pairing_req"
.LASF80:
	.string	"frags"
.LASF254:
	.string	"pairing_method"
.LASF172:
	.string	"BT_KEYS_ID_PENDING_ADD"
.LASF343:
	.string	"legacy_get_pair_method"
.LASF236:
	.string	"bt_smp_pairing"
.LASF425:
	.string	"bt_dh_key_gen"
.LASF311:
	.string	"smp_g2"
.LASF115:
	.string	"pairing_confirm"
.LASF372:
	.string	"legacy_pairing_random"
.LASF210:
	.string	"latency"
.LASF413:
	.string	"k_delayed_work_cancel"
.LASF212:
	.string	"bt_conn_tx_cb_t"
.LASF122:
	.string	"leftover_offset"
.LASF226:
	.string	"credits"
.LASF419:
	.string	"k_delayed_work_init"
.LASF328:
	.string	"req_buf"
.LASF280:
	.string	"allowed_cmds"
.LASF147:
	.string	"random_addr"
.LASF179:
	.string	"bt_keys"
.LASF301:
	.string	"smp_pairing_complete"
.LASF196:
	.string	"BT_CONN_USER"
.LASF401:
	.string	"bt_auth"
.LASF273:
	.string	"SMP_FLAG_DHCHECK_WAIT"
.LASF384:
	.string	"bt_smp_auth_passkey_confirm"
.LASF299:
	.string	"legacy_pairing_confirm"
.LASF69:
	.string	"_poll_states_bits"
.LASF123:
	.string	"sched"
.LASF234:
	.string	"bt_smp_hdr"
.LASF71:
	.string	"_POLL_STATE_SIGNALED"
.LASF9:
	.string	"__uint64_t"
.LASF152:
	.string	"manufacturer"
.LASF324:
	.string	"smp_send"
.LASF7:
	.string	"long unsigned int"
.LASF381:
	.string	"legacy_passkey_entry"
.LASF298:
	.string	"enc_data"
.LASF124:
	.string	"countdown"
.LASF366:
	.string	"smp_send_pairing_confirm"
.LASF300:
	.string	"status"
.LASF244:
	.string	"bt_smp_pairing_random"
.LASF30:
	.string	"sys_dlist_t"
.LASF278:
	.string	"SMP_NUM_FLAGS"
.LASF205:
	.string	"init_addr"
.LASF274:
	.string	"SMP_FLAG_DERIVE_LK"
.LASF330:
	.string	"bt_smp_aes_cmac"
.LASF313:
	.string	"dist_complete"
.LASF138:
	.string	"BT_DEV_NUM_FLAGS"
.LASF399:
	.string	"handlers"
.LASF283:
	.string	"prsp"
.LASF396:
	.string	"sc_supported"
.LASF326:
	.string	"rsp_buf"
.LASF164:
	.string	"BT_KEYS_IRK"
.LASF415:
	.string	"bt_keys_clear"
.LASF208:
	.string	"interval_min"
.LASF293:
	.string	"remote_dist"
.LASF392:
	.string	"gen_method_legacy"
.LASF376:
	.string	"bt_addr_le_is_identity"
.LASF436:
	.string	"get_io_capa"
.LASF187:
	.string	"BT_LINK_KEY_NUM_FLAGS"
.LASF365:
	.string	"smp_dhkey_check"
.LASF310:
	.string	"bt_l2cap_send"
.LASF48:
	.string	"args"
.LASF237:
	.string	"io_capability"
.LASF78:
	.string	"__buf"
.LASF383:
	.string	"bt_smp_auth_passkey_entry"
.LASF194:
	.string	"BT_CONN_AUTO_CONNECT"
.LASF6:
	.string	"__uint32_t"
.LASF439:
	.string	"__stack_chk_fail"
.LASF182:
	.string	"keys"
.LASF33:
	.string	"aos_hdl_t"
.LASF327:
	.string	"sc_send_public_key"
.LASF8:
	.string	"long long int"
.LASF271:
	.string	"SMP_FLAG_SC_DEBUG_KEY"
.LASF27:
	.string	"sys_slist_t"
.LASF357:
	.string	"salt"
.LASF232:
	.string	"bt_l2cap_fixed_chan"
.LASF56:
	.string	"k_work_handler_t"
.LASF114:
	.string	"cancel"
.LASF361:
	.string	"smp_error"
.LASF113:
	.string	"passkey_confirm"
.LASF295:
	.string	"sec_level_reachable"
.LASF319:
	.string	"smp_create_pdu"
.LASF263:
	.string	"SMP_FLAG_PAIRING"
.LASF43:
	.string	"k_sem"
.LASF41:
	.string	"poll_events"
.LASF322:
	.string	"mask"
.LASF60:
	.string	"k_delayed_work"
.LASF151:
	.string	"lmp_subversion"
.LASF281:
	.string	"method"
.LASF68:
	.string	"_poll_types_bits"
.LASF49:
	.string	"timeout"
.LASF75:
	.string	"net_buf_simple"
.LASF65:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF345:
	.string	"get_pair_method"
.LASF288:
	.string	"dhkey"
.LASF180:
	.string	"addr"
.LASF111:
	.string	"passkey_display"
.LASF307:
	.string	"get_encryption_key_size"
.LASF144:
	.string	"rl_entries"
.LASF50:
	.string	"start_ms"
.LASF332:
	.string	"smp_pairing_failed"
.LASF37:
	.string	"_queue_t"
.LASF11:
	.string	"unsigned int"
.LASF354:
	.string	"iocap"
.LASF214:
	.string	"bt_l2cap_chan"
.LASF230:
	.string	"_sdu"
.LASF364:
	.string	"atomic_clear_bit"
.LASF265:
	.string	"SMP_FLAG_SC"
.LASF18:
	.string	"u16_t"
.LASF109:
	.string	"channels"
.LASF287:
	.string	"pkey"
.LASF145:
	.string	"bt_dev"
.LASF218:
	.string	"bt_l2cap_chan_ops"
.LASF170:
	.string	"BT_KEYS_AUTHENTICATED"
.LASF195:
	.string	"BT_CONN_BR_LEGACY_SECURE"
.LASF107:
	.string	"tx_notify"
.LASF259:
	.string	"PASSKEY_ROLE"
.LASF393:
	.string	"gen_method_sc"
.LASF166:
	.string	"BT_KEYS_LOCAL_CSRK"
.LASF414:
	.string	"atomic_set"
.LASF352:
	.string	"ident_sent"
.LASF379:
	.string	"bt_addr_le_copy"
.LASF416:
	.string	"bt_keys_get_type"
.LASF23:
	.string	"_slist"
.LASF426:
	.string	"bt_encrypt_le"
.LASF157:
	.string	"rx_queue"
.LASF286:
	.string	"rrnd"
.LASF117:
	.string	"words"
.LASF358:
	.string	"sc_smp_send_dhkey_check"
.LASF188:
	.string	"BT_CONN_DISCONNECTED"
.LASF256:
	.string	"PASSKEY_INPUT"
.LASF128:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF130:
	.string	"BT_DEV_ADVERTISING"
.LASF160:
	.string	"bt_pub_key_cb"
.LASF223:
	.string	"recv"
.LASF335:
	.string	"smp_ident_info"
.LASF211:
	.string	"update_work"
.LASF248:
	.string	"bt_smp_master_ident"
.LASF303:
	.string	"hci_status"
.LASF302:
	.string	"bt_smp_encrypt_change"
.LASF28:
	.string	"_dnode"
.LASF146:
	.string	"id_addr"
.LASF169:
	.string	"BT_KEYS_ALL"
.LASF16:
	.string	"long double"
.LASF377:
	.string	"bt_addr_le_is_rpa"
.LASF45:
	.string	"k_timer"
.LASF95:
	.string	"BT_SECURITY_HIGH"
.LASF239:
	.string	"auth_req"
.LASF61:
	.string	"work"
.LASF139:
	.string	"bt_dev_le"
.LASF430:
	.string	"bt_l2cap_le_fixed_chan_register"
.LASF99:
	.string	"handle"
.LASF156:
	.string	"sent_cmd"
.LASF133:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF350:
	.string	"info"
.LASF371:
	.string	"smp_pairing_confirm"
.LASF175:
	.string	"bt_ltk"
.LASF411:
	.string	"tc_cmac_update"
.LASF418:
	.string	"bt_keys_find_addr"
.LASF77:
	.string	"size"
.LASF10:
	.string	"long long unsigned int"
.LASF20:
	.string	"u64_t"
.LASF216:
	.string	"destroy"
.LASF251:
	.string	"bt_smp_security_request"
.LASF309:
	.string	"length"
.LASF289:
	.string	"mackey"
.LASF410:
	.string	"tc_cmac_setup"
.LASF40:
	.string	"_queue"
.LASF368:
	.string	"generate_dhkey"
.LASF367:
	.string	"display_passkey"
.LASF398:
	.string	"sc_public_key"
.LASF81:
	.string	"net_buf"
.LASF276:
	.string	"SMP_FLAG_BR_PAIR"
.LASF394:
	.string	"sc_debug_public_key"
.LASF247:
	.string	"bt_smp_encrypt_info"
.LASF89:
	.string	"BT_CONN_TYPE_SCO"
.LASF320:
	.string	"sys_memcpy_swap"
.LASF363:
	.string	"bt_smp_recv"
.LASF110:
	.string	"bt_conn_auth_cb"
.LASF406:
	.string	"atomic_or"
.LASF199:
	.string	"BT_CONN_BR_PAIRING_INITIATOR"
.LASF233:
	.string	"accept"
.LASF246:
	.string	"reason"
.LASF177:
	.string	"ediv"
.LASF428:
	.string	"bt_id_add"
.LASF329:
	.string	"smp_send_pairing_random"
.LASF417:
	.string	"bt_rand"
.LASF423:
	.string	"net_buf_simple_pull"
.LASF305:
	.string	"smp_public_key"
.LASF373:
	.string	"smp_s1"
.LASF429:
	.string	"bt_keys_get_addr"
.LASF404:
	.string	"bt_l2cap_create_pdu"
.LASF101:
	.string	"sec_level"
.LASF34:
	.string	"aos_sem_t"
.LASF162:
	.string	"_next"
.LASF262:
	.string	"SMP_FLAG_KEYS_DISTR"
.LASF389:
	.string	"le_sc_supported"
.LASF341:
	.string	"legacy_pairing_req"
.LASF235:
	.string	"code"
.LASF154:
	.string	"init"
.LASF19:
	.string	"u32_t"
.LASF229:
	.string	"tx_buf"
.LASF422:
	.string	"memcmp"
.LASF400:
	.string	"aos_log_level"
.LASF255:
	.string	"JUST_WORKS"
.LASF64:
	.string	"_POLL_TYPE_SIGNAL"
.LASF267:
	.string	"SMP_FLAG_DHKEY_PENDING"
.LASF272:
	.string	"SMP_FLAG_SEC_REQ"
.LASF387:
	.string	"bt_smp_get_tk"
.LASF143:
	.string	"rl_size"
.LASF260:
	.string	"SMP_FLAG_CFM_DELAYED"
.LASF181:
	.string	"enc_size"
.LASF355:
	.string	"check"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint64_t"
.LASF314:
	.string	"smp_security_request"
.LASF161:
	.string	"func"
.LASF409:
	.string	"k_delayed_work_submit"
.LASF340:
	.string	"auth"
.LASF36:
	.string	"aos_timer_t"
.LASF275:
	.string	"SMP_FLAG_BR_CONNECTED"
.LASF96:
	.string	"BT_SECURITY_FIPS"
.LASF125:
	.string	"BT_DEV_ENABLE"
.LASF193:
	.string	"bt_conn_state_t"
.LASF258:
	.string	"PASSKEY_CONFIRM"
.LASF435:
	.string	"bt_hci_driver"
.LASF304:
	.string	"smp_public_key_slave"
.LASF339:
	.string	"get_auth"
.LASF97:
	.string	"bt_security_t"
.LASF118:
	.string	"TCAesKeySched_t"
.LASF270:
	.string	"SMP_FLAG_BOND"
.LASF397:
	.string	"sc_local_pkey_valid"
.LASF279:
	.string	"bt_smp"
.LASF192:
	.string	"BT_CONN_DISCONNECT"
.LASF291:
	.string	"passkey_round"
.LASF132:
	.string	"BT_DEV_SCANNING"
.LASF427:
	.string	"bt_conn_identity_resolved"
.LASF412:
	.string	"tc_cmac_final"
.LASF221:
	.string	"encrypt_change"
.LASF264:
	.string	"SMP_FLAG_TIMEOUT"
.LASF242:
	.string	"resp_key_dist"
.LASF185:
	.string	"BT_LINK_KEY_DEBUG"
.LASF102:
	.string	"required_sec_level"
.LASF261:
	.string	"SMP_FLAG_ENC_PENDING"
.LASF53:
	.string	"atomic_val_t"
.LASF433:
	.string	"src/smp.c"
.LASF191:
	.string	"BT_CONN_CONNECTED"
.LASF155:
	.string	"ncmd_sem"
.LASF121:
	.string	"keyid"
.LASF88:
	.string	"BT_CONN_TYPE_BR"
.LASF241:
	.string	"init_key_dist"
.LASF141:
	.string	"states"
.LASF131:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF13:
	.string	"uint32_t"
.LASF360:
	.string	"smp_f4"
.LASF66:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF308:
	.string	"sys_mem_swap"
.LASF432:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF42:
	.string	"k_fifo"
.LASF149:
	.string	"lmp_version"
.LASF348:
	.string	"bt_smp_distribute_keys"
.LASF90:
	.string	"BT_CONN_ROLE_MASTER"
.LASF3:
	.string	"short unsigned int"
.LASF100:
	.string	"role"
.LASF420:
	.string	"bt_keys_add_type"
.LASF148:
	.string	"hci_version"
.LASF52:
	.string	"atomic_t"
.LASF202:
	.string	"BT_CONN_AUTO_DATA_LEN"
.LASF268:
	.string	"SMP_FLAG_DHKEY_SEND"
.LASF58:
	.string	"_reserved"
.LASF17:
	.string	"u8_t"
.LASF385:
	.string	"bt_smp_auth_cancel"
.LASF127:
	.string	"BT_DEV_ID_STATIC_RANDOM"
.LASF227:
	.string	"bt_l2cap_le_chan"
.LASF83:
	.string	"bt_addr_t"
.LASF70:
	.string	"_POLL_STATE_NOT_READY"
.LASF120:
	.string	"leftover"
.LASF342:
	.string	"remote_io"
.LASF72:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF269:
	.string	"SMP_FLAG_USER"
.LASF24:
	.string	"next"
.LASF76:
	.string	"data"
.LASF219:
	.string	"connected"
.LASF282:
	.string	"preq"
.LASF297:
	.string	"pres"
.LASF29:
	.string	"prev"
.LASF173:
	.string	"BT_KEYS_ID_PENDING_DEL"
.LASF316:
	.string	"smp_chan_get"
.LASF129:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF98:
	.string	"bt_conn"
.LASF54:
	.string	"k_work_q"
.LASF74:
	.string	"_POLL_NUM_STATES"
.LASF402:
	.string	"bt_l2cap_le_lookup_rx_cid"
.LASF431:
	.string	"bt_pub_key_gen"
.LASF51:
	.string	"k_timer_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
