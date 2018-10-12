	.file	"conn.c"
	.text
.Ltext0:
	.section	.text.unlikely.notify_connected,"ax",@progbits
.LCOLDB0:
	.section	.text.notify_connected,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.notify_connected
.Ltext_cold0:
	.section	.text.notify_connected
	.type	notify_connected, @function
notify_connected:
.LFB81:
	.file 1 "src/conn.c"
	.loc 1 3877 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3879 0
	movl	callback_list, %ebx
.LVL1:
	.loc 1 3877 0
	movl	%eax, %esi
.LVL2:
.L2:
	.loc 1 3879 0 discriminator 1
	testl	%ebx, %ebx
	je	.L10
	.loc 1 3880 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L3
	.loc 1 3881 0
	pushl	%edx
	pushl	%edx
	movzbl	11(%esi), %edx
	pushl	%edx
	pushl	%esi
	call	*%eax
.LVL3:
	addl	$16, %esp
.L3:
	.loc 1 3879 0 discriminator 2
	movl	24(%ebx), %ebx
.LVL4:
	jmp	.L2
.L10:
	.loc 1 3884 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL5:
	popl	%esi
	.cfi_restore 6
.LVL6:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	notify_connected, .-notify_connected
	.section	.text.unlikely.notify_connected
.LCOLDE0:
	.section	.text.notify_connected
.LHOTE0:
	.section	.text.unlikely.bt_conn_reset_rx_state,"ax",@progbits
.LCOLDB1:
	.section	.text.bt_conn_reset_rx_state,"ax",@progbits
.LHOTB1:
	.type	bt_conn_reset_rx_state, @function
bt_conn_reset_rx_state:
.LFB94:
	.loc 1 4094 0
	.cfi_startproc
.LVL7:
	.loc 1 4095 0
	cmpw	$0, 14(%eax)
	je	.L15
	.loc 1 4094 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
.LVL8:
	subl	$16, %esp
.LBB53:
.LBB54:
	.loc 1 4098 0
	pushl	16(%eax)
	call	net_buf_unref
.LVL9:
	.loc 1 4099 0
	movl	$0, 16(%ebx)
	.loc 1 4102 0
	movw	$0, 14(%ebx)
	addl	$16, %esp
.LBE54:
.LBE53:
	.loc 1 4103 0
	movl	-4(%ebp), %ebx
.LVL10:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
.LVL11:
.L15:
	ret
	.cfi_endproc
.LFE94:
	.size	bt_conn_reset_rx_state, .-bt_conn_reset_rx_state
	.section	.text.unlikely.bt_conn_reset_rx_state
.LCOLDE1:
	.section	.text.bt_conn_reset_rx_state
.LHOTE1:
	.section	.text.unlikely.bt_conn_get_pkts,"ax",@progbits
.LCOLDB2:
	.section	.text.bt_conn_get_pkts,"ax",@progbits
.LHOTB2:
	.globl	bt_conn_get_pkts
	.type	bt_conn_get_pkts, @function
bt_conn_get_pkts:
.LFB79:
	.loc 1 3856 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3858 0
	movl	$bt_dev+132, %eax
	.loc 1 3856 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3858 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	bt_conn_get_pkts, .-bt_conn_get_pkts
	.section	.text.unlikely.bt_conn_get_pkts
.LCOLDE2:
	.section	.text.bt_conn_get_pkts
.LHOTE2:
	.section	.text.unlikely.notify_le_param_updated,"ax",@progbits
.LCOLDB3:
	.section	.text.notify_le_param_updated,"ax",@progbits
.LHOTB3:
	.globl	notify_le_param_updated
	.type	notify_le_param_updated, @function
notify_le_param_updated:
.LFB83:
	.loc 1 3895 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3895 0
	movl	8(%ebp), %esi
	.loc 1 3897 0
	movl	callback_list, %ebx
.LVL14:
.L19:
	.loc 1 3897 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx
	je	.L26
	.loc 1 3898 0 is_stmt 1
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	.L20
	.loc 1 3899 0
	movzwl	94(%esi), %edx
	pushl	%edx
	movzwl	92(%esi), %edx
	pushl	%edx
	movzwl	86(%esi), %edx
	pushl	%edx
	pushl	%esi
	call	*%eax
.LVL15:
	addl	$16, %esp
.L20:
	.loc 1 3897 0 discriminator 2
	movl	24(%ebx), %ebx
.LVL16:
	jmp	.L19
.L26:
	.loc 1 3904 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL17:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	notify_le_param_updated, .-notify_le_param_updated
	.section	.text.unlikely.notify_le_param_updated
.LCOLDE3:
	.section	.text.notify_le_param_updated
.LHOTE3:
	.section	.text.unlikely.le_param_req,"ax",@progbits
.LCOLDB4:
	.section	.text.le_param_req,"ax",@progbits
.LHOTB4:
	.globl	le_param_req
	.type	le_param_req, @function
le_param_req:
.LFB84:
	.loc 1 3907 0
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
	subl	$24, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3907 0
	movl	12(%ebp), %esi
	.loc 1 3909 0
	pushl	%esi
	call	bt_le_conn_params_valid
.LVL19:
	addl	$16, %esp
	testb	%al, %al
	.loc 1 3914 0
	movl	callback_list, %edi
	movb	%al, %bl
	.loc 1 3909 0
	jne	.L37
.L32:
	.loc 1 3911 0
	xorl	%ebx, %ebx
	jmp	.L29
.LVL20:
.L34:
	.loc 1 3915 0
	movl	8(%edi), %eax
	testl	%eax, %eax
	jne	.L31
.L33:
	.loc 1 3914 0
	movl	24(%edi), %edi
.LVL21:
.L37:
	.loc 1 3914 0 is_stmt 0 discriminator 1
	testl	%edi, %edi
	jne	.L34
	jmp	.L29
.L31:
	.loc 1 3918 0 is_stmt 1
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	8(%ebp)
	call	*%eax
.LVL22:
	addl	$16, %esp
	testb	%al, %al
	je	.L32
	.loc 1 3923 0
	subl	$12, %esp
	pushl	%esi
	call	bt_le_conn_params_valid
.LVL23:
	addl	$16, %esp
	testb	%al, %al
	jne	.L33
	jmp	.L32
.LVL24:
.L29:
	.loc 1 3932 0
	leal	-12(%ebp), %esp
	movb	%bl, %al
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
	.size	le_param_req, .-le_param_req
	.section	.text.unlikely.le_param_req
.LCOLDE4:
	.section	.text.le_param_req
.LHOTE4:
	.section	.text.unlikely.bt_conn_identity_resolved,"ax",@progbits
.LCOLDB5:
	.section	.text.bt_conn_identity_resolved,"ax",@progbits
.LHOTB5:
	.globl	bt_conn_identity_resolved
	.type	bt_conn_identity_resolved, @function
bt_conn_identity_resolved:
.LFB87:
	.loc 1 3982 0
	.cfi_startproc
.LVL25:
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
	.loc 1 3982 0
	movl	8(%ebp), %ebx
	.loc 1 3990 0
	movl	callback_list, %esi
	.loc 1 3986 0
	cmpb	$0, 3(%ebx)
	leal	78(%ebx), %edi
	leal	71(%ebx), %eax
	.loc 1 3992 0
	leal	64(%ebx), %edx
	.loc 1 3986 0
	cmovne	%eax, %edi
.LVL26:
.L44:
	.loc 1 3990 0 discriminator 1
	testl	%esi, %esi
	je	.L51
	.loc 1 3991 0
	movl	16(%esi), %eax
	testl	%eax, %eax
	je	.L45
	.loc 1 3992 0
	movl	%edx, -28(%ebp)
	pushl	%ecx
	pushl	%edx
	pushl	%edi
	pushl	%ebx
	call	*%eax
.LVL27:
	movl	-28(%ebp), %edx
	addl	$16, %esp
.L45:
	.loc 1 3990 0 discriminator 2
	movl	24(%esi), %esi
.LVL28:
	jmp	.L44
.L51:
	.loc 1 3995 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL29:
	popl	%edi
	.cfi_restore 7
.LVL30:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE87:
	.size	bt_conn_identity_resolved, .-bt_conn_identity_resolved
	.section	.text.unlikely.bt_conn_identity_resolved
.LCOLDE5:
	.section	.text.bt_conn_identity_resolved
.LHOTE5:
	.section	.text.unlikely.bt_conn_le_start_encryption,"ax",@progbits
.LCOLDB6:
	.section	.text.bt_conn_le_start_encryption,"ax",@progbits
.LHOTB6:
	.globl	bt_conn_le_start_encryption
	.type	bt_conn_le_start_encryption, @function
bt_conn_le_start_encryption:
.LFB88:
	.loc 1 3998 0
	.cfi_startproc
.LVL31:
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
	.loc 1 3998 0
	movl	12(%ebp), %eax
	movl	16(%ebp), %edx
	.loc 1 4001 0
	pushl	$28
	pushl	$8217
	.loc 1 3998 0
	movl	8(%ebp), %edi
	movl	20(%ebp), %esi
	movl	%eax, -40(%ebp)
	movl	24(%ebp), %eax
	movl	%edx, -36(%ebp)
	movl	%eax, -32(%ebp)
	movl	28(%ebp), %eax
	movl	%eax, -28(%ebp)
	.loc 1 4001 0
	call	bt_hci_cmd_create
.LVL32:
	.loc 1 4002 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L53
	movl	%eax, %ebx
.LVL33:
	.loc 1 4005 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$28
	pushl	%eax
	call	net_buf_simple_add
.LVL34:
	.loc 1 4006 0
	movl	(%edi), %edx
	.loc 1 4007 0
	movl	-36(%ebp), %ecx
	.loc 1 4009 0
	addl	$12, %eax
.LVL35:
	.loc 1 4008 0
	movw	%si, -2(%eax)
	.loc 1 4010 0
	addl	$16, %esp
	.loc 1 4009 0
	movl	-32(%ebp), %esi
	.loc 1 4006 0
	movw	%dx, -12(%eax)
	.loc 1 4007 0
	movl	-40(%ebp), %edx
	movl	%ecx, -6(%eax)
	.loc 1 4009 0
	movl	-28(%ebp), %ecx
	.loc 1 4007 0
	movl	%edx, -10(%eax)
	.loc 1 4010 0
	cmpl	$15, -28(%ebp)
	.loc 1 4009 0
	movl	%eax, %edi
	rep movsb
	.loc 1 4010 0
	ja	.L54
	.loc 1 4011 0
	movl	$16, %ecx
	subl	-28(%ebp), %ecx
	xorl	%eax, %eax
.LVL36:
	rep stosb
.L54:
	.loc 1 4013 0
	movl	%ebx, 12(%ebp)
	movl	$0, 16(%ebp)
	movl	$8217, 8(%ebp)
	.loc 1 4016 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL37:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4013 0
	jmp	bt_hci_cmd_send_sync
.LVL38:
.L53:
	.cfi_restore_state
	.loc 1 4016 0
	leal	-12(%ebp), %esp
	movl	$-55, %eax
.LVL39:
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
.LFE88:
	.size	bt_conn_le_start_encryption, .-bt_conn_le_start_encryption
	.section	.text.unlikely.bt_conn_le_start_encryption
.LCOLDE6:
	.section	.text.bt_conn_le_start_encryption
.LHOTE6:
	.section	.text.unlikely.bt_conn_enc_key_size,"ax",@progbits
.LCOLDB7:
	.section	.text.bt_conn_enc_key_size,"ax",@progbits
.LHOTB7:
	.globl	bt_conn_enc_key_size
	.type	bt_conn_enc_key_size, @function
bt_conn_enc_key_size:
.LFB89:
	.loc 1 4018 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4018 0
	movl	8(%ebp), %edx
	.loc 1 4019 0
	movb	10(%edx), %al
	testb	%al, %al
	je	.L57
	.loc 1 4046 0
	movl	104(%edx), %edx
	.loc 1 4020 0
	xorl	%eax, %eax
	.loc 1 4046 0
	testl	%edx, %edx
	je	.L57
	.loc 1 4046 0 is_stmt 0 discriminator 1
	movb	7(%edx), %al
.L57:
	.loc 1 4049 0 is_stmt 1 discriminator 1
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE89:
	.size	bt_conn_enc_key_size, .-bt_conn_enc_key_size
	.section	.text.unlikely.bt_conn_enc_key_size
.LCOLDE7:
	.section	.text.bt_conn_enc_key_size
.LHOTE7:
	.section	.text.unlikely.bt_conn_security_changed,"ax",@progbits
.LCOLDB8:
	.section	.text.bt_conn_security_changed,"ax",@progbits
.LHOTB8:
	.globl	bt_conn_security_changed
	.type	bt_conn_security_changed, @function
bt_conn_security_changed:
.LFB90:
	.loc 1 4051 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4051 0
	movl	8(%ebp), %esi
	.loc 1 4053 0
	movl	callback_list, %ebx
.LVL42:
.L64:
	.loc 1 4053 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx
	je	.L71
	.loc 1 4054 0 is_stmt 1
	movl	20(%ebx), %eax
	testl	%eax, %eax
	je	.L65
	.loc 1 4055 0
	pushl	%edx
	pushl	%edx
	movzbl	8(%esi), %edx
	pushl	%edx
	pushl	%esi
	call	*%eax
.LVL43:
	addl	$16, %esp
.L65:
	.loc 1 4053 0 discriminator 2
	movl	24(%ebx), %ebx
.LVL44:
	jmp	.L64
.L71:
	.loc 1 4058 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL45:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE90:
	.size	bt_conn_security_changed, .-bt_conn_security_changed
	.section	.text.unlikely.bt_conn_security_changed
.LCOLDE8:
	.section	.text.bt_conn_security_changed
.LHOTE8:
	.section	.text.unlikely.bt_conn_security,"ax",@progbits
.LCOLDB9:
	.section	.text.bt_conn_security,"ax",@progbits
.LHOTB9:
	.globl	bt_conn_security
	.type	bt_conn_security, @function
bt_conn_security:
.LFB92:
	.loc 1 4069 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 4069 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %edx
	.loc 1 4072 0
	movl	$-57, %eax
	.loc 1 4071 0
	cmpb	$3, 12(%ebx)
	jne	.L73
	.loc 1 4078 0
	cmpb	%dl, 8(%ebx)
	jb	.L74
.L75:
	.loc 1 4079 0
	xorl	%eax, %eax
	jmp	.L73
.L74:
	.loc 1 4078 0 discriminator 1
	cmpb	9(%ebx), %dl
	jbe	.L75
.LBB57:
.LBB58:
	.loc 1 4061 0
	cmpb	$1, 3(%ebx)
.LBE58:
.LBE57:
	.loc 1 4081 0
	movb	%dl, 9(%ebx)
.LVL47:
.LBB61:
.LBB59:
	.loc 1 4061 0
	jne	.L83
	.loc 1 4063 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_smp_send_security_req
.LVL48:
.LBE59:
.LBE61:
	.loc 1 4083 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L76
	jmp	.L75
.LVL49:
.L83:
.LBB62:
.LBB60:
	.loc 1 4065 0
	movl	$-22, %eax
.LVL50:
.L76:
.LBE60:
.LBE62:
	.loc 1 4084 0
	movb	8(%ebx), %dl
	movb	%dl, 9(%ebx)
.L73:
	.loc 1 4087 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	bt_conn_security, .-bt_conn_security
	.section	.text.unlikely.bt_conn_security
.LCOLDE9:
	.section	.text.bt_conn_security
.LHOTE9:
	.section	.text.unlikely.bt_conn_cb_register,"ax",@progbits
.LCOLDB10:
	.section	.text.bt_conn_cb_register,"ax",@progbits
.LHOTB10:
	.globl	bt_conn_cb_register
	.type	bt_conn_cb_register, @function
bt_conn_cb_register:
.LFB93:
	.loc 1 4089 0
	.cfi_startproc
.LVL51:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4090 0
	movl	callback_list, %edx
	.loc 1 4089 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4089 0
	movl	8(%ebp), %eax
	.loc 1 4090 0
	movl	%edx, 24(%eax)
	.loc 1 4091 0
	movl	%eax, callback_list
	.loc 1 4092 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE93:
	.size	bt_conn_cb_register, .-bt_conn_cb_register
	.section	.text.unlikely.bt_conn_cb_register
.LCOLDE10:
	.section	.text.bt_conn_cb_register
.LHOTE10:
	.section	.text.unlikely.bt_conn_recv,"ax",@progbits
.LCOLDB11:
	.section	.text.bt_conn_recv,"ax",@progbits
.LHOTB11:
	.globl	bt_conn_recv
	.type	bt_conn_recv, @function
bt_conn_recv:
.LFB95:
	.loc 1 4105 0
	.cfi_startproc
.LVL52:
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
	.loc 1 4105 0
	movl	16(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 4109 0
	cmpb	$1, %al
	je	.L89
	cmpb	$2, %al
	jne	.L100
.LVL53:
	.loc 1 4114 0
	cmpw	$0, 14(%ebx)
	.loc 1 4112 0
	movl	8(%esi), %eax
	movw	(%eax), %di
.LVL54:
	.loc 1 4114 0
	je	.L91
	.loc 1 4116 0
	movl	%ebx, %eax
	call	bt_conn_reset_rx_state
.LVL55:
.L91:
	.loc 1 4118 0
	leal	4(%edi), %eax
	subl	12(%esi), %eax
	.loc 1 4120 0
	testw	%ax, %ax
	.loc 1 4118 0
	movw	%ax, 14(%ebx)
	.loc 1 4120 0
	je	.L92
	.loc 1 4121 0
	movl	%esi, 16(%ebx)
	.loc 1 4122 0
	jmp	.L87
.LVL56:
.L89:
	.loc 1 4126 0
	movw	14(%ebx), %ax
	testw	%ax, %ax
	je	.L100
	.loc 1 4132 0
	movzwl	12(%esi), %edi
	cmpw	%di, %ax
	jb	.L100
	.loc 1 4139 0
	movl	16(%ebx), %eax
	subl	$12, %esp
	addl	$8, %eax
	pushl	%eax
	call	net_buf_simple_tailroom
.LVL57:
	addl	$16, %esp
	cmpl	%eax, %edi
	ja	.L100
	.loc 1 4145 0
	pushl	%eax
	movzwl	12(%esi), %eax
	pushl	%eax
	pushl	8(%esi)
	movl	16(%ebx), %eax
	addl	$8, %eax
	pushl	%eax
	call	net_buf_simple_add_mem
.LVL58:
	.loc 1 4146 0
	movl	12(%esi), %eax
	subw	%ax, 14(%ebx)
	.loc 1 4147 0
	movl	%esi, (%esp)
	call	net_buf_unref
.LVL59:
	.loc 1 4148 0
	addl	$16, %esp
	cmpw	$0, 14(%ebx)
	jne	.L87
	.loc 1 4151 0
	movl	16(%ebx), %esi
.LVL60:
	.loc 1 4155 0
	movw	$0, 14(%ebx)
	.loc 1 4152 0
	movl	$0, 16(%ebx)
	.loc 1 4156 0
	jmp	.L92
.LVL61:
.L100:
	.loc 1 4159 0
	movl	%ebx, %eax
	call	bt_conn_reset_rx_state
.LVL62:
	jmp	.L102
.LVL63:
.L92:
	.loc 1 4164 0
	movl	8(%esi), %eax
	.loc 1 4165 0
	movzwl	12(%esi), %edx
	movzwl	(%eax), %eax
	addl	$4, %eax
	cmpl	%edx, %eax
	je	.L96
.LVL64:
.L102:
	.loc 1 4167 0
	movl	%esi, 8(%ebp)
	.loc 1 4172 0
	leal	-12(%ebp), %esp
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
	.loc 1 4167 0
	jmp	net_buf_unref
.LVL65:
.L96:
	.cfi_restore_state
	.loc 1 4171 0
	movl	%esi, 12(%ebp)
.LVL66:
	movl	%ebx, 8(%ebp)
	.loc 1 4172 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL67:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4171 0
	jmp	bt_l2cap_recv
.LVL68:
.L87:
	.cfi_restore_state
	.loc 1 4172 0
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
	.size	bt_conn_recv, .-bt_conn_recv
	.section	.text.unlikely.bt_conn_recv
.LCOLDE11:
	.section	.text.bt_conn_recv
.LHOTE11:
	.section	.text.unlikely.bt_conn_send_cb,"ax",@progbits
.LCOLDB12:
	.section	.text.bt_conn_send_cb,"ax",@progbits
.LHOTB12:
	.globl	bt_conn_send_cb
	.type	bt_conn_send_cb, @function
bt_conn_send_cb:
.LFB96:
	.loc 1 4175 0
	.cfi_startproc
.LVL69:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4175 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 4178 0
	subl	$12, %esp
	movzbl	6(%ebx), %eax
	pushl	%eax
	call	net_buf_pool_get
.LVL70:
	.loc 1 4179 0
	addl	$16, %esp
	cmpw	$3, 18(%eax)
	ja	.L104
	.loc 1 4181 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL71:
	.loc 1 4182 0
	addl	$16, %esp
	movl	$-22, %eax
	jmp	.L105
.LVL72:
.L104:
	.loc 1 4184 0
	cmpb	$3, 12(%esi)
	je	.L106
	.loc 1 4186 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL73:
	.loc 1 4187 0
	addl	$16, %esp
	movl	$-57, %eax
	jmp	.L105
.LVL74:
.L106:
	.loc 1 4189 0
	movzwl	14(%ebx), %eax
.LVL75:
	movl	16(%ebp), %edx
	.loc 1 4190 0
	addl	$40, %esi
	.loc 1 4189 0
	leal	19(%ebx,%eax), %eax
	andl	$-4, %eax
	movl	%edx, (%eax)
	.loc 1 4190 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	net_buf_put
.LVL76:
	.loc 1 4191 0
	movl	$g_poll_sem, (%esp)
	call	k_sem_give
.LVL77:
	.loc 1 4192 0
	addl	$16, %esp
	xorl	%eax, %eax
.L105:
	.loc 1 4193 0
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
.LFE96:
	.size	bt_conn_send_cb, .-bt_conn_send_cb
	.section	.text.unlikely.bt_conn_send_cb
.LCOLDE12:
	.section	.text.bt_conn_send_cb
.LHOTE12:
	.section	.text.unlikely.bt_conn_notify_tx,"ax",@progbits
.LCOLDB13:
	.section	.text.bt_conn_notify_tx,"ax",@progbits
.LHOTB13:
	.globl	bt_conn_notify_tx
	.type	bt_conn_notify_tx, @function
bt_conn_notify_tx:
.LFB98:
	.loc 1 4202 0
	.cfi_startproc
.LVL78:
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
	.loc 1 4202 0
	movl	8(%ebp), %esi
	.loc 1 4205 0
	leal	28(%esi), %edi
.L111:
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%edi
	call	k_queue_get
.LVL79:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL80:
	je	.L118
	.loc 1 4206 0
	movl	4(%ebx), %eax
.LVL81:
	testl	%eax, %eax
	je	.L110
	.loc 1 4207 0
	subl	$12, %esp
	pushl	%esi
	call	*%eax
.LVL82:
	addl	$16, %esp
.L110:
.LVL83:
.LBB69:
.LBB70:
.LBB71:
.LBB72:
	.loc 1 109 0
	cmpl	$0, free_tx+4
	.loc 1 107 0
	movl	free_tx, %eax
.LBE72:
.LBE71:
	.loc 1 4196 0
	movl	$0, 4(%ebx)
.LVL84:
.LBB74:
.LBB73:
	.loc 1 107 0
	movl	%eax, (%ebx)
	.loc 1 108 0
	movl	%ebx, free_tx
	.loc 1 109 0
	jne	.L111
	.loc 1 110 0
	movl	%ebx, free_tx+4
	jmp	.L111
.LVL85:
.L118:
.LBE73:
.LBE74:
.LBE70:
.LBE69:
	.loc 1 4211 0
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
.LFE98:
	.size	bt_conn_notify_tx, .-bt_conn_notify_tx
	.section	.text.unlikely.bt_conn_notify_tx
.LCOLDE13:
	.section	.text.bt_conn_notify_tx
.LHOTE13:
	.section	.text.unlikely.send_frag,"ax",@progbits
.LCOLDB14:
	.section	.text.send_frag,"ax",@progbits
.LHOTB14:
	.type	send_frag, @function
send_frag:
.LFB102:
	.loc 1 4263 0
	.cfi_startproc
.LVL86:
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
	movl	%eax, %esi
	movl	%edx, %edi
	movl	%ecx, %ebx
	subl	$36, %esp
	.loc 1 4263 0
	movl	8(%ebp), %eax
.LVL87:
	.loc 1 4269 0
	pushl	$-1
	pushl	$bt_dev+132
	.loc 1 4263 0
	movl	%eax, -28(%ebp)
	.loc 1 4269 0
	call	k_sem_take
.LVL88:
.LBB105:
.LBB106:
	.loc 1 4216 0
	movl	$conns+60, (%esp)
	call	atomic_get
.LVL89:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L120
	.loc 1 4219 0
	movb	conns+12, %al
	subl	$3, %eax
	cmpb	$1, %al
	ja	.L120
	.loc 1 4221 0
	subl	$12, %esp
	pushl	$conns
	call	bt_conn_notify_tx
.LVL90:
	addl	$16, %esp
.L120:
.LVL91:
.LBE106:
.LBE105:
	.loc 1 4271 0
	cmpb	$3, 12(%esi)
	jne	.L122
	.loc 1 4274 0
	pushl	%eax
	pushl	%eax
	leal	8(%edi), %eax
	pushl	$4
	.loc 1 4275 0
	sall	$12, %ebx
	.loc 1 4274 0
	pushl	%eax
	call	net_buf_simple_push
.LVL92:
	.loc 1 4275 0
	orl	(%esi), %ebx
.LBB107:
.LBB108:
.LBB109:
.LBB110:
	.loc 1 162 0
	addl	$16, %esp
.LBE110:
.LBE109:
.LBE108:
.LBE107:
	.loc 1 4275 0
	movw	%bx, (%eax)
	.loc 1 4276 0
	movl	12(%edi), %ecx
	leal	-4(%ecx), %edx
	movw	%dx, 2(%eax)
.LVL93:
.LBB116:
.LBB117:
	.loc 1 2815 0
	movzwl	14(%edi), %eax
.LVL94:
	leal	19(%edi,%eax), %eax
	andl	$-4, %eax
.LVL95:
.LBE117:
.LBE116:
	.loc 1 4277 0
	movl	(%eax), %edx
.LVL96:
.LBB118:
.LBB119:
	.loc 1 3034 0
	movb	$2, (%eax)
.LVL97:
.LBE119:
.LBE118:
.LBB120:
.LBB115:
.LBB112:
.LBB111:
	.loc 1 160 0
	movl	free_tx, %ebx
.LVL98:
	.loc 1 162 0
	cmpl	free_tx+4, %ebx
	.loc 1 161 0
	movl	(%ebx), %eax
	movl	%eax, free_tx
	.loc 1 162 0
	jne	.L123
	.loc 1 163 0
	movl	%eax, free_tx+4
.L123:
.LVL99:
.LBE111:
.LBE112:
	.loc 1 4238 0
	movl	%edx, 4(%ebx)
	.loc 1 4239 0
	call	irq_lock
.LVL100:
.LBB113:
.LBB114:
	.loc 1 119 0
	movl	24(%esi), %edx
	.loc 1 116 0
	movl	$0, (%ebx)
	.loc 1 119 0
	testl	%edx, %edx
	jne	.L124
	.loc 1 120 0
	movl	%ebx, 24(%esi)
	.loc 1 121 0
	movl	%ebx, 20(%esi)
	jmp	.L125
.L124:
	.loc 1 123 0
	movl	%ebx, (%edx)
	.loc 1 124 0
	movl	%ebx, 24(%esi)
.L125:
.LVL101:
.LBE114:
.LBE113:
	.loc 1 4241 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL102:
.LBE115:
.LBE120:
	.loc 1 4280 0
	movl	%edi, (%esp)
	call	bt_send
.LVL103:
	.loc 1 4281 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4287 0
	movb	$1, %dl
	.loc 1 4281 0
	je	.L126
.LVL104:
.LBB121:
.LBB122:
	.loc 1 4247 0
	call	irq_lock
.LVL105:
	movl	20(%esi), %edx
.LVL106:
.LBB123:
.LBB124:
	.loc 1 197 0
	xorl	%ecx, %ecx
.LVL107:
.L127:
	.loc 1 201 0
	testl	%edx, %edx
	je	.L133
	.loc 1 202 0
	cmpl	%edx, %ebx
	jne	.L128
.LVL108:
.LBB125:
.LBB126:
	.loc 1 177 0
	testl	%ecx, %ecx
	movl	(%ebx), %edx
.LVL109:
	jne	.L129
	.loc 1 179 0
	cmpl	24(%esi), %ebx
	.loc 1 178 0
	movl	%edx, 20(%esi)
	.loc 1 179 0
	jne	.L131
	.loc 1 180 0
	movl	%edx, 24(%esi)
	jmp	.L131
.L129:
	.loc 1 184 0
	cmpl	24(%esi), %ebx
	.loc 1 183 0
	movl	%edx, (%ecx)
	.loc 1 184 0
	jne	.L131
	.loc 1 185 0
	movl	%ecx, 24(%esi)
.L131:
	.loc 1 188 0
	movl	$0, (%ebx)
	jmp	.L133
.LVL110:
.L128:
.LBE126:
.LBE125:
.LBB127:
.LBB128:
.LBB129:
	.loc 1 96 0
	movl	%edx, %ecx
	movl	(%edx), %edx
.LVL111:
	jmp	.L127
.LVL112:
.L133:
.LBE129:
.LBE128:
.LBE127:
.LBE124:
.LBE123:
	.loc 1 4249 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL113:
.LBB130:
.LBB131:
.LBB132:
.LBB133:
	.loc 1 109 0
	addl	$16, %esp
	cmpl	$0, free_tx+4
	.loc 1 107 0
	movl	free_tx, %eax
.LBE133:
.LBE132:
	.loc 1 4196 0
	movl	$0, 4(%ebx)
.LVL114:
.LBB135:
.LBB134:
	.loc 1 107 0
	movl	%eax, (%ebx)
	.loc 1 108 0
	movl	%ebx, free_tx
	.loc 1 109 0
	jne	.L122
	.loc 1 110 0
	movl	%ebx, free_tx+4
.LVL115:
.L122:
.LBE134:
.LBE135:
.LBE131:
.LBE130:
.LBE122:
.LBE121:
	.loc 1 4290 0
	subl	$12, %esp
	pushl	$bt_dev+132
	call	k_sem_give
.LVL116:
	.loc 1 4291 0
	addl	$16, %esp
	.loc 1 4295 0
	xorl	%edx, %edx
	.loc 1 4291 0
	cmpb	$0, -28(%ebp)
	je	.L126
	.loc 1 4292 0
	subl	$12, %esp
	movb	%dl, -28(%ebp)
	pushl	%edi
	call	net_buf_unref
.LVL117:
	movb	-28(%ebp), %dl
	addl	$16, %esp
.L126:
	.loc 1 4297 0
	leal	-12(%ebp), %esp
	movb	%dl, %al
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL118:
	popl	%edi
	.cfi_restore 7
.LVL119:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE102:
	.size	send_frag, .-send_frag
	.section	.text.unlikely.send_frag
.LCOLDE14:
	.section	.text.send_frag
.LHOTE14:
	.section	.text.unlikely.conn_cleanup,"ax",@progbits
.LCOLDB15:
	.section	.text.conn_cleanup,"ax",@progbits
.LHOTB15:
	.type	conn_cleanup, @function
conn_cleanup:
.LFB106:
	.loc 1 4369 0
	.cfi_startproc
.LVL120:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	.loc 1 4371 0
	leal	40(%eax), %esi
	.loc 1 4369 0
	pushl	%ebx
	.cfi_offset 3, -16
	.loc 1 4369 0
	movl	%eax, %ebx
.LVL121:
.L144:
	.loc 1 4371 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%esi
	call	net_buf_get
.LVL122:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L147
	.loc 1 4372 0
	subl	$12, %esp
	pushl	%eax
	call	net_buf_unref
.LVL123:
	addl	$16, %esp
	jmp	.L144
.LVL124:
.L147:
	.loc 1 4375 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_conn_notify_tx
.LVL125:
	.loc 1 4376 0
	movl	%ebx, %eax
.LBB136:
.LBB137:
	.loc 1 4637 0
	addl	$60, %ebx
.LVL126:
.LBE137:
.LBE136:
	.loc 1 4376 0
	call	bt_conn_reset_rx_state
.LVL127:
.LBB139:
.LBB138:
	.loc 1 4637 0
	movl	%ebx, (%esp)
	call	atomic_dec
.LVL128:
.LBE138:
.LBE139:
	.loc 1 4378 0
	addl	$16, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL129:
	popl	%esi
	.cfi_restore 6
.LVL130:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE106:
	.size	conn_cleanup, .-conn_cleanup
	.section	.text.unlikely.conn_cleanup
.LCOLDE15:
	.section	.text.conn_cleanup
.LHOTE15:
	.section	.text.unlikely.bt_conn_prepare_events,"ax",@progbits
.LCOLDB16:
	.section	.text.bt_conn_prepare_events,"ax",@progbits
.LHOTB16:
	.globl	bt_conn_prepare_events
	.type	bt_conn_prepare_events, @function
bt_conn_prepare_events:
.LFB107:
	.loc 1 4380 0
	.cfi_startproc
.LVL131:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 4380 0
	movl	8(%ebp), %ebx
	.loc 1 4384 0
	pushl	$conn_change
	pushl	$0
	pushl	$1
	.loc 1 4383 0
	movl	$0, conn_change+8
.LVL132:
	.loc 1 4384 0
	pushl	%ebx
	call	k_poll_event_init
.LVL133:
.LBB143:
	.loc 1 4388 0
	movl	$conns+60, (%esp)
	call	atomic_get
.LVL134:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L157
	.loc 1 4391 0
	cmpb	$0, conns+12
	jne	.L151
.LVL135:
.LBB144:
.LBB145:
	.loc 1 857 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	$-65
	pushl	$conns+4
.LVL136:
	call	atomic_and
.LVL137:
.LBE145:
.LBE144:
	.loc 1 4391 0 discriminator 1
	addl	$16, %esp
	testb	$64, %al
	je	.L151
	.loc 1 4393 0
	movl	$conns, %eax
	call	conn_cleanup
.LVL138:
.L157:
	.loc 1 4394 0
	movl	$1, %eax
	jmp	.L150
.L151:
	.loc 1 4396 0
	cmpb	$3, conns+12
	jne	.L157
	.loc 1 4400 0
	leal	20(%ebx), %eax
	pushl	$conns+28
	pushl	$0
	pushl	$3
	pushl	%eax
	call	k_poll_event_init
.LVL139:
	.loc 1 4405 0
	leal	40(%ebx), %eax
	.loc 1 4404 0
	movb	$1, 32(%ebx)
	.loc 1 4405 0
	pushl	$conns+40
	pushl	$0
	pushl	$3
	pushl	%eax
	call	k_poll_event_init
.LVL140:
	.loc 1 4409 0
	movb	$2, 52(%ebx)
	addl	$32, %esp
	movl	$3, %eax
.LVL141:
.L150:
.LBE143:
	.loc 1 4412 0 discriminator 2
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE107:
	.size	bt_conn_prepare_events, .-bt_conn_prepare_events
	.section	.text.unlikely.bt_conn_prepare_events
.LCOLDE16:
	.section	.text.bt_conn_prepare_events
.LHOTE16:
	.section	.text.unlikely.bt_conn_add_le,"ax",@progbits
.LCOLDB17:
	.section	.text.bt_conn_add_le,"ax",@progbits
.LHOTB17:
	.globl	bt_conn_add_le
	.type	bt_conn_add_le, @function
bt_conn_add_le:
.LFB109:
	.loc 1 4430 0
	.cfi_startproc
.LVL142:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 4430 0
	movl	8(%ebp), %esi
.LBB150:
.LBB151:
	.loc 1 3967 0
	subl	$12, %esp
	pushl	$conns+60
	call	atomic_get
.LVL143:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L159
.LBE151:
.LBE150:
	.loc 1 4434 0
	xorl	%eax, %eax
	jmp	.L161
.L159:
.LVL144:
.LBB154:
.LBB152:
	.loc 1 3977 0
	movl	$conns, %edx
	movl	$36, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 3978 0
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	$conns+60
	call	atomic_set
.LVL145:
.LBE152:
.LBE154:
.LBB155:
.LBB156:
	.loc 1 1338 0
	movl	$conns+64, %eax
.LVL146:
	movl	$7, %ecx
	movl	%eax, %edi
	rep movsb
.LVL147:
.LBE156:
.LBE155:
	.loc 1 4438 0
	movb	$1, conns+8
	.loc 1 4439 0
	movb	$1, conns+9
	.loc 1 4440 0
	movb	$0, conns+2
	.loc 1 4441 0
	movw	$24, conns+88
	.loc 1 4443 0
	popl	%edx
	popl	%ecx
	pushl	$le_conn_update
	pushl	$conns+108
	.loc 1 4442 0
	movw	$40, conns+90
	.loc 1 4443 0
	call	k_delayed_work_init
.LVL148:
	.loc 1 4444 0
	addl	$16, %esp
.LBB157:
.LBB153:
	.loc 1 3968 0
	movl	$conns, %eax
.L161:
.LBE153:
.LBE157:
	.loc 1 4445 0
	leal	-8(%ebp), %esp
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
	.size	bt_conn_add_le, .-bt_conn_add_le
	.section	.text.unlikely.bt_conn_add_le
.LCOLDE17:
	.section	.text.bt_conn_add_le
.LHOTE17:
	.section	.text.unlikely.bt_conn_set_state,"ax",@progbits
.LCOLDB18:
	.section	.text.bt_conn_set_state,"ax",@progbits
.LHOTB18:
	.globl	bt_conn_set_state
	.type	bt_conn_set_state, @function
bt_conn_set_state:
.LFB111:
	.loc 1 4468 0
	.cfi_startproc
.LVL149:
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
	.loc 1 4468 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 4471 0
	movb	12(%ebx), %dl
	cmpb	%al, %dl
	je	.L163
.LVL150:
	.loc 1 4477 0
	testb	%dl, %dl
	.loc 1 4476 0
	movb	%al, 12(%ebx)
	.loc 1 4477 0
	jne	.L166
.LBB184:
.LBB185:
	.loc 1 4631 0
	leal	60(%ebx), %eax
	subl	$12, %esp
	movb	%dl, -9(%ebp)
.LVL151:
	pushl	%eax
	call	atomic_inc
.LVL152:
	movb	-9(%ebp), %dl
	addl	$16, %esp
.LVL153:
.L166:
.LBE185:
.LBE184:
	.loc 1 4490 0
	movb	12(%ebx), %al
	testb	%al, %al
	je	.L168
	cmpb	$3, %al
	jne	.L163
	.loc 1 4492 0
	cmpb	$2, 2(%ebx)
	je	.L163
	.loc 1 4495 0
	leal	40(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	k_queue_init
.LVL154:
	.loc 1 4496 0
	leal	28(%ebx), %eax
	movl	%eax, (%esp)
	call	k_queue_init
.LVL155:
	.loc 1 4497 0
	popl	%ecx
	popl	%esi
	pushl	$0
	pushl	$conn_change
	call	k_poll_signal
.LVL156:
.LBB186:
.LBB187:
	.loc 1 73 0
	movl	$0, 52(%ebx)
	.loc 1 76 0
	movl	$0, 56(%ebx)
.LVL157:
.LBE187:
.LBE186:
	.loc 1 4499 0
	movl	%ebx, (%esp)
	call	bt_l2cap_connected
.LVL158:
	.loc 1 4500 0
	addl	$16, %esp
	.loc 1 4545 0
	leal	-8(%ebp), %esp
	.loc 1 4500 0
	movl	%ebx, %eax
	.loc 1 4545 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4500 0
	jmp	notify_connected
.LVL159:
.L168:
	.cfi_restore_state
	.loc 1 4503 0
	cmpb	$2, 2(%ebx)
	je	.L190
	.loc 1 4507 0
	leal	-3(%edx), %eax
	cmpb	$1, %al
	ja	.L172
	.loc 1 4509 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_l2cap_disconnected
.LVL160:
.LBB188:
.LBB189:
	.loc 1 3888 0
	movl	callback_list, %esi
.LVL161:
	addl	$16, %esp
.L173:
	testl	%esi, %esi
	je	.L179
	.loc 1 3889 0
	movl	4(%esi), %eax
	testl	%eax, %eax
	je	.L174
	.loc 1 3890 0
	pushl	%edx
	pushl	%edx
	movzbl	11(%ebx), %edx
	pushl	%edx
	pushl	%ebx
	call	*%eax
.LVL162:
	addl	$16, %esp
.L174:
	.loc 1 3888 0
	movl	24(%esi), %esi
.LVL163:
	jmp	.L173
.LVL164:
.L192:
.LBE189:
.LBE188:
.LBB190:
.LBB191:
.LBB192:
.LBB193:
.LBB194:
.LBB195:
	.loc 1 162 0
	cmpl	24(%ebx), %esi
	.loc 1 161 0
	movl	(%esi), %edx
	movl	%edx, 20(%ebx)
	.loc 1 162 0
	jne	.L176
	.loc 1 163 0
	movl	%edx, 24(%ebx)
.LVL165:
.L176:
.LBE195:
.LBE194:
.LBE193:
.LBE192:
	.loc 1 4453 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL166:
	.loc 1 4454 0
	addl	$16, %esp
	testl	%esi, %esi
	je	.L177
.LVL167:
.LBB197:
.LBB198:
.LBB199:
.LBB200:
	.loc 1 109 0
	cmpl	$0, free_tx+4
	.loc 1 107 0
	movl	free_tx, %eax
.LBE200:
.LBE199:
	.loc 1 4196 0
	movl	$0, 4(%esi)
.LVL168:
.LBB202:
.LBB201:
	.loc 1 107 0
	movl	%eax, (%esi)
	.loc 1 108 0
	movl	%esi, free_tx
	.loc 1 109 0
	jne	.L178
	.loc 1 110 0
	movl	%esi, free_tx+4
.L178:
.LVL169:
.LBE201:
.LBE202:
.LBE198:
.LBE197:
	.loc 1 4464 0
	subl	$12, %esp
	pushl	$bt_dev+132
	call	k_sem_give
.LVL170:
	addl	$16, %esp
.LVL171:
.L179:
	.loc 1 4451 0
	call	irq_lock
.LVL172:
	movl	20(%ebx), %esi
.LVL173:
.LBB203:
.LBB196:
	.loc 1 171 0
	testl	%esi, %esi
	jne	.L192
	jmp	.L176
.LVL174:
.L177:
.LBE196:
.LBE203:
.LBE191:
.LBE190:
	.loc 1 4512 0
	cmpb	$0, 2(%ebx)
	jne	.L180
	.loc 1 4513 0
	leal	108(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	k_delayed_work_cancel
.LVL175:
	addl	$16, %esp
.L180:
.LVL176:
	.loc 1 4515 0
	addl	$4, %ebx
.LVL177:
.LBB204:
.LBB205:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$64
	pushl	%ebx
	call	atomic_or
.LVL178:
.LBE205:
.LBE204:
	.loc 1 4516 0
	movl	$0, 12(%ebp)
	movl	$conn_change, 8(%ebp)
.LVL179:
	addl	$16, %esp
	.loc 1 4545 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL180:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4516 0
	jmp	k_poll_signal
.LVL181:
.L172:
	.cfi_restore_state
	.loc 1 4517 0
	cmpb	$2, %dl
	jne	.L181
.L191:
	.loc 1 4518 0
	movl	%ebx, %eax
	call	notify_connected
.LVL182:
.L190:
.LBB206:
.LBB207:
	.loc 1 4637 0
	addl	$60, %ebx
.LVL183:
	movl	%ebx, 8(%ebp)
.LVL184:
.LBE207:
.LBE206:
	.loc 1 4545 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL185:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB209:
.LBB208:
	.loc 1 4637 0
	jmp	atomic_dec
.LVL186:
.L181:
	.cfi_restore_state
.LBE208:
.LBE209:
	.loc 1 4520 0
	decb	%dl
	jne	.L163
	.loc 1 4521 0
	cmpb	$0, 11(%ebx)
	je	.L190
	jmp	.L191
.L163:
	.loc 1 4545 0
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
	.size	bt_conn_set_state, .-bt_conn_set_state
	.section	.text.unlikely.bt_conn_set_state
.LCOLDE18:
	.section	.text.bt_conn_set_state
.LHOTE18:
	.section	.text.unlikely.bt_conn_lookup_handle,"ax",@progbits
.LCOLDB19:
	.section	.text.bt_conn_lookup_handle,"ax",@progbits
.LHOTB19:
	.globl	bt_conn_lookup_handle
	.type	bt_conn_lookup_handle, @function
bt_conn_lookup_handle:
.LFB112:
	.loc 1 4547 0
	.cfi_startproc
.LVL187:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 4547 0
	movl	8(%ebp), %ebx
	.loc 1 4550 0
	pushl	$conns+60
	call	atomic_get
.LVL188:
	addl	$16, %esp
	.loc 1 4562 0
	xorl	%ecx, %ecx
	.loc 1 4550 0
	testl	%eax, %eax
	je	.L194
	.loc 1 4553 0
	movb	conns+12, %al
	leal	-3(%eax), %edx
	cmpb	$1, %dl
	ja	.L194
	.loc 1 4557 0
	cmpw	%bx, conns
	jne	.L194
.LVL189:
.LBB210:
.LBB211:
	.loc 1 4631 0
	subl	$12, %esp
	pushl	$conns+60
	call	atomic_inc
.LVL190:
.LBE211:
.LBE210:
	.loc 1 4558 0
	addl	$16, %esp
	movl	$conns, %ecx
.L194:
	.loc 1 4564 0
	movl	%ecx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE112:
	.size	bt_conn_lookup_handle, .-bt_conn_lookup_handle
	.section	.text.unlikely.bt_conn_lookup_handle
.LCOLDE19:
	.section	.text.bt_conn_lookup_handle
.LHOTE19:
	.section	.text.unlikely.bt_conn_addr_le_cmp,"ax",@progbits
.LCOLDB20:
	.section	.text.bt_conn_addr_le_cmp,"ax",@progbits
.LHOTB20:
	.globl	bt_conn_addr_le_cmp
	.type	bt_conn_addr_le_cmp, @function
bt_conn_addr_le_cmp:
.LFB113:
	.loc 1 4566 0
	.cfi_startproc
.LVL191:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4566 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
.LVL192:
.LBB220:
.LBB221:
	.loc 1 1330 0
	pushl	%ecx
	pushl	$7
	leal	64(%ebx), %eax
.LVL193:
	pushl	%eax
	pushl	%esi
	call	memcmp
.LVL194:
	addl	$16, %esp
.LVL195:
.LBE221:
.LBE220:
	.loc 1 4567 0
	testl	%eax, %eax
	je	.L201
.LVL196:
.LBB222:
.LBB223:
	.loc 1 4570 0
	cmpb	$0, 3(%ebx)
	jne	.L202
.LVL197:
.LBB224:
.LBB225:
	.loc 1 1330 0
	addl	$78, %ebx
.LVL198:
	pushl	%edx
	pushl	$7
	jmp	.L207
.LVL199:
.L202:
.LBE225:
.LBE224:
.LBB226:
.LBB227:
	pushl	%eax
	pushl	$7
	addl	$71, %ebx
.LVL200:
.L207:
	pushl	%ebx
	pushl	%esi
	call	memcmp
.LVL201:
	addl	$16, %esp
.LVL202:
.L201:
.LBE227:
.LBE226:
.LBE223:
.LBE222:
	.loc 1 4574 0
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
.LFE113:
	.size	bt_conn_addr_le_cmp, .-bt_conn_addr_le_cmp
	.section	.text.unlikely.bt_conn_addr_le_cmp
.LCOLDE20:
	.section	.text.bt_conn_addr_le_cmp
.LHOTE20:
	.section	.text.unlikely.bt_conn_lookup_addr_le,"ax",@progbits
.LCOLDB21:
	.section	.text.bt_conn_lookup_addr_le,"ax",@progbits
.LHOTB21:
	.globl	bt_conn_lookup_addr_le
	.type	bt_conn_lookup_addr_le, @function
bt_conn_lookup_addr_le:
.LFB114:
	.loc 1 4576 0
	.cfi_startproc
.LVL203:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 4590 0
	xorl	%ebx, %ebx
	.loc 1 4576 0
	subl	$16, %esp
	.loc 1 4579 0
	pushl	$conns+60
	call	atomic_get
.LVL204:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L209
	.loc 1 4582 0
	cmpb	$0, conns+2
	jne	.L209
	.loc 1 4585 0
	pushl	%eax
	pushl	%eax
	pushl	8(%ebp)
	pushl	$conns
	call	bt_conn_addr_le_cmp
.LVL205:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L209
.LVL206:
.LBB228:
.LBB229:
	.loc 1 4631 0
	subl	$12, %esp
.LBE229:
.LBE228:
	.loc 1 4585 0
	movl	$conns, %ebx
.LBB231:
.LBB230:
	.loc 1 4631 0
	pushl	$conns+60
	call	atomic_inc
.LVL207:
.LBE230:
.LBE231:
	.loc 1 4586 0
	addl	$16, %esp
.L209:
	.loc 1 4592 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE114:
	.size	bt_conn_lookup_addr_le, .-bt_conn_lookup_addr_le
	.section	.text.unlikely.bt_conn_lookup_addr_le
.LCOLDE21:
	.section	.text.bt_conn_lookup_addr_le
.LHOTE21:
	.section	.text.unlikely.bt_conn_lookup_state_le,"ax",@progbits
.LCOLDB22:
	.section	.text.bt_conn_lookup_state_le,"ax",@progbits
.LHOTB22:
	.globl	bt_conn_lookup_state_le
	.type	bt_conn_lookup_state_le, @function
bt_conn_lookup_state_le:
.LFB115:
	.loc 1 4595 0
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 4612 0
	xorl	%ebx, %ebx
	.loc 1 4595 0
	subl	$24, %esp
	.loc 1 4595 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	.loc 1 4598 0
	pushl	$conns+60
	call	atomic_get
.LVL209:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L216
	.loc 1 4601 0
	cmpb	$0, conns+2
	jne	.L216
	.loc 1 4604 0
	testl	%esi, %esi
	je	.L217
	.loc 1 4604 0 is_stmt 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	%esi
	pushl	$conns
	call	bt_conn_addr_le_cmp
.LVL210:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L216
.L217:
	.loc 1 4612 0 is_stmt 1
	xorl	%ebx, %ebx
	.loc 1 4607 0
	movl	%edi, %eax
	cmpb	%al, conns+12
	jne	.L216
.LVL211:
.LBB232:
.LBB233:
	.loc 1 4631 0
	subl	$12, %esp
.LBE233:
.LBE232:
	.loc 1 4608 0
	movl	$conns, %ebx
.LBB235:
.LBB234:
	.loc 1 4631 0
	pushl	$conns+60
	call	atomic_inc
.LVL212:
.LBE234:
.LBE235:
	.loc 1 4608 0
	addl	$16, %esp
.L216:
	.loc 1 4614 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
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
	.size	bt_conn_lookup_state_le, .-bt_conn_lookup_state_le
	.section	.text.unlikely.bt_conn_lookup_state_le
.LCOLDE22:
	.section	.text.bt_conn_lookup_state_le
.LHOTE22:
	.section	.text.unlikely.bt_conn_ref,"ax",@progbits
.LCOLDB23:
	.section	.text.bt_conn_ref,"ax",@progbits
.LHOTB23:
	.globl	bt_conn_ref
	.type	bt_conn_ref, @function
bt_conn_ref:
.LFB117:
	.loc 1 4630 0
	.cfi_startproc
.LVL213:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 4630 0
	movl	8(%ebp), %ebx
	.loc 1 4631 0
	leal	60(%ebx), %eax
	pushl	%eax
	call	atomic_inc
.LVL214:
	.loc 1 4634 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE117:
	.size	bt_conn_ref, .-bt_conn_ref
	.section	.text.unlikely.bt_conn_ref
.LCOLDE23:
	.section	.text.bt_conn_ref
.LHOTE23:
	.section	.text.unlikely.bt_conn_unref,"ax",@progbits
.LCOLDB24:
	.section	.text.bt_conn_unref,"ax",@progbits
.LHOTB24:
	.globl	bt_conn_unref
	.type	bt_conn_unref, @function
bt_conn_unref:
.LFB118:
	.loc 1 4636 0
	.cfi_startproc
.LVL215:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4637 0
	addl	$60, 8(%ebp)
.LVL216:
	.loc 1 4639 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4637 0
	jmp	atomic_dec
.LVL217:
	.cfi_endproc
.LFE118:
	.size	bt_conn_unref, .-bt_conn_unref
	.section	.text.unlikely.bt_conn_unref
.LCOLDE24:
	.section	.text.bt_conn_unref
.LHOTE24:
	.section	.text.unlikely.bt_conn_get_dst,"ax",@progbits
.LCOLDB25:
	.section	.text.bt_conn_get_dst,"ax",@progbits
.LHOTB25:
	.globl	bt_conn_get_dst
	.type	bt_conn_get_dst, @function
bt_conn_get_dst:
.LFB119:
	.loc 1 4641 0
	.cfi_startproc
.LVL218:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4642 0
	movl	8(%ebp), %eax
	.loc 1 4643 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4642 0
	addl	$64, %eax
	.loc 1 4643 0
	ret
	.cfi_endproc
.LFE119:
	.size	bt_conn_get_dst, .-bt_conn_get_dst
	.section	.text.unlikely.bt_conn_get_dst
.LCOLDE25:
	.section	.text.bt_conn_get_dst
.LHOTE25:
	.section	.text.unlikely.bt_conn_get_info,"ax",@progbits
.LCOLDB26:
	.section	.text.bt_conn_get_info,"ax",@progbits
.LHOTB26:
	.globl	bt_conn_get_info
	.type	bt_conn_get_info, @function
bt_conn_get_info:
.LFB120:
	.loc 1 4645 0
	.cfi_startproc
.LVL219:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 4645 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	.loc 1 4646 0
	movb	2(%edx), %cl
	movb	%cl, (%eax)
	.loc 1 4647 0
	movb	3(%edx), %cl
	movb	%cl, 1(%eax)
	.loc 1 4648 0
	cmpb	$0, 2(%edx)
	jne	.L239
	.loc 1 4650 0
	cmpb	$0, 3(%edx)
	leal	71(%edx), %ecx
	leal	78(%edx), %ebx
	jne	.L236
	.loc 1 4651 0
	movl	%ecx, 4(%eax)
	.loc 1 4652 0
	movl	%ebx, 8(%eax)
	jmp	.L237
.L236:
	.loc 1 4654 0
	movl	%ebx, 4(%eax)
	.loc 1 4655 0
	movl	%ecx, 8(%eax)
.LVL220:
.L237:
	.loc 1 4657 0
	movw	86(%edx), %cx
	movw	%cx, 12(%eax)
	.loc 1 4658 0
	movl	92(%edx), %ecx
	movw	%cx, 14(%eax)
	.loc 1 4659 0
	movw	94(%edx), %dx
	movw	%dx, 16(%eax)
	.loc 1 4660 0
	xorl	%eax, %eax
.LVL221:
	jmp	.L234
.LVL222:
.L239:
	.loc 1 4662 0
	movl	$-22, %eax
.LVL223:
.L234:
	.loc 1 4663 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE120:
	.size	bt_conn_get_info, .-bt_conn_get_info
	.section	.text.unlikely.bt_conn_get_info
.LCOLDE26:
	.section	.text.bt_conn_get_info
.LHOTE26:
	.section	.text.unlikely.bt_conn_disconnect,"ax",@progbits
.LCOLDB27:
	.section	.text.bt_conn_disconnect,"ax",@progbits
.LHOTB27:
	.globl	bt_conn_disconnect
	.type	bt_conn_disconnect, @function
bt_conn_disconnect:
.LFB123:
	.loc 1 4702 0
	.cfi_startproc
.LVL224:
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
	.loc 1 4702 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 4709 0
	movb	12(%ebx), %al
	cmpb	$2, %al
	je	.L247
	ja	.L244
	decb	%al
	je	.L245
	jmp	.L242
.L244:
	cmpb	$3, %al
	je	.L246
	cmpb	$4, %al
	je	.L247
.L242:
	.loc 1 4731 0
	movl	$-57, %eax
	jmp	.L243
.L245:
.LVL225:
.LBB240:
.LBB241:
	.loc 1 4711 0
	movl	%esi, %eax
	movb	%al, 11(%ebx)
	.loc 1 4712 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	bt_conn_set_state
.LVL226:
	.loc 1 4713 0
	movl	$0, (%esp)
	call	bt_le_scan_update
.LVL227:
	addl	$16, %esp
	jmp	.L247
.L246:
.LVL228:
.LBE241:
.LBE240:
.LBB242:
.LBB243:
	.loc 1 4669 0
	pushl	%edi
	pushl	%edi
	pushl	$3
	pushl	$1030
	call	bt_hci_cmd_create
.LVL229:
	movl	%eax, %edi
.LVL230:
	.loc 1 4670 0
	addl	$16, %esp
	.loc 1 4671 0
	movl	$-55, %eax
.LVL231:
	.loc 1 4670 0
	testl	%edi, %edi
	je	.L243
	.loc 1 4673 0
	leal	8(%edi), %eax
	pushl	%edx
	pushl	%edx
	pushl	$3
	pushl	%eax
	call	net_buf_simple_add
.LVL232:
	.loc 1 4674 0
	movl	(%ebx), %edx
	.loc 1 4675 0
	movl	%esi, %ecx
	movb	%cl, 2(%eax)
	.loc 1 4674 0
	movw	%dx, (%eax)
	.loc 1 4676 0
	popl	%ecx
	popl	%esi
	pushl	%edi
	pushl	$1030
	call	bt_hci_cmd_send
.LVL233:
	.loc 1 4677 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L243
	movl	%eax, -28(%ebp)
.LVL234:
	.loc 1 4680 0
	pushl	%eax
	pushl	%eax
	pushl	$4
	pushl	%ebx
	call	bt_conn_set_state
.LVL235:
	addl	$16, %esp
	movl	-28(%ebp), %eax
	jmp	.L243
.LVL236:
.L247:
.LBE243:
.LBE242:
	.loc 1 4724 0
	xorl	%eax, %eax
.L243:
	.loc 1 4733 0
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
.LFE123:
	.size	bt_conn_disconnect, .-bt_conn_disconnect
	.section	.text.unlikely.bt_conn_disconnect
.LCOLDE27:
	.section	.text.bt_conn_disconnect
.LHOTE27:
	.section	.text.unlikely.bt_conn_disconnect_all,"ax",@progbits
.LCOLDB28:
	.section	.text.bt_conn_disconnect_all,"ax",@progbits
.LHOTB28:
	.globl	bt_conn_disconnect_all
	.type	bt_conn_disconnect_all, @function
bt_conn_disconnect_all:
.LFB116:
	.loc 1 4616 0
	.cfi_startproc
.LVL237:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB244:
	.loc 1 4620 0
	pushl	$conns+60
	call	atomic_get
.LVL238:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L257
	.loc 1 4623 0
	cmpb	$3, conns+12
	jne	.L257
	.loc 1 4624 0
	pushl	%eax
	pushl	%eax
	pushl	$19
	pushl	$conns
	call	bt_conn_disconnect
.LVL239:
	addl	$16, %esp
.LVL240:
.L257:
.LBE244:
	.loc 1 4628 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE116:
	.size	bt_conn_disconnect_all, .-bt_conn_disconnect_all
	.section	.text.unlikely.bt_conn_disconnect_all
.LCOLDE28:
	.section	.text.bt_conn_disconnect_all
.LHOTE28:
	.section	.text.unlikely.bt_conn_create_slave_le,"ax",@progbits
.LCOLDB29:
	.section	.text.bt_conn_create_slave_le,"ax",@progbits
.LHOTB29:
	.globl	bt_conn_create_slave_le
	.type	bt_conn_create_slave_le, @function
bt_conn_create_slave_le:
.LFB124:
	.loc 1 4736 0
	.cfi_startproc
.LVL241:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4740 0
	xorl	%eax, %eax
	.loc 1 4736 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4740 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE124:
	.size	bt_conn_create_slave_le, .-bt_conn_create_slave_le
	.section	.text.unlikely.bt_conn_create_slave_le
.LCOLDE29:
	.section	.text.bt_conn_create_slave_le
.LHOTE29:
	.section	.text.unlikely.bt_conn_le_conn_update,"ax",@progbits
.LCOLDB30:
	.section	.text.bt_conn_le_conn_update,"ax",@progbits
.LHOTB30:
	.globl	bt_conn_le_conn_update
	.type	bt_conn_le_conn_update, @function
bt_conn_le_conn_update:
.LFB125:
	.loc 1 4743 0
	.cfi_startproc
.LVL242:
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
	.loc 1 4743 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ebx
	.loc 1 4746 0
	pushl	$14
	pushl	$8211
	.loc 1 4743 0
	movl	%eax, -28(%ebp)
	.loc 1 4746 0
	call	bt_hci_cmd_create
.LVL243:
	.loc 1 4748 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L266
	movl	%eax, %esi
.LVL244:
	.loc 1 4751 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$14
	pushl	%eax
	call	net_buf_simple_add
.LVL245:
	movl	%eax, %edx
.LVL246:
	.loc 1 4752 0
	movl	$14, %ecx
	xorl	%eax, %eax
.LVL247:
	movl	%edx, %edi
	.loc 1 4758 0
	addl	$16, %esp
	.loc 1 4752 0
	rep stosb
	.loc 1 4753 0
	movl	-28(%ebp), %eax
	movl	(%eax), %eax
	movw	%ax, (%edx)
	.loc 1 4754 0
	movw	(%ebx), %ax
	movw	%ax, 2(%edx)
	.loc 1 4755 0
	movw	2(%ebx), %ax
	movw	%ax, 4(%edx)
	.loc 1 4756 0
	movw	4(%ebx), %ax
	movw	%ax, 6(%edx)
	.loc 1 4757 0
	movw	6(%ebx), %ax
	movw	%ax, 8(%edx)
	.loc 1 4758 0
	movl	%esi, 12(%ebp)
	movl	$8211, 8(%ebp)
	.loc 1 4759 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL248:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4758 0
	jmp	bt_hci_cmd_send
.LVL249:
.L266:
	.cfi_restore_state
	.loc 1 4759 0
	leal	-12(%ebp), %esp
	movl	$-55, %eax
.LVL250:
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
.LFE125:
	.size	bt_conn_le_conn_update, .-bt_conn_le_conn_update
	.section	.text.unlikely.bt_conn_le_conn_update
.LCOLDE30:
	.section	.text.bt_conn_le_conn_update
.LHOTE30:
	.section	.text.unlikely.bt_conn_le_param_update,"ax",@progbits
.LCOLDB31:
	.section	.text.bt_conn_le_param_update,"ax",@progbits
.LHOTB31:
	.globl	bt_conn_le_param_update
	.type	bt_conn_le_param_update, @function
bt_conn_le_param_update:
.LFB122:
	.loc 1 4685 0
	.cfi_startproc
.LVL251:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4685 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	.loc 1 4687 0
	movw	86(%ebx), %ax
	cmpw	(%esi), %ax
	jb	.L269
	.loc 1 4687 0 is_stmt 0 discriminator 1
	cmpw	2(%esi), %ax
	ja	.L269
	.loc 1 4688 0 is_stmt 1
	movw	4(%esi), %ax
	cmpw	%ax, 92(%ebx)
	jne	.L269
	.loc 1 4689 0
	movw	6(%esi), %ax
	cmpw	%ax, 94(%ebx)
	je	.L270
.L269:
	.loc 1 4693 0
	leal	108(%ebx), %eax
	subl	$12, %esp
	pushl	%eax
	call	k_delayed_work_cancel
.LVL252:
	.loc 1 4694 0
	addl	$16, %esp
	testb	$2, bt_dev+112
	je	.L271
	.loc 1 4694 0 is_stmt 0 discriminator 1
	testb	$2, 96(%ebx)
	jne	.L272
.L271:
	.loc 1 4695 0 is_stmt 1
	cmpb	$0, 3(%ebx)
	jne	.L273
.L272:
	.loc 1 4697 0
	movl	%esi, 12(%ebp)
	movl	%ebx, 8(%ebp)
	.loc 1 4700 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4697 0
	jmp	bt_conn_le_conn_update
.LVL253:
.L273:
	.cfi_restore_state
	.loc 1 4699 0
	movl	%esi, 12(%ebp)
	movl	%ebx, 8(%ebp)
	.loc 1 4700 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4699 0
	jmp	bt_l2cap_update_conn_param
.LVL254:
.L270:
	.cfi_restore_state
	.loc 1 4700 0
	leal	-8(%ebp), %esp
	movl	$-69, %eax
	popl	%ebx
	.cfi_restore 3
.LVL255:
	popl	%esi
	.cfi_restore 6
.LVL256:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE122:
	.size	bt_conn_le_param_update, .-bt_conn_le_param_update
	.section	.text.unlikely.bt_conn_le_param_update
.LCOLDE31:
	.section	.text.bt_conn_le_param_update
.LHOTE31:
	.section	.text.unlikely.le_conn_update,"ax",@progbits
.LCOLDB32:
	.section	.text.le_conn_update,"ax",@progbits
.LHOTB32:
	.type	le_conn_update, @function
le_conn_update:
.LFB85:
	.loc 1 3934 0
	.cfi_startproc
.LVL257:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 3934 0
	movl	8(%ebp), %eax
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LVL258:
	.loc 1 3956 0
	movl	-20(%eax), %edx
	.loc 1 3943 0
	subl	$108, %eax
.LVL259:
	.loc 1 3956 0
	movw	%dx, -20(%ebp)
	movw	90(%eax), %dx
	movw	%dx, -18(%ebp)
	movl	92(%eax), %edx
	movw	%dx, -16(%ebp)
	movw	94(%eax), %dx
	movw	%dx, -14(%ebp)
.LVL260:
	.loc 1 3958 0
	leal	-20(%ebp), %edx
.LVL261:
	pushl	%edx
	pushl	%eax
	call	bt_conn_le_param_update
.LVL262:
	addl	$16, %esp
	.loc 1 3959 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L279
	call	__stack_chk_fail
.LVL263:
.L279:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	le_conn_update, .-le_conn_update
	.section	.text.unlikely.le_conn_update
.LCOLDE32:
	.section	.text.le_conn_update
.LHOTE32:
	.section	.text.unlikely.bt_conn_create_pdu,"ax",@progbits
.LCOLDB33:
	.section	.text.bt_conn_create_pdu,"ax",@progbits
.LHOTB33:
	.globl	bt_conn_create_pdu
	.type	bt_conn_create_pdu, @function
bt_conn_create_pdu:
.LFB126:
	.loc 1 4761 0
	.cfi_startproc
.LVL264:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4764 0
	movl	$acl_tx_pool, %edx
	.loc 1 4761 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 4761 0
	movl	8(%ebp), %eax
	.loc 1 4766 0
	pushl	$-1
	.loc 1 4764 0
	testl	%eax, %eax
	cmove	%edx, %eax
.LVL265:
	.loc 1 4766 0
	pushl	%eax
	call	net_buf_alloc
.LVL266:
	.loc 1 4769 0
	popl	%edx
	popl	%ecx
	movl	12(%ebp), %ecx
	movl	%eax, -12(%ebp)
	leal	5(%ecx), %edx
.LVL267:
	pushl	%edx
	pushl	%eax
	call	net_buf_reserve
.LVL268:
	.loc 1 4771 0
	movl	-12(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE126:
	.size	bt_conn_create_pdu, .-bt_conn_create_pdu
	.section	.text.unlikely.bt_conn_create_pdu
.LCOLDE33:
	.section	.text.bt_conn_create_pdu
.LHOTE33:
	.section	.text.unlikely.create_frag.isra.6,"ax",@progbits
.LCOLDB34:
	.section	.text.create_frag.isra.6,"ax",@progbits
.LHOTB34:
	.type	create_frag.isra.6, @function
create_frag.isra.6:
.LFB141:
	.loc 1 4302 0
	.cfi_startproc
.LVL269:
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
	movl	%eax, %esi
	subl	$36, %esp
	.loc 1 4302 0
	movl	%edx, -28(%ebp)
	.loc 1 4306 0
	pushl	$0
	pushl	$0
	call	bt_conn_create_pdu
.LVL270:
	.loc 1 4309 0
	addl	$16, %esp
	cmpb	$3, (%esi)
	.loc 1 4306 0
	movl	%eax, %ebx
.LVL271:
	.loc 1 4309 0
	je	.L285
	.loc 1 4310 0
	subl	$12, %esp
	pushl	%eax
	call	net_buf_unref
.LVL272:
	addl	$16, %esp
	.loc 1 4312 0
	xorl	%eax, %eax
	jmp	.L286
.LVL273:
.L285:
	.loc 1 4315 0
	movzwl	14(%eax), %eax
.LVL274:
	.loc 1 4318 0
	movzwl	bt_dev+128, %esi
	leal	8(%ebx), %edi
	subl	$12, %esp
	.loc 1 4315 0
	leal	19(%ebx,%eax), %eax
	andl	$-4, %eax
	movl	$0, (%eax)
.LVL275:
	.loc 1 4318 0
	pushl	%edi
	call	net_buf_simple_tailroom
.LVL276:
	addl	$16, %esp
	cmpl	%eax, %esi
	jnb	.L287
.LVL277:
.LBB251:
.LBB252:
	.loc 1 4300 0
	movl	bt_dev+128, %eax
	jmp	.L288
.LVL278:
.L287:
.LBE252:
.LBE251:
	.loc 1 4318 0
	subl	$12, %esp
	pushl	%edi
	call	net_buf_simple_tailroom
.LVL279:
	addl	$16, %esp
.L288:
.LVL280:
	.loc 1 4319 0
	movzwl	%ax, %esi
.LVL281:
	pushl	%eax
	movl	-28(%ebp), %eax
	pushl	%esi
	pushl	8(%eax)
	pushl	%edi
	call	net_buf_simple_add_mem
.LVL282:
	.loc 1 4320 0
	movl	-28(%ebp), %eax
	popl	%edx
	popl	%ecx
	leal	8(%eax), %edi
	pushl	%esi
	pushl	%edi
	call	net_buf_simple_pull
.LVL283:
	addl	$16, %esp
	movl	%ebx, %eax
.LVL284:
.L286:
	.loc 1 4322 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL285:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL286:
	ret
	.cfi_endproc
.LFE141:
	.size	create_frag.isra.6, .-create_frag.isra.6
	.section	.text.unlikely.create_frag.isra.6
.LCOLDE34:
	.section	.text.create_frag.isra.6
.LHOTE34:
	.section	.text.unlikely.bt_conn_process_tx,"ax",@progbits
.LCOLDB35:
	.section	.text.bt_conn_process_tx,"ax",@progbits
.LHOTB35:
	.globl	bt_conn_process_tx
	.type	bt_conn_process_tx, @function
bt_conn_process_tx:
.LFB108:
	.loc 1 4414 0
	.cfi_startproc
.LVL287:
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
	.loc 1 4414 0
	movl	8(%ebp), %ebx
	.loc 1 4417 0
	cmpb	$0, 12(%ebx)
	jne	.L291
.LVL288:
	.loc 1 4418 0 discriminator 1
	leal	4(%ebx), %eax
.LVL289:
.LBB261:
.LBB262:
	.loc 1 857 0 discriminator 1
	pushl	%edx
	pushl	%edx
	pushl	$-65
	pushl	%eax
	call	atomic_and
.LVL290:
.LBE262:
.LBE261:
	.loc 1 4417 0 discriminator 1
	addl	$16, %esp
	testb	$64, %al
	je	.L291
	.loc 1 4428 0
	leal	-12(%ebp), %esp
	.loc 1 4420 0
	movl	%ebx, %eax
	.loc 1 4428 0
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
	.loc 1 4420 0
	jmp	conn_cleanup
.LVL291:
.L291:
	.cfi_restore_state
	.loc 1 4423 0
	pushl	%eax
	pushl	%eax
	leal	40(%ebx), %eax
	pushl	$0
	pushl	%eax
	call	net_buf_get
.LVL292:
	movl	%eax, %esi
.LVL293:
.LBB263:
.LBB264:
	.loc 1 4329 0
	addl	$16, %esp
	movl	bt_dev+128, %eax
.LVL294:
	cmpw	%ax, 12(%esi)
	ja	.L292
	.loc 1 4330 0
	subl	$12, %esp
	xorl	%ecx, %ecx
	pushl	$0
	jmp	.L317
.L292:
	leal	12(%ebx), %edi
	.loc 1 4334 0
	movl	%esi, %edx
	movl	%edi, %eax
	call	create_frag.isra.6
.LVL295:
	.loc 1 4335 0
	testl	%eax, %eax
	je	.L297
	.loc 1 4340 0
	subl	$12, %esp
	xorl	%ecx, %ecx
	pushl	$1
.L316:
	.loc 1 4354 0
	movl	%eax, %edx
	movl	%ebx, %eax
.LVL296:
	call	send_frag
.LVL297:
	addl	$16, %esp
	testb	%al, %al
	je	.L297
.LVL298:
	.loc 1 4347 0
	movl	bt_dev+128, %eax
	cmpw	%ax, 12(%esi)
	jbe	.L318
	.loc 1 4348 0
	movl	%esi, %edx
	movl	%edi, %eax
	call	create_frag.isra.6
.LVL299:
	.loc 1 4349 0
	testl	%eax, %eax
	je	.L297
	.loc 1 4354 0
	subl	$12, %esp
	movl	$1, %ecx
	pushl	$1
	jmp	.L316
.LVL300:
.L318:
	.loc 1 4362 0
	subl	$12, %esp
	movl	$1, %ecx
	pushl	$0
.LVL301:
.L317:
	movl	%esi, %edx
	movl	%ebx, %eax
	call	send_frag
.LVL302:
	addl	$16, %esp
.LVL303:
.LBE264:
.LBE263:
	.loc 1 4425 0
	testb	%al, %al
	jne	.L314
.L297:
	.loc 1 4426 0
	movl	%esi, 8(%ebp)
	.loc 1 4428 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL304:
	popl	%esi
	.cfi_restore 6
.LVL305:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4426 0
	jmp	net_buf_unref
.LVL306:
.L314:
	.cfi_restore_state
	.loc 1 4428 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL307:
	popl	%esi
	.cfi_restore 6
.LVL308:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE108:
	.size	bt_conn_process_tx, .-bt_conn_process_tx
	.section	.text.unlikely.bt_conn_process_tx
.LCOLDE35:
	.section	.text.bt_conn_process_tx
.LHOTE35:
	.section	.text.unlikely.bt_conn_auth_cb_register,"ax",@progbits
.LCOLDB36:
	.section	.text.bt_conn_auth_cb_register,"ax",@progbits
.LHOTB36:
	.globl	bt_conn_auth_cb_register
	.type	bt_conn_auth_cb_register, @function
bt_conn_auth_cb_register:
.LFB127:
	.loc 1 4773 0
	.cfi_startproc
.LVL309:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4773 0
	movl	8(%ebp), %edx
	.loc 1 4774 0
	testl	%edx, %edx
	jne	.L320
	.loc 1 4775 0
	movl	$0, bt_auth
	jmp	.L325
.L320:
	.loc 1 4780 0
	cmpl	$0, 12(%edx)
	.loc 1 4781 0
	movl	$-22, %eax
	.loc 1 4780 0
	je	.L321
	.loc 1 4783 0
	cmpl	$0, bt_auth
	.loc 1 4784 0
	movl	$-69, %eax
	.loc 1 4783 0
	jne	.L321
	.loc 1 4786 0
	movl	%edx, bt_auth
.LVL310:
.L325:
	.loc 1 4787 0
	xorl	%eax, %eax
.L321:
	.loc 1 4788 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE127:
	.size	bt_conn_auth_cb_register, .-bt_conn_auth_cb_register
	.section	.text.unlikely.bt_conn_auth_cb_register
.LCOLDE36:
	.section	.text.bt_conn_auth_cb_register
.LHOTE36:
	.section	.text.unlikely.bt_conn_auth_passkey_entry,"ax",@progbits
.LCOLDB37:
	.section	.text.bt_conn_auth_passkey_entry,"ax",@progbits
.LHOTB37:
	.globl	bt_conn_auth_passkey_entry
	.type	bt_conn_auth_passkey_entry, @function
bt_conn_auth_passkey_entry:
.LFB128:
	.loc 1 4790 0
	.cfi_startproc
.LVL311:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4792 0
	movl	$-22, %eax
	.loc 1 4790 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4791 0
	cmpl	$0, bt_auth
	.loc 1 4790 0
	movl	8(%ebp), %edx
	.loc 1 4791 0
	je	.L327
	.loc 1 4794 0
	cmpb	$0, 2(%edx)
	jne	.L327
	.loc 1 4795 0
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	%edx
	call	bt_smp_auth_passkey_entry
.LVL312:
	.loc 1 4796 0
	addl	$16, %esp
	xorl	%eax, %eax
.L327:
	.loc 1 4799 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE128:
	.size	bt_conn_auth_passkey_entry, .-bt_conn_auth_passkey_entry
	.section	.text.unlikely.bt_conn_auth_passkey_entry
.LCOLDE37:
	.section	.text.bt_conn_auth_passkey_entry
.LHOTE37:
	.section	.text.unlikely.bt_conn_auth_passkey_confirm,"ax",@progbits
.LCOLDB38:
	.section	.text.bt_conn_auth_passkey_confirm,"ax",@progbits
.LHOTB38:
	.globl	bt_conn_auth_passkey_confirm
	.type	bt_conn_auth_passkey_confirm, @function
bt_conn_auth_passkey_confirm:
.LFB129:
	.loc 1 4801 0
	.cfi_startproc
.LVL313:
	.loc 1 4802 0
	cmpl	$0, bt_auth
	.loc 1 4801 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4801 0
	movl	8(%ebp), %eax
	.loc 1 4802 0
	je	.L332
	.loc 1 4805 0
	cmpb	$0, 2(%eax)
	jne	.L332
	.loc 1 4810 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4807 0
	jmp	bt_smp_auth_passkey_confirm
.LVL314:
.L332:
	.cfi_restore_state
	.loc 1 4810 0
	movl	$-22, %eax
.LVL315:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE129:
	.size	bt_conn_auth_passkey_confirm, .-bt_conn_auth_passkey_confirm
	.section	.text.unlikely.bt_conn_auth_passkey_confirm
.LCOLDE38:
	.section	.text.bt_conn_auth_passkey_confirm
.LHOTE38:
	.section	.text.unlikely.bt_conn_auth_cancel,"ax",@progbits
.LCOLDB39:
	.section	.text.bt_conn_auth_cancel,"ax",@progbits
.LHOTB39:
	.globl	bt_conn_auth_cancel
	.type	bt_conn_auth_cancel, @function
bt_conn_auth_cancel:
.LFB130:
	.loc 1 4812 0
	.cfi_startproc
.LVL316:
	.loc 1 4813 0
	cmpl	$0, bt_auth
	.loc 1 4812 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4812 0
	movl	8(%ebp), %eax
	.loc 1 4813 0
	je	.L337
	.loc 1 4816 0
	cmpb	$0, 2(%eax)
	jne	.L337
	.loc 1 4820 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4817 0
	jmp	bt_smp_auth_cancel
.LVL317:
.L337:
	.cfi_restore_state
	.loc 1 4820 0
	movl	$-22, %eax
.LVL318:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE130:
	.size	bt_conn_auth_cancel, .-bt_conn_auth_cancel
	.section	.text.unlikely.bt_conn_auth_cancel
.LCOLDE39:
	.section	.text.bt_conn_auth_cancel
.LHOTE39:
	.section	.text.unlikely.bt_conn_auth_pairing_confirm,"ax",@progbits
.LCOLDB40:
	.section	.text.bt_conn_auth_pairing_confirm,"ax",@progbits
.LHOTB40:
	.globl	bt_conn_auth_pairing_confirm
	.type	bt_conn_auth_pairing_confirm, @function
bt_conn_auth_pairing_confirm:
.LFB131:
	.loc 1 4822 0
	.cfi_startproc
.LVL319:
	.loc 1 4823 0
	cmpl	$0, bt_auth
	.loc 1 4822 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4822 0
	movl	8(%ebp), %eax
	.loc 1 4823 0
	je	.L342
	.loc 1 4826 0
	cmpb	$0, 2(%eax)
	jne	.L342
	.loc 1 4832 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4828 0
	jmp	bt_smp_auth_pairing_confirm
.LVL320:
.L342:
	.cfi_restore_state
	.loc 1 4832 0
	movl	$-22, %eax
.LVL321:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE131:
	.size	bt_conn_auth_pairing_confirm, .-bt_conn_auth_pairing_confirm
	.section	.text.unlikely.bt_conn_auth_pairing_confirm
.LCOLDE40:
	.section	.text.bt_conn_auth_pairing_confirm
.LHOTE40:
	.section	.text.unlikely.bt_conn_get_id,"ax",@progbits
.LCOLDB41:
	.section	.text.bt_conn_get_id,"ax",@progbits
.LHOTB41:
	.globl	bt_conn_get_id
	.type	bt_conn_get_id, @function
bt_conn_get_id:
.LFB132:
	.loc 1 4834 0
	.cfi_startproc
.LVL322:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4835 0
	movl	8(%ebp), %eax
	.loc 1 4836 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4835 0
	subl	$conns, %eax
	sarl	$4, %eax
	imull	$954437177, %eax, %eax
	.loc 1 4836 0
	ret
	.cfi_endproc
.LFE132:
	.size	bt_conn_get_id, .-bt_conn_get_id
	.section	.text.unlikely.bt_conn_get_id
.LCOLDE41:
	.section	.text.bt_conn_get_id
.LHOTE41:
	.section	.text.unlikely.bt_conn_lookup_id,"ax",@progbits
.LCOLDB42:
	.section	.text.bt_conn_lookup_id,"ax",@progbits
.LHOTB42:
	.globl	bt_conn_lookup_id
	.type	bt_conn_lookup_id, @function
bt_conn_lookup_id:
.LFB133:
	.loc 1 4838 0
	.cfi_startproc
.LVL323:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4840 0
	cmpb	$0, 8(%ebp)
	je	.L350
.L352:
	.loc 1 4842 0
	xorl	%eax, %eax
	jmp	.L351
.L350:
.LVL324:
	.loc 1 4846 0
	subl	$12, %esp
	pushl	$conns+60
	call	atomic_get
.LVL325:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L352
.LVL326:
.LBB265:
.LBB266:
	.loc 1 4631 0
	subl	$12, %esp
	pushl	$conns+60
	call	atomic_inc
.LVL327:
.LBE266:
.LBE265:
	.loc 1 4851 0
	addl	$16, %esp
	movl	$conns, %eax
.LVL328:
.L351:
	.loc 1 4852 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE133:
	.size	bt_conn_lookup_id, .-bt_conn_lookup_id
	.section	.text.unlikely.bt_conn_lookup_id
.LCOLDE42:
	.section	.text.bt_conn_lookup_id
.LHOTE42:
	.section	.text.unlikely.bt_conn_init,"ax",@progbits
.LCOLDB43:
	.section	.text.bt_conn_init,"ax",@progbits
.LHOTB43:
	.globl	bt_conn_init
	.type	bt_conn_init, @function
bt_conn_init:
.LFB134:
	.loc 1 4854 0
	.cfi_startproc
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
	.loc 1 4857 0
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.loc 1 4854 0
	subl	$40, %esp
	.loc 1 4856 0
	pushl	$acl_tx_pool
	call	k_queue_init
.LVL329:
	movl	free_tx, %ecx
	movl	free_tx+4, %edx
	movl	$conn_tx, %eax
	.loc 1 4857 0
	addl	$16, %esp
.LVL330:
.L358:
	.loc 1 4857 0 is_stmt 0 discriminator 1
	movl	$conn_tx+80, %edi
	cmpl	%eax, %edi
	je	.L372
.LBB269:
.LBB270:
	.loc 1 109 0 is_stmt 1 discriminator 3
	testl	%edx, %edx
.LBE270:
.LBE269:
	.loc 1 4858 0 discriminator 3
	movl	%eax, %edi
.LVL331:
.LBB272:
.LBB271:
	.loc 1 107 0 discriminator 3
	movl	%ecx, (%eax)
	.loc 1 109 0 discriminator 3
	jne	.L359
	.loc 1 109 0 is_stmt 0
	movl	%eax, %edx
	movb	$1, %bl
.L359:
.LVL332:
	addl	$8, %eax
	movl	$1, %esi
.LBE271:
.LBE272:
	.loc 1 4857 0 is_stmt 1 discriminator 3
	movl	%edi, %ecx
	jmp	.L358
.L372:
	movl	%esi, %eax
	testb	%al, %al
	je	.L361
	movl	%ecx, free_tx
.L361:
	testb	%bl, %bl
	je	.L362
	movl	%edx, free_tx+4
.L362:
	.loc 1 4860 0
	call	bt_att_init
.LVL333:
	.loc 1 4861 0
	call	bt_smp_init
.LVL334:
	.loc 1 4862 0
	testl	%eax, %eax
	jne	.L363
	movl	%eax, -28(%ebp)
	.loc 1 4865 0
	call	bt_l2cap_init
.LVL335:
	movl	-28(%ebp), %eax
.LVL336:
.L363:
	.loc 1 4879 0
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
.LFE134:
	.size	bt_conn_init, .-bt_conn_init
	.section	.text.unlikely.bt_conn_init
.LCOLDE43:
	.section	.text.bt_conn_init
.LHOTE43:
	.section	.data.conn_change,"aw",@progbits
	.align 4
	.type	conn_change, @object
	.size	conn_change, 16
conn_change:
	.long	conn_change
	.long	conn_change
	.long	0
	.long	0
	.section	.bss.free_tx,"aw",@nobits
	.align 4
	.type	free_tx, @object
	.size	free_tx, 8
free_tx:
	.zero	8
	.section	.bss.conn_tx,"aw",@nobits
	.align 32
	.type	conn_tx, @object
	.size	conn_tx, 80
conn_tx:
	.zero	80
	.section	.bss.callback_list,"aw",@nobits
	.align 4
	.type	callback_list, @object
	.size	callback_list, 4
callback_list:
	.zero	4
	.section	.bss.conns,"aw",@nobits
	.align 32
	.type	conns, @object
	.size	conns, 144
conns:
	.zero	144
	.globl	bt_auth
	.section	.bss.bt_auth,"aw",@nobits
	.align 4
	.type	bt_auth, @object
	.size	bt_auth, 4
bt_auth:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.notify_connected
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3120
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF405
	.byte	0xc
	.long	.LASF406
	.long	.LASF407
	.long	.Ldebug_ranges0+0x148
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
	.long	.LASF9
	.byte	0x1
	.byte	0x6
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
	.uleb128 0x3
	.long	.LASF10
	.byte	0x1
	.byte	0x18
	.long	0x48
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x30
	.long	0x6f
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x3a
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x3b
	.long	0x3a
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x3c
	.long	0x6f
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x3d
	.long	0x61
	.uleb128 0x5
	.long	.LASF18
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.long	0xd8
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.byte	0x3f
	.long	0xd8
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xbf
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x41
	.long	0xbf
	.uleb128 0x5
	.long	.LASF19
	.byte	0x8
	.byte	0x1
	.byte	0x42
	.long	0x10e
	.uleb128 0x6
	.long	.LASF21
	.byte	0x1
	.byte	0x43
	.long	0x10e
	.byte	0
	.uleb128 0x6
	.long	.LASF22
	.byte	0x1
	.byte	0x44
	.long	0x10e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xde
	.uleb128 0x3
	.long	.LASF23
	.byte	0x1
	.byte	0x46
	.long	0xe9
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xd7
	.long	0x13e
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.byte	0xd8
	.long	0x157
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0xd9
	.long	0x157
	.byte	0
	.uleb128 0x5
	.long	.LASF24
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.long	0x157
	.uleb128 0xa
	.long	0x11f
	.byte	0
	.uleb128 0xa
	.long	0x15d
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x13e
	.uleb128 0x8
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.long	0x17c
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0xdc
	.long	0x157
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0xdd
	.long	0x157
	.byte	0
	.uleb128 0x3
	.long	.LASF26
	.byte	0x1
	.byte	0xe0
	.long	0x13e
	.uleb128 0x3
	.long	.LASF27
	.byte	0x1
	.byte	0xe1
	.long	0x13e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF28
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0xc
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x1b9
	.uleb128 0xd
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x199
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x1
	.value	0x1d1
	.long	0x1a2
	.uleb128 0xe
	.long	.LASF31
	.byte	0x1
	.value	0x1d4
	.long	0x1b9
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0x1d5
	.long	0x1b9
	.uleb128 0xe
	.long	.LASF33
	.byte	0x1
	.value	0x1d6
	.long	0x1b9
	.uleb128 0x7
	.byte	0x4
	.long	0x1ef
	.uleb128 0xf
	.long	0x19b
	.uleb128 0xe
	.long	.LASF34
	.byte	0x1
	.value	0x2f2
	.long	0x1d1
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.value	0x2f3
	.long	0x1c5
	.uleb128 0x10
	.long	.LASF36
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x234
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.value	0x302
	.long	0x234
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0x303
	.long	0x17c
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1f4
	.uleb128 0x10
	.long	.LASF39
	.byte	0xc
	.byte	0x1
	.value	0x30d
	.long	0x255
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.value	0x30e
	.long	0x20c
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x270
	.uleb128 0x11
	.long	.LASF37
	.byte	0x1
	.value	0x311
	.long	0x20c
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0xc
	.byte	0x1
	.value	0x313
	.long	0x298
	.uleb128 0xd
	.string	"sem"
	.byte	0x1
	.value	0x314
	.long	0x200
	.byte	0
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0x315
	.long	0x17c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF42
	.byte	0x1
	.value	0x320
	.long	0x2a4
	.uleb128 0x7
	.byte	0x4
	.long	0x2aa
	.uleb128 0x12
	.long	0x2ba
	.uleb128 0x13
	.long	0x199
	.uleb128 0x13
	.long	0x199
	.byte	0
	.uleb128 0x10
	.long	.LASF43
	.byte	0x14
	.byte	0x1
	.value	0x321
	.long	0x309
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x322
	.long	0x1dd
	.byte	0
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x323
	.long	0x298
	.byte	0x4
	.uleb128 0x11
	.long	.LASF46
	.byte	0x1
	.value	0x324
	.long	0x199
	.byte	0x8
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0x325
	.long	0x76
	.byte	0xc
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.value	0x326
	.long	0x76
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.long	.LASF49
	.byte	0x1
	.value	0x327
	.long	0x2ba
	.uleb128 0xe
	.long	.LASF50
	.byte	0x1
	.value	0x341
	.long	0x68
	.uleb128 0xe
	.long	.LASF51
	.byte	0x1
	.value	0x342
	.long	0x315
	.uleb128 0x10
	.long	.LASF52
	.byte	0xc
	.byte	0x1
	.value	0x36d
	.long	0x348
	.uleb128 0x11
	.long	.LASF53
	.byte	0x1
	.value	0x36e
	.long	0x255
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF54
	.byte	0x1
	.value	0x375
	.long	0x354
	.uleb128 0x7
	.byte	0x4
	.long	0x35a
	.uleb128 0x12
	.long	0x365
	.uleb128 0x13
	.long	0x365
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x36b
	.uleb128 0x10
	.long	.LASF55
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x3a0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.value	0x377
	.long	0x199
	.byte	0
	.uleb128 0x11
	.long	.LASF45
	.byte	0x1
	.value	0x378
	.long	0x348
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0x379
	.long	0x3a0
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x315
	.long	0x3b0
	.uleb128 0x15
	.long	0x192
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF58
	.byte	0x24
	.byte	0x1
	.value	0x37d
	.long	0x3e5
	.uleb128 0x11
	.long	.LASF59
	.byte	0x1
	.value	0x37e
	.long	0x36b
	.byte	0
	.uleb128 0x11
	.long	.LASF60
	.byte	0x1
	.value	0x37f
	.long	0x3e5
	.byte	0xc
	.uleb128 0x11
	.long	.LASF44
	.byte	0x1
	.value	0x380
	.long	0x309
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x32d
	.uleb128 0x16
	.long	.LASF66
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x386
	.long	0x41b
	.uleb128 0x17
	.long	.LASF61
	.byte	0
	.uleb128 0x17
	.long	.LASF62
	.byte	0x1
	.uleb128 0x17
	.long	.LASF63
	.byte	0x2
	.uleb128 0x17
	.long	.LASF64
	.byte	0x3
	.uleb128 0x17
	.long	.LASF65
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF67
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x38d
	.long	0x44b
	.uleb128 0x17
	.long	.LASF68
	.byte	0
	.uleb128 0x17
	.long	.LASF69
	.byte	0x1
	.uleb128 0x17
	.long	.LASF70
	.byte	0x2
	.uleb128 0x17
	.long	.LASF71
	.byte	0x3
	.uleb128 0x17
	.long	.LASF72
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.value	0x39c
	.long	0x491
	.uleb128 0x19
	.string	"obj"
	.byte	0x1
	.value	0x39d
	.long	0x199
	.uleb128 0x1a
	.long	.LASF73
	.byte	0x1
	.value	0x39e
	.long	0x4c6
	.uleb128 0x19
	.string	"sem"
	.byte	0x1
	.value	0x39f
	.long	0x4cc
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x1
	.value	0x3a0
	.long	0x4d2
	.uleb128 0x1a
	.long	.LASF74
	.byte	0x1
	.value	0x3a1
	.long	0x4d8
	.byte	0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x10
	.byte	0x1
	.value	0x3a4
	.long	0x4c6
	.uleb128 0x11
	.long	.LASF38
	.byte	0x1
	.value	0x3a5
	.long	0x17c
	.byte	0
	.uleb128 0x11
	.long	.LASF76
	.byte	0x1
	.value	0x3a6
	.long	0x6f
	.byte	0x8
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.value	0x3a7
	.long	0x68
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x491
	.uleb128 0x7
	.byte	0x4
	.long	0x270
	.uleb128 0x7
	.byte	0x4
	.long	0x255
	.uleb128 0x7
	.byte	0x4
	.long	0x20c
	.uleb128 0x10
	.long	.LASF78
	.byte	0x14
	.byte	0x1
	.value	0x394
	.long	0x55c
	.uleb128 0x11
	.long	.LASF79
	.byte	0x1
	.value	0x395
	.long	0x187
	.byte	0
	.uleb128 0x11
	.long	.LASF80
	.byte	0x1
	.value	0x396
	.long	0x561
	.byte	0x8
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x397
	.long	0xa9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x1
	.value	0x398
	.long	0xa9
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF82
	.byte	0x1
	.value	0x399
	.long	0xa9
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF83
	.byte	0x1
	.value	0x39a
	.long	0xa9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x1
	.value	0x39b
	.long	0xa9
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xc
	.uleb128 0xa
	.long	0x44b
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.long	.LASF408
	.uleb128 0x7
	.byte	0x4
	.long	0x55c
	.uleb128 0x16
	.long	.LASF85
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x3ac
	.long	0x585
	.uleb128 0x17
	.long	.LASF86
	.byte	0
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.byte	0x6
	.byte	0x1
	.value	0x525
	.long	0x59c
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0x526
	.long	0x59c
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x5ac
	.uleb128 0x15
	.long	0x192
	.byte	0x5
	.byte	0
	.uleb128 0xe
	.long	.LASF88
	.byte	0x1
	.value	0x527
	.long	0x585
	.uleb128 0xc
	.byte	0x7
	.byte	0x1
	.value	0x528
	.long	0x5da
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.value	0x529
	.long	0x93
	.byte	0
	.uleb128 0xd
	.string	"a"
	.byte	0x1
	.value	0x52a
	.long	0x5ac
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF89
	.byte	0x1
	.value	0x52b
	.long	0x5b8
	.uleb128 0x10
	.long	.LASF90
	.byte	0x4
	.byte	0x1
	.value	0x55a
	.long	0x60e
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0x55b
	.long	0x9e
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0x55c
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF92
	.byte	0x3
	.byte	0x1
	.value	0x577
	.long	0x636
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0x578
	.long	0x9e
	.byte	0
	.uleb128 0x11
	.long	.LASF93
	.byte	0x1
	.value	0x579
	.long	0x93
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x646
	.uleb128 0x15
	.long	0x192
	.byte	0xf
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x656
	.uleb128 0x15
	.long	0x192
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x666
	.uleb128 0x15
	.long	0x192
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.long	.LASF94
	.byte	0xe
	.byte	0x1
	.value	0x730
	.long	0x6cf
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0x731
	.long	0x9e
	.byte	0
	.uleb128 0x11
	.long	.LASF95
	.byte	0x1
	.value	0x732
	.long	0x9e
	.byte	0x2
	.uleb128 0x11
	.long	.LASF96
	.byte	0x1
	.value	0x733
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF97
	.byte	0x1
	.value	0x734
	.long	0x9e
	.byte	0x6
	.uleb128 0x11
	.long	.LASF98
	.byte	0x1
	.value	0x735
	.long	0x9e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF99
	.byte	0x1
	.value	0x736
	.long	0x9e
	.byte	0xa
	.uleb128 0x11
	.long	.LASF100
	.byte	0x1
	.value	0x737
	.long	0x9e
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF101
	.byte	0x1c
	.byte	0x1
	.value	0x763
	.long	0x711
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0x764
	.long	0x9e
	.byte	0
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.value	0x765
	.long	0xb4
	.byte	0x2
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.value	0x766
	.long	0x9e
	.byte	0xa
	.uleb128 0xd
	.string	"ltk"
	.byte	0x1
	.value	0x767
	.long	0x636
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF104
	.byte	0x8
	.byte	0x1
	.value	0xa95
	.long	0x753
	.uleb128 0x11
	.long	.LASF105
	.byte	0x1
	.value	0xa96
	.long	0x753
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0xa97
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1
	.value	0xa98
	.long	0x9e
	.byte	0x6
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1
	.value	0xa99
	.long	0x759
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x93
	.uleb128 0x14
	.long	0x93
	.long	0x768
	.uleb128 0x1e
	.long	0x192
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.value	0xace
	.long	0x78a
	.uleb128 0x1a
	.long	.LASF108
	.byte	0x1
	.value	0xacf
	.long	0xde
	.uleb128 0x1a
	.long	.LASF109
	.byte	0x1
	.value	0xad0
	.long	0x7d8
	.byte	0
	.uleb128 0x10
	.long	.LASF110
	.byte	0x10
	.byte	0x1
	.value	0xacd
	.long	0x7d8
	.uleb128 0xa
	.long	0x768
	.byte	0
	.uleb128 0xd
	.string	"ref"
	.byte	0x1
	.value	0xad2
	.long	0x93
	.byte	0x4
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0xad3
	.long	0x93
	.byte	0x5
	.uleb128 0x11
	.long	.LASF111
	.byte	0x1
	.value	0xad4
	.long	0x93
	.byte	0x6
	.uleb128 0xa
	.long	0x80f
	.byte	0x8
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1
	.value	0xadd
	.long	0x828
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x78a
	.uleb128 0xc
	.byte	0x8
	.byte	0x1
	.value	0xad6
	.long	0x80f
	.uleb128 0x11
	.long	.LASF105
	.byte	0x1
	.value	0xad7
	.long	0x753
	.byte	0
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0xad8
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1
	.value	0xad9
	.long	0x9e
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x1
	.value	0xad5
	.long	0x828
	.uleb128 0x1f
	.long	0x7de
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.value	0xadb
	.long	0x711
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0x837
	.uleb128 0x1e
	.long	0x192
	.byte	0
	.uleb128 0x10
	.long	.LASF112
	.byte	0x1c
	.byte	0x1
	.value	0xae3
	.long	0x8a0
	.uleb128 0x11
	.long	.LASF113
	.byte	0x1
	.value	0xae4
	.long	0x23a
	.byte	0
	.uleb128 0x11
	.long	.LASF114
	.byte	0x1
	.value	0xae5
	.long	0x8a0
	.byte	0xc
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1
	.value	0xae6
	.long	0x9e
	.byte	0xe
	.uleb128 0x11
	.long	.LASF116
	.byte	0x1
	.value	0xae7
	.long	0x8a0
	.byte	0x10
	.uleb128 0x11
	.long	.LASF117
	.byte	0x1
	.value	0xae8
	.long	0x8a0
	.byte	0x12
	.uleb128 0x11
	.long	.LASF118
	.byte	0x1
	.value	0xae9
	.long	0x8b6
	.byte	0x14
	.uleb128 0x11
	.long	.LASF119
	.byte	0x1
	.value	0xaea
	.long	0x8bb
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	0x9e
	.uleb128 0x12
	.long	0x8b0
	.uleb128 0x13
	.long	0x7d8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8a5
	.uleb128 0xf
	.long	0x8b0
	.uleb128 0xf
	.long	0x7d8
	.uleb128 0x7
	.byte	0x4
	.long	0x8c6
	.uleb128 0xf
	.long	0x93
	.uleb128 0x10
	.long	.LASF120
	.byte	0xc
	.byte	0x1
	.value	0xb1f
	.long	0x90d
	.uleb128 0x11
	.long	.LASF121
	.byte	0x1
	.value	0xb20
	.long	0x93
	.byte	0
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xb21
	.long	0x9e
	.byte	0x2
	.uleb128 0x11
	.long	.LASF123
	.byte	0x1
	.value	0xb22
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF124
	.byte	0x1
	.value	0xb23
	.long	0x90d
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x913
	.uleb128 0xf
	.long	0x5ac
	.uleb128 0x7
	.byte	0x4
	.long	0x91e
	.uleb128 0xf
	.long	0x5da
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF125
	.uleb128 0x10
	.long	.LASF126
	.byte	0x8
	.byte	0x1
	.value	0xb73
	.long	0x96c
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xb74
	.long	0x9e
	.byte	0
	.uleb128 0x11
	.long	.LASF123
	.byte	0x1
	.value	0xb75
	.long	0x9e
	.byte	0x2
	.uleb128 0x11
	.long	.LASF127
	.byte	0x1
	.value	0xb76
	.long	0x9e
	.byte	0x4
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0xb77
	.long	0x9e
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xb7d
	.long	0x98c
	.uleb128 0x17
	.long	.LASF128
	.byte	0
	.uleb128 0x17
	.long	.LASF129
	.byte	0x1
	.uleb128 0x17
	.long	.LASF130
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	.LASF131
	.byte	0x10
	.byte	0x1
	.value	0xb82
	.long	0x9db
	.uleb128 0xd
	.string	"src"
	.byte	0x1
	.value	0xb83
	.long	0x918
	.byte	0
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.value	0xb84
	.long	0x918
	.byte	0x4
	.uleb128 0x11
	.long	.LASF132
	.byte	0x1
	.value	0xb85
	.long	0x9e
	.byte	0x8
	.uleb128 0x11
	.long	.LASF127
	.byte	0x1
	.value	0xb86
	.long	0x9e
	.byte	0xa
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0xb87
	.long	0x9e
	.byte	0xc
	.byte	0
	.uleb128 0x10
	.long	.LASF133
	.byte	0x4
	.byte	0x1
	.value	0xb89
	.long	0x9f6
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.value	0xb8a
	.long	0x90d
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x10
	.byte	0x1
	.value	0xb93
	.long	0xa16
	.uleb128 0x19
	.string	"le"
	.byte	0x1
	.value	0xb94
	.long	0x98c
	.uleb128 0x19
	.string	"br"
	.byte	0x1
	.value	0xb95
	.long	0x9db
	.byte	0
	.uleb128 0x10
	.long	.LASF134
	.byte	0x14
	.byte	0x1
	.value	0xb90
	.long	0xa44
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.value	0xb91
	.long	0x93
	.byte	0
	.uleb128 0x11
	.long	.LASF135
	.byte	0x1
	.value	0xb92
	.long	0x93
	.byte	0x1
	.uleb128 0xa
	.long	0x9f6
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.value	0xba4
	.long	0xa70
	.uleb128 0x17
	.long	.LASF136
	.byte	0
	.uleb128 0x17
	.long	.LASF137
	.byte	0x1
	.uleb128 0x17
	.long	.LASF138
	.byte	0x2
	.uleb128 0x17
	.long	.LASF139
	.byte	0x3
	.uleb128 0x17
	.long	.LASF140
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF141
	.byte	0x1
	.value	0xbaa
	.long	0xa44
	.uleb128 0x10
	.long	.LASF142
	.byte	0x1c
	.byte	0x1
	.value	0xbad
	.long	0xae5
	.uleb128 0x11
	.long	.LASF143
	.byte	0x1
	.value	0xbae
	.long	0xbde
	.byte	0
	.uleb128 0x11
	.long	.LASF144
	.byte	0x1
	.value	0xbaf
	.long	0xbde
	.byte	0x4
	.uleb128 0x11
	.long	.LASF145
	.byte	0x1
	.value	0xbb1
	.long	0xbfe
	.byte	0x8
	.uleb128 0x11
	.long	.LASF146
	.byte	0x1
	.value	0xbb3
	.long	0xc1e
	.byte	0xc
	.uleb128 0x11
	.long	.LASF147
	.byte	0x1
	.value	0xbb5
	.long	0xc39
	.byte	0x10
	.uleb128 0x11
	.long	.LASF148
	.byte	0x1
	.value	0xbb8
	.long	0xc4f
	.byte	0x14
	.uleb128 0x11
	.long	.LASF149
	.byte	0x1
	.value	0xbb9
	.long	0xc55
	.byte	0x18
	.byte	0
	.uleb128 0x12
	.long	0xaf5
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0x93
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xafb
	.uleb128 0x10
	.long	.LASF150
	.byte	0x90
	.byte	0x1
	.value	0xc80
	.long	0xbde
	.uleb128 0x11
	.long	.LASF91
	.byte	0x1
	.value	0xc81
	.long	0x9e
	.byte	0
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.value	0xc82
	.long	0x93
	.byte	0x2
	.uleb128 0x11
	.long	.LASF135
	.byte	0x1
	.value	0xc83
	.long	0x93
	.byte	0x3
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0xc84
	.long	0x3a0
	.byte	0x4
	.uleb128 0x11
	.long	.LASF151
	.byte	0x1
	.value	0xc85
	.long	0xa70
	.byte	0x8
	.uleb128 0x11
	.long	.LASF152
	.byte	0x1
	.value	0xc86
	.long	0xa70
	.byte	0x9
	.uleb128 0x11
	.long	.LASF153
	.byte	0x1
	.value	0xc87
	.long	0x93
	.byte	0xa
	.uleb128 0xd
	.string	"err"
	.byte	0x1
	.value	0xc88
	.long	0x93
	.byte	0xb
	.uleb128 0x11
	.long	.LASF82
	.byte	0x1
	.value	0xc89
	.long	0xfc7
	.byte	0xc
	.uleb128 0x11
	.long	.LASF154
	.byte	0x1
	.value	0xc8a
	.long	0x9e
	.byte	0xe
	.uleb128 0xd
	.string	"rx"
	.byte	0x1
	.value	0xc8b
	.long	0x7d8
	.byte	0x10
	.uleb128 0x11
	.long	.LASF155
	.byte	0x1
	.value	0xc8c
	.long	0x114
	.byte	0x14
	.uleb128 0x11
	.long	.LASF156
	.byte	0x1
	.value	0xc8d
	.long	0x255
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF157
	.byte	0x1
	.value	0xc8e
	.long	0x255
	.byte	0x28
	.uleb128 0x11
	.long	.LASF158
	.byte	0x1
	.value	0xc8f
	.long	0x114
	.byte	0x34
	.uleb128 0xd
	.string	"ref"
	.byte	0x1
	.value	0xc90
	.long	0x315
	.byte	0x3c
	.uleb128 0xa
	.long	0x115c
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xae5
	.uleb128 0x21
	.long	0x923
	.long	0xbf8
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0xbf8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x92a
	.uleb128 0x7
	.byte	0x4
	.long	0xbe4
	.uleb128 0x12
	.long	0xc1e
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0x9e
	.uleb128 0x13
	.long	0x9e
	.uleb128 0x13
	.long	0x9e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc04
	.uleb128 0x12
	.long	0xc39
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0x918
	.uleb128 0x13
	.long	0x918
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc24
	.uleb128 0x12
	.long	0xc4f
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0xa70
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc3f
	.uleb128 0x7
	.byte	0x4
	.long	0xa7c
	.uleb128 0x10
	.long	.LASF159
	.byte	0x14
	.byte	0x1
	.value	0xbbc
	.long	0xcaa
	.uleb128 0x11
	.long	.LASF160
	.byte	0x1
	.value	0xbbd
	.long	0xcba
	.byte	0
	.uleb128 0x11
	.long	.LASF161
	.byte	0x1
	.value	0xbbe
	.long	0xccb
	.byte	0x4
	.uleb128 0x11
	.long	.LASF162
	.byte	0x1
	.value	0xbbf
	.long	0xcba
	.byte	0x8
	.uleb128 0x11
	.long	.LASF163
	.byte	0x1
	.value	0xbc0
	.long	0xccb
	.byte	0xc
	.uleb128 0x11
	.long	.LASF164
	.byte	0x1
	.value	0xbc1
	.long	0xccb
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	0xcba
	.uleb128 0x13
	.long	0xaf5
	.uleb128 0x13
	.long	0x6f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xcaa
	.uleb128 0x12
	.long	0xccb
	.uleb128 0x13
	.long	0xaf5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xcc0
	.uleb128 0x16
	.long	.LASF165
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xbd0
	.long	0xcfb
	.uleb128 0x17
	.long	.LASF166
	.byte	0
	.uleb128 0x17
	.long	.LASF167
	.byte	0x1
	.uleb128 0x17
	.long	.LASF168
	.byte	0x2
	.uleb128 0x17
	.long	.LASF169
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF170
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xbf3
	.long	0xd43
	.uleb128 0x17
	.long	.LASF171
	.byte	0
	.uleb128 0x17
	.long	.LASF172
	.byte	0x1
	.uleb128 0x17
	.long	.LASF173
	.byte	0x2
	.uleb128 0x17
	.long	.LASF174
	.byte	0x3
	.uleb128 0x17
	.long	.LASF175
	.byte	0x4
	.uleb128 0x17
	.long	.LASF176
	.byte	0x5
	.uleb128 0x17
	.long	.LASF177
	.byte	0x6
	.uleb128 0x17
	.long	.LASF178
	.byte	0x7
	.uleb128 0x17
	.long	.LASF179
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.long	.LASF180
	.byte	0x10
	.byte	0x1
	.value	0xbfe
	.long	0xd85
	.uleb128 0x11
	.long	.LASF181
	.byte	0x1
	.value	0xbff
	.long	0x1e9
	.byte	0
	.uleb128 0xd
	.string	"bus"
	.byte	0x1
	.value	0xc00
	.long	0xcfb
	.byte	0x4
	.uleb128 0x11
	.long	.LASF182
	.byte	0x1
	.value	0xc01
	.long	0xd8a
	.byte	0x8
	.uleb128 0x11
	.long	.LASF183
	.byte	0x1
	.value	0xc02
	.long	0xd9f
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.long	0x68
	.uleb128 0x7
	.byte	0x4
	.long	0xd85
	.uleb128 0x21
	.long	0x68
	.long	0xd9f
	.uleb128 0x13
	.long	0x7d8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd90
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xc15
	.long	0xdc5
	.uleb128 0x17
	.long	.LASF184
	.byte	0
	.uleb128 0x17
	.long	.LASF185
	.byte	0x1
	.uleb128 0x17
	.long	.LASF186
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xc1a
	.long	0xe27
	.uleb128 0x17
	.long	.LASF187
	.byte	0
	.uleb128 0x17
	.long	.LASF188
	.byte	0x1
	.uleb128 0x17
	.long	.LASF189
	.byte	0x2
	.uleb128 0x17
	.long	.LASF190
	.byte	0x3
	.uleb128 0x17
	.long	.LASF191
	.byte	0x4
	.uleb128 0x17
	.long	.LASF192
	.byte	0x5
	.uleb128 0x17
	.long	.LASF193
	.byte	0x6
	.uleb128 0x17
	.long	.LASF194
	.byte	0x7
	.uleb128 0x17
	.long	.LASF195
	.byte	0x8
	.uleb128 0x17
	.long	.LASF196
	.byte	0x9
	.uleb128 0x17
	.long	.LASF197
	.byte	0xa
	.uleb128 0x17
	.long	.LASF198
	.byte	0xb
	.uleb128 0x17
	.long	.LASF199
	.byte	0xc
	.uleb128 0x17
	.long	.LASF200
	.byte	0xd
	.byte	0
	.uleb128 0x10
	.long	.LASF201
	.byte	0x24
	.byte	0x1
	.value	0xc2a
	.long	0xe83
	.uleb128 0x11
	.long	.LASF202
	.byte	0x1
	.value	0xc2b
	.long	0x646
	.byte	0
	.uleb128 0x11
	.long	.LASF203
	.byte	0x1
	.value	0xc2c
	.long	0xb4
	.byte	0x8
	.uleb128 0xd
	.string	"mtu"
	.byte	0x1
	.value	0xc2d
	.long	0x9e
	.byte	0x10
	.uleb128 0x11
	.long	.LASF204
	.byte	0x1
	.value	0xc2e
	.long	0x270
	.byte	0x14
	.uleb128 0x11
	.long	.LASF205
	.byte	0x1
	.value	0xc2f
	.long	0x93
	.byte	0x20
	.uleb128 0x11
	.long	.LASF206
	.byte	0x1
	.value	0xc30
	.long	0x93
	.byte	0x21
	.byte	0
	.uleb128 0x10
	.long	.LASF207
	.byte	0xcc
	.byte	0x1
	.value	0xc32
	.long	0xf7a
	.uleb128 0x11
	.long	.LASF208
	.byte	0x1
	.value	0xc33
	.long	0x5da
	.byte	0
	.uleb128 0x11
	.long	.LASF209
	.byte	0x1
	.value	0xc34
	.long	0x5da
	.byte	0x7
	.uleb128 0x11
	.long	.LASF210
	.byte	0x1
	.value	0xc35
	.long	0x93
	.byte	0xe
	.uleb128 0x11
	.long	.LASF211
	.byte	0x1
	.value	0xc36
	.long	0x93
	.byte	0xf
	.uleb128 0x11
	.long	.LASF212
	.byte	0x1
	.value	0xc37
	.long	0x9e
	.byte	0x10
	.uleb128 0x11
	.long	.LASF213
	.byte	0x1
	.value	0xc38
	.long	0x9e
	.byte	0x12
	.uleb128 0x11
	.long	.LASF214
	.byte	0x1
	.value	0xc39
	.long	0x9e
	.byte	0x14
	.uleb128 0x11
	.long	.LASF202
	.byte	0x1
	.value	0xc3a
	.long	0xf7a
	.byte	0x16
	.uleb128 0x11
	.long	.LASF215
	.byte	0x1
	.value	0xc3b
	.long	0x656
	.byte	0x1e
	.uleb128 0x11
	.long	.LASF216
	.byte	0x1
	.value	0xc3c
	.long	0x36b
	.byte	0x60
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0xc3d
	.long	0x3a0
	.byte	0x6c
	.uleb128 0xd
	.string	"le"
	.byte	0x1
	.value	0xc3e
	.long	0xe27
	.byte	0x70
	.uleb128 0x11
	.long	.LASF217
	.byte	0x1
	.value	0xc3f
	.long	0x270
	.byte	0x94
	.uleb128 0x11
	.long	.LASF218
	.byte	0x1
	.value	0xc40
	.long	0x7d8
	.byte	0xa0
	.uleb128 0x11
	.long	.LASF219
	.byte	0x1
	.value	0xc41
	.long	0x255
	.byte	0xa4
	.uleb128 0x11
	.long	.LASF220
	.byte	0x1
	.value	0xc42
	.long	0x255
	.byte	0xb0
	.uleb128 0x11
	.long	.LASF221
	.byte	0x1
	.value	0xc43
	.long	0x255
	.byte	0xbc
	.uleb128 0xd
	.string	"drv"
	.byte	0x1
	.value	0xc44
	.long	0xf90
	.byte	0xc8
	.byte	0
	.uleb128 0x14
	.long	0x93
	.long	0xf90
	.uleb128 0x15
	.long	0x192
	.byte	0
	.uleb128 0x15
	.long	0x192
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf96
	.uleb128 0xf
	.long	0xd43
	.uleb128 0x20
	.byte	0x1
	.long	0x2c
	.byte	0x1
	.value	0xc5b
	.long	0xfc7
	.uleb128 0x17
	.long	.LASF222
	.byte	0
	.uleb128 0x17
	.long	.LASF223
	.byte	0x1
	.uleb128 0x17
	.long	.LASF224
	.byte	0x2
	.uleb128 0x17
	.long	.LASF225
	.byte	0x3
	.uleb128 0x17
	.long	.LASF226
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	.LASF227
	.byte	0x1
	.value	0xc61
	.long	0xf9b
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xc62
	.long	0x101d
	.uleb128 0x17
	.long	.LASF228
	.byte	0
	.uleb128 0x17
	.long	.LASF229
	.byte	0x1
	.uleb128 0x17
	.long	.LASF230
	.byte	0x2
	.uleb128 0x17
	.long	.LASF231
	.byte	0x3
	.uleb128 0x17
	.long	.LASF232
	.byte	0x4
	.uleb128 0x17
	.long	.LASF233
	.byte	0x5
	.uleb128 0x17
	.long	.LASF234
	.byte	0x6
	.uleb128 0x17
	.long	.LASF235
	.byte	0x7
	.uleb128 0x17
	.long	.LASF236
	.byte	0x8
	.uleb128 0x17
	.long	.LASF237
	.byte	0x9
	.byte	0
	.uleb128 0x10
	.long	.LASF238
	.byte	0x50
	.byte	0x1
	.value	0xc6e
	.long	0x10ba
	.uleb128 0xd
	.string	"dst"
	.byte	0x1
	.value	0xc6f
	.long	0x5da
	.byte	0
	.uleb128 0x11
	.long	.LASF239
	.byte	0x1
	.value	0xc70
	.long	0x5da
	.byte	0x7
	.uleb128 0x11
	.long	.LASF240
	.byte	0x1
	.value	0xc71
	.long	0x5da
	.byte	0xe
	.uleb128 0x11
	.long	.LASF132
	.byte	0x1
	.value	0xc72
	.long	0x9e
	.byte	0x16
	.uleb128 0x11
	.long	.LASF122
	.byte	0x1
	.value	0xc73
	.long	0x9e
	.byte	0x18
	.uleb128 0x11
	.long	.LASF123
	.byte	0x1
	.value	0xc74
	.long	0x9e
	.byte	0x1a
	.uleb128 0x11
	.long	.LASF127
	.byte	0x1
	.value	0xc75
	.long	0x9e
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF47
	.byte	0x1
	.value	0xc76
	.long	0x9e
	.byte	0x1e
	.uleb128 0x11
	.long	.LASF202
	.byte	0x1
	.value	0xc77
	.long	0x646
	.byte	0x20
	.uleb128 0x11
	.long	.LASF241
	.byte	0x1
	.value	0xc78
	.long	0x1123
	.byte	0x28
	.uleb128 0x11
	.long	.LASF242
	.byte	0x1
	.value	0xc79
	.long	0x3b0
	.byte	0x2c
	.byte	0
	.uleb128 0x10
	.long	.LASF243
	.byte	0x60
	.byte	0x1
	.value	0xdc7
	.long	0x1123
	.uleb128 0x11
	.long	.LASF244
	.byte	0x1
	.value	0xdc8
	.long	0x5da
	.byte	0
	.uleb128 0x11
	.long	.LASF245
	.byte	0x1
	.value	0xdc9
	.long	0x93
	.byte	0x7
	.uleb128 0x11
	.long	.LASF57
	.byte	0x1
	.value	0xdca
	.long	0x3a0
	.byte	0x8
	.uleb128 0x11
	.long	.LASF241
	.byte	0x1
	.value	0xdcb
	.long	0x9e
	.byte	0xc
	.uleb128 0xd
	.string	"ltk"
	.byte	0x1
	.value	0xdcc
	.long	0x11c5
	.byte	0x10
	.uleb128 0xd
	.string	"irk"
	.byte	0x1
	.value	0xdcd
	.long	0x11fa
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF246
	.byte	0x1
	.value	0xdce
	.long	0x11c5
	.byte	0x44
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x10ba
	.uleb128 0xe
	.long	.LASF247
	.byte	0x1
	.value	0xc7b
	.long	0xccb
	.uleb128 0x10
	.long	.LASF248
	.byte	0x8
	.byte	0x1
	.value	0xc7c
	.long	0x115c
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1
	.value	0xc7d
	.long	0xde
	.byte	0
	.uleb128 0xd
	.string	"cb"
	.byte	0x1
	.value	0xc7e
	.long	0x1129
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.byte	0x50
	.byte	0x1
	.value	0xc91
	.long	0x1171
	.uleb128 0x19
	.string	"le"
	.byte	0x1
	.value	0xc92
	.long	0x101d
	.byte	0
	.uleb128 0x10
	.long	.LASF249
	.byte	0x4
	.byte	0x1
	.value	0xd02
	.long	0x1199
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.value	0xd03
	.long	0x9e
	.byte	0
	.uleb128 0xd
	.string	"cid"
	.byte	0x1
	.value	0xd04
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xdb3
	.long	0x11c5
	.uleb128 0x17
	.long	.LASF250
	.byte	0
	.uleb128 0x17
	.long	.LASF251
	.byte	0x1
	.uleb128 0x17
	.long	.LASF252
	.byte	0x2
	.uleb128 0x17
	.long	.LASF253
	.byte	0x3
	.uleb128 0x17
	.long	.LASF254
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF255
	.byte	0x1c
	.byte	0x1
	.value	0xdba
	.long	0x11fa
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.value	0xdbb
	.long	0xb4
	.byte	0
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.value	0xdbc
	.long	0x9e
	.byte	0x8
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xdbd
	.long	0x636
	.byte	0xa
	.byte	0
	.uleb128 0x10
	.long	.LASF256
	.byte	0x16
	.byte	0x1
	.value	0xdbf
	.long	0x1222
	.uleb128 0xd
	.string	"val"
	.byte	0x1
	.value	0xdc0
	.long	0x636
	.byte	0
	.uleb128 0xd
	.string	"rpa"
	.byte	0x1
	.value	0xdc1
	.long	0x5ac
	.byte	0x10
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xdd9
	.long	0x1248
	.uleb128 0x17
	.long	.LASF257
	.byte	0
	.uleb128 0x17
	.long	.LASF258
	.byte	0x1
	.uleb128 0x17
	.long	.LASF259
	.byte	0x2
	.uleb128 0x17
	.long	.LASF260
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.long	.LASF261
	.byte	0x4
	.byte	0x1
	.value	0xf06
	.long	0x1262
	.uleb128 0xd
	.string	"cb"
	.byte	0x1
	.value	0xf07
	.long	0x1129
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF262
	.byte	0x1
	.byte	0x52
	.long	0x923
	.byte	0x3
	.long	0x127e
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x52
	.long	0x127e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x114
	.uleb128 0x23
	.long	.LASF263
	.byte	0x1
	.byte	0x56
	.long	0x10e
	.byte	0x3
	.long	0x12a0
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x56
	.long	0x127e
	.byte	0
	.uleb128 0x23
	.long	.LASF265
	.byte	0x1
	.byte	0x5e
	.long	0x10e
	.byte	0x3
	.long	0x12bc
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0x5e
	.long	0x10e
	.byte	0
	.uleb128 0x23
	.long	.LASF266
	.byte	0x1
	.byte	0x62
	.long	0x10e
	.byte	0x3
	.long	0x12d8
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0x62
	.long	0x10e
	.byte	0
	.uleb128 0x25
	.long	.LASF267
	.byte	0x1
	.value	0x10ca
	.long	0x9e
	.byte	0x3
	.long	0x12f6
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x10ca
	.long	0xaf5
	.byte	0
	.uleb128 0x27
	.long	.LASF273
	.byte	0x1
	.value	0xffd
	.byte	0x1
	.long	0x1310
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0xffd
	.long	0xaf5
	.byte	0
	.uleb128 0x28
	.long	.LASF269
	.byte	0x1
	.value	0xf0f
	.long	0x4cc
	.byte	0x1
	.long	0x132e
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0xf0f
	.long	0xaf5
	.byte	0
	.uleb128 0x28
	.long	.LASF270
	.byte	0x1
	.value	0x11d5
	.long	0x68
	.byte	0x1
	.long	0x1358
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x11d5
	.long	0x1358
	.uleb128 0x26
	.long	.LASF271
	.byte	0x1
	.value	0x11d5
	.long	0x918
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x135e
	.uleb128 0xf
	.long	0xafb
	.uleb128 0x28
	.long	.LASF272
	.byte	0x1
	.value	0x1215
	.long	0xaf5
	.byte	0x1
	.long	0x1381
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x1215
	.long	0xaf5
	.byte	0
	.uleb128 0x29
	.long	.LASF409
	.byte	0x1
	.value	0x121b
	.byte	0x1
	.long	0x139b
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x121b
	.long	0xaf5
	.byte	0
	.uleb128 0x2a
	.long	.LASF274
	.byte	0x1
	.byte	0x47
	.byte	0x3
	.long	0x13b3
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x47
	.long	0x127e
	.byte	0
	.uleb128 0x28
	.long	.LASF275
	.byte	0x1
	.value	0x125d
	.long	0x68
	.byte	0x1
	.long	0x13dd
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x125d
	.long	0xaf5
	.uleb128 0x26
	.long	.LASF93
	.byte	0x1
	.value	0x125d
	.long	0x93
	.byte	0
	.uleb128 0x25
	.long	.LASF276
	.byte	0x1
	.value	0x10ce
	.long	0x7d8
	.byte	0x1
	.long	0x141f
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x10ce
	.long	0xaf5
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x10ce
	.long	0x7d8
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x1
	.value	0x10d0
	.long	0x7d8
	.uleb128 0x2c
	.long	.LASF278
	.byte	0x1
	.value	0x10d1
	.long	0x9e
	.byte	0
	.uleb128 0x27
	.long	.LASF279
	.byte	0x1
	.value	0x368
	.byte	0x3
	.long	0x1451
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x368
	.long	0x1451
	.uleb128 0x2b
	.string	"bit"
	.byte	0x1
	.value	0x368
	.long	0x68
	.uleb128 0x2c
	.long	.LASF281
	.byte	0x1
	.value	0x36a
	.long	0x321
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x315
	.uleb128 0x2a
	.long	.LASF282
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.long	0x147a
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x68
	.long	0x127e
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0x69
	.long	0x10e
	.byte	0
	.uleb128 0x25
	.long	.LASF283
	.byte	0x1
	.value	0x355
	.long	0x68
	.byte	0x3
	.long	0x14bc
	.uleb128 0x26
	.long	.LASF280
	.byte	0x1
	.value	0x355
	.long	0x1451
	.uleb128 0x2b
	.string	"bit"
	.byte	0x1
	.value	0x355
	.long	0x68
	.uleb128 0x2c
	.long	.LASF281
	.byte	0x1
	.value	0x357
	.long	0x321
	.uleb128 0x2d
	.string	"old"
	.byte	0x1
	.value	0x358
	.long	0x321
	.byte	0
	.uleb128 0x27
	.long	.LASF284
	.byte	0x1
	.value	0xbd8
	.byte	0x3
	.long	0x14e2
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xbd8
	.long	0x7d8
	.uleb128 0x26
	.long	.LASF81
	.byte	0x1
	.value	0xbd8
	.long	0xcd1
	.byte	0
	.uleb128 0x2e
	.long	.LASF310
	.byte	0x1
	.value	0xf24
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1518
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0xf24
	.long	0xaf5
	.long	.LLST0
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0xf26
	.long	0xc55
	.long	.LLST1
	.byte	0
	.uleb128 0x31
	.long	0x12f6
	.long	.LFB94
	.long	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x1551
	.uleb128 0x32
	.long	0x1303
	.long	.LLST2
	.uleb128 0x33
	.long	.LBB53
	.long	.LBE53-.LBB53
	.uleb128 0x32
	.long	0x1303
	.long	.LLST3
	.uleb128 0x34
	.long	.LVL9
	.long	0x2ef2
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x1310
	.long	.LFB79
	.long	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x156d
	.uleb128 0x35
	.long	0x1321
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.long	.LASF286
	.byte	0x1
	.value	0xf36
	.long	.LFB83
	.long	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x15a2
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xf36
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0xf38
	.long	0xc55
	.long	.LLST4
	.byte	0
	.uleb128 0x38
	.long	.LASF145
	.byte	0x1
	.value	0xf42
	.long	0x923
	.long	.LFB84
	.long	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x15fc
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xf42
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF285
	.byte	0x1
	.value	0xf42
	.long	0xbf8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0xf44
	.long	0xc55
	.long	.LLST5
	.uleb128 0x34
	.long	.LVL19
	.long	0x2efe
	.uleb128 0x34
	.long	.LVL23
	.long	0x2efe
	.byte	0
	.uleb128 0x36
	.long	.LASF287
	.byte	0x1
	.value	0xf8d
	.long	.LFB87
	.long	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x1641
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xf8d
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"rpa"
	.byte	0x1
	.value	0xf8f
	.long	0x918
	.long	.LLST6
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0xf90
	.long	0xc55
	.long	.LLST7
	.byte	0
	.uleb128 0x39
	.long	.LASF288
	.byte	0x1
	.value	0xf9c
	.long	0x68
	.long	.LFB88
	.long	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e1
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xf9c
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF102
	.byte	0x1
	.value	0xf9c
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	.LASF103
	.byte	0x1
	.value	0xf9d
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3a
	.string	"ltk"
	.byte	0x1
	.value	0xf9d
	.long	0x8c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3a
	.string	"len"
	.byte	0x1
	.value	0xf9d
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x30
	.string	"cp"
	.byte	0x1
	.value	0xf9f
	.long	0x16e1
	.long	.LLST8
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0xfa0
	.long	0x7d8
	.long	.LLST9
	.uleb128 0x34
	.long	.LVL32
	.long	0x2f0a
	.uleb128 0x34
	.long	.LVL34
	.long	0x2f16
	.uleb128 0x3b
	.long	.LVL38
	.long	0x2f22
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x6cf
	.uleb128 0x39
	.long	.LASF289
	.byte	0x1
	.value	0xfb1
	.long	0x93
	.long	.LFB89
	.long	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x1711
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xfb1
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x36
	.long	.LASF290
	.byte	0x1
	.value	0xfd2
	.long	.LFB90
	.long	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x1746
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xfd2
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0xfd4
	.long	0xc55
	.long	.LLST10
	.byte	0
	.uleb128 0x25
	.long	.LASF291
	.byte	0x1
	.value	0xfdb
	.long	0x68
	.byte	0x1
	.long	0x1764
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0xfdb
	.long	0xaf5
	.byte	0
	.uleb128 0x39
	.long	.LASF292
	.byte	0x1
	.value	0xfe4
	.long	0x68
	.long	.LFB92
	.long	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x17cc
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0xfe4
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"sec"
	.byte	0x1
	.value	0xfe4
	.long	0xa70
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.value	0xfe6
	.long	0x68
	.uleb128 0x3c
	.long	0x1746
	.long	.LBB57
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xff2
	.uleb128 0x32
	.long	0x1757
	.long	.LLST11
	.uleb128 0x34
	.long	.LVL48
	.long	0x2f2e
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF293
	.byte	0x1
	.value	0xff8
	.long	.LFB93
	.long	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x17f1
	.uleb128 0x3a
	.string	"cb"
	.byte	0x1
	.value	0xff8
	.long	0xc55
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3d
	.long	.LASF294
	.byte	0x1
	.value	0x1008
	.long	.LFB95
	.long	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x18ab
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x1008
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x1008
	.long	0x7d8
	.long	.LLST12
	.uleb128 0x37
	.long	.LASF57
	.byte	0x1
	.value	0x1008
	.long	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.string	"hdr"
	.byte	0x1
	.value	0x100a
	.long	0x18ab
	.long	.LLST13
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x100b
	.long	0x9e
	.long	.LLST14
	.uleb128 0x3f
	.long	.LVL55
	.long	0x12f6
	.long	0x1869
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	.LVL57
	.long	0x2f3a
	.uleb128 0x34
	.long	.LVL58
	.long	0x2f46
	.uleb128 0x34
	.long	.LVL59
	.long	0x2ef2
	.uleb128 0x3f
	.long	.LVL62
	.long	0x12f6
	.long	0x1898
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.long	.LVL65
	.long	0x2ef2
	.uleb128 0x3b
	.long	.LVL68
	.long	0x2f52
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1171
	.uleb128 0x25
	.long	.LASF295
	.byte	0x1
	.value	0xafd
	.long	0x199
	.byte	0x3
	.long	0x18cf
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0xafd
	.long	0x7d8
	.byte	0
	.uleb128 0x39
	.long	.LASF296
	.byte	0x1
	.value	0x104d
	.long	0x68
	.long	.LFB96
	.long	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x1953
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x104d
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3a
	.string	"buf"
	.byte	0x1
	.value	0x104d
	.long	0x7d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.string	"cb"
	.byte	0x1
	.value	0x104e
	.long	0x1129
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x41
	.long	.LASF297
	.byte	0x1
	.value	0x1050
	.long	0x1953
	.long	.LLST15
	.uleb128 0x34
	.long	.LVL70
	.long	0x2f5e
	.uleb128 0x34
	.long	.LVL71
	.long	0x2ef2
	.uleb128 0x34
	.long	.LVL73
	.long	0x2ef2
	.uleb128 0x34
	.long	.LVL76
	.long	0x2f6a
	.uleb128 0x34
	.long	.LVL77
	.long	0x2f76
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x837
	.uleb128 0x27
	.long	.LASF298
	.byte	0x1
	.value	0x1062
	.byte	0x1
	.long	0x1972
	.uleb128 0x2b
	.string	"tx"
	.byte	0x1
	.value	0x1062
	.long	0x1972
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1135
	.uleb128 0x36
	.long	.LASF299
	.byte	0x1
	.value	0x1069
	.long	.LFB98
	.long	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x19f7
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x1069
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"tx"
	.byte	0x1
	.value	0x106b
	.long	0x1972
	.long	.LLST16
	.uleb128 0x42
	.long	0x1959
	.long	.LBB69
	.long	.LBE69-.LBB69
	.byte	0x1
	.value	0x1071
	.long	0x19ed
	.uleb128 0x32
	.long	0x1966
	.long	.LLST17
	.uleb128 0x3c
	.long	0x1457
	.long	.LBB71
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0x1067
	.uleb128 0x32
	.long	0x1463
	.long	.LLST18
	.uleb128 0x32
	.long	0x146e
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL79
	.long	0x2f82
	.byte	0
	.uleb128 0x27
	.long	.LASF300
	.byte	0x1
	.value	0x1074
	.byte	0x1
	.long	0x1a0f
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0x1076
	.long	0x68
	.byte	0
	.uleb128 0x25
	.long	.LASF301
	.byte	0x1
	.value	0x1081
	.long	0x10e
	.byte	0x1
	.long	0x1a50
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x1081
	.long	0xaf5
	.uleb128 0x2b
	.string	"cb"
	.byte	0x1
	.value	0x1081
	.long	0x1129
	.uleb128 0x2c
	.long	.LASF108
	.byte	0x1
	.value	0x1083
	.long	0x10e
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.value	0x1084
	.long	0x6f
	.byte	0
	.uleb128 0x2a
	.long	.LASF302
	.byte	0x1
	.byte	0x71
	.byte	0x3
	.long	0x1a73
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x71
	.long	0x127e
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0x72
	.long	0x10e
	.byte	0
	.uleb128 0x23
	.long	.LASF303
	.byte	0x1
	.byte	0x9e
	.long	0x10e
	.byte	0x3
	.long	0x1a9a
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0x9e
	.long	0x127e
	.uleb128 0x43
	.long	.LASF108
	.byte	0x1
	.byte	0xa0
	.long	0x10e
	.byte	0
	.uleb128 0x27
	.long	.LASF304
	.byte	0x1
	.value	0x1094
	.byte	0x1
	.long	0x1acc
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x1094
	.long	0xaf5
	.uleb128 0x26
	.long	.LASF108
	.byte	0x1
	.value	0x1094
	.long	0x10e
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.value	0x1096
	.long	0x6f
	.byte	0
	.uleb128 0x23
	.long	.LASF305
	.byte	0x1
	.byte	0xc2
	.long	0x923
	.byte	0x3
	.long	0x1b09
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0xc2
	.long	0x127e
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0xc3
	.long	0x10e
	.uleb128 0x43
	.long	.LASF25
	.byte	0x1
	.byte	0xc5
	.long	0x10e
	.uleb128 0x43
	.long	.LASF306
	.byte	0x1
	.byte	0xc8
	.long	0x10e
	.byte	0
	.uleb128 0x2a
	.long	.LASF307
	.byte	0x1
	.byte	0xad
	.byte	0x3
	.long	0x1b37
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0xad
	.long	0x127e
	.uleb128 0x24
	.long	.LASF308
	.byte	0x1
	.byte	0xae
	.long	0x10e
	.uleb128 0x24
	.long	.LASF108
	.byte	0x1
	.byte	0xaf
	.long	0x10e
	.byte	0
	.uleb128 0x44
	.long	.LASF410
	.byte	0x1
	.value	0x10a4
	.long	0x923
	.long	.LFB102
	.long	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e50
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x10a4
	.long	0xaf5
	.long	.LLST20
	.uleb128 0x3e
	.string	"buf"
	.byte	0x1
	.value	0x10a4
	.long	0x7d8
	.long	.LLST21
	.uleb128 0x2f
	.long	.LASF57
	.byte	0x1
	.value	0x10a4
	.long	0x93
	.long	.LLST22
	.uleb128 0x37
	.long	.LASF309
	.byte	0x1
	.value	0x10a6
	.long	0x923
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"hdr"
	.byte	0x1
	.value	0x10a8
	.long	0x1e50
	.long	.LLST23
	.uleb128 0x30
	.string	"cb"
	.byte	0x1
	.value	0x10a9
	.long	0x1129
	.long	.LLST24
	.uleb128 0x45
	.long	.LASF108
	.byte	0x1
	.value	0x10aa
	.long	0x10e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.value	0x10ab
	.long	0x68
	.long	.LLST25
	.uleb128 0x46
	.long	.LASF411
	.byte	0x1
	.value	0x10c1
	.long	.L122
	.uleb128 0x42
	.long	0x19f7
	.long	.LBB105
	.long	.LBE105-.LBB105
	.byte	0x1
	.value	0x10ae
	.long	0x1c13
	.uleb128 0x33
	.long	.LBB106
	.long	.LBE106-.LBB106
	.uleb128 0x47
	.long	0x1a04
	.long	.LLST26
	.uleb128 0x34
	.long	.LVL89
	.long	0x2f8e
	.uleb128 0x34
	.long	.LVL90
	.long	0x1978
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	0x1a0f
	.long	.LBB107
	.long	.Ldebug_ranges0+0x38
	.byte	0x1
	.value	0x10b7
	.long	0x1cb0
	.uleb128 0x32
	.long	0x1a2c
	.long	.LLST27
	.uleb128 0x32
	.long	0x1a20
	.long	.LLST28
	.uleb128 0x49
	.long	.Ldebug_ranges0+0x38
	.uleb128 0x4a
	.long	0x1a37
	.uleb128 0x47
	.long	0x1a43
	.long	.LLST29
	.uleb128 0x48
	.long	0x1a73
	.long	.LBB109
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.value	0x1087
	.long	0x1c79
	.uleb128 0x32
	.long	0x1a83
	.long	.LLST30
	.uleb128 0x49
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x47
	.long	0x1a8e
	.long	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x1a50
	.long	.LBB113
	.long	.LBE113-.LBB113
	.byte	0x1
	.value	0x1090
	.long	0x1c9c
	.uleb128 0x4b
	.long	0x1a67
	.uleb128 0x32
	.long	0x1a5c
	.long	.LLST32
	.byte	0
	.uleb128 0x34
	.long	.LVL100
	.long	0x2f9a
	.uleb128 0x34
	.long	.LVL102
	.long	0x2fa6
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x18b1
	.long	.LBB116
	.long	.LBE116-.LBB116
	.byte	0x1
	.value	0x10b5
	.long	0x1cce
	.uleb128 0x32
	.long	0x18c2
	.long	.LLST33
	.byte	0
	.uleb128 0x42
	.long	0x14bc
	.long	.LBB118
	.long	.LBE118-.LBB118
	.byte	0x1
	.value	0x10b6
	.long	0x1cf5
	.uleb128 0x32
	.long	0x14d5
	.long	.LLST34
	.uleb128 0x32
	.long	0x14c9
	.long	.LLST35
	.byte	0
	.uleb128 0x42
	.long	0x1a9a
	.long	.LBB121
	.long	.LBE121-.LBB121
	.byte	0x1
	.value	0x10bb
	.long	0x1e22
	.uleb128 0x32
	.long	0x1ab3
	.long	.LLST36
	.uleb128 0x32
	.long	0x1aa7
	.long	.LLST37
	.uleb128 0x33
	.long	.LBB122
	.long	.LBE122-.LBB122
	.uleb128 0x47
	.long	0x1abf
	.long	.LLST38
	.uleb128 0x42
	.long	0x1acc
	.long	.LBB123
	.long	.LBE123-.LBB123
	.byte	0x1
	.value	0x1098
	.long	0x1dcd
	.uleb128 0x32
	.long	0x1ae7
	.long	.LLST39
	.uleb128 0x32
	.long	0x1adc
	.long	.LLST40
	.uleb128 0x33
	.long	.LBB124
	.long	.LBE124-.LBB124
	.uleb128 0x47
	.long	0x1af2
	.long	.LLST41
	.uleb128 0x47
	.long	0x1afd
	.long	.LLST42
	.uleb128 0x4c
	.long	0x1b09
	.long	.LBB125
	.long	.LBE125-.LBB125
	.byte	0x1
	.byte	0xcb
	.long	0x1d9d
	.uleb128 0x32
	.long	0x1b2b
	.long	.LLST43
	.uleb128 0x32
	.long	0x1b20
	.long	.LLST44
	.uleb128 0x32
	.long	0x1b15
	.long	.LLST45
	.byte	0
	.uleb128 0x4d
	.long	0x12bc
	.long	.LBB127
	.long	.LBE127-.LBB127
	.byte	0x1
	.byte	0xc9
	.uleb128 0x32
	.long	0x12cc
	.long	.LLST46
	.uleb128 0x4d
	.long	0x12a0
	.long	.LBB128
	.long	.LBE128-.LBB128
	.byte	0x1
	.byte	0x64
	.uleb128 0x4b
	.long	0x12b0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x1959
	.long	.LBB130
	.long	.LBE130-.LBB130
	.byte	0x1
	.value	0x109a
	.long	0x1e0e
	.uleb128 0x32
	.long	0x1966
	.long	.LLST47
	.uleb128 0x3c
	.long	0x1457
	.long	.LBB132
	.long	.Ldebug_ranges0+0x68
	.byte	0x1
	.value	0x1067
	.uleb128 0x32
	.long	0x1463
	.long	.LLST48
	.uleb128 0x32
	.long	0x146e
	.long	.LLST49
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL105
	.long	0x2f9a
	.uleb128 0x34
	.long	.LVL113
	.long	0x2fa6
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL88
	.long	0x2fb2
	.uleb128 0x34
	.long	.LVL92
	.long	0x2fbe
	.uleb128 0x34
	.long	.LVL103
	.long	0x2fca
	.uleb128 0x34
	.long	.LVL116
	.long	0x2f76
	.uleb128 0x34
	.long	.LVL117
	.long	0x2ef2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5e6
	.uleb128 0x4e
	.long	.LASF311
	.byte	0x1
	.value	0x1110
	.long	.LFB106
	.long	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x1edb
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x1110
	.long	0xaf5
	.long	.LLST50
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x1112
	.long	0x7d8
	.long	.LLST51
	.uleb128 0x48
	.long	0x1381
	.long	.LBB136
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.value	0x1119
	.long	0x1eaf
	.uleb128 0x4b
	.long	0x138e
	.uleb128 0x34
	.long	.LVL128
	.long	0x2fd6
	.byte	0
	.uleb128 0x34
	.long	.LVL122
	.long	0x2fe2
	.uleb128 0x34
	.long	.LVL123
	.long	0x2ef2
	.uleb128 0x34
	.long	.LVL125
	.long	0x1978
	.uleb128 0x4f
	.long	.LVL127
	.long	0x12f6
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 -60
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF312
	.byte	0x1
	.value	0x111b
	.long	0x68
	.long	.LFB107
	.long	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fc9
	.uleb128 0x37
	.long	.LASF313
	.byte	0x1
	.value	0x111b
	.long	0x1fc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x111d
	.long	0x68
	.long	.LLST52
	.uleb128 0x41
	.long	.LASF314
	.byte	0x1
	.value	0x111d
	.long	0x68
	.long	.LLST53
	.uleb128 0x50
	.long	.LBB143
	.long	.LBE143-.LBB143
	.long	0x1fbf
	.uleb128 0x45
	.long	.LASF268
	.byte	0x1
	.value	0x1123
	.long	0xaf5
	.uleb128 0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.uleb128 0x42
	.long	0x147a
	.long	.LBB144
	.long	.LBE144-.LBB144
	.byte	0x1
	.value	0x1128
	.long	0x1f8c
	.uleb128 0x32
	.long	0x1497
	.long	.LLST54
	.uleb128 0x32
	.long	0x148b
	.long	.LLST55
	.uleb128 0x33
	.long	.LBB145
	.long	.LBE145-.LBB145
	.uleb128 0x47
	.long	0x14a3
	.long	.LLST56
	.uleb128 0x51
	.long	0x14af
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.long	.LVL137
	.long	0x2fee
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL134
	.long	0x2f8e
	.uleb128 0x3f
	.long	.LVL138
	.long	0x1e56
	.long	0x1fac
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	conns
	.byte	0
	.uleb128 0x34
	.long	.LVL139
	.long	0x2ffa
	.uleb128 0x34
	.long	.LVL140
	.long	0x2ffa
	.byte	0
	.uleb128 0x34
	.long	.LVL133
	.long	0x2ffa
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x4de
	.uleb128 0x25
	.long	.LASF315
	.byte	0x1
	.value	0xf78
	.long	0xaf5
	.byte	0x1
	.long	0x1ff7
	.uleb128 0x2c
	.long	.LASF268
	.byte	0x1
	.value	0xf7a
	.long	0xaf5
	.uleb128 0x2d
	.string	"i"
	.byte	0x1
	.value	0xf7d
	.long	0x68
	.byte	0
	.uleb128 0x27
	.long	.LASF316
	.byte	0x1
	.value	0x538
	.byte	0x3
	.long	0x201d
	.uleb128 0x2b
	.string	"dst"
	.byte	0x1
	.value	0x538
	.long	0x201d
	.uleb128 0x2b
	.string	"src"
	.byte	0x1
	.value	0x538
	.long	0x918
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5da
	.uleb128 0x39
	.long	.LASF317
	.byte	0x1
	.value	0x114d
	.long	0xaf5
	.long	.LFB109
	.long	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x20c8
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.value	0x114d
	.long	0x918
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.long	.LASF268
	.byte	0x1
	.value	0x114f
	.long	0xaf5
	.uleb128 0x48
	.long	0x1fcf
	.long	.LBB150
	.long	.Ldebug_ranges0+0x98
	.byte	0x1
	.value	0x114f
	.long	0x2097
	.uleb128 0x49
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x47
	.long	0x1fe0
	.long	.LLST57
	.uleb128 0x47
	.long	0x1fec
	.long	.LLST58
	.uleb128 0x34
	.long	.LVL143
	.long	0x2f8e
	.uleb128 0x34
	.long	.LVL145
	.long	0x3006
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x1ff7
	.long	.LBB155
	.long	.LBE155-.LBB155
	.byte	0x1
	.value	0x1155
	.long	0x20be
	.uleb128 0x32
	.long	0x2010
	.long	.LLST59
	.uleb128 0x32
	.long	0x2004
	.long	.LLST60
	.byte	0
	.uleb128 0x34
	.long	.LVL148
	.long	0x3012
	.byte	0
	.uleb128 0x27
	.long	.LASF318
	.byte	0x1
	.value	0x115e
	.byte	0x1
	.long	0x20fc
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x115e
	.long	0xaf5
	.uleb128 0x52
	.uleb128 0x2c
	.long	.LASF108
	.byte	0x1
	.value	0x1161
	.long	0x10e
	.uleb128 0x2d
	.string	"key"
	.byte	0x1
	.value	0x1162
	.long	0x6f
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF319
	.byte	0x1
	.value	0xf2d
	.byte	0x1
	.long	0x2121
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0xf2d
	.long	0xaf5
	.uleb128 0x2d
	.string	"cb"
	.byte	0x1
	.value	0xf2f
	.long	0xc55
	.byte	0
	.uleb128 0x23
	.long	.LASF320
	.byte	0x1
	.byte	0xa7
	.long	0x10e
	.byte	0x3
	.long	0x213d
	.uleb128 0x24
	.long	.LASF264
	.byte	0x1
	.byte	0xa7
	.long	0x127e
	.byte	0
	.uleb128 0x36
	.long	.LASF321
	.byte	0x1
	.value	0x1173
	.long	.LFB111
	.long	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x239e
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x1173
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF82
	.byte	0x1
	.value	0x1173
	.long	0xfc7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x41
	.long	.LASF322
	.byte	0x1
	.value	0x1175
	.long	0xfc7
	.long	.LLST61
	.uleb128 0x42
	.long	0x1363
	.long	.LBB184
	.long	.LBE184-.LBB184
	.byte	0x1
	.value	0x117f
	.long	0x21a8
	.uleb128 0x32
	.long	0x1374
	.long	.LLST62
	.uleb128 0x34
	.long	.LVL152
	.long	0x301e
	.byte	0
	.uleb128 0x42
	.long	0x139b
	.long	.LBB186
	.long	.LBE186-.LBB186
	.byte	0x1
	.value	0x1192
	.long	0x21c6
	.uleb128 0x32
	.long	0x13a7
	.long	.LLST63
	.byte	0
	.uleb128 0x42
	.long	0x20fc
	.long	.LBB188
	.long	.LBE188-.LBB188
	.byte	0x1
	.value	0x119e
	.long	0x21f7
	.uleb128 0x32
	.long	0x2109
	.long	.LLST64
	.uleb128 0x33
	.long	.LBB189
	.long	.LBE189-.LBB189
	.uleb128 0x47
	.long	0x2115
	.long	.LLST65
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x20c8
	.long	.LBB190
	.long	.LBE190-.LBB190
	.byte	0x1
	.value	0x119f
	.long	0x22cf
	.uleb128 0x4b
	.long	0x20d5
	.uleb128 0x33
	.long	.LBB191
	.long	.LBE191-.LBB191
	.uleb128 0x4a
	.long	0x20e2
	.uleb128 0x47
	.long	0x20ee
	.long	.LLST66
	.uleb128 0x48
	.long	0x2121
	.long	.LBB192
	.long	.Ldebug_ranges0+0xb8
	.byte	0x1
	.value	0x1164
	.long	0x2271
	.uleb128 0x32
	.long	0x2131
	.long	.LLST67
	.uleb128 0x4d
	.long	0x1a73
	.long	.LBB194
	.long	.LBE194-.LBB194
	.byte	0x1
	.byte	0xab
	.uleb128 0x32
	.long	0x1a83
	.long	.LLST68
	.uleb128 0x33
	.long	.LBB195
	.long	.LBE195-.LBB195
	.uleb128 0x47
	.long	0x1a8e
	.long	.LLST69
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x1959
	.long	.LBB197
	.long	.LBE197-.LBB197
	.byte	0x1
	.value	0x1169
	.long	0x22b2
	.uleb128 0x32
	.long	0x1966
	.long	.LLST70
	.uleb128 0x3c
	.long	0x1457
	.long	.LBB199
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.value	0x1067
	.uleb128 0x32
	.long	0x1463
	.long	.LLST71
	.uleb128 0x32
	.long	0x146e
	.long	.LLST72
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LVL166
	.long	0x2fa6
	.uleb128 0x34
	.long	.LVL170
	.long	0x2f76
	.uleb128 0x34
	.long	.LVL172
	.long	0x2f9a
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x141f
	.long	.LBB204
	.long	.LBE204-.LBB204
	.byte	0x1
	.value	0x11a3
	.long	0x2312
	.uleb128 0x32
	.long	0x1438
	.long	.LLST73
	.uleb128 0x32
	.long	0x142c
	.long	.LLST74
	.uleb128 0x33
	.long	.LBB205
	.long	.LBE205-.LBB205
	.uleb128 0x47
	.long	0x1444
	.long	.LLST75
	.uleb128 0x34
	.long	.LVL178
	.long	0x302a
	.byte	0
	.byte	0
	.uleb128 0x48
	.long	0x1381
	.long	.LBB206
	.long	.Ldebug_ranges0+0xe8
	.byte	0x1
	.value	0x11a7
	.long	0x2339
	.uleb128 0x32
	.long	0x138e
	.long	.LLST76
	.uleb128 0x3b
	.long	.LVL186
	.long	0x2fd6
	.byte	0
	.uleb128 0x34
	.long	.LVL154
	.long	0x3036
	.uleb128 0x34
	.long	.LVL155
	.long	0x3036
	.uleb128 0x34
	.long	.LVL156
	.long	0x3042
	.uleb128 0x34
	.long	.LVL158
	.long	0x304e
	.uleb128 0x53
	.long	.LVL159
	.long	0x14e2
	.long	0x2372
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.long	.LVL160
	.long	0x305a
	.uleb128 0x34
	.long	.LVL175
	.long	0x3066
	.uleb128 0x3b
	.long	.LVL181
	.long	0x3042
	.uleb128 0x4f
	.long	.LVL182
	.long	0x14e2
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF323
	.byte	0x1
	.value	0x11c2
	.long	0xaf5
	.long	.LFB112
	.long	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x2403
	.uleb128 0x37
	.long	.LASF91
	.byte	0x1
	.value	0x11c2
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x54
	.string	"i"
	.byte	0x1
	.value	0x11c4
	.long	0x68
	.byte	0
	.uleb128 0x42
	.long	0x1363
	.long	.LBB210
	.long	.LBE210-.LBB210
	.byte	0x1
	.value	0x11ce
	.long	0x23f9
	.uleb128 0x32
	.long	0x1374
	.long	.LLST77
	.uleb128 0x34
	.long	.LVL190
	.long	0x301e
	.byte	0
	.uleb128 0x34
	.long	.LVL188
	.long	0x2f8e
	.byte	0
	.uleb128 0x25
	.long	.LASF324
	.byte	0x1
	.value	0x530
	.long	0x68
	.byte	0x3
	.long	0x2429
	.uleb128 0x2b
	.string	"a"
	.byte	0x1
	.value	0x530
	.long	0x918
	.uleb128 0x2b
	.string	"b"
	.byte	0x1
	.value	0x530
	.long	0x918
	.byte	0
	.uleb128 0x31
	.long	0x132e
	.long	.LFB113
	.long	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ec
	.uleb128 0x35
	.long	0x133f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0x134b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x42
	.long	0x2403
	.long	.LBB220
	.long	.LBE220-.LBB220
	.byte	0x1
	.value	0x11d7
	.long	0x247c
	.uleb128 0x32
	.long	0x241e
	.long	.LLST78
	.uleb128 0x32
	.long	0x2414
	.long	.LLST79
	.uleb128 0x34
	.long	.LVL194
	.long	0x3072
	.byte	0
	.uleb128 0x33
	.long	.LBB222
	.long	.LBE222-.LBB222
	.uleb128 0x32
	.long	0x134b
	.long	.LLST80
	.uleb128 0x32
	.long	0x133f
	.long	.LLST81
	.uleb128 0x42
	.long	0x2403
	.long	.LBB224
	.long	.LBE224-.LBB224
	.byte	0x1
	.value	0x11db
	.long	0x24be
	.uleb128 0x32
	.long	0x241e
	.long	.LLST82
	.uleb128 0x32
	.long	0x2414
	.long	.LLST83
	.byte	0
	.uleb128 0x55
	.long	0x2403
	.long	.LBB226
	.long	.LBE226-.LBB226
	.byte	0x1
	.value	0x11dd
	.uleb128 0x32
	.long	0x241e
	.long	.LLST84
	.uleb128 0x32
	.long	0x2414
	.long	.LLST85
	.uleb128 0x34
	.long	.LVL201
	.long	0x3072
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF325
	.byte	0x1
	.value	0x11df
	.long	0xaf5
	.long	.LFB114
	.long	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x255a
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.value	0x11df
	.long	0x918
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x54
	.string	"i"
	.byte	0x1
	.value	0x11e1
	.long	0x68
	.byte	0
	.uleb128 0x48
	.long	0x1363
	.long	.LBB228
	.long	.Ldebug_ranges0+0x100
	.byte	0x1
	.value	0x11ea
	.long	0x2547
	.uleb128 0x32
	.long	0x1374
	.long	.LLST86
	.uleb128 0x34
	.long	.LVL207
	.long	0x301e
	.byte	0
	.uleb128 0x34
	.long	.LVL204
	.long	0x2f8e
	.uleb128 0x34
	.long	.LVL205
	.long	0x132e
	.byte	0
	.uleb128 0x39
	.long	.LASF326
	.byte	0x1
	.value	0x11f1
	.long	0xaf5
	.long	.LFB115
	.long	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d7
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.value	0x11f1
	.long	0x918
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF82
	.byte	0x1
	.value	0x11f2
	.long	0x25d7
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x54
	.string	"i"
	.byte	0x1
	.value	0x11f4
	.long	0x68
	.byte	0
	.uleb128 0x48
	.long	0x1363
	.long	.LBB232
	.long	.Ldebug_ranges0+0x118
	.byte	0x1
	.value	0x1200
	.long	0x25c4
	.uleb128 0x32
	.long	0x1374
	.long	.LLST87
	.uleb128 0x34
	.long	.LVL212
	.long	0x301e
	.byte	0
	.uleb128 0x34
	.long	.LVL209
	.long	0x2f8e
	.uleb128 0x34
	.long	.LVL210
	.long	0x132e
	.byte	0
	.uleb128 0xf
	.long	0xfc7
	.uleb128 0x31
	.long	0x1363
	.long	.LFB117
	.long	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x2601
	.uleb128 0x35
	.long	0x1374
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	.LVL214
	.long	0x301e
	.byte	0
	.uleb128 0x31
	.long	0x1381
	.long	.LFB118
	.long	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x2627
	.uleb128 0x32
	.long	0x138e
	.long	.LLST88
	.uleb128 0x3b
	.long	.LVL217
	.long	0x2fd6
	.byte	0
	.uleb128 0x39
	.long	.LASF327
	.byte	0x1
	.value	0x1220
	.long	0x918
	.long	.LFB119
	.long	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x2651
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x1220
	.long	0x1358
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	.LASF328
	.byte	0x1
	.value	0x1224
	.long	0x68
	.long	.LFB120
	.long	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x268c
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x1224
	.long	0x1358
	.long	.LLST89
	.uleb128 0x2f
	.long	.LASF329
	.byte	0x1
	.value	0x1224
	.long	0x268c
	.long	.LLST90
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa16
	.uleb128 0x25
	.long	.LASF330
	.byte	0x1
	.value	0x1238
	.long	0x68
	.byte	0x1
	.long	0x26e0
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x1238
	.long	0xaf5
	.uleb128 0x26
	.long	.LASF93
	.byte	0x1
	.value	0x1238
	.long	0x93
	.uleb128 0x2d
	.string	"buf"
	.byte	0x1
	.value	0x123a
	.long	0x7d8
	.uleb128 0x2c
	.long	.LASF331
	.byte	0x1
	.value	0x123b
	.long	0x26e0
	.uleb128 0x2d
	.string	"err"
	.byte	0x1
	.value	0x123c
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x60e
	.uleb128 0x31
	.long	0x13b3
	.long	.LFB123
	.long	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x27a0
	.uleb128 0x35
	.long	0x13c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	0x13d0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x50
	.long	.LBB240
	.long	.LBE240-.LBB240
	.long	0x2737
	.uleb128 0x4b
	.long	0x13d0
	.uleb128 0x32
	.long	0x13c4
	.long	.LLST91
	.uleb128 0x34
	.long	.LVL226
	.long	0x213d
	.uleb128 0x34
	.long	.LVL227
	.long	0x307e
	.byte	0
	.uleb128 0x55
	.long	0x2692
	.long	.LBB242
	.long	.LBE242-.LBB242
	.byte	0x1
	.value	0x1276
	.uleb128 0x4b
	.long	0x26af
	.uleb128 0x32
	.long	0x26a3
	.long	.LLST92
	.uleb128 0x33
	.long	.LBB243
	.long	.LBE243-.LBB243
	.uleb128 0x47
	.long	0x26bb
	.long	.LLST93
	.uleb128 0x47
	.long	0x26c7
	.long	.LLST94
	.uleb128 0x47
	.long	0x26d3
	.long	.LLST95
	.uleb128 0x34
	.long	.LVL229
	.long	0x2f0a
	.uleb128 0x34
	.long	.LVL232
	.long	0x2f16
	.uleb128 0x34
	.long	.LVL233
	.long	0x308a
	.uleb128 0x34
	.long	.LVL235
	.long	0x213d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.long	.LASF332
	.byte	0x1
	.value	0x1207
	.long	.LFB116
	.long	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f4
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1209
	.long	0x68
	.long	.LLST96
	.uleb128 0x33
	.long	.LBB244
	.long	.LBE244-.LBB244
	.uleb128 0x45
	.long	.LASF268
	.byte	0x1
	.value	0x120b
	.long	0xaf5
	.uleb128 0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.uleb128 0x34
	.long	.LVL238
	.long	0x2f8e
	.uleb128 0x34
	.long	.LVL239
	.long	0x13b3
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF333
	.byte	0x1
	.value	0x127e
	.long	0xaf5
	.long	.LFB124
	.long	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x282d
	.uleb128 0x37
	.long	.LASF271
	.byte	0x1
	.value	0x127e
	.long	0x918
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF285
	.byte	0x1
	.value	0x127f
	.long	0x282d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2833
	.uleb128 0xf
	.long	0x8cb
	.uleb128 0x39
	.long	.LASF334
	.byte	0x1
	.value	0x1285
	.long	0x68
	.long	.LFB125
	.long	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ac
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x1285
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF285
	.byte	0x1
	.value	0x1286
	.long	0x28ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x41
	.long	.LASF335
	.byte	0x1
	.value	0x1288
	.long	0x28b7
	.long	.LLST97
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x1289
	.long	0x7d8
	.long	.LLST98
	.uleb128 0x34
	.long	.LVL243
	.long	0x2f0a
	.uleb128 0x34
	.long	.LVL245
	.long	0x2f16
	.uleb128 0x3b
	.long	.LVL249
	.long	0x308a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x28b2
	.uleb128 0xf
	.long	0x92a
	.uleb128 0x7
	.byte	0x4
	.long	0x666
	.uleb128 0x39
	.long	.LASF336
	.byte	0x1
	.value	0x124b
	.long	0x68
	.long	.LFB122
	.long	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x2913
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x124b
	.long	0xaf5
	.long	.LLST99
	.uleb128 0x2f
	.long	.LASF285
	.byte	0x1
	.value	0x124c
	.long	0x28ac
	.long	.LLST100
	.uleb128 0x34
	.long	.LVL252
	.long	0x3066
	.uleb128 0x3b
	.long	.LVL253
	.long	0x2838
	.uleb128 0x3b
	.long	.LVL254
	.long	0x3096
	.byte	0
	.uleb128 0x4e
	.long	.LASF337
	.byte	0x1
	.value	0xf5d
	.long	.LFB85
	.long	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x297a
	.uleb128 0x37
	.long	.LASF59
	.byte	0x1
	.value	0xf5d
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"le"
	.byte	0x1
	.value	0xf5f
	.long	0x297a
	.long	.LLST101
	.uleb128 0x41
	.long	.LASF268
	.byte	0x1
	.value	0xf67
	.long	0xaf5
	.long	.LLST102
	.uleb128 0x41
	.long	.LASF285
	.byte	0x1
	.value	0xf6e
	.long	0x28ac
	.long	.LLST103
	.uleb128 0x34
	.long	.LVL262
	.long	0x28bd
	.uleb128 0x34
	.long	.LVL263
	.long	0x30a2
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x101d
	.uleb128 0x39
	.long	.LASF338
	.byte	0x1
	.value	0x1298
	.long	0x7d8
	.long	.LFB126
	.long	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x29dd
	.uleb128 0x2f
	.long	.LASF297
	.byte	0x1
	.value	0x1298
	.long	0x1953
	.long	.LLST104
	.uleb128 0x2f
	.long	.LASF339
	.byte	0x1
	.value	0x1298
	.long	0x81
	.long	.LLST105
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x129a
	.long	0x7d8
	.long	.LLST106
	.uleb128 0x34
	.long	.LVL266
	.long	0x30ab
	.uleb128 0x34
	.long	.LVL268
	.long	0x30b7
	.byte	0
	.uleb128 0x31
	.long	0x13dd
	.long	.LFB141
	.long	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a6c
	.uleb128 0x32
	.long	0x13fa
	.long	.LLST107
	.uleb128 0x35
	.long	0x13ee
	.uleb128 0x6
	.byte	0xfa
	.long	0x13ee
	.byte	0x9f
	.uleb128 0x47
	.long	0x1406
	.long	.LLST108
	.uleb128 0x47
	.long	0x1412
	.long	.LLST109
	.uleb128 0x42
	.long	0x12d8
	.long	.LBB251
	.long	.LBE251-.LBB251
	.byte	0x1
	.value	0x10de
	.long	0x2a35
	.uleb128 0x32
	.long	0x12e9
	.long	.LLST110
	.byte	0
	.uleb128 0x34
	.long	.LVL270
	.long	0x2980
	.uleb128 0x34
	.long	.LVL272
	.long	0x2ef2
	.uleb128 0x34
	.long	.LVL276
	.long	0x2f3a
	.uleb128 0x34
	.long	.LVL279
	.long	0x2f3a
	.uleb128 0x34
	.long	.LVL282
	.long	0x2f46
	.uleb128 0x34
	.long	.LVL283
	.long	0x30c3
	.byte	0
	.uleb128 0x25
	.long	.LASF340
	.byte	0x1
	.value	0x10e5
	.long	0x923
	.byte	0x1
	.long	0x2aa2
	.uleb128 0x26
	.long	.LASF268
	.byte	0x1
	.value	0x10e5
	.long	0xaf5
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x10e5
	.long	0x7d8
	.uleb128 0x2c
	.long	.LASF277
	.byte	0x1
	.value	0x10e7
	.long	0x7d8
	.byte	0
	.uleb128 0x3d
	.long	.LASF341
	.byte	0x1
	.value	0x113d
	.long	.LFB108
	.long	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bf1
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x113d
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"buf"
	.byte	0x1
	.value	0x113f
	.long	0x7d8
	.long	.LLST111
	.uleb128 0x42
	.long	0x147a
	.long	.LBB261
	.long	.LBE261-.LBB261
	.byte	0x1
	.value	0x1142
	.long	0x2b21
	.uleb128 0x32
	.long	0x1497
	.long	.LLST112
	.uleb128 0x32
	.long	0x148b
	.long	.LLST113
	.uleb128 0x33
	.long	.LBB262
	.long	.LBE262-.LBB262
	.uleb128 0x47
	.long	0x14a3
	.long	.LLST114
	.uleb128 0x51
	.long	0x14af
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.long	.LVL290
	.long	0x2fee
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	0x2a6c
	.long	.LBB263
	.long	.LBE263-.LBB263
	.byte	0x1
	.value	0x1149
	.long	0x2bc9
	.uleb128 0x32
	.long	0x2a89
	.long	.LLST115
	.uleb128 0x32
	.long	0x2a7d
	.long	.LLST116
	.uleb128 0x33
	.long	.LBB264
	.long	.LBE264-.LBB264
	.uleb128 0x47
	.long	0x2a95
	.long	.LLST117
	.uleb128 0x3f
	.long	.LVL295
	.long	0x29dd
	.long	0x2b7b
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x56
	.long	0x13ee
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	.LVL297
	.long	0x1b37
	.long	0x2b8f
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3f
	.long	.LVL299
	.long	0x29dd
	.long	0x2bb1
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x56
	.long	0x13ee
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x4f
	.long	.LVL302
	.long	0x1b37
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x53
	.long	.LVL291
	.long	0x1e56
	.long	0x2bde
	.uleb128 0x40
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x34
	.long	.LVL292
	.long	0x2fe2
	.uleb128 0x3b
	.long	.LVL306
	.long	0x2ef2
	.byte	0
	.uleb128 0x39
	.long	.LASF342
	.byte	0x1
	.value	0x12a4
	.long	0x68
	.long	.LFB127
	.long	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c1b
	.uleb128 0x3e
	.string	"cb"
	.byte	0x1
	.value	0x12a4
	.long	0x2c1b
	.long	.LLST118
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2c21
	.uleb128 0xf
	.long	0xc5b
	.uleb128 0x39
	.long	.LASF343
	.byte	0x1
	.value	0x12b5
	.long	0x68
	.long	.LFB128
	.long	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c68
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x12b5
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF344
	.byte	0x1
	.value	0x12b5
	.long	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x34
	.long	.LVL312
	.long	0x30cf
	.byte	0
	.uleb128 0x39
	.long	.LASF345
	.byte	0x1
	.value	0x12c0
	.long	0x68
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ca5
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x12c0
	.long	0xaf5
	.long	.LLST119
	.uleb128 0x57
	.long	.LVL314
	.long	0x30db
	.uleb128 0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF346
	.byte	0x1
	.value	0x12cb
	.long	0x68
	.long	.LFB130
	.long	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ce2
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x12cb
	.long	0xaf5
	.long	.LLST120
	.uleb128 0x57
	.long	.LVL317
	.long	0x30e7
	.uleb128 0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF347
	.byte	0x1
	.value	0x12d5
	.long	0x68
	.long	.LFB131
	.long	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d1f
	.uleb128 0x2f
	.long	.LASF268
	.byte	0x1
	.value	0x12d5
	.long	0xaf5
	.long	.LLST121
	.uleb128 0x57
	.long	.LVL320
	.long	0x30f3
	.uleb128 0x40
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	.LASF348
	.byte	0x1
	.value	0x12e1
	.long	0x93
	.long	.LFB132
	.long	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d49
	.uleb128 0x37
	.long	.LASF268
	.byte	0x1
	.value	0x12e1
	.long	0xaf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x39
	.long	.LASF349
	.byte	0x1
	.value	0x12e5
	.long	0xaf5
	.long	.LFB133
	.long	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x2db2
	.uleb128 0x3a
	.string	"id"
	.byte	0x1
	.value	0x12e5
	.long	0x93
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.long	.LASF268
	.byte	0x1
	.value	0x12e7
	.long	0xaf5
	.long	.LLST122
	.uleb128 0x42
	.long	0x1363
	.long	.LBB265
	.long	.LBE265-.LBB265
	.byte	0x1
	.value	0x12f3
	.long	0x2da8
	.uleb128 0x32
	.long	0x1374
	.long	.LLST123
	.uleb128 0x34
	.long	.LVL327
	.long	0x301e
	.byte	0
	.uleb128 0x34
	.long	.LVL325
	.long	0x2f8e
	.byte	0
	.uleb128 0x39
	.long	.LASF350
	.byte	0x1
	.value	0x12f5
	.long	0x68
	.long	.LFB134
	.long	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e36
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.value	0x12f7
	.long	0x68
	.long	.LLST124
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x12f7
	.long	0x68
	.long	.LLST125
	.uleb128 0x48
	.long	0x1457
	.long	.LBB269
	.long	.Ldebug_ranges0+0x130
	.byte	0x1
	.value	0x12fa
	.long	0x2e11
	.uleb128 0x32
	.long	0x1463
	.long	.LLST126
	.uleb128 0x32
	.long	0x146e
	.long	.LLST127
	.byte	0
	.uleb128 0x34
	.long	.LVL329
	.long	0x3036
	.uleb128 0x34
	.long	.LVL333
	.long	0x30ff
	.uleb128 0x34
	.long	.LVL334
	.long	0x310b
	.uleb128 0x34
	.long	.LVL335
	.long	0x3117
	.byte	0
	.uleb128 0x14
	.long	0xafb
	.long	0x2e46
	.uleb128 0x15
	.long	0x192
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	.LASF351
	.byte	0x1
	.value	0xf04
	.long	0x2e36
	.uleb128 0x5
	.byte	0x3
	.long	conns
	.uleb128 0x45
	.long	.LASF352
	.byte	0x1
	.value	0xf05
	.long	0xc55
	.uleb128 0x5
	.byte	0x3
	.long	callback_list
	.uleb128 0x14
	.long	0x1135
	.long	0x2e7a
	.uleb128 0x15
	.long	0x192
	.byte	0x9
	.byte	0
	.uleb128 0x45
	.long	.LASF353
	.byte	0x1
	.value	0xf09
	.long	0x2e6a
	.uleb128 0x5
	.byte	0x3
	.long	conn_tx
	.uleb128 0x45
	.long	.LASF354
	.byte	0x1
	.value	0xf0a
	.long	0x114
	.uleb128 0x5
	.byte	0x3
	.long	free_tx
	.uleb128 0x45
	.long	.LASF355
	.byte	0x1
	.value	0x110e
	.long	0x491
	.uleb128 0x5
	.byte	0x3
	.long	conn_change
	.uleb128 0x58
	.long	.LASF356
	.byte	0x1
	.value	0x222
	.long	0x6f
	.uleb128 0x58
	.long	.LASF207
	.byte	0x1
	.value	0xc46
	.long	0xe83
	.uleb128 0x59
	.long	.LASF357
	.byte	0x1
	.value	0xf03
	.long	0x2c1b
	.uleb128 0x5
	.byte	0x3
	.long	bt_auth
	.uleb128 0x58
	.long	.LASF358
	.byte	0x1
	.value	0xf01
	.long	0x837
	.uleb128 0x58
	.long	.LASF359
	.byte	0x1
	.value	0xf02
	.long	0x270
	.uleb128 0x5a
	.long	.LASF360
	.long	.LASF360
	.byte	0x1
	.value	0xafa
	.uleb128 0x5a
	.long	.LASF361
	.long	.LASF361
	.byte	0x1
	.value	0xc4a
	.uleb128 0x5a
	.long	.LASF362
	.long	.LASF362
	.byte	0x1
	.value	0xc4b
	.uleb128 0x5a
	.long	.LASF363
	.long	.LASF363
	.byte	0x1
	.value	0xaa5
	.uleb128 0x5a
	.long	.LASF364
	.long	.LASF364
	.byte	0x1
	.value	0xc4d
	.uleb128 0x5a
	.long	.LASF365
	.long	.LASF365
	.byte	0x1
	.value	0xe31
	.uleb128 0x5a
	.long	.LASF366
	.long	.LASF366
	.byte	0x1
	.value	0xabc
	.uleb128 0x5a
	.long	.LASF367
	.long	.LASF367
	.byte	0x1
	.value	0xaa6
	.uleb128 0x5a
	.long	.LASF368
	.long	.LASF368
	.byte	0x1
	.value	0xd95
	.uleb128 0x5a
	.long	.LASF369
	.long	.LASF369
	.byte	0x1
	.value	0xaec
	.uleb128 0x5a
	.long	.LASF370
	.long	.LASF370
	.byte	0x1
	.value	0xaf9
	.uleb128 0x5a
	.long	.LASF371
	.long	.LASF371
	.byte	0x1
	.value	0x319
	.uleb128 0x5a
	.long	.LASF372
	.long	.LASF372
	.byte	0x1
	.value	0x30b
	.uleb128 0x5a
	.long	.LASF373
	.long	.LASF373
	.byte	0x1
	.value	0x349
	.uleb128 0x5a
	.long	.LASF374
	.long	.LASF374
	.byte	0x1
	.value	0x33f
	.uleb128 0x5a
	.long	.LASF375
	.long	.LASF375
	.byte	0x1
	.value	0x340
	.uleb128 0x5a
	.long	.LASF376
	.long	.LASF376
	.byte	0x1
	.value	0x318
	.uleb128 0x5a
	.long	.LASF377
	.long	.LASF377
	.byte	0x1
	.value	0xaad
	.uleb128 0x5a
	.long	.LASF378
	.long	.LASF378
	.byte	0x1
	.value	0xc54
	.uleb128 0x5a
	.long	.LASF379
	.long	.LASF379
	.byte	0x1
	.value	0x348
	.uleb128 0x5a
	.long	.LASF380
	.long	.LASF380
	.byte	0x1
	.value	0xaef
	.uleb128 0x5a
	.long	.LASF381
	.long	.LASF381
	.byte	0x1
	.value	0x34e
	.uleb128 0x5a
	.long	.LASF382
	.long	.LASF382
	.byte	0x1
	.value	0x3ab
	.uleb128 0x5a
	.long	.LASF383
	.long	.LASF383
	.byte	0x1
	.value	0x34a
	.uleb128 0x5a
	.long	.LASF384
	.long	.LASF384
	.byte	0x1
	.value	0x382
	.uleb128 0x5a
	.long	.LASF385
	.long	.LASF385
	.byte	0x1
	.value	0x347
	.uleb128 0x5a
	.long	.LASF386
	.long	.LASF386
	.byte	0x1
	.value	0x34c
	.uleb128 0x5a
	.long	.LASF387
	.long	.LASF387
	.byte	0x1
	.value	0x305
	.uleb128 0x5a
	.long	.LASF75
	.long	.LASF75
	.byte	0x1
	.value	0x3a9
	.uleb128 0x5a
	.long	.LASF388
	.long	.LASF388
	.byte	0x1
	.value	0xd80
	.uleb128 0x5a
	.long	.LASF389
	.long	.LASF389
	.byte	0x1
	.value	0xd81
	.uleb128 0x5a
	.long	.LASF390
	.long	.LASF390
	.byte	0x1
	.value	0x384
	.uleb128 0x5a
	.long	.LASF391
	.long	.LASF391
	.byte	0x1
	.value	0x2b3
	.uleb128 0x5a
	.long	.LASF392
	.long	.LASF392
	.byte	0x1
	.value	0xc4f
	.uleb128 0x5a
	.long	.LASF393
	.long	.LASF393
	.byte	0x1
	.value	0xc4c
	.uleb128 0x5a
	.long	.LASF394
	.long	.LASF394
	.byte	0x1
	.value	0xd96
	.uleb128 0x5b
	.long	.LASF412
	.long	.LASF412
	.uleb128 0x5a
	.long	.LASF395
	.long	.LASF395
	.byte	0x1
	.value	0xaee
	.uleb128 0x5a
	.long	.LASF396
	.long	.LASF396
	.byte	0x1
	.value	0xaf6
	.uleb128 0x5a
	.long	.LASF397
	.long	.LASF397
	.byte	0x1
	.value	0xab1
	.uleb128 0x5a
	.long	.LASF398
	.long	.LASF398
	.byte	0x1
	.value	0xe37
	.uleb128 0x5a
	.long	.LASF399
	.long	.LASF399
	.byte	0x1
	.value	0xe38
	.uleb128 0x5a
	.long	.LASF400
	.long	.LASF400
	.byte	0x1
	.value	0xe3a
	.uleb128 0x5a
	.long	.LASF401
	.long	.LASF401
	.byte	0x1
	.value	0xe39
	.uleb128 0x5a
	.long	.LASF402
	.long	.LASF402
	.byte	0x1
	.value	0xefa
	.uleb128 0x5a
	.long	.LASF403
	.long	.LASF403
	.byte	0x1
	.value	0xe36
	.uleb128 0x5a
	.long	.LASF404
	.long	.LASF404
	.byte	0x1
	.value	0xd98
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
	.uleb128 0x410a
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x57
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
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.long	.LVL6
	.value	0x1
	.byte	0x56
	.long	.LVL6
	.long	.LFE81
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	.LVL9-1
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LFE94
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9-1
	.value	0x1
	.byte	0x50
	.long	.LVL9-1
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL17
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL20
	.long	.LVL24
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST6:
	.long	.LVL26
	.long	.LVL30
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST7:
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LVL36
	.value	0x3
	.byte	0x70
	.sleb128 -12
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL37
	.value	0x1
	.byte	0x53
	.long	.LVL37
	.long	.LVL38-1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL42
	.long	.LVL45
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL47
	.long	.LVL48
	.value	0x1
	.byte	0x53
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL52
	.long	.LVL60
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x56
	.long	.LVL61
	.long	.LVL63
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x56
	.long	.LVL65
	.long	.LVL67
	.value	0x1
	.byte	0x56
	.long	.LVL67
	.long	.LVL68-1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL68
	.long	.LFE95
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL55-1
	.value	0x2
	.byte	0x76
	.sleb128 8
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x76
	.sleb128 8
	.long	.LVL65
	.long	.LVL66
	.value	0x2
	.byte	0x76
	.sleb128 8
	.long	0
	.long	0
.LLST14:
	.long	.LVL54
	.long	.LVL56
	.value	0x1
	.byte	0x57
	.long	.LVL63
	.long	.LVL64
	.value	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x6
	.long	.LVL65
	.long	.LVL66
	.value	0x3
	.byte	0x76
	.sleb128 8
	.byte	0x6
	.long	.LVL66
	.long	.LVL68-1
	.value	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL70
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LVL73-1
	.value	0x1
	.byte	0x50
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x50
	.long	.LVL81
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	.LVL85
	.long	.LFE98
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL83
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST18:
	.long	.LVL84
	.long	.LVL85
	.value	0x6
	.byte	0x3
	.long	free_tx
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL86
	.long	.LVL87
	.value	0x1
	.byte	0x50
	.long	.LVL87
	.long	.LVL118
	.value	0x1
	.byte	0x56
	.long	.LVL118
	.long	.LFE102
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL86
	.long	.LVL88-1
	.value	0x1
	.byte	0x52
	.long	.LVL88-1
	.long	.LVL119
	.value	0x1
	.byte	0x57
	.long	.LVL119
	.long	.LFE102
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL86
	.long	.LVL88-1
	.value	0x1
	.byte	0x51
	.long	.LVL88-1
	.long	.LFE102
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL92
	.long	.LVL94
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL96
	.long	.LVL100-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST25:
	.long	.LVL103
	.long	.LVL105-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST26:
	.long	.LVL88
	.long	.LVL91
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL97
	.long	.LVL100-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST28:
	.long	.LVL97
	.long	.LVL102
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST29:
	.long	.LVL100
	.long	.LVL102-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL97
	.long	.LVL99
	.value	0x6
	.byte	0x3
	.long	free_tx
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL98
	.long	.LVL99
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST32:
	.long	.LVL100
	.long	.LVL101
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL93
	.long	.LVL95
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST34:
	.long	.LVL96
	.long	.LVL97
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL96
	.long	.LVL97
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST36:
	.long	.LVL104
	.long	.LVL115
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST37:
	.long	.LVL104
	.long	.LVL115
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST38:
	.long	.LVL105
	.long	.LVL113-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST39:
	.long	.LVL105
	.long	.LVL112
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST40:
	.long	.LVL105
	.long	.LVL112
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL105
	.long	.LVL107
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL107
	.long	.LVL110
	.value	0x1
	.byte	0x51
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x52
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST42:
	.long	.LVL107
	.long	.LVL109
	.value	0x1
	.byte	0x52
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x52
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST43:
	.long	.LVL108
	.long	.LVL110
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST44:
	.long	.LVL108
	.long	.LVL110
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST45:
	.long	.LVL108
	.long	.LVL110
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x52
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST47:
	.long	.LVL113
	.long	.LVL115
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST48:
	.long	.LVL114
	.long	.LVL115
	.value	0x6
	.byte	0x3
	.long	free_tx
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL114
	.long	.LVL115
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST50:
	.long	.LVL120
	.long	.LVL121
	.value	0x1
	.byte	0x50
	.long	.LVL121
	.long	.LVL126
	.value	0x1
	.byte	0x53
	.long	.LVL126
	.long	.LVL127-1
	.value	0x1
	.byte	0x50
	.long	.LVL127-1
	.long	.LVL129
	.value	0x3
	.byte	0x73
	.sleb128 -60
	.byte	0x9f
	.long	.LVL129
	.long	.LVL130
	.value	0x3
	.byte	0x76
	.sleb128 -40
	.byte	0x9f
	.long	.LVL130
	.long	.LFE106
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL122
	.long	.LVL123-1
	.value	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LVL125-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST52:
	.long	.LVL133
	.long	.LVL141
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LFE107
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL131
	.long	.LVL132
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL132
	.long	.LVL139
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL139
	.long	.LVL140
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL140
	.long	.LVL141
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL141
	.long	.LFE107
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST54:
	.long	.LVL135
	.long	.LVL137
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL135
	.long	.LVL136
	.value	0x6
	.byte	0x3
	.long	conns+4
	.byte	0x9f
	.long	.LVL136
	.long	.LVL137-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL137-1
	.long	.LVL137
	.value	0x6
	.byte	0x3
	.long	conns+4
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL135
	.long	.LVL137
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL142
	.long	.LVL144
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL144
	.long	.LVL145
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL142
	.long	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL145
	.long	.LVL147
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST60:
	.long	.LVL145
	.long	.LVL146
	.value	0x6
	.byte	0x3
	.long	conns+64
	.byte	0x9f
	.long	.LVL146
	.long	.LVL147
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST61:
	.long	.LVL150
	.long	.LVL152-1
	.value	0x1
	.byte	0x52
	.long	.LVL152-1
	.long	.LVL153
	.value	0x2
	.byte	0x91
	.sleb128 -17
	.long	0
	.long	0
.LLST62:
	.long	.LVL151
	.long	.LVL153
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST63:
	.long	.LVL156
	.long	.LVL157
	.value	0x3
	.byte	0x73
	.sleb128 52
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL160
	.long	.LVL177
	.value	0x1
	.byte	0x53
	.long	.LVL177
	.long	.LVL179
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL179
	.long	.LVL180
	.value	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL161
	.long	.LVL164
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST66:
	.long	.LVL164
	.long	.LVL166-1
	.value	0x1
	.byte	0x50
	.long	.LVL172
	.long	.LVL174
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST67:
	.long	.LVL164
	.long	.LVL165
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	.LVL172
	.long	.LVL174
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL164
	.long	.LVL165
	.value	0x3
	.byte	0x73
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL164
	.long	.LVL165
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST70:
	.long	.LVL167
	.long	.LVL169
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST71:
	.long	.LVL168
	.long	.LVL169
	.value	0x6
	.byte	0x3
	.long	free_tx
	.byte	0x9f
	.long	0
	.long	0
.LLST72:
	.long	.LVL168
	.long	.LVL169
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST73:
	.long	.LVL176
	.long	.LVL178
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST74:
	.long	.LVL176
	.long	.LVL177
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	.LVL177
	.long	.LVL178
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST75:
	.long	.LVL176
	.long	.LVL178
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL182
	.long	.LVL183
	.value	0x1
	.byte	0x53
	.long	.LVL183
	.long	.LVL184
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL184
	.long	.LVL185
	.value	0x3
	.byte	0x73
	.sleb128 -60
	.byte	0x9f
	.long	.LVL185
	.long	.LVL186-1
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x3c
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LVL189
	.long	.LVL190
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST78:
	.long	.LVL192
	.long	.LVL193
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.long	.LVL193
	.long	.LVL194-1
	.value	0x1
	.byte	0x50
	.long	.LVL194-1
	.long	.LVL195
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL192
	.long	.LVL195
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST80:
	.long	.LVL196
	.long	.LVL200
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL200
	.long	.LVL202
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST81:
	.long	.LVL196
	.long	.LVL199
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL199
	.long	.LVL200
	.value	0x1
	.byte	0x53
	.long	.LVL200
	.long	.LVL202
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST82:
	.long	.LVL197
	.long	.LVL198
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x4e
	.byte	0x9f
	.long	.LVL198
	.long	.LVL199
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST83:
	.long	.LVL197
	.long	.LVL199
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST84:
	.long	.LVL199
	.long	.LVL200
	.value	0x4
	.byte	0x73
	.sleb128 71
	.byte	0x9f
	.long	0
	.long	0
.LLST85:
	.long	.LVL199
	.long	.LVL200
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST86:
	.long	.LVL206
	.long	.LVL207
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL211
	.long	.LVL212
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL215
	.long	.LVL216
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST89:
	.long	.LVL219
	.long	.LVL222
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL222
	.long	.LVL223
	.value	0x1
	.byte	0x52
	.long	.LVL223
	.long	.LFE120
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST90:
	.long	.LVL219
	.long	.LVL220
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL220
	.long	.LVL221
	.value	0x1
	.byte	0x50
	.long	.LVL221
	.long	.LVL222
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL222
	.long	.LVL223
	.value	0x1
	.byte	0x50
	.long	.LVL223
	.long	.LFE120
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST91:
	.long	.LVL225
	.long	.LVL227
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST92:
	.long	.LVL228
	.long	.LVL236
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST93:
	.long	.LVL230
	.long	.LVL231
	.value	0x1
	.byte	0x50
	.long	.LVL231
	.long	.LVL236
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST94:
	.long	.LVL232
	.long	.LVL233-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST95:
	.long	.LVL233
	.long	.LVL234
	.value	0x1
	.byte	0x50
	.long	.LVL234
	.long	.LVL236
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST96:
	.long	.LVL237
	.long	.LVL240
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL246
	.long	.LVL247
	.value	0x1
	.byte	0x50
	.long	.LVL247
	.long	.LVL249-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST98:
	.long	.LVL243
	.long	.LVL244
	.value	0x1
	.byte	0x50
	.long	.LVL244
	.long	.LVL248
	.value	0x1
	.byte	0x56
	.long	.LVL248
	.long	.LVL249-1
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL249
	.long	.LVL250
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST99:
	.long	.LVL251
	.long	.LVL254
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL254
	.long	.LVL255
	.value	0x1
	.byte	0x53
	.long	.LVL255
	.long	.LFE122
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST100:
	.long	.LVL251
	.long	.LVL254
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL254
	.long	.LVL256
	.value	0x1
	.byte	0x56
	.long	.LVL256
	.long	.LFE122
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST101:
	.long	.LVL258
	.long	.LVL259
	.value	0x3
	.byte	0x70
	.sleb128 -44
	.byte	0x9f
	.long	.LVL259
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
.LLST102:
	.long	.LVL258
	.long	.LVL259
	.value	0x4
	.byte	0x70
	.sleb128 -108
	.byte	0x9f
	.long	.LVL259
	.long	.LVL262-1
	.value	0x1
	.byte	0x50
	.long	.LVL262-1
	.long	.LFE85
	.value	0x7
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x8
	.byte	0x6c
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST103:
	.long	.LVL260
	.long	.LVL261
	.value	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.long	.LVL261
	.long	.LVL262-1
	.value	0x1
	.byte	0x52
	.long	.LVL262-1
	.long	.LFE85
	.value	0x3
	.byte	0x91
	.sleb128 -28
	.byte	0x9f
	.long	0
	.long	0
.LLST104:
	.long	.LVL264
	.long	.LVL265
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL265
	.long	.LVL266-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST105:
	.long	.LVL264
	.long	.LVL266
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL266
	.long	.LVL267
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.long	.LVL267
	.long	.LVL268-1
	.value	0x1
	.byte	0x52
	.long	.LVL268-1
	.long	.LFE126
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x23
	.uleb128 0x5
	.byte	0x9f
	.long	0
	.long	0
.LLST106:
	.long	.LVL266
	.long	.LVL268-1
	.value	0x1
	.byte	0x50
	.long	.LVL268-1
	.long	.LFE126
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST107:
	.long	.LVL269
	.long	.LVL270-1
	.value	0x1
	.byte	0x52
	.long	.LVL270-1
	.long	.LVL286
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL286
	.long	.LFE141
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST108:
	.long	.LVL271
	.long	.LVL272-1
	.value	0x1
	.byte	0x50
	.long	.LVL272-1
	.long	.LVL273
	.value	0x1
	.byte	0x53
	.long	.LVL273
	.long	.LVL274
	.value	0x1
	.byte	0x50
	.long	.LVL274
	.long	.LVL285
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST109:
	.long	.LVL280
	.long	.LVL281
	.value	0x1
	.byte	0x50
	.long	.LVL281
	.long	.LVL284
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST110:
	.long	.LVL277
	.long	.LVL278
	.value	0x6
	.byte	0xfa
	.long	0x13ee
	.byte	0x9f
	.long	0
	.long	0
.LLST111:
	.long	.LVL293
	.long	.LVL294
	.value	0x1
	.byte	0x50
	.long	.LVL294
	.long	.LVL305
	.value	0x1
	.byte	0x56
	.long	.LVL305
	.long	.LVL306-1
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL306
	.long	.LVL308
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST112:
	.long	.LVL288
	.long	.LVL290
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL288
	.long	.LVL289
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	.LVL289
	.long	.LVL290-1
	.value	0x1
	.byte	0x50
	.long	.LVL290-1
	.long	.LVL290
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST114:
	.long	.LVL288
	.long	.LVL290
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST115:
	.long	.LVL293
	.long	.LVL294
	.value	0x1
	.byte	0x50
	.long	.LVL294
	.long	.LVL303
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST116:
	.long	.LVL293
	.long	.LVL303
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST117:
	.long	.LVL295
	.long	.LVL296
	.value	0x1
	.byte	0x50
	.long	.LVL296
	.long	.LVL297-1
	.value	0x1
	.byte	0x52
	.long	.LVL299
	.long	.LVL300
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST118:
	.long	.LVL309
	.long	.LVL310
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL310
	.long	.LFE127
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST119:
	.long	.LVL313
	.long	.LVL314
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL314
	.long	.LVL315
	.value	0x1
	.byte	0x50
	.long	.LVL315
	.long	.LFE129
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST120:
	.long	.LVL316
	.long	.LVL317
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL317
	.long	.LVL318
	.value	0x1
	.byte	0x50
	.long	.LVL318
	.long	.LFE130
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST121:
	.long	.LVL319
	.long	.LVL320
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL320
	.long	.LVL321
	.value	0x1
	.byte	0x50
	.long	.LVL321
	.long	.LFE131
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST122:
	.long	.LVL324
	.long	.LVL328
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST123:
	.long	.LVL326
	.long	.LVL327
	.value	0x6
	.byte	0x3
	.long	conns
	.byte	0x9f
	.long	0
	.long	0
.LLST124:
	.long	.LVL334
	.long	.LVL335-1
	.value	0x1
	.byte	0x50
	.long	.LVL335-1
	.long	.LVL336
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	0
	.long	0
.LLST125:
	.long	.LVL329
	.long	.LVL330
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL331
	.long	.LVL332
	.value	0x6
	.byte	0x3
	.long	free_tx
	.byte	0x9f
	.long	0
	.long	0
.LLST127:
	.long	.LVL331
	.long	.LVL332
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x174
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB79
	.long	.LFE79-.LFB79
	.long	.LFB83
	.long	.LFE83-.LFB83
	.long	.LFB84
	.long	.LFE84-.LFB84
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	.LFB106
	.long	.LFE106-.LFB106
	.long	.LFB107
	.long	.LFE107-.LFB107
	.long	.LFB109
	.long	.LFE109-.LFB109
	.long	.LFB111
	.long	.LFE111-.LFB111
	.long	.LFB112
	.long	.LFE112-.LFB112
	.long	.LFB113
	.long	.LFE113-.LFB113
	.long	.LFB114
	.long	.LFE114-.LFB114
	.long	.LFB115
	.long	.LFE115-.LFB115
	.long	.LFB117
	.long	.LFE117-.LFB117
	.long	.LFB118
	.long	.LFE118-.LFB118
	.long	.LFB119
	.long	.LFE119-.LFB119
	.long	.LFB120
	.long	.LFE120-.LFB120
	.long	.LFB123
	.long	.LFE123-.LFB123
	.long	.LFB116
	.long	.LFE116-.LFB116
	.long	.LFB124
	.long	.LFE124-.LFB124
	.long	.LFB125
	.long	.LFE125-.LFB125
	.long	.LFB122
	.long	.LFE122-.LFB122
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	.LFB126
	.long	.LFE126-.LFB126
	.long	.LFB141
	.long	.LFE141-.LFB141
	.long	.LFB108
	.long	.LFE108-.LFB108
	.long	.LFB127
	.long	.LFE127-.LFB127
	.long	.LFB128
	.long	.LFE128-.LFB128
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	.LFB130
	.long	.LFE130-.LFB130
	.long	.LFB131
	.long	.LFE131-.LFB131
	.long	.LFB132
	.long	.LFE132-.LFB132
	.long	.LFB133
	.long	.LFE133-.LFB133
	.long	.LFB134
	.long	.LFE134-.LFB134
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB57
	.long	.LBE57
	.long	.LBB61
	.long	.LBE61
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LBB71
	.long	.LBE71
	.long	.LBB74
	.long	.LBE74
	.long	0
	.long	0
	.long	.LBB107
	.long	.LBE107
	.long	.LBB120
	.long	.LBE120
	.long	0
	.long	0
	.long	.LBB109
	.long	.LBE109
	.long	.LBB112
	.long	.LBE112
	.long	0
	.long	0
	.long	.LBB132
	.long	.LBE132
	.long	.LBB135
	.long	.LBE135
	.long	0
	.long	0
	.long	.LBB136
	.long	.LBE136
	.long	.LBB139
	.long	.LBE139
	.long	0
	.long	0
	.long	.LBB150
	.long	.LBE150
	.long	.LBB154
	.long	.LBE154
	.long	.LBB157
	.long	.LBE157
	.long	0
	.long	0
	.long	.LBB192
	.long	.LBE192
	.long	.LBB203
	.long	.LBE203
	.long	0
	.long	0
	.long	.LBB199
	.long	.LBE199
	.long	.LBB202
	.long	.LBE202
	.long	0
	.long	0
	.long	.LBB206
	.long	.LBE206
	.long	.LBB209
	.long	.LBE209
	.long	0
	.long	0
	.long	.LBB228
	.long	.LBE228
	.long	.LBB231
	.long	.LBE231
	.long	0
	.long	0
	.long	.LBB232
	.long	.LBE232
	.long	.LBB235
	.long	.LBE235
	.long	0
	.long	0
	.long	.LBB269
	.long	.LBE269
	.long	.LBB272
	.long	.LBE272
	.long	0
	.long	0
	.long	.LFB81
	.long	.LFE81
	.long	.LFB94
	.long	.LFE94
	.long	.LFB79
	.long	.LFE79
	.long	.LFB83
	.long	.LFE83
	.long	.LFB84
	.long	.LFE84
	.long	.LFB87
	.long	.LFE87
	.long	.LFB88
	.long	.LFE88
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB98
	.long	.LFE98
	.long	.LFB102
	.long	.LFE102
	.long	.LFB106
	.long	.LFE106
	.long	.LFB107
	.long	.LFE107
	.long	.LFB109
	.long	.LFE109
	.long	.LFB111
	.long	.LFE111
	.long	.LFB112
	.long	.LFE112
	.long	.LFB113
	.long	.LFE113
	.long	.LFB114
	.long	.LFE114
	.long	.LFB115
	.long	.LFE115
	.long	.LFB117
	.long	.LFE117
	.long	.LFB118
	.long	.LFE118
	.long	.LFB119
	.long	.LFE119
	.long	.LFB120
	.long	.LFE120
	.long	.LFB123
	.long	.LFE123
	.long	.LFB116
	.long	.LFE116
	.long	.LFB124
	.long	.LFE124
	.long	.LFB125
	.long	.LFE125
	.long	.LFB122
	.long	.LFE122
	.long	.LFB85
	.long	.LFE85
	.long	.LFB126
	.long	.LFE126
	.long	.LFB141
	.long	.LFE141
	.long	.LFB108
	.long	.LFE108
	.long	.LFB127
	.long	.LFE127
	.long	.LFB128
	.long	.LFE128
	.long	.LFB129
	.long	.LFE129
	.long	.LFB130
	.long	.LFE130
	.long	.LFB131
	.long	.LFE131
	.long	.LFB132
	.long	.LFE132
	.long	.LFB133
	.long	.LFE133
	.long	.LFB134
	.long	.LFE134
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF188:
	.string	"BT_DEV_READY"
.LASF65:
	.string	"_POLL_NUM_TYPES"
.LASF309:
	.string	"always_consume"
.LASF256:
	.string	"bt_irk"
.LASF347:
	.string	"bt_conn_auth_pairing_confirm"
.LASF328:
	.string	"bt_conn_get_info"
.LASF131:
	.string	"bt_conn_le_info"
.LASF11:
	.string	"size_t"
.LASF28:
	.string	"sizetype"
.LASF136:
	.string	"BT_SECURITY_NONE"
.LASF200:
	.string	"BT_DEV_NUM_FLAGS"
.LASF364:
	.string	"bt_hci_cmd_send_sync"
.LASF147:
	.string	"identity_resolved"
.LASF22:
	.string	"tail"
.LASF251:
	.string	"BT_KEYS_DEBUG"
.LASF363:
	.string	"net_buf_simple_add"
.LASF199:
	.string	"BT_DEV_ID_PENDING"
.LASF336:
	.string	"bt_conn_le_param_update"
.LASF155:
	.string	"tx_pending"
.LASF60:
	.string	"work_q"
.LASF154:
	.string	"rx_len"
.LASF370:
	.string	"net_buf_put"
.LASF294:
	.string	"bt_conn_recv"
.LASF378:
	.string	"bt_send"
.LASF273:
	.string	"bt_conn_reset_rx_state"
.LASF204:
	.string	"pkts"
.LASF304:
	.string	"remove_pending_tx"
.LASF137:
	.string	"BT_SECURITY_LOW"
.LASF305:
	.string	"sys_slist_find_and_remove"
.LASF32:
	.string	"aos_queue_t"
.LASF182:
	.string	"open"
.LASF82:
	.string	"state"
.LASF246:
	.string	"slave_ltk"
.LASF283:
	.string	"atomic_test_and_clear_bit"
.LASF36:
	.string	"k_queue"
.LASF240:
	.string	"resp_addr"
.LASF89:
	.string	"bt_addr_le_t"
.LASF369:
	.string	"net_buf_pool_get"
.LASF81:
	.string	"type"
.LASF87:
	.string	"K_POLL_NUM_MODES"
.LASF274:
	.string	"sys_slist_init"
.LASF382:
	.string	"k_poll_event_init"
.LASF399:
	.string	"bt_smp_auth_passkey_confirm"
.LASF268:
	.string	"conn"
.LASF55:
	.string	"k_work"
.LASF97:
	.string	"conn_latency"
.LASF330:
	.string	"bt_hci_disconnect"
.LASF79:
	.string	"_node"
.LASF138:
	.string	"BT_SECURITY_MEDIUM"
.LASF85:
	.string	"k_poll_modes"
.LASF77:
	.string	"result"
.LASF322:
	.string	"old_state"
.LASF237:
	.string	"BT_CONN_NUM_FLAGS"
.LASF169:
	.string	"BT_BUF_ACL_IN"
.LASF314:
	.string	"ev_count"
.LASF220:
	.string	"rx_prio_queue"
.LASF351:
	.string	"conns"
.LASF372:
	.string	"k_queue_get"
.LASF198:
	.string	"BT_DEV_RPA_VALID"
.LASF298:
	.string	"tx_free"
.LASF337:
	.string	"le_conn_update"
.LASF53:
	.string	"fifo"
.LASF4:
	.string	"long int"
.LASF166:
	.string	"BT_BUF_CMD"
.LASF185:
	.string	"BT_EVENT_CONN_TX_NOTIFY"
.LASF254:
	.string	"BT_KEYS_NUM_FLAGS"
.LASF153:
	.string	"encrypt"
.LASF144:
	.string	"disconnected"
.LASF238:
	.string	"bt_conn_le"
.LASF373:
	.string	"atomic_get"
.LASF102:
	.string	"rand"
.LASF184:
	.string	"BT_EVENT_CMD_TX"
.LASF123:
	.string	"interval_max"
.LASF21:
	.string	"head"
.LASF403:
	.string	"bt_smp_init"
.LASF259:
	.string	"BT_LINK_KEY_SC"
.LASF125:
	.string	"_Bool"
.LASF231:
	.string	"BT_CONN_BR_PAIRING"
.LASF249:
	.string	"bt_l2cap_hdr"
.LASF101:
	.string	"bt_hci_cp_le_start_encryption"
.LASF263:
	.string	"sys_slist_peek_head"
.LASF75:
	.string	"k_poll_signal"
.LASF171:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF71:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF17:
	.string	"sys_snode_t"
.LASF42:
	.string	"k_timer_handler_t"
.LASF148:
	.string	"security_changed"
.LASF0:
	.string	"signed char"
.LASF340:
	.string	"send_buf"
.LASF35:
	.string	"_sem_t"
.LASF112:
	.string	"net_buf_pool"
.LASF128:
	.string	"BT_CONN_TYPE_LE"
.LASF257:
	.string	"BT_LINK_KEY_AUTHENTICATED"
.LASF212:
	.string	"hci_revision"
.LASF408:
	.string	"_poller"
.LASF1:
	.string	"unsigned char"
.LASF389:
	.string	"bt_l2cap_disconnected"
.LASF94:
	.string	"hci_cp_le_conn_update"
.LASF279:
	.string	"atomic_set_bit"
.LASF174:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF197:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF224:
	.string	"BT_CONN_CONNECT"
.LASF126:
	.string	"bt_le_conn_param"
.LASF346:
	.string	"bt_conn_auth_cancel"
.LASF395:
	.string	"net_buf_alloc"
.LASF331:
	.string	"disconn"
.LASF407:
	.string	"/home/stone/Documents/pca"
.LASF381:
	.string	"atomic_and"
.LASF45:
	.string	"handler"
.LASF344:
	.string	"passkey"
.LASF61:
	.string	"_POLL_TYPE_IGNORE"
.LASF167:
	.string	"BT_BUF_EVT"
.LASF120:
	.string	"bt_le_adv_param"
.LASF29:
	.string	"char"
.LASF358:
	.string	"acl_tx_pool"
.LASF84:
	.string	"unused"
.LASF394:
	.string	"bt_l2cap_update_conn_param"
.LASF302:
	.string	"sys_slist_append"
.LASF111:
	.string	"pool_id"
.LASF385:
	.string	"atomic_inc"
.LASF157:
	.string	"tx_queue"
.LASF215:
	.string	"supported_commands"
.LASF73:
	.string	"signal"
.LASF333:
	.string	"bt_conn_create_slave_le"
.LASF235:
	.string	"BT_CONN_AUTO_PHY_UPDATE"
.LASF44:
	.string	"timer"
.LASF196:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF261:
	.string	"conn_tx_cb"
.LASF265:
	.string	"sys_slist_peek_next_no_check"
.LASF232:
	.string	"BT_CONN_BR_NOBOND"
.LASF234:
	.string	"BT_CONN_CLEANUP"
.LASF375:
	.string	"irq_unlock"
.LASF57:
	.string	"flags"
.LASF301:
	.string	"add_pending_tx"
.LASF319:
	.string	"notify_disconnected"
.LASF96:
	.string	"conn_interval_max"
.LASF78:
	.string	"k_poll_event"
.LASF306:
	.string	"test"
.LASF401:
	.string	"bt_smp_auth_pairing_confirm"
.LASF163:
	.string	"cancel"
.LASF194:
	.string	"BT_DEV_SCANNING"
.LASF161:
	.string	"passkey_entry"
.LASF18:
	.string	"_snode"
.LASF223:
	.string	"BT_CONN_CONNECT_SCAN"
.LASF165:
	.string	"bt_buf_type"
.LASF108:
	.string	"node"
.LASF202:
	.string	"features"
.LASF221:
	.string	"cmd_tx_queue"
.LASF308:
	.string	"prev_node"
.LASF109:
	.string	"frags"
.LASF342:
	.string	"bt_conn_auth_cb_register"
.LASF252:
	.string	"BT_KEYS_ID_PENDING_ADD"
.LASF170:
	.string	"bt_hci_driver_bus"
.LASF289:
	.string	"bt_conn_enc_key_size"
.LASF339:
	.string	"reserve"
.LASF360:
	.string	"net_buf_unref"
.LASF164:
	.string	"pairing_confirm"
.LASF295:
	.string	"net_buf_user_data"
.LASF354:
	.string	"free_tx"
.LASF355:
	.string	"conn_change"
.LASF127:
	.string	"latency"
.LASF392:
	.string	"bt_le_scan_update"
.LASF359:
	.string	"g_poll_sem"
.LASF390:
	.string	"k_delayed_work_cancel"
.LASF247:
	.string	"bt_conn_tx_cb_t"
.LASF396:
	.string	"net_buf_reserve"
.LASF209:
	.string	"random_addr"
.LASF296:
	.string	"bt_conn_send_cb"
.LASF243:
	.string	"bt_keys"
.LASF230:
	.string	"BT_CONN_USER"
.LASF357:
	.string	"bt_auth"
.LASF343:
	.string	"bt_conn_auth_passkey_entry"
.LASF275:
	.string	"bt_conn_disconnect"
.LASF175:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF67:
	.string	"_poll_states_bits"
.LASF76:
	.string	"signaled"
.LASF269:
	.string	"bt_conn_get_pkts"
.LASF69:
	.string	"_POLL_STATE_SIGNALED"
.LASF214:
	.string	"manufacturer"
.LASF134:
	.string	"bt_conn_info"
.LASF5:
	.string	"long unsigned int"
.LASF334:
	.string	"bt_conn_le_conn_update"
.LASF227:
	.string	"bt_conn_state_t"
.LASF116:
	.string	"buf_size"
.LASF332:
	.string	"bt_conn_disconnect_all"
.LASF285:
	.string	"param"
.LASF280:
	.string	"target"
.LASF26:
	.string	"sys_dlist_t"
.LASF239:
	.string	"init_addr"
.LASF248:
	.string	"bt_conn_tx"
.LASF122:
	.string	"interval_min"
.LASF325:
	.string	"bt_conn_lookup_addr_le"
.LASF293:
	.string	"bt_conn_cb_register"
.LASF80:
	.string	"poller"
.LASF291:
	.string	"start_security"
.LASF27:
	.string	"sys_dnode_t"
.LASF366:
	.string	"net_buf_simple_tailroom"
.LASF260:
	.string	"BT_LINK_KEY_NUM_FLAGS"
.LASF176:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF406:
	.string	"src/conn.c"
.LASF361:
	.string	"bt_le_conn_params_valid"
.LASF374:
	.string	"irq_lock"
.LASF46:
	.string	"args"
.LASF299:
	.string	"bt_conn_notify_tx"
.LASF292:
	.string	"bt_conn_security"
.LASF335:
	.string	"conn_update"
.LASF352:
	.string	"callback_list"
.LASF107:
	.string	"__buf"
.LASF387:
	.string	"k_queue_init"
.LASF398:
	.string	"bt_smp_auth_passkey_entry"
.LASF183:
	.string	"send"
.LASF133:
	.string	"bt_conn_br_info"
.LASF284:
	.string	"bt_buf_set_type"
.LASF324:
	.string	"bt_addr_le_cmp"
.LASF179:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF9:
	.string	"__uint32_t"
.LASF412:
	.string	"__stack_chk_fail"
.LASF241:
	.string	"keys"
.LASF30:
	.string	"aos_hdl_t"
.LASF178:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"sys_slist_t"
.LASF409:
	.string	"bt_conn_unref"
.LASF288:
	.string	"bt_conn_le_start_encryption"
.LASF326:
	.string	"bt_conn_lookup_state_le"
.LASF367:
	.string	"net_buf_simple_add_mem"
.LASF54:
	.string	"k_work_handler_t"
.LASF162:
	.string	"passkey_confirm"
.LASF272:
	.string	"bt_conn_ref"
.LASF124:
	.string	"own_addr"
.LASF41:
	.string	"k_sem"
.LASF38:
	.string	"poll_events"
.LASF281:
	.string	"mask"
.LASF177:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF58:
	.string	"k_delayed_work"
.LASF213:
	.string	"lmp_subversion"
.LASF300:
	.string	"notify_tx"
.LASF402:
	.string	"bt_att_init"
.LASF66:
	.string	"_poll_types_bits"
.LASF47:
	.string	"timeout"
.LASF376:
	.string	"k_sem_take"
.LASF104:
	.string	"net_buf_simple"
.LASF63:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF327:
	.string	"bt_conn_get_dst"
.LASF350:
	.string	"bt_conn_init"
.LASF145:
	.string	"le_param_req"
.LASF160:
	.string	"passkey_display"
.LASF315:
	.string	"conn_new"
.LASF206:
	.string	"rl_entries"
.LASF48:
	.string	"start_ms"
.LASF34:
	.string	"_queue_t"
.LASF8:
	.string	"unsigned int"
.LASF95:
	.string	"conn_interval_min"
.LASF14:
	.string	"u16_t"
.LASF158:
	.string	"channels"
.LASF207:
	.string	"bt_dev"
.LASF250:
	.string	"BT_KEYS_AUTHENTICATED"
.LASF229:
	.string	"BT_CONN_BR_LEGACY_SECURE"
.LASF156:
	.string	"tx_notify"
.LASF393:
	.string	"bt_hci_cmd_send"
.LASF383:
	.string	"atomic_set"
.LASF316:
	.string	"bt_addr_le_copy"
.LASF19:
	.string	"_slist"
.LASF219:
	.string	"rx_queue"
.LASF368:
	.string	"bt_l2cap_recv"
.LASF264:
	.string	"list"
.LASF222:
	.string	"BT_CONN_DISCONNECTED"
.LASF168:
	.string	"BT_BUF_ACL_OUT"
.LASF410:
	.string	"send_frag"
.LASF290:
	.string	"bt_conn_security_changed"
.LASF321:
	.string	"bt_conn_set_state"
.LASF190:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF192:
	.string	"BT_DEV_ADVERTISING"
.LASF320:
	.string	"sys_slist_get"
.LASF411:
	.string	"fail"
.LASF119:
	.string	"__bufs"
.LASF242:
	.string	"update_work"
.LASF386:
	.string	"atomic_or"
.LASF24:
	.string	"_dnode"
.LASF208:
	.string	"id_addr"
.LASF12:
	.string	"long double"
.LASF43:
	.string	"k_timer"
.LASF139:
	.string	"BT_SECURITY_HIGH"
.LASF59:
	.string	"work"
.LASF201:
	.string	"bt_dev_le"
.LASF172:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF91:
	.string	"handle"
.LASF218:
	.string	"sent_cmd"
.LASF379:
	.string	"atomic_dec"
.LASF195:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF329:
	.string	"info"
.LASF384:
	.string	"k_delayed_work_init"
.LASF255:
	.string	"bt_ltk"
.LASF362:
	.string	"bt_hci_cmd_create"
.LASF270:
	.string	"bt_conn_addr_le_cmp"
.LASF106:
	.string	"size"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"u64_t"
.LASF118:
	.string	"destroy"
.LASF318:
	.string	"process_unack_tx"
.LASF276:
	.string	"create_frag"
.LASF271:
	.string	"peer"
.LASF338:
	.string	"bt_conn_create_pdu"
.LASF297:
	.string	"pool"
.LASF37:
	.string	"_queue"
.LASF365:
	.string	"bt_smp_send_security_req"
.LASF380:
	.string	"net_buf_get"
.LASF110:
	.string	"net_buf"
.LASF117:
	.string	"user_data_size"
.LASF130:
	.string	"BT_CONN_TYPE_SCO"
.LASF159:
	.string	"bt_conn_auth_cb"
.LASF233:
	.string	"BT_CONN_BR_PAIRING_INITIATOR"
.LASF74:
	.string	"queue"
.LASF93:
	.string	"reason"
.LASF173:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF103:
	.string	"ediv"
.LASF397:
	.string	"net_buf_simple_pull"
.LASF323:
	.string	"bt_conn_lookup_handle"
.LASF348:
	.string	"bt_conn_get_id"
.LASF228:
	.string	"BT_CONN_AUTO_CONNECT"
.LASF90:
	.string	"bt_hci_acl_hdr"
.LASF151:
	.string	"sec_level"
.LASF31:
	.string	"aos_sem_t"
.LASF149:
	.string	"_next"
.LASF216:
	.string	"init"
.LASF15:
	.string	"u32_t"
.LASF349:
	.string	"bt_conn_lookup_id"
.LASF391:
	.string	"memcmp"
.LASF356:
	.string	"aos_log_level"
.LASF62:
	.string	"_POLL_TYPE_SIGNAL"
.LASF132:
	.string	"interval"
.LASF277:
	.string	"frag"
.LASF114:
	.string	"buf_count"
.LASF345:
	.string	"bt_conn_auth_passkey_confirm"
.LASF181:
	.string	"name"
.LASF205:
	.string	"rl_size"
.LASF282:
	.string	"sys_slist_prepend"
.LASF245:
	.string	"enc_size"
.LASF2:
	.string	"short int"
.LASF83:
	.string	"mode"
.LASF115:
	.string	"uninit_count"
.LASF341:
	.string	"bt_conn_process_tx"
.LASF307:
	.string	"sys_slist_remove"
.LASF33:
	.string	"aos_timer_t"
.LASF140:
	.string	"BT_SECURITY_FIPS"
.LASF187:
	.string	"BT_DEV_ENABLE"
.LASF286:
	.string	"notify_le_param_updated"
.LASF267:
	.string	"conn_mtu"
.LASF180:
	.string	"bt_hci_driver"
.LASF262:
	.string	"sys_slist_is_empty"
.LASF92:
	.string	"bt_hci_cp_disconnect"
.LASF353:
	.string	"conn_tx"
.LASF141:
	.string	"bt_security_t"
.LASF226:
	.string	"BT_CONN_DISCONNECT"
.LASF100:
	.string	"max_ce_len"
.LASF287:
	.string	"bt_conn_identity_resolved"
.LASF142:
	.string	"bt_conn_cb"
.LASF258:
	.string	"BT_LINK_KEY_DEBUG"
.LASF152:
	.string	"required_sec_level"
.LASF51:
	.string	"atomic_val_t"
.LASF225:
	.string	"BT_CONN_CONNECTED"
.LASF217:
	.string	"ncmd_sem"
.LASF129:
	.string	"BT_CONN_TYPE_BR"
.LASF186:
	.string	"BT_EVENT_CONN_TX_QUEUE"
.LASF203:
	.string	"states"
.LASF193:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF317:
	.string	"bt_conn_add_le"
.LASF244:
	.string	"addr"
.LASF10:
	.string	"uint32_t"
.LASF64:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF405:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF40:
	.string	"k_fifo"
.LASF211:
	.string	"lmp_version"
.LASF113:
	.string	"free"
.LASF3:
	.string	"short unsigned int"
.LASF135:
	.string	"role"
.LASF210:
	.string	"hci_version"
.LASF50:
	.string	"atomic_t"
.LASF388:
	.string	"bt_l2cap_connected"
.LASF236:
	.string	"BT_CONN_AUTO_DATA_LEN"
.LASF56:
	.string	"_reserved"
.LASF99:
	.string	"min_ce_len"
.LASF13:
	.string	"u8_t"
.LASF400:
	.string	"bt_smp_auth_cancel"
.LASF312:
	.string	"bt_conn_prepare_events"
.LASF189:
	.string	"BT_DEV_ID_STATIC_RANDOM"
.LASF39:
	.string	"k_lifo"
.LASF371:
	.string	"k_sem_give"
.LASF98:
	.string	"supervision_timeout"
.LASF121:
	.string	"options"
.LASF88:
	.string	"bt_addr_t"
.LASF310:
	.string	"notify_connected"
.LASF68:
	.string	"_POLL_STATE_NOT_READY"
.LASF377:
	.string	"net_buf_simple_push"
.LASF70:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF303:
	.string	"sys_slist_get_not_empty"
.LASF311:
	.string	"conn_cleanup"
.LASF313:
	.string	"events"
.LASF20:
	.string	"next"
.LASF105:
	.string	"data"
.LASF143:
	.string	"connected"
.LASF86:
	.string	"K_POLL_MODE_NOTIFY_ONLY"
.LASF25:
	.string	"prev"
.LASF253:
	.string	"BT_KEYS_ID_PENDING_DEL"
.LASF278:
	.string	"frag_len"
.LASF191:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF266:
	.string	"sys_slist_peek_next"
.LASF150:
	.string	"bt_conn"
.LASF52:
	.string	"k_work_q"
.LASF72:
	.string	"_POLL_NUM_STATES"
.LASF146:
	.string	"le_param_updated"
.LASF49:
	.string	"k_timer_t"
.LASF404:
	.string	"bt_l2cap_init"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
