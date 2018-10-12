	.file	"gatt.c"
	.text
.Ltext0:
	.section	.text.unlikely.sc_ccc_cfg_changed,"ax",@progbits
.LCOLDB0:
	.section	.text.sc_ccc_cfg_changed,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.sc_ccc_cfg_changed
.Ltext_cold0:
	.section	.text.sc_ccc_cfg_changed
	.type	sc_ccc_cfg_changed, @function
sc_ccc_cfg_changed:
.LFB82:
	.file 1 "src/gatt.c"
	.loc 1 4130 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4132 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE82:
	.size	sc_ccc_cfg_changed, .-sc_ccc_cfg_changed
	.section	.text.unlikely.sc_ccc_cfg_changed
.LCOLDE0:
	.section	.text.sc_ccc_cfg_changed
.LHOTE0:
	.section	.text.unlikely.find_next,"ax",@progbits
.LCOLDB1:
	.section	.text.find_next,"ax",@progbits
.LHOTB1:
	.type	find_next, @function
find_next:
.LFB97:
	.loc 1 4469 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL2:
	.loc 1 4471 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 4473 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE97:
	.size	find_next, .-find_next
	.section	.text.unlikely.find_next
.LCOLDE1:
	.section	.text.find_next
.LHOTE1:
	.section	.text.unlikely.gatt_ccc_changed,"ax",@progbits
.LCOLDB2:
	.section	.text.gatt_ccc_changed,"ax",@progbits
.LHOTB2:
	.type	gatt_ccc_changed, @function
gatt_ccc_changed:
.LFB100:
	.loc 1 4505 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4507 0
	xorl	%ecx, %ecx
	.loc 1 4505 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4508 0
	xorl	%ebx, %ebx
	.loc 1 4505 0
	subl	$12, %esp
	movl	4(%edx), %edi
.LVL4:
.L6:
	.loc 1 4508 0 discriminator 1
	cmpl	%edi, %ebx
	je	.L11
	.loc 1 4509 0
	movl	%ebx, %esi
	sall	$4, %esi
	addl	(%edx), %esi
	movzwl	8(%esi), %esi
	cmpw	%si, %cx
	cmovb	%esi, %ecx
.LVL5:
	.loc 1 4508 0
	incl	%ebx
.LVL6:
	jmp	.L6
.L11:
	.loc 1 4514 0
	cmpw	8(%edx), %cx
	je	.L5
.LVL7:
	.loc 1 4516 0
	pushl	%ebx
	pushl	%ebx
	pushl	%ecx
	pushl	%eax
	.loc 1 4515 0
	movw	%cx, 8(%edx)
	.loc 1 4516 0
	call	*12(%edx)
.LVL8:
	addl	$16, %esp
.L5:
	.loc 1 4518 0
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
.LFE100:
	.size	gatt_ccc_changed, .-gatt_ccc_changed
	.section	.text.unlikely.gatt_ccc_changed
.LCOLDE2:
	.section	.text.gatt_ccc_changed
.LHOTE2:
	.section	.text.unlikely.gatt_indicate_rsp,"ax",@progbits
.LCOLDB3:
	.section	.text.gatt_indicate_rsp,"ax",@progbits
.LHOTB3:
	.type	gatt_indicate_rsp, @function
gatt_indicate_rsp:
.LFB106:
	.loc 1 4620 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4622 0
	movzbl	12(%ebp), %edx
	.loc 1 4620 0
	movl	24(%ebp), %eax
.LVL10:
	.loc 1 4622 0
	movl	%edx, 16(%ebp)
.LVL11:
	movl	24(%eax), %edx
	movl	%edx, 12(%ebp)
.LVL12:
	movl	28(%eax), %eax
	.loc 1 4623 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4622 0
	jmp	*%eax
.LVL13:
	.cfi_endproc
.LFE106:
	.size	gatt_indicate_rsp, .-gatt_indicate_rsp
	.section	.text.unlikely.gatt_indicate_rsp
.LCOLDE3:
	.section	.text.gatt_indicate_rsp
.LHOTE3:
	.section	.text.unlikely.bt_gatt_attr_write_ccc,"ax",@progbits
.LCOLDB4:
	.section	.text.bt_gatt_attr_write_ccc,"ax",@progbits
.LHOTB4:
	.globl	bt_gatt_attr_write_ccc
	.type	bt_gatt_attr_write_ccc, @function
bt_gatt_attr_write_ccc:
.LFB101:
	.loc 1 4522 0
	.cfi_startproc
.LVL14:
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
	.loc 1 4522 0
	movl	24(%ebp), %eax
	.loc 1 4523 0
	movl	12(%ebp), %edi
	.loc 1 4522 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %edx
	movl	20(%ebp), %ecx
	.loc 1 4527 0
	movl	$-7, -28(%ebp)
	.loc 1 4526 0
	cmpw	$2, %ax
	.loc 1 4523 0
	movl	12(%edi), %ebx
.LVL15:
	.loc 1 4526 0
	ja	.L15
	.loc 1 4529 0
	movzwl	%cx, %edi
	movzwl	%ax, %eax
	addl	%edi, %eax
	movl	%edi, -28(%ebp)
	cmpl	$2, %eax
	jg	.L27
.LVL16:
.LBB49:
.LBB50:
	.loc 1 983 0
	movzbl	1(%edx), %eax
	movzbl	(%edx), %edx
.LVL17:
	sall	$8, %eax
	orl	%eax, %edx
	movw	%dx, -30(%ebp)
.LVL18:
.LBE50:
.LBE49:
	.loc 1 4533 0
	xorl	%edx, %edx
.LVL19:
.L16:
	.loc 1 4533 0 is_stmt 0 discriminator 1
	cmpl	4(%ebx), %edx
	jnb	.L21
	.loc 1 4534 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	movl	%edx, %eax
	sall	$4, %eax
	addl	(%ebx), %eax
	movl	%edx, -36(%ebp)
	incl	%eax
	pushl	%eax
	pushl	%esi
	call	bt_conn_addr_le_cmp
.LVL20:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-36(%ebp), %edx
	jne	.L17
.LVL21:
.L21:
	.loc 1 4538 0
	movl	4(%ebx), %ecx
	cmpl	%ecx, %edx
	jne	.L18
	xorl	%edx, %edx
	jmp	.L19
.LVL22:
.L17:
	.loc 1 4533 0 discriminator 2
	incl	%edx
.LVL23:
	jmp	.L16
.L24:
	movl	%edx, %eax
	sall	$4, %eax
	movl	%eax, -36(%ebp)
	.loc 1 4540 0
	addl	(%ebx), %eax
	cmpb	$0, (%eax)
	je	.L22
	.loc 1 4539 0
	incl	%edx
.LVL24:
.L19:
	.loc 1 4539 0 is_stmt 0 discriminator 1
	cmpl	%ecx, %edx
	jne	.L24
	jmp	.L28
.L22:
.LVL25:
.LBB51:
.LBB52:
	.loc 1 1046 0 is_stmt 1
	incl	%eax
.LVL26:
	addl	$64, %esi
.LVL27:
.LBE52:
.LBE51:
	.loc 1 4544 0
	cmpw	$0, -30(%ebp)
.LBB54:
.LBB53:
	.loc 1 1046 0
	movl	$7, %ecx
	movl	%eax, %edi
	rep movsb
.LVL28:
.LBE53:
.LBE54:
	.loc 1 4544 0
	je	.L23
	.loc 1 4545 0
	movl	(%ebx), %eax
	movl	-36(%ebp), %esi
	movb	$1, (%eax,%esi)
.L23:
	.loc 1 4551 0
	cmpl	4(%ebx), %edx
	jne	.L25
	jmp	.L28
.LVL29:
.L18:
	.loc 1 4555 0
	cmpw	$0, -30(%ebp)
	jne	.L25
	.loc 1 4556 0
	movl	%edx, %eax
	sall	$4, %eax
	addl	(%ebx), %eax
	movb	$0, (%eax)
.L25:
.LVL30:
	.loc 1 4560 0
	sall	$4, %edx
.LVL31:
	movw	-30(%ebp), %ax
	addl	(%ebx), %edx
	.loc 1 4562 0
	cmpw	%ax, 8(%ebx)
	.loc 1 4560 0
	movw	%ax, 8(%edx)
	.loc 1 4562 0
	je	.L15
	.loc 1 4563 0
	movl	12(%ebp), %eax
	movl	%ebx, %edx
	call	gatt_ccc_changed
.LVL32:
	jmp	.L15
.L27:
	.loc 1 4530 0
	movl	$-13, -28(%ebp)
	jmp	.L15
.LVL33:
.L28:
	.loc 1 4553 0
	movl	$-17, -28(%ebp)
.LVL34:
.L15:
	.loc 1 4566 0
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL35:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE101:
	.size	bt_gatt_attr_write_ccc, .-bt_gatt_attr_write_ccc
	.section	.text.unlikely.bt_gatt_attr_write_ccc
.LCOLDE4:
	.section	.text.bt_gatt_attr_write_ccc
.LHOTE4:
	.section	.text.unlikely.get_service_handles,"ax",@progbits
.LCOLDB5:
	.section	.text.get_service_handles,"ax",@progbits
.LHOTB5:
	.type	get_service_handles, @function
get_service_handles:
.LFB93:
	.loc 1 4351 0
	.cfi_startproc
.LVL36:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$24, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4351 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL37:
	.loc 1 4353 0
	leal	-20(%ebp), %eax
	movb	$0, -20(%ebp)
	movw	$10240, -18(%ebp)
	pushl	%eax
	pushl	(%ebx)
	call	bt_uuid_cmp
.LVL38:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L34
.L36:
	.loc 1 4355 0
	xorl	%eax, %eax
	jmp	.L35
.L34:
.LVL39:
.LBB57:
.LBB58:
	.loc 1 4354 0
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	movb	$0, -16(%ebp)
	movw	$10241, -14(%ebp)
	pushl	%eax
	pushl	(%ebx)
	call	bt_uuid_cmp
.LVL40:
	.loc 1 4353 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L36
	.loc 1 4357 0
	movl	16(%ebx), %eax
	movw	%ax, 2(%esi)
	.loc 1 4358 0
	movb	$1, %al
.LVL41:
.L35:
.LBE58:
.LBE57:
	.loc 1 4359 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L37
	call	__stack_chk_fail
.LVL42:
.L37:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL43:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE93:
	.size	get_service_handles, .-get_service_handles
	.section	.text.unlikely.get_service_handles
.LCOLDE5:
	.section	.text.get_service_handles
.LHOTE5:
	.section	.text.unlikely.gatt_notify,"ax",@progbits
.LCOLDB6:
	.section	.text.gatt_notify,"ax",@progbits
.LHOTB6:
	.type	gatt_notify, @function
gatt_notify:
.LFB105:
	.loc 1 4602 0
	.cfi_startproc
.LVL44:
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
	subl	$32, %esp
	.loc 1 4602 0
	movl	%eax, -28(%ebp)
	.loc 1 4605 0
	movl	8(%ebp), %eax
.LVL45:
	.loc 1 4602 0
	movl	%ecx, -32(%ebp)
	.loc 1 4605 0
	addl	$2, %eax
	pushl	%eax
	pushl	$27
	pushl	-28(%ebp)
	call	bt_att_create_pdu
.LVL46:
	.loc 1 4606 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L44
	.loc 1 4611 0
	leal	8(%eax), %edx
	movl	%eax, %ebx
.LVL47:
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	%edx
	movl	%edx, -36(%ebp)
	call	net_buf_simple_add
.LVL48:
	.loc 1 4612 0
	movw	%di, (%eax)
	.loc 1 4611 0
	movl	%eax, %esi
.LVL49:
	.loc 1 4613 0
	popl	%edx
	movl	-36(%ebp), %edx
	popl	%ecx
	pushl	8(%ebp)
	pushl	%edx
	call	net_buf_simple_add
.LVL50:
	.loc 1 4614 0
	leal	2(%esi), %eax
	movl	8(%ebp), %ecx
	movl	-32(%ebp), %esi
.LVL51:
	movl	%eax, %edi
	rep movsb
.LVL52:
.LBB61:
.LBB62:
	.loc 1 3781 0
	pushl	$0
	pushl	%ebx
	pushl	$4
	pushl	-28(%ebp)
	call	bt_l2cap_send_cb
.LVL53:
	addl	$32, %esp
.LBE62:
.LBE61:
	.loc 1 4616 0
	xorl	%eax, %eax
	jmp	.L43
.LVL54:
.L44:
	.loc 1 4608 0
	movl	$-12, %eax
.LVL55:
.L43:
	.loc 1 4617 0
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
.LFE105:
	.size	gatt_notify, .-gatt_notify
	.section	.text.unlikely.gatt_notify
.LCOLDE6:
	.section	.text.gatt_notify
.LHOTE6:
	.section	.text.unlikely.gatt_indicate,"ax",@progbits
.LCOLDB7:
	.section	.text.gatt_indicate,"ax",@progbits
.LHOTB7:
	.type	gatt_indicate, @function
gatt_indicate:
.LFB108:
	.loc 1 4646 0
	.cfi_startproc
.LVL56:
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
	movl	%edx, %ebx
	subl	$32, %esp
	.loc 1 4646 0
	movl	%eax, -28(%ebp)
	.loc 1 4649 0
	movzwl	36(%edx), %eax
.LVL57:
	addl	$2, %eax
	pushl	%eax
	pushl	$29
	pushl	-28(%ebp)
	call	bt_att_create_pdu
.LVL58:
	.loc 1 4651 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L48
	.loc 1 4656 0
	leal	8(%eax), %edi
	movl	%eax, -32(%ebp)
.LVL59:
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	%edi
	call	net_buf_simple_add
.LVL60:
	movl	%eax, %esi
.LVL61:
	.loc 1 4657 0
	movl	24(%ebx), %eax
.LVL62:
	movl	16(%eax), %eax
	movw	%ax, (%esi)
	.loc 1 4658 0
	movzwl	36(%ebx), %eax
	popl	%edx
	popl	%ecx
	pushl	%eax
	pushl	%edi
	call	net_buf_simple_add
.LVL63:
	.loc 1 4659 0
	leal	2(%esi), %eax
	movzwl	36(%ebx), %ecx
	movl	32(%ebx), %esi
.LVL64:
.LBB66:
.LBB67:
.LBB68:
	.loc 1 4631 0
	movl	-32(%ebp), %edx
.LBE68:
.LBE67:
.LBE66:
	.loc 1 4659 0
	movl	%eax, %edi
	rep movsb
.LVL65:
.LBB71:
.LBB70:
.LBB69:
	.loc 1 4631 0
	movl	%edx, 16(%ebx)
	.loc 1 4632 0
	movl	$gatt_indicate_rsp, 4(%ebx)
	.loc 1 4633 0
	movl	$0, 8(%ebx)
	.loc 1 4634 0
	popl	%esi
	popl	%edi
	pushl	%ebx
	pushl	-28(%ebp)
	call	bt_att_req_send
.LVL66:
	movl	%eax, %ebx
.LVL67:
.LBE69:
	.loc 1 4638 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL68:
	testl	%ebx, %ebx
	movl	-32(%ebp), %edx
	je	.L47
	.loc 1 4640 0
	subl	$12, %esp
	pushl	%edx
	call	net_buf_unref
.LVL69:
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L47
.LVL70:
.L48:
.LBE70:
.LBE71:
	.loc 1 4653 0
	movl	$-12, %eax
.LVL71:
.L47:
	.loc 1 4663 0
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
.LVL72:
	ret
	.cfi_endproc
.LFE108:
	.size	gatt_indicate, .-gatt_indicate
	.section	.text.unlikely.gatt_indicate
.LCOLDE7:
	.section	.text.gatt_indicate
.LHOTE7:
	.section	.text.unlikely.gatt_register,"ax",@progbits
.LCOLDB8:
	.section	.text.gatt_register,"ax",@progbits
.LHOTB8:
	.type	gatt_register, @function
gatt_register:
.LFB83:
	.loc 1 4148 0
	.cfi_startproc
.LVL73:
	.loc 1 4153 0
	cmpl	$0, db
	.loc 1 4148 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4151 0
	movl	(%eax), %edx
.LVL74:
	.loc 1 4152 0
	movl	4(%eax), %ebx
.LVL75:
	.loc 1 4153 0
	je	.L62
	movl	db+4, %esi
.LVL76:
	.loc 1 4163 0
	testl	%esi, %esi
	je	.L54
.LVL77:
	.loc 1 4166 0 discriminator 1
	movzwl	-4(%esi), %ecx
	imull	$20, %ecx, %ecx
	addl	-8(%esi), %ecx
	movl	-4(%ecx), %esi
.LVL78:
	jmp	.L55
.LVL79:
.L62:
	.loc 1 4154 0
	xorl	%esi, %esi
	jmp	.L55
.LVL80:
.L70:
	.loc 1 4168 0 discriminator 1
	testw	%bx, %bx
	je	.L64
	.loc 1 4169 0
	movw	16(%edx), %cx
	testw	%cx, %cx
	jne	.L56
	.loc 1 4170 0
	leal	1(%esi), %ecx
.LVL81:
	movw	%cx, 16(%edx)
.LVL82:
.L57:
	.loc 1 4168 0
	addl	$20, %edx
.LVL83:
	decl	%ebx
.LVL84:
	movl	%ecx, %esi
.LVL85:
.L55:
	.loc 1 4168 0 is_stmt 0 discriminator 1
	testl	%edx, %edx
	jne	.L70
	jmp	.L64
.L56:
	.loc 1 4171 0 is_stmt 1
	cmpw	%cx, %si
	jb	.L57
	jmp	.L63
.L64:
	.loc 1 4179 0
	leal	8(%eax), %edx
.LVL86:
.LBB74:
.LBB75:
	.loc 1 116 0
	movl	$0, 8(%eax)
	.loc 1 119 0
	movl	db+4, %eax
.LVL87:
	testl	%eax, %eax
	jne	.L61
	.loc 1 120 0
	movl	%edx, db+4
	.loc 1 121 0
	movl	%edx, db
	jmp	.L68
.L61:
	.loc 1 123 0
	movl	%edx, (%eax)
	.loc 1 124 0
	movl	%edx, db+4
.LBE75:
.LBE74:
	.loc 1 4180 0
	xorl	%eax, %eax
	jmp	.L68
.LVL88:
.L63:
	.loc 1 4175 0
	movl	$-22, %eax
.LVL89:
	jmp	.L68
.LVL90:
.L54:
	.loc 1 4166 0
	movl	0, %eax
.LVL91:
	ud2
.LVL92:
.L68:
	.loc 1 4181 0
	popl	%ebx
	.cfi_restore 3
.LVL93:
	popl	%esi
	.cfi_restore 6
.LVL94:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	gatt_register, .-gatt_register
	.section	.text.unlikely.gatt_register
.LCOLDE8:
	.section	.text.gatt_register
.LHOTE8:
	.section	.text.unlikely.sc_indicate.constprop.16,"ax",@progbits
.LCOLDB9:
	.section	.text.sc_indicate.constprop.16,"ax",@progbits
.LHOTB9:
	.type	sc_indicate.constprop.16, @function
sc_indicate.constprop.16:
.LFB129:
	.loc 1 4259 0
	.cfi_startproc
.LVL95:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4259 0
	movl	%edx, %ebx
.LVL96:
.LBB82:
.LBB83:
	.loc 1 864 0
	pushl	%edx
	pushl	%edx
	pushl	$1
	pushl	$gatt_sc+80
.LVL97:
.LBE83:
.LBE82:
	.loc 1 4259 0
	movl	%eax, %esi
.LBB85:
.LBB84:
	.loc 1 864 0
	call	atomic_or
.LVL98:
.LBE84:
.LBE85:
	.loc 1 4261 0
	addl	$16, %esp
	testb	$1, %al
	jne	.L72
	.loc 1 4262 0
	movw	%si, gatt_sc+40
	jmp	.L80
.L72:
.LVL99:
.LBB86:
.LBB87:
	.loc 1 4244 0
	cmpw	gatt_sc+40, %si
	jb	.L74
	cmpw	gatt_sc+42, %bx
	ja	.L75
	jmp	.L71
.L74:
	.loc 1 4250 0
	movw	%si, gatt_sc+40
.L75:
	.loc 1 4252 0
	cmpw	gatt_sc+42, %bx
	jbe	.L73
.LVL100:
.L80:
	.loc 1 4253 0
	movw	%bx, gatt_sc+42
.L73:
.LVL101:
.LBE87:
.LBE86:
.LBB88:
.LBB89:
	.loc 1 850 0
	subl	$12, %esp
	pushl	$gatt_sc+80
.LVL102:
	call	atomic_get
.LVL103:
.LBE89:
.LBE88:
	.loc 1 4270 0
	addl	$16, %esp
	testb	$2, %al
	jne	.L71
	.loc 1 4274 0
	pushl	%eax
	pushl	%eax
	pushl	$10
	pushl	$gatt_sc+44
	call	k_delayed_work_submit
.LVL104:
	addl	$16, %esp
.L71:
	.loc 1 4275 0
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
.LFE129:
	.size	sc_indicate.constprop.16, .-sc_indicate.constprop.16
	.section	.text.unlikely.sc_indicate.constprop.16
.LCOLDE9:
	.section	.text.sc_indicate.constprop.16
.LHOTE9:
	.section	.text.unlikely.connected_cb,"ax",@progbits
.LCOLDB10:
	.section	.text.connected_cb,"ax",@progbits
.LHOTB10:
	.type	connected_cb, @function
connected_cb:
.LFB115:
	.loc 1 4778 0
	.cfi_startproc
.LVL105:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL106:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4782 0
	movl	8(%ebp), %eax
	cmpl	$bt_gatt_attr_write_ccc, 8(%eax)
	jne	.L83
.LVL107:
.LBB94:
.LBB95:
	.loc 1 4785 0
	movl	12(%eax), %edi
.LVL108:
	.loc 1 4786 0
	xorl	%esi, %esi
.LVL109:
.L84:
	cmpl	4(%edi), %esi
	jnb	.L83
	.loc 1 4787 0
	pushl	%eax
	pushl	%eax
	movl	%esi, %ebx
	movl	(%edi), %eax
	sall	$4, %ebx
	addl	%ebx, %eax
	incl	%eax
	pushl	%eax
	pushl	12(%ebp)
	call	bt_conn_addr_le_cmp
.LVL110:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L85
	.loc 1 4790 0
	movl	(%edi), %eax
	cmpw	$0, 8(%eax,%ebx)
	je	.L85
	.loc 1 4791 0
	movl	8(%ebp), %eax
	movl	%edi, %edx
	call	gatt_ccc_changed
.LVL111:
	.loc 1 4792 0
	cmpl	$sc_ccc_cfg, (%edi)
	jne	.L83
	.loc 1 4793 0
	addl	$sc_ccc_cfg, %ebx
.LVL112:
.LBB96:
.LBB97:
	.loc 1 4770 0
	movzwl	12(%ebx), %eax
	testw	%ax, %ax
	jne	.L87
	cmpw	$0, 14(%ebx)
	je	.L83
.L87:
	.loc 1 4774 0
	movzwl	14(%ebx), %edx
	call	sc_indicate.constprop.16
.LVL113:
	.loc 1 4775 0
	movl	$0, 12(%ebx)
	jmp	.L83
.LVL114:
.L85:
.LBE97:
.LBE96:
	.loc 1 4786 0
	incl	%esi
.LVL115:
	jmp	.L84
.LVL116:
.L83:
.LBE95:
.LBE94:
	.loc 1 4799 0
	leal	-12(%ebp), %esp
	movb	$1, %al
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
	.size	connected_cb, .-connected_cb
	.section	.text.unlikely.connected_cb
.LCOLDE10:
	.section	.text.connected_cb
.LHOTE10:
	.section	.text.unlikely.sc_indicate_rsp,"ax",@progbits
.LCOLDB11:
	.section	.text.sc_indicate_rsp,"ax",@progbits
.LHOTB11:
	.type	sc_indicate_rsp, @function
sc_indicate_rsp:
.LFB84:
	.loc 1 4196 0
	.cfi_startproc
.LVL117:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
.LBB106:
.LBB107:
	.loc 1 870 0
	pushl	$-3
	pushl	$gatt_sc+80
.LVL118:
	call	atomic_and
.LVL119:
.LBE107:
.LBE106:
.LBB108:
.LBB109:
	.loc 1 850 0
	movl	$gatt_sc+80, (%esp)
.LVL120:
	call	atomic_get
.LVL121:
.LBE109:
.LBE108:
	.loc 1 4199 0
	addl	$16, %esp
	testb	$1, %al
	je	.L90
.LVL122:
.LBB110:
.LBB111:
	.loc 1 4200 0
	movl	$0, 12(%ebp)
.LVL123:
	movl	$gatt_sc+44, 8(%ebp)
.LVL124:
.LBE111:
.LBE110:
	.loc 1 4202 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB113:
.LBB112:
	.loc 1 4200 0
	jmp	k_delayed_work_submit
.LVL125:
.L90:
	.cfi_restore_state
.LBE112:
.LBE113:
	.loc 1 4202 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE84:
	.size	sc_indicate_rsp, .-sc_indicate_rsp
	.section	.text.unlikely.sc_indicate_rsp
.LCOLDE11:
	.section	.text.sc_indicate_rsp
.LHOTE11:
	.section	.text.unlikely.disconnected_cb,"ax",@progbits
.LCOLDB12:
	.section	.text.disconnected_cb,"ax",@progbits
.LHOTB12:
	.type	disconnected_cb, @function
disconnected_cb:
.LFB116:
	.loc 1 4801 0
	.cfi_startproc
.LVL126:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL127:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4805 0
	movl	8(%ebp), %eax
	cmpl	$bt_gatt_attr_write_ccc, 8(%eax)
	jne	.L95
.LVL128:
.LBB119:
.LBB120:
	.loc 1 4808 0
	movl	12(%eax), %ebx
.LVL129:
	.loc 1 4809 0
	cmpw	$0, 8(%ebx)
	je	.L95
	.loc 1 4827 0
	movl	12(%ebp), %eax
.LVL130:
	.loc 1 4809 0
	movl	$0, -28(%ebp)
	.loc 1 4827 0
	addl	$64, %eax
	movl	%eax, -32(%ebp)
.L97:
.LVL131:
	.loc 1 4812 0
	movl	-28(%ebp), %eax
	cmpl	4(%ebx), %eax
	jnb	.L113
	movl	-28(%ebp), %esi
	.loc 1 4813 0
	movl	(%ebx), %eax
	sall	$4, %esi
	addl	%esi, %eax
	cmpw	$0, 8(%eax)
	je	.L99
	.loc 1 4816 0
	incl	%eax
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	12(%ebp)
	call	bt_conn_addr_le_cmp
.LVL132:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L100
.LBB121:
	.loc 1 4818 0
	addl	(%ebx), %esi
	subl	$12, %esp
	incl	%esi
	pushl	%esi
	call	bt_conn_lookup_addr_le
.LVL133:
	.loc 1 4819 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L99
	.loc 1 4820 0
	cmpb	$3, 12(%eax)
	jne	.L102
	.loc 1 4821 0
	subl	$12, %esp
	pushl	%eax
	call	bt_conn_unref
.LVL134:
	jmp	.L112
.LVL135:
.L102:
	.loc 1 4824 0
	subl	$12, %esp
	pushl	%eax
	call	bt_conn_unref
.LVL136:
	addl	$16, %esp
	jmp	.L99
.L100:
.LBE121:
	.loc 1 4827 0
	subl	$12, %esp
	pushl	-32(%ebp)
	call	bt_addr_le_is_bonded
.LVL137:
	addl	$16, %esp
	testb	%al, %al
	movl	(%ebx), %eax
	jne	.L103
	.loc 1 4828 0
	movb	$0, (%eax,%esi)
	.loc 1 4831 0
	addl	(%ebx), %esi
	movw	$0, 8(%esi)
	jmp	.L99
.L103:
.LVL138:
.LBB122:
.LBB123:
	.loc 1 1046 0
	leal	1(%eax,%esi), %eax
	movl	$7, %ecx
	movl	-32(%ebp), %esi
.LVL139:
	movl	%eax, %edi
	rep movsb
.LVL140:
.L99:
.LBE123:
.LBE122:
	.loc 1 4812 0
	incl	-28(%ebp)
.LVL141:
	jmp	.L97
.LVL142:
.L113:
	.loc 1 4840 0
	movl	12(%ebx), %eax
.LVL143:
	.loc 1 4839 0
	movw	$0, 8(%ebx)
	.loc 1 4840 0
	testl	%eax, %eax
	je	.L95
	.loc 1 4841 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	8(%ebp)
	call	*%eax
.LVL144:
.L112:
	addl	$16, %esp
.LVL145:
.L95:
.LBE120:
.LBE119:
	.loc 1 4845 0
	leal	-12(%ebp), %esp
	movb	$1, %al
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
	.size	disconnected_cb, .-disconnected_cb
	.section	.text.unlikely.disconnected_cb
.LCOLDE12:
	.section	.text.disconnected_cb
.LHOTE12:
	.section	.text.unlikely.notify_cb,"ax",@progbits
.LCOLDB13:
	.section	.text.notify_cb,"ax",@progbits
.LHOTB13:
	.type	notify_cb, @function
notify_cb:
.LFB110:
	.loc 1 4687 0
	.cfi_startproc
.LVL146:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$52, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4687 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL147:
	.loc 1 4691 0
	leal	-36(%ebp), %eax
	movb	$0, -36(%ebp)
	movw	$10498, -34(%ebp)
	pushl	%eax
	pushl	(%esi)
	call	bt_uuid_cmp
.LVL148:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L115
	.loc 1 4692 0
	pushl	%eax
	pushl	%eax
	leal	-32(%ebp), %eax
	movb	$0, -32(%ebp)
	movw	$10243, -30(%ebp)
	pushl	%eax
	pushl	(%esi)
	call	bt_uuid_cmp
.LVL149:
	.loc 1 4693 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
	jmp	.L116
.L115:
	.loc 1 4697 0
	cmpl	$bt_gatt_attr_write_ccc, 8(%esi)
	je	.L117
.L132:
	.loc 1 4698 0
	movb	$1, %al
	jmp	.L116
.L117:
.LVL150:
.LBB131:
.LBB132:
	.loc 1 4700 0
	movl	12(%esi), %eax
	movl	$sc_ccc_cfg, -44(%ebp)
	.loc 1 4701 0
	movl	$0, -52(%ebp)
	.loc 1 4700 0
	movl	%eax, -48(%ebp)
.LVL151:
.L118:
	.loc 1 4701 0
	movl	-48(%ebp), %eax
	movl	-52(%ebp), %edi
	cmpl	4(%eax), %edi
	jnb	.L132
.LBB133:
	.loc 1 4704 0
	movl	-48(%ebp), %edi
	movl	-52(%ebp), %eax
	sall	$4, %eax
	addl	(%edi), %eax
	movl	4(%ebx), %edi
	cmpw	%di, 8(%eax)
	jne	.L120
	.loc 1 4707 0
	subl	$12, %esp
	incl	%eax
	pushl	%eax
	call	bt_conn_lookup_addr_le
.LVL152:
	.loc 1 4708 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4707 0
	movl	%eax, %esi
.LVL153:
	.loc 1 4708 0
	jne	.L121
	.loc 1 4709 0
	movl	-48(%ebp), %eax
.LVL154:
	cmpl	$sc_ccc_cfg, (%eax)
	jne	.L120
	.loc 1 4710 0
	movl	20(%ebx), %eax
.LVL155:
.LBB134:
.LBB135:
	.loc 1 4673 0
	leal	-32(%ebp), %edi
	movzwl	36(%eax), %ecx
	movl	32(%eax), %esi
.LVL156:
	rep movsb
	.loc 1 4677 0
	movl	-44(%ebp), %edi
	.loc 1 4675 0
	movw	-30(%ebp), %ax
.LVL157:
	.loc 1 4677 0
	movw	12(%edi), %dx
	testw	%dx, %dx
	jne	.L123
	cmpw	$0, 14(%edi)
	jne	.L124
	.loc 1 4678 0
	movl	-32(%ebp), %eax
	movl	%eax, 12(%edi)
	jmp	.L120
.L124:
.LVL158:
.LBB136:
.LBB137:
	.loc 1 4244 0
	movl	-44(%ebp), %ecx
	cmpw	14(%ecx), %ax
	ja	.L126
	jmp	.L120
.LVL159:
.L123:
.LBE137:
.LBE136:
	.loc 1 4674 0
	movl	-32(%ebp), %ecx
.LVL160:
.LBB139:
.LBB138:
	.loc 1 4244 0
	cmpw	%dx, %cx
	jnb	.L124
	.loc 1 4250 0
	movl	-44(%ebp), %edi
	movw	%cx, 12(%edi)
.LVL161:
.L126:
	.loc 1 4252 0
	movl	-44(%ebp), %edx
	cmpw	14(%edx), %ax
	jbe	.L120
.L125:
	.loc 1 4253 0
	movw	%ax, 14(%edx)
	jmp	.L120
.LVL162:
.L121:
.LBE138:
.LBE139:
.LBE135:
.LBE134:
	.loc 1 4714 0
	cmpb	$3, 12(%eax)
	je	.L128
	.loc 1 4715 0
	subl	$12, %esp
	pushl	%eax
	call	bt_conn_unref
.LVL163:
	addl	$16, %esp
	jmp	.L120
.LVL164:
.L128:
	.loc 1 4718 0
	cmpw	$2, 4(%ebx)
	jne	.L129
	.loc 1 4719 0
	movl	20(%ebx), %edx
	call	gatt_indicate
.LVL165:
	jmp	.L130
.LVL166:
.L129:
	.loc 1 4721 0
	movl	8(%ebx), %eax
.LVL167:
	subl	$12, %esp
	movl	12(%ebx), %ecx
	movzwl	16(%eax), %edx
	movzwl	16(%ebx), %eax
	pushl	%eax
	movl	%esi, %eax
	call	gatt_notify
.LVL168:
	addl	$16, %esp
.L130:
	.loc 1 4724 0
	subl	$12, %esp
	movl	%eax, -56(%ebp)
.LVL169:
	pushl	%esi
	call	bt_conn_unref
.LVL170:
	.loc 1 4725 0
	movl	-56(%ebp), %eax
	addl	$16, %esp
	testl	%eax, %eax
	js	.L135
	.loc 1 4728 0
	movl	$0, (%ebx)
.LVL171:
.L120:
.LBE133:
	.loc 1 4701 0
	incl	-52(%ebp)
.LVL172:
	addl	$16, -44(%ebp)
	jmp	.L118
.LVL173:
.L135:
.LBB140:
	.loc 1 4726 0
	xorl	%eax, %eax
.LVL174:
.L116:
.LBE140:
.LBE132:
.LBE131:
	.loc 1 4731 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
.LVL175:
	je	.L134
	call	__stack_chk_fail
.LVL176:
.L134:
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
.LFE110:
	.size	notify_cb, .-notify_cb
	.section	.text.unlikely.notify_cb
.LCOLDE13:
	.section	.text.notify_cb
.LHOTE13:
	.section	.text.unlikely.bt_gatt_init,"ax",@progbits
.LCOLDB14:
	.section	.text.bt_gatt_init,"ax",@progbits
.LHOTB14:
	.globl	bt_gatt_init
	.type	bt_gatt_init, @function
bt_gatt_init:
.LFB86:
	.loc 1 4233 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4234 0
	movl	$gap_svc, %eax
	.loc 1 4233 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4234 0
	call	gatt_register
.LVL177:
	.loc 1 4235 0
	movl	$gatt_svc, %eax
	call	gatt_register
.LVL178:
	.loc 1 4236 0
	pushl	%edx
	pushl	%edx
	pushl	$sc_process
	pushl	$gatt_sc+44
	call	k_delayed_work_init
.LVL179:
	.loc 1 4237 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE86:
	.size	bt_gatt_init, .-bt_gatt_init
	.section	.text.unlikely.bt_gatt_init
.LCOLDE14:
	.section	.text.bt_gatt_init
.LHOTE14:
	.section	.text.unlikely.bt_gatt_service_register,"ax",@progbits
.LCOLDB15:
	.section	.text.bt_gatt_service_register,"ax",@progbits
.LHOTB15:
	.globl	bt_gatt_service_register
	.type	bt_gatt_service_register, @function
bt_gatt_service_register:
.LFB89:
	.loc 1 4277 0
	.cfi_startproc
.LVL180:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 3, -12
	.loc 1 4277 0
	movl	8(%ebp), %ebx
	.loc 1 4282 0
	movb	$0, -20(%ebp)
	.loc 1 4277 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4282 0
	leal	-20(%ebp), %eax
	movw	$6144, -18(%ebp)
	pushl	%eax
	movl	(%ebx), %eax
	pushl	(%eax)
	call	bt_uuid_cmp
.LVL181:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L142
.L144:
	.loc 1 4284 0
	movl	$-69, %edx
	jmp	.L143
.L142:
	.loc 1 4283 0 discriminator 1
	pushl	%eax
	pushl	%eax
	leal	-16(%ebp), %eax
	movb	$0, -16(%ebp)
	movw	$6145, -14(%ebp)
	pushl	%eax
	movl	(%ebx), %eax
	pushl	(%eax)
	call	bt_uuid_cmp
.LVL182:
	.loc 1 4282 0 discriminator 1
	addl	$16, %esp
	testl	%eax, %eax
	je	.L144
	.loc 1 4286 0
	movl	%ebx, %eax
	call	gatt_register
.LVL183:
	.loc 1 4287 0
	testl	%eax, %eax
	movl	%eax, %edx
	js	.L143
	.loc 1 4291 0
	movzwl	4(%ebx), %eax
.LVL184:
	movl	(%ebx), %ecx
	imull	$20, %eax, %eax
	.loc 1 4290 0
	movzwl	-4(%ecx,%eax), %edx
.LVL185:
	movzwl	16(%ecx), %eax
	call	sc_indicate.constprop.16
.LVL186:
	.loc 1 4292 0
	xorl	%edx, %edx
.L143:
	.loc 1 4293 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L145
	call	__stack_chk_fail
.LVL187:
.L145:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE89:
	.size	bt_gatt_service_register, .-bt_gatt_service_register
	.section	.text.unlikely.bt_gatt_service_register
.LCOLDE15:
	.section	.text.bt_gatt_service_register
.LHOTE15:
	.section	.text.unlikely.bt_gatt_service_unregister,"ax",@progbits
.LCOLDB16:
	.section	.text.bt_gatt_service_unregister,"ax",@progbits
.LHOTB16:
	.globl	bt_gatt_service_unregister
	.type	bt_gatt_service_unregister, @function
bt_gatt_service_unregister:
.LFB90:
	.loc 1 4295 0
	.cfi_startproc
.LVL188:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 4295 0
	movl	8(%ebp), %edx
	movl	db, %eax
.LBB149:
.LBB150:
	.loc 1 197 0
	xorl	%ecx, %ecx
.LBE150:
.LBE149:
	.loc 1 4297 0
	leal	8(%edx), %ebx
.LVL189:
.L152:
.LBB161:
.LBB158:
	.loc 1 201 0
	testl	%eax, %eax
	je	.L161
	.loc 1 202 0
	cmpl	%eax, %ebx
	jne	.L153
.LVL190:
.LBB151:
.LBB152:
	.loc 1 177 0
	testl	%ecx, %ecx
	movl	8(%edx), %eax
.LVL191:
	jne	.L154
	.loc 1 179 0
	cmpl	db+4, %ebx
	.loc 1 178 0
	movl	%eax, db
	.loc 1 179 0
	jne	.L156
	.loc 1 180 0
	movl	%eax, db+4
	jmp	.L156
.L154:
	.loc 1 184 0
	cmpl	db+4, %ebx
	.loc 1 183 0
	movl	%eax, (%ecx)
	.loc 1 184 0
	jne	.L156
	.loc 1 185 0
	movl	%ecx, db+4
.L156:
.LBE152:
.LBE151:
.LBE158:
.LBE161:
	.loc 1 4301 0
	movzwl	4(%edx), %eax
	movl	(%edx), %ecx
.LVL192:
.LBB162:
.LBB159:
.LBB154:
.LBB153:
	.loc 1 188 0
	movl	$0, 8(%edx)
.LVL193:
.LBE153:
.LBE154:
.LBE159:
.LBE162:
	.loc 1 4301 0
	imull	$20, %eax, %eax
	.loc 1 4300 0
	movzwl	-4(%ecx,%eax), %edx
	movzwl	16(%ecx), %eax
	call	sc_indicate.constprop.16
.LVL194:
	.loc 1 4302 0
	xorl	%eax, %eax
	jmp	.L158
.LVL195:
.L153:
.LBB163:
.LBB160:
.LBB155:
.LBB156:
.LBB157:
	.loc 1 96 0
	movl	%eax, %ecx
	movl	(%eax), %eax
.LVL196:
	jmp	.L152
.LVL197:
.L161:
.LBE157:
.LBE156:
.LBE155:
.LBE160:
.LBE163:
	.loc 1 4298 0
	movl	$-2, %eax
.LVL198:
.L158:
	.loc 1 4303 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE90:
	.size	bt_gatt_service_unregister, .-bt_gatt_service_unregister
	.section	.text.unlikely.bt_gatt_service_unregister
.LCOLDE16:
	.section	.text.bt_gatt_service_unregister
.LHOTE16:
	.section	.text.unlikely.bt_gatt_attr_read,"ax",@progbits
.LCOLDB17:
	.section	.text.bt_gatt_attr_read,"ax",@progbits
.LHOTB17:
	.globl	bt_gatt_attr_read
	.type	bt_gatt_attr_read, @function
bt_gatt_attr_read:
.LFB91:
	.loc 1 4307 0
	.cfi_startproc
.LVL199:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-7, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 4307 0
	movl	32(%ebp), %edx
	movl	24(%ebp), %esi
	movl	20(%ebp), %ecx
	.loc 1 4309 0
	cmpw	%dx, %si
	ja	.L163
.LVL200:
	movzwl	%dx, %eax
	movzwl	%si, %esi
	movzwl	%cx, %edx
.LVL201:
	subl	%esi, %eax
.LVL202:
	.loc 1 4314 0
	movl	16(%ebp), %edi
	cmpl	%edx, %eax
	cmovg	%edx, %eax
	addl	28(%ebp), %esi
.LVL203:
	movzwl	%ax, %eax
	movl	%eax, %ecx
.LVL204:
	rep movsb
.LVL205:
.L163:
	.loc 1 4316 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE91:
	.size	bt_gatt_attr_read, .-bt_gatt_attr_read
	.section	.text.unlikely.bt_gatt_attr_read
.LCOLDE17:
	.section	.text.bt_gatt_attr_read
.LHOTE17:
	.section	.text.unlikely.read_appearance,"ax",@progbits
.LCOLDB18:
	.section	.text.read_appearance,"ax",@progbits
.LHOTB18:
	.type	read_appearance, @function
read_appearance:
.LFB81:
	.loc 1 4104 0
	.cfi_startproc
.LVL206:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 4104 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4106 0
	leal	-14(%ebp), %eax
	pushl	$2
	.loc 1 4105 0
	movw	$833, -14(%ebp)
	.loc 1 4106 0
	pushl	%eax
	movzwl	24(%ebp), %eax
	pushl	%eax
	movzwl	20(%ebp), %eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	bt_gatt_attr_read
.LVL207:
	.loc 1 4108 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L168
	call	__stack_chk_fail
.LVL208:
.L168:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	read_appearance, .-read_appearance
	.section	.text.unlikely.read_appearance
.LCOLDE18:
	.section	.text.read_appearance
.LHOTE18:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC19:
	.string	"AOS Device"
	.section	.text.unlikely.read_name,"ax",@progbits
.LCOLDB20:
	.section	.text.read_name,"ax",@progbits
.LHOTB20:
	.type	read_name, @function
read_name:
.LFB80:
	.loc 1 4097 0
	.cfi_startproc
.LVL209:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4098 0
	pushl	$10
	pushl	$.LC19
	movzwl	24(%ebp), %eax
	pushl	%eax
	movzwl	20(%ebp), %eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	bt_gatt_attr_read
.LVL210:
	.loc 1 4100 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	read_name, .-read_name
	.section	.text.unlikely.read_name
.LCOLDE20:
	.section	.text.read_name
.LHOTE20:
	.section	.text.unlikely.bt_gatt_attr_read_service,"ax",@progbits
.LCOLDB21:
	.section	.text.bt_gatt_attr_read_service,"ax",@progbits
.LHOTB21:
	.globl	bt_gatt_attr_read_service
	.type	bt_gatt_attr_read_service, @function
bt_gatt_attr_read_service:
.LFB92:
	.loc 1 4320 0
	.cfi_startproc
.LVL211:
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
	.loc 1 4320 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	movl	16(%ebp), %ebx
	movzwl	24(%ebp), %edi
	.loc 1 4321 0
	movl	12(%edx), %eax
.LVL212:
	movzwl	20(%ebp), %esi
	.loc 1 4322 0
	cmpb	$0, (%eax)
	jne	.L173
.LBB164:
	.loc 1 4323 0
	movw	2(%eax), %ax
.LVL213:
	.loc 1 4330 0
	pushl	$2
	.loc 1 4323 0
	movw	%ax, -30(%ebp)
	.loc 1 4330 0
	leal	-30(%ebp), %eax
	jmp	.L177
.LVL214:
.L173:
.LBE164:
	.loc 1 4333 0
	pushl	$16
	.loc 1 4334 0
	incl	%eax
.LVL215:
.L177:
	.loc 1 4333 0
	pushl	%eax
.LVL216:
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	pushl	%edx
	pushl	%ecx
	call	bt_gatt_attr_read
.LVL217:
	addl	$28, %esp
	.loc 1 4341 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L175
	call	__stack_chk_fail
.LVL218:
.L175:
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
.LFE92:
	.size	bt_gatt_attr_read_service, .-bt_gatt_attr_read_service
	.section	.text.unlikely.bt_gatt_attr_read_service
.LCOLDE21:
	.section	.text.bt_gatt_attr_read_service
.LHOTE21:
	.section	.text.unlikely.bt_gatt_attr_read_ccc,"ax",@progbits
.LCOLDB22:
	.section	.text.bt_gatt_attr_read_ccc,"ax",@progbits
.LHOTB22:
	.globl	bt_gatt_attr_read_ccc
	.type	bt_gatt_attr_read_ccc, @function
bt_gatt_attr_read_ccc:
.LFB99:
	.loc 1 4486 0
	.cfi_startproc
.LVL219:
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
	.loc 1 4490 0
	xorl	%ebx, %ebx
	.loc 1 4486 0
	subl	$60, %esp
	.loc 1 4486 0
	movl	16(%ebp), %eax
	movl	12(%ebp), %edx
	movl	8(%ebp), %edi
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	.loc 1 4487 0
	movl	12(%edx), %esi
.LVL220:
	.loc 1 4486 0
	movl	%eax, -48(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -52(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL221:
.L179:
	.loc 1 4490 0 discriminator 1
	cmpl	4(%esi), %ebx
	jnb	.L181
	movl	%ebx, %ecx
	movl	%edx, -60(%ebp)
	.loc 1 4491 0
	pushl	%edx
	sall	$4, %ecx
	pushl	%edx
	movl	%ecx, %eax
	addl	(%esi), %eax
	movl	%ecx, -56(%ebp)
	incl	%eax
	pushl	%eax
	pushl	%edi
	call	bt_conn_addr_le_cmp
.LVL222:
	addl	$16, %esp
	testl	%eax, %eax
	movl	-56(%ebp), %ecx
	movl	-60(%ebp), %edx
	je	.L180
	.loc 1 4490 0
	incl	%ebx
.LVL223:
	jmp	.L179
.L180:
	.loc 1 4494 0
	movl	(%esi), %eax
	movl	8(%eax,%ecx), %eax
	movw	%ax, -30(%ebp)
.L181:
	.loc 1 4497 0
	cmpl	4(%esi), %ebx
	jne	.L183
	.loc 1 4498 0
	movw	$0, -30(%ebp)
.L183:
	.loc 1 4500 0
	pushl	%eax
	leal	-30(%ebp), %eax
	pushl	$2
	pushl	%eax
	movzwl	-52(%ebp), %eax
	pushl	%eax
	movzwl	-48(%ebp), %eax
	pushl	%eax
	pushl	-44(%ebp)
	pushl	%edx
	pushl	%edi
	call	bt_gatt_attr_read
.LVL224:
	.loc 1 4502 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L184
	call	__stack_chk_fail
.LVL225:
.L184:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL226:
	popl	%esi
	.cfi_restore 6
.LVL227:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE99:
	.size	bt_gatt_attr_read_ccc, .-bt_gatt_attr_read_ccc
	.section	.text.unlikely.bt_gatt_attr_read_ccc
.LCOLDE22:
	.section	.text.bt_gatt_attr_read_ccc
.LHOTE22:
	.section	.text.unlikely.bt_gatt_foreach_attr,"ax",@progbits
.LCOLDB23:
	.section	.text.bt_gatt_foreach_attr,"ax",@progbits
.LHOTB23:
	.globl	bt_gatt_foreach_attr
	.type	bt_gatt_foreach_attr, @function
bt_gatt_foreach_attr:
.LFB96:
	.loc 1 4434 0
	.cfi_startproc
.LVL228:
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
	.loc 1 4434 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edi
	movw	%ax, -26(%ebp)
	movl	db, %eax
.LVL229:
	.loc 1 4442 0
	testl	%eax, %eax
	leal	-8(%eax), %ebx
	je	.L186
.L201:
.LVL230:
	.loc 1 4436 0 discriminator 1
	testl	%ebx, %ebx
	je	.L186
	xorl	%esi, %esi
.L191:
.LVL231:
.LBB165:
	.loc 1 4456 0 discriminator 1
	movzwl	4(%ebx), %eax
	cmpl	%eax, %esi
	jge	.L206
.LBB166:
	.loc 1 4457 0
	imull	$20, %esi, %eax
	addl	(%ebx), %eax
.LVL232:
	.loc 1 4458 0
	movl	16(%eax), %ecx
	cmpw	-26(%ebp), %cx
	jb	.L193
	cmpw	%di, %cx
	jbe	.L189
.LVL233:
.L193:
.LBE166:
	.loc 1 4456 0
	incl	%esi
.LVL234:
	jmp	.L191
.LVL235:
.L189:
.LBB167:
	.loc 1 4462 0
	pushl	%edx
	pushl	%edx
	pushl	20(%ebp)
	pushl	%eax
	call	*16(%ebp)
.LVL236:
	addl	$16, %esp
	testb	%al, %al
	jne	.L193
	jmp	.L186
.L206:
.LVL237:
.LBE167:
.LBE165:
.LBB168:
.LBB169:
.LBB170:
	.loc 1 96 0
	movl	8(%ebx), %eax
.LVL238:
.LBE170:
.LBE169:
.LBE168:
	.loc 1 4450 0
	leal	-8(%eax), %ebx
.LVL239:
	testl	%eax, %eax
	movl	$0, %eax
	cmove	%eax, %ebx
	jmp	.L201
.LVL240:
.L186:
	.loc 1 4467 0
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
.LFE96:
	.size	bt_gatt_foreach_attr, .-bt_gatt_foreach_attr
	.section	.text.unlikely.bt_gatt_foreach_attr
.LCOLDE23:
	.section	.text.bt_gatt_foreach_attr
.LHOTE23:
	.section	.text.unlikely.bt_gatt_attr_read_included,"ax",@progbits
.LCOLDB24:
	.section	.text.bt_gatt_attr_read_included,"ax",@progbits
.LHOTB24:
	.globl	bt_gatt_attr_read_included
	.type	bt_gatt_attr_read_included, @function
bt_gatt_attr_read_included:
.LFB94:
	.loc 1 4363 0
	.cfi_startproc
.LVL241:
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
	movl	$4, %ebx
	subl	$44, %esp
	.loc 1 4363 0
	movl	20(%ebp), %eax
	movl	12(%ebp), %esi
	movl	8(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 4364 0
	movl	12(%esi), %eax
.LVL242:
	.loc 1 4365 0
	movl	12(%eax), %edi
.LVL243:
	.loc 1 4368 0
	movl	16(%eax), %eax
.LVL244:
	movw	%ax, -34(%ebp)
.LVL245:
	.loc 1 4370 0
	cmpb	$0, (%edi)
	jne	.L208
	.loc 1 4371 0
	movw	2(%edi), %bx
	movw	%bx, -30(%ebp)
.LVL246:
	.loc 1 4378 0
	movl	$6, %ebx
.LVL247:
.L208:
	.loc 1 4380 0
	leal	-34(%ebp), %edi
.LVL248:
	incl	%eax
	movl	%ecx, -56(%ebp)
	movzwl	%ax, %eax
	movl	%edx, -52(%ebp)
.LVL249:
	pushl	%edi
.LVL250:
	pushl	$get_service_handles
	pushl	$65535
	pushl	%eax
	call	bt_gatt_foreach_attr
.LVL251:
	.loc 1 4382 0
	movzwl	-48(%ebp), %eax
	addl	$12, %esp
	movl	-56(%ebp), %ecx
	pushl	%ebx
	pushl	%edi
	movl	-52(%ebp), %edx
	pushl	%eax
	movzwl	-44(%ebp), %eax
	pushl	%eax
	pushl	%ecx
	pushl	%esi
	pushl	%edx
	call	bt_gatt_attr_read
.LVL252:
	.loc 1 4383 0
	movl	-28(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L209
	call	__stack_chk_fail
.LVL253:
.L209:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL254:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE94:
	.size	bt_gatt_attr_read_included, .-bt_gatt_attr_read_included
	.section	.text.unlikely.bt_gatt_attr_read_included
.LCOLDE24:
	.section	.text.bt_gatt_attr_read_included
.LHOTE24:
	.section	.text.unlikely.bt_gatt_indicate.part.8,"ax",@progbits
.LCOLDB25:
	.section	.text.bt_gatt_indicate.part.8,"ax",@progbits
.LHOTB25:
	.type	bt_gatt_indicate.part.8, @function
bt_gatt_indicate.part.8:
.LFB127:
	.loc 1 4748 0
	.cfi_startproc
.LVL255:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	.loc 1 4760 0
	leal	-36(%ebp), %edx
	.loc 1 4759 0
	movl	%eax, -16(%ebp)
	.loc 1 4757 0
	movl	$-57, -36(%ebp)
	.loc 1 4748 0
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LVL256:
	.loc 1 4760 0
	pushl	%edx
	pushl	$notify_cb
	movl	24(%eax), %eax
.LVL257:
	pushl	$65535
	.loc 1 4758 0
	movw	$2, -32(%ebp)
	.loc 1 4760 0
	movzwl	16(%eax), %eax
	pushl	%eax
	call	bt_gatt_foreach_attr
.LVL258:
	.loc 1 4762 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	-36(%ebp), %eax
	je	.L214
	call	__stack_chk_fail
.LVL259:
.L214:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE127:
	.size	bt_gatt_indicate.part.8, .-bt_gatt_indicate.part.8
	.section	.text.unlikely.bt_gatt_indicate.part.8
.LCOLDE25:
	.section	.text.bt_gatt_indicate.part.8
.LHOTE25:
	.section	.text.unlikely.sc_process,"ax",@progbits
.LCOLDB26:
	.section	.text.sc_process,"ax",@progbits
.LHOTB26:
	.type	sc_process, @function
sc_process:
.LFB85:
	.loc 1 4204 0
	.cfi_startproc
.LVL260:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$36, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4204 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL261:
	.loc 1 4216 0
	movl	-4(%ebx), %eax
	.loc 1 4218 0
	leal	36(%ebx), %esi
.LVL262:
	leal	-44(%ebx), %edi
.LVL263:
	.loc 1 4216 0
	movw	%ax, -32(%ebp)
	.loc 1 4217 0
	movw	-2(%ebx), %ax
.LBB177:
.LBB178:
	.loc 1 870 0
	pushl	$-2
	pushl	%esi
.LBE178:
.LBE177:
	.loc 1 4217 0
	movw	%ax, -30(%ebp)
.LBB180:
.LBB179:
	.loc 1 870 0
	call	atomic_and
.LVL264:
.LBE179:
.LBE180:
	.loc 1 4223 0
	leal	-32(%ebp), %eax
	.loc 1 4219 0
	movw	$0, -4(%ebx)
	.loc 1 4220 0
	movw	$0, -2(%ebx)
	.loc 1 4221 0
	movl	$gatt_attrs+40, -20(%ebx)
	.loc 1 4222 0
	movl	$sc_indicate_rsp, -16(%ebx)
	.loc 1 4223 0
	movl	%eax, -12(%ebx)
	.loc 1 4224 0
	movw	$4, -8(%ebx)
.LVL265:
.LBB181:
.LBB182:
	movl	%edi, %eax
	call	bt_gatt_indicate.part.8
.LVL266:
.LBE182:
.LBE181:
	.loc 1 4225 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L216
.LVL267:
.LBB183:
.LBB184:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	%esi
	call	atomic_or
.LVL268:
.LBE184:
.LBE183:
	addl	$16, %esp
.L216:
	.loc 1 4231 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L219
	call	__stack_chk_fail
.LVL269:
.L219:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
.LVL270:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	sc_process, .-sc_process
	.section	.text.unlikely.sc_process
.LCOLDE26:
	.section	.text.sc_process
.LHOTE26:
	.section	.text.unlikely.bt_gatt_attr_next,"ax",@progbits
.LCOLDB27:
	.section	.text.bt_gatt_attr_next,"ax",@progbits
.LHOTB27:
	.globl	bt_gatt_attr_next
	.type	bt_gatt_attr_next, @function
bt_gatt_attr_next:
.LFB98:
	.loc 1 4475 0
	.cfi_startproc
.LVL271:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 4475 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 4479 0
	movl	8(%ebp), %eax
	leal	-16(%ebp), %edx
	.loc 1 4476 0
	movl	$0, -16(%ebp)
	.loc 1 4479 0
	movl	16(%eax), %eax
	pushl	%edx
	pushl	$find_next
	incl	%eax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	%eax
	call	bt_gatt_foreach_attr
.LVL272:
	.loc 1 4482 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	-16(%ebp), %eax
	je	.L222
	call	__stack_chk_fail
.LVL273:
.L222:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE98:
	.size	bt_gatt_attr_next, .-bt_gatt_attr_next
	.section	.text.unlikely.bt_gatt_attr_next
.LCOLDE27:
	.section	.text.bt_gatt_attr_next
.LHOTE27:
	.section	.text.unlikely.bt_gatt_attr_read_chrc,"ax",@progbits
.LCOLDB28:
	.section	.text.bt_gatt_attr_read_chrc,"ax",@progbits
.LHOTB28:
	.globl	bt_gatt_attr_read_chrc
	.type	bt_gatt_attr_read_chrc, @function
bt_gatt_attr_read_chrc:
.LFB95:
	.loc 1 4397 0
	.cfi_startproc
.LVL274:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$72, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4397 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	movl	16(%ebp), %esi
	movl	%eax, -60(%ebp)
	movl	20(%ebp), %eax
	.loc 1 4398 0
	movl	12(%ebx), %edi
.LVL275:
	.loc 1 4397 0
	movl	%eax, -64(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 4402 0
	movb	4(%edi), %al
	.loc 1 4403 0
	pushl	%ebx
	.loc 1 4402 0
	movb	%al, -47(%ebp)
	.loc 1 4403 0
	call	bt_gatt_attr_next
.LVL276:
	.loc 1 4404 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L225
	.loc 1 4406 0
	movw	$0, -46(%ebp)
	jmp	.L226
.L225:
	.loc 1 4408 0
	movl	16(%eax), %eax
.LVL277:
	movw	%ax, -46(%ebp)
.L226:
.LVL278:
	.loc 1 4411 0
	movl	(%edi), %eax
	cmpb	$0, (%eax)
	jne	.L227
	.loc 1 4418 0
	movw	2(%eax), %ax
	.loc 1 4412 0
	movw	%ax, -44(%ebp)
.LVL279:
	.loc 1 4419 0
	movl	$5, %eax
	jmp	.L228
.LVL280:
.L227:
	.loc 1 4421 0
	movl	1(%eax), %edi
.LVL281:
	movl	5(%eax), %ecx
	movl	9(%eax), %edx
	movl	13(%eax), %eax
	movl	%edi, -44(%ebp)
	movl	%ecx, -40(%ebp)
	movl	%eax, -32(%ebp)
.LVL282:
	movl	%edx, -36(%ebp)
	.loc 1 4428 0
	movl	$19, %eax
.LVL283:
.L228:
	.loc 1 4430 0
	pushl	%edx
	pushl	%eax
	leal	-47(%ebp), %eax
.LVL284:
	pushl	%eax
	movzwl	-68(%ebp), %eax
	pushl	%eax
	movzwl	-64(%ebp), %eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	pushl	-60(%ebp)
	call	bt_gatt_attr_read
.LVL285:
	.loc 1 4431 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L229
	call	__stack_chk_fail
.LVL286:
.L229:
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
	.size	bt_gatt_attr_read_chrc, .-bt_gatt_attr_read_chrc
	.section	.text.unlikely.bt_gatt_attr_read_chrc
.LCOLDE28:
	.section	.text.bt_gatt_attr_read_chrc
.LHOTE28:
	.section	.text.unlikely.bt_gatt_attr_read_cep,"ax",@progbits
.LCOLDB29:
	.section	.text.bt_gatt_attr_read_cep,"ax",@progbits
.LHOTB29:
	.globl	bt_gatt_attr_read_cep
	.type	bt_gatt_attr_read_cep, @function
bt_gatt_attr_read_cep:
.LFB102:
	.loc 1 4570 0
	.cfi_startproc
.LVL287:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 4570 0
	movl	12(%ebp), %eax
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LVL288:
	.loc 1 4572 0
	movl	12(%eax), %edx
	movw	(%edx), %dx
	.loc 1 4573 0
	pushl	$2
.LVL289:
	.loc 1 4572 0
	movw	%dx, -14(%ebp)
	.loc 1 4573 0
	leal	-14(%ebp), %edx
	pushl	%edx
	movzwl	24(%ebp), %edx
	pushl	%edx
	movzwl	20(%ebp), %edx
	pushl	%edx
	pushl	16(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	call	bt_gatt_attr_read
.LVL290:
	.loc 1 4575 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L232
	call	__stack_chk_fail
.LVL291:
.L232:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE102:
	.size	bt_gatt_attr_read_cep, .-bt_gatt_attr_read_cep
	.section	.text.unlikely.bt_gatt_attr_read_cep
.LCOLDE29:
	.section	.text.bt_gatt_attr_read_cep
.LHOTE29:
	.section	.text.unlikely.bt_gatt_attr_read_cud,"ax",@progbits
.LCOLDB30:
	.section	.text.bt_gatt_attr_read_cud,"ax",@progbits
.LHOTB30:
	.globl	bt_gatt_attr_read_cud
	.type	bt_gatt_attr_read_cud, @function
bt_gatt_attr_read_cud:
.LFB103:
	.loc 1 4579 0
	.cfi_startproc
.LVL292:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4582 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	.loc 1 4579 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 4579 0
	movl	12(%ebp), %edx
.LVL293:
	.loc 1 4582 0
	movl	12(%edx), %edi
	repnz scasb
.LVL294:
	movl	%ecx, %eax
	notl	%eax
	decl	%eax
	.loc 1 4581 0
	movzwl	%ax, %eax
	pushl	%eax
	movzwl	24(%ebp), %eax
	pushl	12(%edx)
	pushl	%eax
	movzwl	20(%ebp), %eax
	pushl	%eax
	pushl	16(%ebp)
	pushl	%edx
	pushl	8(%ebp)
	call	bt_gatt_attr_read
.LVL295:
	.loc 1 4583 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE103:
	.size	bt_gatt_attr_read_cud, .-bt_gatt_attr_read_cud
	.section	.text.unlikely.bt_gatt_attr_read_cud
.LCOLDE30:
	.section	.text.bt_gatt_attr_read_cud
.LHOTE30:
	.section	.text.unlikely.bt_gatt_attr_read_cpf,"ax",@progbits
.LCOLDB31:
	.section	.text.bt_gatt_attr_read_cpf,"ax",@progbits
.LHOTB31:
	.globl	bt_gatt_attr_read_cpf
	.type	bt_gatt_attr_read_cpf, @function
bt_gatt_attr_read_cpf:
.LFB104:
	.loc 1 4587 0
	.cfi_startproc
.LVL296:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4589 0
	pushl	$7
	movzwl	24(%ebp), %edx
	.loc 1 4587 0
	movl	12(%ebp), %eax
	.loc 1 4589 0
	pushl	12(%eax)
	pushl	%edx
	movzwl	20(%ebp), %edx
	pushl	%edx
	pushl	16(%ebp)
	pushl	%eax
	pushl	8(%ebp)
	call	bt_gatt_attr_read
.LVL297:
	.loc 1 4591 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE104:
	.size	bt_gatt_attr_read_cpf, .-bt_gatt_attr_read_cpf
	.section	.text.unlikely.bt_gatt_attr_read_cpf
.LCOLDE31:
	.section	.text.bt_gatt_attr_read_cpf
.LHOTE31:
	.section	.text.unlikely.bt_gatt_notify,"ax",@progbits
.LCOLDB32:
	.section	.text.bt_gatt_notify,"ax",@progbits
.LHOTB32:
	.globl	bt_gatt_notify
	.type	bt_gatt_notify, @function
bt_gatt_notify:
.LFB111:
	.loc 1 4734 0
	.cfi_startproc
.LVL298:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4734 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %esi
	movl	%gs:20, %edx
	movl	%edx, -12(%ebp)
	xorl	%edx, %edx
	movl	16(%ebp), %ecx
	movl	20(%ebp), %ebx
	.loc 1 4737 0
	testl	%eax, %eax
	movzwl	16(%esi), %edx
	je	.L239
	.loc 1 4738 0
	subl	$12, %esp
	movzwl	%bx, %ebx
	pushl	%ebx
	call	gatt_notify
.LVL299:
	jmp	.L243
.L239:
	.loc 1 4745 0
	leal	-36(%ebp), %eax
	.loc 1 4740 0
	movl	$-57, -36(%ebp)
	.loc 1 4741 0
	movl	%esi, -28(%ebp)
	.loc 1 4742 0
	movw	$1, -32(%ebp)
	.loc 1 4743 0
	movl	%ecx, -24(%ebp)
	.loc 1 4745 0
	pushl	%eax
	pushl	$notify_cb
	pushl	$65535
	pushl	%edx
	.loc 1 4744 0
	movw	%bx, -20(%ebp)
	.loc 1 4745 0
	call	bt_gatt_foreach_attr
.LVL300:
	.loc 1 4746 0
	movl	-36(%ebp), %eax
.L243:
	addl	$16, %esp
	.loc 1 4747 0
	movl	-12(%ebp), %esi
	xorl	%gs:20, %esi
	je	.L241
	call	__stack_chk_fail
.LVL301:
.L241:
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
.LFE111:
	.size	bt_gatt_notify, .-bt_gatt_notify
	.section	.text.unlikely.bt_gatt_notify
.LCOLDE32:
	.section	.text.bt_gatt_notify
.LHOTE32:
	.section	.text.unlikely.bt_gatt_indicate,"ax",@progbits
.LCOLDB33:
	.section	.text.bt_gatt_indicate,"ax",@progbits
.LHOTB33:
	.globl	bt_gatt_indicate
	.type	bt_gatt_indicate, @function
bt_gatt_indicate:
.LFB112:
	.loc 1 4750 0
	.cfi_startproc
.LVL302:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4750 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 4754 0
	testl	%eax, %eax
	je	.L245
	.loc 1 4762 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4755 0
	jmp	gatt_indicate
.LVL303:
.L245:
	.cfi_restore_state
	.loc 1 4762 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	%edx, %eax
.LVL304:
	jmp	bt_gatt_indicate.part.8
.LVL305:
	.cfi_endproc
.LFE112:
	.size	bt_gatt_indicate, .-bt_gatt_indicate
	.section	.text.unlikely.bt_gatt_indicate
.LCOLDE33:
	.section	.text.bt_gatt_indicate
.LHOTE33:
	.section	.text.unlikely.bt_gatt_get_mtu,"ax",@progbits
.LCOLDB34:
	.section	.text.bt_gatt_get_mtu,"ax",@progbits
.LHOTB34:
	.globl	bt_gatt_get_mtu
	.type	bt_gatt_get_mtu, @function
bt_gatt_get_mtu:
.LFB113:
	.loc 1 4764 0
	.cfi_startproc
.LVL306:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4766 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4765 0
	jmp	bt_att_get_mtu
.LVL307:
	.cfi_endproc
.LFE113:
	.size	bt_gatt_get_mtu, .-bt_gatt_get_mtu
	.section	.text.unlikely.bt_gatt_get_mtu
.LCOLDE34:
	.section	.text.bt_gatt_get_mtu
.LHOTE34:
	.section	.text.unlikely.bt_gatt_connected,"ax",@progbits
.LCOLDB35:
	.section	.text.bt_gatt_connected,"ax",@progbits
.LHOTB35:
	.globl	bt_gatt_connected
	.type	bt_gatt_connected, @function
bt_gatt_connected:
.LFB117:
	.loc 1 4847 0
	.cfi_startproc
.LVL308:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4849 0
	pushl	8(%ebp)
	pushl	$connected_cb
	pushl	$65535
	pushl	$1
	call	bt_gatt_foreach_attr
.LVL309:
	.loc 1 4850 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE117:
	.size	bt_gatt_connected, .-bt_gatt_connected
	.section	.text.unlikely.bt_gatt_connected
.LCOLDE35:
	.section	.text.bt_gatt_connected
.LHOTE35:
	.section	.text.unlikely.bt_gatt_disconnected,"ax",@progbits
.LCOLDB36:
	.section	.text.bt_gatt_disconnected,"ax",@progbits
.LHOTB36:
	.globl	bt_gatt_disconnected
	.type	bt_gatt_disconnected, @function
bt_gatt_disconnected:
.LFB118:
	.loc 1 4852 0
	.cfi_startproc
.LVL310:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4854 0
	pushl	8(%ebp)
	pushl	$disconnected_cb
	pushl	$65535
	pushl	$1
	call	bt_gatt_foreach_attr
.LVL311:
	.loc 1 4855 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE118:
	.size	bt_gatt_disconnected, .-bt_gatt_disconnected
	.section	.text.unlikely.bt_gatt_disconnected
.LCOLDE36:
	.section	.text.bt_gatt_disconnected
.LHOTE36:
	.section	.bss.gatt_sc,"aw",@nobits
	.align 32
	.type	gatt_sc, @object
	.size	gatt_sc, 84
gatt_sc:
	.zero	84
	.section	.data.gatt_svc,"aw",@progbits
	.align 4
	.type	gatt_svc, @object
	.size	gatt_svc, 12
gatt_svc:
	.long	gatt_attrs
	.value	4
	.zero	6
	.section	.data.gatt_attrs,"aw",@progbits
	.align 32
	.type	gatt_attrs, @object
	.size	gatt_attrs, 80
gatt_attrs:
	.long	__compound_literal.10
	.long	bt_gatt_attr_read_service
	.zero	4
	.long	__compound_literal.11
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.12
	.long	bt_gatt_attr_read_chrc
	.zero	4
	.long	__compound_literal.14
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.15
	.long	0
	.long	0
	.long	0
	.zero	2
	.byte	0
	.zero	1
	.long	__compound_literal.16
	.long	bt_gatt_attr_read_ccc
	.long	bt_gatt_attr_write_ccc
	.long	__compound_literal.17
	.zero	2
	.byte	3
	.zero	1
	.section	.data.__compound_literal.17,"aw",@progbits
	.align 4
	.type	__compound_literal.17, @object
	.size	__compound_literal.17, 16
__compound_literal.17:
	.long	sc_ccc_cfg
	.long	2
	.zero	4
	.long	sc_ccc_cfg_changed
	.section	.data.__compound_literal.16,"aw",@progbits
	.align 4
	.type	__compound_literal.16, @object
	.size	__compound_literal.16, 4
__compound_literal.16:
	.byte	0
	.zero	1
	.value	10498
	.section	.data.__compound_literal.15,"aw",@progbits
	.align 4
	.type	__compound_literal.15, @object
	.size	__compound_literal.15, 4
__compound_literal.15:
	.byte	0
	.zero	1
	.value	10757
	.section	.data.__compound_literal.14,"aw",@progbits
	.align 4
	.type	__compound_literal.14, @object
	.size	__compound_literal.14, 8
__compound_literal.14:
	.long	__compound_literal.13
	.byte	32
	.zero	3
	.section	.data.__compound_literal.13,"aw",@progbits
	.align 4
	.type	__compound_literal.13, @object
	.size	__compound_literal.13, 4
__compound_literal.13:
	.byte	0
	.zero	1
	.value	10757
	.section	.data.__compound_literal.12,"aw",@progbits
	.align 4
	.type	__compound_literal.12, @object
	.size	__compound_literal.12, 4
__compound_literal.12:
	.byte	0
	.zero	1
	.value	10243
	.section	.data.__compound_literal.11,"aw",@progbits
	.align 4
	.type	__compound_literal.11, @object
	.size	__compound_literal.11, 4
__compound_literal.11:
	.byte	0
	.zero	1
	.value	6145
	.section	.data.__compound_literal.10,"aw",@progbits
	.align 4
	.type	__compound_literal.10, @object
	.size	__compound_literal.10, 4
__compound_literal.10:
	.byte	0
	.zero	1
	.value	10240
	.section	.bss.sc_ccc_cfg,"aw",@nobits
	.align 32
	.type	sc_ccc_cfg, @object
	.size	sc_ccc_cfg, 32
sc_ccc_cfg:
	.zero	32
	.section	.data.gap_svc,"aw",@progbits
	.align 4
	.type	gap_svc, @object
	.size	gap_svc, 12
gap_svc:
	.long	gap_attrs
	.value	5
	.zero	6
	.section	.data.gap_attrs,"aw",@progbits
	.align 32
	.type	gap_attrs, @object
	.size	gap_attrs, 100
gap_attrs:
	.long	__compound_literal.0
	.long	bt_gatt_attr_read_service
	.zero	4
	.long	__compound_literal.1
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.2
	.long	bt_gatt_attr_read_chrc
	.zero	4
	.long	__compound_literal.4
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.5
	.long	read_name
	.long	0
	.long	0
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.6
	.long	bt_gatt_attr_read_chrc
	.zero	4
	.long	__compound_literal.8
	.zero	2
	.byte	1
	.zero	1
	.long	__compound_literal.9
	.long	read_appearance
	.long	0
	.long	0
	.zero	2
	.byte	1
	.zero	1
	.section	.data.__compound_literal.9,"aw",@progbits
	.align 4
	.type	__compound_literal.9, @object
	.size	__compound_literal.9, 4
__compound_literal.9:
	.byte	0
	.zero	1
	.value	10753
	.section	.data.__compound_literal.8,"aw",@progbits
	.align 4
	.type	__compound_literal.8, @object
	.size	__compound_literal.8, 8
__compound_literal.8:
	.long	__compound_literal.7
	.byte	2
	.zero	3
	.section	.data.__compound_literal.7,"aw",@progbits
	.align 4
	.type	__compound_literal.7, @object
	.size	__compound_literal.7, 4
__compound_literal.7:
	.byte	0
	.zero	1
	.value	10753
	.section	.data.__compound_literal.6,"aw",@progbits
	.align 4
	.type	__compound_literal.6, @object
	.size	__compound_literal.6, 4
__compound_literal.6:
	.byte	0
	.zero	1
	.value	10243
	.section	.data.__compound_literal.5,"aw",@progbits
	.align 4
	.type	__compound_literal.5, @object
	.size	__compound_literal.5, 4
__compound_literal.5:
	.byte	0
	.zero	1
	.value	10752
	.section	.data.__compound_literal.4,"aw",@progbits
	.align 4
	.type	__compound_literal.4, @object
	.size	__compound_literal.4, 8
__compound_literal.4:
	.long	__compound_literal.3
	.byte	2
	.zero	3
	.section	.data.__compound_literal.3,"aw",@progbits
	.align 4
	.type	__compound_literal.3, @object
	.size	__compound_literal.3, 4
__compound_literal.3:
	.byte	0
	.zero	1
	.value	10752
	.section	.data.__compound_literal.2,"aw",@progbits
	.align 4
	.type	__compound_literal.2, @object
	.size	__compound_literal.2, 4
__compound_literal.2:
	.byte	0
	.zero	1
	.value	10243
	.section	.data.__compound_literal.1,"aw",@progbits
	.align 4
	.type	__compound_literal.1, @object
	.size	__compound_literal.1, 4
__compound_literal.1:
	.byte	0
	.zero	1
	.value	6144
	.section	.data.__compound_literal.0,"aw",@progbits
	.align 4
	.type	__compound_literal.0, @object
	.size	__compound_literal.0, 4
__compound_literal.0:
	.byte	0
	.zero	1
	.value	10240
	.section	.bss.db,"aw",@nobits
	.align 4
	.type	db, @object
	.size	db, 8
db:
	.zero	8
	.text
.Letext0:
	.section	.text.unlikely.sc_ccc_cfg_changed
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x2bfa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF283
	.byte	0xc
	.long	.LASF284
	.long	.LASF285
	.long	.Ldebug_ranges0+0x118
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x4
	.long	0x45
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
	.byte	0x1
	.byte	0x16
	.long	0x3a
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x30
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF14
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x36
	.long	0x25
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x3b
	.long	0x45
	.uleb128 0x3
	.long	.LASF18
	.byte	0x1
	.byte	0x3d
	.long	0x6c
	.uleb128 0x5
	.long	.LASF20
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.long	0xee
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x3f
	.long	0xee
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd5
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x41
	.long	0xd5
	.uleb128 0x5
	.long	.LASF21
	.byte	0x8
	.byte	0x1
	.byte	0x42
	.long	0x124
	.uleb128 0x6
	.long	.LASF23
	.byte	0x1
	.byte	0x43
	.long	0x124
	.byte	0
	.uleb128 0x6
	.long	.LASF24
	.byte	0x1
	.byte	0x44
	.long	0x124
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf4
	.uleb128 0x3
	.long	.LASF25
	.byte	0x1
	.byte	0x46
	.long	0xff
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xd7
	.long	0x154
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0xd8
	.long	0x16d
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0xd9
	.long	0x16d
	.byte	0
	.uleb128 0x5
	.long	.LASF26
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.long	0x16d
	.uleb128 0xa
	.long	0x135
	.byte	0
	.uleb128 0xa
	.long	0x173
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x154
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.long	0x192
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0xdc
	.long	0x16d
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0xdd
	.long	0x16d
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x1
	.byte	0xe0
	.long	0x154
	.uleb128 0xb
	.long	.LASF29
	.byte	0x1
	.value	0x180
	.long	0x73
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF30
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF31
	.uleb128 0x7
	.byte	0x4
	.long	0x1b2
	.uleb128 0xb
	.long	.LASF32
	.byte	0x1
	.value	0x1c8
	.long	0x19d
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x1e2
	.uleb128 0xe
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x1b0
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0x1d1
	.long	0x1cb
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.value	0x1d5
	.long	0x1e2
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.value	0x1d6
	.long	0x1e2
	.uleb128 0x7
	.byte	0x4
	.long	0x20c
	.uleb128 0xf
	.long	0x1b2
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.value	0x2f2
	.long	0x1ee
	.uleb128 0x10
	.long	.LASF37
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x245
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0x302
	.long	0x245
	.byte	0
	.uleb128 0x11
	.long	.LASF39
	.byte	0x1
	.value	0x303
	.long	0x192
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x211
	.uleb128 0x10
	.long	.LASF40
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x266
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0x311
	.long	0x21d
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.value	0x320
	.long	0x272
	.uleb128 0x7
	.byte	0x4
	.long	0x278
	.uleb128 0x12
	.long	0x288
	.uleb128 0x13
	.long	0x1b0
	.uleb128 0x13
	.long	0x1b0
	.byte	0
	.uleb128 0x10
	.long	.LASF42
	.byte	0x14
	.byte	0x1
	.value	0x321
	.long	0x2d7
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x322
	.long	0x1fa
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x323
	.long	0x266
	.byte	0x4
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x324
	.long	0x1b0
	.byte	0x8
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0x325
	.long	0x8c
	.byte	0xc
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0x326
	.long	0x8c
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF48
	.byte	0x1
	.value	0x327
	.long	0x288
	.uleb128 0xb
	.long	.LASF49
	.byte	0x1
	.value	0x341
	.long	0x73
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.value	0x342
	.long	0x2e3
	.uleb128 0x10
	.long	.LASF51
	.byte	0xc
	.byte	0x1
	.value	0x36d
	.long	0x316
	.uleb128 0x11
	.long	.LASF52
	.byte	0x1
	.value	0x36e
	.long	0x24b
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x1
	.value	0x375
	.long	0x322
	.uleb128 0x7
	.byte	0x4
	.long	0x328
	.uleb128 0x12
	.long	0x333
	.uleb128 0x13
	.long	0x333
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x339
	.uleb128 0x10
	.long	.LASF54
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x36e
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.value	0x377
	.long	0x1b0
	.byte	0
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x378
	.long	0x316
	.byte	0x4
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0x379
	.long	0x36e
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x2e3
	.long	0x37e
	.uleb128 0x15
	.long	0x1a9
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF57
	.byte	0x24
	.byte	0x1
	.value	0x37d
	.long	0x3b3
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.value	0x37e
	.long	0x339
	.byte	0
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.value	0x37f
	.long	0x3b3
	.byte	0xc
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.value	0x380
	.long	0x2d7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2fb
	.uleb128 0xd
	.byte	0x6
	.byte	0x1
	.value	0x401
	.long	0x3d0
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0x402
	.long	0x3d0
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xb4
	.long	0x3e0
	.uleb128 0x15
	.long	0x1a9
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x1
	.value	0x403
	.long	0x3b9
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.value	0x404
	.long	0x40e
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0x405
	.long	0xb4
	.byte	0
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.value	0x406
	.long	0x3e0
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x1
	.value	0x407
	.long	0x3ec
	.uleb128 0x14
	.long	0xb4
	.long	0x42a
	.uleb128 0x15
	.long	0x1a9
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.long	0xb4
	.long	0x43a
	.uleb128 0x15
	.long	0x1a9
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	.LASF63
	.byte	0x8
	.byte	0x1
	.value	0xa8d
	.long	0x47c
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0xa8e
	.long	0x47c
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0xa8f
	.long	0xbf
	.byte	0x4
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.value	0xa90
	.long	0xbf
	.byte	0x6
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.value	0xa91
	.long	0x482
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xb4
	.uleb128 0x14
	.long	0xb4
	.long	0x491
	.uleb128 0x16
	.long	0x1a9
	.byte	0
	.uleb128 0x10
	.long	.LASF67
	.byte	0x4
	.byte	0x1
	.value	0xab5
	.long	0x4b9
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.value	0xab6
	.long	0xbf
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0xab7
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x1
	.value	0xac6
	.long	0x4db
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.value	0xac7
	.long	0xf4
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0xac8
	.long	0x529
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x10
	.byte	0x1
	.value	0xac5
	.long	0x529
	.uleb128 0xa
	.long	0x4b9
	.byte	0
	.uleb128 0xe
	.string	"ref"
	.byte	0x1
	.value	0xaca
	.long	0xb4
	.byte	0x4
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0xacb
	.long	0xb4
	.byte	0x5
	.uleb128 0x11
	.long	.LASF72
	.byte	0x1
	.value	0xacc
	.long	0xb4
	.byte	0x6
	.uleb128 0xa
	.long	0x560
	.byte	0x8
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.value	0xad5
	.long	0x579
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x4db
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.value	0xace
	.long	0x560
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0xacf
	.long	0x47c
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0xad0
	.long	0xbf
	.byte	0x4
	.uleb128 0x11
	.long	.LASF65
	.byte	0x1
	.value	0xad1
	.long	0xbf
	.byte	0x6
	.byte	0
	.uleb128 0x17
	.byte	0x8
	.byte	0x1
	.value	0xacd
	.long	0x579
	.uleb128 0x19
	.long	0x52f
	.uleb128 0x1a
	.string	"b"
	.byte	0x1
	.value	0xad3
	.long	0x43a
	.byte	0
	.uleb128 0x14
	.long	0xb4
	.long	0x588
	.uleb128 0x16
	.long	0x1a9
	.byte	0
	.uleb128 0xf
	.long	0xbf
	.uleb128 0x7
	.byte	0x4
	.long	0x593
	.uleb128 0xf
	.long	0xb4
	.uleb128 0x7
	.byte	0x4
	.long	0x59e
	.uleb128 0xf
	.long	0x40e
	.uleb128 0x14
	.long	0xb4
	.long	0x5b3
	.uleb128 0x15
	.long	0x1a9
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF73
	.uleb128 0x1b
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0xb6a
	.long	0x5da
	.uleb128 0x1c
	.long	.LASF74
	.byte	0
	.uleb128 0x1c
	.long	.LASF75
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF76
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF77
	.byte	0x1
	.byte	0x1
	.value	0xb6f
	.long	0x5f5
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0xb70
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF78
	.byte	0x4
	.byte	0x1
	.value	0xb72
	.long	0x61d
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0xb73
	.long	0x5da
	.byte	0
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xb74
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF80
	.byte	0x11
	.byte	0x1
	.value	0xb7a
	.long	0x645
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0xb7b
	.long	0x5da
	.byte	0
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xb7c
	.long	0x41a
	.byte	0x1
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.value	0xbbc
	.long	0x671
	.uleb128 0x1c
	.long	.LASF81
	.byte	0
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF85
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF86
	.byte	0x1
	.value	0xbc2
	.long	0x645
	.uleb128 0x7
	.byte	0x4
	.long	0x683
	.uleb128 0x10
	.long	.LASF87
	.byte	0x90
	.byte	0x1
	.value	0xd74
	.long	0x766
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.value	0xd75
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0xd76
	.long	0xb4
	.byte	0x2
	.uleb128 0x11
	.long	.LASF89
	.byte	0x1
	.value	0xd77
	.long	0xb4
	.byte	0x3
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0xd78
	.long	0x36e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF90
	.byte	0x1
	.value	0xd79
	.long	0x671
	.byte	0x8
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0xd7a
	.long	0x671
	.byte	0x9
	.uleb128 0x11
	.long	.LASF92
	.byte	0x1
	.value	0xd7b
	.long	0xb4
	.byte	0xa
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.value	0xd7c
	.long	0xb4
	.byte	0xb
	.uleb128 0x11
	.long	.LASF93
	.byte	0x1
	.value	0xd7d
	.long	0xb79
	.byte	0xc
	.uleb128 0x11
	.long	.LASF94
	.byte	0x1
	.value	0xd7e
	.long	0xbf
	.byte	0xe
	.uleb128 0xe
	.string	"rx"
	.byte	0x1
	.value	0xd7f
	.long	0x529
	.byte	0x10
	.uleb128 0x11
	.long	.LASF95
	.byte	0x1
	.value	0xd80
	.long	0x12a
	.byte	0x14
	.uleb128 0x11
	.long	.LASF96
	.byte	0x1
	.value	0xd81
	.long	0x24b
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.value	0xd82
	.long	0x24b
	.byte	0x28
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.value	0xd83
	.long	0x12a
	.byte	0x34
	.uleb128 0xe
	.string	"ref"
	.byte	0x1
	.value	0xd84
	.long	0x2e3
	.byte	0x3c
	.uleb128 0xa
	.long	0xc91
	.byte	0x40
	.byte	0
	.uleb128 0xb
	.long	.LASF99
	.byte	0x1
	.value	0xbe8
	.long	0x772
	.uleb128 0x7
	.byte	0x4
	.long	0x778
	.uleb128 0x12
	.long	0x797
	.uleb128 0x13
	.long	0x67d
	.uleb128 0x13
	.long	0xb4
	.uleb128 0x13
	.long	0x797
	.uleb128 0x13
	.long	0xbf
	.uleb128 0x13
	.long	0x1b0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x79d
	.uleb128 0x1d
	.uleb128 0xb
	.long	.LASF100
	.byte	0x1
	.value	0xbeb
	.long	0x7aa
	.uleb128 0x7
	.byte	0x4
	.long	0x7b0
	.uleb128 0x12
	.long	0x7bb
	.uleb128 0x13
	.long	0x1b0
	.byte	0
	.uleb128 0x10
	.long	.LASF101
	.byte	0x18
	.byte	0x1
	.value	0xbec
	.long	0x817
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.value	0xbed
	.long	0xf4
	.byte	0
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.value	0xbee
	.long	0x766
	.byte	0x4
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.value	0xbef
	.long	0x79e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF93
	.byte	0x1
	.value	0xbf0
	.long	0x491
	.byte	0xc
	.uleb128 0xe
	.string	"buf"
	.byte	0x1
	.value	0xbf1
	.long	0x529
	.byte	0x10
	.uleb128 0x11
	.long	.LASF104
	.byte	0x1
	.value	0xbf3
	.long	0x5b3
	.byte	0x14
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0xbf5
	.long	0x855
	.uleb128 0x1c
	.long	.LASF105
	.byte	0
	.uleb128 0x1c
	.long	.LASF106
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF107
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF108
	.byte	0x4
	.uleb128 0x1c
	.long	.LASF109
	.byte	0x8
	.uleb128 0x1c
	.long	.LASF110
	.byte	0x10
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x20
	.uleb128 0x1c
	.long	.LASF112
	.byte	0x40
	.byte	0
	.uleb128 0x10
	.long	.LASF113
	.byte	0x14
	.byte	0x1
	.value	0xc02
	.long	0x8b1
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0xc03
	.long	0x8b1
	.byte	0
	.uleb128 0x11
	.long	.LASF114
	.byte	0x1
	.value	0xc04
	.long	0x8ea
	.byte	0x4
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1
	.value	0xc08
	.long	0x918
	.byte	0x8
	.uleb128 0x11
	.long	.LASF116
	.byte	0x1
	.value	0xc0c
	.long	0x1b0
	.byte	0xc
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.value	0xc0d
	.long	0xbf
	.byte	0x10
	.uleb128 0x11
	.long	.LASF117
	.byte	0x1
	.value	0xc0e
	.long	0xb4
	.byte	0x12
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8b7
	.uleb128 0xf
	.long	0x5da
	.uleb128 0x1e
	.long	0x1bf
	.long	0x8df
	.uleb128 0x13
	.long	0x67d
	.uleb128 0x13
	.long	0x8df
	.uleb128 0x13
	.long	0x1b0
	.uleb128 0x13
	.long	0xbf
	.uleb128 0x13
	.long	0xbf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8e5
	.uleb128 0xf
	.long	0x855
	.uleb128 0x7
	.byte	0x4
	.long	0x8bc
	.uleb128 0x1e
	.long	0x1bf
	.long	0x918
	.uleb128 0x13
	.long	0x67d
	.uleb128 0x13
	.long	0x8df
	.uleb128 0x13
	.long	0x797
	.uleb128 0x13
	.long	0xbf
	.uleb128 0x13
	.long	0xbf
	.uleb128 0x13
	.long	0xb4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8f0
	.uleb128 0x10
	.long	.LASF118
	.byte	0xc
	.byte	0x1
	.value	0xc10
	.long	0x953
	.uleb128 0x11
	.long	.LASF119
	.byte	0x1
	.value	0xc11
	.long	0x953
	.byte	0
	.uleb128 0x11
	.long	.LASF120
	.byte	0x1
	.value	0xc12
	.long	0xbf
	.byte	0x4
	.uleb128 0x11
	.long	.LASF69
	.byte	0x1
	.value	0xc13
	.long	0xf4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x855
	.uleb128 0x10
	.long	.LASF121
	.byte	0x8
	.byte	0x1
	.value	0xc1e
	.long	0x981
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0xc1f
	.long	0x8b1
	.byte	0
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xc20
	.long	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF123
	.byte	0x2
	.byte	0x1
	.value	0xc22
	.long	0x99c
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xc23
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF124
	.byte	0x7
	.byte	0x1
	.value	0xc28
	.long	0x9eb
	.uleb128 0x11
	.long	.LASF125
	.byte	0x1
	.value	0xc29
	.long	0xb4
	.byte	0
	.uleb128 0x11
	.long	.LASF126
	.byte	0x1
	.value	0xc2a
	.long	0xa9
	.byte	0x1
	.uleb128 0x11
	.long	.LASF127
	.byte	0x1
	.value	0xc2b
	.long	0xbf
	.byte	0x2
	.uleb128 0x11
	.long	.LASF128
	.byte	0x1
	.value	0xc2c
	.long	0xb4
	.byte	0x4
	.uleb128 0x11
	.long	.LASF129
	.byte	0x1
	.value	0xc2d
	.long	0xbf
	.byte	0x5
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0xc33
	.long	0xa05
	.uleb128 0x1c
	.long	.LASF130
	.byte	0
	.uleb128 0x1c
	.long	.LASF131
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF132
	.byte	0x1
	.value	0xc37
	.long	0xa11
	.uleb128 0x7
	.byte	0x4
	.long	0xa17
	.uleb128 0x1e
	.long	0xb4
	.long	0xa2b
	.uleb128 0x13
	.long	0x8df
	.uleb128 0x13
	.long	0x1b0
	.byte	0
	.uleb128 0x10
	.long	.LASF133
	.byte	0x10
	.byte	0x1
	.value	0xc48
	.long	0xa6d
	.uleb128 0x11
	.long	.LASF134
	.byte	0x1
	.value	0xc49
	.long	0xb4
	.byte	0
	.uleb128 0x11
	.long	.LASF135
	.byte	0x1
	.value	0xc4a
	.long	0x40e
	.byte	0x1
	.uleb128 0x11
	.long	.LASF136
	.byte	0x1
	.value	0xc4b
	.long	0xbf
	.byte	0x8
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0xc4c
	.long	0x5a3
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF137
	.byte	0x10
	.byte	0x1
	.value	0xc52
	.long	0xaaf
	.uleb128 0xe
	.string	"cfg"
	.byte	0x1
	.value	0xc53
	.long	0xaaf
	.byte	0
	.uleb128 0x11
	.long	.LASF138
	.byte	0x1
	.value	0xc54
	.long	0x97
	.byte	0x4
	.uleb128 0x11
	.long	.LASF136
	.byte	0x1
	.value	0xc55
	.long	0xbf
	.byte	0x8
	.uleb128 0x11
	.long	.LASF139
	.byte	0x1
	.value	0xc56
	.long	0xac5
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa2b
	.uleb128 0x12
	.long	0xac5
	.uleb128 0x13
	.long	0x8df
	.uleb128 0x13
	.long	0xbf
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xab5
	.uleb128 0xb
	.long	.LASF140
	.byte	0x1
	.value	0xc6a
	.long	0xad7
	.uleb128 0x7
	.byte	0x4
	.long	0xadd
	.uleb128 0x12
	.long	0xaf2
	.uleb128 0x13
	.long	0x67d
	.uleb128 0x13
	.long	0x8df
	.uleb128 0x13
	.long	0xb4
	.byte	0
	.uleb128 0x10
	.long	.LASF141
	.byte	0x28
	.byte	0x1
	.value	0xc6d
	.long	0xb41
	.uleb128 0x11
	.long	.LASF142
	.byte	0x1
	.value	0xc6e
	.long	0x7bb
	.byte	0
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.value	0xc6f
	.long	0x8df
	.byte	0x18
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.value	0xc70
	.long	0xacb
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0xc71
	.long	0x797
	.byte	0x20
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0xc72
	.long	0xbf
	.byte	0x24
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5da
	.uleb128 0x7
	.byte	0x4
	.long	0xbf
	.uleb128 0x1b
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.value	0xd4f
	.long	0xb79
	.uleb128 0x1c
	.long	.LASF144
	.byte	0
	.uleb128 0x1c
	.long	.LASF145
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF146
	.byte	0x2
	.uleb128 0x1c
	.long	.LASF147
	.byte	0x3
	.uleb128 0x1c
	.long	.LASF148
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF149
	.byte	0x1
	.value	0xd55
	.long	0xb4d
	.uleb128 0x10
	.long	.LASF150
	.byte	0x50
	.byte	0x1
	.value	0xd62
	.long	0xc22
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.value	0xd63
	.long	0x40e
	.byte	0
	.uleb128 0x11
	.long	.LASF151
	.byte	0x1
	.value	0xd64
	.long	0x40e
	.byte	0x7
	.uleb128 0x11
	.long	.LASF152
	.byte	0x1
	.value	0xd65
	.long	0x40e
	.byte	0xe
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.value	0xd66
	.long	0xbf
	.byte	0x16
	.uleb128 0x11
	.long	.LASF154
	.byte	0x1
	.value	0xd67
	.long	0xbf
	.byte	0x18
	.uleb128 0x11
	.long	.LASF155
	.byte	0x1
	.value	0xd68
	.long	0xbf
	.byte	0x1a
	.uleb128 0x11
	.long	.LASF156
	.byte	0x1
	.value	0xd69
	.long	0xbf
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0xd6a
	.long	0xbf
	.byte	0x1e
	.uleb128 0x11
	.long	.LASF157
	.byte	0x1
	.value	0xd6b
	.long	0x42a
	.byte	0x20
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.value	0xd6c
	.long	0xc8b
	.byte	0x28
	.uleb128 0x11
	.long	.LASF159
	.byte	0x1
	.value	0xd6d
	.long	0x37e
	.byte	0x2c
	.byte	0
	.uleb128 0x10
	.long	.LASF160
	.byte	0x60
	.byte	0x1
	.value	0xdd2
	.long	0xc8b
	.uleb128 0x11
	.long	.LASF161
	.byte	0x1
	.value	0xdd3
	.long	0x40e
	.byte	0
	.uleb128 0x11
	.long	.LASF162
	.byte	0x1
	.value	0xdd4
	.long	0xb4
	.byte	0x7
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0xdd5
	.long	0x36e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.value	0xdd6
	.long	0xbf
	.byte	0xc
	.uleb128 0xe
	.string	"ltk"
	.byte	0x1
	.value	0xdd7
	.long	0xca6
	.byte	0x10
	.uleb128 0xe
	.string	"irk"
	.byte	0x1
	.value	0xdd8
	.long	0xcdb
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF163
	.byte	0x1
	.value	0xdd9
	.long	0xca6
	.byte	0x44
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc22
	.uleb128 0x17
	.byte	0x50
	.byte	0x1
	.value	0xd85
	.long	0xca6
	.uleb128 0x1a
	.string	"le"
	.byte	0x1
	.value	0xd86
	.long	0xb85
	.byte	0
	.uleb128 0x10
	.long	.LASF164
	.byte	0x1c
	.byte	0x1
	.value	0xdc5
	.long	0xcdb
	.uleb128 0x11
	.long	.LASF165
	.byte	0x1
	.value	0xdc6
	.long	0xca
	.byte	0
	.uleb128 0x11
	.long	.LASF166
	.byte	0x1
	.value	0xdc7
	.long	0xbf
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xdc8
	.long	0x41a
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF167
	.byte	0x16
	.byte	0x1
	.value	0xdca
	.long	0xd03
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xdcb
	.long	0x41a
	.byte	0
	.uleb128 0xe
	.string	"rpa"
	.byte	0x1
	.value	0xdcc
	.long	0x3e0
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	.LASF168
	.byte	0x2
	.byte	0x1
	.value	0xf7c
	.long	0xd2b
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.value	0xf7d
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF136
	.byte	0x1
	.value	0xf7e
	.long	0xd2b
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0xb4
	.long	0xd3a
	.uleb128 0x16
	.long	0x1a9
	.byte	0
	.uleb128 0x10
	.long	.LASF169
	.byte	0x2
	.byte	0x1
	.value	0xf82
	.long	0xd62
	.uleb128 0x11
	.long	.LASF88
	.byte	0x1
	.value	0xf83
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF136
	.byte	0x1
	.value	0xf84
	.long	0xd62
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0xb4
	.long	0xd71
	.uleb128 0x16
	.long	0x1a9
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0x1056
	.long	0xd91
	.uleb128 0x1c
	.long	.LASF170
	.byte	0
	.uleb128 0x1c
	.long	.LASF171
	.byte	0x1
	.uleb128 0x1c
	.long	.LASF172
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF173
	.byte	0x54
	.byte	0x1
	.value	0x105b
	.long	0xde0
	.uleb128 0x11
	.long	.LASF174
	.byte	0x1
	.value	0x105c
	.long	0xaf2
	.byte	0
	.uleb128 0x11
	.long	.LASF175
	.byte	0x1
	.value	0x105d
	.long	0xbf
	.byte	0x28
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.value	0x105e
	.long	0xbf
	.byte	0x2a
	.uleb128 0x11
	.long	.LASF58
	.byte	0x1
	.value	0x105f
	.long	0x37e
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0x1060
	.long	0x36e
	.byte	0x50
	.byte	0
	.uleb128 0x10
	.long	.LASF176
	.byte	0x6
	.byte	0x1
	.value	0x10f6
	.long	0xe15
	.uleb128 0x11
	.long	.LASF177
	.byte	0x1
	.value	0x10f7
	.long	0xbf
	.byte	0
	.uleb128 0x11
	.long	.LASF178
	.byte	0x1
	.value	0x10f8
	.long	0xbf
	.byte	0x2
	.uleb128 0x11
	.long	.LASF179
	.byte	0x1
	.value	0x10f9
	.long	0xbf
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x10
	.byte	0x1
	.value	0x1123
	.long	0xe37
	.uleb128 0x18
	.long	.LASF179
	.byte	0x1
	.value	0x1124
	.long	0xbf
	.uleb128 0x18
	.long	.LASF79
	.byte	0x1
	.value	0x1125
	.long	0x41a
	.byte	0
	.uleb128 0x10
	.long	.LASF180
	.byte	0x13
	.byte	0x1
	.value	0x1120
	.long	0xe65
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0x1121
	.long	0xb4
	.byte	0
	.uleb128 0x11
	.long	.LASF181
	.byte	0x1
	.value	0x1122
	.long	0xbf
	.byte	0x1
	.uleb128 0xa
	.long	0xe15
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF182
	.byte	0x18
	.byte	0x1
	.value	0x11f0
	.long	0xec1
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.value	0x11f1
	.long	0x73
	.byte	0
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0x11f2
	.long	0xbf
	.byte	0x4
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.value	0x11f3
	.long	0x8df
	.byte	0x8
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0x11f4
	.long	0x797
	.byte	0xc
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x11f5
	.long	0xbf
	.byte	0x10
	.uleb128 0x11
	.long	.LASF174
	.byte	0x1
	.value	0x11f6
	.long	0xec1
	.byte	0x14
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xaf2
	.uleb128 0x10
	.long	.LASF183
	.byte	0x4
	.byte	0x1
	.value	0x1238
	.long	0xeef
	.uleb128 0x11
	.long	.LASF175
	.byte	0x1
	.value	0x1239
	.long	0xbf
	.byte	0
	.uleb128 0xe
	.string	"end"
	.byte	0x1
	.value	0x123a
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.long	.LASF184
	.byte	0x1
	.byte	0x52
	.long	0x5b3
	.byte	0x3
	.long	0xf0b
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x52
	.long	0xf0b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x12a
	.uleb128 0x1f
	.long	.LASF185
	.byte	0x1
	.byte	0x56
	.long	0x124
	.byte	0x3
	.long	0xf2d
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x56
	.long	0xf0b
	.byte	0
	.uleb128 0x1f
	.long	.LASF187
	.byte	0x1
	.byte	0x5a
	.long	0x124
	.byte	0x3
	.long	0xf49
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x5a
	.long	0xf0b
	.byte	0
	.uleb128 0x1f
	.long	.LASF188
	.byte	0x1
	.byte	0x5e
	.long	0x124
	.byte	0x3
	.long	0xf65
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0x5e
	.long	0x124
	.byte	0
	.uleb128 0x1f
	.long	.LASF189
	.byte	0x1
	.byte	0x62
	.long	0x124
	.byte	0x3
	.long	0xf81
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0x62
	.long	0x124
	.byte	0
	.uleb128 0x21
	.long	.LASF191
	.byte	0x1
	.value	0x363
	.byte	0x3
	.long	0xfb3
	.uleb128 0x22
	.long	.LASF190
	.byte	0x1
	.value	0x363
	.long	0xfb3
	.uleb128 0x23
	.string	"bit"
	.byte	0x1
	.value	0x363
	.long	0x73
	.uleb128 0x24
	.long	.LASF195
	.byte	0x1
	.value	0x365
	.long	0x2ef
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2e3
	.uleb128 0x21
	.long	.LASF192
	.byte	0x1
	.value	0x1062
	.byte	0x1
	.long	0xfeb
	.uleb128 0x22
	.long	.LASF193
	.byte	0x1
	.value	0x1062
	.long	0x67d
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x1063
	.long	0x8df
	.uleb128 0x23
	.string	"err"
	.byte	0x1
	.value	0x1063
	.long	0xb4
	.byte	0
	.uleb128 0x25
	.long	.LASF194
	.byte	0x1
	.value	0x10fd
	.long	0xb4
	.byte	0x1
	.long	0x1021
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x10fd
	.long	0x8df
	.uleb128 0x22
	.long	.LASF116
	.byte	0x1
	.value	0x10fe
	.long	0x1b0
	.uleb128 0x24
	.long	.LASF196
	.byte	0x1
	.value	0x1100
	.long	0x1021
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xde0
	.uleb128 0x25
	.long	.LASF197
	.byte	0x1
	.value	0x3d5
	.long	0xbf
	.byte	0x3
	.long	0x1045
	.uleb128 0x23
	.string	"src"
	.byte	0x1
	.value	0x3d5
	.long	0x58d
	.byte	0
	.uleb128 0x25
	.long	.LASF198
	.byte	0x1
	.value	0x124e
	.long	0xb4
	.byte	0x1
	.long	0x10ab
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x124e
	.long	0x8df
	.uleb128 0x22
	.long	.LASF116
	.byte	0x1
	.value	0x124e
	.long	0x1b0
	.uleb128 0x24
	.long	.LASF64
	.byte	0x1
	.value	0x1250
	.long	0x10ab
	.uleb128 0x26
	.string	"ccc"
	.byte	0x1
	.value	0x1251
	.long	0x10b1
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x1252
	.long	0x97
	.uleb128 0x27
	.uleb128 0x24
	.long	.LASF193
	.byte	0x1
	.value	0x125e
	.long	0x67d
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x125f
	.long	0x73
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xe65
	.uleb128 0x7
	.byte	0x4
	.long	0xa6d
	.uleb128 0x25
	.long	.LASF199
	.byte	0x1
	.value	0x12a9
	.long	0xb4
	.byte	0x1
	.long	0x1103
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x12a9
	.long	0x8df
	.uleb128 0x22
	.long	.LASF116
	.byte	0x1
	.value	0x12a9
	.long	0x1b0
	.uleb128 0x24
	.long	.LASF193
	.byte	0x1
	.value	0x12ab
	.long	0x67d
	.uleb128 0x26
	.string	"ccc"
	.byte	0x1
	.value	0x12ac
	.long	0x10b1
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x12ad
	.long	0x97
	.byte	0
	.uleb128 0x25
	.long	.LASF200
	.byte	0x1
	.value	0x12c0
	.long	0xb4
	.byte	0x1
	.long	0x115d
	.uleb128 0x22
	.long	.LASF143
	.byte	0x1
	.value	0x12c0
	.long	0x8df
	.uleb128 0x22
	.long	.LASF116
	.byte	0x1
	.value	0x12c0
	.long	0x1b0
	.uleb128 0x24
	.long	.LASF193
	.byte	0x1
	.value	0x12c2
	.long	0x67d
	.uleb128 0x26
	.string	"ccc"
	.byte	0x1
	.value	0x12c3
	.long	0x10b1
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.value	0x12c4
	.long	0x97
	.uleb128 0x27
	.uleb128 0x26
	.string	"tmp"
	.byte	0x1
	.value	0x12d1
	.long	0x67d
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF286
	.byte	0x1
	.value	0x128c
	.long	0x73
	.byte	0x1
	.long	0x1193
	.uleb128 0x22
	.long	.LASF193
	.byte	0x1
	.value	0x128c
	.long	0x67d
	.uleb128 0x22
	.long	.LASF174
	.byte	0x1
	.value	0x128d
	.long	0xec1
	.uleb128 0x26
	.string	"nfy"
	.byte	0x1
	.value	0x128f
	.long	0xe65
	.byte	0
	.uleb128 0x25
	.long	.LASF201
	.byte	0x1
	.value	0x35c
	.long	0x73
	.byte	0x3
	.long	0x11d5
	.uleb128 0x22
	.long	.LASF190
	.byte	0x1
	.value	0x35c
	.long	0xfb3
	.uleb128 0x23
	.string	"bit"
	.byte	0x1
	.value	0x35c
	.long	0x73
	.uleb128 0x24
	.long	.LASF195
	.byte	0x1
	.value	0x35e
	.long	0x2ef
	.uleb128 0x26
	.string	"old"
	.byte	0x1
	.value	0x35f
	.long	0x2ef
	.byte	0
	.uleb128 0x21
	.long	.LASF202
	.byte	0x1
	.value	0x10a3
	.byte	0x1
	.long	0x120e
	.uleb128 0x23
	.string	"sc"
	.byte	0x1
	.value	0x10a3
	.long	0x120e
	.uleb128 0x22
	.long	.LASF175
	.byte	0x1
	.value	0x10a3
	.long	0x81
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x10a3
	.long	0x81
	.uleb128 0x29
	.long	.LASF222
	.byte	0x1
	.value	0x10ad
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd91
	.uleb128 0x2a
	.long	.LASF203
	.byte	0x1
	.byte	0x71
	.byte	0x3
	.long	0x1237
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0x71
	.long	0xf0b
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0x72
	.long	0x124
	.byte	0
	.uleb128 0x2a
	.long	.LASF204
	.byte	0x1
	.byte	0xad
	.byte	0x3
	.long	0x1265
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0xad
	.long	0xf0b
	.uleb128 0x20
	.long	.LASF205
	.byte	0x1
	.byte	0xae
	.long	0x124
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0xaf
	.long	0x124
	.byte	0
	.uleb128 0x1f
	.long	.LASF206
	.byte	0x1
	.byte	0xc2
	.long	0x5b3
	.byte	0x3
	.long	0x12a2
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.byte	0xc2
	.long	0xf0b
	.uleb128 0x20
	.long	.LASF69
	.byte	0x1
	.byte	0xc3
	.long	0x124
	.uleb128 0x2b
	.long	.LASF27
	.byte	0x1
	.byte	0xc5
	.long	0x124
	.uleb128 0x2b
	.long	.LASF207
	.byte	0x1
	.byte	0xc8
	.long	0x124
	.byte	0
	.uleb128 0x21
	.long	.LASF208
	.byte	0x1
	.value	0x368
	.byte	0x3
	.long	0x12d4
	.uleb128 0x22
	.long	.LASF190
	.byte	0x1
	.value	0x368
	.long	0xfb3
	.uleb128 0x23
	.string	"bit"
	.byte	0x1
	.value	0x368
	.long	0x73
	.uleb128 0x24
	.long	.LASF195
	.byte	0x1
	.value	0x36a
	.long	0x2ef
	.byte	0
	.uleb128 0x25
	.long	.LASF209
	.byte	0x1
	.value	0x1210
	.long	0x73
	.byte	0x1
	.long	0x133c
	.uleb128 0x22
	.long	.LASF193
	.byte	0x1
	.value	0x1210
	.long	0x67d
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0x1210
	.long	0x529
	.uleb128 0x22
	.long	.LASF102
	.byte	0x1
	.value	0x1211
	.long	0x766
	.uleb128 0x22
	.long	.LASF174
	.byte	0x1
	.value	0x1211
	.long	0x1b0
	.uleb128 0x22
	.long	.LASF103
	.byte	0x1
	.value	0x1212
	.long	0x79e
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.value	0x1214
	.long	0x73
	.uleb128 0x27
	.uleb128 0x26
	.string	"req"
	.byte	0x1
	.value	0x1216
	.long	0x133c
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x7bb
	.uleb128 0x21
	.long	.LASF210
	.byte	0x1
	.value	0xec2
	.byte	0x3
	.long	0x1374
	.uleb128 0x22
	.long	.LASF193
	.byte	0x1
	.value	0xec2
	.long	0x67d
	.uleb128 0x23
	.string	"cid"
	.byte	0x1
	.value	0xec2
	.long	0xbf
	.uleb128 0x23
	.string	"buf"
	.byte	0x1
	.value	0xec3
	.long	0x529
	.byte	0
	.uleb128 0x2c
	.long	.LASF211
	.byte	0x1
	.value	0x1020
	.long	.LFB82
	.long	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a9
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x1020
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF136
	.byte	0x1
	.value	0x1021
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x2e
	.long	.LASF216
	.byte	0x1
	.value	0x1174
	.long	0xb4
	.long	.LFB97
	.long	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x13f1
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x1174
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x1
	.value	0x1174
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x1176
	.long	0x13f1
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x953
	.uleb128 0x30
	.long	.LASF212
	.byte	0x1
	.value	0x1197
	.long	.LFB100
	.long	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x144c
	.uleb128 0x31
	.long	.LASF143
	.byte	0x1
	.value	0x1197
	.long	0x8df
	.long	.LLST0
	.uleb128 0x32
	.string	"ccc"
	.byte	0x1
	.value	0x1198
	.long	0x10b1
	.long	.LLST1
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x119a
	.long	0x73
	.long	.LLST2
	.uleb128 0x34
	.long	.LASF136
	.byte	0x1
	.value	0x119b
	.long	0xbf
	.long	.LLST3
	.byte	0
	.uleb128 0x2c
	.long	.LASF213
	.byte	0x1
	.value	0x120a
	.long	.LFB106
	.long	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x14cd
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x120a
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.string	"err"
	.byte	0x1
	.value	0x120a
	.long	0xb4
	.long	.LLST4
	.uleb128 0x32
	.string	"pdu"
	.byte	0x1
	.value	0x120b
	.long	0x797
	.long	.LLST5
	.uleb128 0x2d
	.long	.LASF214
	.byte	0x1
	.value	0x120b
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x1
	.value	0x120b
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF174
	.byte	0x1
	.value	0x120d
	.long	0xec1
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LVL13
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF215
	.byte	0x1
	.value	0x414
	.byte	0x3
	.long	0x14f3
	.uleb128 0x23
	.string	"dst"
	.byte	0x1
	.value	0x414
	.long	0x14f3
	.uleb128 0x23
	.string	"src"
	.byte	0x1
	.value	0x414
	.long	0x598
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x40e
	.uleb128 0x37
	.long	.LASF232
	.byte	0x1
	.value	0x11a7
	.long	0x1bf
	.long	.LFB101
	.long	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x15fd
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x11a7
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x11a8
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x11a8
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11a9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x11a9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF56
	.byte	0x1
	.value	0x11a9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x33
	.string	"ccc"
	.byte	0x1
	.value	0x11ab
	.long	0x10b1
	.long	.LLST6
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x11ac
	.long	0xbf
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x11ad
	.long	0x97
	.long	.LLST7
	.uleb128 0x39
	.long	0x1027
	.long	.LBB49
	.long	.LBE49-.LBB49
	.byte	0x1
	.value	0x11b4
	.long	0x15b5
	.uleb128 0x3a
	.long	0x1038
	.long	.LLST8
	.byte	0
	.uleb128 0x3b
	.long	0x14cd
	.long	.LBB51
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x11bf
	.long	0x15dc
	.uleb128 0x3a
	.long	0x14e6
	.long	.LLST9
	.uleb128 0x3a
	.long	0x14da
	.long	.LLST10
	.byte	0
	.uleb128 0x3c
	.long	.LVL20
	.long	0x2b34
	.uleb128 0x3d
	.long	.LVL32
	.long	0x13f7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0xfeb
	.long	.LFB93
	.long	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x1674
	.uleb128 0x3f
	.long	0xffc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.long	0x1008
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.long	0x1014
	.long	.LLST11
	.uleb128 0x41
	.long	.LBB57
	.long	.LBE57-.LBB57
	.long	0x1661
	.uleb128 0x3a
	.long	0x1008
	.long	.LLST12
	.uleb128 0x3a
	.long	0xffc
	.long	.LLST13
	.uleb128 0x42
	.long	.LBB58
	.long	.LBE58-.LBB58
	.uleb128 0x43
	.long	0x1014
	.uleb128 0x3c
	.long	.LVL40
	.long	0x2b40
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL38
	.long	0x2b40
	.uleb128 0x3c
	.long	.LVL42
	.long	0x2b4c
	.byte	0
	.uleb128 0x2e
	.long	.LASF217
	.byte	0x1
	.value	0x11f8
	.long	0x73
	.long	.LFB105
	.long	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x1742
	.uleb128 0x31
	.long	.LASF193
	.byte	0x1
	.value	0x11f8
	.long	0x67d
	.long	.LLST14
	.uleb128 0x31
	.long	.LASF88
	.byte	0x1
	.value	0x11f8
	.long	0xbf
	.long	.LLST15
	.uleb128 0x31
	.long	.LASF64
	.byte	0x1
	.value	0x11f8
	.long	0x797
	.long	.LLST16
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11f9
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x11fb
	.long	0x529
	.long	.LLST17
	.uleb128 0x33
	.string	"nfy"
	.byte	0x1
	.value	0x11fc
	.long	0x1742
	.long	.LLST18
	.uleb128 0x39
	.long	0x1342
	.long	.LBB61
	.long	.LBE61-.LBB61
	.byte	0x1
	.value	0x1207
	.long	0x1726
	.uleb128 0x3a
	.long	0x135b
	.long	.LLST19
	.uleb128 0x3a
	.long	0x1367
	.long	.LLST20
	.uleb128 0x3a
	.long	0x134f
	.long	.LLST21
	.uleb128 0x3c
	.long	.LVL53
	.long	0x2b55
	.byte	0
	.uleb128 0x3c
	.long	.LVL46
	.long	0x2b61
	.uleb128 0x3c
	.long	.LVL48
	.long	0x2b6d
	.uleb128 0x3c
	.long	.LVL50
	.long	0x2b6d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd03
	.uleb128 0x2e
	.long	.LASF218
	.byte	0x1
	.value	0x1224
	.long	0x73
	.long	.LFB108
	.long	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x1834
	.uleb128 0x31
	.long	.LASF193
	.byte	0x1
	.value	0x1224
	.long	0x67d
	.long	.LLST22
	.uleb128 0x31
	.long	.LASF174
	.byte	0x1
	.value	0x1225
	.long	0xec1
	.long	.LLST23
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x1227
	.long	0x529
	.long	.LLST24
	.uleb128 0x33
	.string	"ind"
	.byte	0x1
	.value	0x1228
	.long	0x1834
	.long	.LLST25
	.uleb128 0x3b
	.long	0x12d4
	.long	.LBB66
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1234
	.long	0x1818
	.uleb128 0x3a
	.long	0x12fd
	.long	.LLST26
	.uleb128 0x3a
	.long	0x1315
	.long	.LLST27
	.uleb128 0x3a
	.long	0x1309
	.long	.LLST28
	.uleb128 0x3a
	.long	0x12f1
	.long	.LLST29
	.uleb128 0x3a
	.long	0x12e5
	.long	.LLST30
	.uleb128 0x44
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x40
	.long	0x1321
	.long	.LLST31
	.uleb128 0x45
	.long	.Ldebug_ranges0+0x30
	.long	0x180d
	.uleb128 0x40
	.long	0x132e
	.long	.LLST32
	.uleb128 0x3c
	.long	.LVL66
	.long	0x2b79
	.byte	0
	.uleb128 0x3c
	.long	.LVL69
	.long	0x2b85
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL58
	.long	0x2b61
	.uleb128 0x3c
	.long	.LVL60
	.long	0x2b6d
	.uleb128 0x3c
	.long	.LVL63
	.long	0x2b6d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd3a
	.uleb128 0x2e
	.long	.LASF219
	.byte	0x1
	.value	0x1033
	.long	0x73
	.long	.LFB83
	.long	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x18d0
	.uleb128 0x32
	.string	"svc"
	.byte	0x1
	.value	0x1033
	.long	0x18d0
	.long	.LLST33
	.uleb128 0x34
	.long	.LASF220
	.byte	0x1
	.value	0x1035
	.long	0x18d0
	.long	.LLST34
	.uleb128 0x34
	.long	.LASF88
	.byte	0x1
	.value	0x1036
	.long	0xbf
	.long	.LLST35
	.uleb128 0x34
	.long	.LASF119
	.byte	0x1
	.value	0x1037
	.long	0x953
	.long	.LLST36
	.uleb128 0x34
	.long	.LASF221
	.byte	0x1
	.value	0x1038
	.long	0xbf
	.long	.LLST37
	.uleb128 0x29
	.long	.LASF223
	.byte	0x1
	.value	0x1047
	.uleb128 0x46
	.long	0x1214
	.long	.LBB74
	.long	.LBE74-.LBB74
	.byte	0x1
	.value	0x1053
	.uleb128 0x3a
	.long	0x1220
	.long	.LLST38
	.uleb128 0x3a
	.long	0x122b
	.long	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x91e
	.uleb128 0x25
	.long	.LASF224
	.byte	0x1
	.value	0x1090
	.long	0x5b3
	.byte	0x1
	.long	0x1918
	.uleb128 0x22
	.long	.LASF175
	.byte	0x1
	.value	0x1090
	.long	0xb47
	.uleb128 0x23
	.string	"end"
	.byte	0x1
	.value	0x1090
	.long	0xb47
	.uleb128 0x22
	.long	.LASF225
	.byte	0x1
	.value	0x1090
	.long	0xbf
	.uleb128 0x22
	.long	.LASF226
	.byte	0x1
	.value	0x1091
	.long	0xbf
	.byte	0
	.uleb128 0x25
	.long	.LASF227
	.byte	0x1
	.value	0x350
	.long	0x73
	.byte	0x3
	.long	0x194e
	.uleb128 0x22
	.long	.LASF190
	.byte	0x1
	.value	0x350
	.long	0x194e
	.uleb128 0x23
	.string	"bit"
	.byte	0x1
	.value	0x350
	.long	0x73
	.uleb128 0x26
	.string	"val"
	.byte	0x1
	.value	0x352
	.long	0x2ef
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1954
	.uleb128 0xf
	.long	0x2e3
	.uleb128 0x3e
	.long	0x11d5
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a5d
	.uleb128 0x3a
	.long	0x11ed
	.long	.LLST40
	.uleb128 0x3a
	.long	0x11f9
	.long	.LLST41
	.uleb128 0x47
	.long	0x1205
	.long	.L73
	.uleb128 0x3f
	.long	0x11e2
	.uleb128 0x6
	.byte	0x3
	.long	gatt_sc
	.byte	0x9f
	.uleb128 0x3b
	.long	0x1193
	.long	.LBB82
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x10a5
	.long	0x19d9
	.uleb128 0x3a
	.long	0x11b0
	.long	.LLST42
	.uleb128 0x3a
	.long	0x11a4
	.long	.LLST43
	.uleb128 0x44
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x40
	.long	0x11bc
	.long	.LLST44
	.uleb128 0x48
	.long	0x11c8
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.long	.LVL98
	.long	0x2b91
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x18d6
	.long	.LBB86
	.long	.LBE86-.LBB86
	.byte	0x1
	.value	0x10aa
	.long	0x1a12
	.uleb128 0x3a
	.long	0x190b
	.long	.LLST45
	.uleb128 0x3a
	.long	0x18ff
	.long	.LLST46
	.uleb128 0x3a
	.long	0x18f3
	.long	.LLST47
	.uleb128 0x3a
	.long	0x18e7
	.long	.LLST48
	.byte	0
	.uleb128 0x39
	.long	0x1918
	.long	.LBB88
	.long	.LBE88-.LBB88
	.byte	0x1
	.value	0x10ae
	.long	0x1a53
	.uleb128 0x3a
	.long	0x1935
	.long	.LLST49
	.uleb128 0x3a
	.long	0x1929
	.long	.LLST50
	.uleb128 0x42
	.long	.LBB89
	.long	.LBE89-.LBB89
	.uleb128 0x48
	.long	0x1941
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.long	.LVL103
	.long	0x2b9d
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL104
	.long	0x2ba9
	.byte	0
	.uleb128 0x21
	.long	.LASF228
	.byte	0x1
	.value	0x129f
	.byte	0x1
	.long	0x1a83
	.uleb128 0x23
	.string	"cfg"
	.byte	0x1
	.value	0x129f
	.long	0xaaf
	.uleb128 0x24
	.long	.LASF64
	.byte	0x1
	.value	0x12a1
	.long	0x1a83
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xec7
	.uleb128 0x3e
	.long	0x10b7
	.long	.LFB115
	.long	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b56
	.uleb128 0x3f
	.long	0x10c8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.long	0x10d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x48
	.long	0x10e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x43
	.long	0x10ec
	.uleb128 0x43
	.long	0x10f8
	.uleb128 0x42
	.long	.LBB94
	.long	.LBE94-.LBB94
	.uleb128 0x3a
	.long	0x10d4
	.long	.LLST51
	.uleb128 0x3a
	.long	0x10c8
	.long	.LLST52
	.uleb128 0x42
	.long	.LBB95
	.long	.LBE95-.LBB95
	.uleb128 0x43
	.long	0x10e0
	.uleb128 0x40
	.long	0x10ec
	.long	.LLST53
	.uleb128 0x40
	.long	0x10f8
	.long	.LLST54
	.uleb128 0x39
	.long	0x1a5d
	.long	.LBB96
	.long	.LBE96-.LBB96
	.byte	0x1
	.value	0x12b9
	.long	0x1b33
	.uleb128 0x3a
	.long	0x1a6a
	.long	.LLST55
	.uleb128 0x42
	.long	.LBB97
	.long	.LBE97-.LBB97
	.uleb128 0x40
	.long	0x1a76
	.long	.LLST56
	.uleb128 0x3c
	.long	.LVL113
	.long	0x1959
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL110
	.long	0x2b34
	.uleb128 0x3d
	.long	.LVL111
	.long	0x13f7
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	0xfb9
	.long	.LFB84
	.long	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c30
	.uleb128 0x3f
	.long	0xfc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.long	0xfd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3f
	.long	0xfde
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	0xf81
	.long	.LBB106
	.long	.LBE106-.LBB106
	.byte	0x1
	.value	0x1066
	.long	0x1bc4
	.uleb128 0x3a
	.long	0xf9a
	.long	.LLST57
	.uleb128 0x3a
	.long	0xf8e
	.long	.LLST58
	.uleb128 0x42
	.long	.LBB107
	.long	.LBE107-.LBB107
	.uleb128 0x40
	.long	0xfa6
	.long	.LLST59
	.uleb128 0x3c
	.long	.LVL119
	.long	0x2bb5
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x1918
	.long	.LBB108
	.long	.LBE108-.LBB108
	.byte	0x1
	.value	0x1067
	.long	0x1c05
	.uleb128 0x3a
	.long	0x1935
	.long	.LLST60
	.uleb128 0x3a
	.long	0x1929
	.long	.LLST61
	.uleb128 0x42
	.long	.LBB109
	.long	.LBE109-.LBB109
	.uleb128 0x48
	.long	0x1941
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3c
	.long	.LVL121
	.long	0x2b9d
	.byte	0
	.byte	0
	.uleb128 0x44
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x3a
	.long	0xfc6
	.long	.LLST62
	.uleb128 0x3a
	.long	0xfd2
	.long	.LLST63
	.uleb128 0x3a
	.long	0xfde
	.long	.LLST64
	.uleb128 0x49
	.long	.LVL125
	.long	0x2ba9
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x1103
	.long	.LFB116
	.long	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0e
	.uleb128 0x3f
	.long	0x1114
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.long	0x1120
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x48
	.long	0x112c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x43
	.long	0x1138
	.uleb128 0x43
	.long	0x1144
	.uleb128 0x42
	.long	.LBB119
	.long	.LBE119-.LBB119
	.uleb128 0x3a
	.long	0x1120
	.long	.LLST65
	.uleb128 0x3a
	.long	0x1114
	.long	.LLST66
	.uleb128 0x42
	.long	.LBB120
	.long	.LBE120-.LBB120
	.uleb128 0x43
	.long	0x112c
	.uleb128 0x40
	.long	0x1138
	.long	.LLST67
	.uleb128 0x40
	.long	0x1144
	.long	.LLST68
	.uleb128 0x41
	.long	.LBB121
	.long	.LBE121-.LBB121
	.long	0x1cd2
	.uleb128 0x40
	.long	0x114f
	.long	.LLST69
	.uleb128 0x3c
	.long	.LVL133
	.long	0x2bc1
	.uleb128 0x3c
	.long	.LVL134
	.long	0x2bcd
	.uleb128 0x3c
	.long	.LVL136
	.long	0x2bcd
	.byte	0
	.uleb128 0x39
	.long	0x14cd
	.long	.LBB122
	.long	.LBE122-.LBB122
	.byte	0x1
	.value	0x12e2
	.long	0x1cf9
	.uleb128 0x3a
	.long	0x14e6
	.long	.LLST70
	.uleb128 0x3a
	.long	0x14da
	.long	.LLST71
	.byte	0
	.uleb128 0x3c
	.long	.LVL132
	.long	0x2b34
	.uleb128 0x3c
	.long	.LVL137
	.long	0x2bd9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF229
	.byte	0x1
	.value	0x123c
	.byte	0x1
	.long	0x1d54
	.uleb128 0x23
	.string	"cfg"
	.byte	0x1
	.value	0x123c
	.long	0xaaf
	.uleb128 0x22
	.long	.LASF174
	.byte	0x1
	.value	0x123d
	.long	0xec1
	.uleb128 0x24
	.long	.LASF64
	.byte	0x1
	.value	0x123f
	.long	0xec7
	.uleb128 0x24
	.long	.LASF230
	.byte	0x1
	.value	0x1240
	.long	0x1a83
	.uleb128 0x29
	.long	.LASF231
	.byte	0x1
	.value	0x124b
	.byte	0
	.uleb128 0x3e
	.long	0x1045
	.long	.LFB110
	.long	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eb7
	.uleb128 0x3f
	.long	0x1056
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3f
	.long	0x1062
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.long	0x106e
	.long	.LLST72
	.uleb128 0x43
	.long	0x107a
	.uleb128 0x43
	.long	0x1086
	.uleb128 0x41
	.long	.LBB131
	.long	.LBE131-.LBB131
	.long	0x1e9b
	.uleb128 0x3a
	.long	0x1062
	.long	.LLST73
	.uleb128 0x3a
	.long	0x1056
	.long	.LLST74
	.uleb128 0x42
	.long	.LBB132
	.long	.LBE132-.LBB132
	.uleb128 0x43
	.long	0x106e
	.uleb128 0x40
	.long	0x107a
	.long	.LLST75
	.uleb128 0x40
	.long	0x1086
	.long	.LLST76
	.uleb128 0x44
	.long	.Ldebug_ranges0+0x78
	.uleb128 0x40
	.long	0x1091
	.long	.LLST77
	.uleb128 0x40
	.long	0x109d
	.long	.LLST78
	.uleb128 0x39
	.long	0x1d0e
	.long	.LBB134
	.long	.LBE134-.LBB134
	.byte	0x1
	.value	0x1266
	.long	0x1e60
	.uleb128 0x3a
	.long	0x1d27
	.long	.LLST79
	.uleb128 0x3a
	.long	0x1d1b
	.long	.LLST80
	.uleb128 0x42
	.long	.LBB135
	.long	.LBE135-.LBB135
	.uleb128 0x48
	.long	0x1d33
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x40
	.long	0x1d3f
	.long	.LLST81
	.uleb128 0x47
	.long	0x1d4b
	.long	.L125
	.uleb128 0x4b
	.long	0x18d6
	.long	.LBB136
	.long	.Ldebug_ranges0+0x90
	.byte	0x1
	.value	0x1249
	.uleb128 0x3a
	.long	0x190b
	.long	.LLST82
	.uleb128 0x3a
	.long	0x18ff
	.long	.LLST83
	.uleb128 0x3a
	.long	0x18f3
	.long	.LLST84
	.uleb128 0x3a
	.long	0x18e7
	.long	.LLST85
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL152
	.long	0x2bc1
	.uleb128 0x3c
	.long	.LVL163
	.long	0x2bcd
	.uleb128 0x3c
	.long	.LVL165
	.long	0x1748
	.uleb128 0x4c
	.long	.LVL168
	.long	0x1674
	.long	0x1e8f
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.long	.LVL170
	.long	0x2bcd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL148
	.long	0x2b40
	.uleb128 0x3c
	.long	.LVL149
	.long	0x2b40
	.uleb128 0x3c
	.long	.LVL176
	.long	0x2b4c
	.byte	0
	.uleb128 0x4d
	.long	.LASF243
	.byte	0x1
	.value	0x1088
	.long	.LFB86
	.long	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f05
	.uleb128 0x4c
	.long	.LVL177
	.long	0x183a
	.long	0x1ee4
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	gap_svc
	.byte	0
	.uleb128 0x4c
	.long	.LVL178
	.long	0x183a
	.long	0x1efb
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	gatt_svc
	.byte	0
	.uleb128 0x3c
	.long	.LVL179
	.long	0x2be5
	.byte	0
	.uleb128 0x37
	.long	.LASF233
	.byte	0x1
	.value	0x10b4
	.long	0x73
	.long	.LFB89
	.long	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f77
	.uleb128 0x38
	.string	"svc"
	.byte	0x1
	.value	0x10b4
	.long	0x18d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"err"
	.byte	0x1
	.value	0x10b6
	.long	0x73
	.long	.LLST86
	.uleb128 0x3c
	.long	.LVL181
	.long	0x2b40
	.uleb128 0x3c
	.long	.LVL182
	.long	0x2b40
	.uleb128 0x4c
	.long	.LVL183
	.long	0x183a
	.long	0x1f64
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3c
	.long	.LVL186
	.long	0x1959
	.uleb128 0x3c
	.long	.LVL187
	.long	0x2b4c
	.byte	0
	.uleb128 0x37
	.long	.LASF234
	.byte	0x1
	.value	0x10c6
	.long	0x73
	.long	.LFB90
	.long	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x2046
	.uleb128 0x38
	.string	"svc"
	.byte	0x1
	.value	0x10c6
	.long	0x18d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3b
	.long	0x1265
	.long	.LBB149
	.long	.Ldebug_ranges0+0xa8
	.byte	0x1
	.value	0x10c9
	.long	0x203c
	.uleb128 0x3a
	.long	0x1275
	.long	.LLST87
	.uleb128 0x3a
	.long	0x1280
	.long	.LLST88
	.uleb128 0x44
	.long	.Ldebug_ranges0+0xa8
	.uleb128 0x40
	.long	0x128b
	.long	.LLST89
	.uleb128 0x40
	.long	0x1296
	.long	.LLST90
	.uleb128 0x4e
	.long	0x1237
	.long	.LBB151
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xcb
	.long	0x200c
	.uleb128 0x3a
	.long	0x1243
	.long	.LLST91
	.uleb128 0x3a
	.long	0x1259
	.long	.LLST92
	.uleb128 0x3a
	.long	0x124e
	.long	.LLST93
	.byte	0
	.uleb128 0x4f
	.long	0xf65
	.long	.LBB155
	.long	.LBE155-.LBB155
	.byte	0x1
	.byte	0xc9
	.uleb128 0x3a
	.long	0xf75
	.long	.LLST94
	.uleb128 0x4f
	.long	0xf49
	.long	.LBB156
	.long	.LBE156-.LBB156
	.byte	0x1
	.byte	0x64
	.uleb128 0x50
	.long	0xf59
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL194
	.long	0x1959
	.byte	0
	.uleb128 0x37
	.long	.LASF235
	.byte	0x1
	.value	0x10d0
	.long	0x1bf
	.long	.LFB91
	.long	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x20da
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x10d0
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x10d0
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x10d1
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF236
	.byte	0x1
	.value	0x10d1
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x10d1
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2d
	.long	.LASF136
	.byte	0x1
	.value	0x10d2
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x2d
	.long	.LASF237
	.byte	0x1
	.value	0x10d2
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x33
	.string	"len"
	.byte	0x1
	.value	0x10d4
	.long	0xbf
	.long	.LLST95
	.byte	0
	.uleb128 0x2e
	.long	.LASF238
	.byte	0x1
	.value	0x1005
	.long	0x1bf
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x2161
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x1005
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x1006
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x1006
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x1007
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x1007
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x2f
	.long	.LASF239
	.byte	0x1
	.value	0x1009
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x3c
	.long	.LVL207
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL208
	.long	0x2b4c
	.byte	0
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.value	0xfff
	.long	0x1bf
	.long	.LFB80
	.long	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d0
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0xfff
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0xfff
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x1000
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x1000
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x1000
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3c
	.long	.LVL210
	.long	0x2046
	.byte	0
	.uleb128 0x37
	.long	.LASF241
	.byte	0x1
	.value	0x10dd
	.long	0x1bf
	.long	.LFB92
	.long	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x2275
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x10dd
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x10de
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x10df
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x10df
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x10df
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF79
	.byte	0x1
	.value	0x10e1
	.long	0xb41
	.long	.LLST96
	.uleb128 0x41
	.long	.LBB164
	.long	.LBE164-.LBB164
	.long	0x2262
	.uleb128 0x2f
	.long	.LASF179
	.byte	0x1
	.value	0x10e3
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.byte	0
	.uleb128 0x3c
	.long	.LVL217
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL218
	.long	0x2b4c
	.byte	0
	.uleb128 0x37
	.long	.LASF242
	.byte	0x1
	.value	0x1183
	.long	0x1bf
	.long	.LFB99
	.long	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x2323
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x1183
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x1184
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x1184
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x1185
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x1185
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x33
	.string	"ccc"
	.byte	0x1
	.value	0x1187
	.long	0x10b1
	.long	.LLST97
	.uleb128 0x2f
	.long	.LASF136
	.byte	0x1
	.value	0x1188
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1189
	.long	0x97
	.long	.LLST98
	.uleb128 0x3c
	.long	.LVL222
	.long	0x2b34
	.uleb128 0x3c
	.long	.LVL224
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL225
	.long	0x2b4c
	.byte	0
	.uleb128 0x51
	.long	.LASF244
	.byte	0x1
	.value	0x1150
	.long	.LFB96
	.long	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x23eb
	.uleb128 0x2d
	.long	.LASF177
	.byte	0x1
	.value	0x1150
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF178
	.byte	0x1
	.value	0x1150
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF102
	.byte	0x1
	.value	0x1151
	.long	0xa05
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF116
	.byte	0x1
	.value	0x1151
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.string	"svc"
	.byte	0x1
	.value	0x1153
	.long	0x18d0
	.long	.LLST99
	.uleb128 0x41
	.long	.LBB165
	.long	.LBE165-.LBB165
	.long	0x23b7
	.uleb128 0x33
	.string	"i"
	.byte	0x1
	.value	0x1167
	.long	0x73
	.long	.LLST100
	.uleb128 0x44
	.long	.Ldebug_ranges0+0xe8
	.uleb128 0x34
	.long	.LASF143
	.byte	0x1
	.value	0x1169
	.long	0x953
	.long	.LLST101
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	0xf65
	.long	.LBB168
	.long	.LBE168-.LBB168
	.byte	0x1
	.value	0x115c
	.uleb128 0x3a
	.long	0xf75
	.long	.LLST102
	.uleb128 0x4f
	.long	0xf49
	.long	.LBB169
	.long	.LBE169-.LBB169
	.byte	0x1
	.byte	0x64
	.uleb128 0x3a
	.long	0xf59
	.long	.LLST102
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF245
	.byte	0x1
	.value	0x1108
	.long	0x1bf
	.long	.LFB94
	.long	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ab
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x1108
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x1109
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x110a
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x110a
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x110a
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF246
	.byte	0x1
	.value	0x110c
	.long	0x953
	.long	.LLST104
	.uleb128 0x34
	.long	.LASF79
	.byte	0x1
	.value	0x110d
	.long	0xb41
	.long	.LLST105
	.uleb128 0x52
	.string	"pdu"
	.byte	0x1
	.value	0x110e
	.long	0xde0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x34
	.long	.LASF237
	.byte	0x1
	.value	0x110f
	.long	0xb4
	.long	.LLST106
	.uleb128 0x3c
	.long	.LVL251
	.long	0x2323
	.uleb128 0x3c
	.long	.LVL252
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL253
	.long	0x2b4c
	.byte	0
	.uleb128 0x3e
	.long	0x115d
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ee
	.uleb128 0x3a
	.long	0x117a
	.long	.LLST107
	.uleb128 0x48
	.long	0x1186
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3f
	.long	0x116e
	.uleb128 0x6
	.byte	0xfa
	.long	0x116e
	.byte	0x9f
	.uleb128 0x3c
	.long	.LVL258
	.long	0x2323
	.uleb128 0x3c
	.long	.LVL259
	.long	0x2b4c
	.byte	0
	.uleb128 0x2c
	.long	.LASF247
	.byte	0x1
	.value	0x106b
	.long	.LFB85
	.long	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x260a
	.uleb128 0x2d
	.long	.LASF58
	.byte	0x1
	.value	0x106b
	.long	0x333
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"sc"
	.byte	0x1
	.value	0x106d
	.long	0x120e
	.long	.LLST108
	.uleb128 0x2f
	.long	.LASF248
	.byte	0x1
	.value	0x1074
	.long	0x260a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3b
	.long	0xf81
	.long	.LBB177
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.value	0x107a
	.long	0x2570
	.uleb128 0x3a
	.long	0xf9a
	.long	.LLST109
	.uleb128 0x3a
	.long	0xf8e
	.long	.LLST110
	.uleb128 0x44
	.long	.Ldebug_ranges0+0x100
	.uleb128 0x40
	.long	0xfa6
	.long	.LLST111
	.uleb128 0x3c
	.long	.LVL264
	.long	0x2bb5
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x115d
	.long	.LBB181
	.long	.LBE181-.LBB181
	.byte	0x1
	.value	0x1081
	.long	0x25bd
	.uleb128 0x3a
	.long	0x117a
	.long	.LLST112
	.uleb128 0x3a
	.long	0x116e
	.long	.LLST113
	.uleb128 0x42
	.long	.LBB182
	.long	.LBE182-.LBB182
	.uleb128 0x43
	.long	0x1186
	.uleb128 0x3d
	.long	.LVL266
	.long	0x24ab
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x53
	.long	0x116e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0x12a2
	.long	.LBB183
	.long	.LBE183-.LBB183
	.byte	0x1
	.value	0x1086
	.long	0x2600
	.uleb128 0x3a
	.long	0x12bb
	.long	.LLST114
	.uleb128 0x3a
	.long	0x12af
	.long	.LLST115
	.uleb128 0x42
	.long	.LBB184
	.long	.LBE184-.LBB184
	.uleb128 0x40
	.long	0x12c7
	.long	.LLST116
	.uleb128 0x3c
	.long	.LVL268
	.long	0x2b91
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LVL269
	.long	0x2b4c
	.byte	0
	.uleb128 0x14
	.long	0xbf
	.long	0x261a
	.uleb128 0x15
	.long	0x1a9
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF249
	.byte	0x1
	.value	0x117a
	.long	0x953
	.long	.LFB98
	.long	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x2665
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x117a
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.long	.LASF22
	.byte	0x1
	.value	0x117c
	.long	0x953
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x3c
	.long	.LVL272
	.long	0x2323
	.uleb128 0x3c
	.long	.LVL273
	.long	0x2b4c
	.byte	0
	.uleb128 0x37
	.long	.LASF250
	.byte	0x1
	.value	0x112a
	.long	0x1bf
	.long	.LFB95
	.long	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x2725
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x112a
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x112b
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x112b
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x112c
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x112c
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF251
	.byte	0x1
	.value	0x112e
	.long	0x2725
	.long	.LLST117
	.uleb128 0x52
	.string	"pdu"
	.byte	0x1
	.value	0x112f
	.long	0xe37
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x34
	.long	.LASF22
	.byte	0x1
	.value	0x1130
	.long	0x8df
	.long	.LLST118
	.uleb128 0x34
	.long	.LASF237
	.byte	0x1
	.value	0x1131
	.long	0xb4
	.long	.LLST119
	.uleb128 0x3c
	.long	.LVL276
	.long	0x261a
	.uleb128 0x3c
	.long	.LVL285
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL286
	.long	0x2b4c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x959
	.uleb128 0x37
	.long	.LASF252
	.byte	0x1
	.value	0x11d7
	.long	0x1bf
	.long	.LFB102
	.long	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x27c2
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x11d7
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x11d8
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x11d8
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11d9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x11d9
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF136
	.byte	0x1
	.value	0x11db
	.long	0x27c2
	.long	.LLST120
	.uleb128 0x2f
	.long	.LASF253
	.byte	0x1
	.value	0x11dc
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x3c
	.long	.LVL290
	.long	0x2046
	.uleb128 0x3c
	.long	.LVL291
	.long	0x2b4c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x981
	.uleb128 0x37
	.long	.LASF254
	.byte	0x1
	.value	0x11e0
	.long	0x1bf
	.long	.LFB103
	.long	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x2847
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x11e0
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x11e1
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x11e1
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11e2
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x11e2
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x34
	.long	.LASF136
	.byte	0x1
	.value	0x11e4
	.long	0x1b9
	.long	.LLST121
	.uleb128 0x3c
	.long	.LVL295
	.long	0x2046
	.byte	0
	.uleb128 0x37
	.long	.LASF255
	.byte	0x1
	.value	0x11e8
	.long	0x1bf
	.long	.LFB104
	.long	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x28c2
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x11e8
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x11e9
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x38
	.string	"buf"
	.byte	0x1
	.value	0x11e9
	.long	0x1b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x11ea
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2d
	.long	.LASF68
	.byte	0x1
	.value	0x11ea
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x24
	.long	.LASF136
	.byte	0x1
	.value	0x11ec
	.long	0x28c2
	.uleb128 0x3c
	.long	.LVL297
	.long	0x2046
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x99c
	.uleb128 0x37
	.long	.LASF256
	.byte	0x1
	.value	0x127c
	.long	0x73
	.long	.LFB111
	.long	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x295c
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x127c
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF143
	.byte	0x1
	.value	0x127c
	.long	0x8df
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF64
	.byte	0x1
	.value	0x127d
	.long	0x797
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.string	"len"
	.byte	0x1
	.value	0x127d
	.long	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x52
	.string	"nfy"
	.byte	0x1
	.value	0x127f
	.long	0xe65
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4c
	.long	.LVL299
	.long	0x1674
	.long	0x2949
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x3c
	.long	.LVL300
	.long	0x2323
	.uleb128 0x3c
	.long	.LVL301
	.long	0x2b4c
	.byte	0
	.uleb128 0x3e
	.long	0x115d
	.long	.LFB112
	.long	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x29bb
	.uleb128 0x3a
	.long	0x116e
	.long	.LLST122
	.uleb128 0x3a
	.long	0x117a
	.long	.LLST123
	.uleb128 0x43
	.long	0x1186
	.uleb128 0x54
	.long	.LVL303
	.long	0x1748
	.long	0x29a2
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x55
	.long	.LVL305
	.long	0x24ab
	.uleb128 0x36
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x53
	.long	0x116e
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF257
	.byte	0x1
	.value	0x129b
	.long	0xbf
	.long	.LFB113
	.long	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f7
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x129b
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x55
	.long	.LVL307
	.long	0x2bf1
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4d
	.long	.LASF258
	.byte	0x1
	.value	0x12ee
	.long	.LFB117
	.long	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a26
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x12ee
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LVL309
	.long	0x2323
	.byte	0
	.uleb128 0x4d
	.long	.LASF259
	.byte	0x1
	.value	0x12f3
	.long	.LFB118
	.long	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a55
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x12f3
	.long	0x67d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LVL311
	.long	0x2323
	.byte	0
	.uleb128 0x2f
	.long	.LASF260
	.byte	0x1
	.value	0xffc
	.long	0x2a68
	.uleb128 0x6
	.byte	0x3
	.long	.LC19
	.byte	0x9f
	.uleb128 0xf
	.long	0x206
	.uleb128 0x56
	.long	.LASF261
	.byte	0x1
	.value	0xffd
	.long	0x588
	.value	0x341
	.uleb128 0x52
	.string	"db"
	.byte	0x1
	.value	0xffe
	.long	0x12a
	.uleb128 0x5
	.byte	0x3
	.long	db
	.uleb128 0x14
	.long	0x855
	.long	0x2a9c
	.uleb128 0x15
	.long	0x1a9
	.byte	0x4
	.byte	0
	.uleb128 0x2f
	.long	.LASF262
	.byte	0x1
	.value	0x100d
	.long	0x2a8c
	.uleb128 0x5
	.byte	0x3
	.long	gap_attrs
	.uleb128 0x2f
	.long	.LASF263
	.byte	0x1
	.value	0x101e
	.long	0x91e
	.uleb128 0x5
	.byte	0x3
	.long	gap_svc
	.uleb128 0x14
	.long	0xa2b
	.long	0x2ad0
	.uleb128 0x15
	.long	0x1a9
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.long	.LASF264
	.byte	0x1
	.value	0x101f
	.long	0x2ac0
	.uleb128 0x5
	.byte	0x3
	.long	sc_ccc_cfg
	.uleb128 0x14
	.long	0x855
	.long	0x2af2
	.uleb128 0x15
	.long	0x1a9
	.byte	0x3
	.byte	0
	.uleb128 0x2f
	.long	.LASF265
	.byte	0x1
	.value	0x1025
	.long	0x2ae2
	.uleb128 0x5
	.byte	0x3
	.long	gatt_attrs
	.uleb128 0x2f
	.long	.LASF266
	.byte	0x1
	.value	0x1032
	.long	0x91e
	.uleb128 0x5
	.byte	0x3
	.long	gatt_svc
	.uleb128 0x2f
	.long	.LASF173
	.byte	0x1
	.value	0x1061
	.long	0xd91
	.uleb128 0x5
	.byte	0x3
	.long	gatt_sc
	.uleb128 0x57
	.long	.LASF287
	.byte	0x1
	.value	0x222
	.long	0x7a
	.uleb128 0x58
	.long	.LASF267
	.long	.LASF267
	.byte	0x1
	.value	0xd9e
	.uleb128 0x58
	.long	.LASF268
	.long	.LASF268
	.byte	0x1
	.value	0xb7e
	.uleb128 0x59
	.long	.LASF288
	.long	.LASF288
	.uleb128 0x58
	.long	.LASF269
	.long	.LASF269
	.byte	0x1
	.value	0xec0
	.uleb128 0x58
	.long	.LASF270
	.long	.LASF270
	.byte	0x1
	.value	0xf9b
	.uleb128 0x58
	.long	.LASF271
	.long	.LASF271
	.byte	0x1
	.value	0xa9d
	.uleb128 0x58
	.long	.LASF272
	.long	.LASF272
	.byte	0x1
	.value	0xf9e
	.uleb128 0x58
	.long	.LASF273
	.long	.LASF273
	.byte	0x1
	.value	0xaf2
	.uleb128 0x58
	.long	.LASF274
	.long	.LASF274
	.byte	0x1
	.value	0x34c
	.uleb128 0x58
	.long	.LASF275
	.long	.LASF275
	.byte	0x1
	.value	0x349
	.uleb128 0x58
	.long	.LASF276
	.long	.LASF276
	.byte	0x1
	.value	0x383
	.uleb128 0x58
	.long	.LASF277
	.long	.LASF277
	.byte	0x1
	.value	0x34e
	.uleb128 0x58
	.long	.LASF278
	.long	.LASF278
	.byte	0x1
	.value	0xb93
	.uleb128 0x58
	.long	.LASF279
	.long	.LASF279
	.byte	0x1
	.value	0xb92
	.uleb128 0x58
	.long	.LASF280
	.long	.LASF280
	.byte	0x1
	.value	0xd47
	.uleb128 0x58
	.long	.LASF281
	.long	.LASF281
	.byte	0x1
	.value	0x382
	.uleb128 0x58
	.long	.LASF282
	.long	.LASF282
	.byte	0x1
	.value	0xf9a
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
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
	.uleb128 0x50
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.long	.LVL3
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL8-1
	.long	.LFE100
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL8-1
	.value	0x1
	.byte	0x52
	.long	.LVL8-1
	.long	.LFE100
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL8-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL12
	.long	.LVL13-1
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL15
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20-1
	.value	0x1
	.byte	0x52
	.long	.LVL20-1
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL23
	.long	.LVL29
	.value	0x1
	.byte	0x52
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x52
	.long	.LVL33
	.long	.LVL34
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x52
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL27
	.value	0x4
	.byte	0x76
	.sleb128 64
	.byte	0x9f
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL26
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL37
	.long	.LVL43
	.value	0x1
	.byte	0x56
	.long	.LVL43
	.long	.LFE93
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL39
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST13:
	.long	.LVL39
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	.LVL45
	.long	.LFE105
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST15:
	.long	.LVL44
	.long	.LVL46-1
	.value	0x1
	.byte	0x52
	.long	.LVL46-1
	.long	.LFE105
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL44
	.long	.LVL46-1
	.value	0x1
	.byte	0x51
	.long	.LVL46-1
	.long	.LFE105
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST17:
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL54
	.value	0x1
	.byte	0x53
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL49
	.long	.LVL50-1
	.value	0x1
	.byte	0x50
	.long	.LVL50-1
	.long	.LVL51
	.value	0x1
	.byte	0x56
	.long	.LVL51
	.long	.LVL53-1
	.value	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL52
	.long	.LVL54
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL52
	.long	.LVL54
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST21:
	.long	.LVL52
	.long	.LVL54
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST22:
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL72
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL72
	.long	.LFE108
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST23:
	.long	.LVL56
	.long	.LVL58-1
	.value	0x1
	.byte	0x52
	.long	.LVL58-1
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	.LVL67
	.long	.LVL70
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x53
	.long	.LVL71
	.long	.LFE108
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LVL70
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL61
	.long	.LVL62
	.value	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LVL64
	.value	0x1
	.byte	0x56
	.long	.LVL64
	.long	.LVL66-1
	.value	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL65
	.long	.LVL70
	.value	0x6
	.byte	0x3
	.long	gatt_indicate_rsp
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL65
	.long	.LVL70
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL65
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	.LVL67
	.long	.LVL70
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x52
	.long	.LVL66-1
	.long	.LVL70
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	0
	.long	0
.LLST30:
	.long	.LVL65
	.long	.LVL70
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	0
	.long	0
.LLST31:
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x50
	.long	.LVL68
	.long	.LVL70
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST32:
	.long	.LVL65
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	.LVL67
	.long	.LVL70
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL73
	.long	.LVL87
	.value	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LVL88
	.value	0x3
	.byte	0x72
	.sleb128 -8
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89
	.value	0x1
	.byte	0x50
	.long	.LVL89
	.long	.LVL90
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x50
	.long	.LVL91
	.long	.LFE83
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL77
	.long	.LVL78
	.value	0x3
	.byte	0x76
	.sleb128 -8
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x9
	.byte	0x3
	.long	db+4
	.byte	0x6
	.byte	0x38
	.byte	0x1c
	.byte	0x9f
	.long	.LVL90
	.long	.LVL92
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL78
	.long	.LVL79
	.value	0x1
	.byte	0x56
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x56
	.long	.LVL81
	.long	.LVL85
	.value	0x1
	.byte	0x51
	.long	.LVL85
	.long	.LVL90
	.value	0x1
	.byte	0x56
	.long	.LVL92
	.long	.LVL94
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST36:
	.long	.LVL74
	.long	.LVL86
	.value	0x1
	.byte	0x52
	.long	.LVL88
	.long	.LVL92
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST37:
	.long	.LVL75
	.long	.LVL93
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST38:
	.long	.LVL86
	.long	.LVL88
	.value	0x6
	.byte	0x3
	.long	db
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL86
	.long	.LVL88
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST40:
	.long	.LVL95
	.long	.LVL98-1
	.value	0x1
	.byte	0x50
	.long	.LVL98-1
	.long	.LFE129
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x52
	.long	.LVL96
	.long	.LFE129
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL95
	.long	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL95
	.long	.LVL97
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	.LVL97
	.long	.LVL98-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL98-1
	.long	.LVL98
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL95
	.long	.LVL98
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST46:
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST47:
	.long	.LVL99
	.long	.LVL100
	.value	0x6
	.byte	0x3
	.long	gatt_sc+42
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL99
	.long	.LVL100
	.value	0x6
	.byte	0x3
	.long	gatt_sc+40
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL101
	.long	.LVL103
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL101
	.long	.LVL102
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	.LVL102
	.long	.LVL103-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL103-1
	.long	.LVL103
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL107
	.long	.LVL116
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST52:
	.long	.LVL107
	.long	.LVL109
	.value	0x1
	.byte	0x50
	.long	.LVL109
	.long	.LVL116
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST53:
	.long	.LVL108
	.long	.LVL116
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST54:
	.long	.LVL108
	.long	.LVL109
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL109
	.long	.LVL116
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST55:
	.long	.LVL112
	.long	.LVL114
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST56:
	.long	.LVL112
	.long	.LVL114
	.value	0x3
	.byte	0x73
	.sleb128 12
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL117
	.long	.LVL119
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL117
	.long	.LVL118
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	.LVL118
	.long	.LVL119-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL119-1
	.long	.LVL119
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL117
	.long	.LVL119
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL119
	.long	.LVL121
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST61:
	.long	.LVL119
	.long	.LVL120
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	.LVL120
	.long	.LVL121-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL121-1
	.long	.LVL121
	.value	0x6
	.byte	0x3
	.long	gatt_sc+80
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL122
	.long	.LVL124
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST63:
	.long	.LVL122
	.long	.LVL123
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST64:
	.long	.LVL122
	.long	.LVL125
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST65:
	.long	.LVL128
	.long	.LVL145
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST66:
	.long	.LVL128
	.long	.LVL130
	.value	0x1
	.byte	0x50
	.long	.LVL130
	.long	.LVL145
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST67:
	.long	.LVL129
	.long	.LVL145
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST68:
	.long	.LVL131
	.long	.LVL141
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL142
	.long	.LVL143
	.value	0x1
	.byte	0x50
	.long	.LVL143
	.long	.LVL145
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST69:
	.long	.LVL133
	.long	.LVL134-1
	.value	0x1
	.byte	0x50
	.long	.LVL135
	.long	.LVL136-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST70:
	.long	.LVL138
	.long	.LVL140
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST71:
	.long	.LVL138
	.long	.LVL139
	.value	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL139
	.long	.LVL140
	.value	0xc
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x34
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL147
	.long	.LVL175
	.value	0x1
	.byte	0x53
	.long	.LVL175
	.long	.LFE110
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST73:
	.long	.LVL150
	.long	.LVL174
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST74:
	.long	.LVL150
	.long	.LVL151
	.value	0x1
	.byte	0x56
	.long	.LVL151
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST75:
	.long	.LVL151
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST76:
	.long	.LVL151
	.long	.LVL172
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL173
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST77:
	.long	.LVL153
	.long	.LVL154
	.value	0x1
	.byte	0x50
	.long	.LVL154
	.long	.LVL156
	.value	0x1
	.byte	0x56
	.long	.LVL162
	.long	.LVL163-1
	.value	0x1
	.byte	0x50
	.long	.LVL163-1
	.long	.LVL164
	.value	0x1
	.byte	0x56
	.long	.LVL164
	.long	.LVL165-1
	.value	0x1
	.byte	0x50
	.long	.LVL165-1
	.long	.LVL166
	.value	0x1
	.byte	0x56
	.long	.LVL166
	.long	.LVL167
	.value	0x1
	.byte	0x50
	.long	.LVL167
	.long	.LVL171
	.value	0x1
	.byte	0x56
	.long	.LVL173
	.long	.LVL174
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST78:
	.long	.LVL165
	.long	.LVL166
	.value	0x1
	.byte	0x50
	.long	.LVL168
	.long	.LVL169
	.value	0x1
	.byte	0x50
	.long	.LVL169
	.long	.LVL171
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	.LVL173
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0
	.long	0
.LLST79:
	.long	.LVL155
	.long	.LVL157
	.value	0x1
	.byte	0x50
	.long	.LVL157
	.long	.LVL162
	.value	0x2
	.byte	0x73
	.sleb128 20
	.long	0
	.long	0
.LLST80:
	.long	.LVL155
	.long	.LVL162
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST81:
	.long	.LVL157
	.long	.LVL162
	.value	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.long	0
	.long	0
.LLST82:
	.long	.LVL158
	.long	.LVL159
	.value	0x1
	.byte	0x50
	.long	.LVL160
	.long	.LVL162
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST83:
	.long	.LVL158
	.long	.LVL159
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	.LVL160
	.long	.LVL162
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST84:
	.long	.LVL158
	.long	.LVL159
	.value	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.long	.LVL160
	.long	.LVL161
	.value	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x23
	.uleb128 0xe
	.byte	0x9f
	.long	0
	.long	0
.LLST85:
	.long	.LVL158
	.long	.LVL159
	.value	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.long	.LVL160
	.long	.LVL161
	.value	0x6
	.byte	0x91
	.sleb128 -52
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x9f
	.long	0
	.long	0
.LLST86:
	.long	.LVL183
	.long	.LVL184
	.value	0x1
	.byte	0x50
	.long	.LVL184
	.long	.LVL185
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST87:
	.long	.LVL189
	.long	.LVL193
	.value	0x6
	.byte	0x3
	.long	db
	.byte	0x9f
	.long	.LVL195
	.long	.LVL198
	.value	0x6
	.byte	0x3
	.long	db
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL189
	.long	.LVL193
	.value	0x1
	.byte	0x53
	.long	.LVL195
	.long	.LVL198
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST89:
	.long	.LVL189
	.long	.LVL192
	.value	0x1
	.byte	0x51
	.long	.LVL195
	.long	.LVL196
	.value	0x1
	.byte	0x50
	.long	.LVL196
	.long	.LVL198
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST90:
	.long	.LVL189
	.long	.LVL191
	.value	0x1
	.byte	0x50
	.long	.LVL195
	.long	.LVL196
	.value	0x1
	.byte	0x50
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x51
	.long	.LVL197
	.long	.LVL198
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST91:
	.long	.LVL190
	.long	.LVL195
	.value	0x6
	.byte	0x3
	.long	db
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL190
	.long	.LVL195
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST93:
	.long	.LVL190
	.long	.LVL192
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST94:
	.long	.LVL195
	.long	.LVL196
	.value	0x1
	.byte	0x50
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST95:
	.long	.LVL200
	.long	.LVL201
	.value	0x1d
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL201
	.long	.LVL202
	.value	0x1d
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL202
	.long	.LVL203
	.value	0x1f
	.byte	0x91
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL203
	.long	.LVL204
	.value	0x21
	.byte	0x91
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL204
	.long	.LVL205
	.value	0x21
	.byte	0x91
	.sleb128 24
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x91
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x1c
	.byte	0x12
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x14
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL212
	.long	.LVL213
	.value	0x1
	.byte	0x50
	.long	.LVL213
	.long	.LVL214
	.value	0x2
	.byte	0x72
	.sleb128 12
	.long	.LVL214
	.long	.LVL215
	.value	0x1
	.byte	0x50
	.long	.LVL215
	.long	.LVL216
	.value	0x2
	.byte	0x72
	.sleb128 12
	.long	0
	.long	0
.LLST97:
	.long	.LVL220
	.long	.LVL227
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST98:
	.long	.LVL220
	.long	.LVL221
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL221
	.long	.LVL226
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST99:
	.long	.LVL230
	.long	.LVL239
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST100:
	.long	.LVL231
	.long	.LVL240
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST101:
	.long	.LVL232
	.long	.LVL233
	.value	0x1
	.byte	0x50
	.long	.LVL235
	.long	.LVL236-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST102:
	.long	.LVL237
	.long	.LVL238
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL242
	.long	.LVL244
	.value	0x1
	.byte	0x50
	.long	.LVL244
	.long	.LVL250
	.value	0x2
	.byte	0x76
	.sleb128 12
	.long	0
	.long	0
.LLST105:
	.long	.LVL243
	.long	.LVL248
	.value	0x1
	.byte	0x57
	.long	.LVL248
	.long	.LVL250
	.value	0x5
	.byte	0x76
	.sleb128 12
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	0
	.long	0
.LLST106:
	.long	.LVL245
	.long	.LVL246
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL246
	.long	.LVL247
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL249
	.long	.LVL254
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST107:
	.long	.LVL255
	.long	.LVL257
	.value	0x1
	.byte	0x50
	.long	.LVL257
	.long	.LVL258-1
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL258-1
	.long	.LFE127
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST108:
	.long	.LVL261
	.long	.LVL263
	.value	0x3
	.byte	0x73
	.sleb128 -44
	.byte	0x9f
	.long	.LVL263
	.long	.LVL270
	.value	0x1
	.byte	0x57
	.long	.LVL270
	.long	.LFE85
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x2c
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST109:
	.long	.LVL262
	.long	.LVL264
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST110:
	.long	.LVL262
	.long	.LVL264
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST111:
	.long	.LVL262
	.long	.LVL264
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST112:
	.long	.LVL265
	.long	.LVL266
	.value	0x3
	.byte	0x73
	.sleb128 -44
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL265
	.long	.LVL266
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL267
	.long	.LVL268
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST115:
	.long	.LVL267
	.long	.LVL268
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST116:
	.long	.LVL267
	.long	.LVL268
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST117:
	.long	.LVL275
	.long	.LVL281
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST118:
	.long	.LVL276
	.long	.LVL277
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST119:
	.long	.LVL278
	.long	.LVL279
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL279
	.long	.LVL280
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL280
	.long	.LVL282
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL282
	.long	.LVL283
	.value	0x2
	.byte	0x43
	.byte	0x9f
	.long	.LVL283
	.long	.LVL284
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST120:
	.long	.LVL288
	.long	.LVL289
	.value	0x2
	.byte	0x70
	.sleb128 12
	.long	0
	.long	0
.LLST121:
	.long	.LVL293
	.long	.LVL294
	.value	0x5
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.long	0
	.long	0
.LLST122:
	.long	.LVL302
	.long	.LVL303
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL303
	.long	.LVL304
	.value	0x1
	.byte	0x50
	.long	.LVL304
	.long	.LFE112
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST123:
	.long	.LVL302
	.long	.LVL303
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL303
	.long	.LVL305-1
	.value	0x1
	.byte	0x52
	.long	.LVL305-1
	.long	.LFE112
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x134
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	.LFB106
	.long	.LFE106-.LFB106
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB105
	.long	.LFE105-.LFB105
	.long	.LFB108
	.long	.LFE108-.LFB108
	.long	.LFB83
	.long	.LFE83-.LFB83
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	.LFB115
	.long	.LFE115-.LFB115
	.long	.LFB84
	.long	.LFE84-.LFB84
	.long	.LFB116
	.long	.LFE116-.LFB116
	.long	.LFB110
	.long	.LFE110-.LFB110
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB80
	.long	.LFE80-.LFB80
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB127
	.long	.LFE127-.LFB127
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	.LFB103
	.long	.LFE103-.LFB103
	.long	.LFB104
	.long	.LFE104-.LFB104
	.long	.LFB111
	.long	.LFE111-.LFB111
	.long	.LFB112
	.long	.LFE112-.LFB112
	.long	.LFB113
	.long	.LFE113-.LFB113
	.long	.LFB117
	.long	.LFE117-.LFB117
	.long	.LFB118
	.long	.LFE118-.LFB118
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB51
	.long	.LBE51
	.long	.LBB54
	.long	.LBE54
	.long	0
	.long	0
	.long	.LBB66
	.long	.LBE66
	.long	.LBB71
	.long	.LBE71
	.long	0
	.long	0
	.long	.LBB68
	.long	.LBE68
	.long	.LBB69
	.long	.LBE69
	.long	0
	.long	0
	.long	.LBB82
	.long	.LBE82
	.long	.LBB85
	.long	.LBE85
	.long	0
	.long	0
	.long	.LBB110
	.long	.LBE110
	.long	.LBB113
	.long	.LBE113
	.long	0
	.long	0
	.long	.LBB133
	.long	.LBE133
	.long	.LBB140
	.long	.LBE140
	.long	0
	.long	0
	.long	.LBB136
	.long	.LBE136
	.long	.LBB139
	.long	.LBE139
	.long	0
	.long	0
	.long	.LBB149
	.long	.LBE149
	.long	.LBB161
	.long	.LBE161
	.long	.LBB162
	.long	.LBE162
	.long	.LBB163
	.long	.LBE163
	.long	0
	.long	0
	.long	.LBB151
	.long	.LBE151
	.long	.LBB154
	.long	.LBE154
	.long	0
	.long	0
	.long	.LBB166
	.long	.LBE166
	.long	.LBB167
	.long	.LBE167
	.long	0
	.long	0
	.long	.LBB177
	.long	.LBE177
	.long	.LBB180
	.long	.LBE180
	.long	0
	.long	0
	.long	.LFB82
	.long	.LFE82
	.long	.LFB97
	.long	.LFE97
	.long	.LFB100
	.long	.LFE100
	.long	.LFB106
	.long	.LFE106
	.long	.LFB101
	.long	.LFE101
	.long	.LFB93
	.long	.LFE93
	.long	.LFB105
	.long	.LFE105
	.long	.LFB108
	.long	.LFE108
	.long	.LFB83
	.long	.LFE83
	.long	.LFB129
	.long	.LFE129
	.long	.LFB115
	.long	.LFE115
	.long	.LFB84
	.long	.LFE84
	.long	.LFB116
	.long	.LFE116
	.long	.LFB110
	.long	.LFE110
	.long	.LFB86
	.long	.LFE86
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB81
	.long	.LFE81
	.long	.LFB80
	.long	.LFE80
	.long	.LFB92
	.long	.LFE92
	.long	.LFB99
	.long	.LFE99
	.long	.LFB96
	.long	.LFE96
	.long	.LFB94
	.long	.LFE94
	.long	.LFB127
	.long	.LFE127
	.long	.LFB85
	.long	.LFE85
	.long	.LFB98
	.long	.LFE98
	.long	.LFB95
	.long	.LFE95
	.long	.LFB102
	.long	.LFE102
	.long	.LFB103
	.long	.LFE103
	.long	.LFB104
	.long	.LFE104
	.long	.LFB111
	.long	.LFE111
	.long	.LFB112
	.long	.LFE112
	.long	.LFB113
	.long	.LFE113
	.long	.LFB117
	.long	.LFE117
	.long	.LFB118
	.long	.LFE118
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF128:
	.string	"name_space"
.LASF201:
	.string	"atomic_test_and_set_bit"
.LASF167:
	.string	"bt_irk"
.LASF29:
	.string	"_ssize_t"
.LASF13:
	.string	"size_t"
.LASF30:
	.string	"sizetype"
.LASF81:
	.string	"BT_SECURITY_NONE"
.LASF113:
	.string	"bt_gatt_attr"
.LASF175:
	.string	"start"
.LASF116:
	.string	"user_data"
.LASF245:
	.string	"bt_gatt_attr_read_included"
.LASF24:
	.string	"tail"
.LASF271:
	.string	"net_buf_simple_add"
.LASF257:
	.string	"bt_gatt_get_mtu"
.LASF95:
	.string	"tx_pending"
.LASF59:
	.string	"work_q"
.LASF233:
	.string	"bt_gatt_service_register"
.LASF94:
	.string	"rx_len"
.LASF266:
	.string	"gatt_svc"
.LASF269:
	.string	"bt_l2cap_send_cb"
.LASF223:
	.string	"populate"
.LASF248:
	.string	"sc_range"
.LASF115:
	.string	"write"
.LASF104:
	.string	"retrying"
.LASF82:
	.string	"BT_SECURITY_LOW"
.LASF34:
	.string	"aos_queue_t"
.LASF264:
	.string	"sc_ccc_cfg"
.LASF93:
	.string	"state"
.LASF163:
	.string	"slave_ltk"
.LASF168:
	.string	"bt_att_notify"
.LASF37:
	.string	"k_queue"
.LASF152:
	.string	"resp_addr"
.LASF62:
	.string	"bt_addr_le_t"
.LASF61:
	.string	"type"
.LASF193:
	.string	"conn"
.LASF54:
	.string	"k_work"
.LASF32:
	.string	"ssize_t"
.LASF83:
	.string	"BT_SECURITY_MEDIUM"
.LASF77:
	.string	"bt_uuid"
.LASF153:
	.string	"interval"
.LASF200:
	.string	"disconnected_cb"
.LASF106:
	.string	"BT_GATT_PERM_READ"
.LASF52:
	.string	"fifo"
.LASF4:
	.string	"long int"
.LASF127:
	.string	"unit"
.LASF92:
	.string	"encrypt"
.LASF260:
	.string	"gap_name"
.LASF150:
	.string	"bt_conn_le"
.LASF100:
	.string	"bt_att_destroy_t"
.LASF275:
	.string	"atomic_get"
.LASF165:
	.string	"rand"
.LASF155:
	.string	"interval_max"
.LASF23:
	.string	"head"
.LASF242:
	.string	"bt_gatt_attr_read_ccc"
.LASF73:
	.string	"_Bool"
.LASF118:
	.string	"bt_gatt_service"
.LASF240:
	.string	"read_name"
.LASF173:
	.string	"gatt_sc"
.LASF259:
	.string	"bt_gatt_disconnected"
.LASF132:
	.string	"bt_gatt_attr_func_t"
.LASF185:
	.string	"sys_slist_peek_head"
.LASF286:
	.string	"bt_gatt_indicate"
.LASF131:
	.string	"BT_GATT_ITER_CONTINUE"
.LASF19:
	.string	"sys_snode_t"
.LASF41:
	.string	"k_timer_handler_t"
.LASF0:
	.string	"signed char"
.LASF180:
	.string	"gatt_chrc"
.LASF227:
	.string	"atomic_test_bit"
.LASF162:
	.string	"enc_size"
.LASF144:
	.string	"BT_CONN_DISCONNECTED"
.LASF1:
	.string	"unsigned char"
.LASF208:
	.string	"atomic_set_bit"
.LASF146:
	.string	"BT_CONN_CONNECT"
.LASF285:
	.string	"/home/stone/Documents/pca"
.LASF249:
	.string	"bt_gatt_attr_next"
.LASF277:
	.string	"atomic_and"
.LASF44:
	.string	"handler"
.LASF252:
	.string	"bt_gatt_attr_read_cep"
.LASF265:
	.string	"gatt_attrs"
.LASF280:
	.string	"bt_addr_le_is_bonded"
.LASF136:
	.string	"value"
.LASF80:
	.string	"bt_uuid_128"
.LASF238:
	.string	"read_appearance"
.LASF261:
	.string	"gap_appearance"
.LASF31:
	.string	"char"
.LASF203:
	.string	"sys_slist_append"
.LASF72:
	.string	"pool_id"
.LASF171:
	.string	"SC_INDICATE_PENDING"
.LASF97:
	.string	"tx_queue"
.LASF5:
	.string	"__uint16_t"
.LASF43:
	.string	"timer"
.LASF211:
	.string	"sc_ccc_cfg_changed"
.LASF143:
	.string	"attr"
.LASF188:
	.string	"sys_slist_peek_next_no_check"
.LASF56:
	.string	"flags"
.LASF268:
	.string	"bt_uuid_cmp"
.LASF207:
	.string	"test"
.LASF112:
	.string	"BT_GATT_PERM_PREPARE_WRITE"
.LASF119:
	.string	"attrs"
.LASF170:
	.string	"SC_RANGE_CHANGED"
.LASF20:
	.string	"_snode"
.LASF228:
	.string	"sc_restore"
.LASF145:
	.string	"BT_CONN_CONNECT_SCAN"
.LASF109:
	.string	"BT_GATT_PERM_WRITE_ENCRYPT"
.LASF69:
	.string	"node"
.LASF157:
	.string	"features"
.LASF263:
	.string	"gap_svc"
.LASF205:
	.string	"prev_node"
.LASF70:
	.string	"frags"
.LASF74:
	.string	"BT_UUID_TYPE_16"
.LASF224:
	.string	"update_range"
.LASF178:
	.string	"end_handle"
.LASF234:
	.string	"bt_gatt_service_unregister"
.LASF110:
	.string	"BT_GATT_PERM_READ_AUTHEN"
.LASF273:
	.string	"net_buf_unref"
.LASF196:
	.string	"include"
.LASF135:
	.string	"peer"
.LASF156:
	.string	"latency"
.LASF219:
	.string	"gatt_register"
.LASF206:
	.string	"sys_slist_find_and_remove"
.LASF179:
	.string	"uuid16"
.LASF160:
	.string	"bt_keys"
.LASF250:
	.string	"bt_gatt_attr_read_chrc"
.LASF142:
	.string	"_req"
.LASF169:
	.string	"bt_att_indicate"
.LASF75:
	.string	"BT_UUID_TYPE_32"
.LASF241:
	.string	"bt_gatt_attr_read_service"
.LASF7:
	.string	"long unsigned int"
.LASF125:
	.string	"format"
.LASF190:
	.string	"target"
.LASF28:
	.string	"sys_dlist_t"
.LASF151:
	.string	"init_addr"
.LASF133:
	.string	"bt_gatt_ccc_cfg"
.LASF192:
	.string	"sc_indicate_rsp"
.LASF123:
	.string	"bt_gatt_cep"
.LASF140:
	.string	"bt_gatt_indicate_func_t"
.LASF154:
	.string	"interval_min"
.LASF278:
	.string	"bt_conn_lookup_addr_le"
.LASF282:
	.string	"bt_att_get_mtu"
.LASF182:
	.string	"notify_data"
.LASF210:
	.string	"bt_l2cap_send"
.LASF231:
	.string	"done"
.LASF216:
	.string	"find_next"
.LASF45:
	.string	"args"
.LASF254:
	.string	"bt_gatt_attr_read_cud"
.LASF217:
	.string	"gatt_notify"
.LASF66:
	.string	"__buf"
.LASF243:
	.string	"bt_gatt_init"
.LASF129:
	.string	"description"
.LASF6:
	.string	"__uint32_t"
.LASF288:
	.string	"__stack_chk_fail"
.LASF158:
	.string	"keys"
.LASF33:
	.string	"aos_hdl_t"
.LASF8:
	.string	"long long int"
.LASF218:
	.string	"gatt_indicate"
.LASF25:
	.string	"sys_slist_t"
.LASF279:
	.string	"bt_conn_unref"
.LASF235:
	.string	"bt_gatt_attr_read"
.LASF53:
	.string	"k_work_handler_t"
.LASF262:
	.string	"gap_attrs"
.LASF39:
	.string	"poll_events"
.LASF195:
	.string	"mask"
.LASF258:
	.string	"bt_gatt_connected"
.LASF130:
	.string	"BT_GATT_ITER_STOP"
.LASF121:
	.string	"bt_gatt_chrc"
.LASF57:
	.string	"k_delayed_work"
.LASF272:
	.string	"bt_att_req_send"
.LASF108:
	.string	"BT_GATT_PERM_READ_ENCRYPT"
.LASF172:
	.string	"SC_NUM_FLAGS"
.LASF46:
	.string	"timeout"
.LASF63:
	.string	"net_buf_simple"
.LASF84:
	.string	"BT_SECURITY_HIGH"
.LASF221:
	.string	"count"
.LASF161:
	.string	"addr"
.LASF114:
	.string	"read"
.LASF47:
	.string	"start_ms"
.LASF209:
	.string	"gatt_send"
.LASF36:
	.string	"_queue_t"
.LASF230:
	.string	"stored"
.LASF10:
	.string	"unsigned int"
.LASF105:
	.string	"BT_GATT_PERM_NONE"
.LASF191:
	.string	"atomic_clear_bit"
.LASF17:
	.string	"u16_t"
.LASF246:
	.string	"incl"
.LASF98:
	.string	"channels"
.LASF247:
	.string	"sc_process"
.LASF96:
	.string	"tx_notify"
.LASF215:
	.string	"bt_addr_le_copy"
.LASF21:
	.string	"_slist"
.LASF229:
	.string	"sc_save"
.LASF68:
	.string	"offset"
.LASF186:
	.string	"list"
.LASF76:
	.string	"BT_UUID_TYPE_128"
.LASF255:
	.string	"bt_gatt_attr_read_cpf"
.LASF212:
	.string	"gatt_ccc_changed"
.LASF226:
	.string	"new_end"
.LASF159:
	.string	"update_work"
.LASF274:
	.string	"atomic_or"
.LASF26:
	.string	"_dnode"
.LASF14:
	.string	"long double"
.LASF42:
	.string	"k_timer"
.LASF239:
	.string	"appearance"
.LASF58:
	.string	"work"
.LASF284:
	.string	"src/gatt.c"
.LASF88:
	.string	"handle"
.LASF225:
	.string	"new_start"
.LASF281:
	.string	"k_delayed_work_init"
.LASF139:
	.string	"cfg_changed"
.LASF164:
	.string	"bt_ltk"
.LASF270:
	.string	"bt_att_create_pdu"
.LASF267:
	.string	"bt_conn_addr_le_cmp"
.LASF65:
	.string	"size"
.LASF9:
	.string	"long long unsigned int"
.LASF18:
	.string	"u64_t"
.LASF103:
	.string	"destroy"
.LASF174:
	.string	"params"
.LASF214:
	.string	"length"
.LASF11:
	.string	"uint16_t"
.LASF38:
	.string	"_queue"
.LASF71:
	.string	"net_buf"
.LASF187:
	.string	"sys_slist_peek_tail"
.LASF126:
	.string	"exponent"
.LASF166:
	.string	"ediv"
.LASF141:
	.string	"bt_gatt_indicate_params"
.LASF111:
	.string	"BT_GATT_PERM_WRITE_AUTHEN"
.LASF122:
	.string	"properties"
.LASF90:
	.string	"sec_level"
.LASF194:
	.string	"get_service_handles"
.LASF99:
	.string	"bt_att_func_t"
.LASF287:
	.string	"aos_log_level"
.LASF117:
	.string	"perm"
.LASF124:
	.string	"bt_gatt_cpf"
.LASF107:
	.string	"BT_GATT_PERM_WRITE"
.LASF78:
	.string	"bt_uuid_16"
.LASF222:
	.string	"submit"
.LASF2:
	.string	"short int"
.LASF251:
	.string	"chrc"
.LASF102:
	.string	"func"
.LASF232:
	.string	"bt_gatt_attr_write_ccc"
.LASF276:
	.string	"k_delayed_work_submit"
.LASF204:
	.string	"sys_slist_remove"
.LASF35:
	.string	"aos_timer_t"
.LASF85:
	.string	"BT_SECURITY_FIPS"
.LASF149:
	.string	"bt_conn_state_t"
.LASF184:
	.string	"sys_slist_is_empty"
.LASF67:
	.string	"net_buf_simple_state"
.LASF79:
	.string	"uuid"
.LASF86:
	.string	"bt_security_t"
.LASF237:
	.string	"value_len"
.LASF244:
	.string	"bt_gatt_foreach_attr"
.LASF148:
	.string	"BT_CONN_DISCONNECT"
.LASF134:
	.string	"valid"
.LASF91:
	.string	"required_sec_level"
.LASF137:
	.string	"_bt_gatt_ccc"
.LASF50:
	.string	"atomic_val_t"
.LASF147:
	.string	"BT_CONN_CONNECTED"
.LASF101:
	.string	"bt_att_req"
.LASF213:
	.string	"gatt_indicate_rsp"
.LASF12:
	.string	"uint32_t"
.LASF199:
	.string	"connected_cb"
.LASF253:
	.string	"props"
.LASF177:
	.string	"start_handle"
.LASF283:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF40:
	.string	"k_fifo"
.LASF236:
	.string	"buf_len"
.LASF3:
	.string	"short unsigned int"
.LASF15:
	.string	"s8_t"
.LASF89:
	.string	"role"
.LASF49:
	.string	"atomic_t"
.LASF55:
	.string	"_reserved"
.LASF16:
	.string	"u8_t"
.LASF181:
	.string	"value_handle"
.LASF183:
	.string	"sc_data"
.LASF60:
	.string	"bt_addr_t"
.LASF197:
	.string	"sys_get_le16"
.LASF176:
	.string	"gatt_incl"
.LASF256:
	.string	"bt_gatt_notify"
.LASF138:
	.string	"cfg_len"
.LASF198:
	.string	"notify_cb"
.LASF22:
	.string	"next"
.LASF64:
	.string	"data"
.LASF27:
	.string	"prev"
.LASF189:
	.string	"sys_slist_peek_next"
.LASF87:
	.string	"bt_conn"
.LASF51:
	.string	"k_work_q"
.LASF220:
	.string	"last"
.LASF48:
	.string	"k_timer_t"
.LASF120:
	.string	"attr_count"
.LASF202:
	.string	"sc_indicate"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
