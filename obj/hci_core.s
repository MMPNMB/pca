	.file	"hci_core.c"
	.text
.Ltext0:
	.section	.text.unlikely.net_buf_user_data,"ax",@progbits
.LCOLDB1:
	.section	.text.net_buf_user_data,"ax",@progbits
.LHOTB1:
	.section	.text.unlikely.net_buf_user_data
.Ltext_cold0:
	.section	.text.net_buf_user_data
	.type	net_buf_user_data, @function
net_buf_user_data:
.LFB64:
	.file 1 "src/hci_core.c"
	.loc 1 1422 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 1423 0
	movzwl	14(%eax), %edx
	.loc 1 1422 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 1424 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 1423 0
	leal	19(%eax,%edx), %eax
.LVL1:
	andl	$-4, %eax
	.loc 1 1424 0
	ret
	.cfi_endproc
.LFE64:
	.size	net_buf_user_data, .-net_buf_user_data
	.section	.text.unlikely.net_buf_user_data
.LCOLDE1:
	.section	.text.net_buf_user_data
.LHOTE1:
	.section	.text.unlikely.bt_addr_le_copy,"ax",@progbits
.LCOLDB2:
	.section	.text.bt_addr_le_copy,"ax",@progbits
.LHOTB2:
	.type	bt_addr_le_copy, @function
bt_addr_le_copy:
.LFB69:
	.loc 1 1458 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 1459 0
	movl	$7, %ecx
	.loc 1 1458 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 1459 0
	movl	%eax, %edi
	.loc 1 1458 0
	pushl	%esi
	.cfi_offset 6, -16
	.loc 1 1459 0
	movl	%edx, %esi
	rep movsb
	.loc 1 1460 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	bt_addr_le_copy, .-bt_addr_le_copy
	.section	.text.unlikely.bt_addr_le_copy
.LCOLDE2:
	.section	.text.bt_addr_le_copy
.LHOTE2:
	.section	.text.unlikely.atomic_test_bit,"ax",@progbits
.LCOLDB3:
	.section	.text.atomic_test_bit,"ax",@progbits
.LHOTB3:
	.type	atomic_test_bit, @function
atomic_test_bit:
.LFB37:
	.loc 1 849 0
	.cfi_startproc
.LVL3:
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
.LVL4:
	leal	(%eax,%edx,4), %eax
.LVL5:
	.loc 1 849 0
	subl	$16, %esp
	.loc 1 850 0
	pushl	%eax
	call	atomic_get
.LVL6:
	.loc 1 851 0
	movl	%ebx, %ecx
	.loc 1 852 0
	movl	-4(%ebp), %ebx
.LVL7:
	.loc 1 851 0
	sarl	%cl, %eax
.LVL8:
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
.LCOLDE3:
	.section	.text.atomic_test_bit
.LHOTE3:
	.section	.text.unlikely.atomic_test_and_clear_bit,"ax",@progbits
.LCOLDB4:
	.section	.text.atomic_test_and_clear_bit,"ax",@progbits
.LHOTB4:
	.type	atomic_test_and_clear_bit, @function
atomic_test_and_clear_bit:
.LFB38:
	.loc 1 854 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 855 0
	movl	%edx, %ecx
	.loc 1 857 0
	shrl	$5, %edx
.LVL10:
	leal	(%eax,%edx,4), %eax
.LVL11:
	.loc 1 854 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 855 0
	movl	$1, %ebx
	sall	%cl, %ebx
.LVL12:
	.loc 1 857 0
	movl	%ebx, %ecx
.LVL13:
	.loc 1 854 0
	subl	$12, %esp
	.loc 1 857 0
	notl	%ecx
	pushl	%ecx
	pushl	%eax
	call	atomic_and
.LVL14:
	.loc 1 858 0
	addl	$16, %esp
	testl	%eax, %ebx
	.loc 1 859 0
	movl	-4(%ebp), %ebx
.LVL15:
	.loc 1 858 0
	setne	%al
.LVL16:
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
.LCOLDE4:
	.section	.text.atomic_test_and_clear_bit
.LHOTE4:
	.section	.text.unlikely.update_conn_param,"ax",@progbits
.LCOLDB5:
	.section	.text.update_conn_param,"ax",@progbits
.LHOTB5:
	.type	update_conn_param, @function
update_conn_param:
.LFB94:
	.loc 1 4206 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 4207 0
	cmpb	$1, 3(%eax)
	sbbl	%edx, %edx
	addl	$108, %eax
.LVL18:
	notl	%edx
	andl	$5000, %edx
	pushl	%edx
	pushl	%eax
	call	k_delayed_work_submit
.LVL19:
	.loc 1 4210 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE94:
	.size	update_conn_param, .-update_conn_param
	.section	.text.unlikely.update_conn_param
.LCOLDE5:
	.section	.text.update_conn_param
.LHOTE5:
	.section	.text.unlikely.hci_cmd_done,"ax",@progbits
.LCOLDB6:
	.section	.text.hci_cmd_done,"ax",@progbits
.LHOTB6:
	.type	hci_cmd_done, @function
hci_cmd_done:
.LFB119:
	.loc 1 4958 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4960 0
	movzbl	6(%ecx), %eax
.LVL21:
	.loc 1 4958 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4958 0
	movl	%edx, %esi
	movl	%ecx, %ebx
	.loc 1 4960 0
	subl	$12, %esp
	pushl	%eax
	call	net_buf_pool_get
.LVL22:
	addl	$16, %esp
	cmpl	$hci_cmd_pool, %eax
	jne	.L13
.LVL23:
.LBB104:
.LBB105:
	.loc 1 4964 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL24:
	.loc 1 4967 0
	cmpl	$0, 4(%eax)
	je	.L13
	.loc 1 4968 0
	movl	%esi, %edx
	movb	%dl, 1(%eax)
	.loc 1 4969 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL25:
	subl	$12, %esp
	pushl	4(%eax)
	call	k_sem_give
.LVL26:
	addl	$16, %esp
.LVL27:
.L13:
.LBE105:
.LBE104:
	.loc 1 4971 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL28:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE119:
	.size	hci_cmd_done, .-hci_cmd_done
	.section	.text.unlikely.hci_cmd_done
.LCOLDE6:
	.section	.text.hci_cmd_done
.LHOTE6:
	.section	.text.unlikely.update_sec_level.part.15,"ax",@progbits
.LCOLDB7:
	.section	.text.update_sec_level.part.15,"ax",@progbits
.LHOTB7:
	.type	update_sec_level.part.15, @function
update_sec_level.part.15:
.LFB190:
	.loc 1 4754 0
	.cfi_startproc
.LVL29:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	pushl	%edx
	.loc 1 4760 0
	movl	104(%eax), %eax
.LVL30:
	testl	%eax, %eax
	je	.L18
	addl	$8, %eax
	xorl	%edx, %edx
	call	atomic_test_bit
.LVL31:
	testl	%eax, %eax
	je	.L18
	.loc 1 4762 0
	movl	104(%ebx), %eax
	movl	12(%eax), %eax
	andl	$32, %eax
	.loc 1 4763 0
	cmpw	$1, %ax
	sbbl	%eax, %eax
	addl	$4, %eax
	movb	%al, 8(%ebx)
	jmp	.L20
.L18:
	.loc 1 4768 0
	movb	$2, 8(%ebx)
.L20:
	.loc 1 4770 0
	movb	8(%ebx), %al
	cmpb	%al, 9(%ebx)
	jbe	.L17
	.loc 1 4772 0
	pushl	%eax
	pushl	%eax
	pushl	$5
	pushl	%ebx
	call	bt_conn_disconnect
.LVL32:
	addl	$16, %esp
.L17:
	.loc 1 4774 0
	movl	-4(%ebp), %ebx
.LVL33:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE190:
	.size	update_sec_level.part.15, .-update_sec_level.part.15
	.section	.text.unlikely.update_sec_level.part.15
.LCOLDE7:
	.section	.text.update_sec_level.part.15
.LHOTE7:
	.section	.text.unlikely.sys_put_le64,"ax",@progbits
.LCOLDB8:
	.section	.text.sys_put_le64,"ax",@progbits
.LHOTB8:
	.type	sys_put_le64, @function
sys_put_le64:
.LFB49:
	.loc 1 1267 0
	.cfi_startproc
.LVL34:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB118:
.LBB119:
.LBB120:
.LBB121:
	.loc 1 1258 0
	movb	%al, (%ecx)
.LBE121:
.LBE120:
.LBE119:
.LBE118:
.LBB133:
.LBB134:
.LBB135:
.LBB136:
	movb	%dl, 4(%ecx)
.LBE136:
.LBE135:
.LBE134:
.LBE133:
	.loc 1 1267 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LBB149:
.LBB132:
.LBB125:
.LBB122:
	.loc 1 1259 0
	movl	%eax, %ebx
.LBE122:
.LBE125:
	.loc 1 1264 0
	shrl	$16, %eax
.LVL35:
.LBB126:
.LBB123:
	.loc 1 1259 0
	shrw	$8, %bx
.LVL36:
.LBE123:
.LBE126:
.LBB127:
.LBB128:
	.loc 1 1258 0
	movb	%al, 2(%ecx)
	.loc 1 1259 0
	shrw	$8, %ax
.LBE128:
.LBE127:
.LBB130:
.LBB124:
	movb	%bl, 1(%ecx)
.LVL37:
.LBE124:
.LBE130:
.LBB131:
.LBB129:
	movb	%al, 3(%ecx)
.LVL38:
.LBE129:
.LBE131:
.LBE132:
.LBE149:
.LBB150:
.LBB147:
.LBB140:
.LBB137:
	movl	%edx, %eax
.LBE137:
.LBE140:
	.loc 1 1264 0
	shrl	$16, %edx
.LVL39:
.LBB141:
.LBB138:
	.loc 1 1259 0
	shrw	$8, %ax
.LVL40:
.LBE138:
.LBE141:
.LBB142:
.LBB143:
	.loc 1 1258 0
	movb	%dl, 6(%ecx)
	.loc 1 1259 0
	shrw	$8, %dx
.LBE143:
.LBE142:
.LBE147:
.LBE150:
	.loc 1 1270 0
	popl	%ebx
	.cfi_restore 3
.LBB151:
.LBB148:
.LBB145:
.LBB139:
	.loc 1 1259 0
	movb	%al, 5(%ecx)
.LVL41:
.LBE139:
.LBE145:
.LBB146:
.LBB144:
	movb	%dl, 7(%ecx)
.LVL42:
.LBE144:
.LBE146:
.LBE148:
.LBE151:
	.loc 1 1270 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE49:
	.size	sys_put_le64, .-sys_put_le64
	.section	.text.unlikely.sys_put_le64
.LCOLDE8:
	.section	.text.sys_put_le64
.LHOTE8:
	.section	.text.unlikely.bt_hci_cmd_create,"ax",@progbits
.LCOLDB9:
	.section	.text.bt_hci_cmd_create,"ax",@progbits
.LHOTB9:
	.globl	bt_hci_cmd_create
	.type	bt_hci_cmd_create, @function
bt_hci_cmd_create:
.LFB79:
	.loc 1 3825 0
	.cfi_startproc
.LVL43:
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
	.loc 1 3825 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	.loc 1 3829 0
	pushl	$-1
	pushl	$hci_cmd_pool
	call	net_buf_alloc
.LVL44:
	movl	%eax, %ebx
.LVL45:
	.loc 1 3832 0
	popl	%eax
.LVL46:
	popl	%edx
	pushl	$1
	pushl	%ebx
	call	net_buf_reserve
.LVL47:
	.loc 1 3833 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL48:
	movb	$0, (%eax)
	.loc 1 3834 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL49:
	movw	%si, 2(%eax)
	.loc 1 3835 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL50:
	movl	$0, 4(%eax)
	.loc 1 3838 0
	popl	%ecx
	popl	%eax
	leal	8(%ebx), %eax
	pushl	$3
	pushl	%eax
	call	net_buf_simple_add
.LVL51:
	.loc 1 3840 0
	movl	%edi, %edx
	.loc 1 3839 0
	movw	%si, (%eax)
	.loc 1 3840 0
	movb	%dl, 2(%eax)
	.loc 1 3842 0
	leal	-12(%ebp), %esp
	movl	%ebx, %eax
.LVL52:
	popl	%ebx
	.cfi_restore 3
.LVL53:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	bt_hci_cmd_create, .-bt_hci_cmd_create
	.section	.text.unlikely.bt_hci_cmd_create
.LCOLDE9:
	.section	.text.bt_hci_cmd_create
.LHOTE9:
	.section	.text.unlikely.bt_hci_cmd_send_sync,"ax",@progbits
.LCOLDB10:
	.section	.text.bt_hci_cmd_send_sync,"ax",@progbits
.LHOTB10:
	.globl	bt_hci_cmd_send_sync
	.type	bt_hci_cmd_send_sync, @function
bt_hci_cmd_send_sync:
.LFB81:
	.loc 1 3867 0
	.cfi_startproc
.LVL54:
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
	.loc 1 3867 0
	movl	8(%ebp), %edi
	movl	12(%ebp), %ebx
	.loc 1 3872 0
	pushl	$12
	call	aos_malloc
.LVL55:
	movl	%eax, %esi
.LVL56:
	.loc 1 3873 0
	addl	$16, %esp
	movl	$-55, %eax
.LVL57:
	testl	%esi, %esi
	je	.L34
	.loc 1 3878 0
	testl	%ebx, %ebx
	jne	.L35
	.loc 1 3879 0
	movzwl	%di, %edi
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%edi
	.loc 1 3881 0
	movl	$-55, %edi
	.loc 1 3879 0
	call	bt_hci_cmd_create
.LVL58:
	.loc 1 3880 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 3879 0
	movl	%eax, %ebx
.LVL59:
	.loc 1 3880 0
	je	.L36
.LVL60:
.L35:
	.loc 1 3886 0
	pushl	%eax
	pushl	$1
	pushl	$0
	pushl	%esi
	call	k_sem_init
.LVL61:
	.loc 1 3887 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL62:
	movl	%esi, 4(%eax)
	.loc 1 3888 0
	movl	%ebx, (%esp)
	call	net_buf_ref
.LVL63:
	.loc 1 3889 0
	popl	%edx
	popl	%ecx
	pushl	%ebx
	pushl	$bt_dev+188
	call	net_buf_put
.LVL64:
	.loc 1 3890 0
	movl	$g_poll_sem, (%esp)
	call	k_sem_give
.LVL65:
	.loc 1 3891 0
	popl	%edi
	popl	%eax
	pushl	$10000
	pushl	%esi
	call	k_sem_take
.LVL66:
	.loc 1 3894 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL67:
	addl	$16, %esp
	cmpb	$0, 1(%eax)
	je	.L37
.LVL68:
	.loc 1 3896 0
	subl	$12, %esp
	.loc 1 3895 0
	movl	$-5, %edi
	.loc 1 3896 0
	pushl	%ebx
	call	net_buf_unref
.LVL69:
	addl	$16, %esp
	jmp	.L36
.LVL70:
.L37:
	.loc 1 3899 0
	cmpl	$0, 16(%ebp)
	je	.L38
	.loc 1 3900 0
	movl	16(%ebp), %eax
	movl	%ebx, (%eax)
	jmp	.L43
.L38:
	.loc 1 3902 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL71:
	addl	$16, %esp
.L43:
	.loc 1 3898 0
	xorl	%edi, %edi
.LVL72:
.L36:
	.loc 1 3906 0
	subl	$12, %esp
	pushl	%esi
	call	k_sem_delete
.LVL73:
	.loc 1 3907 0
	movl	%esi, (%esp)
	call	aos_free
.LVL74:
	.loc 1 3908 0
	addl	$16, %esp
	movl	%edi, %eax
.LVL75:
.L34:
	.loc 1 3909 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL76:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	bt_hci_cmd_send_sync, .-bt_hci_cmd_send_sync
	.section	.text.unlikely.bt_hci_cmd_send_sync
.LCOLDE10:
	.section	.text.bt_hci_cmd_send_sync
.LHOTE10:
	.section	.text.unlikely.set_random_address,"ax",@progbits
.LCOLDB11:
	.section	.text.set_random_address,"ax",@progbits
.LHOTB11:
	.type	set_random_address, @function
set_random_address:
.LFB84:
	.loc 1 3951 0
	.cfi_startproc
.LVL77:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
.LBB158:
.LBB159:
	.loc 1 1447 0
	pushl	%ecx
	pushl	$6
.LBE159:
.LBE158:
	.loc 1 3951 0
	movl	%eax, %ebx
.LBB161:
.LBB160:
	.loc 1 1447 0
	pushl	$bt_dev+8
.LVL78:
	pushl	%eax
.LVL79:
	call	memcmp
.LVL80:
	addl	$16, %esp
.LVL81:
.LBE160:
.LBE161:
	.loc 1 3955 0
	testl	%eax, %eax
	je	.L45
	.loc 1 3958 0
	pushl	%edx
	pushl	%edx
	pushl	$6
	pushl	$8197
	call	bt_hci_cmd_create
.LVL82:
	movl	%eax, %esi
.LVL83:
	.loc 1 3959 0
	addl	$16, %esp
	.loc 1 3960 0
	movl	$-55, %eax
.LVL84:
	.loc 1 3959 0
	testl	%esi, %esi
	je	.L45
	.loc 1 3962 0
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$6
	pushl	%ebx
	pushl	%eax
	call	net_buf_simple_add_mem
.LVL85:
	.loc 1 3963 0
	addl	$12, %esp
	pushl	$0
	pushl	%esi
	pushl	$8197
	call	bt_hci_cmd_send_sync
.LVL86:
	.loc 1 3966 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L45
.LVL87:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
	.loc 1 1455 0
	movl	(%ebx), %edx
	movl	%edx, bt_dev+8
	movw	4(%ebx), %dx
.LBE165:
.LBE164:
	.loc 1 3970 0
	movb	$1, bt_dev+7
.LBB167:
.LBB166:
	.loc 1 1455 0
	movw	%dx, bt_dev+12
.LVL88:
.L45:
.LBE166:
.LBE167:
.LBE163:
.LBE162:
	.loc 1 3972 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL89:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE84:
	.size	set_random_address, .-set_random_address
	.section	.text.unlikely.set_random_address
.LCOLDE11:
	.section	.text.set_random_address
.LHOTE11:
	.section	.text.unlikely.le_set_private_addr,"ax",@progbits
.LCOLDB12:
	.section	.text.le_set_private_addr,"ax",@progbits
.LHOTB12:
	.type	le_set_private_addr, @function
le_set_private_addr:
.LFB85:
	.loc 1 3974 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3977 0
	leal	-18(%ebp), %ebx
	.loc 1 3974 0
	subl	$28, %esp
	.loc 1 3977 0
	pushl	$6
	pushl	%ebx
	.loc 1 3974 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 3977 0
	call	bt_rand
.LVL90:
	.loc 1 3978 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L53
	.loc 1 3982 0
	movl	%ebx, %eax
.LVL91:
	.loc 1 3981 0
	andb	$63, -13(%ebp)
	.loc 1 3982 0
	call	set_random_address
.LVL92:
.L53:
	.loc 1 3983 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L54
	call	__stack_chk_fail
.LVL93:
.L54:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	le_set_private_addr, .-le_set_private_addr
	.section	.text.unlikely.le_set_private_addr
.LCOLDE12:
	.section	.text.le_set_private_addr
.LHOTE12:
	.section	.text.unlikely.hci_id_add,"ax",@progbits
.LCOLDB13:
	.section	.text.hci_id_add,"ax",@progbits
.LHOTB13:
	.type	hci_id_add, @function
hci_id_add:
.LFB108:
	.loc 1 4592 0
	.cfi_startproc
.LVL94:
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
	subl	$36, %esp
	.loc 1 4592 0
	movl	%eax, -28(%ebp)
	.loc 1 4596 0
	pushl	$39
	pushl	$8231
	call	bt_hci_cmd_create
.LVL95:
	.loc 1 4597 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L59
	movl	%eax, %ebx
.LVL96:
	.loc 1 4600 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$39
	pushl	%eax
	call	net_buf_simple_add
.LVL97:
	.loc 1 4601 0
	movl	-28(%ebp), %edx
	.loc 1 4600 0
	movl	%eax, %edi
.LVL98:
	.loc 1 4601 0
	call	bt_addr_le_copy
.LVL99:
	.loc 1 4602 0
	movl	(%esi), %eax
	movl	4(%esi), %edx
	.loc 1 4604 0
	addl	$12, %esp
	.loc 1 4602 0
	movl	12(%esi), %ecx
	movl	%eax, -28(%ebp)
.LVL100:
	movl	8(%esi), %eax
	movl	-28(%ebp), %esi
.LVL101:
	movl	%edx, 11(%edi)
	.loc 1 4603 0
	leal	23(%edi), %edx
	.loc 1 4602 0
	movl	%ecx, 19(%edi)
	.loc 1 4603 0
	movl	$4, %ecx
	.loc 1 4602 0
	movl	%eax, 15(%edi)
	.loc 1 4603 0
	xorl	%eax, %eax
	.loc 1 4602 0
	movl	%esi, 7(%edi)
	.loc 1 4603 0
	movl	%edx, %edi
.LVL102:
	rep stosl
	.loc 1 4604 0
	pushl	$0
	pushl	%ebx
	pushl	$8231
	call	bt_hci_cmd_send_sync
.LVL103:
	addl	$16, %esp
	jmp	.L58
.LVL104:
.L59:
	.loc 1 4598 0
	movl	$-55, %eax
.LVL105:
.L58:
	.loc 1 4607 0
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
.LFE108:
	.size	hci_id_add, .-hci_id_add
	.section	.text.unlikely.hci_id_add
.LCOLDE13:
	.section	.text.hci_id_add
.LHOTE13:
	.section	.text.unlikely.keys_add_id,"ax",@progbits
.LCOLDB14:
	.section	.text.keys_add_id,"ax",@progbits
.LHOTB14:
	.type	keys_add_id, @function
keys_add_id:
.LFB110:
	.loc 1 4678 0
	.cfi_startproc
.LVL106:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4678 0
	movl	8(%ebp), %eax
	.loc 1 4680 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4679 0
	leal	44(%eax), %edx
	jmp	hci_id_add
.LVL107:
	.cfi_endproc
.LFE110:
	.size	keys_add_id, .-keys_add_id
	.section	.text.unlikely.keys_add_id
.LCOLDE14:
	.section	.text.keys_add_id
.LHOTE14:
	.section	.text.unlikely.addr_res_enable,"ax",@progbits
.LCOLDB15:
	.section	.text.addr_res_enable,"ax",@progbits
.LHOTB15:
	.type	addr_res_enable, @function
addr_res_enable:
.LFB107:
	.loc 1 4578 0
	.cfi_startproc
.LVL108:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4581 0
	pushl	%edx
	pushl	%edx
	.loc 1 4578 0
	movl	%eax, %esi
	.loc 1 4581 0
	pushl	$1
	pushl	$8237
	call	bt_hci_cmd_create
.LVL109:
	.loc 1 4582 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L65
	movl	%eax, %ebx
.LVL110:
	.loc 1 4585 0
	pushl	%eax
	pushl	%eax
	movl	%esi, %eax
	movzbl	%al, %esi
	leal	8(%ebx), %eax
	pushl	%esi
	pushl	%eax
	call	net_buf_simple_add_u8
.LVL111:
	.loc 1 4586 0
	addl	$12, %esp
	pushl	$0
	pushl	%ebx
	pushl	$8237
	call	bt_hci_cmd_send_sync
.LVL112:
	addl	$16, %esp
	jmp	.L64
.LVL113:
.L65:
	.loc 1 4583 0
	movl	$-55, %eax
.LVL114:
.L64:
	.loc 1 4590 0
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
.LFE107:
	.size	addr_res_enable, .-addr_res_enable
	.section	.text.unlikely.addr_res_enable
.LCOLDE15:
	.section	.text.addr_res_enable
.LHOTE15:
	.section	.text.unlikely.set_le_scan_enable,"ax",@progbits
.LCOLDB16:
	.section	.text.set_le_scan_enable,"ax",@progbits
.LHOTB16:
	.type	set_le_scan_enable, @function
set_le_scan_enable:
.LFB86:
	.loc 1 3985 0
	.cfi_startproc
.LVL115:
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
	.loc 1 3991 0
	movl	$-55, %ebx
	.loc 1 3985 0
	subl	$20, %esp
	.loc 1 3989 0
	pushl	$2
	pushl	$8204
	call	bt_hci_cmd_create
.LVL116:
	.loc 1 3990 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L68
	movl	%eax, %ebx
	.loc 1 3993 0
	leal	8(%eax), %eax
.LVL117:
	pushl	%esi
	pushl	%esi
	pushl	$2
	pushl	%eax
	call	net_buf_simple_add
.LVL118:
	movl	%eax, %esi
.LVL119:
	.loc 1 3994 0
	movl	%edi, %eax
.LVL120:
	addl	$16, %esp
	decb	%al
	jne	.L69
	.loc 1 3995 0
	movl	$10, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL121:
	movb	%al, 1(%esi)
	jmp	.L70
.L69:
	.loc 1 3998 0
	movb	$0, 1(%esi)
.L70:
	.loc 1 4000 0
	movl	%edi, %eax
	movb	%al, (%esi)
	.loc 1 4001 0
	pushl	%ecx
	pushl	$0
	pushl	%ebx
	pushl	$8204
	call	bt_hci_cmd_send_sync
.LVL122:
	.loc 1 4004 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL123:
	jne	.L68
	.loc 1 4007 0
	movl	%edi, %eax
.LVL124:
	decb	%al
	jne	.L71
.LVL125:
.LBB176:
.LBB177:
.LBB178:
.LBB179:
	.loc 1 875 0
	pushl	%edx
	pushl	%edx
	pushl	$128
	pushl	$bt_dev+108
.LVL126:
	call	atomic_or
.LVL127:
	jmp	.L75
.LVL128:
.L71:
.LBE179:
.LBE178:
.LBE177:
.LBE176:
.LBB180:
.LBB181:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-129
	pushl	$bt_dev+108
.LVL129:
	call	atomic_and
.LVL130:
.L75:
	addl	$16, %esp
.LVL131:
.L68:
.LBE181:
.LBE180:
	.loc 1 4013 0
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
.LFE86:
	.size	set_le_scan_enable, .-set_le_scan_enable
	.section	.text.unlikely.set_le_scan_enable
.LCOLDE16:
	.section	.text.set_le_scan_enable
.LHOTE16:
	.section	.text.unlikely.set_advertise_enable,"ax",@progbits
.LCOLDB17:
	.section	.text.set_advertise_enable,"ax",@progbits
.LHOTB17:
	.type	set_advertise_enable, @function
set_advertise_enable:
.LFB83:
	.loc 1 3925 0
	.cfi_startproc
.LVL132:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3928 0
	pushl	%ebx
	pushl	%ebx
	.loc 1 3925 0
	movl	%eax, %esi
	.loc 1 3928 0
	pushl	$1
	pushl	$8202
	.loc 1 3930 0
	movl	$-55, %ebx
	.loc 1 3928 0
	call	bt_hci_cmd_create
.LVL133:
	.loc 1 3929 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L77
	movl	%eax, %ebx
	.loc 1 3932 0
	movl	%esi, %eax
.LVL134:
	testb	%al, %al
	leal	8(%ebx), %eax
	je	.L78
	.loc 1 3933 0
	pushl	%ecx
	pushl	%ecx
	pushl	$1
	jmp	.L84
.L78:
	.loc 1 3935 0
	pushl	%edx
	pushl	%edx
	pushl	$0
.L84:
	pushl	%eax
	call	net_buf_simple_add_u8
.LVL135:
	addl	$16, %esp
	.loc 1 3937 0
	pushl	%ecx
	pushl	$0
	pushl	%ebx
	pushl	$8202
	call	bt_hci_cmd_send_sync
.LVL136:
	.loc 1 3940 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL137:
	jne	.L77
	.loc 1 3943 0
	movl	%esi, %eax
.LVL138:
	testb	%al, %al
	je	.L80
.LVL139:
.LBB190:
.LBB191:
.LBB192:
.LBB193:
	.loc 1 875 0
	pushl	%edx
	pushl	%edx
	pushl	$32
	pushl	$bt_dev+108
.LVL140:
	call	atomic_or
.LVL141:
	jmp	.L85
.LVL142:
.L80:
.LBE193:
.LBE192:
.LBE191:
.LBE190:
.LBB194:
.LBB195:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-33
	pushl	$bt_dev+108
.LVL143:
	call	atomic_and
.LVL144:
.L85:
	addl	$16, %esp
.LVL145:
.L77:
.LBE195:
.LBE194:
	.loc 1 3949 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	set_advertise_enable, .-set_advertise_enable
	.section	.text.unlikely.set_advertise_enable
.LCOLDE17:
	.section	.text.set_advertise_enable
.LHOTE17:
	.section	.text.unlikely.set_ad,"ax",@progbits
.LCOLDB18:
	.section	.text.set_ad,"ax",@progbits
.LHOTB18:
	.type	set_ad, @function
set_ad:
.LFB159:
	.loc 1 5944 0
	.cfi_startproc
.LVL146:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5948 0
	movzwl	%ax, %eax
	.loc 1 5944 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%edx, %esi
	subl	$52, %esp
	.loc 1 5944 0
	movl	%ecx, -44(%ebp)
	.loc 1 5948 0
	movl	%eax, -36(%ebp)
	pushl	$32
	pushl	%eax
	call	bt_hci_cmd_create
.LVL147:
	.loc 1 5949 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5948 0
	movl	%eax, -28(%ebp)
.LVL148:
	.loc 1 5949 0
	je	.L91
	.loc 1 5952 0
	addl	$8, %eax
.LVL149:
	pushl	%edx
	pushl	%edx
	pushl	$32
	pushl	%eax
	call	net_buf_simple_add
.LVL150:
	movl	%eax, %ebx
.LVL151:
	.loc 1 5953 0
	movl	$8, %ecx
	xorl	%eax, %eax
.LVL152:
	movl	%ebx, %edi
	leal	1(%esi), %edx
	.loc 1 5954 0
	addl	$16, %esp
	.loc 1 5953 0
	rep stosl
.LVL153:
	.loc 1 5954 0
	movl	$0, -32(%ebp)
.LVL154:
.L88:
	.loc 1 5954 0 is_stmt 0 discriminator 1
	movl	-44(%ebp), %edi
	cmpl	%edi, -32(%ebp)
	je	.L93
	.loc 1 5955 0 is_stmt 1
	movzbl	(%ebx), %edi
	movzbl	(%edx), %ecx
	addl	%edi, %ecx
	cmpl	$29, %ecx
	jle	.L89
	.loc 1 5956 0
	subl	$12, %esp
	pushl	-28(%ebp)
	call	net_buf_unref
.LVL155:
	.loc 1 5957 0
	addl	$16, %esp
	movl	$-22, %eax
	jmp	.L87
.L89:
	.loc 1 5959 0 discriminator 2
	leal	1(%edi), %ecx
	.loc 1 5954 0 discriminator 2
	incl	-32(%ebp)
.LVL156:
	addl	$8, %edx
	.loc 1 5959 0 discriminator 2
	movb	%cl, (%ebx)
	movzbl	-8(%edx), %esi
	movb	%cl, -37(%ebp)
	incl	%esi
	movl	%esi, %ecx
	.loc 1 5960 0 discriminator 2
	leal	2(%edi), %esi
	.loc 1 5959 0 discriminator 2
	movb	%cl, 1(%ebx,%edi)
	.loc 1 5960 0 discriminator 2
	movzbl	-37(%ebp), %ecx
	movl	%esi, %eax
	movb	%al, (%ebx)
	movb	-9(%edx), %al
	movb	%al, 1(%ebx,%ecx)
	.loc 1 5961 0 discriminator 2
	movl	%esi, %eax
	movzbl	-8(%edx), %ecx
	movzbl	%al, %eax
	movl	-5(%edx), %esi
	leal	1(%ebx,%eax), %eax
	movl	%eax, %edi
	rep movsb
	.loc 1 5963 0 discriminator 2
	movb	-8(%edx), %al
	addb	%al, (%ebx)
	jmp	.L88
.LVL157:
.L93:
	.loc 1 5965 0
	pushl	%eax
	pushl	$0
	pushl	-28(%ebp)
	pushl	-36(%ebp)
	call	bt_hci_cmd_send_sync
.LVL158:
	addl	$16, %esp
	jmp	.L87
.LVL159:
.L91:
	.loc 1 5950 0
	movl	$-55, %eax
.LVL160:
.L87:
	.loc 1 5968 0
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
.LVL161:
	ret
	.cfi_endproc
.LFE159:
	.size	set_ad, .-set_ad
	.section	.text.unlikely.set_ad
.LCOLDE18:
	.section	.text.set_ad
.LHOTE18:
	.section	.text.unlikely.bt_le_conn_params_valid,"ax",@progbits
.LCOLDB19:
	.section	.text.bt_le_conn_params_valid,"ax",@progbits
.LHOTB19:
	.globl	bt_le_conn_params_valid
	.type	bt_le_conn_params_valid, @function
bt_le_conn_params_valid:
.LFB101:
	.loc 1 4431 0
	.cfi_startproc
.LVL162:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4431 0
	movl	8(%ebp), %ebx
	.loc 1 4432 0
	movzwl	2(%ebx), %edx
	movw	(%ebx), %ax
	cmpw	%dx, %ax
	seta	%cl
	cmpw	$5, %ax
	setbe	%al
	orl	%ecx, %eax
	cmpw	$3200, %dx
	seta	%cl
	.loc 1 4433 0
	orb	%cl, %al
	jne	.L96
	.loc 1 4438 0
	movzwl	4(%ebx), %ecx
	cmpw	$499, %cx
	ja	.L95
	.loc 1 4443 0
	movw	6(%ebx), %bx
	leal	-10(%ebx), %esi
	cmpw	$3190, %si
	ja	.L95
	.loc 1 4443 0 is_stmt 0 discriminator 1
	incl	%ecx
	movzwl	%bx, %eax
	imull	%ecx, %edx
	sall	$2, %eax
	cmpl	%edx, %eax
	setg	%al
	jmp	.L95
.LVL163:
.L96:
	.loc 1 4435 0 is_stmt 1
	xorl	%eax, %eax
.LVL164:
.L95:
	.loc 1 4453 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE101:
	.size	bt_le_conn_params_valid, .-bt_le_conn_params_valid
	.section	.text.unlikely.bt_le_conn_params_valid
.LCOLDE19:
	.section	.text.bt_le_conn_params_valid
.LHOTE19:
	.section	.text.unlikely.bt_id_add,"ax",@progbits
.LCOLDB20:
	.section	.text.bt_id_add,"ax",@progbits
.LHOTB20:
	.globl	bt_id_add
	.type	bt_id_add, @function
bt_id_add:
.LFB109:
	.loc 1 4609 0
	.cfi_startproc
.LVL165:
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
	.loc 1 4615 0
	movb	bt_dev+144, %al
	testb	%al, %al
	je	.L99
	.loc 1 4615 0 is_stmt 0 discriminator 1
	cmpb	bt_dev+145, %al
	jnb	.L100
.L99:
	.loc 1 4616 0 is_stmt 1
	incb	bt_dev+145
	.loc 1 4617 0
	xorl	%ebx, %ebx
	jmp	.L101
.L100:
	.loc 1 4619 0
	pushl	%esi
	pushl	%esi
	pushl	$2
	pushl	$0
	call	bt_conn_lookup_state_le
.LVL166:
	.loc 1 4622 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4619 0
	movl	%eax, %esi
.LVL167:
	.loc 1 4622 0
	je	.L102
.LVL168:
.LBB204:
.LBB205:
	.loc 1 875 0
	pushl	%edx
	pushl	%edx
	pushl	$4096
	pushl	$bt_dev+108
.LVL169:
	call	atomic_or
.LVL170:
.LBE205:
.LBE204:
	.loc 1 4624 0
	movl	8(%ebp), %eax
.LBB206:
.LBB207:
	.loc 1 875 0
	popl	%ecx
	popl	%ebx
.LBE207:
.LBE206:
	.loc 1 4624 0
	leal	8(%eax), %ebx
.LVL171:
.LBB210:
.LBB208:
	.loc 1 875 0
	pushl	$4
	pushl	%ebx
.LBE208:
.LBE210:
	.loc 1 4626 0
	movl	$-11, %ebx
.LVL172:
.LBB211:
.LBB209:
	.loc 1 875 0
	call	atomic_or
.LVL173:
.LBE209:
.LBE211:
	.loc 1 4625 0
	movl	%esi, (%esp)
	call	bt_conn_unref
.LVL174:
	.loc 1 4626 0
	addl	$16, %esp
	jmp	.L101
.LVL175:
.L102:
.LBB212:
.LBB213:
	.loc 1 4628 0
	movl	$5, %edx
	movl	$bt_dev+108, %eax
.LVL176:
	call	atomic_test_bit
.LVL177:
	.loc 1 4629 0
	testl	%eax, %eax
	.loc 1 4628 0
	movl	%eax, %esi
.LVL178:
	.loc 1 4629 0
	je	.L103
	.loc 1 4630 0
	xorl	%eax, %eax
.LVL179:
	call	set_advertise_enable
.LVL180:
.L103:
	.loc 1 4634 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL181:
	.loc 1 4635 0
	testl	%eax, %eax
	.loc 1 4634 0
	movl	%eax, %edi
.LVL182:
	.loc 1 4635 0
	je	.L104
	.loc 1 4636 0
	xorl	%eax, %eax
.LVL183:
	call	set_le_scan_enable
.LVL184:
.L104:
	.loc 1 4638 0
	cmpb	$0, bt_dev+145
	jne	.L105
.L109:
	.loc 1 4645 0
	movb	bt_dev+144, %al
	cmpb	%al, bt_dev+145
	jne	.L125
	.loc 1 4647 0
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$8233
	call	bt_hci_cmd_send_sync
.LVL185:
	.loc 1 4652 0
	addl	$16, %esp
	.loc 1 4647 0
	movl	%eax, %ebx
.LVL186:
	jmp	.L128
.LVL187:
.L105:
	.loc 1 4639 0
	xorl	%eax, %eax
	call	addr_res_enable
.LVL188:
	.loc 1 4640 0
	testl	%eax, %eax
	.loc 1 4639 0
	movl	%eax, %ebx
.LVL189:
	.loc 1 4640 0
	jne	.L108
	jmp	.L109
.LVL190:
.L125:
	.loc 1 4659 0
	movl	8(%ebp), %eax
	leal	44(%eax), %edx
	call	hci_id_add
.LVL191:
	movl	%eax, %ebx
.L128:
.LVL192:
	.loc 1 4660 0
	testl	%ebx, %ebx
	jne	.L108
	.loc 1 4664 0
	incb	bt_dev+145
.L108:
	.loc 1 4666 0
	movl	$1, %eax
	call	addr_res_enable
.LVL193:
	.loc 1 4667 0
	testl	%edi, %edi
	je	.L110
	.loc 1 4668 0
	movl	$1, %eax
	call	set_le_scan_enable
.LVL194:
.L110:
	.loc 1 4670 0
	testl	%esi, %esi
	je	.L101
	.loc 1 4671 0
	movl	$1, %eax
	call	set_advertise_enable
.LVL195:
.L101:
.LBE213:
.LBE212:
	.loc 1 4676 0
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
.LFE109:
	.size	bt_id_add, .-bt_id_add
	.section	.text.unlikely.bt_id_add
.LCOLDE20:
	.section	.text.bt_id_add
.LHOTE20:
	.section	.text.unlikely.bt_id_del,"ax",@progbits
.LCOLDB21:
	.section	.text.bt_id_del,"ax",@progbits
.LHOTB21:
	.globl	bt_id_del
	.type	bt_id_del, @function
bt_id_del:
.LFB111:
	.loc 1 4682 0
	.cfi_startproc
.LVL196:
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
	.loc 1 4690 0
	movzbl	bt_dev+144, %eax
	testb	%al, %al
	je	.L130
	.loc 1 4690 0 is_stmt 0 discriminator 1
	movzbl	bt_dev+145, %edx
	incl	%eax
	cmpl	%eax, %edx
	jle	.L131
.L130:
	.loc 1 4692 0 is_stmt 1
	decb	bt_dev+145
	.loc 1 4693 0
	xorl	%ebx, %ebx
	jmp	.L132
.L131:
	.loc 1 4695 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	$0
	call	bt_conn_lookup_state_le
.LVL197:
	.loc 1 4698 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4695 0
	movl	%eax, %ebx
.LVL198:
	.loc 1 4698 0
	je	.L133
.LVL199:
.LBB222:
.LBB223:
	.loc 1 875 0
	pushl	%esi
	pushl	%esi
	pushl	$4096
	pushl	$bt_dev+108
.LVL200:
	call	atomic_or
.LVL201:
.LBE223:
.LBE222:
.LBB224:
.LBB225:
	popl	%edi
	popl	%eax
.LBE225:
.LBE224:
	.loc 1 4700 0
	movl	8(%ebp), %eax
.LBB228:
.LBB226:
	.loc 1 875 0
	pushl	$8
.LBE226:
.LBE228:
	.loc 1 4700 0
	addl	$8, %eax
.LVL202:
.LBB229:
.LBB227:
	.loc 1 875 0
	pushl	%eax
	call	atomic_or
.LVL203:
.LBE227:
.LBE229:
	.loc 1 4701 0
	movl	%ebx, (%esp)
	.loc 1 4702 0
	movl	$-11, %ebx
.LVL204:
	.loc 1 4701 0
	call	bt_conn_unref
.LVL205:
	.loc 1 4702 0
	addl	$16, %esp
	jmp	.L132
.LVL206:
.L133:
.LBB230:
.LBB231:
	.loc 1 4704 0
	movl	$5, %edx
	movl	$bt_dev+108, %eax
.LVL207:
	call	atomic_test_bit
.LVL208:
	.loc 1 4705 0
	testl	%eax, %eax
	.loc 1 4704 0
	movl	%eax, %esi
.LVL209:
	.loc 1 4705 0
	je	.L134
	.loc 1 4706 0
	xorl	%eax, %eax
.LVL210:
	call	set_advertise_enable
.LVL211:
.L134:
	.loc 1 4710 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL212:
	.loc 1 4711 0
	testl	%eax, %eax
	.loc 1 4710 0
	movl	%eax, %edi
.LVL213:
	.loc 1 4711 0
	je	.L135
	.loc 1 4712 0
	xorl	%eax, %eax
.LVL214:
	call	set_le_scan_enable
.LVL215:
.L135:
	.loc 1 4714 0
	xorl	%eax, %eax
	call	addr_res_enable
.LVL216:
	.loc 1 4715 0
	testl	%eax, %eax
	.loc 1 4714 0
	movl	%eax, %ebx
.LVL217:
	.loc 1 4715 0
	jne	.L136
	.loc 1 4719 0
	movb	bt_dev+145, %al
.LVL218:
	cmpb	bt_dev+144, %al
	jbe	.L137
	.loc 1 4720 0
	decl	%eax
	movb	%al, bt_dev+145
	.loc 1 4721 0
	movl	8(%ebp), %eax
	andw	$-3, 12(%eax)
	.loc 1 4722 0
	pushl	%ecx
	pushl	%ecx
	pushl	$keys_add_id
	pushl	$2
	call	bt_keys_foreach
.LVL219:
	addl	$16, %esp
	jmp	.L136
.L137:
	.loc 1 4725 0
	pushl	%edx
	pushl	%edx
	.loc 1 4727 0
	movl	$-55, %ebx
.LVL220:
	.loc 1 4725 0
	pushl	$7
	pushl	$8232
	call	bt_hci_cmd_create
.LVL221:
	.loc 1 4726 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4725 0
	movl	%eax, %ecx
.LVL222:
	.loc 1 4726 0
	je	.L136
.LVL223:
	.loc 1 4730 0
	pushl	%eax
	pushl	%eax
	leal	8(%ecx), %eax
	pushl	$7
	movl	%ecx, -28(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL224:
	.loc 1 4731 0
	movl	8(%ebp), %edx
	call	bt_addr_le_copy
.LVL225:
	.loc 1 4732 0
	movl	-28(%ebp), %ecx
	addl	$12, %esp
	pushl	$0
	pushl	%ecx
	pushl	$8232
	call	bt_hci_cmd_send_sync
.LVL226:
	.loc 1 4735 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4732 0
	movl	%eax, %ebx
.LVL227:
	.loc 1 4735 0
	jne	.L136
	.loc 1 4739 0
	decb	bt_dev+145
.LVL228:
.L136:
	.loc 1 4741 0
	cmpb	$0, bt_dev+145
	je	.L138
	.loc 1 4742 0
	movl	$1, %eax
	call	addr_res_enable
.LVL229:
.L138:
	.loc 1 4744 0
	testl	%edi, %edi
	je	.L139
	.loc 1 4745 0
	movl	$1, %eax
	call	set_le_scan_enable
.LVL230:
.L139:
	.loc 1 4747 0
	testl	%esi, %esi
	je	.L132
	.loc 1 4748 0
	movl	$1, %eax
	call	set_advertise_enable
.LVL231:
.L132:
.LBE231:
.LBE230:
	.loc 1 4753 0
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
.LFE111:
	.size	bt_id_del, .-bt_id_del
	.section	.text.unlikely.bt_id_del
.LCOLDE21:
	.section	.text.bt_id_del
.LHOTE21:
	.section	.text.unlikely.update_pending_id,"ax",@progbits
.LCOLDB22:
	.section	.text.update_pending_id,"ax",@progbits
.LHOTB22:
	.type	update_pending_id, @function
update_pending_id:
.LFB95:
	.loc 1 4212 0
	.cfi_startproc
.LVL232:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4213 0
	movl	$2, %edx
	.loc 1 4212 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4212 0
	movl	8(%ebp), %ebx
	.loc 1 4213 0
	leal	8(%ebx), %esi
	movl	%esi, %eax
	call	atomic_test_and_clear_bit
.LVL233:
	testl	%eax, %eax
	je	.L157
	.loc 1 4214 0
	movl	%ebx, 8(%ebp)
	.loc 1 4221 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4214 0
	jmp	bt_id_add
.LVL234:
.L157:
	.cfi_restore_state
	.loc 1 4217 0
	movl	$3, %edx
	movl	%esi, %eax
	call	atomic_test_and_clear_bit
.LVL235:
	testl	%eax, %eax
	je	.L156
	.loc 1 4218 0
	movl	%ebx, 8(%ebp)
	.loc 1 4221 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4218 0
	jmp	bt_id_del
.LVL236:
.L156:
	.cfi_restore_state
	.loc 1 4221 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE95:
	.size	update_pending_id, .-update_pending_id
	.section	.text.unlikely.update_pending_id
.LCOLDE22:
	.section	.text.update_pending_id
.LHOTE22:
	.section	.text.unlikely.bt_le_scan_update,"ax",@progbits
.LCOLDB23:
	.section	.text.bt_le_scan_update,"ax",@progbits
.LHOTB23:
	.globl	bt_le_scan_update
	.type	bt_le_scan_update, @function
bt_le_scan_update:
.LFB123:
	.loc 1 5049 0
	.cfi_startproc
.LVL237:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5050 0
	movl	$8, %edx
	movl	$bt_dev+108, %eax
	.loc 1 5049 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 5050 0
	call	atomic_test_bit
.LVL238:
	testl	%eax, %eax
	jne	.L162
	.loc 1 5053 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL239:
	testl	%eax, %eax
	je	.L162
.LVL240:
	.loc 1 5081 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB236:
.LBB237:
.LBB238:
	.loc 1 5055 0
	xorl	%eax, %eax
	jmp	set_le_scan_enable
.LVL241:
.L162:
	.cfi_restore_state
.LBE238:
.LBE237:
.LBE236:
	.loc 1 5081 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE123:
	.size	bt_le_scan_update, .-bt_le_scan_update
	.section	.text.unlikely.bt_le_scan_update
.LCOLDE23:
	.section	.text.bt_le_scan_update
.LHOTE23:
	.section	.text.unlikely.bt_addr_le_create_nrpa,"ax",@progbits
.LCOLDB24:
	.section	.text.bt_addr_le_create_nrpa,"ax",@progbits
.LHOTB24:
	.globl	bt_addr_le_create_nrpa
	.type	bt_addr_le_create_nrpa, @function
bt_addr_le_create_nrpa:
.LFB144:
	.loc 1 5628 0
	.cfi_startproc
.LVL242:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 5628 0
	movl	8(%ebp), %ebx
.LVL243:
.LBB241:
.LBB242:
	.loc 1 5625 0
	leal	1(%ebx), %eax
	.loc 1 5624 0
	movb	$1, (%ebx)
	.loc 1 5625 0
	pushl	$6
	pushl	%eax
	call	bt_rand
.LVL244:
.LBE242:
.LBE241:
	.loc 1 5631 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L169
	.loc 1 5634 0
	andb	$63, 6(%ebx)
.L169:
	.loc 1 5636 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE144:
	.size	bt_addr_le_create_nrpa, .-bt_addr_le_create_nrpa
	.section	.text.unlikely.bt_addr_le_create_nrpa
.LCOLDE24:
	.section	.text.bt_addr_le_create_nrpa
.LHOTE24:
	.section	.text.unlikely.bt_addr_le_create_static,"ax",@progbits
.LCOLDB25:
	.section	.text.bt_addr_le_create_static,"ax",@progbits
.LHOTB25:
	.globl	bt_addr_le_create_static
	.type	bt_addr_le_create_static, @function
bt_addr_le_create_static:
.LFB145:
	.loc 1 5638 0
	.cfi_startproc
.LVL245:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 5638 0
	movl	8(%ebp), %ebx
.LVL246:
.LBB245:
.LBB246:
	.loc 1 5625 0
	leal	1(%ebx), %eax
	.loc 1 5624 0
	movb	$1, (%ebx)
	.loc 1 5625 0
	pushl	$6
	pushl	%eax
	call	bt_rand
.LVL247:
.LBE246:
.LBE245:
	.loc 1 5641 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L172
	.loc 1 5644 0
	orb	$-64, 6(%ebx)
.L172:
	.loc 1 5646 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE145:
	.size	bt_addr_le_create_static, .-bt_addr_le_create_static
	.section	.text.unlikely.bt_addr_le_create_static
.LCOLDE25:
	.section	.text.bt_addr_le_create_static
.LHOTE25:
	.section	.rodata
	.align 4
.LC0:
	.byte	0
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.section	.text.unlikely.bt_init,"ax",@progbits
.LCOLDB26:
	.section	.text.bt_init,"ax",@progbits
.LHOTB26:
	.type	bt_init, @function
bt_init:
.LFB153:
	.loc 1 5804 0
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
.LBB308:
.LBB309:
.LBB310:
.LBB311:
	.loc 1 5356 0
	leal	-48(%ebp), %ebx
.LBE311:
.LBE310:
.LBE309:
.LBE308:
	.loc 1 5804 0
	subl	$64, %esp
.LBB379:
.LBB377:
.LBB336:
.LBB334:
	.loc 1 5356 0
	pushl	%ebx
	pushl	$0
	pushl	$3075
.LBE334:
.LBE336:
.LBE377:
.LBE379:
	.loc 1 5804 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LBB380:
.LBB378:
.LBB337:
.LBB335:
	.loc 1 5356 0
	call	bt_hci_cmd_send_sync
.LVL248:
	.loc 1 5359 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L175
.LVL249:
	movl	-48(%ebp), %eax
.LVL250:
.LBB312:
.LBB313:
	.loc 1 4947 0
	movl	8(%eax), %eax
	.loc 1 4949 0
	cmpb	$0, (%eax)
	jne	.L176
	.loc 1 4955 0
	pushl	%esi
.LVL251:
	pushl	%esi
	pushl	$1
	pushl	$bt_dev+108
	.loc 1 4952 0
	movl	$0, scan_dev_found_cb
	.loc 1 4955 0
	call	atomic_set
.LVL252:
	addl	$16, %esp
.L176:
.LBE313:
.LBE312:
	.loc 1 5363 0
	subl	$12, %esp
	pushl	-48(%ebp)
	call	net_buf_unref
.LVL253:
	.loc 1 5364 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$0
	pushl	$4099
	call	bt_hci_cmd_send_sync
.LVL254:
	.loc 1 5367 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L175
	.loc 1 5370 0
	movl	-48(%ebp), %ecx
.LVL255:
	.loc 1 5371 0
	subl	$12, %esp
.LBB314:
.LBB315:
	.loc 1 5344 0
	movl	8(%ecx), %eax
.LVL256:
	movl	5(%eax), %edx
.LVL257:
	movl	1(%eax), %eax
.LBE315:
.LBE314:
	.loc 1 5371 0
	pushl	%ecx
.LVL258:
.LBB317:
.LBB316:
	.loc 1 5344 0
	movl	%edx, bt_dev+26
	movl	%eax, bt_dev+22
.LBE316:
.LBE317:
	.loc 1 5371 0
	call	net_buf_unref
.LVL259:
	.loc 1 5372 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$0
	pushl	$4097
	call	bt_hci_cmd_send_sync
.LVL260:
	.loc 1 5376 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L175
	.loc 1 5379 0
	movl	-48(%ebp), %edx
	.loc 1 5380 0
	subl	$12, %esp
	movl	8(%edx), %eax
.LVL261:
.LBB318:
.LBB319:
	.loc 1 5283 0
	movb	1(%eax), %cl
	movb	%cl, bt_dev+14
	.loc 1 5284 0
	movw	2(%eax), %cx
	movw	%cx, bt_dev+16
	.loc 1 5285 0
	movb	4(%eax), %cl
	movb	%cl, bt_dev+15
	.loc 1 5286 0
	movw	7(%eax), %cx
	.loc 1 5287 0
	movw	5(%eax), %ax
.LVL262:
.LBE319:
.LBE318:
	.loc 1 5380 0
	pushl	%edx
.LBB321:
.LBB320:
	.loc 1 5286 0
	movw	%cx, bt_dev+18
	.loc 1 5287 0
	movw	%ax, bt_dev+20
.LBE320:
.LBE321:
	.loc 1 5380 0
	call	net_buf_unref
.LVL263:
	.loc 1 5381 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$0
	pushl	$4105
	call	bt_hci_cmd_send_sync
.LVL264:
	.loc 1 5384 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L175
	.loc 1 5387 0
	movl	-48(%ebp), %eax
.LVL265:
	.loc 1 5388 0
	subl	$12, %esp
.LBB322:
.LBB323:
	.loc 1 5294 0
	movb	$0, bt_dev
.LBB324:
.LBB325:
	.loc 1 1455 0
	movl	8(%eax), %edx
.LVL266:
	movl	1(%edx), %ecx
	movl	%ecx, bt_dev+1
	movw	5(%edx), %dx
.LBE325:
.LBE324:
.LBE323:
.LBE322:
	.loc 1 5388 0
	pushl	%eax
.LVL267:
.LBB329:
.LBB328:
.LBB327:
.LBB326:
	.loc 1 1455 0
	movw	%dx, bt_dev+5
.LVL268:
.LBE326:
.LBE327:
.LBE328:
.LBE329:
	.loc 1 5388 0
	call	net_buf_unref
.LVL269:
	.loc 1 5389 0
	addl	$12, %esp
	pushl	%ebx
	pushl	$0
	pushl	$4098
	call	bt_hci_cmd_send_sync
.LVL270:
	.loc 1 5393 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L175
	.loc 1 5396 0
	movl	-48(%ebp), %edx
.LVL271:
.LBB330:
.LBB331:
	.loc 1 5333 0
	movl	$bt_dev+30, %eax
.LVL272:
	movl	$16, %ecx
	movl	%eax, %edi
.LBE331:
.LBE330:
	.loc 1 5397 0
	subl	$12, %esp
.LBB333:
.LBB332:
	.loc 1 5333 0
	movl	8(%edx), %esi
	incl	%esi
	rep movsl
.LVL273:
.LBE332:
.LBE333:
	.loc 1 5397 0
	pushl	%edx
	call	net_buf_unref
.LVL274:
	addl	$16, %esp
	jmp	.L258
.LVL275:
.L175:
.LBE335:
.LBE337:
	.loc 1 5699 0
	testl	%edx, %edx
	jne	.L206
.L258:
.LBB338:
.LBB339:
	.loc 1 5457 0
	testb	$64, bt_dev+26
	.loc 1 5459 0
	movl	$-19, %edx
	.loc 1 5457 0
	je	.L206
	.loc 1 5461 0
	leal	-52(%ebp), %esi
	pushl	%ecx
	pushl	%esi
	pushl	$0
	pushl	$8195
	call	bt_hci_cmd_send_sync
.LVL276:
	.loc 1 5465 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L178
	.loc 1 5468 0
	movl	-52(%ebp), %ecx
.LVL277:
	.loc 1 5469 0
	subl	$12, %esp
.LBB340:
.LBB341:
	.loc 1 5300 0
	movl	8(%ecx), %eax
.LVL278:
	movl	5(%eax), %edx
.LVL279:
	movl	1(%eax), %eax
.LBE341:
.LBE340:
	.loc 1 5469 0
	pushl	%ecx
.LVL280:
.LBB343:
.LBB342:
	.loc 1 5300 0
	movl	%edx, bt_dev+116
	movl	%eax, bt_dev+112
.LBE342:
.LBE343:
	.loc 1 5469 0
	call	net_buf_unref
.LVL281:
	.loc 1 5470 0
	addl	$12, %esp
	pushl	%esi
	pushl	$0
	pushl	$8194
	call	bt_hci_cmd_send_sync
.LVL282:
	.loc 1 5473 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L178
	movl	-52(%ebp), %eax
.LVL283:
	movl	8(%eax), %edx
.LVL284:
.LBB344:
.LBB345:
	.loc 1 5321 0
	movw	1(%edx), %ax
.LVL285:
	.loc 1 5322 0
	testw	%ax, %ax
	.loc 1 5321 0
	movw	%ax, bt_dev+128
	.loc 1 5322 0
	je	.L179
.LVL286:
	.loc 1 5327 0
	movzbl	3(%edx), %eax
	movl	$10, %edx
.LVL287:
	cmpb	$10, %al
	cmova	%edx, %eax
	pushl	%edx
.LVL288:
	pushl	%eax
	pushl	%eax
	pushl	$bt_dev+132
	call	k_sem_init
.LVL289:
	addl	$16, %esp
.L179:
.LBE345:
.LBE344:
	.loc 1 5477 0
	subl	$12, %esp
	pushl	-52(%ebp)
	call	net_buf_unref
.LVL290:
	.loc 1 5478 0
	addl	$16, %esp
	testb	$32, bt_dev+26
	je	.L180
.L184:
	.loc 1 5494 0
	testb	$8, bt_dev+58
	je	.L182
	jmp	.L263
.L180:
	.loc 1 5479 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	$3181
	call	bt_hci_cmd_create
.LVL291:
	.loc 1 5481 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5479 0
	movl	%eax, %edi
.LVL292:
	.loc 1 5481 0
	jne	.L183
.LVL293:
.L187:
	.loc 1 5482 0
	movl	$-55, %edx
	jmp	.L206
.LVL294:
.L183:
.LVL295:
	.loc 1 5484 0
	pushl	%eax
	pushl	%eax
	leal	8(%edi), %eax
	pushl	$2
	pushl	%eax
	call	net_buf_simple_add
.LVL296:
	.loc 1 5487 0
	addl	$12, %esp
	.loc 1 5485 0
	movb	$1, (%eax)
	.loc 1 5486 0
	movb	$0, 1(%eax)
	.loc 1 5487 0
	pushl	$0
	pushl	%edi
	pushl	$3181
	call	bt_hci_cmd_send_sync
.LVL297:
	.loc 1 5490 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L184
	jmp	.L217
.LVL298:
.L263:
	.loc 1 5495 0
	pushl	%edi
	pushl	%esi
	pushl	$0
	pushl	$8220
	call	bt_hci_cmd_send_sync
.LVL299:
	.loc 1 5499 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L178
	.loc 1 5502 0
	movl	-52(%ebp), %ecx
.LVL300:
	.loc 1 5503 0
	subl	$12, %esp
.LBB346:
.LBB347:
.LBB348:
.LBB349:
	.loc 1 1289 0
	movl	8(%ecx), %eax
.LVL301:
	movl	5(%eax), %edx
.LVL302:
	movl	1(%eax), %eax
.LVL303:
.LBE349:
.LBE348:
.LBE347:
.LBE346:
	.loc 1 5503 0
	pushl	%ecx
.LVL304:
.LBB351:
.LBB350:
	.loc 1 5350 0
	movl	%eax, bt_dev+120
	movl	%edx, bt_dev+124
.LBE350:
.LBE351:
	.loc 1 5503 0
	call	net_buf_unref
.LVL305:
	addl	$16, %esp
.L182:
	.loc 1 5505 0
	testb	$32, bt_dev+112
	je	.L185
.LBB352:
	.loc 1 5511 0
	pushl	%ecx
	pushl	%ebx
	pushl	$0
	pushl	$8239
	call	bt_hci_cmd_send_sync
.LVL306:
	.loc 1 5515 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L178
	.loc 1 5518 0
	movl	-48(%ebp), %eax
.LVL307:
	.loc 1 5521 0
	subl	$12, %esp
	.loc 1 5518 0
	movl	8(%eax), %edx
.LVL308:
	.loc 1 5519 0
	movw	1(%edx), %di
.LVL309:
	.loc 1 5520 0
	movw	3(%edx), %si
.LVL310:
	.loc 1 5521 0
	pushl	%eax
	call	net_buf_unref
.LVL311:
	.loc 1 5522 0
	popl	%eax
	popl	%edx
	pushl	$4
	pushl	$8228
	call	bt_hci_cmd_create
.LVL312:
	.loc 1 5524 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5522 0
	movl	%eax, %ecx
.LVL313:
	.loc 1 5525 0
	movl	$-55, %edx
	.loc 1 5524 0
	je	.L206
.LVL314:
	.loc 1 5527 0
	pushl	%eax
	pushl	%eax
	leal	8(%ecx), %eax
	pushl	$4
	movl	%ecx, -60(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL315:
	.loc 1 5530 0
	movl	-60(%ebp), %ecx
	addl	$12, %esp
	.loc 1 5528 0
	movw	%di, (%eax)
	.loc 1 5529 0
	movw	%si, 2(%eax)
	.loc 1 5530 0
	pushl	$0
	pushl	%ecx
	pushl	$8228
	call	bt_hci_cmd_send_sync
.LVL316:
	.loc 1 5534 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L217
.LVL317:
.L185:
.LBE352:
.LBB353:
.LBB354:
	.loc 1 5411 0
	pushl	%eax
	pushl	%eax
	pushl	$8
	pushl	$8193
	call	bt_hci_cmd_create
.LVL318:
	.loc 1 5412 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5411 0
	movl	%eax, %esi
.LVL319:
	.loc 1 5412 0
	je	.L187
.LVL320:
	.loc 1 5415 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$8
	pushl	%eax
	call	net_buf_simple_add
.LVL321:
	.loc 1 5426 0
	movb	bt_dev+112, %cl
	addl	$16, %esp
	movb	%cl, %dl
	andl	$2, %edx
	.loc 1 5427 0
	cmpb	$1, %dl
	sbbl	%edx, %edx
	andl	$-32, %edx
	addl	$47, %edx
.LVL322:
	.loc 1 5429 0
	testb	$32, %cl
	je	.L189
	.loc 1 5430 0
	orl	$64, %edx
.L189:
	.loc 1 5432 0
	testb	$9, bt_dev+113
	je	.L190
	.loc 1 5434 0
	orb	$8, %dh
.L190:
	.loc 1 5437 0
	andb	$1, %cl
	je	.L191
	.loc 1 5439 0
	orl	$16, %edx
.L191:
	.loc 1 5441 0
	movb	bt_dev+64, %cl
	.loc 1 5444 0
	movl	%edx, %edi
	orl	$384, %edi
	.loc 1 5441 0
	andl	$6, %ecx
	.loc 1 5444 0
	cmpb	$6, %cl
	.loc 1 5446 0
	movl	%eax, %ecx
	.loc 1 5444 0
	cmove	%edi, %edx
	.loc 1 5446 0
	movl	%edx, %eax
.LVL323:
	xorl	%edx, %edx
	call	sys_put_le64
.LVL324:
	.loc 1 5447 0
	pushl	%edi
	pushl	$0
	pushl	%esi
	pushl	$8193
	call	bt_hci_cmd_send_sync
.LVL325:
	addl	$16, %esp
	movl	%eax, %edx
	jmp	.L178
.LVL326:
.L217:
.LBE354:
.LBE353:
	.loc 1 5490 0
	movl	%eax, %edx
.LVL327:
.L178:
.LBE339:
.LBE338:
	.loc 1 5703 0
	testl	%edx, %edx
	jne	.L206
	.loc 1 5706 0
	testb	$32, bt_dev+26
	je	.L193
.L197:
.LVL328:
.LBB355:
.LBB356:
	.loc 1 5578 0
	pushl	%ebx
	pushl	%ebx
	pushl	$8
	pushl	$3073
	call	bt_hci_cmd_create
.LVL329:
	.loc 1 5579 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5578 0
	movl	%eax, %ebx
.LVL330:
	.loc 1 5580 0
	movl	$-55, %edx
	.loc 1 5579 0
	jne	.L259
	jmp	.L206
.LVL331:
.L193:
.LBE356:
.LBE355:
.LBB359:
.LBB360:
	.loc 1 5560 0
	cmpw	$0, bt_dev+128
	jne	.L197
	.loc 1 5563 0
	pushl	%ecx
	pushl	%ebx
	pushl	$0
	pushl	$4101
	call	bt_hci_cmd_send_sync
.LVL332:
	.loc 1 5566 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L206
.LVL333:
.LBB361:
.LBB362:
	.loc 1 5307 0
	cmpw	$0, bt_dev+128
	jne	.L196
	movl	-48(%ebp), %eax
.LVL334:
	movl	8(%eax), %eax
	.loc 1 5310 0
	movw	1(%eax), %dx
.LVL335:
	.loc 1 5311 0
	movzwl	4(%eax), %eax
.LVL336:
	.loc 1 5310 0
	movw	%dx, bt_dev+128
.LVL337:
	.loc 1 5314 0
	movl	$10, %edx
	cmpw	$10, %ax
	cmova	%edx, %eax
.LVL338:
	pushl	%edx
.LVL339:
	pushl	%eax
	pushl	%eax
	pushl	$bt_dev+132
	call	k_sem_init
.LVL340:
	addl	$16, %esp
.L196:
.LBE362:
.LBE361:
	.loc 1 5570 0
	subl	$12, %esp
	pushl	-48(%ebp)
	call	net_buf_unref
.LVL341:
	addl	$16, %esp
	jmp	.L197
.LVL342:
.L259:
.LBE360:
.LBE359:
.LBB363:
.LBB357:
	.loc 1 5582 0
	leal	8(%eax), %eax
.LVL343:
	pushl	%edi
	pushl	%edi
	pushl	$8
	pushl	%eax
	call	net_buf_simple_add
.LVL344:
	.loc 1 5612 0
	addl	$16, %esp
	testb	$1, bt_dev+112
	.loc 1 5582 0
	movl	%eax, %ecx
.LVL345:
	.loc 1 5610 0
	movl	$536870912, %edx
	movl	$33589264, %eax
.LVL346:
	.loc 1 5612 0
	je	.L198
	.loc 1 5615 0
	movl	$33589392, %eax
	movl	$536903680, %edx
.L198:
.LVL347:
	.loc 1 5617 0
	call	sys_put_le64
.LVL348:
	.loc 1 5618 0
	pushl	%esi
	pushl	$0
	pushl	%ebx
	pushl	$3073
	call	bt_hci_cmd_send_sync
.LVL349:
.LBE357:
.LBE363:
	.loc 1 5716 0
	addl	$16, %esp
	testl	%eax, %eax
.LBB364:
.LBB358:
	.loc 1 5618 0
	movl	%eax, %edx
.LVL350:
.LBE358:
.LBE364:
	.loc 1 5716 0
	jne	.L206
	.loc 1 5719 0
	leal	-35(%ebp), %edi
	xorl	%eax, %eax
	movl	$7, %ecx
	rep stosb
.LVL351:
.LBB365:
.LBB366:
	.loc 1 1451 0
	leal	-35(%ebp), %eax
.LVL352:
	pushl	%ebx
	pushl	$7
	pushl	%eax
	pushl	$bt_dev
	call	memcmp
.LVL353:
	addl	$16, %esp
.LVL354:
.LBE366:
.LBE365:
	.loc 1 5719 0
	testl	%eax, %eax
	jne	.L199
.L202:
.LBB367:
.LBB368:
	.loc 1 5650 0
	movl	bt_storage, %eax
	testl	%eax, %eax
	jne	.L200
	jmp	.L201
.L199:
.LBE368:
.LBE367:
	.loc 1 5720 0
	leal	-42(%ebp), %edi
	movl	$.LC0, %esi
	movl	$7, %ecx
	rep movsb
.LVL355:
.LBB374:
.LBB375:
	.loc 1 1451 0
	leal	-42(%ebp), %eax
.LVL356:
	pushl	%ecx
	pushl	$7
	pushl	%eax
	pushl	$bt_dev
	call	memcmp
.LVL357:
	addl	$16, %esp
.LVL358:
.LBE375:
.LBE374:
	.loc 1 5719 0
	testl	%eax, %eax
	je	.L202
	jmp	.L203
.L200:
.LBB376:
.LBB373:
.LBB369:
	.loc 1 5652 0
	pushl	$7
	pushl	$bt_dev
	pushl	$0
	pushl	$0
	call	*(%eax)
.LVL359:
	.loc 1 5656 0
	addl	$16, %esp
	cmpl	$7, %eax
	jne	.L201
	.loc 1 5657 0
	movb	$1, bt_dev
	jmp	.L204
.LVL360:
.L201:
.LBE369:
	.loc 1 5662 0
	subl	$12, %esp
	pushl	$bt_dev
	call	bt_addr_le_create_static
.LVL361:
	.loc 1 5663 0
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L206
	.loc 1 5666 0
	movl	bt_storage, %eax
.LVL362:
	testl	%eax, %eax
	je	.L204
.LBB370:
	.loc 1 5668 0
	pushl	$7
	pushl	$bt_dev
	pushl	$0
	pushl	$0
	call	*4(%eax)
.LVL363:
	addl	$16, %esp
.L204:
.LBE370:
	.loc 1 5680 0
	cmpb	$1, bt_dev
	.loc 1 5683 0
	movl	$-22, %edx
	.loc 1 5680 0
	jne	.L206
	movb	bt_dev+6, %al
	andl	$-64, %eax
	cmpb	$-64, %al
	jne	.L206
	.loc 1 5685 0
	movl	$bt_dev+1, %eax
	call	set_random_address
.LVL364:
	.loc 1 5686 0
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L206
.LVL365:
.LBB371:
.LBB372:
	.loc 1 875 0
	pushl	%edx
	pushl	%edx
	pushl	$4
	pushl	$bt_dev+108
.LVL366:
	call	atomic_or
.LVL367:
	addl	$16, %esp
.L203:
.LBE372:
.LBE371:
.LBE373:
.LBE376:
.LBE378:
.LBE380:
	.loc 1 5811 0
	call	bt_conn_init
.LVL368:
	.loc 1 5812 0
	testl	%eax, %eax
	.loc 1 5811 0
	movl	%eax, %edx
.LVL369:
	.loc 1 5812 0
	jne	.L206
.LVL370:
.LBB381:
.LBB382:
.LBB383:
.LBB384:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	$bt_dev+108
	movl	%edx, -60(%ebp)
.LVL371:
	call	atomic_or
.LVL372:
.LBE384:
.LBE383:
	.loc 1 5818 0
	movl	$0, (%esp)
	call	bt_le_scan_update
.LVL373:
	movl	-60(%ebp), %edx
	addl	$16, %esp
.LVL374:
.L206:
.LBE382:
.LBE381:
	.loc 1 5822 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
	movl	%edx, %eax
	je	.L208
	call	__stack_chk_fail
.LVL375:
.L208:
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
.LFE153:
	.size	bt_init, .-bt_init
	.section	.text.unlikely.bt_init
.LCOLDE26:
	.section	.text.bt_init
.LHOTE26:
	.section	.text.unlikely.init_work,"ax",@progbits
.LCOLDB27:
	.section	.text.init_work,"ax",@progbits
.LHOTB27:
	.type	init_work, @function
init_work:
.LFB154:
	.loc 1 5824 0
	.cfi_startproc
.LVL376:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 5826 0
	call	bt_init
.LVL377:
	.loc 1 5827 0
	movl	ready_cb, %edx
	testl	%edx, %edx
	je	.L264
	.loc 1 5828 0
	movl	%eax, 8(%ebp)
	.loc 1 5830 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5828 0
	jmp	*%edx
.LVL378:
.L264:
	.cfi_restore_state
	.loc 1 5830 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE154:
	.size	init_work, .-init_work
	.section	.text.unlikely.init_work
.LCOLDE27:
	.section	.text.init_work
.LHOTE27:
	.section	.text.unlikely.bt_send,"ax",@progbits
.LCOLDB28:
	.section	.text.bt_send,"ax",@progbits
.LHOTB28:
	.globl	bt_send
	.type	bt_send, @function
bt_send:
.LFB149:
	.loc 1 5732 0
	.cfi_startproc
.LVL379:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5738 0
	movl	bt_dev+200, %eax
	.loc 1 5732 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5739 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5738 0
	movl	12(%eax), %eax
	jmp	*%eax
.LVL380:
	.cfi_endproc
.LFE149:
	.size	bt_send, .-bt_send
	.section	.text.unlikely.bt_send
.LCOLDE28:
	.section	.text.bt_send
.LHOTE28:
	.section	.text.unlikely.bt_hci_cmd_send,"ax",@progbits
.LCOLDB29:
	.section	.text.bt_hci_cmd_send,"ax",@progbits
.LHOTB29:
	.globl	bt_hci_cmd_send
	.type	bt_hci_cmd_send, @function
bt_hci_cmd_send:
.LFB80:
	.loc 1 3844 0
	.cfi_startproc
.LVL381:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3844 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 3845 0
	testl	%ebx, %ebx
	jne	.L270
	.loc 1 3846 0
	movzwl	%si, %eax
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	%eax
	call	bt_hci_cmd_create
.LVL382:
	movl	%eax, %ebx
.LVL383:
	.loc 1 3847 0
	addl	$16, %esp
	.loc 1 3848 0
	movl	$-55, %eax
.LVL384:
	.loc 1 3847 0
	testl	%ebx, %ebx
	je	.L271
.L270:
	.loc 1 3852 0
	cmpw	$3125, %si
	jne	.L272
.LBB385:
	.loc 1 3854 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_send
.LVL385:
	movl	%eax, %esi
.LVL386:
	.loc 1 3855 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL387:
	testl	%esi, %esi
	je	.L271
	.loc 1 3857 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL388:
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L271
.LVL389:
.L272:
.LBE385:
	.loc 1 3861 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$bt_dev+188
	call	net_buf_put
.LVL390:
	.loc 1 3862 0
	movl	$g_poll_sem, (%esp)
	call	k_sem_give
.LVL391:
	.loc 1 3863 0
	addl	$16, %esp
	xorl	%eax, %eax
.L271:
	.loc 1 3864 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL392:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	bt_hci_cmd_send, .-bt_hci_cmd_send
	.section	.text.unlikely.bt_hci_cmd_send
.LCOLDE29:
	.section	.text.bt_hci_cmd_send
.LHOTE29:
	.section	.text.unlikely.hci_le_set_phy.isra.29,"ax",@progbits
.LCOLDB30:
	.section	.text.hci_le_set_phy.isra.29,"ax",@progbits
.LHOTB30:
	.type	hci_le_set_phy.isra.29, @function
hci_le_set_phy.isra.29:
.LFB204:
	.loc 1 4188 0
	.cfi_startproc
.LVL393:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4192 0
	pushl	%ebx
	pushl	%ebx
	.loc 1 4188 0
	movl	%eax, %esi
	.loc 1 4192 0
	pushl	$7
	pushl	$8242
	call	bt_hci_cmd_create
.LVL394:
	.loc 1 4193 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L279
	movl	%eax, %ebx
.LVL395:
	.loc 1 4196 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$7
	pushl	%eax
	call	net_buf_simple_add
.LVL396:
	.loc 1 4197 0
	movw	(%esi), %dx
	.loc 1 4198 0
	movb	$0, 2(%eax)
	.loc 1 4199 0
	movb	$2, 3(%eax)
	.loc 1 4200 0
	movb	$2, 4(%eax)
	.loc 1 4201 0
	movw	$0, 5(%eax)
	.loc 1 4197 0
	movw	%dx, (%eax)
	.loc 1 4202 0
	popl	%edx
	popl	%ecx
	pushl	%ebx
	pushl	$8242
	call	bt_hci_cmd_send
.LVL397:
	addl	$16, %esp
	.loc 1 4203 0
	xorl	%eax, %eax
	jmp	.L278
.LVL398:
.L279:
	.loc 1 4194 0
	movl	$-55, %eax
.LVL399:
.L278:
	.loc 1 4204 0
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
.LFE204:
	.size	hci_le_set_phy.isra.29, .-hci_le_set_phy.isra.29
	.section	.text.unlikely.hci_le_set_phy.isra.29
.LCOLDE30:
	.section	.text.hci_le_set_phy.isra.29
.LHOTE30:
	.section	.text.unlikely.hci_le_set_data_len.isra.30,"ax",@progbits
.LCOLDB31:
	.section	.text.hci_le_set_data_len.isra.30,"ax",@progbits
.LHOTB31:
	.type	hci_le_set_data_len.isra.30, @function
hci_le_set_data_len.isra.30:
.LFB205:
	.loc 1 4157 0
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
	movl	%eax, %edi
	subl	$48, %esp
	.loc 1 4157 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL400:
	.loc 1 4164 0
	leal	-32(%ebp), %eax
	pushl	%eax
	pushl	$0
	pushl	$8239
	call	bt_hci_cmd_send_sync
.LVL401:
	.loc 1 4167 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L282
	.loc 1 4170 0
	movl	-32(%ebp), %eax
.LVL402:
	.loc 1 4173 0
	subl	$12, %esp
	.loc 1 4170 0
	movl	8(%eax), %edx
.LVL403:
	.loc 1 4171 0
	movw	1(%edx), %si
.LVL404:
	.loc 1 4172 0
	movw	3(%edx), %bx
.LVL405:
	.loc 1 4173 0
	pushl	%eax
	call	net_buf_unref
.LVL406:
	.loc 1 4174 0
	popl	%eax
	popl	%edx
	pushl	$6
	pushl	$8226
	call	bt_hci_cmd_create
.LVL407:
	movl	%eax, %edx
.LVL408:
	.loc 1 4175 0
	addl	$16, %esp
	.loc 1 4176 0
	movl	$-55, %eax
.LVL409:
	.loc 1 4175 0
	testl	%edx, %edx
	je	.L282
	.loc 1 4178 0
	pushl	%eax
	pushl	%eax
	leal	8(%edx), %eax
	pushl	$6
	movl	%edx, -44(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL410:
	.loc 1 4179 0
	movw	(%edi), %cx
	.loc 1 4180 0
	movw	%si, 2(%eax)
	.loc 1 4181 0
	movw	%bx, 4(%eax)
	.loc 1 4179 0
	movw	%cx, (%eax)
	.loc 1 4182 0
	popl	%edx
	movl	-44(%ebp), %edx
	popl	%ecx
	pushl	%edx
	pushl	$8226
	call	bt_hci_cmd_send
.LVL411:
	addl	$16, %esp
.LVL412:
.L282:
	.loc 1 4187 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L283
	call	__stack_chk_fail
.LVL413:
.L283:
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
.LFE205:
	.size	hci_le_set_data_len.isra.30, .-hci_le_set_data_len.isra.30
	.section	.text.unlikely.hci_le_set_data_len.isra.30
.LCOLDE31:
	.section	.text.hci_le_set_data_len.isra.30
.LHOTE31:
	.section	.text.unlikely.le_enh_conn_complete,"ax",@progbits
.LCOLDB32:
	.section	.text.le_enh_conn_complete,"ax",@progbits
.LHOTB32:
	.type	le_enh_conn_complete, @function
le_enh_conn_complete:
.LFB96:
	.loc 1 4223 0
	.cfi_startproc
.LVL414:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4229 0
	movl	$12, %edx
	.loc 1 4223 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %esi
	subl	$60, %esp
	.loc 1 4223 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL415:
	.loc 1 4224 0
	movw	1(%esi), %ax
	movw	%ax, -58(%ebp)
.LVL416:
	.loc 1 4229 0
	movl	$bt_dev+108, %eax
.LVL417:
	call	atomic_test_and_clear_bit
.LVL418:
	testl	%eax, %eax
	je	.L288
	.loc 1 4230 0
	pushl	%ecx
	pushl	%ecx
	pushl	$update_pending_id
	pushl	$2
	call	bt_keys_foreach
.LVL419:
	addl	$16, %esp
.L288:
	.loc 1 4232 0
	cmpb	$0, (%esi)
	je	.L289
	.loc 1 4233 0
	pushl	%edx
	pushl	%edx
	pushl	$2
	pushl	$0
	call	bt_conn_lookup_state_le
.LVL420:
	.loc 1 4236 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4233 0
	movl	%eax, %ebx
.LVL421:
	.loc 1 4236 0
	je	.L287
	.loc 1 4239 0
	movb	(%esi), %al
.LVL422:
	movb	%al, 11(%ebx)
	.loc 1 4240 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	bt_conn_set_state
.LVL423:
	.loc 1 4241 0
	movl	%ebx, (%esp)
	call	bt_conn_unref
.LVL424:
	jmp	.L336
.LVL425:
.L289:
	.loc 1 4244 0
	leal	4(%esi), %ebx
	leal	-35(%ebp), %edi
	movl	%ebx, %edx
	movl	%edi, %eax
	call	bt_addr_le_copy
.LVL426:
	.loc 1 4245 0
	movb	-35(%ebp), %al
	subl	$2, %eax
	cmpb	$1, %al
	ja	.L292
	.loc 1 4247 0
	movb	%al, -35(%ebp)
.LVL427:
.LBB396:
.LBB397:
	.loc 1 1455 0
	movl	17(%esi), %eax
.LBE397:
.LBE396:
	.loc 1 4249 0
	movb	$1, -42(%ebp)
.LBB399:
.LBB398:
	.loc 1 1455 0
	movl	%eax, -41(%ebp)
	movw	21(%esi), %ax
	movw	%ax, -37(%ebp)
.LVL428:
.LBE398:
.LBE399:
	jmp	.L293
.L292:
	.loc 1 4251 0
	leal	-42(%ebp), %eax
	movl	%ebx, %edx
	call	bt_addr_le_copy
.LVL429:
.L293:
	.loc 1 4253 0
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	%edi
	call	bt_conn_lookup_state_le
.LVL430:
	.loc 1 4254 0
	addl	$16, %esp
	cmpb	$1, 3(%esi)
	.loc 1 4253 0
	movl	%eax, %ebx
.LVL431:
	.loc 1 4254 0
	jne	.L294
.LVL432:
.LVL433:
.LBB400:
.LBB401:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-33
	pushl	$bt_dev+108
.LVL434:
	call	atomic_and
.LVL435:
.LBE401:
.LBE400:
	.loc 1 4256 0
	addl	$16, %esp
	testl	%ebx, %ebx
	jne	.L295
	.loc 1 4257 0
	subl	$12, %esp
	pushl	%edi
	call	bt_conn_add_le
.LVL436:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL437:
.L294:
	.loc 1 4260 0
	testl	%ebx, %ebx
	je	.L287
.LVL438:
.L295:
	.loc 1 4264 0
	movw	-58(%ebp), %ax
	.loc 1 4265 0
	movl	%edi, %edx
	.loc 1 4264 0
	movw	%ax, (%ebx)
	.loc 1 4265 0
	leal	64(%ebx), %eax
	call	bt_addr_le_copy
.LVL439:
	.loc 1 4266 0
	movw	23(%esi), %ax
	movw	%ax, 86(%ebx)
	.loc 1 4267 0
	movw	25(%esi), %ax
	movw	%ax, 92(%ebx)
	.loc 1 4268 0
	movw	27(%esi), %ax
	movw	%ax, 94(%ebx)
	.loc 1 4269 0
	movb	3(%esi), %al
	movb	%al, 3(%ebx)
	.loc 1 4270 0
	decb	%al
	jne	.L297
	.loc 1 4271 0
	leal	71(%ebx), %eax
	leal	-42(%ebp), %edx
	call	bt_addr_le_copy
.LVL440:
	.loc 1 4276 0
	leal	78(%ebx), %eax
	movl	$bt_dev, %edx
	call	bt_addr_le_copy
.LVL441:
	.loc 1 4278 0
	movl	$6, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL442:
	testl	%eax, %eax
	je	.L297
	.loc 1 4278 0 is_stmt 0 discriminator 1
	testb	$64, bt_dev+124
	je	.L297
	.loc 1 4283 0 is_stmt 1
	movl	$1, %eax
	call	set_advertise_enable
.LVL443:
.L297:
	.loc 1 4288 0
	pushl	%eax
	pushl	%eax
	pushl	$3
	pushl	%ebx
	call	bt_conn_set_state
.LVL444:
	.loc 1 4289 0
	addl	$16, %esp
	cmpb	$3, 12(%ebx)
	jne	.L299
	.loc 1 4292 0
	cmpb	$0, 3(%esi)
	je	.L300
	.loc 1 4292 0 is_stmt 0 discriminator 1
	testb	$8, bt_dev+112
	je	.L301
.L300:
.LVL445:
.LBB402:
.LBB403:
	.loc 1 4147 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$2
	pushl	$8214
	call	bt_hci_cmd_create
.LVL446:
	.loc 1 4149 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4147 0
	movl	%eax, %esi
.LVL447:
	.loc 1 4149 0
	je	.L301
	.loc 1 4152 0
	leal	8(%eax), %eax
.LVL448:
	pushl	%ecx
	pushl	%ecx
	pushl	$2
	pushl	%eax
	call	net_buf_simple_add
.LVL449:
	.loc 1 4153 0
	movw	(%ebx), %dx
	movw	%dx, (%eax)
	.loc 1 4154 0
	popl	%edi
	popl	%eax
.LVL450:
	pushl	%esi
	pushl	$8214
	call	bt_hci_cmd_send
.LVL451:
	jmp	.L334
.LVL452:
.L301:
.LBE403:
.LBE402:
	.loc 1 4299 0
	testb	$1, bt_dev+113
	je	.L302
	.loc 1 4300 0
	movl	%ebx, %eax
	call	hci_le_set_phy.isra.29
.LVL453:
	.loc 1 4301 0
	testl	%eax, %eax
	jne	.L302
.LVL454:
.LBB404:
.LBB405:
	.loc 1 875 0
	pushl	%edx
	pushl	%edx
	pushl	$128
.LVL455:
.L335:
.LBE405:
.LBE404:
	.loc 1 4302 0
	leal	4(%ebx), %eax
.LBB407:
.LBB406:
	.loc 1 875 0
	pushl	%eax
	call	atomic_or
.LVL456:
.L334:
	addl	$16, %esp
	jmp	.L299
.L302:
.LBE406:
.LBE407:
	.loc 1 4306 0
	testb	$32, bt_dev+112
	je	.L303
	.loc 1 4307 0
	movl	%ebx, %eax
	call	hci_le_set_data_len.isra.30
.LVL457:
	.loc 1 4308 0
	testl	%eax, %eax
	jne	.L303
.LVL458:
.LVL459:
.LBB408:
.LBB409:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$256
	jmp	.L335
.LVL460:
.L303:
.LBE409:
.LBE408:
	.loc 1 4313 0
	movl	%ebx, %eax
	call	update_conn_param
.LVL461:
.L299:
	.loc 1 4315 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_conn_unref
.LVL462:
	.loc 1 4316 0
	movl	$0, (%esp)
	call	bt_le_scan_update
.LVL463:
.L336:
	addl	$16, %esp
.L287:
	.loc 1 4319 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L305
	call	__stack_chk_fail
.LVL464:
.L305:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL465:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL466:
	ret
	.cfi_endproc
.LFE96:
	.size	le_enh_conn_complete, .-le_enh_conn_complete
	.section	.text.unlikely.le_enh_conn_complete
.LCOLDE32:
	.section	.text.le_enh_conn_complete
.LHOTE32:
	.section	.text.unlikely.le_conn_param_neg_reply,"ax",@progbits
.LCOLDB33:
	.section	.text.le_conn_param_neg_reply,"ax",@progbits
.LHOTB33:
	.type	le_conn_param_neg_reply, @function
le_conn_param_neg_reply:
.LFB102:
	.loc 1 4455 0
	.cfi_startproc
.LVL467:
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
	movl	%edx, %esi
	subl	$20, %esp
	.loc 1 4458 0
	pushl	$3
	pushl	$8225
	call	bt_hci_cmd_create
.LVL468:
	.loc 1 4460 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L339
	movl	%eax, %ebx
.LVL469:
	.loc 1 4463 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$3
	pushl	%eax
	call	net_buf_simple_add
.LVL470:
	.loc 1 4465 0
	movl	%esi, %ecx
	.loc 1 4464 0
	movw	%di, (%eax)
	.loc 1 4465 0
	movb	%cl, 2(%eax)
	.loc 1 4466 0
	popl	%edx
	popl	%ecx
	pushl	%ebx
	pushl	$8225
	call	bt_hci_cmd_send
.LVL471:
	addl	$16, %esp
	jmp	.L338
.LVL472:
.L339:
	.loc 1 4461 0
	movl	$-55, %eax
.LVL473:
.L338:
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
.LFE102:
	.size	le_conn_param_neg_reply, .-le_conn_param_neg_reply
	.section	.text.unlikely.le_conn_param_neg_reply
.LCOLDE33:
	.section	.text.le_conn_param_neg_reply
.LHOTE33:
	.section	.text.unlikely.hci_rx_thread,"ax",@progbits
.LCOLDB34:
	.section	.text.hci_rx_thread,"ax",@progbits
.LHOTB34:
	.type	hci_rx_thread, @function
hci_rx_thread:
.LFB155:
	.loc 1 5832 0
	.cfi_startproc
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
	.loc 1 5832 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.L424:
	.loc 1 5837 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$bt_dev+164
	call	net_buf_get
.LVL474:
	movl	%eax, -108(%ebp)
.LVL475:
.LBB488:
.LBB489:
	.loc 1 3038 0
	call	net_buf_user_data
.LVL476:
.LBE489:
.LBE488:
	.loc 1 5839 0
	movb	(%eax), %dl
	addl	$16, %esp
	cmpb	$1, %dl
	je	.L343
	cmpb	$3, %dl
	jne	.L523
.LVL477:
.LBB490:
.LBB491:
	.loc 1 4016 0
	movl	-108(%ebp), %edi
	movl	8(%edi), %edx
.LVL478:
	.loc 1 4021 0
	movw	(%edx), %bx
	.loc 1 4017 0
	movw	2(%edx), %si
.LVL479:
	.loc 1 4023 0
	movl	%ebx, %edx
.LVL480:
	andw	$4095, %dx
	movw	%dx, 2(%eax)
.LVL481:
	.loc 1 4024 0
	movl	%edi, %eax
	call	net_buf_user_data
.LVL482:
	movb	$-1, 1(%eax)
	.loc 1 4025 0
	pushl	%eax
	pushl	%eax
	movl	%edi, %eax
	pushl	$4
	addl	$8, %eax
	pushl	%eax
	call	net_buf_simple_pull
.LVL483:
	.loc 1 4027 0
	movl	-108(%ebp), %eax
	addl	$16, %esp
	cmpw	12(%eax), %si
	je	.L345
	.loc 1 4029 0
	subl	$12, %esp
	pushl	%eax
	jmp	.L530
.L345:
	.loc 1 4032 0
	movl	-108(%ebp), %eax
	call	net_buf_user_data
.LVL484:
	movzwl	2(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	bt_conn_lookup_handle
.LVL485:
	.loc 1 4033 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4032 0
	movl	%eax, %esi
.LVL486:
	.loc 1 4033 0
	je	.L523
	.loc 1 4038 0
	movl	-108(%ebp), %eax
.LVL487:
	.loc 1 4039 0
	shrw	$12, %bx
.LVL488:
	movzwl	%bx, %ebx
	.loc 1 4038 0
	call	net_buf_user_data
.LVL489:
	subl	$12, %esp
	movl	%eax, %edi
	pushl	%esi
	call	bt_conn_get_id
.LVL490:
	.loc 1 4039 0
	addl	$12, %esp
	.loc 1 4038 0
	movb	%al, 1(%edi)
	.loc 1 4039 0
	pushl	%ebx
	pushl	-108(%ebp)
	pushl	%esi
	call	bt_conn_recv
.LVL491:
	.loc 1 4040 0
	movl	%esi, (%esp)
	call	bt_conn_unref
.LVL492:
	jmp	.L531
.LVL493:
.L343:
.LBE491:
.LBE490:
.LBB492:
.LBB493:
	.loc 1 5159 0
	movl	-108(%ebp), %eax
	movl	8(%eax), %ebx
.LVL494:
	.loc 1 5162 0
	addl	$8, %eax
	pushl	%edi
	pushl	%edi
	pushl	$2
	pushl	%eax
	movl	%eax, -116(%ebp)
	call	net_buf_simple_pull
.LVL495:
	.loc 1 5163 0
	movb	(%ebx), %al
	addl	$16, %esp
	cmpb	$8, %al
	je	.L349
	ja	.L350
	cmpb	$5, %al
	je	.L351
	jmp	.L523
.L350:
	cmpb	$48, %al
	je	.L352
	cmpb	$62, %al
	je	.L353
	jmp	.L523
.L351:
	movl	-108(%ebp), %eax
	movl	8(%eax), %esi
.LVL496:
.LBB494:
.LBB495:
	.loc 1 4106 0
	cmpb	$0, (%esi)
	jne	.L523
	.loc 1 4109 0
	movzwl	1(%esi), %eax
.LVL497:
	subl	$12, %esp
	pushl	%eax
.LVL498:
	call	bt_conn_lookup_handle
.LVL499:
	.loc 1 4110 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4109 0
	movl	%eax, %ebx
.LVL500:
	.loc 1 4110 0
	je	.L355
	.loc 1 4114 0
	movb	3(%esi), %al
.LVL501:
.LVL502:
	movb	%al, 11(%ebx)
.LVL503:
	.loc 1 4118 0
	pushl	%esi
	pushl	%esi
	pushl	$0
	pushl	%ebx
	call	bt_conn_set_state
.LVL504:
	.loc 1 4120 0
	addl	$16, %esp
	cmpb	$0, 2(%ebx)
	.loc 1 4119 0
	movw	$0, (%ebx)
	.loc 1 4120 0
	jne	.L396
	.loc 1 4124 0
	leal	4(%ebx), %eax
	xorl	%edx, %edx
	call	atomic_test_bit
.LVL505:
	testl	%eax, %eax
	je	.L357
	.loc 1 4125 0
	pushl	%ecx
	pushl	%ecx
	pushl	$1
	pushl	%ebx
	call	bt_conn_set_state
.LVL506:
	.loc 1 4126 0
	movl	$0, (%esp)
	call	bt_le_scan_update
.LVL507:
	addl	$16, %esp
.L357:
	.loc 1 4130 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_conn_unref
.LVL508:
	addl	$16, %esp
.LVL509:
.L355:
	.loc 1 4132 0
	movl	$6, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL510:
	testl	%eax, %eax
	je	.L523
	.loc 1 4133 0
	movl	$5, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL511:
	.loc 1 4132 0
	testl	%eax, %eax
	jne	.L523
	.loc 1 4138 0
	movl	$1, %eax
	call	set_advertise_enable
.LVL512:
	jmp	.L523
.LVL513:
.L349:
	movl	-108(%ebp), %eax
.LBE495:
.LBE494:
.LBB496:
.LBB497:
	.loc 1 4781 0
	subl	$12, %esp
	movl	8(%eax), %esi
.LVL514:
	movzwl	1(%esi), %eax
.LVL515:
	pushl	%eax
.LVL516:
	call	bt_conn_lookup_handle
.LVL517:
	.loc 1 4782 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4781 0
	movl	%eax, %ebx
.LVL518:
	.loc 1 4782 0
	je	.L523
	.loc 1 4786 0
	cmpb	$0, (%esi)
	je	.L359
	.loc 1 4787 0
	cmpb	$0, 2(%eax)
	jne	.L396
	.loc 1 4788 0
	movb	8(%eax), %al
.LVL519:
	movb	%al, 9(%ebx)
	jmp	.L396
.LVL520:
.L359:
	.loc 1 4794 0
	cmpb	$0, 2(%ebx)
	.loc 1 4793 0
	movb	3(%esi), %al
.LVL521:
	movb	%al, 10(%ebx)
	.loc 1 4794 0
	jne	.L365
	.loc 1 4795 0
	testb	%al, %al
	je	.L536
	jmp	.L539
.LVL522:
.L352:
	movl	-108(%ebp), %eax
.LBE497:
.LBE496:
.LBB498:
.LBB499:
	.loc 1 4811 0
	subl	$12, %esp
	movl	8(%eax), %esi
.LVL523:
	movzwl	1(%esi), %eax
.LVL524:
	pushl	%eax
.LVL525:
	call	bt_conn_lookup_handle
.LVL526:
	.loc 1 4812 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4811 0
	movl	%eax, %ebx
.LVL527:
	.loc 1 4812 0
	je	.L523
	.loc 1 4816 0
	movzbl	(%esi), %eax
.LVL528:
	testb	%al, %al
	je	.L364
	.loc 1 4817 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	call	bt_l2cap_encrypt_change
.LVL529:
	jmp	.L528
.L364:
	.loc 1 4820 0
	cmpb	$0, 2(%ebx)
	jne	.L365
.LVL530:
.L539:
	.loc 1 4821 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_smp_update_keys
.LVL531:
.LBB500:
.LBB501:
	.loc 1 4756 0
	addl	$16, %esp
.LVL532:
.L536:
	cmpb	$0, 10(%ebx)
	jne	.L366
	.loc 1 4757 0
	movb	$1, 8(%ebx)
	jmp	.L365
.L366:
	movl	%ebx, %eax
	call	update_sec_level.part.15
.LVL533:
.L365:
.LBE501:
.LBE500:
	.loc 1 4824 0
	pushl	%eax
	pushl	%eax
	movzbl	(%esi), %eax
	pushl	%eax
	pushl	%ebx
	call	bt_l2cap_encrypt_change
.LVL534:
	.loc 1 4825 0
	movl	%ebx, (%esp)
	call	bt_conn_security_changed
.LVL535:
	.loc 1 4826 0
	movl	%ebx, (%esp)
	jmp	.L534
.LVL536:
.L353:
.LBE499:
.LBE498:
.LBB502:
.LBB503:
	.loc 1 5115 0
	movl	-108(%ebp), %eax
	movl	8(%eax), %ebx
.LVL537:
	.loc 1 5117 0
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	-116(%ebp)
	call	net_buf_simple_pull
.LVL538:
	.loc 1 5118 0
	movb	(%ebx), %al
	addl	$16, %esp
	decl	%eax
	cmpb	$11, %al
	ja	.L523
	movzbl	%al, %eax
	jmp	*.L368(,%eax,4)
	.section	.rodata.hci_rx_thread,"a",@progbits
	.align 4
	.align 4
.L368:
	.long	.L367
	.long	.L369
	.long	.L370
	.long	.L371
	.long	.L372
	.long	.L373
	.long	.L374
	.long	.L375
	.long	.L376
	.long	.L377
	.long	.L523
	.long	.L378
	.section	.text.hci_rx_thread
.L367:
	movl	-108(%ebp), %eax
.LBB504:
.LBB505:
	.loc 1 4333 0
	leal	-70(%ebp), %ebx
.LVL539:
	.loc 1 4337 0
	leal	-86(%ebp), %edi
	movl	8(%eax), %edx
.LVL540:
	.loc 1 4326 0
	movb	(%edx), %al
.LVL541:
	.loc 1 4333 0
	addl	$4, %edx
.LVL542:
	.loc 1 4326 0
	movb	%al, -74(%ebp)
.LVL543:
	.loc 1 4327 0
	movw	-3(%edx), %ax
	movw	%ax, -73(%ebp)
	.loc 1 4328 0
	movb	-1(%edx), %al
	movb	%al, -71(%ebp)
	.loc 1 4329 0
	movw	7(%edx), %ax
	movw	%ax, -51(%ebp)
	.loc 1 4330 0
	movw	9(%edx), %ax
	movw	%ax, -49(%ebp)
	.loc 1 4331 0
	movw	11(%edx), %ax
	movw	%ax, -47(%ebp)
	.loc 1 4332 0
	movb	13(%edx), %al
	movb	%al, -45(%ebp)
	.loc 1 4333 0
	movl	%ebx, %eax
	call	bt_addr_le_copy
.LVL544:
.LBB506:
.LBB507:
	.loc 1 3914 0
	subl	$12, %esp
.LBE507:
.LBE506:
	.loc 1 4337 0
	xorl	%eax, %eax
	movl	$6, %ecx
	rep stosb
.LVL545:
.LBB510:
.LBB508:
	.loc 1 3914 0
	pushl	%ebx
.LBE508:
.LBE510:
.LBB511:
.LBB512:
	.loc 1 1455 0
	movl	$0, -63(%ebp)
	movw	$0, -59(%ebp)
.LVL546:
.LBE512:
.LBE511:
.LBB513:
.LBB509:
	.loc 1 3914 0
	call	bt_keys_find_irk
.LVL547:
	.loc 1 3915 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L379
.LVL548:
.LBE509:
.LBE513:
	.loc 1 4340 0
	cmpl	%ebx, %eax
	je	.L379
.LVL549:
.LBB514:
.LBB515:
	.loc 1 1455 0
	movl	-69(%ebp), %edx
	movl	%edx, -57(%ebp)
	movw	-65(%ebp), %dx
	movw	%dx, -53(%ebp)
.LVL550:
.LBE515:
.LBE514:
	.loc 1 4342 0
	movl	%eax, %edx
	movl	%ebx, %eax
	call	bt_addr_le_copy
.LVL551:
	.loc 1 4343 0
	addb	$2, -70(%ebp)
	jmp	.L380
.L379:
	.loc 1 4345 0
	leal	-80(%ebp), %edi
	movl	$6, %ecx
	xorl	%eax, %eax
.LBB516:
.LBB517:
	.loc 1 1455 0
	movl	$0, -57(%ebp)
	movw	$0, -53(%ebp)
.LBE517:
.LBE516:
	.loc 1 4345 0
	rep stosb
.LVL552:
.L380:
	.loc 1 4347 0
	leal	-74(%ebp), %eax
	jmp	.L529
.LVL553:
.L377:
.LBE505:
.LBE504:
	.loc 1 5123 0
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
.LVL554:
.L529:
	call	le_enh_conn_complete
.LVL555:
	jmp	.L523
.LVL556:
.L370:
	movl	-108(%ebp), %eax
.LBB518:
.LBB519:
	.loc 1 4520 0
	subl	$12, %esp
	movl	8(%eax), %esi
.LVL557:
	movzwl	1(%esi), %eax
.LVL558:
	pushl	%eax
.LVL559:
	call	bt_conn_lookup_handle
.LVL560:
	.loc 1 4521 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4520 0
	movl	%eax, %ebx
.LVL561:
	.loc 1 4521 0
	je	.L523
	.loc 1 4525 0
	cmpb	$0, (%esi)
	jne	.L396
	.loc 1 4526 0
	movw	3(%esi), %ax
.LVL562:
	.loc 1 4529 0
	subl	$12, %esp
	.loc 1 4526 0
	movw	%ax, 86(%ebx)
	.loc 1 4527 0
	movw	5(%esi), %ax
	movw	%ax, 92(%ebx)
	.loc 1 4528 0
	movw	7(%esi), %ax
	movw	%ax, 94(%ebx)
	.loc 1 4529 0
	pushl	%ebx
	call	notify_le_param_updated
.LVL563:
	jmp	.L538
.LVL564:
.L371:
	movl	-108(%ebp), %eax
.LBE519:
.LBE518:
.LBB520:
.LBB521:
	.loc 1 4354 0
	subl	$12, %esp
	movl	8(%eax), %esi
.LVL565:
	movzwl	1(%esi), %eax
.LVL566:
	pushl	%eax
.LVL567:
	call	bt_conn_lookup_handle
.LVL568:
	.loc 1 4355 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4354 0
	movl	%eax, %ebx
.LVL569:
	.loc 1 4355 0
	je	.L523
	.loc 1 4359 0
	cmpb	$0, (%esi)
	jne	.L382
	.loc 1 4360 0
	movl	3(%esi), %eax
.LVL570:
	movl	7(%esi), %edx
	movl	%eax, 96(%ebx)
	movl	%edx, 100(%ebx)
.L382:
	.loc 1 4363 0
	testb	$1, bt_dev+113
	je	.L383
	testb	$1, 97(%ebx)
	je	.L383
.LBB522:
	.loc 1 4366 0
	movl	%ebx, %eax
	call	hci_le_set_phy.isra.29
.LVL571:
	.loc 1 4367 0
	testl	%eax, %eax
	jne	.L383
.LVL572:
.LVL573:
.LBB523:
.LBB524:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$128
	jmp	.L525
.LVL574:
.L383:
.LBE524:
.LBE523:
.LBE522:
	.loc 1 4372 0
	testb	$32, bt_dev+112
	je	.L392
	testb	$32, 96(%ebx)
	je	.L392
.LBB525:
	.loc 1 4375 0
	movl	%ebx, %eax
	call	hci_le_set_data_len.isra.30
.LVL575:
	.loc 1 4376 0
	testl	%eax, %eax
	jne	.L392
.LVL576:
.LVL577:
.LBB526:
.LBB527:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$256
.LVL578:
.L525:
.LBE527:
.LBE526:
	.loc 1 4377 0
	leal	4(%ebx), %eax
.LBB529:
.LBB528:
	.loc 1 875 0
	pushl	%eax
.LVL579:
.L542:
	call	atomic_or
.LVL580:
	jmp	.L538
.L384:
.LVL581:
.L373:
	movl	-108(%ebp), %eax
.LBE528:
.LBE529:
.LBE525:
.LBE521:
.LBE520:
.LBB530:
.LBB531:
	.loc 1 4498 0
	subl	$12, %esp
	movl	8(%eax), %eax
.LVL582:
	.loc 1 4494 0
	movw	2(%eax), %dx
	.loc 1 4493 0
	movzwl	(%eax), %esi
	.loc 1 4494 0
	movw	%dx, -94(%ebp)
	.loc 1 4495 0
	movw	4(%eax), %dx
	.loc 1 4493 0
	movw	%si, -112(%ebp)
.LVL583:
	.loc 1 4495 0
	movw	%dx, -92(%ebp)
	.loc 1 4496 0
	movw	6(%eax), %dx
	.loc 1 4497 0
	movw	8(%eax), %ax
.LVL584:
	.loc 1 4498 0
	pushl	%esi
	.loc 1 4496 0
	movw	%dx, -90(%ebp)
	.loc 1 4497 0
	movw	%ax, -88(%ebp)
	.loc 1 4498 0
	call	bt_conn_lookup_handle
.LVL585:
	.loc 1 4499 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4498 0
	movl	%eax, %ebx
.LVL586:
	.loc 1 4499 0
	jne	.L386
	.loc 1 4501 0
	movl	$2, %edx
	movl	%esi, %eax
.LVL587:
	call	le_conn_param_neg_reply
.LVL588:
	jmp	.L523
.LVL589:
.L386:
	.loc 1 4504 0
	leal	-94(%ebp), %eax
.LVL590:
	pushl	%edi
	pushl	%edi
	pushl	%eax
	pushl	%ebx
	call	le_param_req
.LVL591:
	addl	$16, %esp
	testb	%al, %al
	jne	.L388
	.loc 1 4505 0
	movl	$30, %edx
	movl	%esi, %eax
	call	le_conn_param_neg_reply
.LVL592:
	jmp	.L396
.L388:
.LVL593:
.LBB532:
.LBB533:
	.loc 1 4473 0
	pushl	%ecx
	pushl	%ecx
	pushl	$14
	pushl	$8224
	call	bt_hci_cmd_create
.LVL594:
	.loc 1 4474 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4473 0
	movl	%eax, %esi
.LVL595:
	.loc 1 4474 0
	je	.L396
.LVL596:
	.loc 1 4477 0
	pushl	%eax
	pushl	%eax
	leal	8(%esi), %eax
	pushl	$14
	pushl	%eax
	call	net_buf_simple_add
.LVL597:
	movl	%eax, %edx
.LVL598:
	.loc 1 4478 0
	movl	$14, %ecx
	xorl	%eax, %eax
.LVL599:
	movl	%edx, %edi
	rep stosb
	.loc 1 4479 0
	movl	-112(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 4480 0
	movw	-94(%ebp), %ax
	movw	%ax, 2(%edx)
	.loc 1 4481 0
	movl	-92(%ebp), %eax
	movw	%ax, 4(%edx)
	.loc 1 4482 0
	movw	-90(%ebp), %ax
	movw	%ax, 6(%edx)
	.loc 1 4483 0
	movl	-88(%ebp), %eax
	movw	%ax, 8(%edx)
	.loc 1 4484 0
	popl	%eax
	popl	%edx
.LVL600:
	pushl	%esi
	pushl	$8224
	jmp	.L526
.LVL601:
.L374:
.LBE533:
.LBE532:
.LBE531:
.LBE530:
.LBB534:
.LBB535:
	.loc 1 4388 0
	movl	-108(%ebp), %eax
	.loc 1 4390 0
	subl	$12, %esp
	.loc 1 4388 0
	movl	8(%eax), %eax
	.loc 1 4390 0
	movzwl	(%eax), %eax
	pushl	%eax
.LVL602:
	call	bt_conn_lookup_handle
.LVL603:
	.loc 1 4391 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4390 0
	movl	%eax, %ebx
.LVL604:
	.loc 1 4391 0
	je	.L523
	.loc 1 4395 0
	leal	4(%eax), %eax
.LVL605:
	movl	$8, %edx
	call	atomic_test_and_clear_bit
.LVL606:
	testl	%eax, %eax
	je	.L396
	jmp	.L392
.L390:
.LVL607:
.L378:
.LBE535:
.LBE534:
.LBB536:
.LBB537:
	.loc 1 4405 0
	movl	-108(%ebp), %eax
	.loc 1 4407 0
	subl	$12, %esp
	.loc 1 4405 0
	movl	8(%eax), %eax
	.loc 1 4407 0
	movzwl	1(%eax), %eax
	pushl	%eax
.LVL608:
	call	bt_conn_lookup_handle
.LVL609:
	.loc 1 4408 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4407 0
	movl	%eax, %ebx
.LVL610:
	.loc 1 4408 0
	je	.L523
	.loc 1 4413 0
	leal	4(%eax), %esi
	movl	$7, %edx
	movl	%esi, %eax
.LVL611:
	call	atomic_test_and_clear_bit
.LVL612:
	testl	%eax, %eax
	je	.L396
	.loc 1 4416 0
	testb	$32, bt_dev+112
	je	.L392
	testb	$32, 96(%ebx)
	je	.L392
.LBB538:
	.loc 1 4419 0
	movl	%ebx, %eax
	call	hci_le_set_data_len.isra.30
.LVL613:
	.loc 1 4420 0
	testl	%eax, %eax
	jne	.L392
.LVL614:
.LVL615:
.LBB539:
.LBB540:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$256
	pushl	%esi
	jmp	.L542
.LVL616:
.L392:
.L391:
.LBE540:
.LBE539:
.LBE538:
	.loc 1 4425 0
	movl	%ebx, %eax
	call	update_conn_param
.LVL617:
	jmp	.L396
.LVL618:
.L372:
	movl	-108(%ebp), %eax
.LBE537:
.LBE536:
.LBB541:
.LBB542:
	.loc 1 4837 0
	subl	$12, %esp
	movl	8(%eax), %esi
.LVL619:
	movzwl	(%esi), %eax
.LVL620:
	pushl	%eax
.LVL621:
	call	bt_conn_lookup_handle
.LVL622:
	.loc 1 4838 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4837 0
	movl	%eax, %ebx
.LVL623:
	.loc 1 4838 0
	je	.L523
	.loc 1 4842 0
	movl	6(%esi), %eax
.LVL624:
	orl	2(%esi), %eax
	jne	.L394
	cmpw	$0, 10(%esi)
	jne	.L394
	pushl	%eax
	pushl	%eax
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	call	bt_smp_get_tk
.LVL625:
	addl	$16, %esp
	testb	%al, %al
	je	.L394
.LBB543:
	.loc 1 4844 0
	pushl	%edi
	pushl	%edi
	pushl	$18
	pushl	$8218
	call	bt_hci_cmd_create
.LVL626:
	.loc 1 4846 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4844 0
	movl	%eax, %edi
	.loc 1 4846 0
	je	.L396
	.loc 1 4850 0
	pushl	%eax
	pushl	%eax
	leal	8(%edi), %eax
	pushl	$18
	pushl	%eax
	call	net_buf_simple_add
.LVL627:
	.loc 1 4851 0
	movw	(%esi), %dx
	movw	%dx, (%eax)
	.loc 1 4852 0
	movl	-32(%ebp), %edx
	movl	-36(%ebp), %ecx
	movl	-40(%ebp), %esi
.LVL628:
	movl	%edx, -112(%ebp)
	movl	-44(%ebp), %edx
	movl	%ecx, 10(%eax)
	movl	-112(%ebp), %ecx
	movl	%esi, 6(%eax)
	movl	%edx, 2(%eax)
	movl	%ecx, 14(%eax)
	.loc 1 4853 0
	popl	%edx
	popl	%ecx
	pushl	%edi
	jmp	.L533
.LVL629:
.L394:
.LBE543:
	.loc 1 4856 0
	cmpl	$0, 104(%ebx)
	jne	.L397
	.loc 1 4857 0
	leal	64(%ebx), %edi
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	$32
	call	bt_keys_find
.LVL630:
	.loc 1 4858 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4857 0
	movl	%eax, 104(%ebx)
	.loc 1 4858 0
	jne	.L397
	.loc 1 4859 0
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	$1
	call	bt_keys_find
.LVL631:
	.loc 1 4863 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4859 0
	movl	%eax, 104(%ebx)
	.loc 1 4863 0
	je	.L398
.L425:
	movl	12(%eax), %edx
	testb	$32, %dl
	je	.L399
	movl	6(%esi), %ecx
	orl	2(%esi), %ecx
	jne	.L399
	.loc 1 4864 0
	cmpw	$0, 10(%esi)
	jne	.L399
.LBB544:
	.loc 1 4866 0
	pushl	%eax
	pushl	%eax
	pushl	$18
	pushl	$8218
	call	bt_hci_cmd_create
.LVL632:
	.loc 1 4868 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4866 0
	movl	%eax, %edx
	.loc 1 4868 0
	je	.L396
	.loc 1 4872 0
	pushl	%eax
	pushl	%eax
	leal	8(%edx), %eax
	pushl	$18
	movl	%edx, -112(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL633:
	.loc 1 4873 0
	movw	(%esi), %cx
	.loc 1 4874 0
	addl	$2, %eax
.LVL634:
	.loc 1 4873 0
	movw	%cx, -2(%eax)
	.loc 1 4875 0
	movl	104(%ebx), %esi
.LVL635:
	.loc 1 4874 0
	movzbl	7(%esi), %ecx
	addl	$26, %esi
	jmp	.L541
.LVL636:
.L399:
.LBE544:
	.loc 1 4883 0
	andb	$1, %dl
	je	.L398
	movl	6(%esi), %edi
	cmpl	%edi, 72(%eax)
	movl	68(%eax), %edx
	jne	.L398
	cmpl	2(%esi), %edx
	jne	.L398
	.loc 1 4884 0
	movw	10(%esi), %di
	cmpw	%di, 76(%eax)
	jne	.L398
.LBB545:
	.loc 1 4888 0
	pushl	%eax
	pushl	%eax
	pushl	$18
	pushl	$8218
	call	bt_hci_cmd_create
.LVL637:
	.loc 1 4890 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4888 0
	movl	%eax, %edx
.LVL638:
	.loc 1 4890 0
	je	.L396
	.loc 1 4894 0
	leal	8(%eax), %eax
.LVL639:
	pushl	%edi
	pushl	%edi
	pushl	$18
	movl	%edx, -112(%ebp)
	pushl	%eax
	call	net_buf_simple_add
.LVL640:
	.loc 1 4895 0
	movw	(%esi), %cx
	.loc 1 4896 0
	addl	$2, %eax
.LVL641:
	.loc 1 4895 0
	movw	%cx, -2(%eax)
	.loc 1 4897 0
	movl	104(%ebx), %esi
.LVL642:
	.loc 1 4896 0
	movzbl	7(%esi), %ecx
	addl	$78, %esi
.LVL643:
.L541:
	movl	%eax, %edi
	.loc 1 4898 0
	addl	$16, %esp
	.loc 1 4896 0
	rep movsb
	.loc 1 4898 0
	movl	104(%ebx), %ecx
	movl	-112(%ebp), %edx
	movb	7(%ecx), %cl
	cmpb	$15, %cl
	ja	.L403
	.loc 1 4899 0
	movzbl	%cl, %esi
	movl	$16, %ecx
	subl	%esi, %ecx
	addl	%eax, %esi
	xorl	%eax, %eax
	movl	%esi, %edi
	rep stosb
.L403:
	.loc 1 4902 0
	pushl	%esi
	pushl	%esi
	pushl	%edx
.L533:
	pushl	$8218
	jmp	.L526
.LVL644:
.L398:
.LBE545:
	.loc 1 4905 0
	pushl	%ecx
	pushl	%ecx
	pushl	$2
	pushl	$8219
	call	bt_hci_cmd_create
.LVL645:
	.loc 1 4906 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4905 0
	movl	%eax, %edi
	.loc 1 4906 0
	je	.L396
	.loc 1 4910 0
	pushl	%eax
	pushl	%eax
	leal	8(%edi), %eax
	pushl	$2
	pushl	%eax
	call	net_buf_simple_add
.LVL646:
	.loc 1 4911 0
	movw	(%esi), %dx
	movw	%dx, (%eax)
	.loc 1 4912 0
	popl	%eax
.LVL647:
	popl	%edx
	pushl	%edi
	pushl	$8219
.LVL648:
.L526:
	call	bt_hci_cmd_send
.LVL649:
.L538:
	addl	$16, %esp
.LVL650:
.L396:
	.loc 1 4914 0
	subl	$12, %esp
	pushl	%ebx
.L534:
	call	bt_conn_unref
.LVL651:
	jmp	.L528
.LVL652:
.L375:
	movl	-108(%ebp), %eax
	movl	8(%eax), %ebx
.LVL653:
.LVL654:
.LBE542:
.LBE541:
.LBB547:
.LBB548:
.LBB549:
.LBB550:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-17
	pushl	$bt_dev+108
.LVL655:
	call	atomic_and
.LVL656:
.LBE550:
.LBE549:
	.loc 1 4922 0
	addl	$16, %esp
	cmpb	$0, (%ebx)
	jne	.L404
	.loc 1 4923 0
	movl	$pub_key, %edi
	leal	1(%ebx), %esi
	movl	$16, %ecx
	rep movsl
.LVL657:
.LBB551:
.LBB552:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$8
	pushl	$bt_dev+108
.LVL658:
	call	atomic_or
.LVL659:
	addl	$16, %esp
.LVL660:
.L404:
.LBE552:
.LBE551:
	.loc 1 4926 0
	movl	pub_key_cb, %esi
.LVL661:
	.loc 1 4927 0
	leal	1(%ebx), %edi
.L405:
	.loc 1 4926 0
	testl	%esi, %esi
	je	.L523
	.loc 1 4927 0
	cmpb	$0, (%ebx)
	movl	$0, %eax
	cmove	%edi, %eax
	subl	$12, %esp
	pushl	%eax
	call	*(%esi)
.LVL662:
	.loc 1 4926 0
	movl	4(%esi), %esi
.LVL663:
	addl	$16, %esp
	jmp	.L405
.LVL664:
.L376:
.LBE548:
.LBE547:
.LBB553:
.LBB554:
	.loc 1 4936 0
	movl	dh_key_cb, %edx
	movl	-108(%ebp), %eax
	testl	%edx, %edx
	movl	8(%eax), %ecx
.LVL665:
	je	.L523
	.loc 1 4937 0
	cmpb	$0, (%ecx)
	leal	1(%ecx), %eax
.LVL666:
	movl	$0, %ecx
.LVL667:
	cmovne	%ecx, %eax
	subl	$12, %esp
	pushl	%eax
.LVL668:
	call	*%edx
.LVL669:
	.loc 1 4940 0
	movl	$0, dh_key_cb
.LVL670:
.L528:
	addl	$16, %esp
	jmp	.L523
.LVL671:
.L369:
.LBE554:
.LBE553:
.LBB555:
.LBB556:
	.loc 1 5084 0
	subl	$12, %esp
	pushl	-116(%ebp)
	call	net_buf_simple_pull_u8
.LVL672:
	movb	%al, -121(%ebp)
.LBB557:
.LBB558:
.LBB559:
.LBB560:
	.loc 1 1370 0
	movl	-108(%ebp), %eax
.LVL673:
.LBE560:
.LBE559:
.LBE558:
.LBE557:
	.loc 1 5084 0
	addl	$16, %esp
.LBB584:
.LBB571:
.LBB564:
.LBB561:
	.loc 1 1370 0
	addl	$16, %eax
	movl	%eax, -128(%ebp)
.LVL674:
.L409:
.LBE561:
.LBE564:
.LBE571:
.LBE584:
	.loc 1 5087 0
	cmpb	$0, -121(%ebp)
	je	.L523
.LBB585:
	.loc 1 5090 0
	movl	-108(%ebp), %eax
	movl	8(%eax), %eax
	movl	%eax, -112(%ebp)
.LVL675:
.LVL676:
	.loc 1 5091 0
	pushl	%eax
	pushl	%eax
	pushl	$9
	pushl	-116(%ebp)
	call	net_buf_simple_pull
.LVL677:
	.loc 1 5092 0
	movl	-112(%ebp), %eax
	movl	-112(%ebp), %edi
	.loc 1 5094 0
	addl	$16, %esp
	.loc 1 5092 0
	movzbl	8(%eax), %eax
	leal	1(%edi), %esi
	movsbl	9(%edi,%eax), %ebx
.LVL678:
	.loc 1 5094 0
	movb	1(%edi), %al
	movb	%al, -120(%ebp)
	subl	$2, %eax
	cmpb	$1, %al
	ja	.L410
	.loc 1 5096 0
	leal	-74(%ebp), %eax
	movl	%esi, %edx
	call	bt_addr_le_copy
.LVL679:
	.loc 1 5097 0
	subb	$2, -74(%ebp)
	jmp	.L411
.L410:
.LVL680:
.LBB572:
.LBB573:
.LBB574:
	.loc 1 3914 0
	subl	$12, %esp
	pushl	%esi
	call	bt_keys_find_irk
.LVL681:
	.loc 1 3915 0
	addl	$16, %esp
	.loc 1 3917 0
	testl	%eax, %eax
	cmove	%esi, %eax
.LVL682:
	movl	%eax, %edx
.LVL683:
.LBE574:
.LBE573:
.LBE572:
	.loc 1 5099 0
	leal	-74(%ebp), %eax
	call	bt_addr_le_copy
.LVL684:
.L411:
	.loc 1 5101 0
	cmpl	$0, scan_dev_found_cb
	je	.L413
.LVL685:
.LBB575:
.LBB565:
.LBB566:
	.loc 1 1364 0
	subl	$12, %esp
	pushl	-116(%ebp)
	call	net_buf_simple_headroom
.LVL686:
	movl	%eax, %esi
	.loc 1 1365 0
	movl	-108(%ebp), %eax
.LBE566:
.LBE565:
	.loc 1 5104 0
	movl	-108(%ebp), %ecx
.LBB568:
.LBB562:
	.loc 1 1370 0
	movzwl	%si, %esi
.LBE562:
.LBE568:
.LBB569:
.LBB567:
	.loc 1 1365 0
	movl	12(%eax), %edi
.LVL687:
.LBE567:
.LBE569:
	.loc 1 5104 0
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %eax
	movw	%ax, 12(%ecx)
	.loc 1 5105 0
	movl	-112(%ebp), %eax
	pushl	-116(%ebp)
	movzbl	(%eax), %eax
	pushl	%eax
	leal	-74(%ebp), %eax
	pushl	%ebx
	pushl	%eax
	call	*scan_dev_found_cb
.LVL688:
.LBB570:
.LBB563:
	.loc 1 1370 0
	addl	-128(%ebp), %esi
	movl	-108(%ebp), %eax
	.loc 1 1371 0
	addl	$32, %esp
	movw	%di, 12(%eax)
.LVL689:
	.loc 1 1370 0
	movl	%esi, 8(%eax)
.L413:
.LBE563:
.LBE570:
.LBE575:
	.loc 1 5109 0
	movl	-112(%ebp), %eax
.LBB576:
.LBB577:
	.loc 1 4537 0
	movl	$8, %edx
.LBE577:
.LBE576:
	.loc 1 5109 0
	movb	(%eax), %bl
.LVL690:
.LBB582:
.LBB580:
	.loc 1 4537 0
	movl	$bt_dev+108, %eax
.LVL691:
	call	atomic_test_bit
.LVL692:
	.loc 1 4540 0
	cmpb	$1, %bl
	ja	.L416
	testl	%eax, %eax
	jne	.L416
	.loc 1 4543 0
	pushl	%eax
	pushl	%eax
	leal	-74(%ebp), %eax
.LVL693:
	pushl	$1
	pushl	%eax
	call	bt_conn_lookup_state_le
.LVL694:
	.loc 1 4544 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4543 0
	movl	%eax, %ebx
.LVL695:
	.loc 1 4544 0
	je	.L416
	.loc 1 4547 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
.LVL696:
	call	atomic_test_bit
.LVL697:
	testl	%eax, %eax
	jne	.L418
.L422:
	.loc 1 4557 0
	movl	$2, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL698:
	testl	%eax, %eax
	je	.L420
	.loc 1 4558 0
	movl	$bt_dev+1, %eax
	call	set_random_address
.LVL699:
	jmp	.L420
.L418:
	.loc 1 4548 0
	xorl	%eax, %eax
	call	set_le_scan_enable
.LVL700:
	.loc 1 4547 0
	testl	%eax, %eax
	jne	.L421
	jmp	.L422
.L420:
	.loc 1 4560 0
	leal	71(%ebx), %eax
	movl	$bt_dev, %edx
	call	bt_addr_le_copy
.LVL701:
.LBE580:
.LBE582:
	.loc 1 5109 0
	movl	-112(%ebp), %eax
	leal	1(%eax), %edx
.LBB583:
.LBB581:
	.loc 1 4562 0
	leal	78(%ebx), %eax
	call	bt_addr_le_copy
.LVL702:
.LBB578:
.LBB579:
	.loc 1 4082 0
	pushl	%edi
	pushl	%edi
	pushl	$25
	pushl	$8205
	call	bt_hci_cmd_create
.LVL703:
	.loc 1 4083 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4082 0
	movl	%eax, -120(%ebp)
.LVL704:
	.loc 1 4083 0
	je	.L421
	.loc 1 4086 0
	addl	$8, %eax
.LVL705:
	pushl	%esi
	pushl	%esi
	pushl	$25
	pushl	%eax
	call	net_buf_simple_add
.LVL706:
	movl	%eax, %esi
.LVL707:
	.loc 1 4087 0
	movl	$25, %ecx
	xorl	%eax, %eax
.LVL708:
	movl	%esi, %edi
	.loc 1 4090 0
	leal	78(%ebx), %edx
	.loc 1 4087 0
	rep stosb
	.loc 1 4090 0
	leal	5(%esi), %eax
	.loc 1 4088 0
	movw	$96, (%esi)
	.loc 1 4089 0
	movw	$96, 2(%esi)
	.loc 1 4090 0
	call	bt_addr_le_copy
.LVL709:
	.loc 1 4091 0
	movb	71(%ebx), %al
	.loc 1 4096 0
	addl	$12, %esp
	.loc 1 4091 0
	movb	%al, 12(%esi)
	.loc 1 4092 0
	movl	88(%ebx), %eax
	movw	%ax, 13(%esi)
	.loc 1 4093 0
	movw	90(%ebx), %ax
	movw	%ax, 15(%esi)
	.loc 1 4094 0
	movl	92(%ebx), %eax
	movw	%ax, 17(%esi)
	.loc 1 4095 0
	movw	94(%ebx), %ax
	movw	%ax, 19(%esi)
	.loc 1 4096 0
	pushl	$0
	pushl	-120(%ebp)
	pushl	$8205
	call	bt_hci_cmd_send_sync
.LVL710:
.LBE579:
.LBE578:
	.loc 1 4563 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L421
	.loc 1 4566 0
	pushl	%ecx
	pushl	%ecx
	pushl	$2
	pushl	%ebx
	call	bt_conn_set_state
.LVL711:
	.loc 1 4567 0
	movl	%ebx, (%esp)
	call	bt_conn_unref
.LVL712:
	jmp	.L527
.L421:
.LDL1:
	.loc 1 4570 0
	movb	$31, 11(%ebx)
	.loc 1 4571 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	%ebx
	call	bt_conn_set_state
.LVL713:
	.loc 1 4572 0
	movl	%ebx, (%esp)
	call	bt_conn_unref
.LVL714:
	.loc 1 4573 0
	movl	$0, (%esp)
	call	bt_le_scan_update
.LVL715:
.L527:
	addl	$16, %esp
.LVL716:
.L416:
.LBE581:
.LBE583:
	.loc 1 5110 0
	pushl	%eax
	pushl	%eax
	movl	-112(%ebp), %eax
	movzbl	8(%eax), %eax
	incl	%eax
	pushl	%eax
	pushl	-116(%ebp)
	call	net_buf_simple_pull
.LVL717:
	decb	-121(%ebp)
.LVL718:
	addl	$16, %esp
	jmp	.L409
.LVL719:
.L523:
.LBE585:
.LBE556:
.LBE555:
.LBE503:
.LBE502:
.LBE493:
.LBE492:
	.loc 1 5848 0
	subl	$12, %esp
	pushl	-108(%ebp)
.L530:
	call	net_buf_unref
.LVL720:
.L531:
	.loc 1 5849 0
	addl	$16, %esp
	.loc 1 5851 0
	call	k_yield
.LVL721:
	.loc 1 5852 0
	jmp	.L424
.LVL722:
.L397:
.LBB590:
.LBB589:
.LBB588:
.LBB587:
.LBB586:
.LBB546:
	.loc 1 4863 0
	movl	104(%ebx), %eax
	jmp	.L425
.LBE546:
.LBE586:
.LBE587:
.LBE588:
.LBE589:
.LBE590:
	.cfi_endproc
.LFE155:
	.size	hci_rx_thread, .-hci_rx_thread
	.section	.text.unlikely.hci_rx_thread
.LCOLDE34:
	.section	.text.hci_rx_thread
.LHOTE34:
	.section	.text.unlikely.hci_tx_thread,"ax",@progbits
.LCOLDB35:
	.section	.text.hci_tx_thread,"ax",@progbits
.LHOTB35:
	.type	hci_tx_thread, @function
hci_tx_thread:
.LFB129:
	.loc 1 5259 0
	.cfi_startproc
.LVL723:
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
.L553:
.LBB597:
	.loc 1 5270 0
	subl	$12, %esp
	.loc 1 5267 0
	andb	$15, events.5664+13
.LVL724:
	.loc 1 5273 0
	movl	$events.5664, %esi
	.loc 1 5270 0
	pushl	$events.5664+20
	call	bt_conn_prepare_events
.LVL725:
	leal	1(%eax), %ebx
.LVL726:
	.loc 1 5273 0
	addl	$12, %esp
	pushl	$-1
	pushl	%ebx
	pushl	$events.5664
	call	k_poll
.LVL727:
	addl	$16, %esp
.LVL728:
.L544:
.LBB598:
.LBB599:
	.loc 1 5217 0
	testl	%ebx, %ebx
	je	.L559
	.loc 1 5219 0
	movb	13(%esi), %al
	shrb	$4, %al
	cmpb	$4, %al
	jne	.L545
	.loc 1 5223 0
	movb	12(%esi), %al
	testb	%al, %al
	jne	.L547
.LBB600:
.LBB601:
	.loc 1 5187 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	$bt_dev+188
	call	net_buf_get
.LVL729:
	.loc 1 5190 0
	popl	%ecx
	.loc 1 5187 0
	movl	%eax, %edi
.LVL730:
	.loc 1 5190 0
	popl	%eax
.LVL731:
	pushl	$-1
	pushl	$bt_dev+148
	call	k_sem_take
.LVL732:
	.loc 1 5191 0
	movl	bt_dev+160, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L548
	.loc 1 5193 0
	subl	$12, %esp
	pushl	%eax
	call	net_buf_unref
.LVL733:
	.loc 1 5194 0
	movl	$0, bt_dev+160
	addl	$16, %esp
.L548:
	.loc 1 5198 0
	subl	$12, %esp
	pushl	%edi
	call	net_buf_ref
.LVL734:
	.loc 1 5200 0
	movl	%edi, (%esp)
	.loc 1 5198 0
	movl	%eax, bt_dev+160
	.loc 1 5200 0
	call	bt_send
.LVL735:
	.loc 1 5201 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L545
	.loc 1 5203 0
	subl	$12, %esp
	pushl	$bt_dev+148
	call	k_sem_give
.LVL736:
	.loc 1 5204 0
	movl	%edi, %eax
	call	net_buf_user_data
.LVL737:
	movzwl	2(%eax), %eax
	xorl	%ecx, %ecx
	movl	$31, %edx
	call	hci_cmd_done
.LVL738:
	.loc 1 5207 0
	popl	%eax
	pushl	bt_dev+160
	call	net_buf_unref
.LVL739:
	.loc 1 5211 0
	movl	%edi, (%esp)
	.loc 1 5208 0
	movl	$0, bt_dev+160
	.loc 1 5211 0
	call	net_buf_unref
.LVL740:
	jmp	.L558
.LVL741:
.L547:
.LBE601:
.LBE600:
.LBB602:
	.loc 1 5227 0
	cmpb	$1, %al
	jne	.L550
.LVL742:
	.loc 1 5236 0
	movl	16(%esi), %eax
	subl	$12, %esp
	subl	$28, %eax
.LVL743:
	pushl	%eax
	call	bt_conn_notify_tx
.LVL744:
	jmp	.L558
.L550:
	.loc 1 5237 0
	cmpb	$2, %al
	jne	.L545
.LVL745:
	.loc 1 5246 0
	movl	16(%esi), %eax
	subl	$12, %esp
	subl	$40, %eax
.LVL746:
	pushl	%eax
	call	bt_conn_process_tx
.LVL747:
.L558:
	addl	$16, %esp
.L545:
.LBE602:
	.loc 1 5217 0
	addl	$20, %esi
.LVL748:
	decl	%ebx
.LVL749:
	jmp	.L544
.L559:
.LVL750:
.LBE599:
.LBE598:
	.loc 1 5276 0
	call	k_yield
.LVL751:
	jmp	.L553
.LBE597:
	.cfi_endproc
.LFE129:
	.size	hci_tx_thread, .-hci_tx_thread
	.section	.text.unlikely.hci_tx_thread
.LCOLDE35:
	.section	.text.hci_tx_thread
.LHOTE35:
	.section	.text.unlikely.bt_recv,"ax",@progbits
.LCOLDB36:
	.section	.text.bt_recv,"ax",@progbits
.LHOTB36:
	.globl	bt_recv
	.type	bt_recv, @function
bt_recv:
.LFB150:
	.loc 1 5741 0
	.cfi_startproc
.LVL752:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 5741 0
	movl	8(%ebp), %ebx
	.loc 1 5745 0
	movzbl	6(%ebx), %eax
	pushl	%eax
	call	net_buf_pool_get
.LVL753:
	.loc 1 5746 0
	addl	$16, %esp
	cmpw	$3, 18(%eax)
	jbe	.L566
.LVL754:
.LBB605:
.LBB606:
	.loc 1 3038 0
	movl	%ebx, %eax
.LVL755:
	call	net_buf_user_data
.LVL756:
.LBE606:
.LBE605:
	.loc 1 5751 0
	movb	(%eax), %al
	cmpb	$1, %al
	je	.L564
	cmpb	$3, %al
	jne	.L566
.L564:
	.loc 1 5756 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$bt_dev+164
	call	net_buf_put
.LVL757:
	.loc 1 5757 0
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L562
.L566:
	.loc 1 5760 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL758:
	.loc 1 5761 0
	addl	$16, %esp
	movl	$-22, %eax
.L562:
	.loc 1 5763 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE150:
	.size	bt_recv, .-bt_recv
	.section	.text.unlikely.bt_recv
.LCOLDE36:
	.section	.text.bt_recv
.LHOTE36:
	.section	.text.unlikely.bt_recv_prio,"ax",@progbits
.LCOLDB37:
	.section	.text.bt_recv_prio,"ax",@progbits
.LHOTB37:
	.globl	bt_recv_prio
	.type	bt_recv_prio, @function
bt_recv_prio:
.LFB151:
	.loc 1 5765 0
	.cfi_startproc
.LVL759:
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
	.loc 1 5765 0
	movl	8(%ebp), %ebx
	.loc 1 5771 0
	leal	8(%ebx), %ecx
	.loc 1 5766 0
	movl	8(%ebx), %esi
.LVL760:
	.loc 1 5771 0
	pushl	$2
	pushl	%ecx
	movl	%ecx, -28(%ebp)
	call	net_buf_simple_pull
.LVL761:
	.loc 1 5772 0
	movb	(%esi), %al
	addl	$16, %esp
	movl	-28(%ebp), %ecx
	cmpb	$15, %al
	je	.L570
	cmpb	$19, %al
	je	.L571
	cmpb	$14, %al
	jne	.L592
.LVL762:
.LBB619:
.LBB620:
	.loc 1 4974 0
	movl	8(%ebx), %eax
.LVL763:
	.loc 1 4975 0
	movw	1(%eax), %si
.LVL764:
	.loc 1 4976 0
	movzbl	(%eax), %edi
.LVL765:
.LVL766:
	.loc 1 4978 0
	pushl	%eax
.LVL767:
	pushl	%eax
	pushl	$3
	pushl	%ecx
	call	net_buf_simple_pull
.LVL768:
	.loc 1 4979 0
	movl	8(%ebx), %eax
	.loc 1 4980 0
	movl	%ebx, %ecx
	movzbl	(%eax), %edx
	movzwl	%si, %eax
	call	hci_cmd_done
.LVL769:
	.loc 1 4981 0
	movl	%edi, %eax
	addl	$16, %esp
	testb	%al, %al
.LVL770:
.L595:
	je	.L574
	.loc 1 4982 0
	subl	$12, %esp
	pushl	$bt_dev+148
	call	k_sem_give
.LVL771:
	addl	$16, %esp
	jmp	.L574
.LVL772:
.L570:
.LBE620:
.LBE619:
.LBB621:
.LBB622:
	.loc 1 4987 0
	movl	8(%ebx), %edi
.LVL773:
	.loc 1 4989 0
	movb	1(%edi), %al
	.loc 1 4988 0
	movw	2(%edi), %si
.LVL774:
	.loc 1 4991 0
	pushl	%edx
	pushl	%edx
	pushl	$4
	pushl	%ecx
	.loc 1 4989 0
	movb	%al, -28(%ebp)
.LVL775:
	.loc 1 4991 0
	call	net_buf_simple_pull
.LVL776:
	.loc 1 4992 0
	movzbl	(%edi), %edx
	movzwl	%si, %eax
	movl	%ebx, %ecx
	call	hci_cmd_done
.LVL777:
	.loc 1 4993 0
	addl	$16, %esp
	cmpb	$0, -28(%ebp)
	jmp	.L595
.LVL778:
.L571:
	movl	8(%ebx), %eax
.LBE622:
.LBE621:
.LBB623:
.LBB624:
	.loc 1 4047 0
	movl	$0, -28(%ebp)
	movl	%eax, -32(%ebp)
.LVL779:
.L576:
	movl	-32(%ebp), %eax
	movzbl	(%eax), %eax
	cmpl	%eax, -28(%ebp)
	jge	.L574
.LBB625:
	.loc 1 4051 0
	movl	-28(%ebp), %ecx
	movl	-32(%ebp), %eax
	movzwl	1(%eax,%ecx,4), %esi
.LVL780:
	.loc 1 4052 0
	movw	3(%eax,%ecx,4), %ax
	movw	%ax, -36(%ebp)
.LVL781:
	.loc 1 4054 0
	call	irq_lock
.LVL782:
	.loc 1 4055 0
	subl	$12, %esp
	.loc 1 4054 0
	movl	%eax, %edi
.LVL783:
	.loc 1 4055 0
	pushl	%esi
	call	bt_conn_lookup_handle
.LVL784:
	.loc 1 4056 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 4055 0
	movl	%eax, %esi
.LVL785:
	.loc 1 4056 0
	jne	.L577
	.loc 1 4058 0
	subl	$12, %esp
	pushl	%edi
	call	irq_unlock
.LVL786:
	jmp	.L596
.LVL787:
.L577:
	.loc 1 4061 0
	subl	$12, %esp
	pushl	%edi
	call	irq_unlock
.LVL788:
.LBB626:
	.loc 1 4071 0
	leal	28(%esi), %eax
.LBE626:
	.loc 1 4061 0
	movl	-36(%ebp), %edi
.LVL789:
	addl	$16, %esp
.LBB633:
	.loc 1 4071 0
	movl	%eax, -36(%ebp)
.LVL790:
	jmp	.L579
.LVL791:
.L581:
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	-36(%ebp)
	call	k_queue_append
.LVL792:
	.loc 1 4072 0
	movl	%esi, (%esp)
	call	bt_conn_get_pkts
.LVL793:
	movl	%eax, (%esp)
	call	k_sem_give
.LVL794:
	.loc 1 4073 0
	movl	$g_poll_sem, (%esp)
	call	k_sem_give
.LVL795:
	addl	$16, %esp
.LVL796:
.L579:
.LBE633:
	.loc 1 4062 0
	testw	%di, %di
	je	.L583
.LBB634:
	.loc 1 4064 0
	call	irq_lock
.LVL797:
	movl	20(%esi), %edx
.LVL798:
.LBB627:
.LBB628:
	.loc 1 171 0
	testl	%edx, %edx
	jne	.L597
.L580:
.LBE628:
.LBE627:
	.loc 1 4066 0
	subl	$12, %esp
	movl	%edx, -40(%ebp)
.LVL799:
	decl	%edi
.LVL800:
	pushl	%eax
	call	irq_unlock
.LVL801:
	.loc 1 4067 0
	movl	-40(%ebp), %edx
	addl	$16, %esp
	testl	%edx, %edx
	jne	.L581
.LVL802:
.L583:
.LBE634:
	.loc 1 4075 0
	subl	$12, %esp
	pushl	%esi
	call	bt_conn_unref
.LVL803:
.L596:
	addl	$16, %esp
.LBE625:
	.loc 1 4047 0
	incl	-28(%ebp)
.LVL804:
	jmp	.L576
.LVL805:
.L597:
.LBB636:
.LBB635:
.LBB632:
.LBB631:
.LBB629:
.LBB630:
	.loc 1 162 0
	cmpl	24(%esi), %edx
	.loc 1 161 0
	movl	(%edx), %ecx
	movl	%ecx, 20(%esi)
	.loc 1 162 0
	jne	.L580
	.loc 1 163 0
	movl	%ecx, 24(%esi)
	jmp	.L580
.LVL806:
.L592:
.LBE630:
.LBE629:
.LBE631:
.LBE632:
.LBE635:
.LBE636:
.LBE624:
.LBE623:
	.loc 1 5783 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL807:
	.loc 1 5785 0
	addl	$16, %esp
	movl	$-22, %eax
	jmp	.L585
.LVL808:
.L574:
	.loc 1 5787 0
	subl	$12, %esp
	pushl	%ebx
	call	net_buf_unref
.LVL809:
	.loc 1 5788 0
	addl	$16, %esp
	xorl	%eax, %eax
.L585:
	.loc 1 5789 0
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
.LFE151:
	.size	bt_recv_prio, .-bt_recv_prio
	.section	.text.unlikely.bt_recv_prio
.LCOLDE37:
	.section	.text.bt_recv_prio
.LHOTE37:
	.section	.text.unlikely.bt_hci_driver_register,"ax",@progbits
.LCOLDB38:
	.section	.text.bt_hci_driver_register,"ax",@progbits
.LHOTB38:
	.globl	bt_hci_driver_register
	.type	bt_hci_driver_register, @function
bt_hci_driver_register:
.LFB152:
	.loc 1 5791 0
	.cfi_startproc
.LVL810:
	.loc 1 5792 0
	cmpl	$0, bt_dev+200
	.loc 1 5791 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 5793 0
	movl	$-69, %eax
	.loc 1 5791 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 5791 0
	movl	8(%ebp), %edx
	.loc 1 5792 0
	jne	.L599
	.loc 1 5795 0
	cmpl	$0, 8(%edx)
	.loc 1 5796 0
	movl	$-22, %eax
	.loc 1 5795 0
	je	.L599
	.loc 1 5795 0 is_stmt 0 discriminator 1
	cmpl	$0, 12(%edx)
	je	.L599
	.loc 1 5798 0 is_stmt 1
	movl	%edx, bt_dev+200
	.loc 1 5801 0
	xorl	%eax, %eax
.LVL811:
.L599:
	.loc 1 5802 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE152:
	.size	bt_hci_driver_register, .-bt_hci_driver_register
	.section	.text.unlikely.bt_hci_driver_register
.LCOLDE38:
	.section	.text.bt_hci_driver_register
.LHOTE38:
	.section	.text.unlikely.bt_enable,"ax",@progbits
.LCOLDB39:
	.section	.text.bt_enable,"ax",@progbits
.LHOTB39:
	.globl	bt_enable
	.type	bt_enable, @function
bt_enable:
.LFB156:
	.loc 1 5855 0
	.cfi_startproc
.LVL812:
	.loc 1 5857 0
	cmpl	$0, bt_dev+200
	.loc 1 5855 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 5855 0
	movl	8(%ebp), %esi
	.loc 1 5857 0
	je	.L607
.LVL813:
.LBB639:
.LBB640:
	.loc 1 864 0
	pushl	%ebx
	pushl	%ebx
	pushl	$1
	pushl	$bt_dev+108
.LVL814:
	call	atomic_or
.LVL815:
.LBE640:
.LBE639:
	.loc 1 5861 0
	addl	$16, %esp
	andl	$1, %eax
	movl	%eax, %ebx
	jne	.L608
	.loc 1 5864 0
	pushl	%eax
	pushl	%eax
	pushl	$init_work
	pushl	$bt_dev+96
	call	k_work_init
.LVL816:
	.loc 1 5865 0
	call	k_work_q_start
.LVL817:
	.loc 1 5866 0
	addl	$12, %esp
	pushl	$1
	pushl	$1
	pushl	$bt_dev+148
	call	k_sem_init
.LVL818:
	.loc 1 5867 0
	movl	$bt_dev+188, (%esp)
	call	k_queue_init
.LVL819:
	.loc 1 5868 0
	movl	$bt_dev+164, (%esp)
	call	k_queue_init
.LVL820:
	.loc 1 5869 0
	movl	$hci_cmd_pool, (%esp)
	call	k_queue_init
.LVL821:
	.loc 1 5870 0
	movl	$hci_rx_pool, (%esp)
	call	k_queue_init
.LVL822:
	.loc 1 5871 0
	addl	$12, %esp
	pushl	$1
	pushl	$0
	pushl	$g_poll_sem
	call	k_sem_init
.LVL823:
	.loc 1 5873 0
	popl	%edx
	popl	%ecx
	pushl	$0
	pushl	$0
	pushl	$20
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$hci_tx_thread
	pushl	$800
	pushl	$tx_thread_stack
	pushl	$tx_thread_data
	.loc 1 5872 0
	movl	%esi, ready_cb
	.loc 1 5873 0
	call	k_thread_create
.LVL824:
	.loc 1 5884 0
	addl	$40, %esp
	pushl	$0
	pushl	$0
	pushl	$21
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$hci_rx_thread
	pushl	$2048
	pushl	$rx_thread_stack
	pushl	$rx_thread_data
	call	k_thread_create
.LVL825:
	.loc 1 5898 0
	movl	bt_dev+200, %eax
	addl	$48, %esp
	call	*8(%eax)
.LVL826:
	.loc 1 5899 0
	testl	%eax, %eax
	jne	.L609
	.loc 1 5903 0
	testl	%esi, %esi
	jne	.L606
	.loc 1 5908 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 5904 0
	jmp	bt_init
.LVL827:
.L606:
	.cfi_restore_state
	.loc 1 5906 0
	subl	$12, %esp
	pushl	$bt_dev+96
	call	k_work_submit
.LVL828:
	.loc 1 5907 0
	addl	$16, %esp
	jmp	.L605
.LVL829:
.L607:
	.loc 1 5859 0
	movl	$-19, %ebx
	jmp	.L605
.LVL830:
.L608:
	.loc 1 5862 0
	movl	$-69, %ebx
	jmp	.L605
.LVL831:
.L609:
	movl	%eax, %ebx
.LVL832:
.L605:
	.loc 1 5908 0
	leal	-8(%ebp), %esp
	movl	%ebx, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE156:
	.size	bt_enable, .-bt_enable
	.section	.text.unlikely.bt_enable
.LCOLDE39:
	.section	.text.bt_enable
.LHOTE39:
	.section	.text.unlikely.bt_addr_le_is_bonded,"ax",@progbits
.LCOLDB40:
	.section	.text.bt_addr_le_is_bonded,"ax",@progbits
.LHOTB40:
	.globl	bt_addr_le_is_bonded
	.type	bt_addr_le_is_bonded, @function
bt_addr_le_is_bonded:
.LFB157:
	.loc 1 5911 0
	.cfi_startproc
.LVL833:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB641:
	.loc 1 5913 0
	pushl	8(%ebp)
	call	bt_keys_find_addr
.LVL834:
	.loc 1 5914 0
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L612
	.loc 1 5914 0 is_stmt 0 discriminator 1
	xorl	%edx, %edx
	cmpw	$0, 12(%eax)
	setne	%dl
.L612:
	movb	%dl, %al
.LVL835:
.LBE641:
	.loc 1 5920 0 is_stmt 1 discriminator 6
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	andl	$1, %eax
	ret
	.cfi_endproc
.LFE157:
	.size	bt_addr_le_is_bonded, .-bt_addr_le_is_bonded
	.section	.text.unlikely.bt_addr_le_is_bonded
.LCOLDE40:
	.section	.text.bt_addr_le_is_bonded
.LHOTE40:
	.section	.text.unlikely.bt_le_adv_start,"ax",@progbits
.LCOLDB41:
	.section	.text.bt_le_adv_start,"ax",@progbits
.LHOTB41:
	.globl	bt_le_adv_start
	.type	bt_le_adv_start, @function
bt_le_adv_start:
.LFB160:
	.loc 1 5972 0
	.cfi_startproc
.LVL836:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 5972 0
	movl	20(%ebp), %eax
	movl	8(%ebp), %esi
	movl	12(%ebp), %edi
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL837:
.LBB646:
.LBB647:
	.loc 1 5925 0
	testb	$1, (%esi)
	jne	.L617
	.loc 1 5926 0
	cmpb	$8, bt_dev+14
	ja	.L617
	cmpw	$159, 2(%esi)
	ja	.L617
.LVL838:
.L619:
.LBE647:
.LBE646:
	.loc 1 5977 0
	movl	$-22, %ebx
	jmp	.L618
.LVL839:
.L617:
.LBB649:
.LBB648:
	.loc 1 5933 0
	movw	2(%esi), %ax
	movl	4(%esi), %ecx
	.loc 1 5934 0
	cmpw	$31, %ax
	setbe	%dl
	cmpw	%cx, %ax
	seta	%al
	orb	%al, %dl
	jne	.L619
	cmpw	$16384, %cx
	ja	.L619
.LVL840:
.LBE648:
.LBE649:
	.loc 1 5979 0
	movl	$5, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL841:
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L647
	.loc 1 5982 0
	movl	16(%ebp), %ecx
	movl	%edi, %edx
	movl	$8200, %eax
	call	set_ad
.LVL842:
	.loc 1 5983 0
	testl	%eax, %eax
	jne	.L637
	.loc 1 5986 0
	cmpl	$0, -60(%ebp)
	jne	.L621
	.loc 1 5986 0 is_stmt 0 discriminator 1
	testb	$1, (%esi)
	jne	.L621
.L624:
	.loc 1 5992 0 is_stmt 1
	leal	-43(%ebp), %edi
	xorl	%eax, %eax
.LVL843:
	movl	$15, %ecx
	.loc 1 5996 0
	testb	$1, (%esi)
	.loc 1 5992 0
	rep stosb
	.loc 1 5993 0
	movw	2(%esi), %ax
	.loc 1 5995 0
	movb	$7, -30(%ebp)
	.loc 1 5993 0
	movw	%ax, -43(%ebp)
	.loc 1 5994 0
	movl	4(%esi), %eax
	movw	%ax, -41(%ebp)
	.loc 1 5996 0
	je	.L643
	.loc 1 6009 0
	movl	$2, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL844:
	testl	%eax, %eax
	je	.L625
	.loc 1 6011 0
	movl	$bt_dev+1, %eax
	call	set_random_address
.LVL845:
.L625:
	.loc 1 6013 0
	movb	bt_dev, %al
	.loc 1 6015 0
	movb	$0, -39(%ebp)
	.loc 1 6013 0
	movb	%al, -38(%ebp)
.L626:
	.loc 1 6035 0
	pushl	%ecx
	pushl	%ecx
	pushl	$15
	pushl	$8198
	call	bt_hci_cmd_create
.LVL846:
	.loc 1 6036 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6035 0
	movl	%eax, %edi
.LVL847:
	.loc 1 6036 0
	je	.L635
	.loc 1 6039 0
	leal	-43(%ebp), %eax
.LVL848:
	pushl	%edx
	pushl	$15
	pushl	%eax
	leal	8(%edi), %eax
	pushl	%eax
	call	net_buf_simple_add_mem
.LVL849:
	.loc 1 6040 0
	addl	$12, %esp
	pushl	$0
	pushl	%edi
	pushl	$8198
	call	bt_hci_cmd_send_sync
.LVL850:
	.loc 1 6043 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L637
	.loc 1 6046 0
	movl	$1, %eax
.LVL851:
	call	set_advertise_enable
.LVL852:
	.loc 1 6049 0
	testl	%eax, %eax
	jne	.L637
	.loc 1 6052 0
	testb	$2, (%esi)
	jne	.L618
.LVL853:
.LVL854:
.LBB650:
.LBB651:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$64
	pushl	$bt_dev+108
.LVL855:
	call	atomic_or
.LVL856:
	addl	$16, %esp
.LVL857:
.L618:
.LBE651:
.LBE650:
	.loc 1 6056 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%ebx, %eax
	je	.L631
	call	__stack_chk_fail
.LVL858:
.L621:
	.loc 1 5987 0
	movl	24(%ebp), %ecx
	movl	-60(%ebp), %edx
	movl	$8201, %eax
.LVL859:
	call	set_ad
.LVL860:
	.loc 1 5988 0
	testl	%eax, %eax
	je	.L624
	jmp	.L637
.LVL861:
.L643:
	.loc 1 6017 0
	movl	8(%esi), %eax
	testl	%eax, %eax
	je	.L627
	.loc 1 6018 0
	testb	$-64, 5(%eax)
	jne	.L619
	.loc 1 6021 0
	call	set_random_address
.LVL862:
	jmp	.L628
.LVL863:
.L627:
	.loc 1 6023 0
	call	le_set_private_addr
.LVL864:
.L628:
	.loc 1 6025 0
	testl	%eax, %eax
	jne	.L637
	.loc 1 6030 0
	cmpl	$1, -60(%ebp)
	.loc 1 6028 0
	movb	$1, -38(%ebp)
	.loc 1 6030 0
	sbbl	%eax, %eax
.LVL865:
	notl	%eax
	addl	$3, %eax
	movb	%al, -39(%ebp)
	jmp	.L626
.LVL866:
.L635:
	.loc 1 6037 0
	movl	$-55, %ebx
	jmp	.L618
.LVL867:
.L637:
	movl	%eax, %ebx
	jmp	.L618
.LVL868:
.L647:
	.loc 1 5980 0
	movl	$-69, %ebx
	jmp	.L618
.L631:
	.loc 1 6056 0
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
.LFE160:
	.size	bt_le_adv_start, .-bt_le_adv_start
	.section	.text.unlikely.bt_le_adv_start
.LCOLDE41:
	.section	.text.bt_le_adv_start
.LHOTE41:
	.section	.text.unlikely.bt_le_adv_stop,"ax",@progbits
.LCOLDB42:
	.section	.text.bt_le_adv_stop,"ax",@progbits
.LHOTB42:
	.globl	bt_le_adv_stop
	.type	bt_le_adv_stop, @function
bt_le_adv_stop:
.LFB161:
	.loc 1 6058 0
	.cfi_startproc
.LVL869:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
.LBB652:
.LBB653:
	.loc 1 870 0
	pushl	$-65
	pushl	$bt_dev+108
.LVL870:
	call	atomic_and
.LVL871:
.LBE653:
.LBE652:
	.loc 1 6061 0
	movl	$5, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL872:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L649
.L651:
	.loc 1 6062 0
	xorl	%ebx, %ebx
	jmp	.L650
.L649:
	.loc 1 6064 0
	xorl	%eax, %eax
	call	set_advertise_enable
.LVL873:
	.loc 1 6067 0
	testl	%eax, %eax
	.loc 1 6064 0
	movl	%eax, %ebx
.LVL874:
	.loc 1 6067 0
	jne	.L650
	.loc 1 6071 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
.LVL875:
	call	atomic_test_bit
.LVL876:
	testl	%eax, %eax
	je	.L651
	.loc 1 6072 0 discriminator 1
	movl	$9, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL877:
	.loc 1 6071 0 discriminator 1
	testl	%eax, %eax
	je	.L651
	.loc 1 6073 0
	call	le_set_private_addr
.LVL878:
.L650:
	.loc 1 6077 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE161:
	.size	bt_le_adv_stop, .-bt_le_adv_stop
	.section	.text.unlikely.bt_le_adv_stop
.LCOLDE42:
	.section	.text.bt_le_adv_stop
.LHOTE42:
	.section	.text.unlikely.bt_le_scan_start,"ax",@progbits
.LCOLDB43:
	.section	.text.bt_le_scan_start,"ax",@progbits
.LHOTB43:
	.globl	bt_le_scan_start
	.type	bt_le_scan_start, @function
bt_le_scan_start:
.LFB163:
	.loc 1 6114 0
	.cfi_startproc
.LVL879:
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
	.loc 1 6117 0
	movl	$-22, %esi
	.loc 1 6114 0
	subl	$44, %esp
	.loc 1 6114 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %ebx
	movl	%eax, -48(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL880:
.LBB672:
.LBB673:
	.loc 1 6082 0
	cmpb	$1, (%ebx)
	ja	.L661
	.loc 1 6088 0
	cmpb	$1, 1(%ebx)
	ja	.L661
	.loc 1 6094 0
	movw	2(%ebx), %dx
	leal	-4(%edx), %eax
	cmpw	$16380, %ax
	ja	.L661
	.loc 1 6099 0
	movw	4(%ebx), %ax
	.loc 1 6104 0
	leal	-4(%eax), %ecx
	cmpw	$16380, %cx
	ja	.L677
	cmpw	%ax, %dx
	jnb	.L690
.L677:
.LBE673:
.LBE672:
	.loc 1 6117 0
	movl	$-22, %esi
	jmp	.L661
.L690:
.LVL881:
.LBB674:
.LBB675:
	.loc 1 864 0
	pushl	%eax
	pushl	%eax
	pushl	$256
	pushl	$bt_dev+108
.LVL882:
	call	atomic_or
.LVL883:
.LBE675:
.LBE674:
	.loc 1 6119 0
	addl	$16, %esp
	andl	$256, %eax
	movl	%eax, %esi
	jne	.L697
	.loc 1 6122 0
	movl	$7, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL884:
	testl	%eax, %eax
	je	.L663
	.loc 1 6123 0
	xorl	%eax, %eax
	call	set_le_scan_enable
.LVL885:
	.loc 1 6124 0
	testl	%eax, %eax
	.loc 1 6123 0
	movl	%eax, %edi
.LVL886:
	.loc 1 6124 0
	je	.L663
.LVL887:
.LVL888:
.LBB676:
.LBB677:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
.LBE677:
.LBE676:
	.loc 1 6126 0
	movl	%edi, %esi
.LBB679:
.LBB678:
	.loc 1 870 0
	pushl	$-257
	pushl	$bt_dev+108
.LVL889:
	call	atomic_and
.LVL890:
.LBE678:
.LBE679:
	.loc 1 6126 0
	addl	$16, %esp
.LVL891:
.L661:
	.loc 1 6141 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%esi, %eax
	je	.L673
	call	__stack_chk_fail
.LVL892:
.L663:
	.loc 1 6129 0
	cmpb	$0, 1(%ebx)
	je	.L664
.LVL893:
.LBB680:
.LBB681:
	.loc 1 875 0
	pushl	%eax
	pushl	%eax
	pushl	$1024
	pushl	$bt_dev+108
.LVL894:
	call	atomic_or
.LVL895:
	jmp	.L695
.LVL896:
.L664:
.LBE681:
.LBE680:
.LBB682:
.LBB683:
	.loc 1 870 0
	pushl	%edi
	pushl	%edi
	pushl	$-1025
	pushl	$bt_dev+108
.LVL897:
	call	atomic_and
.LVL898:
.L695:
.LBE683:
.LBE682:
	.loc 1 6134 0
	movw	4(%ebx), %ax
.LBB685:
.LBB686:
	.loc 1 5002 0
	leal	-35(%ebp), %edi
	movl	$7, %ecx
.LBE686:
.LBE685:
	.loc 1 6134 0
	movw	2(%ebx), %dx
	movb	(%ebx), %bl
.LVL899:
.LBB693:
.LBB684:
	.loc 1 870 0
	addl	$16, %esp
.LBE684:
.LBE693:
	.loc 1 6134 0
	movw	%ax, -42(%ebp)
.LVL900:
.LBB694:
.LBB691:
	.loc 1 5002 0
	xorl	%eax, %eax
	rep stosb
	.loc 1 5005 0
	movw	-42(%ebp), %ax
	.loc 1 5019 0
	cmpb	$1, %bl
	.loc 1 5003 0
	movb	%bl, -35(%ebp)
	.loc 1 5004 0
	movw	%dx, -34(%ebp)
	.loc 1 5005 0
	movw	%ax, -32(%ebp)
	.loc 1 5018 0
	movb	bt_dev, %al
	movb	%al, -30(%ebp)
	.loc 1 5019 0
	jne	.L667
	.loc 1 5021 0
	movl	$5, %edx
.LVL901:
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL902:
	.loc 1 5020 0
	testl	%eax, %eax
	jne	.L667
	.loc 1 5022 0
	call	le_set_private_addr
.LVL903:
	.loc 1 5023 0
	testl	%eax, %eax
	jne	.L680
	.loc 1 5026 0
	movb	$1, -30(%ebp)
.LVL904:
.L667:
	.loc 1 5029 0
	pushl	%ecx
	pushl	%ecx
	pushl	$7
	pushl	$8203
	call	bt_hci_cmd_create
.LVL905:
	.loc 1 5030 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 5029 0
	movl	%eax, %edi
.LVL906:
	.loc 1 5030 0
	je	.L679
.LVL907:
	.loc 1 5033 0
	pushl	%eax
	leal	-35(%ebp), %eax
	pushl	$7
	pushl	%eax
	leal	8(%edi), %eax
	pushl	%eax
	call	net_buf_simple_add_mem
.LVL908:
	.loc 1 5034 0
	popl	%eax
	popl	%edx
	pushl	%edi
	pushl	$8203
	call	bt_hci_cmd_send
.LVL909:
	.loc 1 5035 0
	movl	$1, %eax
	call	set_le_scan_enable
.LVL910:
	.loc 1 5036 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L680
	.loc 1 5039 0
	decb	%bl
.LVL911:
	jne	.L670
.LVL912:
.LBB687:
.LBB688:
	.loc 1 875 0
	pushl	%ebx
	pushl	%ebx
	pushl	$512
	pushl	$bt_dev+108
.LVL913:
	call	atomic_or
.LVL914:
	jmp	.L696
.LVL915:
.L670:
.LBE688:
.LBE687:
.LBB689:
.LBB690:
	.loc 1 870 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-513
	pushl	$bt_dev+108
.LVL916:
	call	atomic_and
.LVL917:
.L696:
	addl	$16, %esp
	jmp	.L671
.LVL918:
.L679:
.LBE690:
.LBE689:
	.loc 1 5031 0
	movl	$-55, %esi
	jmp	.L691
.LVL919:
.L680:
.LBE691:
.LBE694:
	.loc 1 6135 0
	testl	%eax, %eax
.LBB695:
.LBB692:
	.loc 1 5036 0
	movl	%eax, %esi
.LVL920:
.LBE692:
.LBE695:
	.loc 1 6135 0
	je	.L671
.L691:
.LVL921:
.LBB696:
.LBB697:
	.loc 1 870 0
	pushl	%edx
	pushl	%edx
	pushl	$-257
	pushl	$bt_dev+108
.LVL922:
	call	atomic_and
.LVL923:
.LBE697:
.LBE696:
	.loc 1 6137 0
	addl	$16, %esp
	jmp	.L661
.L671:
	.loc 1 6139 0
	movl	-48(%ebp), %eax
	movl	%eax, scan_dev_found_cb
	.loc 1 6140 0
	jmp	.L661
.L697:
	.loc 1 6120 0
	movl	$-69, %esi
	jmp	.L661
.L673:
	.loc 1 6141 0
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
.LFE163:
	.size	bt_le_scan_start, .-bt_le_scan_start
	.section	.text.unlikely.bt_le_scan_start
.LCOLDE43:
	.section	.text.bt_le_scan_start
.LHOTE43:
	.section	.text.unlikely.bt_le_scan_stop,"ax",@progbits
.LCOLDB44:
	.section	.text.bt_le_scan_stop,"ax",@progbits
.LHOTB44:
	.globl	bt_le_scan_stop
	.type	bt_le_scan_stop, @function
bt_le_scan_stop:
.LFB164:
	.loc 1 6143 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6144 0
	movl	$8, %edx
	movl	$bt_dev+108, %eax
	.loc 1 6143 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6144 0
	call	atomic_test_and_clear_bit
.LVL924:
	movl	%eax, %edx
	movl	$-69, %eax
	testl	%edx, %edx
	je	.L699
	.loc 1 6150 0
	subl	$12, %esp
	.loc 1 6147 0
	movl	$0, scan_dev_found_cb
	.loc 1 6150 0
	pushl	$0
	call	bt_le_scan_update
.LVL925:
	addl	$16, %esp
.L699:
	.loc 1 6153 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE164:
	.size	bt_le_scan_stop, .-bt_le_scan_stop
	.section	.text.unlikely.bt_le_scan_stop
.LCOLDE44:
	.section	.text.bt_le_scan_stop
.LHOTE44:
	.section	.text.unlikely.bt_buf_get_rx,"ax",@progbits
.LCOLDB45:
	.section	.text.bt_buf_get_rx,"ax",@progbits
.LHOTB45:
	.globl	bt_buf_get_rx
	.type	bt_buf_get_rx, @function
bt_buf_get_rx:
.LFB165:
	.loc 1 6155 0
	.cfi_startproc
.LVL926:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 6159 0
	pushl	12(%ebp)
	pushl	$hci_rx_pool
	call	net_buf_alloc
.LVL927:
	.loc 1 6160 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6159 0
	movl	%eax, %ebx
.LVL928:
	.loc 1 6160 0
	je	.L704
.LVL929:
	.loc 1 6161 0
	pushl	%eax
	pushl	%eax
	pushl	$1
	pushl	%ebx
	call	net_buf_reserve
.LVL930:
.LBB700:
.LBB701:
	.loc 1 3034 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL931:
	movl	8(%ebp), %edx
	addl	$16, %esp
	movb	%dl, (%eax)
.LVL932:
.L704:
.LBE701:
.LBE700:
	.loc 1 6165 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL933:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE165:
	.size	bt_buf_get_rx, .-bt_buf_get_rx
	.section	.text.unlikely.bt_buf_get_rx
.LCOLDE45:
	.section	.text.bt_buf_get_rx
.LHOTE45:
	.section	.text.unlikely.bt_buf_get_cmd_complete,"ax",@progbits
.LCOLDB46:
	.section	.text.bt_buf_get_cmd_complete,"ax",@progbits
.LHOTB46:
	.globl	bt_buf_get_cmd_complete
	.type	bt_buf_get_cmd_complete, @function
bt_buf_get_cmd_complete:
.LFB166:
	.loc 1 6167 0
	.cfi_startproc
.LVL934:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 6170 0
	call	irq_lock
.LVL935:
	.loc 1 6175 0
	subl	$12, %esp
	.loc 1 6171 0
	movl	bt_dev+160, %ebx
.LVL936:
	.loc 1 6172 0
	movl	$0, bt_dev+160
	.loc 1 6175 0
	pushl	%eax
	call	irq_unlock
.LVL937:
	.loc 1 6177 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L710
.LVL938:
.LBB704:
.LBB705:
	.loc 1 3034 0
	movl	%ebx, %eax
	call	net_buf_user_data
.LVL939:
	movb	$1, (%eax)
.LVL940:
.LBE705:
.LBE704:
	.loc 1 6179 0
	movw	$0, 12(%ebx)
	.loc 1 6180 0
	pushl	%edx
	pushl	%edx
	pushl	$1
	pushl	%ebx
	call	net_buf_reserve
.LVL941:
	.loc 1 6181 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L711
.L710:
	.loc 1 6183 0
	pushl	%eax
	pushl	%eax
	pushl	8(%ebp)
	pushl	$1
	call	bt_buf_get_rx
.LVL942:
	addl	$16, %esp
.L711:
	.loc 1 6184 0
	movl	-4(%ebp), %ebx
.LVL943:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE166:
	.size	bt_buf_get_cmd_complete, .-bt_buf_get_cmd_complete
	.section	.text.unlikely.bt_buf_get_cmd_complete
.LCOLDE46:
	.section	.text.bt_buf_get_cmd_complete
.LHOTE46:
	.section	.text.unlikely.bt_storage_register,"ax",@progbits
.LCOLDB47:
	.section	.text.bt_storage_register,"ax",@progbits
.LHOTB47:
	.globl	bt_storage_register
	.type	bt_storage_register, @function
bt_storage_register:
.LFB167:
	.loc 1 6186 0
	.cfi_startproc
.LVL944:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6187 0
	movl	8(%ebp), %eax
	.loc 1 6188 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6187 0
	movl	%eax, bt_storage
	.loc 1 6188 0
	ret
	.cfi_endproc
.LFE167:
	.size	bt_storage_register, .-bt_storage_register
	.section	.text.unlikely.bt_storage_register
.LCOLDE47:
	.section	.text.bt_storage_register
.LHOTE47:
	.section	.text.unlikely.bt_storage_clear,"ax",@progbits
.LCOLDB48:
	.section	.text.bt_storage_clear,"ax",@progbits
.LHOTB48:
	.globl	bt_storage_clear
	.type	bt_storage_clear, @function
bt_storage_clear:
.LFB169:
	.loc 1 6210 0
	.cfi_startproc
.LVL945:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 6210 0
	movl	8(%ebp), %ebx
	.loc 1 6211 0
	testl	%ebx, %ebx
	jne	.L716
.LBB710:
.LBB711:
	.loc 1 6192 0
	call	bt_conn_disconnect_all
.LVL946:
	.loc 1 6195 0
	call	bt_keys_clear_all
.LVL947:
	.loc 1 6202 0
	movl	bt_storage, %eax
	testl	%eax, %eax
	je	.L718
	.loc 1 6203 0
	movl	$0, 8(%ebp)
	jmp	.L732
.LVL948:
.L716:
.LBE711:
.LBE710:
.LBB712:
	.loc 1 6215 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_conn_lookup_addr_le
.LVL949:
	.loc 1 6216 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6215 0
	movl	%eax, %esi
.LVL950:
	.loc 1 6216 0
	je	.L719
.LVL951:
	.loc 1 6217 0
	pushl	%eax
	pushl	%eax
	pushl	$19
	pushl	%esi
	call	bt_conn_disconnect
.LVL952:
	.loc 1 6219 0
	movl	%esi, (%esp)
	call	bt_conn_unref
.LVL953:
	addl	$16, %esp
.L719:
.LBE712:
.LBB713:
	.loc 1 6228 0
	subl	$12, %esp
	pushl	%ebx
	call	bt_keys_find_addr
.LVL954:
	.loc 1 6229 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L720
	.loc 1 6230 0
	subl	$12, %esp
	pushl	%eax
	call	bt_keys_clear
.LVL955:
	addl	$16, %esp
.L720:
.LBE713:
	.loc 1 6233 0
	movl	bt_storage, %eax
	testl	%eax, %eax
	je	.L718
	.loc 1 6234 0
	movl	%ebx, 8(%ebp)
.LVL956:
.L732:
	movl	8(%eax), %eax
	.loc 1 6237 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6234 0
	jmp	*%eax
.LVL957:
.L718:
	.cfi_restore_state
	.loc 1 6237 0
	leal	-8(%ebp), %esp
	xorl	%eax, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE169:
	.size	bt_storage_clear, .-bt_storage_clear
	.section	.text.unlikely.bt_storage_clear
.LCOLDE48:
	.section	.text.bt_storage_clear
.LHOTE48:
	.section	.text.unlikely.bt_hci_get_cmd_opcode,"ax",@progbits
.LCOLDB49:
	.section	.text.bt_hci_get_cmd_opcode,"ax",@progbits
.LHOTB49:
	.globl	bt_hci_get_cmd_opcode
	.type	bt_hci_get_cmd_opcode, @function
bt_hci_get_cmd_opcode:
.LFB170:
	.loc 1 6239 0
	.cfi_startproc
.LVL958:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6240 0
	movl	8(%ebp), %eax
	call	net_buf_user_data
.LVL959:
	.loc 1 6241 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6240 0
	movw	2(%eax), %ax
	.loc 1 6241 0
	ret
	.cfi_endproc
.LFE170:
	.size	bt_hci_get_cmd_opcode, .-bt_hci_get_cmd_opcode
	.section	.text.unlikely.bt_hci_get_cmd_opcode
.LCOLDE49:
	.section	.text.bt_hci_get_cmd_opcode
.LHOTE49:
	.section	.text.unlikely.bt_pub_key_gen,"ax",@progbits
.LCOLDB50:
	.section	.text.bt_pub_key_gen,"ax",@progbits
.LHOTB50:
	.globl	bt_pub_key_gen
	.type	bt_pub_key_gen, @function
bt_pub_key_gen:
.LFB171:
	.loc 1 6243 0
	.cfi_startproc
.LVL960:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6249 0
	movl	$-35, %eax
	.loc 1 6243 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 6246 0
	movb	bt_dev+64, %dl
	.loc 1 6243 0
	movl	8(%ebp), %esi
	.loc 1 6246 0
	andl	$6, %edx
	cmpb	$6, %dl
	jne	.L736
	.loc 1 6251 0
	movl	pub_key_cb, %eax
	.loc 1 6252 0
	movl	%esi, pub_key_cb
.LVL961:
	.loc 1 6251 0
	movl	%eax, 4(%esi)
.LBB720:
.LBB721:
	.loc 1 864 0
	pushl	%ecx
	pushl	%ecx
	pushl	$16
	pushl	$bt_dev+108
.LVL962:
	call	atomic_or
.LVL963:
.LBE721:
.LBE720:
	.loc 1 6253 0
	addl	$16, %esp
	testb	$16, %al
	je	.L737
.L742:
	.loc 1 6254 0
	xorl	%eax, %eax
	jmp	.L736
.L737:
.LVL964:
.LBB722:
.LBB723:
	.loc 1 870 0
	pushl	%edx
	pushl	%edx
	pushl	$-9
	pushl	$bt_dev+108
.LVL965:
	call	atomic_and
.LVL966:
.LBE723:
.LBE722:
	.loc 1 6257 0
	addl	$12, %esp
	pushl	$0
	pushl	$0
	pushl	$8229
	call	bt_hci_cmd_send_sync
.LVL967:
	.loc 1 6262 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6257 0
	movl	%eax, %ebx
.LVL968:
	.loc 1 6270 0
	movl	pub_key_cb, %edi
	.loc 1 6262 0
	je	.L744
.LVL969:
.LVL970:
.LBB724:
.LBB725:
	.loc 1 870 0
	pushl	%eax
	pushl	%eax
	pushl	$-17
	pushl	$bt_dev+108
.LVL971:
	call	atomic_and
.LVL972:
.LBE725:
.LBE724:
	.loc 1 6265 0
	movl	$0, pub_key_cb
	.loc 1 6268 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L736
.LVL973:
.L741:
	.loc 1 6271 0
	cmpl	%esi, %edi
	je	.L740
	.loc 1 6272 0
	subl	$12, %esp
	pushl	$0
	call	*(%edi)
.LVL974:
	addl	$16, %esp
.L740:
	.loc 1 6270 0 discriminator 2
	movl	4(%edi), %edi
.LVL975:
.L744:
	.loc 1 6270 0 is_stmt 0 discriminator 1
	testl	%edi, %edi
	jne	.L741
	jmp	.L742
.LVL976:
.L736:
	.loc 1 6278 0 is_stmt 1
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
.LFE171:
	.size	bt_pub_key_gen, .-bt_pub_key_gen
	.section	.text.unlikely.bt_pub_key_gen
.LCOLDE50:
	.section	.text.bt_pub_key_gen
.LHOTE50:
	.section	.text.unlikely.bt_pub_key_get,"ax",@progbits
.LCOLDB51:
	.section	.text.bt_pub_key_get,"ax",@progbits
.LHOTB51:
	.globl	bt_pub_key_get
	.type	bt_pub_key_get, @function
bt_pub_key_get:
.LFB172:
	.loc 1 6280 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6281 0
	movl	$3, %edx
	movl	$bt_dev+108, %eax
	.loc 1 6280 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6281 0
	call	atomic_test_bit
.LVL977:
	.loc 1 6285 0
	movl	$0, %edx
	testl	%eax, %eax
	movl	$pub_key, %eax
	cmove	%edx, %eax
	.loc 1 6287 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE172:
	.size	bt_pub_key_get, .-bt_pub_key_get
	.section	.text.unlikely.bt_pub_key_get
.LCOLDE51:
	.section	.text.bt_pub_key_get
.LHOTE51:
	.section	.text.unlikely.bt_dh_key_gen,"ax",@progbits
.LCOLDB52:
	.section	.text.bt_dh_key_gen,"ax",@progbits
.LHOTB52:
	.globl	bt_dh_key_gen
	.type	bt_dh_key_gen, @function
bt_dh_key_gen:
.LFB173:
	.loc 1 6289 0
	.cfi_startproc
.LVL978:
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
	.loc 1 6293 0
	cmpl	$0, dh_key_cb
	.loc 1 6289 0
	movl	8(%ebp), %esi
	.loc 1 6293 0
	je	.L752
.L754:
	.loc 1 6294 0
	movl	$-16, %edx
	jmp	.L753
.L752:
	.loc 1 6293 0 discriminator 1
	movl	$4, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL979:
	testl	%eax, %eax
	jne	.L754
	.loc 1 6296 0
	movl	$3, %edx
	movl	$bt_dev+108, %eax
	call	atomic_test_bit
.LVL980:
	testl	%eax, %eax
	.loc 1 6297 0
	movl	$-49, %edx
	.loc 1 6296 0
	je	.L753
	.loc 1 6299 0
	movl	12(%ebp), %eax
	.loc 1 6300 0
	pushl	%edx
	pushl	%edx
	pushl	$64
	pushl	$8230
	.loc 1 6299 0
	movl	%eax, dh_key_cb
	.loc 1 6300 0
	call	bt_hci_cmd_create
.LVL981:
	.loc 1 6301 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 6300 0
	movl	%eax, %ebx
.LVL982:
	.loc 1 6301 0
	jne	.L755
	.loc 1 6302 0
	movl	$0, dh_key_cb
	.loc 1 6305 0
	movl	$-55, %edx
	jmp	.L753
.L755:
.LVL983:
	.loc 1 6307 0
	pushl	%eax
	pushl	%eax
	leal	8(%ebx), %eax
	pushl	$64
	pushl	%eax
	call	net_buf_simple_add
.LVL984:
	.loc 1 6308 0
	movl	$16, %ecx
	movl	%eax, %edi
	.loc 1 6309 0
	addl	$12, %esp
	.loc 1 6308 0
	rep movsl
	.loc 1 6309 0
	pushl	$0
	pushl	%ebx
	pushl	$8230
	call	bt_hci_cmd_send_sync
.LVL985:
	.loc 1 6312 0
	addl	$16, %esp
	.loc 1 6318 0
	xorl	%edx, %edx
	.loc 1 6312 0
	testl	%eax, %eax
	je	.L753
	.loc 1 6313 0
	movl	$0, dh_key_cb
	.loc 1 6316 0
	movl	%eax, %edx
.LVL986:
.L753:
	.loc 1 6319 0
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
.LFE173:
	.size	bt_dh_key_gen, .-bt_dh_key_gen
	.section	.text.unlikely.bt_dh_key_gen
.LCOLDE52:
	.section	.text.bt_dh_key_gen
.LHOTE52:
	.section	.text.unlikely.bt_le_oob_get_local,"ax",@progbits
.LCOLDB53:
	.section	.text.bt_le_oob_get_local,"ax",@progbits
.LHOTB53:
	.globl	bt_le_oob_get_local
	.type	bt_le_oob_get_local, @function
bt_le_oob_get_local:
.LFB174:
	.loc 1 6321 0
	.cfi_startproc
.LVL987:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6331 0
	movl	$bt_dev, %edx
	.loc 1 6321 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6331 0
	movl	8(%ebp), %eax
	call	bt_addr_le_copy
.LVL988:
	.loc 1 6334 0
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE174:
	.size	bt_le_oob_get_local, .-bt_le_oob_get_local
	.section	.text.unlikely.bt_le_oob_get_local
.LCOLDE53:
	.section	.text.bt_le_oob_get_local
.LHOTE53:
	.section	.data.events.5664,"aw",@progbits
	.align 32
	.type	events.5664, @object
	.size	events.5664, 80
events.5664:
	.zero	12
	.byte	0
	.byte	3
	.byte	0
	.byte	0
	.long	bt_dev+188
	.zero	60
	.section	.bss.dh_key_cb,"aw",@nobits
	.align 4
	.type	dh_key_cb, @object
	.size	dh_key_cb, 4
dh_key_cb:
	.zero	4
	.section	.bss.pub_key_cb,"aw",@nobits
	.align 4
	.type	pub_key_cb, @object
	.size	pub_key_cb, 4
pub_key_cb:
	.zero	4
	.section	.bss.pub_key,"aw",@nobits
	.align 32
	.type	pub_key, @object
	.size	pub_key, 64
pub_key:
	.zero	64
	.section	.bss.scan_dev_found_cb,"aw",@nobits
	.align 4
	.type	scan_dev_found_cb, @object
	.size	scan_dev_found_cb, 4
scan_dev_found_cb:
	.zero	4
	.globl	bt_storage
	.section	.bss.bt_storage,"aw",@nobits
	.align 4
	.type	bt_storage, @object
	.size	bt_storage, 4
bt_storage:
	.zero	4
	.section	.bss.ready_cb,"aw",@nobits
	.align 4
	.type	ready_cb, @object
	.size	ready_cb, 4
ready_cb:
	.zero	4
	.globl	bt_dev
	.section	.data.bt_dev,"aw",@progbits
	.align 32
	.type	bt_dev, @object
	.size	bt_dev, 204
bt_dev:
	.zero	96
	.long	0
	.long	init_work
	.long	0
	.zero	40
	.zero	12
	.zero	4
	.long	0
	.zero	8
	.zero	12
	.long	0
	.zero	8
	.zero	4
	.section	.bss.tx_thread_stack,"aw",@nobits
	.align 32
	.type	tx_thread_stack, @object
	.size	tx_thread_stack, 800
tx_thread_stack:
	.zero	800
	.section	.bss.tx_thread_data,"aw",@nobits
	.align 4
	.type	tx_thread_data, @object
	.size	tx_thread_data, 4
tx_thread_data:
	.zero	4
	.section	.bss.rx_thread_stack,"aw",@nobits
	.align 32
	.type	rx_thread_stack, @object
	.size	rx_thread_stack, 2048
rx_thread_stack:
	.zero	2048
	.section	.bss.rx_thread_data,"aw",@nobits
	.align 4
	.type	rx_thread_data, @object
	.size	rx_thread_data, 4
rx_thread_data:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.net_buf_user_data
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6cf3
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF616
	.byte	0xc
	.long	.LASF617
	.long	.LASF618
	.long	.Ldebug_ranges0+0x458
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF9
	.byte	0x1
	.byte	0x6
	.long	0x5a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
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
	.long	0x4f
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
	.byte	0x36
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x38
	.long	0x68
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x3a
	.long	0x33
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x3b
	.long	0x41
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x3c
	.long	0x6f
	.uleb128 0x3
	.long	.LASF18
	.byte	0x1
	.byte	0x3d
	.long	0x25
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
	.uleb128 0x3
	.long	.LASF29
	.byte	0x1
	.byte	0xe1
	.long	0x154
	.uleb128 0xb
	.long	.LASF30
	.byte	0x1
	.value	0x180
	.long	0x68
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF31
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF32
	.uleb128 0x7
	.byte	0x4
	.long	0x1bd
	.uleb128 0xb
	.long	.LASF33
	.byte	0x1
	.value	0x1c8
	.long	0x1a8
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x1ed
	.uleb128 0xe
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x1bb
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF34
	.byte	0x1
	.value	0x1d1
	.long	0x1d6
	.uleb128 0xb
	.long	.LASF35
	.byte	0x1
	.value	0x1d2
	.long	0x1ed
	.uleb128 0xb
	.long	.LASF36
	.byte	0x1
	.value	0x1d4
	.long	0x1ed
	.uleb128 0xb
	.long	.LASF37
	.byte	0x1
	.value	0x1d5
	.long	0x1ed
	.uleb128 0xb
	.long	.LASF38
	.byte	0x1
	.value	0x1d6
	.long	0x1ed
	.uleb128 0x7
	.byte	0x4
	.long	0x22f
	.uleb128 0xf
	.long	0x1bd
	.uleb128 0x10
	.long	0x23f
	.uleb128 0x11
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x234
	.uleb128 0xb
	.long	.LASF39
	.byte	0x1
	.value	0x2eb
	.long	0x76
	.uleb128 0xb
	.long	.LASF40
	.byte	0x1
	.value	0x2f2
	.long	0x211
	.uleb128 0xb
	.long	.LASF41
	.byte	0x1
	.value	0x2f3
	.long	0x205
	.uleb128 0xb
	.long	.LASF42
	.byte	0x1
	.value	0x2f4
	.long	0x1f9
	.uleb128 0xb
	.long	.LASF43
	.byte	0x1
	.value	0x2f5
	.long	0x245
	.uleb128 0x12
	.long	.LASF44
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x2a9
	.uleb128 0x13
	.long	.LASF45
	.byte	0x1
	.value	0x302
	.long	0x2a9
	.byte	0
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.value	0x303
	.long	0x192
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x251
	.uleb128 0x12
	.long	.LASF47
	.byte	0xc
	.byte	0x1
	.value	0x30d
	.long	0x2ca
	.uleb128 0x13
	.long	.LASF45
	.byte	0x1
	.value	0x30e
	.long	0x281
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x2e5
	.uleb128 0x13
	.long	.LASF45
	.byte	0x1
	.value	0x311
	.long	0x281
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0xc
	.byte	0x1
	.value	0x313
	.long	0x30d
	.uleb128 0xe
	.string	"sem"
	.byte	0x1
	.value	0x314
	.long	0x25d
	.byte	0
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.value	0x315
	.long	0x192
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x1
	.value	0x320
	.long	0x319
	.uleb128 0x7
	.byte	0x4
	.long	0x31f
	.uleb128 0x10
	.long	0x32f
	.uleb128 0x11
	.long	0x1bb
	.uleb128 0x11
	.long	0x1bb
	.byte	0
	.uleb128 0x12
	.long	.LASF51
	.byte	0x14
	.byte	0x1
	.value	0x321
	.long	0x37e
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.value	0x322
	.long	0x21d
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.value	0x323
	.long	0x30d
	.byte	0x4
	.uleb128 0x13
	.long	.LASF54
	.byte	0x1
	.value	0x324
	.long	0x1bb
	.byte	0x8
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.value	0x325
	.long	0x76
	.byte	0xc
	.uleb128 0x13
	.long	.LASF56
	.byte	0x1
	.value	0x326
	.long	0x76
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.value	0x327
	.long	0x32f
	.uleb128 0x12
	.long	.LASF58
	.byte	0x4
	.byte	0x1
	.value	0x330
	.long	0x3a5
	.uleb128 0x13
	.long	.LASF59
	.byte	0x1
	.value	0x331
	.long	0x269
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0x1
	.value	0x333
	.long	0x275
	.uleb128 0xb
	.long	.LASF61
	.byte	0x1
	.value	0x339
	.long	0x3bd
	.uleb128 0x7
	.byte	0x4
	.long	0x3c3
	.uleb128 0x10
	.long	0x3d8
	.uleb128 0x11
	.long	0x1bb
	.uleb128 0x11
	.long	0x1bb
	.uleb128 0x11
	.long	0x1bb
	.byte	0
	.uleb128 0xb
	.long	.LASF62
	.byte	0x1
	.value	0x341
	.long	0x68
	.uleb128 0xb
	.long	.LASF63
	.byte	0x1
	.value	0x342
	.long	0x3d8
	.uleb128 0x12
	.long	.LASF64
	.byte	0xc
	.byte	0x1
	.value	0x36d
	.long	0x40b
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.value	0x36e
	.long	0x2ca
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF66
	.byte	0x1
	.value	0x375
	.long	0x417
	.uleb128 0x7
	.byte	0x4
	.long	0x41d
	.uleb128 0x10
	.long	0x428
	.uleb128 0x11
	.long	0x428
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x42e
	.uleb128 0x12
	.long	.LASF67
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x463
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.value	0x377
	.long	0x1bb
	.byte	0
	.uleb128 0x13
	.long	.LASF53
	.byte	0x1
	.value	0x378
	.long	0x40b
	.byte	0x4
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0x379
	.long	0x463
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x3d8
	.long	0x473
	.uleb128 0x15
	.long	0x1b4
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF70
	.byte	0x24
	.byte	0x1
	.value	0x37d
	.long	0x4a8
	.uleb128 0x13
	.long	.LASF71
	.byte	0x1
	.value	0x37e
	.long	0x42e
	.byte	0
	.uleb128 0x13
	.long	.LASF72
	.byte	0x1
	.value	0x37f
	.long	0x4a8
	.byte	0xc
	.uleb128 0x13
	.long	.LASF52
	.byte	0x1
	.value	0x380
	.long	0x37e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3f0
	.uleb128 0x16
	.long	.LASF78
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x386
	.long	0x4de
	.uleb128 0x17
	.long	.LASF73
	.byte	0
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.uleb128 0x17
	.long	.LASF75
	.byte	0x2
	.uleb128 0x17
	.long	.LASF76
	.byte	0x3
	.uleb128 0x17
	.long	.LASF77
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF79
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x38d
	.long	0x50e
	.uleb128 0x17
	.long	.LASF80
	.byte	0
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.uleb128 0x17
	.long	.LASF82
	.byte	0x2
	.uleb128 0x17
	.long	.LASF83
	.byte	0x3
	.uleb128 0x17
	.long	.LASF84
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.value	0x39c
	.long	0x554
	.uleb128 0x19
	.string	"obj"
	.byte	0x1
	.value	0x39d
	.long	0x1bb
	.uleb128 0x1a
	.long	.LASF85
	.byte	0x1
	.value	0x39e
	.long	0x589
	.uleb128 0x19
	.string	"sem"
	.byte	0x1
	.value	0x39f
	.long	0x58f
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x3a0
	.long	0x595
	.uleb128 0x1a
	.long	.LASF86
	.byte	0x1
	.value	0x3a1
	.long	0x59b
	.byte	0
	.uleb128 0x12
	.long	.LASF87
	.byte	0x10
	.byte	0x1
	.value	0x3a4
	.long	0x589
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.value	0x3a5
	.long	0x192
	.byte	0
	.uleb128 0x13
	.long	.LASF88
	.byte	0x1
	.value	0x3a6
	.long	0x6f
	.byte	0x8
	.uleb128 0x13
	.long	.LASF89
	.byte	0x1
	.value	0x3a7
	.long	0x68
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x554
	.uleb128 0x7
	.byte	0x4
	.long	0x2e5
	.uleb128 0x7
	.byte	0x4
	.long	0x2ca
	.uleb128 0x7
	.byte	0x4
	.long	0x281
	.uleb128 0x12
	.long	.LASF90
	.byte	0x14
	.byte	0x1
	.value	0x394
	.long	0x61f
	.uleb128 0x13
	.long	.LASF91
	.byte	0x1
	.value	0x395
	.long	0x19d
	.byte	0
	.uleb128 0x13
	.long	.LASF92
	.byte	0x1
	.value	0x396
	.long	0x624
	.byte	0x8
	.uleb128 0x1b
	.string	"tag"
	.byte	0x1
	.value	0x397
	.long	0xbf
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.value	0x398
	.long	0xbf
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1
	.value	0x399
	.long	0xbf
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF95
	.byte	0x1
	.value	0x39a
	.long	0xbf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0xc
	.uleb128 0x1c
	.long	.LASF96
	.byte	0x1
	.value	0x39b
	.long	0xbf
	.byte	0x4
	.byte	0xf
	.byte	0
	.byte	0xc
	.uleb128 0xa
	.long	0x50e
	.byte	0x10
	.byte	0
	.uleb128 0x1d
	.long	.LASF619
	.uleb128 0x7
	.byte	0x4
	.long	0x61f
	.uleb128 0x16
	.long	.LASF97
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0x3ac
	.long	0x648
	.uleb128 0x17
	.long	.LASF98
	.byte	0
	.uleb128 0x17
	.long	.LASF99
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x8
	.byte	0x1
	.value	0x525
	.long	0x68a
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.value	0x526
	.long	0x68a
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x527
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.value	0x528
	.long	0xb4
	.byte	0x6
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.value	0x529
	.long	0x690
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa9
	.uleb128 0x14
	.long	0xa9
	.long	0x69f
	.uleb128 0x1e
	.long	0x1b4
	.byte	0
	.uleb128 0x12
	.long	.LASF104
	.byte	0x4
	.byte	0x1
	.value	0x54d
	.long	0x6c7
	.uleb128 0x13
	.long	.LASF105
	.byte	0x1
	.value	0x54e
	.long	0xb4
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x54f
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.value	0x55e
	.long	0x6e9
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.value	0x55f
	.long	0xf4
	.uleb128 0x1a
	.long	.LASF107
	.byte	0x1
	.value	0x560
	.long	0x737
	.byte	0
	.uleb128 0x12
	.long	.LASF108
	.byte	0x10
	.byte	0x1
	.value	0x55d
	.long	0x737
	.uleb128 0xa
	.long	0x6c7
	.byte	0
	.uleb128 0xe
	.string	"ref"
	.byte	0x1
	.value	0x562
	.long	0xa9
	.byte	0x4
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0x563
	.long	0xa9
	.byte	0x5
	.uleb128 0x13
	.long	.LASF109
	.byte	0x1
	.value	0x564
	.long	0xa9
	.byte	0x6
	.uleb128 0xa
	.long	0x76e
	.byte	0x8
	.uleb128 0x13
	.long	.LASF103
	.byte	0x1
	.value	0x56d
	.long	0x787
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x6e9
	.uleb128 0xd
	.byte	0x8
	.byte	0x1
	.value	0x566
	.long	0x76e
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.value	0x567
	.long	0x68a
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x568
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF102
	.byte	0x1
	.value	0x569
	.long	0xb4
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.byte	0x8
	.byte	0x1
	.value	0x565
	.long	0x787
	.uleb128 0x1f
	.long	0x73d
	.uleb128 0x19
	.string	"b"
	.byte	0x1
	.value	0x56b
	.long	0x648
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x796
	.uleb128 0x1e
	.long	0x1b4
	.byte	0
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1c
	.byte	0x1
	.value	0x573
	.long	0x7ff
	.uleb128 0x13
	.long	.LASF111
	.byte	0x1
	.value	0x574
	.long	0x2af
	.byte	0
	.uleb128 0x13
	.long	.LASF112
	.byte	0x1
	.value	0x575
	.long	0x7ff
	.byte	0xc
	.uleb128 0x13
	.long	.LASF113
	.byte	0x1
	.value	0x576
	.long	0xb4
	.byte	0xe
	.uleb128 0x13
	.long	.LASF114
	.byte	0x1
	.value	0x577
	.long	0x7ff
	.byte	0x10
	.uleb128 0x13
	.long	.LASF115
	.byte	0x1
	.value	0x578
	.long	0x7ff
	.byte	0x12
	.uleb128 0x13
	.long	.LASF116
	.byte	0x1
	.value	0x579
	.long	0x815
	.byte	0x14
	.uleb128 0x13
	.long	.LASF117
	.byte	0x1
	.value	0x57a
	.long	0x81a
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.long	0xb4
	.uleb128 0x10
	.long	0x80f
	.uleb128 0x11
	.long	0x737
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x804
	.uleb128 0xf
	.long	0x80f
	.uleb128 0xf
	.long	0x737
	.uleb128 0xd
	.byte	0x6
	.byte	0x1
	.value	0x59e
	.long	0x836
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0x59f
	.long	0x836
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x846
	.uleb128 0x15
	.long	0x1b4
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.long	.LASF118
	.byte	0x1
	.value	0x5a0
	.long	0x81f
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.value	0x5a1
	.long	0x874
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0x5a2
	.long	0xa9
	.byte	0
	.uleb128 0xe
	.string	"a"
	.byte	0x1
	.value	0x5a3
	.long	0x846
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.long	.LASF119
	.byte	0x1
	.value	0x5a4
	.long	0x852
	.uleb128 0x12
	.long	.LASF120
	.byte	0x2
	.byte	0x1
	.value	0x5cd
	.long	0x8a8
	.uleb128 0xe
	.string	"evt"
	.byte	0x1
	.value	0x5ce
	.long	0xa9
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x5cf
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF121
	.byte	0x4
	.byte	0x1
	.value	0x5d3
	.long	0x8d0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x5d4
	.long	0xb4
	.byte	0
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x5d5
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF123
	.byte	0x3
	.byte	0x1
	.value	0x5d9
	.long	0x8f8
	.uleb128 0x13
	.long	.LASF124
	.byte	0x1
	.value	0x5da
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF125
	.byte	0x1
	.value	0x5db
	.long	0xa9
	.byte	0x2
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x908
	.uleb128 0x15
	.long	0x1b4
	.byte	0xf
	.byte	0
	.uleb128 0x12
	.long	.LASF126
	.byte	0x8
	.byte	0x1
	.value	0x698
	.long	0x923
	.uleb128 0x13
	.long	.LASF127
	.byte	0x1
	.value	0x699
	.long	0x923
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x933
	.uleb128 0x15
	.long	0x1b4
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.long	.LASF128
	.byte	0x4
	.byte	0x1
	.value	0x6bc
	.long	0x95b
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x6bd
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF129
	.byte	0x1
	.value	0x6be
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF130
	.byte	0x2
	.byte	0x1
	.value	0x6d7
	.long	0x982
	.uleb128 0xe
	.string	"le"
	.byte	0x1
	.value	0x6d8
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF131
	.byte	0x1
	.value	0x6d9
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF132
	.byte	0x9
	.byte	0x1
	.value	0x6fa
	.long	0x9de
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x6fb
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF134
	.byte	0x1
	.value	0x6fc
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF135
	.byte	0x1
	.value	0x6fd
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF136
	.byte	0x1
	.value	0x6fe
	.long	0xa9
	.byte	0x4
	.uleb128 0x13
	.long	.LASF137
	.byte	0x1
	.value	0x6ff
	.long	0xb4
	.byte	0x5
	.uleb128 0x13
	.long	.LASF138
	.byte	0x1
	.value	0x700
	.long	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.long	.LASF139
	.byte	0x41
	.byte	0x1
	.value	0x704
	.long	0xa06
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x705
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF140
	.byte	0x1
	.value	0x706
	.long	0xa06
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0xa16
	.uleb128 0x15
	.long	0x1b4
	.byte	0x3f
	.byte	0
	.uleb128 0x12
	.long	.LASF141
	.byte	0x9
	.byte	0x1
	.value	0x715
	.long	0xa3e
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x716
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0x717
	.long	0x923
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF143
	.byte	0x8
	.byte	0x1
	.value	0x71b
	.long	0xa8d
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x71c
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF144
	.byte	0x1
	.value	0x71d
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF145
	.byte	0x1
	.value	0x71e
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF146
	.byte	0x1
	.value	0x71f
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF147
	.byte	0x1
	.value	0x720
	.long	0xb4
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF148
	.byte	0x7
	.byte	0x1
	.value	0x724
	.long	0xab5
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x725
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF149
	.byte	0x1
	.value	0x726
	.long	0x846
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF150
	.byte	0x8
	.byte	0x1
	.value	0x742
	.long	0xad0
	.uleb128 0x13
	.long	.LASF127
	.byte	0x1
	.value	0x743
	.long	0x923
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF151
	.byte	0x4
	.byte	0x1
	.value	0x747
	.long	0xb05
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x748
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF152
	.byte	0x1
	.value	0x749
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF153
	.byte	0x1
	.value	0x74a
	.long	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF154
	.byte	0x9
	.byte	0x1
	.value	0x74e
	.long	0xb2d
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x74f
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0x750
	.long	0x923
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF155
	.byte	0xf
	.byte	0x1
	.value	0x759
	.long	0xb96
	.uleb128 0x13
	.long	.LASF156
	.byte	0x1
	.value	0x75a
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF157
	.byte	0x1
	.value	0x75b
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0x75c
	.long	0xa9
	.byte	0x4
	.uleb128 0x13
	.long	.LASF158
	.byte	0x1
	.value	0x75d
	.long	0xa9
	.byte	0x5
	.uleb128 0x13
	.long	.LASF159
	.byte	0x1
	.value	0x75e
	.long	0x874
	.byte	0x6
	.uleb128 0x13
	.long	.LASF160
	.byte	0x1
	.value	0x75f
	.long	0xa9
	.byte	0xd
	.uleb128 0x13
	.long	.LASF161
	.byte	0x1
	.value	0x760
	.long	0xa9
	.byte	0xe
	.byte	0
	.uleb128 0x12
	.long	.LASF162
	.byte	0x20
	.byte	0x1
	.value	0x76a
	.long	0xbbe
	.uleb128 0xe
	.string	"len"
	.byte	0x1
	.value	0x76b
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.value	0x76c
	.long	0xbbe
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0xbce
	.uleb128 0x15
	.long	0x1b4
	.byte	0x1e
	.byte	0
	.uleb128 0x12
	.long	.LASF163
	.byte	0x7
	.byte	0x1
	.value	0x77b
	.long	0xc1d
	.uleb128 0x13
	.long	.LASF164
	.byte	0x1
	.value	0x77c
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0x77d
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF166
	.byte	0x1
	.value	0x77e
	.long	0xb4
	.byte	0x3
	.uleb128 0x13
	.long	.LASF167
	.byte	0x1
	.value	0x77f
	.long	0xa9
	.byte	0x5
	.uleb128 0x13
	.long	.LASF161
	.byte	0x1
	.value	0x780
	.long	0xa9
	.byte	0x6
	.byte	0
	.uleb128 0x12
	.long	.LASF168
	.byte	0x2
	.byte	0x1
	.value	0x784
	.long	0xc45
	.uleb128 0x13
	.long	.LASF169
	.byte	0x1
	.value	0x785
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF170
	.byte	0x1
	.value	0x786
	.long	0xa9
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF171
	.byte	0x19
	.byte	0x1
	.value	0x78a
	.long	0xce2
	.uleb128 0x13
	.long	.LASF172
	.byte	0x1
	.value	0x78b
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF173
	.byte	0x1
	.value	0x78c
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF161
	.byte	0x1
	.value	0x78d
	.long	0xa9
	.byte	0x4
	.uleb128 0x13
	.long	.LASF174
	.byte	0x1
	.value	0x78e
	.long	0x874
	.byte	0x5
	.uleb128 0x13
	.long	.LASF158
	.byte	0x1
	.value	0x78f
	.long	0xa9
	.byte	0xc
	.uleb128 0x13
	.long	.LASF175
	.byte	0x1
	.value	0x790
	.long	0xb4
	.byte	0xd
	.uleb128 0x13
	.long	.LASF176
	.byte	0x1
	.value	0x791
	.long	0xb4
	.byte	0xf
	.uleb128 0x13
	.long	.LASF177
	.byte	0x1
	.value	0x792
	.long	0xb4
	.byte	0x11
	.uleb128 0x13
	.long	.LASF178
	.byte	0x1
	.value	0x793
	.long	0xb4
	.byte	0x13
	.uleb128 0x13
	.long	.LASF179
	.byte	0x1
	.value	0x794
	.long	0xb4
	.byte	0x15
	.uleb128 0x13
	.long	.LASF180
	.byte	0x1
	.value	0x795
	.long	0xb4
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.long	.LASF181
	.byte	0x2
	.byte	0x1
	.value	0x7c5
	.long	0xcfd
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x7c6
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF182
	.byte	0x12
	.byte	0x1
	.value	0x7e4
	.long	0xd25
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x7e5
	.long	0xb4
	.byte	0
	.uleb128 0xe
	.string	"ltk"
	.byte	0x1
	.value	0x7e6
	.long	0x8f8
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF183
	.byte	0x2
	.byte	0x1
	.value	0x7f0
	.long	0xd40
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x7f1
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF184
	.byte	0x9
	.byte	0x1
	.value	0x7fb
	.long	0xd68
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x7fc
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF185
	.byte	0x1
	.value	0x7fd
	.long	0x923
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF186
	.byte	0xe
	.byte	0x1
	.value	0x813
	.long	0xdd1
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x814
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.value	0x815
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.value	0x816
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0x817
	.long	0xb4
	.byte	0x6
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.value	0x818
	.long	0xb4
	.byte	0x8
	.uleb128 0x13
	.long	.LASF179
	.byte	0x1
	.value	0x819
	.long	0xb4
	.byte	0xa
	.uleb128 0x13
	.long	.LASF180
	.byte	0x1
	.value	0x81a
	.long	0xb4
	.byte	0xc
	.byte	0
	.uleb128 0x12
	.long	.LASF190
	.byte	0x3
	.byte	0x1
	.value	0x824
	.long	0xdf9
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x825
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF191
	.byte	0x1
	.value	0x826
	.long	0xa9
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF192
	.byte	0x6
	.byte	0x1
	.value	0x830
	.long	0xe2e
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x831
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF193
	.byte	0x1
	.value	0x832
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF194
	.byte	0x1
	.value	0x833
	.long	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF195
	.byte	0x4
	.byte	0x1
	.value	0x844
	.long	0xe56
	.uleb128 0x13
	.long	.LASF196
	.byte	0x1
	.value	0x845
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF197
	.byte	0x1
	.value	0x846
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF198
	.byte	0x40
	.byte	0x1
	.value	0x84a
	.long	0xe71
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.value	0x84b
	.long	0xa06
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF199
	.byte	0x27
	.byte	0x1
	.value	0x84f
	.long	0xea6
	.uleb128 0x13
	.long	.LASF200
	.byte	0x1
	.value	0x850
	.long	0x874
	.byte	0
	.uleb128 0x13
	.long	.LASF201
	.byte	0x1
	.value	0x851
	.long	0x8f8
	.byte	0x7
	.uleb128 0x13
	.long	.LASF202
	.byte	0x1
	.value	0x852
	.long	0x8f8
	.byte	0x17
	.byte	0
	.uleb128 0x12
	.long	.LASF203
	.byte	0x7
	.byte	0x1
	.value	0x856
	.long	0xec1
	.uleb128 0x13
	.long	.LASF200
	.byte	0x1
	.value	0x857
	.long	0x874
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF204
	.byte	0x9
	.byte	0x1
	.value	0x881
	.long	0xf10
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x882
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF196
	.byte	0x1
	.value	0x883
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF197
	.byte	0x1
	.value	0x884
	.long	0xb4
	.byte	0x3
	.uleb128 0x13
	.long	.LASF205
	.byte	0x1
	.value	0x885
	.long	0xb4
	.byte	0x5
	.uleb128 0x13
	.long	.LASF206
	.byte	0x1
	.value	0x886
	.long	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.long	.LASF207
	.byte	0x7
	.byte	0x1
	.value	0x89e
	.long	0xf5f
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x89f
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF208
	.byte	0x1
	.value	0x8a0
	.long	0xa9
	.byte	0x2
	.uleb128 0x13
	.long	.LASF209
	.byte	0x1
	.value	0x8a1
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF210
	.byte	0x1
	.value	0x8a2
	.long	0xa9
	.byte	0x4
	.uleb128 0x13
	.long	.LASF211
	.byte	0x1
	.value	0x8a3
	.long	0xb4
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.long	.LASF212
	.byte	0x4
	.byte	0x1
	.value	0x997
	.long	0xf94
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x998
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x999
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF191
	.byte	0x1
	.value	0x99a
	.long	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF213
	.byte	0x4
	.byte	0x1
	.value	0x9ab
	.long	0xfc9
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x9ac
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0x9ad
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF214
	.byte	0x1
	.value	0x9ae
	.long	0xa9
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF215
	.byte	0x3
	.byte	0x1
	.value	0x9c2
	.long	0xff1
	.uleb128 0x13
	.long	.LASF216
	.byte	0x1
	.value	0x9c3
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF124
	.byte	0x1
	.value	0x9c4
	.long	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF217
	.byte	0x4
	.byte	0x1
	.value	0x9cd
	.long	0x1026
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0x9ce
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF216
	.byte	0x1
	.value	0x9cf
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF124
	.byte	0x1
	.value	0x9d0
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF218
	.byte	0x1
	.byte	0x1
	.value	0x9db
	.long	0x104c
	.uleb128 0x13
	.long	.LASF219
	.byte	0x1
	.value	0x9dc
	.long	0xa9
	.byte	0
	.uleb128 0xe
	.string	"h"
	.byte	0x1
	.value	0x9dd
	.long	0x104c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x933
	.long	0x105b
	.uleb128 0x1e
	.long	0x1b4
	.byte	0
	.uleb128 0x12
	.long	.LASF220
	.byte	0x3
	.byte	0x1
	.value	0xa23
	.long	0x1083
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xa24
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa25
	.long	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF221
	.byte	0x1
	.byte	0x1
	.value	0xa4d
	.long	0x109e
	.uleb128 0x13
	.long	.LASF222
	.byte	0x1
	.value	0xa4e
	.long	0xa9
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF223
	.byte	0x12
	.byte	0x1
	.value	0xa57
	.long	0x1114
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xa58
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa59
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF224
	.byte	0x1
	.value	0xa5a
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF174
	.byte	0x1
	.value	0xa5b
	.long	0x874
	.byte	0x4
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0xa5c
	.long	0xb4
	.byte	0xb
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xa5d
	.long	0xb4
	.byte	0xd
	.uleb128 0x13
	.long	.LASF225
	.byte	0x1
	.value	0xa5e
	.long	0xb4
	.byte	0xf
	.uleb128 0x13
	.long	.LASF226
	.byte	0x1
	.value	0xa5f
	.long	0xa9
	.byte	0x11
	.byte	0
	.uleb128 0x12
	.long	.LASF227
	.byte	0x9
	.byte	0x1
	.value	0xa63
	.long	0x1156
	.uleb128 0x13
	.long	.LASF228
	.byte	0x1
	.value	0xa64
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF229
	.byte	0x1
	.value	0xa65
	.long	0x874
	.byte	0x1
	.uleb128 0x13
	.long	.LASF230
	.byte	0x1
	.value	0xa66
	.long	0xa9
	.byte	0x8
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.value	0xa67
	.long	0x1156
	.byte	0x9
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x1165
	.uleb128 0x1e
	.long	0x1b4
	.byte	0
	.uleb128 0x12
	.long	.LASF231
	.byte	0x9
	.byte	0x1
	.value	0xa71
	.long	0x11b4
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xa72
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa73
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0xa74
	.long	0xb4
	.byte	0x3
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xa75
	.long	0xb4
	.byte	0x5
	.uleb128 0x13
	.long	.LASF225
	.byte	0x1
	.value	0xa76
	.long	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.long	.LASF232
	.byte	0xb
	.byte	0x1
	.value	0xa7a
	.long	0x11e9
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xa7b
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa7c
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0xa7d
	.long	0x923
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.long	.LASF233
	.byte	0xc
	.byte	0x1
	.value	0xa81
	.long	0x121e
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa82
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF234
	.byte	0x1
	.value	0xa83
	.long	0xca
	.byte	0x2
	.uleb128 0x13
	.long	.LASF235
	.byte	0x1
	.value	0xa84
	.long	0xb4
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.long	.LASF236
	.byte	0xa
	.byte	0x1
	.value	0xa88
	.long	0x126d
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa89
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.value	0xa8a
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.value	0xa8b
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xa8c
	.long	0xb4
	.byte	0x6
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.value	0xa8d
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF237
	.byte	0xa
	.byte	0x1
	.value	0xa91
	.long	0x12bc
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xa92
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF196
	.byte	0x1
	.value	0xa93
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF197
	.byte	0x1
	.value	0xa94
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF205
	.byte	0x1
	.value	0xa95
	.long	0xb4
	.byte	0x6
	.uleb128 0x13
	.long	.LASF206
	.byte	0x1
	.value	0xa96
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF238
	.byte	0x41
	.byte	0x1
	.value	0xa9a
	.long	0x12e4
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xa9b
	.long	0xa9
	.byte	0
	.uleb128 0xe
	.string	"key"
	.byte	0x1
	.value	0xa9c
	.long	0xa06
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF239
	.byte	0x21
	.byte	0x1
	.value	0xaa0
	.long	0x130c
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xaa1
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF240
	.byte	0x1
	.value	0xaa2
	.long	0x130c
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x131c
	.uleb128 0x15
	.long	0x1b4
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.long	.LASF241
	.byte	0x1e
	.byte	0x1
	.value	0xaa6
	.long	0x13ac
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xaa7
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xaa8
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF224
	.byte	0x1
	.value	0xaa9
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF174
	.byte	0x1
	.value	0xaaa
	.long	0x874
	.byte	0x4
	.uleb128 0x13
	.long	.LASF242
	.byte	0x1
	.value	0xaab
	.long	0x846
	.byte	0xb
	.uleb128 0x13
	.long	.LASF243
	.byte	0x1
	.value	0xaac
	.long	0x846
	.byte	0x11
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0xaad
	.long	0xb4
	.byte	0x17
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xaae
	.long	0xb4
	.byte	0x19
	.uleb128 0x13
	.long	.LASF225
	.byte	0x1
	.value	0xaaf
	.long	0xb4
	.byte	0x1b
	.uleb128 0x13
	.long	.LASF226
	.byte	0x1
	.value	0xab0
	.long	0xa9
	.byte	0x1d
	.byte	0
	.uleb128 0x12
	.long	.LASF244
	.byte	0x5
	.byte	0x1
	.value	0xac2
	.long	0x13ee
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xac3
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xac4
	.long	0xb4
	.byte	0x1
	.uleb128 0x13
	.long	.LASF245
	.byte	0x1
	.value	0xac5
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF246
	.byte	0x1
	.value	0xac6
	.long	0xa9
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF247
	.byte	0x1
	.value	0xb13
	.long	0x23f
	.uleb128 0x12
	.long	.LASF248
	.byte	0x8
	.byte	0x1
	.value	0xb15
	.long	0x142f
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0xb16
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF249
	.byte	0x1
	.value	0xb17
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF101
	.byte	0x1
	.value	0xb18
	.long	0x142f
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1435
	.uleb128 0xf
	.long	0xa9
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xb1a
	.long	0x145a
	.uleb128 0x17
	.long	.LASF250
	.byte	0
	.uleb128 0x17
	.long	.LASF251
	.byte	0x1
	.uleb128 0x17
	.long	.LASF252
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	.LASF253
	.byte	0xc
	.byte	0x1
	.value	0xb1f
	.long	0x149c
	.uleb128 0x13
	.long	.LASF254
	.byte	0x1
	.value	0xb20
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.value	0xb21
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.value	0xb22
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF255
	.byte	0x1
	.value	0xb23
	.long	0x149c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x14a2
	.uleb128 0xf
	.long	0x846
	.uleb128 0xb
	.long	.LASF256
	.byte	0x1
	.value	0xb29
	.long	0x14b3
	.uleb128 0x10
	.long	0x14cd
	.uleb128 0x11
	.long	0x14cd
	.uleb128 0x11
	.long	0x93
	.uleb128 0x11
	.long	0xa9
	.uleb128 0x11
	.long	0x14d8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x14d3
	.uleb128 0xf
	.long	0x874
	.uleb128 0x7
	.byte	0x4
	.long	0x648
	.uleb128 0x12
	.long	.LASF257
	.byte	0x6
	.byte	0x1
	.value	0xb2b
	.long	0x1520
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0xb2c
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF170
	.byte	0x1
	.value	0xb2d
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0xb2e
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF166
	.byte	0x1
	.value	0xb2f
	.long	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF258
	.byte	0x7
	.byte	0x1
	.value	0xb33
	.long	0x153b
	.uleb128 0x13
	.long	.LASF229
	.byte	0x1
	.value	0xb34
	.long	0x874
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF259
	.uleb128 0x12
	.long	.LASF260
	.byte	0x8
	.byte	0x1
	.value	0xb73
	.long	0x1584
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.value	0xb74
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.value	0xb75
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xb76
	.long	0xb4
	.byte	0x4
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.value	0xb77
	.long	0xb4
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xb7d
	.long	0x15a4
	.uleb128 0x17
	.long	.LASF261
	.byte	0
	.uleb128 0x17
	.long	.LASF262
	.byte	0x1
	.uleb128 0x17
	.long	.LASF263
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xb8c
	.long	0x15be
	.uleb128 0x17
	.long	.LASF264
	.byte	0
	.uleb128 0x17
	.long	.LASF265
	.byte	0x1
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	0x33
	.byte	0x1
	.value	0xba4
	.long	0x15ea
	.uleb128 0x17
	.long	.LASF266
	.byte	0
	.uleb128 0x17
	.long	.LASF267
	.byte	0x1
	.uleb128 0x17
	.long	.LASF268
	.byte	0x2
	.uleb128 0x17
	.long	.LASF269
	.byte	0x3
	.uleb128 0x17
	.long	.LASF270
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF271
	.byte	0x1
	.value	0xbaa
	.long	0x15be
	.uleb128 0x7
	.byte	0x4
	.long	0x15fc
	.uleb128 0x12
	.long	.LASF272
	.byte	0x90
	.byte	0x1
	.value	0xd90
	.long	0x16df
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xd91
	.long	0xb4
	.byte	0
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0xd92
	.long	0xa9
	.byte	0x2
	.uleb128 0x13
	.long	.LASF224
	.byte	0x1
	.value	0xd93
	.long	0xa9
	.byte	0x3
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0xd94
	.long	0x463
	.byte	0x4
	.uleb128 0x13
	.long	.LASF273
	.byte	0x1
	.value	0xd95
	.long	0x15ea
	.byte	0x8
	.uleb128 0x13
	.long	.LASF274
	.byte	0x1
	.value	0xd96
	.long	0x15ea
	.byte	0x9
	.uleb128 0x13
	.long	.LASF214
	.byte	0x1
	.value	0xd97
	.long	0xa9
	.byte	0xa
	.uleb128 0xe
	.string	"err"
	.byte	0x1
	.value	0xd98
	.long	0xa9
	.byte	0xb
	.uleb128 0x13
	.long	.LASF94
	.byte	0x1
	.value	0xd99
	.long	0x1c3b
	.byte	0xc
	.uleb128 0x13
	.long	.LASF275
	.byte	0x1
	.value	0xd9a
	.long	0xb4
	.byte	0xe
	.uleb128 0xe
	.string	"rx"
	.byte	0x1
	.value	0xd9b
	.long	0x737
	.byte	0x10
	.uleb128 0x13
	.long	.LASF276
	.byte	0x1
	.value	0xd9c
	.long	0x12a
	.byte	0x14
	.uleb128 0x13
	.long	.LASF277
	.byte	0x1
	.value	0xd9d
	.long	0x2ca
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF278
	.byte	0x1
	.value	0xd9e
	.long	0x2ca
	.byte	0x28
	.uleb128 0x13
	.long	.LASF279
	.byte	0x1
	.value	0xd9f
	.long	0x12a
	.byte	0x34
	.uleb128 0xe
	.string	"ref"
	.byte	0x1
	.value	0xda0
	.long	0x3d8
	.byte	0x3c
	.uleb128 0xa
	.long	0x1d34
	.byte	0x40
	.byte	0
	.uleb128 0x16
	.long	.LASF280
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xbd0
	.long	0x1709
	.uleb128 0x17
	.long	.LASF281
	.byte	0
	.uleb128 0x17
	.long	.LASF282
	.byte	0x1
	.uleb128 0x17
	.long	.LASF283
	.byte	0x2
	.uleb128 0x17
	.long	.LASF284
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.long	.LASF285
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xca7
	.long	0x1751
	.uleb128 0x17
	.long	.LASF286
	.byte	0
	.uleb128 0x17
	.long	.LASF287
	.byte	0x1
	.uleb128 0x17
	.long	.LASF288
	.byte	0x2
	.uleb128 0x17
	.long	.LASF289
	.byte	0x3
	.uleb128 0x17
	.long	.LASF290
	.byte	0x4
	.uleb128 0x17
	.long	.LASF291
	.byte	0x5
	.uleb128 0x17
	.long	.LASF292
	.byte	0x6
	.uleb128 0x17
	.long	.LASF293
	.byte	0x7
	.uleb128 0x17
	.long	.LASF294
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF295
	.byte	0x10
	.byte	0x1
	.value	0xcb2
	.long	0x1793
	.uleb128 0x13
	.long	.LASF296
	.byte	0x1
	.value	0xcb3
	.long	0x229
	.byte	0
	.uleb128 0xe
	.string	"bus"
	.byte	0x1
	.value	0xcb4
	.long	0x1709
	.byte	0x4
	.uleb128 0x13
	.long	.LASF297
	.byte	0x1
	.value	0xcb5
	.long	0x1798
	.byte	0x8
	.uleb128 0x13
	.long	.LASF298
	.byte	0x1
	.value	0xcb6
	.long	0x17ad
	.byte	0xc
	.byte	0
	.uleb128 0x21
	.long	0x68
	.uleb128 0x7
	.byte	0x4
	.long	0x1793
	.uleb128 0x22
	.long	0x68
	.long	0x17ad
	.uleb128 0x11
	.long	0x737
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x179e
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xcb9
	.long	0x17e5
	.uleb128 0x17
	.long	.LASF299
	.byte	0
	.uleb128 0x17
	.long	.LASF300
	.byte	0x1
	.uleb128 0x17
	.long	.LASF301
	.byte	0x2
	.uleb128 0x17
	.long	.LASF302
	.byte	0x3
	.uleb128 0x17
	.long	.LASF303
	.byte	0x4
	.uleb128 0x17
	.long	.LASF304
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.long	.LASF305
	.byte	0xc
	.byte	0x1
	.value	0xccc
	.long	0x181a
	.uleb128 0x13
	.long	.LASF306
	.byte	0x1
	.value	0xccd
	.long	0x1838
	.byte	0
	.uleb128 0x13
	.long	.LASF307
	.byte	0x1
	.value	0xccf
	.long	0x1863
	.byte	0x4
	.uleb128 0x13
	.long	.LASF308
	.byte	0x1
	.value	0xcd1
	.long	0x1878
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.long	0x1ca
	.long	0x1838
	.uleb128 0x11
	.long	0x14cd
	.uleb128 0x11
	.long	0xb4
	.uleb128 0x11
	.long	0x1bb
	.uleb128 0x11
	.long	0x81
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x181a
	.uleb128 0x22
	.long	0x1ca
	.long	0x185c
	.uleb128 0x11
	.long	0x14cd
	.uleb128 0x11
	.long	0xb4
	.uleb128 0x11
	.long	0x185c
	.uleb128 0x11
	.long	0x81
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1862
	.uleb128 0x23
	.uleb128 0x7
	.byte	0x4
	.long	0x183e
	.uleb128 0x22
	.long	0x68
	.long	0x1878
	.uleb128 0x11
	.long	0x14cd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1869
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xcdb
	.long	0x18b6
	.uleb128 0x17
	.long	.LASF309
	.byte	0x1
	.uleb128 0x17
	.long	.LASF310
	.byte	0x2
	.uleb128 0x17
	.long	.LASF311
	.byte	0x4
	.uleb128 0x17
	.long	.LASF312
	.byte	0x8
	.uleb128 0x17
	.long	.LASF313
	.byte	0x10
	.uleb128 0x17
	.long	.LASF314
	.byte	0x20
	.uleb128 0x17
	.long	.LASF315
	.byte	0x3f
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xce6
	.long	0x18e2
	.uleb128 0x17
	.long	.LASF316
	.byte	0
	.uleb128 0x17
	.long	.LASF317
	.byte	0x1
	.uleb128 0x17
	.long	.LASF318
	.byte	0x2
	.uleb128 0x17
	.long	.LASF319
	.byte	0x3
	.uleb128 0x17
	.long	.LASF320
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF321
	.byte	0x1c
	.byte	0x1
	.value	0xced
	.long	0x1917
	.uleb128 0x13
	.long	.LASF234
	.byte	0x1
	.value	0xcee
	.long	0xca
	.byte	0
	.uleb128 0x13
	.long	.LASF235
	.byte	0x1
	.value	0xcef
	.long	0xb4
	.byte	0x8
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xcf0
	.long	0x8f8
	.byte	0xa
	.byte	0
	.uleb128 0x12
	.long	.LASF322
	.byte	0x16
	.byte	0x1
	.value	0xcf2
	.long	0x193f
	.uleb128 0xe
	.string	"val"
	.byte	0x1
	.value	0xcf3
	.long	0x8f8
	.byte	0
	.uleb128 0xe
	.string	"rpa"
	.byte	0x1
	.value	0xcf4
	.long	0x846
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	.LASF323
	.byte	0x60
	.byte	0x1
	.value	0xcfa
	.long	0x19a8
	.uleb128 0x13
	.long	.LASF229
	.byte	0x1
	.value	0xcfb
	.long	0x874
	.byte	0
	.uleb128 0x13
	.long	.LASF324
	.byte	0x1
	.value	0xcfc
	.long	0xa9
	.byte	0x7
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0xcfd
	.long	0x463
	.byte	0x8
	.uleb128 0x13
	.long	.LASF325
	.byte	0x1
	.value	0xcfe
	.long	0xb4
	.byte	0xc
	.uleb128 0xe
	.string	"ltk"
	.byte	0x1
	.value	0xcff
	.long	0x18e2
	.byte	0x10
	.uleb128 0xe
	.string	"irk"
	.byte	0x1
	.value	0xd00
	.long	0x1917
	.byte	0x2c
	.uleb128 0x13
	.long	.LASF326
	.byte	0x1
	.value	0xd01
	.long	0x18e2
	.byte	0x44
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xd0c
	.long	0x19ce
	.uleb128 0x17
	.long	.LASF327
	.byte	0
	.uleb128 0x17
	.long	.LASF328
	.byte	0x1
	.uleb128 0x17
	.long	.LASF329
	.byte	0x2
	.uleb128 0x17
	.long	.LASF330
	.byte	0x3
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xd1b
	.long	0x19ee
	.uleb128 0x17
	.long	.LASF331
	.byte	0
	.uleb128 0x17
	.long	.LASF332
	.byte	0x1
	.uleb128 0x17
	.long	.LASF333
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xd20
	.long	0x1a50
	.uleb128 0x17
	.long	.LASF334
	.byte	0
	.uleb128 0x17
	.long	.LASF335
	.byte	0x1
	.uleb128 0x17
	.long	.LASF336
	.byte	0x2
	.uleb128 0x17
	.long	.LASF337
	.byte	0x3
	.uleb128 0x17
	.long	.LASF338
	.byte	0x4
	.uleb128 0x17
	.long	.LASF339
	.byte	0x5
	.uleb128 0x17
	.long	.LASF340
	.byte	0x6
	.uleb128 0x17
	.long	.LASF341
	.byte	0x7
	.uleb128 0x17
	.long	.LASF342
	.byte	0x8
	.uleb128 0x17
	.long	.LASF343
	.byte	0x9
	.uleb128 0x17
	.long	.LASF344
	.byte	0xa
	.uleb128 0x17
	.long	.LASF345
	.byte	0xb
	.uleb128 0x17
	.long	.LASF346
	.byte	0xc
	.uleb128 0x17
	.long	.LASF347
	.byte	0xd
	.byte	0
	.uleb128 0x12
	.long	.LASF348
	.byte	0x24
	.byte	0x1
	.value	0xd30
	.long	0x1aac
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0xd31
	.long	0x923
	.byte	0
	.uleb128 0x13
	.long	.LASF349
	.byte	0x1
	.value	0xd32
	.long	0xca
	.byte	0x8
	.uleb128 0xe
	.string	"mtu"
	.byte	0x1
	.value	0xd33
	.long	0xb4
	.byte	0x10
	.uleb128 0x13
	.long	.LASF350
	.byte	0x1
	.value	0xd34
	.long	0x2e5
	.byte	0x14
	.uleb128 0x13
	.long	.LASF351
	.byte	0x1
	.value	0xd35
	.long	0xa9
	.byte	0x20
	.uleb128 0x13
	.long	.LASF352
	.byte	0x1
	.value	0xd36
	.long	0xa9
	.byte	0x21
	.byte	0
	.uleb128 0x12
	.long	.LASF353
	.byte	0xcc
	.byte	0x1
	.value	0xd38
	.long	0x1ba3
	.uleb128 0x13
	.long	.LASF354
	.byte	0x1
	.value	0xd39
	.long	0x874
	.byte	0
	.uleb128 0x13
	.long	.LASF355
	.byte	0x1
	.value	0xd3a
	.long	0x874
	.byte	0x7
	.uleb128 0x13
	.long	.LASF134
	.byte	0x1
	.value	0xd3b
	.long	0xa9
	.byte	0xe
	.uleb128 0x13
	.long	.LASF136
	.byte	0x1
	.value	0xd3c
	.long	0xa9
	.byte	0xf
	.uleb128 0x13
	.long	.LASF135
	.byte	0x1
	.value	0xd3d
	.long	0xb4
	.byte	0x10
	.uleb128 0x13
	.long	.LASF138
	.byte	0x1
	.value	0xd3e
	.long	0xb4
	.byte	0x12
	.uleb128 0x13
	.long	.LASF137
	.byte	0x1
	.value	0xd3f
	.long	0xb4
	.byte	0x14
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0xd40
	.long	0x1ba3
	.byte	0x16
	.uleb128 0x13
	.long	.LASF356
	.byte	0x1
	.value	0xd41
	.long	0xa06
	.byte	0x1e
	.uleb128 0x13
	.long	.LASF357
	.byte	0x1
	.value	0xd42
	.long	0x42e
	.byte	0x60
	.uleb128 0x13
	.long	.LASF69
	.byte	0x1
	.value	0xd43
	.long	0x463
	.byte	0x6c
	.uleb128 0xe
	.string	"le"
	.byte	0x1
	.value	0xd44
	.long	0x1a50
	.byte	0x70
	.uleb128 0x13
	.long	.LASF358
	.byte	0x1
	.value	0xd45
	.long	0x2e5
	.byte	0x94
	.uleb128 0x13
	.long	.LASF359
	.byte	0x1
	.value	0xd46
	.long	0x737
	.byte	0xa0
	.uleb128 0x13
	.long	.LASF360
	.byte	0x1
	.value	0xd47
	.long	0x2ca
	.byte	0xa4
	.uleb128 0x13
	.long	.LASF361
	.byte	0x1
	.value	0xd48
	.long	0x2ca
	.byte	0xb0
	.uleb128 0x13
	.long	.LASF362
	.byte	0x1
	.value	0xd49
	.long	0x2ca
	.byte	0xbc
	.uleb128 0xe
	.string	"drv"
	.byte	0x1
	.value	0xd4a
	.long	0x1bb9
	.byte	0xc8
	.byte	0
	.uleb128 0x14
	.long	0xa9
	.long	0x1bb9
	.uleb128 0x15
	.long	0x1b4
	.byte	0
	.uleb128 0x15
	.long	0x1b4
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1bbf
	.uleb128 0xf
	.long	0x1751
	.uleb128 0x12
	.long	.LASF363
	.byte	0x8
	.byte	0x1
	.value	0xd61
	.long	0x1bec
	.uleb128 0x13
	.long	.LASF364
	.byte	0x1
	.value	0xd62
	.long	0x1bf7
	.byte	0
	.uleb128 0x13
	.long	.LASF365
	.byte	0x1
	.value	0xd63
	.long	0x1bfd
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	0x1bf7
	.uleb128 0x11
	.long	0x142f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1bec
	.uleb128 0x7
	.byte	0x4
	.long	0x1bc4
	.uleb128 0xb
	.long	.LASF366
	.byte	0x1
	.value	0xd67
	.long	0x1bf7
	.uleb128 0x20
	.byte	0x1
	.long	0x33
	.byte	0x1
	.value	0xd6b
	.long	0x1c3b
	.uleb128 0x17
	.long	.LASF367
	.byte	0
	.uleb128 0x17
	.long	.LASF368
	.byte	0x1
	.uleb128 0x17
	.long	.LASF369
	.byte	0x2
	.uleb128 0x17
	.long	.LASF370
	.byte	0x3
	.uleb128 0x17
	.long	.LASF371
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.long	.LASF372
	.byte	0x1
	.value	0xd71
	.long	0x1c0f
	.uleb128 0x20
	.byte	0x4
	.long	0x6f
	.byte	0x1
	.value	0xd72
	.long	0x1c91
	.uleb128 0x17
	.long	.LASF373
	.byte	0
	.uleb128 0x17
	.long	.LASF374
	.byte	0x1
	.uleb128 0x17
	.long	.LASF375
	.byte	0x2
	.uleb128 0x17
	.long	.LASF376
	.byte	0x3
	.uleb128 0x17
	.long	.LASF377
	.byte	0x4
	.uleb128 0x17
	.long	.LASF378
	.byte	0x5
	.uleb128 0x17
	.long	.LASF379
	.byte	0x6
	.uleb128 0x17
	.long	.LASF380
	.byte	0x7
	.uleb128 0x17
	.long	.LASF381
	.byte	0x8
	.uleb128 0x17
	.long	.LASF382
	.byte	0x9
	.byte	0
	.uleb128 0x12
	.long	.LASF383
	.byte	0x50
	.byte	0x1
	.value	0xd7e
	.long	0x1d2e
	.uleb128 0xe
	.string	"dst"
	.byte	0x1
	.value	0xd7f
	.long	0x874
	.byte	0
	.uleb128 0x13
	.long	.LASF384
	.byte	0x1
	.value	0xd80
	.long	0x874
	.byte	0x7
	.uleb128 0x13
	.long	.LASF385
	.byte	0x1
	.value	0xd81
	.long	0x874
	.byte	0xe
	.uleb128 0x13
	.long	.LASF165
	.byte	0x1
	.value	0xd82
	.long	0xb4
	.byte	0x16
	.uleb128 0x13
	.long	.LASF187
	.byte	0x1
	.value	0xd83
	.long	0xb4
	.byte	0x18
	.uleb128 0x13
	.long	.LASF188
	.byte	0x1
	.value	0xd84
	.long	0xb4
	.byte	0x1a
	.uleb128 0x13
	.long	.LASF189
	.byte	0x1
	.value	0xd85
	.long	0xb4
	.byte	0x1c
	.uleb128 0x13
	.long	.LASF55
	.byte	0x1
	.value	0xd86
	.long	0xb4
	.byte	0x1e
	.uleb128 0x13
	.long	.LASF142
	.byte	0x1
	.value	0xd87
	.long	0x923
	.byte	0x20
	.uleb128 0x13
	.long	.LASF325
	.byte	0x1
	.value	0xd88
	.long	0x1d2e
	.byte	0x28
	.uleb128 0x13
	.long	.LASF386
	.byte	0x1
	.value	0xd89
	.long	0x473
	.byte	0x2c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x193f
	.uleb128 0x18
	.byte	0x50
	.byte	0x1
	.value	0xda1
	.long	0x1d49
	.uleb128 0x19
	.string	"le"
	.byte	0x1
	.value	0xda2
	.long	0x1c91
	.byte	0
	.uleb128 0x12
	.long	.LASF387
	.byte	0x8
	.byte	0x1
	.value	0xee2
	.long	0x1d8b
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0xee3
	.long	0xa9
	.byte	0
	.uleb128 0x13
	.long	.LASF133
	.byte	0x1
	.value	0xee4
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF124
	.byte	0x1
	.value	0xee5
	.long	0xb4
	.byte	0x2
	.uleb128 0x13
	.long	.LASF388
	.byte	0x1
	.value	0xee6
	.long	0x58f
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.long	.LASF389
	.byte	0x4
	.byte	0x1
	.value	0xee8
	.long	0x1dbf
	.uleb128 0x13
	.long	.LASF93
	.byte	0x1
	.value	0xee9
	.long	0xa9
	.byte	0
	.uleb128 0xe
	.string	"id"
	.byte	0x1
	.value	0xeea
	.long	0xa9
	.byte	0x1
	.uleb128 0x13
	.long	.LASF122
	.byte	0x1
	.value	0xeeb
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x24
	.long	.LASF391
	.byte	0x1
	.byte	0x52
	.long	0x153b
	.byte	0x3
	.long	0x1ddb
	.uleb128 0x25
	.long	.LASF390
	.byte	0x1
	.byte	0x52
	.long	0x1ddb
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x12a
	.uleb128 0x26
	.long	.LASF393
	.byte	0x1
	.value	0x4e8
	.byte	0x3
	.long	0x1e07
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.value	0x4e8
	.long	0xb4
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x4e8
	.long	0x68a
	.byte	0
	.uleb128 0x28
	.long	.LASF392
	.byte	0x1
	.value	0x4ff
	.long	0xb4
	.byte	0x3
	.long	0x1e25
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x4ff
	.long	0x142f
	.byte	0
	.uleb128 0x26
	.long	.LASF394
	.byte	0x1
	.value	0x521
	.byte	0x3
	.long	0x1e57
	.uleb128 0x29
	.long	.LASF296
	.byte	0x1
	.value	0x521
	.long	0x229
	.uleb128 0x29
	.long	.LASF395
	.byte	0x1
	.value	0x521
	.long	0x229
	.uleb128 0x29
	.long	.LASF102
	.byte	0x1
	.value	0x522
	.long	0x6f
	.byte	0
	.uleb128 0x26
	.long	.LASF396
	.byte	0x1
	.value	0x1344
	.byte	0x1
	.long	0x1e7d
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1344
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1346
	.long	0x1e7d
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x12e4
	.uleb128 0x26
	.long	.LASF397
	.byte	0x1
	.value	0x149f
	.byte	0x1
	.long	0x1ea8
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x149f
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14a1
	.long	0x1ea8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x982
	.uleb128 0x26
	.long	.LASF398
	.byte	0x1
	.value	0x14b0
	.byte	0x1
	.long	0x1ed3
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14b0
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14b2
	.long	0x1ed3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xb05
	.uleb128 0x26
	.long	.LASF399
	.byte	0x1
	.value	0x14d1
	.byte	0x1
	.long	0x1efe
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14d1
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14d3
	.long	0x1efe
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x9de
	.uleb128 0x26
	.long	.LASF400
	.byte	0x1
	.value	0x14dc
	.byte	0x1
	.long	0x1f29
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14dc
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14de
	.long	0x1f29
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa16
	.uleb128 0x26
	.long	.LASF401
	.byte	0x1
	.value	0x14e2
	.byte	0x1
	.long	0x1f54
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14e2
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14e4
	.long	0x1f54
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd40
	.uleb128 0x26
	.long	.LASF402
	.byte	0x1
	.value	0x1351
	.byte	0x1
	.long	0x1f80
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1351
	.long	0x737
	.uleb128 0x2b
	.long	.LASF133
	.byte	0x1
	.value	0x1353
	.long	0xa9
	.byte	0
	.uleb128 0x26
	.long	.LASF403
	.byte	0x1
	.value	0x14a9
	.byte	0x1
	.long	0x1fa5
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14a9
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14ab
	.long	0x1fa5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa8d
	.uleb128 0x26
	.long	.LASF404
	.byte	0x1
	.value	0x14c4
	.byte	0x1
	.long	0x1fdc
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14c4
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14c6
	.long	0x1fdc
	.uleb128 0x2b
	.long	.LASF153
	.byte	0x1
	.value	0x14c7
	.long	0xa9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xad0
	.uleb128 0x26
	.long	.LASF405
	.byte	0x1
	.value	0x14b6
	.byte	0x1
	.long	0x2013
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x14b6
	.long	0x737
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x14b8
	.long	0x2013
	.uleb128 0x2b
	.long	.LASF350
	.byte	0x1
	.value	0x14b9
	.long	0xb4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xa3e
	.uleb128 0x26
	.long	.LASF406
	.byte	0x1
	.value	0x363
	.byte	0x3
	.long	0x204b
	.uleb128 0x29
	.long	.LASF407
	.byte	0x1
	.value	0x363
	.long	0x204b
	.uleb128 0x27
	.string	"bit"
	.byte	0x1
	.value	0x363
	.long	0x68
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x365
	.long	0x3e4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3d8
	.uleb128 0x26
	.long	.LASF409
	.byte	0x1
	.value	0x368
	.byte	0x3
	.long	0x2083
	.uleb128 0x29
	.long	.LASF407
	.byte	0x1
	.value	0x368
	.long	0x204b
	.uleb128 0x27
	.string	"bit"
	.byte	0x1
	.value	0x368
	.long	0x68
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x36a
	.long	0x3e4
	.byte	0
	.uleb128 0x26
	.long	.LASF410
	.byte	0x1
	.value	0x1334
	.byte	0x1
	.long	0x20b4
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1334
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1336
	.long	0x20b4
	.uleb128 0x2a
	.string	"cb"
	.byte	0x1
	.value	0x1337
	.long	0x1bfd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x12bc
	.uleb128 0x26
	.long	.LASF411
	.byte	0x1
	.value	0x135d
	.byte	0x1
	.long	0x20ec
	.uleb128 0x29
	.long	.LASF124
	.byte	0x1
	.value	0x135d
	.long	0xb4
	.uleb128 0x29
	.long	.LASF133
	.byte	0x1
	.value	0x135d
	.long	0xa9
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x135d
	.long	0x737
	.byte	0
	.uleb128 0x26
	.long	.LASF412
	.byte	0x1
	.value	0xfca
	.byte	0x1
	.long	0x215c
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xfca
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0xfcc
	.long	0x215c
	.uleb128 0x2a
	.string	"i"
	.byte	0x1
	.value	0xfcd
	.long	0x68
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0xfd0
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF129
	.byte	0x1
	.value	0xfd0
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0xfd1
	.long	0x15f6
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.value	0xfd2
	.long	0x6f
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF106
	.byte	0x1
	.value	0xfdf
	.long	0x124
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1026
	.uleb128 0x26
	.long	.LASF414
	.byte	0x1
	.value	0x1292
	.byte	0x1
	.long	0x217c
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0x1292
	.long	0x15f6
	.byte	0
	.uleb128 0x26
	.long	.LASF415
	.byte	0x1
	.value	0x12a7
	.byte	0x1
	.long	0x21ba
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x12a7
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x12a9
	.long	0x21ba
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x12aa
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x12ab
	.long	0x15f6
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf94
	.uleb128 0x26
	.long	.LASF416
	.byte	0x1
	.value	0x12c4
	.byte	0x1
	.long	0x21fe
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x12c4
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x12c6
	.long	0x21fe
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x12c7
	.long	0x15f6
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x12c8
	.long	0xb4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x105b
	.uleb128 0x26
	.long	.LASF417
	.byte	0x1
	.value	0x1121
	.byte	0x1
	.long	0x224a
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1121
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1123
	.long	0x224a
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x1124
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1125
	.long	0x15f6
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x112f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x126d
	.uleb128 0x26
	.long	.LASF418
	.byte	0x1
	.value	0x11a1
	.byte	0x1
	.long	0x228e
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x11a1
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x11a3
	.long	0x228e
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x11a4
	.long	0x15f6
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x11a5
	.long	0xb4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1165
	.uleb128 0x28
	.long	.LASF419
	.byte	0x1
	.value	0xf6e
	.long	0x68
	.byte	0x1
	.long	0x22ca
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0xf6e
	.long	0x149c
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xf70
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0xf71
	.long	0x68
	.byte	0
	.uleb128 0x28
	.long	.LASF420
	.byte	0x1
	.value	0xf90
	.long	0x68
	.byte	0x1
	.long	0x230b
	.uleb128 0x29
	.long	.LASF169
	.byte	0x1
	.value	0xf90
	.long	0xa9
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0xf92
	.long	0x230b
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xf93
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0xf94
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xc1d
	.uleb128 0x28
	.long	.LASF421
	.byte	0x1
	.value	0xf52
	.long	0x68
	.byte	0x1
	.long	0x2347
	.uleb128 0x29
	.long	.LASF169
	.byte	0x1
	.value	0xf54
	.long	0x153b
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xf56
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0xf57
	.long	0x68
	.byte	0
	.uleb128 0x2e
	.long	.LASF425
	.byte	0x1
	.value	0x1200
	.long	0x68
	.byte	0x1
	.long	0x239d
	.uleb128 0x29
	.long	.LASF325
	.byte	0x1
	.value	0x1200
	.long	0x1d2e
	.uleb128 0x2b
	.long	.LASF422
	.byte	0x1
	.value	0x1203
	.long	0x153b
	.uleb128 0x2b
	.long	.LASF423
	.byte	0x1
	.value	0x1203
	.long	0x153b
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1204
	.long	0x15f6
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1205
	.long	0x68
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x1239
	.byte	0
	.uleb128 0x2e
	.long	.LASF426
	.byte	0x1
	.value	0x1249
	.long	0x68
	.byte	0x1
	.long	0x240a
	.uleb128 0x29
	.long	.LASF325
	.byte	0x1
	.value	0x1249
	.long	0x1d2e
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x124b
	.long	0x240a
	.uleb128 0x2b
	.long	.LASF422
	.byte	0x1
	.value	0x124d
	.long	0x153b
	.uleb128 0x2b
	.long	.LASF423
	.byte	0x1
	.value	0x124d
	.long	0x153b
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x124e
	.long	0x15f6
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x124f
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1250
	.long	0x68
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x1284
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xea6
	.uleb128 0x2e
	.long	.LASF427
	.byte	0x1
	.value	0x13b6
	.long	0x68
	.byte	0x1
	.long	0x243c
	.uleb128 0x29
	.long	.LASF428
	.byte	0x1
	.value	0x13b8
	.long	0x153b
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x13be
	.long	0x68
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF620
	.byte	0x1
	.value	0x334
	.byte	0x3
	.uleb128 0x28
	.long	.LASF429
	.byte	0x1
	.value	0x335
	.long	0x1c4
	.byte	0x3
	.long	0x2463
	.uleb128 0x27
	.string	"sym"
	.byte	0x1
	.value	0x335
	.long	0x2463
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3a5
	.uleb128 0x26
	.long	.LASF430
	.byte	0x1
	.value	0x1004
	.byte	0x1
	.long	0x24af
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1004
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1006
	.long	0x24af
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x1007
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1008
	.long	0x15f6
	.uleb128 0x2d
	.long	.LASF431
	.byte	0x1
	.value	0x1023
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf5f
	.uleb128 0x26
	.long	.LASF432
	.byte	0x1
	.value	0x557
	.byte	0x3
	.long	0x24db
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x557
	.long	0x14d8
	.uleb128 0x29
	.long	.LASF94
	.byte	0x1
	.value	0x558
	.long	0x24db
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x69f
	.uleb128 0x30
	.long	.LASF621
	.byte	0x1
	.value	0x163c
	.byte	0x3
	.uleb128 0x28
	.long	.LASF433
	.byte	0x1
	.value	0x16ab
	.long	0x68
	.byte	0x1
	.long	0x2508
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x16ad
	.long	0x68
	.byte	0
	.uleb128 0x28
	.long	.LASF434
	.byte	0x1
	.value	0x102f
	.long	0x68
	.byte	0x1
	.long	0x253d
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0x102f
	.long	0x15f6
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1031
	.long	0x253d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1032
	.long	0x737
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xce2
	.uleb128 0x28
	.long	.LASF435
	.byte	0x1
	.value	0x105c
	.long	0x68
	.byte	0x1
	.long	0x2578
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0x105c
	.long	0x15f6
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x105e
	.long	0x2578
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x105f
	.long	0x737
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xf10
	.uleb128 0x28
	.long	.LASF436
	.byte	0x1
	.value	0x103d
	.long	0x68
	.byte	0x1
	.long	0x25ee
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0x103d
	.long	0x15f6
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x103f
	.long	0x25ee
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1040
	.long	0x25f4
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1041
	.long	0x737
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x1041
	.long	0x737
	.uleb128 0x2b
	.long	.LASF193
	.byte	0x1
	.value	0x1042
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF194
	.byte	0x1
	.value	0x1042
	.long	0xb4
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1043
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xec1
	.uleb128 0x7
	.byte	0x4
	.long	0xdf9
	.uleb128 0x26
	.long	.LASF437
	.byte	0x1
	.value	0x10e0
	.byte	0x1
	.long	0x2638
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x10e0
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x10e2
	.long	0x2638
	.uleb128 0x2a
	.string	"enh"
	.byte	0x1
	.value	0x10e3
	.long	0x131c
	.uleb128 0x2b
	.long	.LASF354
	.byte	0x1
	.value	0x10e4
	.long	0x14cd
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x109e
	.uleb128 0x26
	.long	.LASF438
	.byte	0x1
	.value	0x10fd
	.byte	0x1
	.long	0x26a4
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x10fd
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x10ff
	.long	0x26a4
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x1100
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1101
	.long	0x15f6
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x111e
	.uleb128 0x31
	.long	0x2695
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x110d
	.long	0x68
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1116
	.long	0x68
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x11b4
	.uleb128 0x26
	.long	.LASF439
	.byte	0x1
	.value	0x1132
	.byte	0x1
	.long	0x26fe
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1132
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1134
	.long	0x26fe
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x1135
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x1136
	.long	0x15f6
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x114a
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1142
	.long	0x68
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x13ac
	.uleb128 0x28
	.long	.LASF440
	.byte	0x1
	.value	0x1186
	.long	0x68
	.byte	0x1
	.long	0x275e
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1186
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x1188
	.long	0x275e
	.uleb128 0x2b
	.long	.LASF441
	.byte	0x1
	.value	0x1189
	.long	0x1542
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x118a
	.long	0x15f6
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x118b
	.long	0xb4
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x118c
	.long	0x68
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x121e
	.uleb128 0x26
	.long	.LASF442
	.byte	0x1
	.value	0x12dc
	.byte	0x1
	.long	0x27fb
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x12dc
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x12de
	.long	0x27fb
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x12df
	.long	0x2801
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x12e0
	.long	0x15f6
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0x12e1
	.long	0xb4
	.uleb128 0x2a
	.string	"tk"
	.byte	0x1
	.value	0x12e2
	.long	0x8f8
	.uleb128 0x2d
	.long	.LASF424
	.byte	0x1
	.value	0x1331
	.uleb128 0x31
	.long	0x27d0
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x12eb
	.long	0x2807
	.byte	0
	.uleb128 0x31
	.long	0x27e1
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1301
	.long	0x2807
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1316
	.long	0x2807
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1317
	.long	0x737
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x11e9
	.uleb128 0x7
	.byte	0x4
	.long	0xd25
	.uleb128 0x7
	.byte	0x4
	.long	0xcfd
	.uleb128 0x28
	.long	.LASF443
	.byte	0x1
	.value	0x35c
	.long	0x68
	.byte	0x3
	.long	0x284f
	.uleb128 0x29
	.long	.LASF407
	.byte	0x1
	.value	0x35c
	.long	0x204b
	.uleb128 0x27
	.string	"bit"
	.byte	0x1
	.value	0x35c
	.long	0x68
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x35e
	.long	0x3e4
	.uleb128 0x2a
	.string	"old"
	.byte	0x1
	.value	0x35f
	.long	0x3e4
	.byte	0
	.uleb128 0x28
	.long	.LASF444
	.byte	0x1
	.value	0x5a5
	.long	0x68
	.byte	0x3
	.long	0x2875
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x5a5
	.long	0x149c
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x5a5
	.long	0x149c
	.byte	0
	.uleb128 0x28
	.long	.LASF445
	.byte	0x1
	.value	0x5a9
	.long	0x68
	.byte	0x3
	.long	0x289b
	.uleb128 0x27
	.string	"a"
	.byte	0x1
	.value	0x5a9
	.long	0x14cd
	.uleb128 0x27
	.string	"b"
	.byte	0x1
	.value	0x5a9
	.long	0x14cd
	.byte	0
	.uleb128 0x26
	.long	.LASF446
	.byte	0x1
	.value	0x145e
	.byte	0x1
	.long	0x28ce
	.uleb128 0x27
	.string	"ev"
	.byte	0x1
	.value	0x145e
	.long	0x28ce
	.uleb128 0x29
	.long	.LASF129
	.byte	0x1
	.value	0x145e
	.long	0x68
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x146a
	.long	0x15f6
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5a1
	.uleb128 0x32
	.long	.LASF447
	.byte	0x1
	.value	0x58d
	.long	0x1bb
	.long	.LFB64
	.long	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x28ff
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0x58d
	.long	0x737
	.long	.LLST0
	.byte	0
	.uleb128 0x34
	.long	.LASF450
	.byte	0x1
	.value	0x5b1
	.long	.LFB69
	.long	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x2932
	.uleb128 0x35
	.string	"dst"
	.byte	0x1
	.value	0x5b1
	.long	0x2932
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x35
	.string	"src"
	.byte	0x1
	.value	0x5b1
	.long	0x14cd
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x874
	.uleb128 0x32
	.long	.LASF448
	.byte	0x1
	.value	0x350
	.long	0x68
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x298c
	.uleb128 0x36
	.long	.LASF407
	.byte	0x1
	.value	0x350
	.long	0x298c
	.long	.LLST1
	.uleb128 0x33
	.string	"bit"
	.byte	0x1
	.value	0x350
	.long	0x68
	.long	.LLST2
	.uleb128 0x37
	.string	"val"
	.byte	0x1
	.value	0x352
	.long	0x3e4
	.long	.LLST3
	.uleb128 0x38
	.long	.LVL6
	.long	0x69f9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x2992
	.uleb128 0xf
	.long	0x3d8
	.uleb128 0x32
	.long	.LASF449
	.byte	0x1
	.value	0x355
	.long	0x68
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x29fb
	.uleb128 0x36
	.long	.LASF407
	.byte	0x1
	.value	0x355
	.long	0x204b
	.long	.LLST4
	.uleb128 0x33
	.string	"bit"
	.byte	0x1
	.value	0x355
	.long	0x68
	.long	.LLST5
	.uleb128 0x39
	.long	.LASF408
	.byte	0x1
	.value	0x357
	.long	0x3e4
	.long	.LLST6
	.uleb128 0x37
	.string	"old"
	.byte	0x1
	.value	0x358
	.long	0x3e4
	.long	.LLST7
	.uleb128 0x38
	.long	.LVL14
	.long	0x6a05
	.byte	0
	.uleb128 0x34
	.long	.LASF451
	.byte	0x1
	.value	0x106d
	.long	.LFB94
	.long	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a2b
	.uleb128 0x36
	.long	.LASF413
	.byte	0x1
	.value	0x106d
	.long	0x15f6
	.long	.LLST8
	.uleb128 0x38
	.long	.LVL19
	.long	0x6a11
	.byte	0
	.uleb128 0x3a
	.long	0x20ba
	.long	.LFB119
	.long	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ab9
	.uleb128 0x3b
	.long	0x20c7
	.long	.LLST9
	.uleb128 0x3b
	.long	0x20d3
	.long	.LLST10
	.uleb128 0x3b
	.long	0x20df
	.long	.LLST11
	.uleb128 0x3c
	.long	.LBB104
	.long	.LBE104-.LBB104
	.long	0x2aaf
	.uleb128 0x3b
	.long	0x20c7
	.long	.LLST12
	.uleb128 0x3b
	.long	0x20df
	.long	.LLST13
	.uleb128 0x3d
	.long	0x20d3
	.uleb128 0x3e
	.long	.LVL24
	.long	0x28d4
	.long	0x2a91
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL25
	.long	0x28d4
	.long	0x2aa5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL26
	.long	0x6a1d
	.byte	0
	.uleb128 0x38
	.long	.LVL22
	.long	0x6a29
	.byte	0
	.uleb128 0x3a
	.long	0x2162
	.long	.LFB190
	.long	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.long	0x2af2
	.uleb128 0x3b
	.long	0x216f
	.long	.LLST14
	.uleb128 0x3e
	.long	.LVL31
	.long	0x2938
	.long	0x2ae8
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL32
	.long	0x6a35
	.byte	0
	.uleb128 0x26
	.long	.LASF452
	.byte	0x1
	.value	0x4ed
	.byte	0x3
	.long	0x2b18
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.value	0x4ed
	.long	0xbf
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x4ed
	.long	0x68a
	.byte	0
	.uleb128 0x34
	.long	.LASF453
	.byte	0x1
	.value	0x4f2
	.long	.LFB49
	.long	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c23
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x4f2
	.long	0xca
	.long	.LLST15
	.uleb128 0x35
	.string	"dst"
	.byte	0x1
	.value	0x4f2
	.long	0x68a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x40
	.long	0x2af2
	.long	.LBB118
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x4f4
	.long	0x2bb9
	.uleb128 0x3b
	.long	0x2b0b
	.long	.LLST16
	.uleb128 0x3b
	.long	0x2aff
	.long	.LLST17
	.uleb128 0x40
	.long	0x1de1
	.long	.LBB120
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x4ef
	.long	0x2b99
	.uleb128 0x3b
	.long	0x1dfa
	.long	.LLST18
	.uleb128 0x3b
	.long	0x1dee
	.long	.LLST19
	.byte	0
	.uleb128 0x41
	.long	0x1de1
	.long	.LBB127
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.value	0x4f0
	.uleb128 0x3b
	.long	0x1dfa
	.long	.LLST20
	.uleb128 0x3d
	.long	0x1dee
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0x2af2
	.long	.LBB133
	.long	.Ldebug_ranges0+0x58
	.byte	0x1
	.value	0x4f5
	.uleb128 0x3b
	.long	0x2b0b
	.long	.LLST21
	.uleb128 0x3b
	.long	0x2aff
	.long	.LLST22
	.uleb128 0x40
	.long	0x1de1
	.long	.LBB135
	.long	.Ldebug_ranges0+0x78
	.byte	0x1
	.value	0x4ef
	.long	0x2c02
	.uleb128 0x3b
	.long	0x1dfa
	.long	.LLST23
	.uleb128 0x3b
	.long	0x1dee
	.long	.LLST24
	.byte	0
	.uleb128 0x41
	.long	0x1de1
	.long	.LBB142
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.value	0x4f0
	.uleb128 0x3b
	.long	0x1dfa
	.long	.LLST25
	.uleb128 0x3d
	.long	0x1dee
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF454
	.byte	0x1
	.value	0xef0
	.long	0x737
	.long	.LFB79
	.long	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cd3
	.uleb128 0x43
	.long	.LASF124
	.byte	0x1
	.value	0xef0
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.long	.LASF125
	.byte	0x1
	.value	0xef0
	.long	0xa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"hdr"
	.byte	0x1
	.value	0xef2
	.long	0x2cd3
	.long	.LLST26
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0xef3
	.long	0x737
	.long	.LLST27
	.uleb128 0x38
	.long	.LVL44
	.long	0x6a41
	.uleb128 0x38
	.long	.LVL47
	.long	0x6a4d
	.uleb128 0x3e
	.long	.LVL48
	.long	0x28d4
	.long	0x2ca1
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL49
	.long	0x28d4
	.long	0x2cb5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL50
	.long	0x28d4
	.long	0x2cc9
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL51
	.long	0x6a59
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8d0
	.uleb128 0x42
	.long	.LASF455
	.byte	0x1
	.value	0xf19
	.long	0x68
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x2dd9
	.uleb128 0x43
	.long	.LASF124
	.byte	0x1
	.value	0xf19
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0xf19
	.long	0x737
	.long	.LLST28
	.uleb128 0x35
	.string	"rsp"
	.byte	0x1
	.value	0xf1a
	.long	0x2dd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x39
	.long	.LASF456
	.byte	0x1
	.value	0xf1c
	.long	0x58f
	.long	.LLST29
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0xf1f
	.long	0x68
	.long	.LLST30
	.uleb128 0x44
	.long	.LASF487
	.byte	0x1
	.value	0xf41
	.long	.L36
	.uleb128 0x38
	.long	.LVL55
	.long	0x6a65
	.uleb128 0x38
	.long	.LVL58
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL61
	.long	0x6a71
	.uleb128 0x3e
	.long	.LVL62
	.long	0x28d4
	.long	0x2d7c
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL63
	.long	0x6a7d
	.uleb128 0x38
	.long	.LVL64
	.long	0x6a89
	.uleb128 0x38
	.long	.LVL65
	.long	0x6a1d
	.uleb128 0x38
	.long	.LVL66
	.long	0x6a95
	.uleb128 0x3e
	.long	.LVL67
	.long	0x28d4
	.long	0x2db4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL69
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL71
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL73
	.long	0x6aad
	.uleb128 0x38
	.long	.LVL74
	.long	0x6ab9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x737
	.uleb128 0x26
	.long	.LASF457
	.byte	0x1
	.value	0x5ad
	.byte	0x3
	.long	0x2e05
	.uleb128 0x27
	.string	"dst"
	.byte	0x1
	.value	0x5ad
	.long	0x2e05
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x5ad
	.long	0x149c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x846
	.uleb128 0x3a
	.long	0x2294
	.long	.LFB84
	.long	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed3
	.uleb128 0x3b
	.long	0x22a5
	.long	.LLST31
	.uleb128 0x45
	.long	0x22b1
	.long	.LLST32
	.uleb128 0x45
	.long	0x22bd
	.long	.LLST33
	.uleb128 0x40
	.long	0x284f
	.long	.LBB158
	.long	.Ldebug_ranges0+0xb8
	.byte	0x1
	.value	0xf73
	.long	0x2e69
	.uleb128 0x3b
	.long	0x286a
	.long	.LLST34
	.uleb128 0x3b
	.long	0x2860
	.long	.LLST35
	.uleb128 0x38
	.long	.LVL80
	.long	0x6ac5
	.byte	0
	.uleb128 0x3c
	.long	.LBB162
	.long	.LBE162-.LBB162
	.long	0x2eb7
	.uleb128 0x3b
	.long	0x22a5
	.long	.LLST36
	.uleb128 0x46
	.long	.LBB163
	.long	.LBE163-.LBB163
	.uleb128 0x47
	.long	0x22b1
	.uleb128 0x47
	.long	0x22bd
	.uleb128 0x41
	.long	0x2ddf
	.long	.LBB164
	.long	.Ldebug_ranges0+0xd0
	.byte	0x1
	.value	0xf81
	.uleb128 0x3b
	.long	0x2df8
	.long	.LLST36
	.uleb128 0x3b
	.long	0x2dec
	.long	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL82
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL85
	.long	0x6ad1
	.uleb128 0x38
	.long	.LVL86
	.long	0x2cd9
	.byte	0
	.uleb128 0x32
	.long	.LASF458
	.byte	0x1
	.value	0xf85
	.long	0x68
	.long	.LFB85
	.long	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f33
	.uleb128 0x48
	.long	.LASF459
	.byte	0x1
	.value	0xf87
	.long	0x846
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0xf88
	.long	0x68
	.long	.LLST39
	.uleb128 0x38
	.long	.LVL90
	.long	0x6add
	.uleb128 0x3e
	.long	.LVL92
	.long	0x2294
	.long	0x2f29
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL93
	.long	0x6ae9
	.byte	0
	.uleb128 0x32
	.long	.LASF460
	.byte	0x1
	.value	0x11ef
	.long	0x68
	.long	.LFB108
	.long	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fc3
	.uleb128 0x36
	.long	.LASF229
	.byte	0x1
	.value	0x11ef
	.long	0x14cd
	.long	.LLST40
	.uleb128 0x33
	.string	"val"
	.byte	0x1
	.value	0x11ef
	.long	0x68a
	.long	.LLST41
	.uleb128 0x37
	.string	"cp"
	.byte	0x1
	.value	0x11f1
	.long	0x2fc3
	.long	.LLST42
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x11f2
	.long	0x737
	.long	.LLST43
	.uleb128 0x38
	.long	.LVL95
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL97
	.long	0x6a59
	.uleb128 0x3e
	.long	.LVL99
	.long	0x28ff
	.long	0x2fb9
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL103
	.long	0x2cd9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xe71
	.uleb128 0x34
	.long	.LASF461
	.byte	0x1
	.value	0x1245
	.long	.LFB110
	.long	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x3009
	.uleb128 0x43
	.long	.LASF325
	.byte	0x1
	.value	0x1245
	.long	0x1d2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x49
	.long	.LVL107
	.long	0x2f33
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF462
	.byte	0x1
	.value	0x11e1
	.long	0x68
	.long	.LFB107
	.long	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x305f
	.uleb128 0x36
	.long	.LASF169
	.byte	0x1
	.value	0x11e1
	.long	0xa9
	.long	.LLST44
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x11e3
	.long	0x737
	.long	.LLST45
	.uleb128 0x38
	.long	.LVL109
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL111
	.long	0x6af2
	.uleb128 0x38
	.long	.LVL112
	.long	0x2cd9
	.byte	0
	.uleb128 0x3a
	.long	0x22ca
	.long	.LFB86
	.long	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x3180
	.uleb128 0x3b
	.long	0x22db
	.long	.LLST46
	.uleb128 0x45
	.long	0x22e7
	.long	.LLST47
	.uleb128 0x45
	.long	0x22f2
	.long	.LLST48
	.uleb128 0x45
	.long	0x22fe
	.long	.LLST49
	.uleb128 0x3c
	.long	.LBB176
	.long	.LBE176-.LBB176
	.long	0x3105
	.uleb128 0x3b
	.long	0x22db
	.long	.LLST50
	.uleb128 0x46
	.long	.LBB177
	.long	.LBE177-.LBB177
	.uleb128 0x47
	.long	0x22e7
	.uleb128 0x47
	.long	0x22f2
	.uleb128 0x47
	.long	0x22fe
	.uleb128 0x4a
	.long	0x2051
	.long	.LBB178
	.long	.LBE178-.LBB178
	.byte	0x1
	.value	0xfa8
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST51
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST52
	.uleb128 0x46
	.long	.LBB179
	.long	.LBE179-.LBB179
	.uleb128 0x45
	.long	0x2076
	.long	.LLST53
	.uleb128 0x38
	.long	.LVL127
	.long	0x6afe
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB180
	.long	.LBE180-.LBB180
	.byte	0x1
	.value	0xfaa
	.long	0x3148
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST54
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST55
	.uleb128 0x46
	.long	.LBB181
	.long	.LBE181-.LBB181
	.uleb128 0x45
	.long	0x203e
	.long	.LLST56
	.uleb128 0x38
	.long	.LVL130
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL116
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL118
	.long	0x6a59
	.uleb128 0x3e
	.long	.LVL121
	.long	0x2938
	.long	0x3176
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x38
	.long	.LVL122
	.long	0x2cd9
	.byte	0
	.uleb128 0x3a
	.long	0x2311
	.long	.LFB83
	.long	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x3277
	.uleb128 0x3b
	.long	0x2322
	.long	.LLST57
	.uleb128 0x45
	.long	0x232e
	.long	.LLST58
	.uleb128 0x45
	.long	0x233a
	.long	.LLST59
	.uleb128 0x3c
	.long	.LBB190
	.long	.LBE190-.LBB190
	.long	0x3218
	.uleb128 0x3b
	.long	0x2322
	.long	.LLST60
	.uleb128 0x46
	.long	.LBB191
	.long	.LBE191-.LBB191
	.uleb128 0x47
	.long	0x232e
	.uleb128 0x47
	.long	0x233a
	.uleb128 0x4a
	.long	0x2051
	.long	.LBB192
	.long	.LBE192-.LBB192
	.byte	0x1
	.value	0xf68
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST61
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST62
	.uleb128 0x46
	.long	.LBB193
	.long	.LBE193-.LBB193
	.uleb128 0x45
	.long	0x2076
	.long	.LLST63
	.uleb128 0x38
	.long	.LVL141
	.long	0x6afe
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB194
	.long	.LBE194-.LBB194
	.byte	0x1
	.value	0xf6a
	.long	0x325b
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST64
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST65
	.uleb128 0x46
	.long	.LBB195
	.long	.LBE195-.LBB195
	.uleb128 0x45
	.long	0x203e
	.long	.LLST66
	.uleb128 0x38
	.long	.LVL144
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL133
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL135
	.long	0x6af2
	.uleb128 0x38
	.long	.LVL136
	.long	0x2cd9
	.byte	0
	.uleb128 0x32
	.long	.LASF463
	.byte	0x1
	.value	0x1737
	.long	0x68
	.long	.LFB159
	.long	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x3313
	.uleb128 0x36
	.long	.LASF464
	.byte	0x1
	.value	0x1737
	.long	0xb4
	.long	.LLST67
	.uleb128 0x33
	.string	"ad"
	.byte	0x1
	.value	0x1737
	.long	0x3313
	.long	.LLST68
	.uleb128 0x36
	.long	.LASF465
	.byte	0x1
	.value	0x1737
	.long	0x81
	.long	.LLST69
	.uleb128 0x39
	.long	.LASF466
	.byte	0x1
	.value	0x1739
	.long	0x331e
	.long	.LLST70
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x173a
	.long	0x737
	.long	.LLST71
	.uleb128 0x37
	.string	"i"
	.byte	0x1
	.value	0x173b
	.long	0x68
	.long	.LLST72
	.uleb128 0x38
	.long	.LVL147
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL150
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL155
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL158
	.long	0x2cd9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3319
	.uleb128 0xf
	.long	0x13fa
	.uleb128 0x7
	.byte	0x4
	.long	0xb96
	.uleb128 0x42
	.long	.LASF467
	.byte	0x1
	.value	0x114e
	.long	0x153b
	.long	.LFB101
	.long	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x334f
	.uleb128 0x36
	.long	.LASF441
	.byte	0x1
	.value	0x114e
	.long	0x334f
	.long	.LLST73
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x3355
	.uleb128 0xf
	.long	0x1542
	.uleb128 0x3a
	.long	0x2347
	.long	.LFB109
	.long	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x353e
	.uleb128 0x4c
	.long	0x2358
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x47
	.long	0x2364
	.uleb128 0x47
	.long	0x2370
	.uleb128 0x45
	.long	0x237c
	.long	.LLST74
	.uleb128 0x47
	.long	0x2388
	.uleb128 0x4d
	.long	0x2394
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB204
	.long	.LBE204-.LBB204
	.byte	0x1
	.value	0x120f
	.long	0x33d5
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST75
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST76
	.uleb128 0x46
	.long	.LBB205
	.long	.LBE205-.LBB205
	.uleb128 0x45
	.long	0x2076
	.long	.LLST77
	.uleb128 0x38
	.long	.LVL170
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2051
	.long	.LBB206
	.long	.Ldebug_ranges0+0xe8
	.byte	0x1
	.value	0x1210
	.long	0x3414
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST78
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST79
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0xe8
	.uleb128 0x45
	.long	0x2076
	.long	.LLST80
	.uleb128 0x38
	.long	.LVL173
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB212
	.long	.LBE212-.LBB212
	.long	0x352b
	.uleb128 0x3b
	.long	0x2358
	.long	.LLST81
	.uleb128 0x46
	.long	.LBB213
	.long	.LBE213-.LBB213
	.uleb128 0x45
	.long	0x2364
	.long	.LLST82
	.uleb128 0x45
	.long	0x2370
	.long	.LLST83
	.uleb128 0x47
	.long	0x237c
	.uleb128 0x45
	.long	0x2388
	.long	.LLST84
	.uleb128 0x4f
	.long	0x2394
	.long	.L108
	.uleb128 0x3e
	.long	.LVL177
	.long	0x2938
	.long	0x3478
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3e
	.long	.LVL180
	.long	0x2311
	.long	0x348b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL181
	.long	0x2938
	.long	0x34a7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.long	.LVL184
	.long	0x22ca
	.long	0x34ba
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL185
	.long	0x2cd9
	.uleb128 0x3e
	.long	.LVL188
	.long	0x3009
	.long	0x34d6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL191
	.long	0x2f33
	.long	0x34f4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x3e
	.long	.LVL193
	.long	0x3009
	.long	0x3507
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3e
	.long	.LVL194
	.long	0x22ca
	.long	0x351a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x50
	.long	.LVL195
	.long	0x2311
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL166
	.long	0x6b0a
	.uleb128 0x38
	.long	.LVL174
	.long	0x6b16
	.byte	0
	.uleb128 0x3a
	.long	0x239d
	.long	.LFB111
	.long	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x3750
	.uleb128 0x4c
	.long	0x23ae
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x47
	.long	0x23ba
	.uleb128 0x47
	.long	0x23c5
	.uleb128 0x47
	.long	0x23d1
	.uleb128 0x45
	.long	0x23dd
	.long	.LLST85
	.uleb128 0x47
	.long	0x23e9
	.uleb128 0x47
	.long	0x23f5
	.uleb128 0x4d
	.long	0x2401
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB222
	.long	.LBE222-.LBB222
	.byte	0x1
	.value	0x125b
	.long	0x35c3
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST86
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST87
	.uleb128 0x46
	.long	.LBB223
	.long	.LBE223-.LBB223
	.uleb128 0x45
	.long	0x2076
	.long	.LLST88
	.uleb128 0x38
	.long	.LVL201
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2051
	.long	.LBB224
	.long	.Ldebug_ranges0+0x108
	.byte	0x1
	.value	0x125c
	.long	0x3602
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST89
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST90
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x108
	.uleb128 0x45
	.long	0x2076
	.long	.LLST91
	.uleb128 0x38
	.long	.LVL203
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB230
	.long	.LBE230-.LBB230
	.long	0x373d
	.uleb128 0x3b
	.long	0x23ae
	.long	.LLST92
	.uleb128 0x46
	.long	.LBB231
	.long	.LBE231-.LBB231
	.uleb128 0x45
	.long	0x23ba
	.long	.LLST93
	.uleb128 0x45
	.long	0x23c5
	.long	.LLST94
	.uleb128 0x45
	.long	0x23d1
	.long	.LLST95
	.uleb128 0x47
	.long	0x23dd
	.uleb128 0x45
	.long	0x23e9
	.long	.LLST96
	.uleb128 0x45
	.long	0x23f5
	.long	.LLST97
	.uleb128 0x4f
	.long	0x2401
	.long	.L136
	.uleb128 0x3e
	.long	.LVL208
	.long	0x2938
	.long	0x3678
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3e
	.long	.LVL211
	.long	0x2311
	.long	0x368b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL212
	.long	0x2938
	.long	0x36a7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.long	.LVL215
	.long	0x22ca
	.long	0x36ba
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL216
	.long	0x3009
	.long	0x36cd
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL219
	.long	0x6b22
	.uleb128 0x38
	.long	.LVL221
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL224
	.long	0x6a59
	.uleb128 0x3e
	.long	.LVL225
	.long	0x28ff
	.long	0x36fd
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL226
	.long	0x2cd9
	.uleb128 0x3e
	.long	.LVL229
	.long	0x3009
	.long	0x3719
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x3e
	.long	.LVL230
	.long	0x22ca
	.long	0x372c
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x50
	.long	.LVL231
	.long	0x2311
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL197
	.long	0x6b0a
	.uleb128 0x38
	.long	.LVL205
	.long	0x6b16
	.byte	0
	.uleb128 0x34
	.long	.LASF468
	.byte	0x1
	.value	0x1073
	.long	.LFB95
	.long	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x37ba
	.uleb128 0x43
	.long	.LASF325
	.byte	0x1
	.value	0x1073
	.long	0x1d2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	.LVL233
	.long	0x2997
	.long	0x378e
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x51
	.long	.LVL234
	.long	0x2347
	.uleb128 0x3e
	.long	.LVL235
	.long	0x2997
	.long	0x37b0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x51
	.long	.LVL236
	.long	0x239d
	.byte	0
	.uleb128 0x3a
	.long	0x2410
	.long	.LFB123
	.long	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x383f
	.uleb128 0x4c
	.long	0x2421
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LBB236
	.long	.LBE236-.LBB236
	.long	0x380a
	.uleb128 0x3b
	.long	0x2421
	.long	.LLST98
	.uleb128 0x46
	.long	.LBB238
	.long	.LBE238-.LBB238
	.uleb128 0x47
	.long	0x242e
	.uleb128 0x49
	.long	.LVL241
	.long	0x22ca
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL238
	.long	0x2938
	.long	0x3826
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x50
	.long	.LVL239
	.long	0x2938
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF469
	.byte	0x1
	.value	0x15f6
	.long	0x68
	.byte	0x3
	.long	0x385d
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0x15f6
	.long	0x2932
	.byte	0
	.uleb128 0x42
	.long	.LASF470
	.byte	0x1
	.value	0x15fb
	.long	0x68
	.long	.LFB144
	.long	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b6
	.uleb128 0x43
	.long	.LASF229
	.byte	0x1
	.value	0x15fb
	.long	0x2932
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x15fd
	.long	0x68
	.uleb128 0x4a
	.long	0x383f
	.long	.LBB241
	.long	.LBE241-.LBB241
	.byte	0x1
	.value	0x15fe
	.uleb128 0x3b
	.long	0x3850
	.long	.LLST99
	.uleb128 0x38
	.long	.LVL244
	.long	0x6add
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF471
	.byte	0x1
	.value	0x1605
	.long	0x68
	.long	.LFB145
	.long	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x390f
	.uleb128 0x43
	.long	.LASF229
	.byte	0x1
	.value	0x1605
	.long	0x2932
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1607
	.long	0x68
	.uleb128 0x4a
	.long	0x383f
	.long	.LBB245
	.long	.LBE245-.LBB245
	.byte	0x1
	.value	0x1608
	.uleb128 0x3b
	.long	0x3850
	.long	.LLST100
	.uleb128 0x38
	.long	.LVL247
	.long	0x6add
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF472
	.byte	0x1
	.value	0x163f
	.long	0x68
	.byte	0x1
	.long	0x392d
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1641
	.long	0x68
	.byte	0
	.uleb128 0x28
	.long	.LASF473
	.byte	0x1
	.value	0x14e8
	.long	0x68
	.byte	0x1
	.long	0x3957
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x14ea
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x14eb
	.long	0x68
	.byte	0
	.uleb128 0x28
	.long	.LASF474
	.byte	0x1
	.value	0x154b
	.long	0x68
	.byte	0x1
	.long	0x39e1
	.uleb128 0x2b
	.long	.LASF475
	.byte	0x1
	.value	0x154d
	.long	0x39e1
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x154e
	.long	0x737
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x154f
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1550
	.long	0x68
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1583
	.long	0x39e7
	.uleb128 0x2a
	.string	"rp"
	.byte	0x1
	.value	0x1584
	.long	0x25ee
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1585
	.long	0x737
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x1585
	.long	0x737
	.uleb128 0x2b
	.long	.LASF193
	.byte	0x1
	.value	0x1586
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF194
	.byte	0x1
	.value	0x1586
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x95b
	.uleb128 0x7
	.byte	0x4
	.long	0xe2e
	.uleb128 0x28
	.long	.LASF476
	.byte	0x1
	.value	0x507
	.long	0xca
	.byte	0x3
	.long	0x3a0b
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x507
	.long	0x142f
	.byte	0
	.uleb128 0x28
	.long	.LASF477
	.byte	0x1
	.value	0x503
	.long	0xbf
	.byte	0x3
	.long	0x3a29
	.uleb128 0x27
	.string	"src"
	.byte	0x1
	.value	0x503
	.long	0x142f
	.byte	0
	.uleb128 0x28
	.long	.LASF478
	.byte	0x1
	.value	0x151e
	.long	0x68
	.byte	0x1
	.long	0x3a5f
	.uleb128 0x2b
	.long	.LASF479
	.byte	0x1
	.value	0x1520
	.long	0x3a5f
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1521
	.long	0x737
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x1522
	.long	0xca
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xab5
	.uleb128 0x28
	.long	.LASF480
	.byte	0x1
	.value	0x15b4
	.long	0x68
	.byte	0x1
	.long	0x3a8f
	.uleb128 0x2a
	.string	"rsp"
	.byte	0x1
	.value	0x15b6
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x15b7
	.long	0x68
	.byte	0
	.uleb128 0x28
	.long	.LASF481
	.byte	0x1
	.value	0x15c5
	.long	0x68
	.byte	0x1
	.long	0x3ac4
	.uleb128 0x2a
	.string	"ev"
	.byte	0x1
	.value	0x15c7
	.long	0x3ac4
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x15c8
	.long	0x737
	.uleb128 0x2b
	.long	.LASF408
	.byte	0x1
	.value	0x15c9
	.long	0xca
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x908
	.uleb128 0x28
	.long	.LASF482
	.byte	0x1
	.value	0x160f
	.long	0x68
	.byte	0x1
	.long	0x3b10
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1611
	.long	0x68
	.uleb128 0x2d
	.long	.LASF483
	.byte	0x1
	.value	0x162f
	.uleb128 0x31
	.long	0x3b01
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.value	0x1613
	.long	0x1ca
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2a
	.string	"ret"
	.byte	0x1
	.value	0x1623
	.long	0x1ca
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	0x24ea
	.long	.LFB153
	.long	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0x415e
	.uleb128 0x45
	.long	0x24fb
	.long	.LLST101
	.uleb128 0x40
	.long	0x390f
	.long	.LBB308
	.long	.Ldebug_ranges0+0x128
	.byte	0x1
	.value	0x16ae
	.long	0x40ec
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x128
	.uleb128 0x47
	.long	0x3920
	.uleb128 0x40
	.long	0x392d
	.long	.LBB310
	.long	.Ldebug_ranges0+0x148
	.byte	0x1
	.value	0x1642
	.long	0x3ce1
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x148
	.uleb128 0x53
	.long	0x393e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	0x394a
	.long	.LLST102
	.uleb128 0x4b
	.long	0x1f5a
	.long	.LBB312
	.long	.LBE312-.LBB312
	.byte	0x1
	.value	0x14f2
	.long	0x3bae
	.uleb128 0x3b
	.long	0x1f67
	.long	.LLST103
	.uleb128 0x46
	.long	.LBB313
	.long	.LBE313-.LBB313
	.uleb128 0x45
	.long	0x1f73
	.long	.LLST104
	.uleb128 0x38
	.long	.LVL252
	.long	0x6b2e
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1f04
	.long	.LBB314
	.long	.Ldebug_ranges0+0x168
	.byte	0x1
	.value	0x14fa
	.long	0x3bdb
	.uleb128 0x3b
	.long	0x1f11
	.long	.LLST105
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x168
	.uleb128 0x45
	.long	0x1f1d
	.long	.LLST106
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1e83
	.long	.LBB318
	.long	.Ldebug_ranges0+0x180
	.byte	0x1
	.value	0x1503
	.long	0x3c08
	.uleb128 0x3b
	.long	0x1e90
	.long	.LLST107
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x180
	.uleb128 0x45
	.long	0x1e9c
	.long	.LLST108
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1f80
	.long	.LBB322
	.long	.Ldebug_ranges0+0x198
	.byte	0x1
	.value	0x150b
	.long	0x3c58
	.uleb128 0x3b
	.long	0x1f8d
	.long	.LLST109
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x198
	.uleb128 0x45
	.long	0x1f99
	.long	.LLST110
	.uleb128 0x41
	.long	0x2ddf
	.long	.LBB324
	.long	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.value	0x14ad
	.uleb128 0x3b
	.long	0x2df8
	.long	.LLST111
	.uleb128 0x3b
	.long	0x2dec
	.long	.LLST112
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1ed9
	.long	.LBB330
	.long	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.value	0x1514
	.long	0x3c85
	.uleb128 0x3b
	.long	0x1ee6
	.long	.LLST113
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x1c8
	.uleb128 0x45
	.long	0x1ef2
	.long	.LLST114
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL248
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL253
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL254
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL259
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL260
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL263
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL264
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL269
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL270
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL274
	.long	0x6aa1
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x3957
	.long	.LBB338
	.long	.LBE338-.LBB338
	.byte	0x1
	.value	0x1646
	.long	0x3ef9
	.uleb128 0x46
	.long	.LBB339
	.long	.LBE339-.LBB339
	.uleb128 0x45
	.long	0x3968
	.long	.LLST115
	.uleb128 0x45
	.long	0x3974
	.long	.LLST116
	.uleb128 0x53
	.long	0x3980
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x45
	.long	0x398c
	.long	.LLST117
	.uleb128 0x40
	.long	0x1eae
	.long	.LBB340
	.long	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.value	0x155c
	.long	0x3d4e
	.uleb128 0x3b
	.long	0x1ebb
	.long	.LLST118
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x1e0
	.uleb128 0x45
	.long	0x1ec7
	.long	.LLST119
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x1fab
	.long	.LBB344
	.long	.LBE344-.LBB344
	.byte	0x1
	.value	0x1564
	.long	0x3d91
	.uleb128 0x3b
	.long	0x1fb8
	.long	.LLST120
	.uleb128 0x46
	.long	.LBB345
	.long	.LBE345-.LBB345
	.uleb128 0x45
	.long	0x1fc4
	.long	.LLST121
	.uleb128 0x45
	.long	0x1fcf
	.long	.LLST122
	.uleb128 0x38
	.long	.LVL289
	.long	0x6a71
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x1f2f
	.long	.LBB346
	.long	.Ldebug_ranges0+0x1f8
	.byte	0x1
	.value	0x157e
	.long	0x3dd8
	.uleb128 0x3b
	.long	0x1f3c
	.long	.LLST123
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x1f8
	.uleb128 0x45
	.long	0x1f48
	.long	.LLST124
	.uleb128 0x4a
	.long	0x39ed
	.long	.LBB348
	.long	.LBE348-.LBB348
	.byte	0x1
	.value	0x14e6
	.uleb128 0x3b
	.long	0x39fe
	.long	.LLST125
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB352
	.long	.LBE352-.LBB352
	.long	0x3e48
	.uleb128 0x45
	.long	0x3999
	.long	.LLST126
	.uleb128 0x45
	.long	0x39a4
	.long	.LLST127
	.uleb128 0x45
	.long	0x39af
	.long	.LLST128
	.uleb128 0x53
	.long	0x39bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	0x39c7
	.long	.LLST129
	.uleb128 0x45
	.long	0x39d3
	.long	.LLST130
	.uleb128 0x38
	.long	.LVL306
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL311
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL312
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL315
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL316
	.long	0x2cd9
	.byte	0
	.uleb128 0x4b
	.long	0x3a29
	.long	.LBB353
	.long	.LBE353-.LBB353
	.byte	0x1
	.value	0x15b2
	.long	0x3ea6
	.uleb128 0x46
	.long	.LBB354
	.long	.LBE354-.LBB354
	.uleb128 0x45
	.long	0x3a3a
	.long	.LLST131
	.uleb128 0x45
	.long	0x3a46
	.long	.LLST132
	.uleb128 0x45
	.long	0x3a52
	.long	.LLST133
	.uleb128 0x38
	.long	.LVL318
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL321
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL324
	.long	0x2b18
	.uleb128 0x38
	.long	.LVL325
	.long	0x2cd9
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL276
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL281
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL282
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL290
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL291
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL296
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL297
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL299
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL305
	.long	0x6aa1
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x3a8f
	.long	.LBB355
	.long	.Ldebug_ranges0+0x210
	.byte	0x1
	.value	0x1653
	.long	0x3f53
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x210
	.uleb128 0x45
	.long	0x3aa0
	.long	.LLST134
	.uleb128 0x45
	.long	0x3aab
	.long	.LLST135
	.uleb128 0x45
	.long	0x3ab7
	.long	.LLST136
	.uleb128 0x38
	.long	.LVL329
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL344
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL348
	.long	0x2b18
	.uleb128 0x38
	.long	.LVL349
	.long	0x2cd9
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x3a65
	.long	.LBB359
	.long	.LBE359-.LBB359
	.byte	0x1
	.value	0x164b
	.long	0x3fd8
	.uleb128 0x46
	.long	.LBB360
	.long	.LBE360-.LBB360
	.uleb128 0x53
	.long	0x3a76
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x45
	.long	0x3a82
	.long	.LLST137
	.uleb128 0x4b
	.long	0x1fe2
	.long	.LBB361
	.long	.LBE361-.LBB361
	.byte	0x1
	.value	0x15c1
	.long	0x3fc4
	.uleb128 0x3b
	.long	0x1fef
	.long	.LLST138
	.uleb128 0x46
	.long	.LBB362
	.long	.LBE362-.LBB362
	.uleb128 0x45
	.long	0x1ffb
	.long	.LLST139
	.uleb128 0x45
	.long	0x2006
	.long	.LLST140
	.uleb128 0x38
	.long	.LVL340
	.long	0x6a71
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL332
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL341
	.long	0x6aa1
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2875
	.long	.LBB365
	.long	.LBE365-.LBB365
	.byte	0x1
	.value	0x1657
	.long	0x4008
	.uleb128 0x3b
	.long	0x2886
	.long	.LLST141
	.uleb128 0x3b
	.long	0x2890
	.long	.LLST142
	.uleb128 0x38
	.long	.LVL353
	.long	0x6ac5
	.byte	0
	.uleb128 0x40
	.long	0x3aca
	.long	.LBB367
	.long	.Ldebug_ranges0+0x230
	.byte	0x1
	.value	0x165a
	.long	0x40be
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x230
	.uleb128 0x45
	.long	0x3adb
	.long	.LLST143
	.uleb128 0x4f
	.long	0x3ae7
	.long	.L204
	.uleb128 0x3c
	.long	.LBB369
	.long	.LBE369-.LBB369
	.long	0x404a
	.uleb128 0x45
	.long	0x3af4
	.long	.LLST144
	.byte	0
	.uleb128 0x3c
	.long	.LBB370
	.long	.LBE370-.LBB370
	.long	0x405d
	.uleb128 0x47
	.long	0x3b02
	.byte	0
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB371
	.long	.LBE371-.LBB371
	.byte	0x1
	.value	0x1639
	.long	0x40a0
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST145
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST146
	.uleb128 0x46
	.long	.LBB372
	.long	.LBE372-.LBB372
	.uleb128 0x45
	.long	0x2076
	.long	.LLST147
	.uleb128 0x38
	.long	.LVL367
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL361
	.long	0x38b6
	.uleb128 0x50
	.long	.LVL364
	.long	0x2294
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x2875
	.long	.LBB374
	.long	.LBE374-.LBB374
	.byte	0x1
	.value	0x1658
	.uleb128 0x3b
	.long	0x2886
	.long	.LLST148
	.uleb128 0x3b
	.long	0x2890
	.long	.LLST149
	.uleb128 0x38
	.long	.LVL357
	.long	0x6ac5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB382
	.long	.LBE382-.LBB382
	.long	0x414b
	.uleb128 0x47
	.long	0x24fb
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB383
	.long	.LBE383-.LBB383
	.byte	0x1
	.value	0x16b9
	.long	0x4141
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST150
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST151
	.uleb128 0x46
	.long	.LBB384
	.long	.LBE384-.LBB384
	.uleb128 0x45
	.long	0x2076
	.long	.LLST152
	.uleb128 0x38
	.long	.LVL372
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL373
	.long	0x2410
	.byte	0
	.uleb128 0x38
	.long	.LVL368
	.long	0x6b3a
	.uleb128 0x38
	.long	.LVL375
	.long	0x6ae9
	.byte	0
	.uleb128 0x54
	.long	.LASF622
	.byte	0x1
	.value	0x16bf
	.long	.LFB154
	.long	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0x419d
	.uleb128 0x43
	.long	.LASF71
	.byte	0x1
	.value	0x16bf
	.long	0x428
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x16c1
	.long	0x68
	.long	.LLST153
	.uleb128 0x38
	.long	.LVL377
	.long	0x24ea
	.byte	0
	.uleb128 0x42
	.long	.LASF484
	.byte	0x1
	.value	0x1663
	.long	0x68
	.long	.LFB149
	.long	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x41d5
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x1663
	.long	0x737
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x55
	.long	.LVL380
	.uleb128 0x3f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF485
	.byte	0x1
	.value	0xf03
	.long	0x68
	.long	.LFB80
	.long	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x425a
	.uleb128 0x43
	.long	.LASF124
	.byte	0x1
	.value	0xf03
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.string	"buf"
	.byte	0x1
	.value	0xf03
	.long	0x737
	.long	.LLST154
	.uleb128 0x3c
	.long	.LBB385
	.long	.LBE385-.LBB385
	.long	0x423e
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0xf0d
	.long	0x68
	.long	.LLST155
	.uleb128 0x38
	.long	.LVL385
	.long	0x419d
	.uleb128 0x38
	.long	.LVL388
	.long	0x6aa1
	.byte	0
	.uleb128 0x38
	.long	.LVL382
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL390
	.long	0x6a89
	.uleb128 0x38
	.long	.LVL391
	.long	0x6a1d
	.byte	0
	.uleb128 0x3a
	.long	0x2543
	.long	.LFB204
	.long	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.long	0x42a7
	.uleb128 0x4c
	.long	0x2554
	.uleb128 0x6
	.byte	0xfa
	.long	0x2554
	.byte	0x9f
	.uleb128 0x45
	.long	0x2560
	.long	.LLST156
	.uleb128 0x45
	.long	0x256b
	.long	.LLST157
	.uleb128 0x38
	.long	.LVL394
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL396
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL397
	.long	0x41d5
	.byte	0
	.uleb128 0x3a
	.long	0x257e
	.long	.LFB205
	.long	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.long	0x433b
	.uleb128 0x4c
	.long	0x258f
	.uleb128 0x6
	.byte	0xfa
	.long	0x258f
	.byte	0x9f
	.uleb128 0x45
	.long	0x259b
	.long	.LLST158
	.uleb128 0x45
	.long	0x25a6
	.long	.LLST159
	.uleb128 0x45
	.long	0x25b1
	.long	.LLST160
	.uleb128 0x53
	.long	0x25bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x45
	.long	0x25c9
	.long	.LLST161
	.uleb128 0x45
	.long	0x25d5
	.long	.LLST162
	.uleb128 0x45
	.long	0x25e1
	.long	.LLST163
	.uleb128 0x38
	.long	.LVL401
	.long	0x2cd9
	.uleb128 0x38
	.long	.LVL406
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL407
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL410
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL411
	.long	0x41d5
	.uleb128 0x38
	.long	.LVL413
	.long	0x6ae9
	.byte	0
	.uleb128 0x34
	.long	.LASF486
	.byte	0x1
	.value	0x107e
	.long	.LFB96
	.long	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x466d
	.uleb128 0x33
	.string	"evt"
	.byte	0x1
	.value	0x107e
	.long	0x466d
	.long	.LLST164
	.uleb128 0x39
	.long	.LASF122
	.byte	0x1
	.value	0x1080
	.long	0xb4
	.long	.LLST165
	.uleb128 0x48
	.long	.LASF174
	.byte	0x1
	.value	0x1081
	.long	0x874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x48
	.long	.LASF354
	.byte	0x1
	.value	0x1081
	.long	0x874
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x39
	.long	.LASF413
	.byte	0x1
	.value	0x1082
	.long	0x15f6
	.long	.LLST166
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x1083
	.long	0x68
	.long	.LLST167
	.uleb128 0x44
	.long	.LASF424
	.byte	0x1
	.value	0x10da
	.long	.L299
	.uleb128 0x40
	.long	0x2ddf
	.long	.LBB396
	.long	.Ldebug_ranges0+0x248
	.byte	0x1
	.value	0x1098
	.long	0x43e2
	.uleb128 0x3b
	.long	0x2df8
	.long	.LLST168
	.uleb128 0x3b
	.long	0x2dec
	.long	.LLST169
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB400
	.long	.LBE400-.LBB400
	.byte	0x1
	.value	0x109f
	.long	0x4425
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST170
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST171
	.uleb128 0x46
	.long	.LBB401
	.long	.LBE401-.LBB401
	.uleb128 0x45
	.long	0x203e
	.long	.LLST172
	.uleb128 0x38
	.long	.LVL435
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2508
	.long	.LBB402
	.long	.LBE402-.LBB402
	.byte	0x1
	.value	0x10c6
	.long	0x447a
	.uleb128 0x3b
	.long	0x2519
	.long	.LLST173
	.uleb128 0x46
	.long	.LBB403
	.long	.LBE403-.LBB403
	.uleb128 0x45
	.long	0x2525
	.long	.LLST174
	.uleb128 0x45
	.long	0x2530
	.long	.LLST175
	.uleb128 0x38
	.long	.LVL446
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL449
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL451
	.long	0x41d5
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2051
	.long	.LBB404
	.long	.Ldebug_ranges0+0x260
	.byte	0x1
	.value	0x10ce
	.long	0x44b9
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST176
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST177
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x260
	.uleb128 0x45
	.long	0x2076
	.long	.LLST178
	.uleb128 0x38
	.long	.LVL456
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB408
	.long	.LBE408-.LBB408
	.byte	0x1
	.value	0x10d5
	.long	0x44f3
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST179
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST180
	.uleb128 0x46
	.long	.LBB409
	.long	.LBE409-.LBB409
	.uleb128 0x45
	.long	0x2076
	.long	.LLST181
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL418
	.long	0x2997
	.long	0x450f
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3c
	.byte	0
	.uleb128 0x38
	.long	.LVL419
	.long	0x6b22
	.uleb128 0x38
	.long	.LVL420
	.long	0x6b0a
	.uleb128 0x38
	.long	.LVL423
	.long	0x6b46
	.uleb128 0x38
	.long	.LVL424
	.long	0x6b16
	.uleb128 0x3e
	.long	.LVL426
	.long	0x28ff
	.long	0x454d
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL429
	.long	0x28ff
	.long	0x4567
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 -42
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL430
	.long	0x6b0a
	.uleb128 0x38
	.long	.LVL436
	.long	0x6b52
	.uleb128 0x3e
	.long	.LVL439
	.long	0x28ff
	.long	0x4594
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 64
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL440
	.long	0x28ff
	.long	0x45af
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 71
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 -42
	.byte	0
	.uleb128 0x3e
	.long	.LVL441
	.long	0x28ff
	.long	0x45cd
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 78
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev
	.byte	0
	.uleb128 0x3e
	.long	.LVL442
	.long	0x2938
	.long	0x45e9
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3e
	.long	.LVL443
	.long	0x2311
	.long	0x45fc
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.long	.LVL444
	.long	0x6b46
	.uleb128 0x3e
	.long	.LVL453
	.long	0x425a
	.long	0x4621
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x56
	.long	0x2554
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL457
	.long	0x42a7
	.long	0x463d
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x56
	.long	0x258f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL461
	.long	0x29fb
	.long	0x4651
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL462
	.long	0x6b16
	.uleb128 0x38
	.long	.LVL463
	.long	0x2410
	.uleb128 0x38
	.long	.LVL464
	.long	0x6ae9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x131c
	.uleb128 0x32
	.long	.LASF488
	.byte	0x1
	.value	0x1166
	.long	0x68
	.long	.LFB102
	.long	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x46e8
	.uleb128 0x36
	.long	.LASF122
	.byte	0x1
	.value	0x1166
	.long	0xb4
	.long	.LLST182
	.uleb128 0x36
	.long	.LASF191
	.byte	0x1
	.value	0x1166
	.long	0xa9
	.long	.LLST183
	.uleb128 0x37
	.string	"cp"
	.byte	0x1
	.value	0x1168
	.long	0x46e8
	.long	.LLST184
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x1169
	.long	0x737
	.long	.LLST185
	.uleb128 0x38
	.long	.LVL468
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL470
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL471
	.long	0x41d5
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xdd1
	.uleb128 0x28
	.long	.LASF489
	.byte	0x1
	.value	0xbdc
	.long	0x16df
	.byte	0x3
	.long	0x470c
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xbdc
	.long	0x737
	.byte	0
	.uleb128 0x26
	.long	.LASF490
	.byte	0x1
	.value	0xfae
	.byte	0x1
	.long	0x4762
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xfae
	.long	0x737
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.value	0xfb0
	.long	0x4762
	.uleb128 0x2b
	.long	.LASF122
	.byte	0x1
	.value	0xfb1
	.long	0xb4
	.uleb128 0x2a
	.string	"len"
	.byte	0x1
	.value	0xfb1
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0xfb2
	.long	0x15f6
	.uleb128 0x2b
	.long	.LASF69
	.byte	0x1
	.value	0xfb3
	.long	0xa9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x8a8
	.uleb128 0x26
	.long	.LASF491
	.byte	0x1
	.value	0x1425
	.byte	0x1
	.long	0x478e
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1425
	.long	0x737
	.uleb128 0x2a
	.string	"hdr"
	.byte	0x1
	.value	0x1427
	.long	0x478e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x880
	.uleb128 0x26
	.long	.LASF492
	.byte	0x1
	.value	0x13f9
	.byte	0x1
	.long	0x47ba
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x13f9
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x13fb
	.long	0x47ba
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1083
	.uleb128 0x28
	.long	.LASF493
	.byte	0x1
	.value	0xf46
	.long	0x14cd
	.byte	0x1
	.long	0x47ec
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0xf46
	.long	0x14cd
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF325
	.byte	0x1
	.value	0xf49
	.long	0x1d2e
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF494
	.byte	0x1
	.value	0x1174
	.long	0x68
	.byte	0x1
	.long	0x482d
	.uleb128 0x29
	.long	.LASF122
	.byte	0x1
	.value	0x1174
	.long	0xb4
	.uleb128 0x29
	.long	.LASF441
	.byte	0x1
	.value	0x1175
	.long	0x334f
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0x1177
	.long	0x482d
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1178
	.long	0x737
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xd68
	.uleb128 0x26
	.long	.LASF495
	.byte	0x1
	.value	0x13da
	.byte	0x1
	.long	0x488d
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x13da
	.long	0x737
	.uleb128 0x2b
	.long	.LASF496
	.byte	0x1
	.value	0x13dc
	.long	0xa9
	.uleb128 0x2b
	.long	.LASF497
	.byte	0x1
	.value	0x13dd
	.long	0x488d
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF354
	.byte	0x1
	.value	0x13e0
	.long	0x874
	.uleb128 0x2b
	.long	.LASF498
	.byte	0x1
	.value	0x13e1
	.long	0x93
	.uleb128 0x2c
	.uleb128 0x2b
	.long	.LASF94
	.byte	0x1
	.value	0x13ee
	.long	0x69f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1114
	.uleb128 0x26
	.long	.LASF499
	.byte	0x1
	.value	0x551
	.byte	0x3
	.long	0x48b9
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x551
	.long	0x14d8
	.uleb128 0x29
	.long	.LASF94
	.byte	0x1
	.value	0x552
	.long	0x24db
	.byte	0
	.uleb128 0x26
	.long	.LASF500
	.byte	0x1
	.value	0x11b5
	.byte	0x1
	.long	0x48ff
	.uleb128 0x29
	.long	.LASF354
	.byte	0x1
	.value	0x11b5
	.long	0x14cd
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0x11b6
	.long	0x14cd
	.uleb128 0x29
	.long	.LASF501
	.byte	0x1
	.value	0x11b6
	.long	0xa9
	.uleb128 0x2b
	.long	.LASF413
	.byte	0x1
	.value	0x11b8
	.long	0x15f6
	.uleb128 0x2d
	.long	.LASF502
	.byte	0x1
	.value	0x11d9
	.byte	0
	.uleb128 0x28
	.long	.LASF503
	.byte	0x1
	.value	0xfee
	.long	0x68
	.byte	0x1
	.long	0x4934
	.uleb128 0x29
	.long	.LASF413
	.byte	0x1
	.value	0xfee
	.long	0x4934
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xff0
	.long	0x737
	.uleb128 0x2a
	.string	"cp"
	.byte	0x1
	.value	0xff1
	.long	0x493f
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x493a
	.uleb128 0xf
	.long	0x15fc
	.uleb128 0x7
	.byte	0x4
	.long	0xc45
	.uleb128 0x57
	.long	.LASF504
	.byte	0x1
	.value	0x16c7
	.long	.LFB155
	.long	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0x5669
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x16c9
	.long	0x737
	.long	.LLST186
	.uleb128 0x4b
	.long	0x46ee
	.long	.LBB488
	.long	.LBE488-.LBB488
	.byte	0x1
	.value	0x16cf
	.long	0x499b
	.uleb128 0x3b
	.long	0x46ff
	.long	.LLST187
	.uleb128 0x50
	.long	.LVL476
	.long	0x28d4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x470c
	.long	.LBB490
	.long	.LBE490-.LBB490
	.byte	0x1
	.value	0x16d1
	.long	0x4a5f
	.uleb128 0x3b
	.long	0x4719
	.long	.LLST188
	.uleb128 0x46
	.long	.LBB491
	.long	.LBE491-.LBB491
	.uleb128 0x45
	.long	0x4725
	.long	.LLST189
	.uleb128 0x45
	.long	0x4731
	.long	.LLST190
	.uleb128 0x45
	.long	0x473d
	.long	.LLST191
	.uleb128 0x45
	.long	0x4749
	.long	.LLST192
	.uleb128 0x45
	.long	0x4755
	.long	.LLST193
	.uleb128 0x3e
	.long	.LVL482
	.long	0x28d4
	.long	0x4a04
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL483
	.long	0x6b5e
	.uleb128 0x3e
	.long	.LVL484
	.long	0x28d4
	.long	0x4a23
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL485
	.long	0x6b6a
	.uleb128 0x3e
	.long	.LVL489
	.long	0x28d4
	.long	0x4a42
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL490
	.long	0x6b76
	.uleb128 0x38
	.long	.LVL491
	.long	0x6b82
	.uleb128 0x38
	.long	.LVL492
	.long	0x6b16
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x4768
	.long	.LBB492
	.long	.Ldebug_ranges0+0x278
	.byte	0x1
	.value	0x16d4
	.long	0x564d
	.uleb128 0x3b
	.long	0x4775
	.long	.LLST194
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x278
	.uleb128 0x45
	.long	0x4781
	.long	.LLST195
	.uleb128 0x4b
	.long	0x2469
	.long	.LBB494
	.long	.LBE494-.LBB494
	.byte	0x1
	.value	0x142d
	.long	0x4b63
	.uleb128 0x3b
	.long	0x2476
	.long	.LLST196
	.uleb128 0x46
	.long	.LBB495
	.long	.LBE495-.LBB495
	.uleb128 0x45
	.long	0x2482
	.long	.LLST197
	.uleb128 0x45
	.long	0x248e
	.long	.LLST198
	.uleb128 0x45
	.long	0x249a
	.long	.LLST199
	.uleb128 0x4f
	.long	0x24a6
	.long	.L355
	.uleb128 0x38
	.long	.LVL499
	.long	0x6b6a
	.uleb128 0x38
	.long	.LVL504
	.long	0x6b46
	.uleb128 0x3e
	.long	.LVL505
	.long	0x2938
	.long	0x4aff
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL506
	.long	0x6b46
	.uleb128 0x38
	.long	.LVL507
	.long	0x2410
	.uleb128 0x38
	.long	.LVL508
	.long	0x6b16
	.uleb128 0x3e
	.long	.LVL510
	.long	0x2938
	.long	0x4b36
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x3e
	.long	.LVL511
	.long	0x2938
	.long	0x4b52
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x50
	.long	.LVL512
	.long	0x2311
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x217c
	.long	.LBB496
	.long	.LBE496-.LBB496
	.byte	0x1
	.value	0x1430
	.long	0x4baf
	.uleb128 0x3b
	.long	0x2189
	.long	.LLST200
	.uleb128 0x46
	.long	.LBB497
	.long	.LBE497-.LBB497
	.uleb128 0x45
	.long	0x2195
	.long	.LLST201
	.uleb128 0x45
	.long	0x21a1
	.long	.LLST202
	.uleb128 0x45
	.long	0x21ad
	.long	.LLST203
	.uleb128 0x38
	.long	.LVL517
	.long	0x6b6a
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x21c0
	.long	.LBB498
	.long	.LBE498-.LBB498
	.byte	0x1
	.value	0x1433
	.long	0x4c4d
	.uleb128 0x3b
	.long	0x21cd
	.long	.LLST204
	.uleb128 0x46
	.long	.LBB499
	.long	.LBE499-.LBB499
	.uleb128 0x45
	.long	0x21d9
	.long	.LLST205
	.uleb128 0x45
	.long	0x21e5
	.long	.LLST206
	.uleb128 0x45
	.long	0x21f1
	.long	.LLST207
	.uleb128 0x4b
	.long	0x2162
	.long	.LBB500
	.long	.LBE500-.LBB500
	.byte	0x1
	.value	0x12d6
	.long	0x4c1e
	.uleb128 0x3b
	.long	0x216f
	.long	.LLST208
	.uleb128 0x50
	.long	.LVL533
	.long	0x2ab9
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL526
	.long	0x6b6a
	.uleb128 0x38
	.long	.LVL529
	.long	0x6b8e
	.uleb128 0x38
	.long	.LVL531
	.long	0x6b9a
	.uleb128 0x38
	.long	.LVL534
	.long	0x6b8e
	.uleb128 0x38
	.long	.LVL535
	.long	0x6ba6
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x4794
	.long	.LBB502
	.long	.Ldebug_ranges0+0x290
	.byte	0x1
	.value	0x1436
	.long	0x5642
	.uleb128 0x3b
	.long	0x47a1
	.long	.LLST209
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x290
	.uleb128 0x45
	.long	0x47ad
	.long	.LLST210
	.uleb128 0x4b
	.long	0x25fa
	.long	.LBB504
	.long	.LBE504-.LBB504
	.byte	0x1
	.value	0x1400
	.long	0x4d7e
	.uleb128 0x3b
	.long	0x2607
	.long	.LLST211
	.uleb128 0x46
	.long	.LBB505
	.long	.LBE505-.LBB505
	.uleb128 0x45
	.long	0x2613
	.long	.LLST212
	.uleb128 0x53
	.long	0x261f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x47
	.long	0x262b
	.uleb128 0x40
	.long	0x47c0
	.long	.LBB506
	.long	.Ldebug_ranges0+0x2a8
	.byte	0x1
	.value	0x10f3
	.long	0x4ceb
	.uleb128 0x3b
	.long	0x47d1
	.long	.LLST213
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x2a8
	.uleb128 0x45
	.long	0x47de
	.long	.LLST214
	.uleb128 0x38
	.long	.LVL547
	.long	0x6bb2
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2ddf
	.long	.LBB511
	.long	.LBE511-.LBB511
	.byte	0x1
	.value	0x10f1
	.long	0x4d12
	.uleb128 0x3b
	.long	0x2df8
	.long	.LLST215
	.uleb128 0x3b
	.long	0x2dec
	.long	.LLST216
	.byte	0
	.uleb128 0x4b
	.long	0x2ddf
	.long	.LBB514
	.long	.LBE514-.LBB514
	.byte	0x1
	.value	0x10f5
	.long	0x4d39
	.uleb128 0x3b
	.long	0x2df8
	.long	.LLST217
	.uleb128 0x3b
	.long	0x2dec
	.long	.LLST218
	.byte	0
	.uleb128 0x4b
	.long	0x2ddf
	.long	.LBB516
	.long	.LBE516-.LBB516
	.byte	0x1
	.value	0x10f9
	.long	0x4d58
	.uleb128 0x3d
	.long	0x2df8
	.uleb128 0x3d
	.long	0x2dec
	.byte	0
	.uleb128 0x3e
	.long	.LVL544
	.long	0x28ff
	.long	0x4d6c
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x50
	.long	.LVL551
	.long	0x28ff
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2250
	.long	.LBB518
	.long	.LBE518-.LBB518
	.byte	0x1
	.value	0x1406
	.long	0x4dd3
	.uleb128 0x3b
	.long	0x225d
	.long	.LLST219
	.uleb128 0x46
	.long	.LBB519
	.long	.LBE519-.LBB519
	.uleb128 0x45
	.long	0x2269
	.long	.LLST220
	.uleb128 0x45
	.long	0x2275
	.long	.LLST221
	.uleb128 0x45
	.long	0x2281
	.long	.LLST222
	.uleb128 0x38
	.long	.LVL560
	.long	0x6b6a
	.uleb128 0x38
	.long	.LVL563
	.long	0x6bbe
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x263e
	.long	.LBB520
	.long	.LBE520-.LBB520
	.byte	0x1
	.value	0x1409
	.long	0x4eff
	.uleb128 0x3b
	.long	0x264b
	.long	.LLST223
	.uleb128 0x46
	.long	.LBB521
	.long	.LBE521-.LBB521
	.uleb128 0x45
	.long	0x2657
	.long	.LLST224
	.uleb128 0x45
	.long	0x2663
	.long	.LLST225
	.uleb128 0x45
	.long	0x266f
	.long	.LLST226
	.uleb128 0x4f
	.long	0x267b
	.long	.L384
	.uleb128 0x3c
	.long	.LBB522
	.long	.LBE522-.LBB522
	.long	0x4e86
	.uleb128 0x45
	.long	0x2688
	.long	.LLST227
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB523
	.long	.LBE523-.LBB523
	.byte	0x1
	.value	0x1110
	.long	0x4e6d
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST228
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST229
	.uleb128 0x46
	.long	.LBB524
	.long	.LBE524-.LBB524
	.uleb128 0x45
	.long	0x2076
	.long	.LLST230
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	.LVL571
	.long	0x425a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x56
	.long	0x2554
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LBB525
	.long	.LBE525-.LBB525
	.long	0x4ef4
	.uleb128 0x45
	.long	0x2696
	.long	.LLST231
	.uleb128 0x40
	.long	0x2051
	.long	.LBB526
	.long	.Ldebug_ranges0+0x2c8
	.byte	0x1
	.value	0x1119
	.long	0x4edb
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST232
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST233
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x2c8
	.uleb128 0x45
	.long	0x2076
	.long	.LLST234
	.uleb128 0x38
	.long	.LVL580
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	.LVL575
	.long	0x42a7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x56
	.long	0x258f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL568
	.long	0x6b6a
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2704
	.long	.LBB530
	.long	.LBE530-.LBB530
	.byte	0x1
	.value	0x140c
	.long	0x4fe5
	.uleb128 0x3b
	.long	0x2715
	.long	.LLST235
	.uleb128 0x46
	.long	.LBB531
	.long	.LBE531-.LBB531
	.uleb128 0x45
	.long	0x2721
	.long	.LLST236
	.uleb128 0x53
	.long	0x272d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -102
	.uleb128 0x45
	.long	0x2739
	.long	.LLST237
	.uleb128 0x45
	.long	0x2745
	.long	.LLST238
	.uleb128 0x47
	.long	0x2751
	.uleb128 0x4b
	.long	0x47ec
	.long	.LBB532
	.long	.LBE532-.LBB532
	.byte	0x1
	.value	0x119c
	.long	0x4fa3
	.uleb128 0x3b
	.long	0x4809
	.long	.LLST239
	.uleb128 0x3b
	.long	0x47fd
	.long	.LLST240
	.uleb128 0x46
	.long	.LBB533
	.long	.LBE533-.LBB533
	.uleb128 0x45
	.long	0x4815
	.long	.LLST241
	.uleb128 0x45
	.long	0x4820
	.long	.LLST242
	.uleb128 0x38
	.long	.LVL594
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL597
	.long	0x6a59
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL585
	.long	0x6b6a
	.uleb128 0x3e
	.long	.LVL588
	.long	0x4673
	.long	0x4fc5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x38
	.long	.LVL591
	.long	0x6bca
	.uleb128 0x50
	.long	.LVL592
	.long	0x4673
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2204
	.long	.LBB534
	.long	.LBE534-.LBB534
	.byte	0x1
	.value	0x140f
	.long	0x504f
	.uleb128 0x3b
	.long	0x2211
	.long	.LLST243
	.uleb128 0x46
	.long	.LBB535
	.long	.LBE535-.LBB535
	.uleb128 0x45
	.long	0x221d
	.long	.LLST244
	.uleb128 0x45
	.long	0x2229
	.long	.LLST245
	.uleb128 0x45
	.long	0x2235
	.long	.LLST246
	.uleb128 0x4f
	.long	0x2241
	.long	.L390
	.uleb128 0x38
	.long	.LVL603
	.long	0x6b6a
	.uleb128 0x50
	.long	.LVL606
	.long	0x2997
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x26aa
	.long	.LBB536
	.long	.LBE536-.LBB536
	.byte	0x1
	.value	0x1412
	.long	0x5136
	.uleb128 0x3b
	.long	0x26b7
	.long	.LLST247
	.uleb128 0x46
	.long	.LBB537
	.long	.LBE537-.LBB537
	.uleb128 0x45
	.long	0x26c3
	.long	.LLST248
	.uleb128 0x45
	.long	0x26cf
	.long	.LLST249
	.uleb128 0x45
	.long	0x26db
	.long	.LLST250
	.uleb128 0x4f
	.long	0x26e7
	.long	.L391
	.uleb128 0x3c
	.long	.LBB538
	.long	.LBE538-.LBB538
	.long	0x5102
	.uleb128 0x45
	.long	0x26f0
	.long	.LLST251
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB539
	.long	.LBE539-.LBB539
	.byte	0x1
	.value	0x1145
	.long	0x50e9
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST252
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST253
	.uleb128 0x46
	.long	.LBB540
	.long	.LBE540-.LBB540
	.uleb128 0x45
	.long	0x2076
	.long	.LLST254
	.byte	0
	.byte	0
	.uleb128 0x50
	.long	.LVL613
	.long	0x42a7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x56
	.long	0x258f
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL609
	.long	0x6b6a
	.uleb128 0x3e
	.long	.LVL612
	.long	0x2997
	.long	0x5124
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x50
	.long	.LVL617
	.long	0x29fb
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2764
	.long	.LBB541
	.long	.Ldebug_ranges0+0x2e0
	.byte	0x1
	.value	0x1415
	.long	0x525b
	.uleb128 0x3b
	.long	0x2771
	.long	.LLST255
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x2e0
	.uleb128 0x45
	.long	0x277d
	.long	.LLST256
	.uleb128 0x45
	.long	0x2789
	.long	.LLST257
	.uleb128 0x45
	.long	0x2794
	.long	.LLST258
	.uleb128 0x45
	.long	0x27a0
	.long	.LLST259
	.uleb128 0x53
	.long	0x27ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x4f
	.long	0x27b7
	.long	.L396
	.uleb128 0x3c
	.long	.LBB543
	.long	.LBE543-.LBB543
	.long	0x51b6
	.uleb128 0x45
	.long	0x27c4
	.long	.LLST260
	.uleb128 0x38
	.long	.LVL626
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL627
	.long	0x6a59
	.byte	0
	.uleb128 0x3c
	.long	.LBB544
	.long	.LBE544-.LBB544
	.long	0x51df
	.uleb128 0x45
	.long	0x27d5
	.long	.LLST261
	.uleb128 0x38
	.long	.LVL632
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL633
	.long	0x6a59
	.byte	0
	.uleb128 0x3c
	.long	.LBB545
	.long	.LBE545-.LBB545
	.long	0x5211
	.uleb128 0x45
	.long	0x27e2
	.long	.LLST262
	.uleb128 0x45
	.long	0x27ed
	.long	.LLST263
	.uleb128 0x38
	.long	.LVL637
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL640
	.long	0x6a59
	.byte	0
	.uleb128 0x38
	.long	.LVL622
	.long	0x6b6a
	.uleb128 0x38
	.long	.LVL625
	.long	0x6bd6
	.uleb128 0x38
	.long	.LVL630
	.long	0x6be2
	.uleb128 0x38
	.long	.LVL631
	.long	0x6be2
	.uleb128 0x38
	.long	.LVL645
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL646
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL649
	.long	0x41d5
	.uleb128 0x38
	.long	.LVL651
	.long	0x6b16
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2083
	.long	.LBB547
	.long	.LBE547-.LBB547
	.byte	0x1
	.value	0x1418
	.long	0x5317
	.uleb128 0x3b
	.long	0x2090
	.long	.LLST264
	.uleb128 0x46
	.long	.LBB548
	.long	.LBE548-.LBB548
	.uleb128 0x45
	.long	0x209c
	.long	.LLST265
	.uleb128 0x45
	.long	0x20a8
	.long	.LLST266
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB549
	.long	.LBE549-.LBB549
	.byte	0x1
	.value	0x1339
	.long	0x52d6
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST267
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST268
	.uleb128 0x46
	.long	.LBB550
	.long	.LBE550-.LBB550
	.uleb128 0x45
	.long	0x203e
	.long	.LLST269
	.uleb128 0x38
	.long	.LVL656
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x4a
	.long	0x2051
	.long	.LBB551
	.long	.LBE551-.LBB551
	.byte	0x1
	.value	0x133c
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST270
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST271
	.uleb128 0x46
	.long	.LBB552
	.long	.LBE552-.LBB552
	.uleb128 0x45
	.long	0x2076
	.long	.LLST272
	.uleb128 0x38
	.long	.LVL659
	.long	0x6afe
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x1e57
	.long	.LBB553
	.long	.LBE553-.LBB553
	.byte	0x1
	.value	0x141b
	.long	0x5348
	.uleb128 0x3b
	.long	0x1e64
	.long	.LLST273
	.uleb128 0x46
	.long	.LBB554
	.long	.LBE554-.LBB554
	.uleb128 0x45
	.long	0x1e70
	.long	.LLST274
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x4833
	.long	.LBB555
	.long	.LBE555-.LBB555
	.byte	0x1
	.value	0x141e
	.long	0x562e
	.uleb128 0x3b
	.long	0x4840
	.long	.LLST275
	.uleb128 0x46
	.long	.LBB556
	.long	.LBE556-.LBB556
	.uleb128 0x45
	.long	0x484c
	.long	.LLST276
	.uleb128 0x45
	.long	0x4858
	.long	.LLST277
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x2f8
	.long	0x5623
	.uleb128 0x53
	.long	0x4865
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x45
	.long	0x4871
	.long	.LLST278
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x318
	.long	0x53fd
	.uleb128 0x47
	.long	0x487e
	.uleb128 0x40
	.long	0x24b5
	.long	.LBB559
	.long	.Ldebug_ranges0+0x338
	.byte	0x1
	.value	0x13f3
	.long	0x53d0
	.uleb128 0x3b
	.long	0x24ce
	.long	.LLST279
	.uleb128 0x3b
	.long	0x24c2
	.long	.LLST280
	.byte	0
	.uleb128 0x41
	.long	0x4893
	.long	.LBB565
	.long	.Ldebug_ranges0+0x360
	.byte	0x1
	.value	0x13ef
	.uleb128 0x3b
	.long	0x48ac
	.long	.LLST281
	.uleb128 0x3b
	.long	0x48a0
	.long	.LLST282
	.uleb128 0x38
	.long	.LVL686
	.long	0x6bee
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x47c0
	.long	.LBB572
	.long	.LBE572-.LBB572
	.byte	0x1
	.value	0x13eb
	.long	0x5437
	.uleb128 0x3b
	.long	0x47d1
	.long	.LLST283
	.uleb128 0x46
	.long	.LBB574
	.long	.LBE574-.LBB574
	.uleb128 0x45
	.long	0x47de
	.long	.LLST284
	.uleb128 0x38
	.long	.LVL681
	.long	0x6bb2
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x48b9
	.long	.LBB576
	.long	.Ldebug_ranges0+0x378
	.byte	0x1
	.value	0x13f5
	.long	0x55e0
	.uleb128 0x3b
	.long	0x48de
	.long	.LLST285
	.uleb128 0x3b
	.long	0x48d2
	.long	.LLST286
	.uleb128 0x3b
	.long	0x48c6
	.long	.LLST287
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x378
	.uleb128 0x45
	.long	0x48ea
	.long	.LLST288
	.uleb128 0x4f
	.long	0x48f6
	.long	.LDL1
	.uleb128 0x4b
	.long	0x48ff
	.long	.LBB578
	.long	.LBE578-.LBB578
	.byte	0x1
	.value	0x11d3
	.long	0x54ed
	.uleb128 0x3b
	.long	0x4910
	.long	.LLST289
	.uleb128 0x46
	.long	.LBB579
	.long	.LBE579-.LBB579
	.uleb128 0x45
	.long	0x491c
	.long	.LLST290
	.uleb128 0x45
	.long	0x4928
	.long	.LLST291
	.uleb128 0x38
	.long	.LVL703
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL706
	.long	0x6a59
	.uleb128 0x3e
	.long	.LVL709
	.long	0x28ff
	.long	0x54e2
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x73
	.sleb128 78
	.byte	0
	.uleb128 0x38
	.long	.LVL710
	.long	0x2cd9
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL692
	.long	0x2938
	.long	0x5509
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x38
	.long	.LVL694
	.long	0x6b0a
	.uleb128 0x3e
	.long	.LVL697
	.long	0x2938
	.long	0x552e
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.long	.LVL698
	.long	0x2938
	.long	0x554a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3e
	.long	.LVL699
	.long	0x2294
	.long	0x5561
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+1
	.byte	0
	.uleb128 0x3e
	.long	.LVL700
	.long	0x22ca
	.long	0x5574
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL701
	.long	0x28ff
	.long	0x5592
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 71
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev
	.byte	0
	.uleb128 0x3e
	.long	.LVL702
	.long	0x28ff
	.long	0x55b1
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x73
	.sleb128 78
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x6
	.byte	0x75
	.sleb128 -112
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x38
	.long	.LVL711
	.long	0x6b46
	.uleb128 0x38
	.long	.LVL712
	.long	0x6b16
	.uleb128 0x38
	.long	.LVL713
	.long	0x6b46
	.uleb128 0x38
	.long	.LVL714
	.long	0x6b16
	.uleb128 0x38
	.long	.LVL715
	.long	0x2410
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL677
	.long	0x6b5e
	.uleb128 0x3e
	.long	.LVL679
	.long	0x28ff
	.long	0x5604
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -74
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL684
	.long	0x28ff
	.long	0x5619
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -74
	.byte	0
	.uleb128 0x38
	.long	.LVL717
	.long	0x6b5e
	.byte	0
	.uleb128 0x38
	.long	.LVL672
	.long	0x6bfa
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL538
	.long	0x6b5e
	.uleb128 0x38
	.long	.LVL555
	.long	0x433b
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL495
	.long	0x6b5e
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL474
	.long	0x6c06
	.uleb128 0x38
	.long	.LVL720
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL721
	.long	0x6c12
	.byte	0
	.uleb128 0x26
	.long	.LASF505
	.byte	0x1
	.value	0x143e
	.byte	0x1
	.long	0x568f
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1440
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1441
	.long	0x68
	.byte	0
	.uleb128 0x59
	.long	.LASF506
	.byte	0x1
	.value	0x148a
	.long	.LFB129
	.long	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x5814
	.uleb128 0x35
	.string	"p1"
	.byte	0x1
	.value	0x148a
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"p2"
	.byte	0x1
	.value	0x148a
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"p3"
	.byte	0x1
	.value	0x148a
	.long	0x1bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x48
	.long	.LASF127
	.byte	0x1
	.value	0x148c
	.long	0x5814
	.uleb128 0x5
	.byte	0x3
	.long	events.5664
	.uleb128 0x46
	.long	.LBB597
	.long	.LBE597-.LBB597
	.uleb128 0x39
	.long	.LASF507
	.byte	0x1
	.value	0x1492
	.long	0x68
	.long	.LLST292
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1492
	.long	0x68
	.uleb128 0x4b
	.long	0x289b
	.long	.LBB598
	.long	.LBE598-.LBB598
	.byte	0x1
	.value	0x149b
	.long	0x57f7
	.uleb128 0x3b
	.long	0x28a8
	.long	.LLST293
	.uleb128 0x3b
	.long	0x28b3
	.long	.LLST294
	.uleb128 0x4b
	.long	0x5669
	.long	.LBB600
	.long	.LBE600-.LBB600
	.byte	0x1
	.value	0x1468
	.long	0x57d1
	.uleb128 0x46
	.long	.LBB601
	.long	.LBE601-.LBB601
	.uleb128 0x45
	.long	0x5676
	.long	.LLST295
	.uleb128 0x45
	.long	0x5682
	.long	.LLST296
	.uleb128 0x38
	.long	.LVL729
	.long	0x6c06
	.uleb128 0x38
	.long	.LVL732
	.long	0x6a95
	.uleb128 0x38
	.long	.LVL733
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL734
	.long	0x6a7d
	.uleb128 0x38
	.long	.LVL735
	.long	0x419d
	.uleb128 0x38
	.long	.LVL736
	.long	0x6a1d
	.uleb128 0x3e
	.long	.LVL737
	.long	0x28d4
	.long	0x57a5
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x3e
	.long	.LVL738
	.long	0x20ba
	.long	0x57bd
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x4f
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL739
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL740
	.long	0x6aa1
	.byte	0
	.byte	0
	.uleb128 0x46
	.long	.LBB602
	.long	.LBE602-.LBB602
	.uleb128 0x45
	.long	0x28c0
	.long	.LLST297
	.uleb128 0x38
	.long	.LVL744
	.long	0x6c1e
	.uleb128 0x38
	.long	.LVL747
	.long	0x6c2a
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL725
	.long	0x6c36
	.uleb128 0x38
	.long	.LVL727
	.long	0x6c42
	.uleb128 0x38
	.long	.LVL751
	.long	0x6c12
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x5a1
	.long	0x5824
	.uleb128 0x15
	.long	0x1b4
	.byte	0x3
	.byte	0
	.uleb128 0x42
	.long	.LASF508
	.byte	0x1
	.value	0x166c
	.long	0x68
	.long	.LFB150
	.long	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x58a7
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x166c
	.long	0x737
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LASF509
	.byte	0x1
	.value	0x166e
	.long	0x58a7
	.long	.LLST298
	.uleb128 0x4b
	.long	0x46ee
	.long	.LBB605
	.long	.LBE605-.LBB605
	.byte	0x1
	.value	0x1677
	.long	0x588b
	.uleb128 0x3b
	.long	0x46ff
	.long	.LLST299
	.uleb128 0x50
	.long	.LVL756
	.long	0x28d4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL753
	.long	0x6a29
	.uleb128 0x38
	.long	.LVL757
	.long	0x6a89
	.uleb128 0x38
	.long	.LVL758
	.long	0x6aa1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x796
	.uleb128 0x26
	.long	.LASF510
	.byte	0x1
	.value	0x136c
	.byte	0x1
	.long	0x58f7
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x136c
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x136e
	.long	0x58f7
	.uleb128 0x2b
	.long	.LASF124
	.byte	0x1
	.value	0x136f
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF133
	.byte	0x1
	.value	0x1370
	.long	0xa9
	.uleb128 0x2b
	.long	.LASF216
	.byte	0x1
	.value	0x1370
	.long	0xa9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xfc9
	.uleb128 0x26
	.long	.LASF511
	.byte	0x1
	.value	0x1379
	.byte	0x1
	.long	0x593b
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0x1379
	.long	0x737
	.uleb128 0x2a
	.string	"evt"
	.byte	0x1
	.value	0x137b
	.long	0x593b
	.uleb128 0x2b
	.long	.LASF124
	.byte	0x1
	.value	0x137c
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF216
	.byte	0x1
	.value	0x137d
	.long	0xa9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xff1
	.uleb128 0x24
	.long	.LASF512
	.byte	0x1
	.byte	0xa7
	.long	0x124
	.byte	0x3
	.long	0x595d
	.uleb128 0x25
	.long	.LASF390
	.byte	0x1
	.byte	0xa7
	.long	0x1ddb
	.byte	0
	.uleb128 0x24
	.long	.LASF513
	.byte	0x1
	.byte	0x9e
	.long	0x124
	.byte	0x3
	.long	0x5984
	.uleb128 0x25
	.long	.LASF390
	.byte	0x1
	.byte	0x9e
	.long	0x1ddb
	.uleb128 0x5a
	.long	.LASF106
	.byte	0x1
	.byte	0xa0
	.long	0x124
	.byte	0
	.uleb128 0x42
	.long	.LASF514
	.byte	0x1
	.value	0x1684
	.long	0x68
	.long	.LFB151
	.long	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bdb
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x1684
	.long	0x737
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"hdr"
	.byte	0x1
	.value	0x1686
	.long	0x478e
	.long	.LLST300
	.uleb128 0x4b
	.long	0x58ad
	.long	.LBB619
	.long	.LBE619-.LBB619
	.byte	0x1
	.value	0x168e
	.long	0x5a39
	.uleb128 0x3b
	.long	0x58ba
	.long	.LLST301
	.uleb128 0x46
	.long	.LBB620
	.long	.LBE620-.LBB620
	.uleb128 0x45
	.long	0x58c6
	.long	.LLST302
	.uleb128 0x45
	.long	0x58d2
	.long	.LLST303
	.uleb128 0x45
	.long	0x58de
	.long	.LLST304
	.uleb128 0x45
	.long	0x58ea
	.long	.LLST305
	.uleb128 0x38
	.long	.LVL768
	.long	0x6b5e
	.uleb128 0x3e
	.long	.LVL769
	.long	0x20ba
	.long	0x5a2e
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL771
	.long	0x6a1d
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x58fd
	.long	.LBB621
	.long	.LBE621-.LBB621
	.byte	0x1
	.value	0x1691
	.long	0x5a9f
	.uleb128 0x3b
	.long	0x590a
	.long	.LLST306
	.uleb128 0x46
	.long	.LBB622
	.long	.LBE622-.LBB622
	.uleb128 0x45
	.long	0x5916
	.long	.LLST307
	.uleb128 0x45
	.long	0x5922
	.long	.LLST308
	.uleb128 0x45
	.long	0x592e
	.long	.LLST309
	.uleb128 0x38
	.long	.LVL776
	.long	0x6b5e
	.uleb128 0x50
	.long	.LVL777
	.long	0x20ba
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x20ec
	.long	.LBB623
	.long	.LBE623-.LBB623
	.byte	0x1
	.value	0x1694
	.long	0x5bbf
	.uleb128 0x3b
	.long	0x20f9
	.long	.LLST310
	.uleb128 0x46
	.long	.LBB624
	.long	.LBE624-.LBB624
	.uleb128 0x45
	.long	0x2105
	.long	.LLST311
	.uleb128 0x45
	.long	0x2111
	.long	.LLST312
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x398
	.uleb128 0x45
	.long	0x211c
	.long	.LLST313
	.uleb128 0x45
	.long	0x2128
	.long	.LLST314
	.uleb128 0x45
	.long	0x2134
	.long	.LLST315
	.uleb128 0x45
	.long	0x2140
	.long	.LLST316
	.uleb128 0x58
	.long	.Ldebug_ranges0+0x3b0
	.long	0x5b8f
	.uleb128 0x47
	.long	0x214d
	.uleb128 0x40
	.long	0x5941
	.long	.LBB627
	.long	.Ldebug_ranges0+0x3d8
	.byte	0x1
	.value	0xfe1
	.long	0x5b58
	.uleb128 0x3b
	.long	0x5951
	.long	.LLST317
	.uleb128 0x5b
	.long	0x595d
	.long	.LBB629
	.long	.LBE629-.LBB629
	.byte	0x1
	.byte	0xab
	.uleb128 0x3b
	.long	0x596d
	.long	.LLST318
	.uleb128 0x46
	.long	.LBB630
	.long	.LBE630-.LBB630
	.uleb128 0x45
	.long	0x5978
	.long	.LLST319
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL792
	.long	0x6c4e
	.uleb128 0x38
	.long	.LVL793
	.long	0x6c5a
	.uleb128 0x38
	.long	.LVL794
	.long	0x6a1d
	.uleb128 0x38
	.long	.LVL795
	.long	0x6a1d
	.uleb128 0x38
	.long	.LVL797
	.long	0x6c66
	.uleb128 0x38
	.long	.LVL801
	.long	0x6c72
	.byte	0
	.uleb128 0x38
	.long	.LVL782
	.long	0x6c66
	.uleb128 0x38
	.long	.LVL784
	.long	0x6b6a
	.uleb128 0x38
	.long	.LVL786
	.long	0x6c72
	.uleb128 0x38
	.long	.LVL788
	.long	0x6c72
	.uleb128 0x38
	.long	.LVL803
	.long	0x6b16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL761
	.long	0x6b5e
	.uleb128 0x38
	.long	.LVL807
	.long	0x6aa1
	.uleb128 0x38
	.long	.LVL809
	.long	0x6aa1
	.byte	0
	.uleb128 0x42
	.long	.LASF515
	.byte	0x1
	.value	0x169e
	.long	0x68
	.long	.LFB152
	.long	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0x5c06
	.uleb128 0x33
	.string	"drv"
	.byte	0x1
	.value	0x169e
	.long	0x1bb9
	.long	.LLST320
	.byte	0
	.uleb128 0x5c
	.long	.LASF516
	.byte	0x1
	.value	0x16de
	.long	0x68
	.long	.LFB156
	.long	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cf6
	.uleb128 0x33
	.string	"cb"
	.byte	0x1
	.value	0x16de
	.long	0x13ee
	.long	.LLST321
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x16e0
	.long	0x68
	.long	.LLST322
	.uleb128 0x4b
	.long	0x280d
	.long	.LBB639
	.long	.LBE639-.LBB639
	.byte	0x1
	.value	0x16e5
	.long	0x5c89
	.uleb128 0x3b
	.long	0x281e
	.long	.LLST323
	.uleb128 0x3b
	.long	0x282a
	.long	.LLST324
	.uleb128 0x46
	.long	.LBB640
	.long	.LBE640-.LBB640
	.uleb128 0x45
	.long	0x2836
	.long	.LLST325
	.uleb128 0x53
	.long	0x2842
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LVL815
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL816
	.long	0x6c7e
	.uleb128 0x38
	.long	.LVL817
	.long	0x6c8a
	.uleb128 0x38
	.long	.LVL818
	.long	0x6a71
	.uleb128 0x38
	.long	.LVL819
	.long	0x6c96
	.uleb128 0x38
	.long	.LVL820
	.long	0x6c96
	.uleb128 0x38
	.long	.LVL821
	.long	0x6c96
	.uleb128 0x38
	.long	.LVL822
	.long	0x6c96
	.uleb128 0x38
	.long	.LVL823
	.long	0x6a71
	.uleb128 0x38
	.long	.LVL824
	.long	0x6ca2
	.uleb128 0x38
	.long	.LVL825
	.long	0x6ca2
	.uleb128 0x51
	.long	.LVL827
	.long	0x24ea
	.uleb128 0x38
	.long	.LVL828
	.long	0x6cae
	.byte	0
	.uleb128 0x42
	.long	.LASF517
	.byte	0x1
	.value	0x1716
	.long	0x153b
	.long	.LFB157
	.long	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x5d43
	.uleb128 0x43
	.long	.LASF229
	.byte	0x1
	.value	0x1716
	.long	0x14cd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.long	.LBB641
	.long	.LBE641-.LBB641
	.uleb128 0x39
	.long	.LASF325
	.byte	0x1
	.value	0x1719
	.long	0x1d2e
	.long	.LLST326
	.uleb128 0x38
	.long	.LVL834
	.long	0x6cba
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LASF518
	.byte	0x1
	.value	0x1723
	.long	0x153b
	.byte	0x1
	.long	0x5d61
	.uleb128 0x29
	.long	.LASF441
	.byte	0x1
	.value	0x1723
	.long	0x5d61
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x5d67
	.uleb128 0xf
	.long	0x145a
	.uleb128 0x42
	.long	.LASF519
	.byte	0x1
	.value	0x1751
	.long	0x68
	.long	.LFB160
	.long	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f3e
	.uleb128 0x43
	.long	.LASF441
	.byte	0x1
	.value	0x1751
	.long	0x5d61
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"ad"
	.byte	0x1
	.value	0x1752
	.long	0x3313
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x43
	.long	.LASF465
	.byte	0x1
	.value	0x1752
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x35
	.string	"sd"
	.byte	0x1
	.value	0x1753
	.long	0x3313
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x43
	.long	.LASF520
	.byte	0x1
	.value	0x1753
	.long	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x48
	.long	.LASF521
	.byte	0x1
	.value	0x1755
	.long	0xb2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -51
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x1756
	.long	0x737
	.long	.LLST327
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x1757
	.long	0x68
	.long	.LLST328
	.uleb128 0x40
	.long	0x5d43
	.long	.LBB646
	.long	.Ldebug_ranges0+0x3f0
	.byte	0x1
	.value	0x1758
	.long	0x5e1c
	.uleb128 0x3b
	.long	0x5d54
	.long	.LLST329
	.byte	0
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB650
	.long	.LBE650-.LBB650
	.byte	0x1
	.value	0x17a5
	.long	0x5e5f
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST330
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST331
	.uleb128 0x46
	.long	.LBB651
	.long	.LBE651-.LBB651
	.uleb128 0x45
	.long	0x2076
	.long	.LLST332
	.uleb128 0x38
	.long	.LVL856
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL841
	.long	0x2938
	.long	0x5e7b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3e
	.long	.LVL842
	.long	0x3277
	.long	0x5e9d
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.value	0x2008
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.byte	0
	.uleb128 0x3e
	.long	.LVL844
	.long	0x2938
	.long	0x5eb9
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x3e
	.long	.LVL845
	.long	0x2294
	.long	0x5ed0
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+1
	.byte	0
	.uleb128 0x38
	.long	.LVL846
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL849
	.long	0x6ad1
	.uleb128 0x38
	.long	.LVL850
	.long	0x2cd9
	.uleb128 0x3e
	.long	.LVL852
	.long	0x2311
	.long	0x5efe
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x38
	.long	.LVL858
	.long	0x6ae9
	.uleb128 0x3e
	.long	.LVL860
	.long	0x3277
	.long	0x5f2b
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.value	0x2009
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x4
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 16
	.byte	0x6
	.byte	0
	.uleb128 0x38
	.long	.LVL862
	.long	0x2294
	.uleb128 0x38
	.long	.LVL864
	.long	0x2ed3
	.byte	0
	.uleb128 0x42
	.long	.LASF522
	.byte	0x1
	.value	0x17a9
	.long	0x68
	.long	.LFB161
	.long	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x601c
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x17ab
	.long	0x68
	.long	.LLST333
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB652
	.long	.LBE652-.LBB652
	.byte	0x1
	.value	0x17ac
	.long	0x5fab
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST334
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST335
	.uleb128 0x46
	.long	.LBB653
	.long	.LBE653-.LBB653
	.uleb128 0x45
	.long	0x203e
	.long	.LLST336
	.uleb128 0x38
	.long	.LVL871
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL872
	.long	0x2938
	.long	0x5fc7
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x3e
	.long	.LVL873
	.long	0x2311
	.long	0x5fda
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x3e
	.long	.LVL876
	.long	0x2938
	.long	0x5ff6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.long	.LVL877
	.long	0x2938
	.long	0x6012
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x39
	.byte	0
	.uleb128 0x38
	.long	.LVL878
	.long	0x2ed3
	.byte	0
	.uleb128 0x28
	.long	.LASF523
	.byte	0x1
	.value	0x17c0
	.long	0x153b
	.byte	0x1
	.long	0x603a
	.uleb128 0x29
	.long	.LASF441
	.byte	0x1
	.value	0x17c0
	.long	0x603a
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x6040
	.uleb128 0xf
	.long	0x14de
	.uleb128 0x28
	.long	.LASF524
	.byte	0x1
	.value	0x1385
	.long	0x68
	.byte	0x1
	.long	0x609f
	.uleb128 0x29
	.long	.LASF164
	.byte	0x1
	.value	0x1385
	.long	0xa9
	.uleb128 0x29
	.long	.LASF165
	.byte	0x1
	.value	0x1385
	.long	0xb4
	.uleb128 0x29
	.long	.LASF166
	.byte	0x1
	.value	0x1385
	.long	0xb4
	.uleb128 0x2b
	.long	.LASF521
	.byte	0x1
	.value	0x1387
	.long	0xbce
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x1388
	.long	0x737
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x1389
	.long	0x68
	.byte	0
	.uleb128 0x42
	.long	.LASF525
	.byte	0x1
	.value	0x17e1
	.long	0x68
	.long	.LFB163
	.long	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x63b0
	.uleb128 0x43
	.long	.LASF441
	.byte	0x1
	.value	0x17e1
	.long	0x603a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"cb"
	.byte	0x1
	.value	0x17e1
	.long	0x63b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x17e3
	.long	0x68
	.long	.LLST337
	.uleb128 0x4b
	.long	0x601c
	.long	.LBB672
	.long	.LBE672-.LBB672
	.byte	0x1
	.value	0x17e4
	.long	0x6104
	.uleb128 0x3b
	.long	0x602d
	.long	.LLST338
	.byte	0
	.uleb128 0x4b
	.long	0x280d
	.long	.LBB674
	.long	.LBE674-.LBB674
	.byte	0x1
	.value	0x17e7
	.long	0x614e
	.uleb128 0x3b
	.long	0x281e
	.long	.LLST339
	.uleb128 0x3b
	.long	0x282a
	.long	.LLST340
	.uleb128 0x46
	.long	.LBB675
	.long	.LBE675-.LBB675
	.uleb128 0x45
	.long	0x2836
	.long	.LLST341
	.uleb128 0x53
	.long	0x2842
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LVL883
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2019
	.long	.LBB676
	.long	.Ldebug_ranges0+0x408
	.byte	0x1
	.value	0x17ed
	.long	0x618d
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST342
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST343
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x408
	.uleb128 0x45
	.long	0x203e
	.long	.LLST344
	.uleb128 0x38
	.long	.LVL890
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB680
	.long	.LBE680-.LBB680
	.byte	0x1
	.value	0x17f2
	.long	0x61d0
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST345
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST346
	.uleb128 0x46
	.long	.LBB681
	.long	.LBE681-.LBB681
	.uleb128 0x45
	.long	0x2076
	.long	.LLST347
	.uleb128 0x38
	.long	.LVL895
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x2019
	.long	.LBB682
	.long	.Ldebug_ranges0+0x420
	.byte	0x1
	.value	0x17f4
	.long	0x620f
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST348
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST349
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x420
	.uleb128 0x45
	.long	0x203e
	.long	.LLST350
	.uleb128 0x38
	.long	.LVL898
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x40
	.long	0x6045
	.long	.LBB685
	.long	.Ldebug_ranges0+0x438
	.byte	0x1
	.value	0x17f6
	.long	0x6334
	.uleb128 0x3b
	.long	0x606e
	.long	.LLST351
	.uleb128 0x3b
	.long	0x6062
	.long	.LLST352
	.uleb128 0x3b
	.long	0x6056
	.long	.LLST353
	.uleb128 0x4e
	.long	.Ldebug_ranges0+0x438
	.uleb128 0x53
	.long	0x607a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x45
	.long	0x6086
	.long	.LLST354
	.uleb128 0x45
	.long	0x6092
	.long	.LLST355
	.uleb128 0x4b
	.long	0x2051
	.long	.LBB687
	.long	.LBE687-.LBB687
	.byte	0x1
	.value	0x13b0
	.long	0x62a0
	.uleb128 0x3b
	.long	0x206a
	.long	.LLST356
	.uleb128 0x3b
	.long	0x205e
	.long	.LLST357
	.uleb128 0x46
	.long	.LBB688
	.long	.LBE688-.LBB688
	.uleb128 0x45
	.long	0x2076
	.long	.LLST358
	.uleb128 0x38
	.long	.LVL914
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB689
	.long	.LBE689-.LBB689
	.byte	0x1
	.value	0x13b2
	.long	0x62e3
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST359
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST360
	.uleb128 0x46
	.long	.LBB690
	.long	.LBE690-.LBB690
	.uleb128 0x45
	.long	0x203e
	.long	.LLST361
	.uleb128 0x38
	.long	.LVL917
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL902
	.long	0x2938
	.long	0x62ff
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x38
	.long	.LVL903
	.long	0x2ed3
	.uleb128 0x38
	.long	.LVL905
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL908
	.long	0x6ad1
	.uleb128 0x38
	.long	.LVL909
	.long	0x41d5
	.uleb128 0x50
	.long	.LVL910
	.long	0x22ca
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB696
	.long	.LBE696-.LBB696
	.byte	0x1
	.value	0x17f8
	.long	0x6377
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST362
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST363
	.uleb128 0x46
	.long	.LBB697
	.long	.LBE697-.LBB697
	.uleb128 0x45
	.long	0x203e
	.long	.LLST364
	.uleb128 0x38
	.long	.LVL923
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x3e
	.long	.LVL884
	.long	0x2938
	.long	0x6393
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x3e
	.long	.LVL885
	.long	0x22ca
	.long	0x63a6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL892
	.long	0x6ae9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x14a7
	.uleb128 0x42
	.long	.LASF526
	.byte	0x1
	.value	0x17fe
	.long	0x68
	.long	.LFB164
	.long	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x63f6
	.uleb128 0x3e
	.long	.LVL924
	.long	0x2997
	.long	0x63ec
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x38
	.long	.LVL925
	.long	0x2410
	.byte	0
	.uleb128 0x26
	.long	.LASF527
	.byte	0x1
	.value	0xbd8
	.byte	0x3
	.long	0x641c
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xbd8
	.long	0x737
	.uleb128 0x29
	.long	.LASF93
	.byte	0x1
	.value	0xbd8
	.long	0x16df
	.byte	0
	.uleb128 0x42
	.long	.LASF528
	.byte	0x1
	.value	0x180a
	.long	0x737
	.long	.LFB165
	.long	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x64ae
	.uleb128 0x43
	.long	.LASF93
	.byte	0x1
	.value	0x180a
	.long	0x16df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x43
	.long	.LASF55
	.byte	0x1
	.value	0x180a
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x180c
	.long	0x737
	.long	.LLST365
	.uleb128 0x4b
	.long	0x63f6
	.long	.LBB700
	.long	.LBE700-.LBB700
	.byte	0x1
	.value	0x1812
	.long	0x649b
	.uleb128 0x3b
	.long	0x640f
	.long	.LLST366
	.uleb128 0x3b
	.long	0x6403
	.long	.LLST367
	.uleb128 0x50
	.long	.LVL931
	.long	0x28d4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL927
	.long	0x6a41
	.uleb128 0x38
	.long	.LVL930
	.long	0x6a4d
	.byte	0
	.uleb128 0x42
	.long	.LASF529
	.byte	0x1
	.value	0x1816
	.long	0x737
	.long	.LFB166
	.long	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x6553
	.uleb128 0x43
	.long	.LASF55
	.byte	0x1
	.value	0x1816
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x1818
	.long	0x737
	.long	.LLST368
	.uleb128 0x37
	.string	"key"
	.byte	0x1
	.value	0x1819
	.long	0x6f
	.long	.LLST369
	.uleb128 0x4b
	.long	0x63f6
	.long	.LBB704
	.long	.LBE704-.LBB704
	.byte	0x1
	.value	0x1822
	.long	0x652e
	.uleb128 0x3b
	.long	0x640f
	.long	.LLST370
	.uleb128 0x3b
	.long	0x6403
	.long	.LLST371
	.uleb128 0x50
	.long	.LVL939
	.long	0x28d4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL935
	.long	0x6c66
	.uleb128 0x38
	.long	.LVL937
	.long	0x6c72
	.uleb128 0x38
	.long	.LVL941
	.long	0x6a4d
	.uleb128 0x38
	.long	.LVL942
	.long	0x641c
	.byte	0
	.uleb128 0x5d
	.long	.LASF531
	.byte	0x1
	.value	0x1829
	.long	.LFB167
	.long	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x6579
	.uleb128 0x43
	.long	.LASF530
	.byte	0x1
	.value	0x1829
	.long	0x6579
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x657f
	.uleb128 0xf
	.long	0x17e5
	.uleb128 0x5e
	.long	.LASF623
	.byte	0x1
	.value	0x182d
	.long	0x68
	.byte	0x1
	.uleb128 0x5f
	.long	.LASF532
	.byte	0x1
	.value	0x1841
	.long	0x68
	.long	.LFB169
	.long	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0x6648
	.uleb128 0x36
	.long	.LASF229
	.byte	0x1
	.value	0x1841
	.long	0x14cd
	.long	.LLST372
	.uleb128 0x4b
	.long	0x6584
	.long	.LBB710
	.long	.LBE710-.LBB710
	.byte	0x1
	.value	0x1844
	.long	0x65e2
	.uleb128 0x38
	.long	.LVL946
	.long	0x6cc6
	.uleb128 0x38
	.long	.LVL947
	.long	0x6cd2
	.byte	0
	.uleb128 0x3c
	.long	.LBB712
	.long	.LBE712-.LBB712
	.long	0x661b
	.uleb128 0x39
	.long	.LASF413
	.byte	0x1
	.value	0x1847
	.long	0x15f6
	.long	.LLST373
	.uleb128 0x38
	.long	.LVL949
	.long	0x6cde
	.uleb128 0x38
	.long	.LVL952
	.long	0x6a35
	.uleb128 0x38
	.long	.LVL953
	.long	0x6b16
	.byte	0
	.uleb128 0x46
	.long	.LBB713
	.long	.LBE713-.LBB713
	.uleb128 0x39
	.long	.LASF325
	.byte	0x1
	.value	0x1854
	.long	0x1d2e
	.long	.LLST374
	.uleb128 0x38
	.long	.LVL954
	.long	0x6cba
	.uleb128 0x38
	.long	.LVL955
	.long	0x6cea
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF533
	.byte	0x1
	.value	0x185e
	.long	0xb4
	.long	.LFB170
	.long	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0x6683
	.uleb128 0x35
	.string	"buf"
	.byte	0x1
	.value	0x185e
	.long	0x737
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x50
	.long	.LVL959
	.long	0x28d4
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x5c
	.long	.LASF534
	.byte	0x1
	.value	0x1862
	.long	0x68
	.long	.LFB171
	.long	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0x67a5
	.uleb128 0x43
	.long	.LASF535
	.byte	0x1
	.value	0x1862
	.long	0x1bfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.string	"cb"
	.byte	0x1
	.value	0x1864
	.long	0x1bfd
	.long	.LLST375
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x1865
	.long	0x68
	.long	.LLST376
	.uleb128 0x4b
	.long	0x280d
	.long	.LBB720
	.long	.LBE720-.LBB720
	.byte	0x1
	.value	0x186d
	.long	0x6715
	.uleb128 0x3b
	.long	0x281e
	.long	.LLST377
	.uleb128 0x3b
	.long	0x282a
	.long	.LLST378
	.uleb128 0x46
	.long	.LBB721
	.long	.LBE721-.LBB721
	.uleb128 0x45
	.long	0x2836
	.long	.LLST379
	.uleb128 0x53
	.long	0x2842
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x38
	.long	.LVL963
	.long	0x6afe
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB722
	.long	.LBE722-.LBB722
	.byte	0x1
	.value	0x1870
	.long	0x6758
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST380
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST381
	.uleb128 0x46
	.long	.LBB723
	.long	.LBE723-.LBB723
	.uleb128 0x45
	.long	0x203e
	.long	.LLST382
	.uleb128 0x38
	.long	.LVL966
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x4b
	.long	0x2019
	.long	.LBB724
	.long	.LBE724-.LBB724
	.byte	0x1
	.value	0x1878
	.long	0x679b
	.uleb128 0x3b
	.long	0x2032
	.long	.LLST383
	.uleb128 0x3b
	.long	0x2026
	.long	.LLST384
	.uleb128 0x46
	.long	.LBB725
	.long	.LBE725-.LBB725
	.uleb128 0x45
	.long	0x203e
	.long	.LLST385
	.uleb128 0x38
	.long	.LVL972
	.long	0x6a05
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LVL967
	.long	0x2cd9
	.byte	0
	.uleb128 0x42
	.long	.LASF536
	.byte	0x1
	.value	0x1887
	.long	0x142f
	.long	.LFB172
	.long	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0x67d8
	.uleb128 0x50
	.long	.LVL977
	.long	0x2938
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x42
	.long	.LASF537
	.byte	0x1
	.value	0x1890
	.long	0x68
	.long	.LFB173
	.long	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.long	0x6892
	.uleb128 0x43
	.long	.LASF538
	.byte	0x1
	.value	0x1890
	.long	0x142f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"cb"
	.byte	0x1
	.value	0x1890
	.long	0x1c03
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"cp"
	.byte	0x1
	.value	0x1892
	.long	0x6892
	.long	.LLST386
	.uleb128 0x37
	.string	"buf"
	.byte	0x1
	.value	0x1893
	.long	0x737
	.long	.LLST387
	.uleb128 0x37
	.string	"err"
	.byte	0x1
	.value	0x1894
	.long	0x68
	.long	.LLST388
	.uleb128 0x3e
	.long	.LVL979
	.long	0x2938
	.long	0x685a
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x3e
	.long	.LVL980
	.long	0x2938
	.long	0x6876
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev+108
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x38
	.long	.LVL981
	.long	0x2c23
	.uleb128 0x38
	.long	.LVL984
	.long	0x6a59
	.uleb128 0x38
	.long	.LVL985
	.long	0x2cd9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xe56
	.uleb128 0x42
	.long	.LASF539
	.byte	0x1
	.value	0x18b0
	.long	0x68
	.long	.LFB174
	.long	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.long	0x68dc
	.uleb128 0x35
	.string	"oob"
	.byte	0x1
	.value	0x18b0
	.long	0x68dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x50
	.long	.LVL988
	.long	0x28ff
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x3f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x1520
	.uleb128 0x48
	.long	.LASF540
	.byte	0x1
	.value	0xecf
	.long	0x38a
	.uleb128 0x5
	.byte	0x3
	.long	rx_thread_data
	.uleb128 0x14
	.long	0x275
	.long	0x6905
	.uleb128 0x60
	.long	0x1b4
	.value	0x1ff
	.byte	0
	.uleb128 0x48
	.long	.LASF541
	.byte	0x1
	.value	0xed0
	.long	0x68f4
	.uleb128 0x5
	.byte	0x3
	.long	rx_thread_stack
	.uleb128 0x48
	.long	.LASF542
	.byte	0x1
	.value	0xed1
	.long	0x38a
	.uleb128 0x5
	.byte	0x3
	.long	tx_thread_data
	.uleb128 0x14
	.long	0x275
	.long	0x6939
	.uleb128 0x15
	.long	0x1b4
	.byte	0xc7
	.byte	0
	.uleb128 0x48
	.long	.LASF543
	.byte	0x1
	.value	0xed2
	.long	0x6929
	.uleb128 0x5
	.byte	0x3
	.long	tx_thread_stack
	.uleb128 0x48
	.long	.LASF544
	.byte	0x1
	.value	0xedc
	.long	0x13ee
	.uleb128 0x5
	.byte	0x3
	.long	ready_cb
	.uleb128 0x48
	.long	.LASF545
	.byte	0x1
	.value	0xede
	.long	0x63b0
	.uleb128 0x5
	.byte	0x3
	.long	scan_dev_found_cb
	.uleb128 0x48
	.long	.LASF546
	.byte	0x1
	.value	0xedf
	.long	0xa06
	.uleb128 0x5
	.byte	0x3
	.long	pub_key
	.uleb128 0x48
	.long	.LASF547
	.byte	0x1
	.value	0xee0
	.long	0x1bfd
	.uleb128 0x5
	.byte	0x3
	.long	pub_key_cb
	.uleb128 0x48
	.long	.LASF548
	.byte	0x1
	.value	0xee1
	.long	0x1c03
	.uleb128 0x5
	.byte	0x3
	.long	dh_key_cb
	.uleb128 0x61
	.long	.LASF549
	.byte	0x1
	.value	0x222
	.long	0x6f
	.uleb128 0x62
	.long	.LASF353
	.byte	0x1
	.value	0xed4
	.long	0x1aac
	.uleb128 0x5
	.byte	0x3
	.long	bt_dev
	.uleb128 0x62
	.long	.LASF305
	.byte	0x1
	.value	0xedd
	.long	0x6579
	.uleb128 0x5
	.byte	0x3
	.long	bt_storage
	.uleb128 0x61
	.long	.LASF550
	.byte	0x1
	.value	0xeed
	.long	0x796
	.uleb128 0x61
	.long	.LASF551
	.byte	0x1
	.value	0xeee
	.long	0x796
	.uleb128 0x61
	.long	.LASF552
	.byte	0x1
	.value	0xeef
	.long	0x2e5
	.uleb128 0x63
	.long	.LASF553
	.long	.LASF553
	.byte	0x1
	.value	0x349
	.uleb128 0x63
	.long	.LASF554
	.long	.LASF554
	.byte	0x1
	.value	0x34e
	.uleb128 0x63
	.long	.LASF555
	.long	.LASF555
	.byte	0x1
	.value	0x383
	.uleb128 0x63
	.long	.LASF556
	.long	.LASF556
	.byte	0x1
	.value	0x319
	.uleb128 0x63
	.long	.LASF557
	.long	.LASF557
	.byte	0x1
	.value	0x57c
	.uleb128 0x63
	.long	.LASF558
	.long	.LASF558
	.byte	0x1
	.value	0xb9b
	.uleb128 0x63
	.long	.LASF559
	.long	.LASF559
	.byte	0x1
	.value	0x57e
	.uleb128 0x63
	.long	.LASF560
	.long	.LASF560
	.byte	0x1
	.value	0x586
	.uleb128 0x63
	.long	.LASF561
	.long	.LASF561
	.byte	0x1
	.value	0x535
	.uleb128 0x63
	.long	.LASF562
	.long	.LASF562
	.byte	0x1
	.value	0x20f
	.uleb128 0x63
	.long	.LASF563
	.long	.LASF563
	.byte	0x1
	.value	0x317
	.uleb128 0x63
	.long	.LASF564
	.long	.LASF564
	.byte	0x1
	.value	0x58b
	.uleb128 0x63
	.long	.LASF565
	.long	.LASF565
	.byte	0x1
	.value	0x589
	.uleb128 0x63
	.long	.LASF566
	.long	.LASF566
	.byte	0x1
	.value	0x318
	.uleb128 0x63
	.long	.LASF567
	.long	.LASF567
	.byte	0x1
	.value	0x58a
	.uleb128 0x63
	.long	.LASF568
	.long	.LASF568
	.byte	0x1
	.value	0x31a
	.uleb128 0x63
	.long	.LASF569
	.long	.LASF569
	.byte	0x1
	.value	0x212
	.uleb128 0x63
	.long	.LASF570
	.long	.LASF570
	.byte	0x1
	.value	0x2b3
	.uleb128 0x63
	.long	.LASF571
	.long	.LASF571
	.byte	0x1
	.value	0x536
	.uleb128 0x63
	.long	.LASF572
	.long	.LASF572
	.byte	0x1
	.value	0xb0e
	.uleb128 0x64
	.long	.LASF624
	.long	.LASF624
	.uleb128 0x63
	.long	.LASF573
	.long	.LASF573
	.byte	0x1
	.value	0x538
	.uleb128 0x63
	.long	.LASF574
	.long	.LASF574
	.byte	0x1
	.value	0x34c
	.uleb128 0x63
	.long	.LASF575
	.long	.LASF575
	.byte	0x1
	.value	0xdbd
	.uleb128 0x63
	.long	.LASF576
	.long	.LASF576
	.byte	0x1
	.value	0xb7a
	.uleb128 0x63
	.long	.LASF577
	.long	.LASF577
	.byte	0x1
	.value	0xd03
	.uleb128 0x63
	.long	.LASF578
	.long	.LASF578
	.byte	0x1
	.value	0x34a
	.uleb128 0x63
	.long	.LASF579
	.long	.LASF579
	.byte	0x1
	.value	0xdca
	.uleb128 0x63
	.long	.LASF580
	.long	.LASF580
	.byte	0x1
	.value	0xdbf
	.uleb128 0x63
	.long	.LASF581
	.long	.LASF581
	.byte	0x1
	.value	0xdae
	.uleb128 0x63
	.long	.LASF582
	.long	.LASF582
	.byte	0x1
	.value	0x541
	.uleb128 0x63
	.long	.LASF583
	.long	.LASF583
	.byte	0x1
	.value	0xdb9
	.uleb128 0x63
	.long	.LASF584
	.long	.LASF584
	.byte	0x1
	.value	0xdbb
	.uleb128 0x63
	.long	.LASF585
	.long	.LASF585
	.byte	0x1
	.value	0xda5
	.uleb128 0x63
	.long	.LASF586
	.long	.LASF586
	.byte	0x1
	.value	0xe5a
	.uleb128 0x63
	.long	.LASF587
	.long	.LASF587
	.byte	0x1
	.value	0xec3
	.uleb128 0x63
	.long	.LASF588
	.long	.LASF588
	.byte	0x1
	.value	0xdc8
	.uleb128 0x63
	.long	.LASF589
	.long	.LASF589
	.byte	0x1
	.value	0xd07
	.uleb128 0x63
	.long	.LASF590
	.long	.LASF590
	.byte	0x1
	.value	0xdc2
	.uleb128 0x63
	.long	.LASF591
	.long	.LASF591
	.byte	0x1
	.value	0xdc4
	.uleb128 0x63
	.long	.LASF592
	.long	.LASF592
	.byte	0x1
	.value	0xec5
	.uleb128 0x63
	.long	.LASF593
	.long	.LASF593
	.byte	0x1
	.value	0xd06
	.uleb128 0x63
	.long	.LASF594
	.long	.LASF594
	.byte	0x1
	.value	0x54b
	.uleb128 0x63
	.long	.LASF595
	.long	.LASF595
	.byte	0x1
	.value	0x542
	.uleb128 0x63
	.long	.LASF596
	.long	.LASF596
	.byte	0x1
	.value	0x57f
	.uleb128 0x63
	.long	.LASF597
	.long	.LASF597
	.byte	0x1
	.value	0x33e
	.uleb128 0x63
	.long	.LASF598
	.long	.LASF598
	.byte	0x1
	.value	0xdce
	.uleb128 0x63
	.long	.LASF599
	.long	.LASF599
	.byte	0x1
	.value	0xdcd
	.uleb128 0x63
	.long	.LASF600
	.long	.LASF600
	.byte	0x1
	.value	0xdcc
	.uleb128 0x63
	.long	.LASF601
	.long	.LASF601
	.byte	0x1
	.value	0x3aa
	.uleb128 0x63
	.long	.LASF602
	.long	.LASF602
	.byte	0x1
	.value	0x307
	.uleb128 0x63
	.long	.LASF603
	.long	.LASF603
	.byte	0x1
	.value	0xdcb
	.uleb128 0x63
	.long	.LASF604
	.long	.LASF604
	.byte	0x1
	.value	0x33f
	.uleb128 0x63
	.long	.LASF605
	.long	.LASF605
	.byte	0x1
	.value	0x340
	.uleb128 0x63
	.long	.LASF606
	.long	.LASF606
	.byte	0x1
	.value	0x37b
	.uleb128 0x63
	.long	.LASF607
	.long	.LASF607
	.byte	0x1
	.value	0x370
	.uleb128 0x63
	.long	.LASF608
	.long	.LASF608
	.byte	0x1
	.value	0x305
	.uleb128 0x63
	.long	.LASF609
	.long	.LASF609
	.byte	0x1
	.value	0x33a
	.uleb128 0x63
	.long	.LASF610
	.long	.LASF610
	.byte	0x1
	.value	0x37c
	.uleb128 0x63
	.long	.LASF611
	.long	.LASF611
	.byte	0x1
	.value	0xd08
	.uleb128 0x63
	.long	.LASF612
	.long	.LASF612
	.byte	0x1
	.value	0xdb8
	.uleb128 0x63
	.long	.LASF613
	.long	.LASF613
	.byte	0x1
	.value	0xd0b
	.uleb128 0x63
	.long	.LASF614
	.long	.LASF614
	.byte	0x1
	.value	0xb7b
	.uleb128 0x63
	.long	.LASF615
	.long	.LASF615
	.byte	0x1
	.value	0xd0a
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
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
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x17
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
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x48
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
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x54
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.uleb128 0x5b
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
	.uleb128 0x5c
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
	.uleb128 0x5d
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
	.uleb128 0x5e
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
	.uleb128 0x5f
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x60
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x61
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
	.uleb128 0x62
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
	.uleb128 0x63
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
	.uleb128 0x64
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
	.long	.LFE64
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE37
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x52
	.long	.LVL4
	.long	.LVL7
	.value	0x1
	.byte	0x53
	.long	.LVL7
	.long	.LFE37
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL9
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LFE38
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x52
	.long	.LVL10
	.long	.LVL13
	.value	0x1
	.byte	0x51
	.long	.LVL13
	.long	.LFE38
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
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
.LLST7:
	.long	.LVL14
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19-1
	.value	0x4
	.byte	0x70
	.sleb128 -108
	.byte	0x9f
	.long	.LVL19-1
	.long	.LFE94
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x50
	.long	.LVL21
	.long	.LFE119
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	.LVL22-1
	.long	.LFE119
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL20
	.long	.LVL22-1
	.value	0x1
	.byte	0x51
	.long	.LVL22-1
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	.LVL28
	.long	.LFE119
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL23
	.long	.LVL27
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL23
	.long	.LVL27
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	.LVL33
	.long	.LFE190
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL34
	.long	.LVL35
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	.LVL35
	.long	.LFE49
	.value	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0
	.uleb128 0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL34
	.long	.LVL38
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL34
	.long	.LVL37
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST19:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL37
	.long	.LVL38
	.value	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL38
	.long	.LVL42
	.value	0x3
	.byte	0x71
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST23:
	.long	.LVL38
	.long	.LVL41
	.value	0x3
	.byte	0x71
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x52
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST25:
	.long	.LVL41
	.long	.LVL42
	.value	0x3
	.byte	0x71
	.sleb128 6
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	.LVL53
	.long	.LFE79
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL54
	.long	.LVL59
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL75
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST29:
	.long	.LVL54
	.long	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL76
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST30:
	.long	.LVL68
	.long	.LVL70
	.value	0x3
	.byte	0x9
	.byte	0xfb
	.byte	0x9f
	.long	.LVL70
	.long	.LVL72
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL72
	.long	.LVL75
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST31:
	.long	.LVL77
	.long	.LVL80-1
	.value	0x1
	.byte	0x50
	.long	.LVL80-1
	.long	.LVL89
	.value	0x1
	.byte	0x53
	.long	.LVL89
	.long	.LFE84
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL83
	.long	.LVL84
	.value	0x1
	.byte	0x50
	.long	.LVL84
	.long	.LVL88
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST33:
	.long	.LVL86
	.long	.LVL88
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST34:
	.long	.LVL77
	.long	.LVL78
	.value	0x6
	.byte	0x3
	.long	bt_dev+8
	.byte	0x9f
	.long	.LVL78
	.long	.LVL79
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL79
	.long	.LVL80-1
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL80-1
	.long	.LVL81
	.value	0x6
	.byte	0x3
	.long	bt_dev+8
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL77
	.long	.LVL80-1
	.value	0x1
	.byte	0x50
	.long	.LVL80-1
	.long	.LVL81
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST36:
	.long	.LVL87
	.long	.LVL88
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST38:
	.long	.LVL87
	.long	.LVL88
	.value	0x6
	.byte	0x3
	.long	bt_dev+8
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST40:
	.long	.LVL94
	.long	.LVL95-1
	.value	0x1
	.byte	0x50
	.long	.LVL95-1
	.long	.LVL100
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL100
	.long	.LVL104
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL105
	.long	.LFE108
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL94
	.long	.LVL95-1
	.value	0x1
	.byte	0x52
	.long	.LVL95-1
	.long	.LVL101
	.value	0x1
	.byte	0x56
	.long	.LVL101
	.long	.LVL104
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x56
	.long	.LVL105
	.long	.LFE108
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL98
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL99-1
	.long	.LVL102
	.value	0x1
	.byte	0x57
	.long	.LVL102
	.long	.LVL103-1
	.value	0x3
	.byte	0x72
	.sleb128 -23
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL96
	.long	.LVL104
	.value	0x1
	.byte	0x53
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST44:
	.long	.LVL108
	.long	.LVL109-1
	.value	0x1
	.byte	0x50
	.long	.LVL109-1
	.long	.LFE107
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL109
	.long	.LVL110
	.value	0x1
	.byte	0x50
	.long	.LVL110
	.long	.LVL113
	.value	0x1
	.byte	0x53
	.long	.LVL113
	.long	.LVL114
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST46:
	.long	.LVL115
	.long	.LVL116-1
	.value	0x1
	.byte	0x50
	.long	.LVL116-1
	.long	.LFE86
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x50
	.long	.LVL120
	.long	.LVL131
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST48:
	.long	.LVL116
	.long	.LVL117
	.value	0x1
	.byte	0x50
	.long	.LVL117
	.long	.LVL123
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST49:
	.long	.LVL122
	.long	.LVL124
	.value	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LVL131
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST50:
	.long	.LVL125
	.long	.LVL127
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL125
	.long	.LVL128
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL125
	.long	.LVL126
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL127-1
	.long	.LVL128
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL125
	.long	.LVL127
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST54:
	.long	.LVL128
	.long	.LVL130
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL128
	.long	.LVL129
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL129
	.long	.LVL130-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL130-1
	.long	.LVL130
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL128
	.long	.LVL130
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL132
	.long	.LVL133-1
	.value	0x1
	.byte	0x50
	.long	.LVL133-1
	.long	.LFE83
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL133
	.long	.LVL134
	.value	0x1
	.byte	0x50
	.long	.LVL134
	.long	.LVL137
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST59:
	.long	.LVL136
	.long	.LVL138
	.value	0x1
	.byte	0x50
	.long	.LVL138
	.long	.LVL145
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST60:
	.long	.LVL139
	.long	.LVL141
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST61:
	.long	.LVL139
	.long	.LVL142
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
.LLST62:
	.long	.LVL139
	.long	.LVL140
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL140
	.long	.LVL141-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL141-1
	.long	.LVL142
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL139
	.long	.LVL141
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST64:
	.long	.LVL142
	.long	.LVL144
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL142
	.long	.LVL143
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL144-1
	.long	.LVL144
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST66:
	.long	.LVL142
	.long	.LVL144
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST67:
	.long	.LVL146
	.long	.LVL147-1
	.value	0x1
	.byte	0x50
	.long	.LVL147-1
	.long	.LVL161
	.value	0x2
	.byte	0x75
	.sleb128 -36
	.long	.LVL161
	.long	.LFE159
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST68:
	.long	.LVL146
	.long	.LVL147-1
	.value	0x1
	.byte	0x52
	.long	.LVL147-1
	.long	.LVL154
	.value	0x1
	.byte	0x56
	.long	.LVL154
	.long	.LVL159
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	.LVL159
	.long	.LVL160
	.value	0x1
	.byte	0x56
	.long	.LVL160
	.long	.LFE159
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST69:
	.long	.LVL146
	.long	.LVL147-1
	.value	0x1
	.byte	0x51
	.long	.LVL147-1
	.long	.LVL161
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	.LVL161
	.long	.LFE159
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST70:
	.long	.LVL151
	.long	.LVL152
	.value	0x1
	.byte	0x50
	.long	.LVL152
	.long	.LVL159
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST71:
	.long	.LVL148
	.long	.LVL149
	.value	0x1
	.byte	0x50
	.long	.LVL149
	.long	.LVL159
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL159
	.long	.LVL160
	.value	0x1
	.byte	0x50
	.long	.LVL160
	.long	.LVL161
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL161
	.long	.LFE159
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST72:
	.long	.LVL153
	.long	.LVL154
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL154
	.long	.LVL156
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	.LVL157
	.long	.LVL159
	.value	0x2
	.byte	0x75
	.sleb128 -32
	.long	0
	.long	0
.LLST73:
	.long	.LVL162
	.long	.LVL163
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL163
	.long	.LVL164
	.value	0x1
	.byte	0x53
	.long	.LVL164
	.long	.LFE101
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST74:
	.long	.LVL167
	.long	.LVL170-1
	.value	0x1
	.byte	0x50
	.long	.LVL170-1
	.long	.LVL175
	.value	0x1
	.byte	0x56
	.long	.LVL175
	.long	.LVL176
	.value	0x1
	.byte	0x50
	.long	.LVL176
	.long	.LVL178
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST75:
	.long	.LVL168
	.long	.LVL170
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.long	0
	.long	0
.LLST76:
	.long	.LVL168
	.long	.LVL169
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL169
	.long	.LVL170-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL170-1
	.long	.LVL170
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST77:
	.long	.LVL168
	.long	.LVL170
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.long	0
	.long	0
.LLST78:
	.long	.LVL170
	.long	.LVL173
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST79:
	.long	.LVL170
	.long	.LVL171
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172
	.value	0x1
	.byte	0x53
	.long	.LVL172
	.long	.LVL173-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL173-1
	.long	.LVL173
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	0
	.long	0
.LLST80:
	.long	.LVL170
	.long	.LVL173
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL175
	.long	.LVL195
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST82:
	.long	.LVL178
	.long	.LVL179
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL179
	.long	.LVL195
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST83:
	.long	.LVL182
	.long	.LVL183
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL183
	.long	.LVL195
	.value	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST84:
	.long	.LVL186
	.long	.LVL187
	.value	0x1
	.byte	0x50
	.long	.LVL189
	.long	.LVL190
	.value	0x1
	.byte	0x50
	.long	.LVL192
	.long	.LVL195
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST85:
	.long	.LVL198
	.long	.LVL201-1
	.value	0x1
	.byte	0x50
	.long	.LVL201-1
	.long	.LVL204
	.value	0x1
	.byte	0x53
	.long	.LVL204
	.long	.LVL205-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL206
	.long	.LVL207
	.value	0x1
	.byte	0x50
	.long	.LVL207
	.long	.LVL217
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST86:
	.long	.LVL199
	.long	.LVL201
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.long	0
	.long	0
.LLST87:
	.long	.LVL199
	.long	.LVL200
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL200
	.long	.LVL201-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL201-1
	.long	.LVL201
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST88:
	.long	.LVL199
	.long	.LVL201
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.long	0
	.long	0
.LLST89:
	.long	.LVL201
	.long	.LVL203
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL201
	.long	.LVL202
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	.LVL202
	.long	.LVL203-1
	.value	0x1
	.byte	0x50
	.long	.LVL203-1
	.long	.LVL203
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL201
	.long	.LVL203
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL206
	.long	.LVL231
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST93:
	.long	.LVL224
	.long	.LVL225-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST94:
	.long	.LVL209
	.long	.LVL210
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL210
	.long	.LVL231
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST95:
	.long	.LVL213
	.long	.LVL214
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	.LVL214
	.long	.LVL231
	.value	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL222
	.long	.LVL223
	.value	0x1
	.byte	0x50
	.long	.LVL223
	.long	.LVL224-1
	.value	0x1
	.byte	0x51
	.long	.LVL224-1
	.long	.LVL228
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST97:
	.long	.LVL217
	.long	.LVL218
	.value	0x1
	.byte	0x50
	.long	.LVL218
	.long	.LVL220
	.value	0x1
	.byte	0x53
	.long	.LVL227
	.long	.LVL228
	.value	0x1
	.byte	0x50
	.long	.LVL228
	.long	.LVL231
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST98:
	.long	.LVL240
	.long	.LVL241
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST99:
	.long	.LVL243
	.long	.LVL244
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST100:
	.long	.LVL246
	.long	.LVL247
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST101:
	.long	.LVL369
	.long	.LVL370
	.value	0x1
	.byte	0x50
	.long	.LVL370
	.long	.LVL372-1
	.value	0x1
	.byte	0x52
	.long	.LVL372-1
	.long	.LVL374
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	0
	.long	0
.LLST102:
	.long	.LVL248
	.long	.LVL250
	.value	0x1
	.byte	0x50
	.long	.LVL250
	.long	.LVL252-1
	.value	0x1
	.byte	0x52
	.long	.LVL254
	.long	.LVL256
	.value	0x1
	.byte	0x50
	.long	.LVL256
	.long	.LVL257
	.value	0x1
	.byte	0x52
	.long	.LVL260
	.long	.LVL261
	.value	0x1
	.byte	0x50
	.long	.LVL264
	.long	.LVL265
	.value	0x1
	.byte	0x50
	.long	.LVL265
	.long	.LVL266
	.value	0x1
	.byte	0x52
	.long	.LVL270
	.long	.LVL272
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST103:
	.long	.LVL249
	.long	.LVL252-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST104:
	.long	.LVL249
	.long	.LVL251
	.value	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.long	0
	.long	0
.LLST105:
	.long	.LVL255
	.long	.LVL259-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST106:
	.long	.LVL255
	.long	.LVL258
	.value	0x2
	.byte	0x71
	.sleb128 8
	.long	0
	.long	0
.LLST107:
	.long	.LVL261
	.long	.LVL263-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST108:
	.long	.LVL261
	.long	.LVL262
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST109:
	.long	.LVL265
	.long	.LVL269-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST110:
	.long	.LVL265
	.long	.LVL267
	.value	0x2
	.byte	0x70
	.sleb128 8
	.long	0
	.long	0
.LLST111:
	.long	.LVL265
	.long	.LVL267
	.value	0x6
	.byte	0x70
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST112:
	.long	.LVL265
	.long	.LVL268
	.value	0x6
	.byte	0x3
	.long	bt_dev+1
	.byte	0x9f
	.long	0
	.long	0
.LLST113:
	.long	.LVL271
	.long	.LVL274-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST114:
	.long	.LVL271
	.long	.LVL273
	.value	0x2
	.byte	0x72
	.sleb128 8
	.long	0
	.long	0
.LLST115:
	.long	.LVL296
	.long	.LVL297-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST116:
	.long	.LVL292
	.long	.LVL293
	.value	0x1
	.byte	0x50
	.long	.LVL294
	.long	.LVL295
	.value	0x1
	.byte	0x50
	.long	.LVL295
	.long	.LVL298
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST117:
	.long	.LVL276
	.long	.LVL278
	.value	0x1
	.byte	0x50
	.long	.LVL278
	.long	.LVL279
	.value	0x1
	.byte	0x52
	.long	.LVL282
	.long	.LVL283
	.value	0x1
	.byte	0x50
	.long	.LVL283
	.long	.LVL284
	.value	0x1
	.byte	0x52
	.long	.LVL297
	.long	.LVL298
	.value	0x1
	.byte	0x50
	.long	.LVL299
	.long	.LVL301
	.value	0x1
	.byte	0x50
	.long	.LVL301
	.long	.LVL302
	.value	0x1
	.byte	0x52
	.long	.LVL306
	.long	.LVL307
	.value	0x1
	.byte	0x50
	.long	.LVL307
	.long	.LVL308
	.value	0x1
	.byte	0x52
	.long	.LVL316
	.long	.LVL317
	.value	0x1
	.byte	0x50
	.long	.LVL326
	.long	.LVL327
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST118:
	.long	.LVL277
	.long	.LVL281-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST119:
	.long	.LVL277
	.long	.LVL280
	.value	0x2
	.byte	0x71
	.sleb128 8
	.long	0
	.long	0
.LLST120:
	.long	.LVL284
	.long	.LVL285
	.value	0x1
	.byte	0x50
	.long	.LVL285
	.long	.LVL289-1
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	0
	.long	0
.LLST121:
	.long	.LVL284
	.long	.LVL287
	.value	0x1
	.byte	0x52
	.long	.LVL287
	.long	.LVL288
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST122:
	.long	.LVL286
	.long	.LVL287
	.value	0x15
	.byte	0x72
	.sleb128 3
	.byte	0x94
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL287
	.long	.LVL288
	.value	0x1b
	.byte	0x76
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x3
	.byte	0x94
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST123:
	.long	.LVL300
	.long	.LVL305-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST124:
	.long	.LVL300
	.long	.LVL304
	.value	0x2
	.byte	0x71
	.sleb128 8
	.long	0
	.long	0
.LLST125:
	.long	.LVL300
	.long	.LVL303
	.value	0x6
	.byte	0x71
	.sleb128 8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST126:
	.long	.LVL315
	.long	.LVL316-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST127:
	.long	.LVL308
	.long	.LVL311-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST128:
	.long	.LVL313
	.long	.LVL314
	.value	0x1
	.byte	0x50
	.long	.LVL314
	.long	.LVL315-1
	.value	0x1
	.byte	0x51
	.long	.LVL315-1
	.long	.LVL317
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	0
	.long	0
.LLST129:
	.long	.LVL309
	.long	.LVL317
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST130:
	.long	.LVL310
	.long	.LVL317
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST131:
	.long	.LVL321
	.long	.LVL323
	.value	0x1
	.byte	0x50
	.long	.LVL323
	.long	.LVL324-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST132:
	.long	.LVL319
	.long	.LVL320
	.value	0x1
	.byte	0x50
	.long	.LVL320
	.long	.LVL326
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST133:
	.long	.LVL317
	.long	.LVL321
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL321
	.long	.LVL322
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0xf
	.long	0
	.long	0
.LLST134:
	.long	.LVL345
	.long	.LVL346
	.value	0x1
	.byte	0x50
	.long	.LVL346
	.long	.LVL348-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST135:
	.long	.LVL330
	.long	.LVL331
	.value	0x1
	.byte	0x50
	.long	.LVL342
	.long	.LVL343
	.value	0x1
	.byte	0x50
	.long	.LVL343
	.long	.LVL350
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST136:
	.long	.LVL328
	.long	.LVL331
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL342
	.long	.LVL345
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL345
	.long	.LVL347
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0x2000000002008810
	.long	.LVL347
	.long	.LVL348-1
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST137:
	.long	.LVL332
	.long	.LVL334
	.value	0x1
	.byte	0x50
	.long	.LVL334
	.long	.LVL335
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST138:
	.long	.LVL333
	.long	.LVL340-1
	.value	0x2
	.byte	0x73
	.sleb128 0
	.long	0
	.long	0
.LLST139:
	.long	.LVL333
	.long	.LVL337
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST140:
	.long	.LVL336
	.long	.LVL338
	.value	0x15
	.byte	0x70
	.sleb128 0
	.byte	0x12
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL338
	.long	.LVL339
	.value	0x1d
	.byte	0x73
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.byte	0x94
	.byte	0x2
	.byte	0x12
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x3a
	.byte	0x16
	.byte	0x14
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x2d
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST141:
	.long	.LVL351
	.long	.LVL354
	.value	0x6
	.byte	0x3
	.long	bt_dev
	.byte	0x9f
	.long	0
	.long	0
.LLST142:
	.long	.LVL351
	.long	.LVL352
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	.LVL352
	.long	.LVL353-1
	.value	0x1
	.byte	0x50
	.long	.LVL353-1
	.long	.LVL354
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	0
	.long	0
.LLST143:
	.long	.LVL361
	.long	.LVL362
	.value	0x1
	.byte	0x50
	.long	.LVL362
	.long	.LVL363-1
	.value	0x1
	.byte	0x52
	.long	.LVL364
	.long	.LVL367-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST144:
	.long	.LVL359
	.long	.LVL360
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST145:
	.long	.LVL365
	.long	.LVL367
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST146:
	.long	.LVL365
	.long	.LVL366
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL366
	.long	.LVL367-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL367-1
	.long	.LVL367
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST147:
	.long	.LVL365
	.long	.LVL367
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST148:
	.long	.LVL355
	.long	.LVL358
	.value	0x6
	.byte	0x3
	.long	bt_dev
	.byte	0x9f
	.long	0
	.long	0
.LLST149:
	.long	.LVL355
	.long	.LVL356
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	.LVL356
	.long	.LVL357-1
	.value	0x1
	.byte	0x50
	.long	.LVL357-1
	.long	.LVL358
	.value	0x3
	.byte	0x77
	.sleb128 -7
	.byte	0x9f
	.long	0
	.long	0
.LLST150:
	.long	.LVL371
	.long	.LVL372
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST151:
	.long	.LVL371
	.long	.LVL372-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL372-1
	.long	.LVL372
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST152:
	.long	.LVL371
	.long	.LVL372
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST153:
	.long	.LVL377
	.long	.LVL378-1
	.value	0x1
	.byte	0x50
	.long	.LVL378
	.long	.LFE154
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST154:
	.long	.LVL381
	.long	.LVL383
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL383
	.long	.LVL384
	.value	0x1
	.byte	0x50
	.long	.LVL384
	.long	.LVL392
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST155:
	.long	.LVL386
	.long	.LVL387
	.value	0x1
	.byte	0x50
	.long	.LVL387
	.long	.LVL389
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST156:
	.long	.LVL396
	.long	.LVL397-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST157:
	.long	.LVL394
	.long	.LVL395
	.value	0x1
	.byte	0x50
	.long	.LVL395
	.long	.LVL398
	.value	0x1
	.byte	0x53
	.long	.LVL398
	.long	.LVL399
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST158:
	.long	.LVL403
	.long	.LVL406-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST159:
	.long	.LVL410
	.long	.LVL411-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST160:
	.long	.LVL408
	.long	.LVL409
	.value	0x1
	.byte	0x50
	.long	.LVL409
	.long	.LVL410-1
	.value	0x1
	.byte	0x52
	.long	.LVL410-1
	.long	.LVL412
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	0
	.long	0
.LLST161:
	.long	.LVL404
	.long	.LVL412
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST162:
	.long	.LVL405
	.long	.LVL412
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST163:
	.long	.LVL401
	.long	.LVL402
	.value	0x1
	.byte	0x50
	.long	.LVL411
	.long	.LVL412
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST164:
	.long	.LVL414
	.long	.LVL415
	.value	0x1
	.byte	0x50
	.long	.LVL415
	.long	.LVL447
	.value	0x1
	.byte	0x56
	.long	.LVL447
	.long	.LFE96
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST165:
	.long	.LVL416
	.long	.LVL417
	.value	0x1
	.byte	0x50
	.long	.LVL417
	.long	.LVL418-1
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL418-1
	.long	.LVL466
	.value	0x2
	.byte	0x75
	.sleb128 -58
	.long	.LVL466
	.long	.LFE96
	.value	0x3
	.byte	0x91
	.sleb128 -66
	.long	0
	.long	0
.LLST166:
	.long	.LVL421
	.long	.LVL422
	.value	0x1
	.byte	0x50
	.long	.LVL422
	.long	.LVL425
	.value	0x1
	.byte	0x53
	.long	.LVL431
	.long	.LVL433
	.value	0x1
	.byte	0x50
	.long	.LVL433
	.long	.LVL437
	.value	0x1
	.byte	0x53
	.long	.LVL437
	.long	.LVL438
	.value	0x1
	.byte	0x50
	.long	.LVL438
	.long	.LVL465
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST167:
	.long	.LVL453
	.long	.LVL455
	.value	0x1
	.byte	0x50
	.long	.LVL457
	.long	.LVL459
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST168:
	.long	.LVL427
	.long	.LVL428
	.value	0x3
	.byte	0x76
	.sleb128 17
	.byte	0x9f
	.long	0
	.long	0
.LLST169:
	.long	.LVL427
	.long	.LVL428
	.value	0x3
	.byte	0x75
	.sleb128 -41
	.byte	0x9f
	.long	0
	.long	0
.LLST170:
	.long	.LVL432
	.long	.LVL435
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	0
	.long	0
.LLST171:
	.long	.LVL432
	.long	.LVL434
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL434
	.long	.LVL435-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL435-1
	.long	.LVL435
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST172:
	.long	.LVL432
	.long	.LVL435
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST173:
	.long	.LVL445
	.long	.LVL452
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST174:
	.long	.LVL449
	.long	.LVL450
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST175:
	.long	.LVL447
	.long	.LVL448
	.value	0x1
	.byte	0x50
	.long	.LVL448
	.long	.LVL451
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST176:
	.long	.LVL454
	.long	.LVL455
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST177:
	.long	.LVL454
	.long	.LVL455
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST178:
	.long	.LVL454
	.long	.LVL455
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST179:
	.long	.LVL458
	.long	.LVL460
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST180:
	.long	.LVL458
	.long	.LVL460
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST181:
	.long	.LVL458
	.long	.LVL460
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST182:
	.long	.LVL467
	.long	.LVL468-1
	.value	0x1
	.byte	0x50
	.long	.LVL468-1
	.long	.LFE102
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST183:
	.long	.LVL467
	.long	.LVL468-1
	.value	0x1
	.byte	0x52
	.long	.LVL468-1
	.long	.LFE102
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST184:
	.long	.LVL470
	.long	.LVL471-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST185:
	.long	.LVL468
	.long	.LVL469
	.value	0x1
	.byte	0x50
	.long	.LVL469
	.long	.LVL472
	.value	0x1
	.byte	0x53
	.long	.LVL472
	.long	.LVL473
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST186:
	.long	.LVL475
	.long	.LVL476-1
	.value	0x1
	.byte	0x50
	.long	.LVL476-1
	.long	.LFE155
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST187:
	.long	.LVL475
	.long	.LVL476-1
	.value	0x1
	.byte	0x50
	.long	.LVL476-1
	.long	.LVL476
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST188:
	.long	.LVL477
	.long	.LVL493
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST189:
	.long	.LVL478
	.long	.LVL480
	.value	0x1
	.byte	0x52
	.long	.LVL480
	.long	.LVL481
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST190:
	.long	.LVL479
	.long	.LVL488
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST191:
	.long	.LVL479
	.long	.LVL486
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST192:
	.long	.LVL486
	.long	.LVL487
	.value	0x1
	.byte	0x50
	.long	.LVL487
	.long	.LVL493
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST193:
	.long	.LVL479
	.long	.LVL488
	.value	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST194:
	.long	.LVL493
	.long	.LVL719
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL722
	.long	.LFE155
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST195:
	.long	.LVL494
	.long	.LVL500
	.value	0x1
	.byte	0x53
	.long	.LVL513
	.long	.LVL518
	.value	0x1
	.byte	0x53
	.long	.LVL522
	.long	.LVL527
	.value	0x1
	.byte	0x53
	.long	.LVL536
	.long	.LVL537
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST196:
	.long	.LVL496
	.long	.LVL497
	.value	0x1
	.byte	0x50
	.long	.LVL497
	.long	.LVL513
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST197:
	.long	.LVL496
	.long	.LVL502
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST198:
	.long	.LVL496
	.long	.LVL498
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL498
	.long	.LVL499-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST199:
	.long	.LVL500
	.long	.LVL501
	.value	0x1
	.byte	0x50
	.long	.LVL501
	.long	.LVL513
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST200:
	.long	.LVL514
	.long	.LVL515
	.value	0x1
	.byte	0x50
	.long	.LVL515
	.long	.LVL522
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST201:
	.long	.LVL514
	.long	.LVL522
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST202:
	.long	.LVL514
	.long	.LVL516
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL516
	.long	.LVL517-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST203:
	.long	.LVL518
	.long	.LVL519
	.value	0x1
	.byte	0x50
	.long	.LVL519
	.long	.LVL520
	.value	0x1
	.byte	0x53
	.long	.LVL520
	.long	.LVL521
	.value	0x1
	.byte	0x50
	.long	.LVL521
	.long	.LVL522
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST204:
	.long	.LVL523
	.long	.LVL524
	.value	0x1
	.byte	0x50
	.long	.LVL524
	.long	.LVL530
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST205:
	.long	.LVL523
	.long	.LVL530
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST206:
	.long	.LVL527
	.long	.LVL528
	.value	0x1
	.byte	0x50
	.long	.LVL528
	.long	.LVL530
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST207:
	.long	.LVL523
	.long	.LVL525
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL525
	.long	.LVL526-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST208:
	.long	.LVL531
	.long	.LVL532
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST209:
	.long	.LVL536
	.long	.LVL650
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL652
	.long	.LVL670
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL671
	.long	.LVL719
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL722
	.long	.LFE155
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST210:
	.long	.LVL537
	.long	.LVL539
	.value	0x1
	.byte	0x53
	.long	.LVL553
	.long	.LVL554
	.value	0x1
	.byte	0x53
	.long	.LVL556
	.long	.LVL561
	.value	0x1
	.byte	0x53
	.long	.LVL564
	.long	.LVL569
	.value	0x1
	.byte	0x53
	.long	.LVL581
	.long	.LVL586
	.value	0x1
	.byte	0x53
	.long	.LVL601
	.long	.LVL604
	.value	0x1
	.byte	0x53
	.long	.LVL607
	.long	.LVL610
	.value	0x1
	.byte	0x53
	.long	.LVL618
	.long	.LVL623
	.value	0x1
	.byte	0x53
	.long	.LVL652
	.long	.LVL653
	.value	0x1
	.byte	0x53
	.long	.LVL664
	.long	.LVL670
	.value	0x1
	.byte	0x53
	.long	.LVL671
	.long	.LVL674
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST211:
	.long	.LVL540
	.long	.LVL541
	.value	0x1
	.byte	0x50
	.long	.LVL541
	.long	.LVL553
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST212:
	.long	.LVL540
	.long	.LVL542
	.value	0x1
	.byte	0x52
	.long	.LVL542
	.long	.LVL543
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	.LVL543
	.long	.LVL544-1
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST213:
	.long	.LVL546
	.long	.LVL548
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST214:
	.long	.LVL547
	.long	.LVL548
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST215:
	.long	.LVL545
	.long	.LVL546
	.value	0x3
	.byte	0x77
	.sleb128 -6
	.byte	0x9f
	.long	0
	.long	0
.LLST216:
	.long	.LVL545
	.long	.LVL546
	.value	0x3
	.byte	0x75
	.sleb128 -63
	.byte	0x9f
	.long	0
	.long	0
.LLST217:
	.long	.LVL549
	.long	.LVL550
	.value	0x4
	.byte	0x75
	.sleb128 -69
	.byte	0x9f
	.long	0
	.long	0
.LLST218:
	.long	.LVL549
	.long	.LVL550
	.value	0x3
	.byte	0x75
	.sleb128 -57
	.byte	0x9f
	.long	0
	.long	0
.LLST219:
	.long	.LVL557
	.long	.LVL558
	.value	0x1
	.byte	0x50
	.long	.LVL558
	.long	.LVL564
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST220:
	.long	.LVL557
	.long	.LVL564
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST221:
	.long	.LVL561
	.long	.LVL562
	.value	0x1
	.byte	0x50
	.long	.LVL562
	.long	.LVL564
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST222:
	.long	.LVL557
	.long	.LVL559
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL559
	.long	.LVL560-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST223:
	.long	.LVL565
	.long	.LVL566
	.value	0x1
	.byte	0x50
	.long	.LVL566
	.long	.LVL579
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST224:
	.long	.LVL565
	.long	.LVL579
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST225:
	.long	.LVL565
	.long	.LVL567
	.value	0x2
	.byte	0x76
	.sleb128 1
	.long	.LVL567
	.long	.LVL568-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST226:
	.long	.LVL569
	.long	.LVL570
	.value	0x1
	.byte	0x50
	.long	.LVL570
	.long	.LVL579
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST227:
	.long	.LVL571
	.long	.LVL573
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST228:
	.long	.LVL572
	.long	.LVL574
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	0
	.long	0
.LLST229:
	.long	.LVL572
	.long	.LVL574
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST230:
	.long	.LVL572
	.long	.LVL574
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.long	0
	.long	0
.LLST231:
	.long	.LVL575
	.long	.LVL577
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST232:
	.long	.LVL576
	.long	.LVL578
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST233:
	.long	.LVL576
	.long	.LVL578
	.value	0x3
	.byte	0x73
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST234:
	.long	.LVL576
	.long	.LVL578
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST235:
	.long	.LVL582
	.long	.LVL601
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST236:
	.long	.LVL582
	.long	.LVL584
	.value	0x1
	.byte	0x50
	.long	.LVL584
	.long	.LVL585-1
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST237:
	.long	.LVL586
	.long	.LVL587
	.value	0x1
	.byte	0x50
	.long	.LVL587
	.long	.LVL589
	.value	0x1
	.byte	0x53
	.long	.LVL589
	.long	.LVL590
	.value	0x1
	.byte	0x50
	.long	.LVL590
	.long	.LVL601
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST238:
	.long	.LVL583
	.long	.LVL595
	.value	0x1
	.byte	0x56
	.long	.LVL595
	.long	.LVL601
	.value	0x3
	.byte	0x75
	.sleb128 -112
	.long	0
	.long	0
.LLST239:
	.long	.LVL593
	.long	.LVL601
	.value	0x4
	.byte	0x75
	.sleb128 -94
	.byte	0x9f
	.long	0
	.long	0
.LLST240:
	.long	.LVL593
	.long	.LVL601
	.value	0x3
	.byte	0x75
	.sleb128 -112
	.long	0
	.long	0
.LLST241:
	.long	.LVL598
	.long	.LVL599
	.value	0x1
	.byte	0x50
	.long	.LVL599
	.long	.LVL600
	.value	0x1
	.byte	0x52
	.long	.LVL600
	.long	.LVL601
	.value	0x3
	.byte	0x77
	.sleb128 -14
	.byte	0x9f
	.long	0
	.long	0
.LLST242:
	.long	.LVL595
	.long	.LVL596
	.value	0x1
	.byte	0x50
	.long	.LVL596
	.long	.LVL601
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST243:
	.long	.LVL601
	.long	.LVL607
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST244:
	.long	.LVL601
	.long	.LVL602
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST245:
	.long	.LVL601
	.long	.LVL602
	.value	0x7
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.long	.LVL602
	.long	.LVL603-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST246:
	.long	.LVL604
	.long	.LVL605
	.value	0x1
	.byte	0x50
	.long	.LVL605
	.long	.LVL607
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST247:
	.long	.LVL607
	.long	.LVL616
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST248:
	.long	.LVL607
	.long	.LVL608
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST249:
	.long	.LVL607
	.long	.LVL608
	.value	0x9
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.long	.LVL608
	.long	.LVL609-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST250:
	.long	.LVL610
	.long	.LVL611
	.value	0x1
	.byte	0x50
	.long	.LVL611
	.long	.LVL616
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST251:
	.long	.LVL613
	.long	.LVL615
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST252:
	.long	.LVL614
	.long	.LVL616
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST253:
	.long	.LVL614
	.long	.LVL616
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST254:
	.long	.LVL614
	.long	.LVL616
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST255:
	.long	.LVL619
	.long	.LVL620
	.value	0x1
	.byte	0x50
	.long	.LVL620
	.long	.LVL648
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	.LVL722
	.long	.LFE155
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST256:
	.long	.LVL619
	.long	.LVL628
	.value	0x1
	.byte	0x56
	.long	.LVL629
	.long	.LVL635
	.value	0x1
	.byte	0x56
	.long	.LVL636
	.long	.LVL642
	.value	0x1
	.byte	0x56
	.long	.LVL644
	.long	.LVL648
	.value	0x1
	.byte	0x56
	.long	.LVL722
	.long	.LFE155
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST257:
	.long	.LVL646
	.long	.LVL647
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST258:
	.long	.LVL623
	.long	.LVL624
	.value	0x1
	.byte	0x50
	.long	.LVL624
	.long	.LVL648
	.value	0x1
	.byte	0x53
	.long	.LVL722
	.long	.LFE155
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST259:
	.long	.LVL619
	.long	.LVL621
	.value	0x2
	.byte	0x76
	.sleb128 0
	.long	.LVL621
	.long	.LVL622-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST260:
	.long	.LVL627
	.long	.LVL629
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST261:
	.long	.LVL633
	.long	.LVL634
	.value	0x1
	.byte	0x50
	.long	.LVL634
	.long	.LVL636
	.value	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST262:
	.long	.LVL640
	.long	.LVL641
	.value	0x1
	.byte	0x50
	.long	.LVL641
	.long	.LVL643
	.value	0x3
	.byte	0x70
	.sleb128 -2
	.byte	0x9f
	.long	0
	.long	0
.LLST263:
	.long	.LVL638
	.long	.LVL639
	.value	0x1
	.byte	0x50
	.long	.LVL639
	.long	.LVL640-1
	.value	0x1
	.byte	0x52
	.long	.LVL640-1
	.long	.LVL643
	.value	0x3
	.byte	0x75
	.sleb128 -112
	.long	0
	.long	0
.LLST264:
	.long	.LVL653
	.long	.LVL654
	.value	0x1
	.byte	0x50
	.long	.LVL654
	.long	.LVL664
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST265:
	.long	.LVL653
	.long	.LVL664
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST266:
	.long	.LVL661
	.long	.LVL664
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST267:
	.long	.LVL653
	.long	.LVL656
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST268:
	.long	.LVL653
	.long	.LVL655
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL655
	.long	.LVL656-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL656-1
	.long	.LVL656
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST269:
	.long	.LVL653
	.long	.LVL656
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST270:
	.long	.LVL657
	.long	.LVL660
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST271:
	.long	.LVL657
	.long	.LVL658
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL658
	.long	.LVL659-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL659-1
	.long	.LVL660
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST272:
	.long	.LVL657
	.long	.LVL660
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST273:
	.long	.LVL665
	.long	.LVL666
	.value	0x1
	.byte	0x50
	.long	.LVL666
	.long	.LVL670
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST274:
	.long	.LVL665
	.long	.LVL667
	.value	0x1
	.byte	0x51
	.long	.LVL667
	.long	.LVL668
	.value	0x6
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.long	0
	.long	0
.LLST275:
	.long	.LVL671
	.long	.LVL719
	.value	0x3
	.byte	0x75
	.sleb128 -108
	.long	0
	.long	0
.LLST276:
	.long	.LVL672
	.long	.LVL673
	.value	0x1
	.byte	0x50
	.long	.LVL673
	.long	.LVL674
	.value	0x3
	.byte	0x75
	.sleb128 -121
	.long	.LVL674
	.long	.LVL718
	.value	0x8
	.byte	0x75
	.sleb128 -121
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST277:
	.long	.LVL675
	.long	.LVL676
	.value	0x1
	.byte	0x50
	.long	.LVL676
	.long	.LVL719
	.value	0x3
	.byte	0x75
	.sleb128 -112
	.long	0
	.long	0
.LLST278:
	.long	.LVL678
	.long	.LVL690
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST279:
	.long	.LVL688
	.long	.LVL689
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+21412
	.sleb128 0
	.long	0
	.long	0
.LLST280:
	.long	.LVL688
	.long	.LVL689
	.value	0x7
	.byte	0x75
	.sleb128 -108
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.long	0
	.long	0
.LLST281:
	.long	.LVL685
	.long	.LVL687
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+21412
	.sleb128 0
	.long	0
	.long	0
.LLST282:
	.long	.LVL685
	.long	.LVL687
	.value	0x3
	.byte	0x75
	.sleb128 -116
	.long	0
	.long	0
.LLST283:
	.long	.LVL680
	.long	.LVL683
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST284:
	.long	.LVL681
	.long	.LVL682
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST285:
	.long	.LVL690
	.long	.LVL695
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST286:
	.long	.LVL690
	.long	.LVL691
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL691
	.long	.LVL716
	.value	0x7
	.byte	0x75
	.sleb128 -112
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	0
	.long	0
.LLST287:
	.long	.LVL690
	.long	.LVL693
	.value	0x4
	.byte	0x75
	.sleb128 -74
	.byte	0x9f
	.long	.LVL693
	.long	.LVL694-1
	.value	0x1
	.byte	0x50
	.long	.LVL694-1
	.long	.LVL716
	.value	0x4
	.byte	0x75
	.sleb128 -74
	.byte	0x9f
	.long	0
	.long	0
.LLST288:
	.long	.LVL695
	.long	.LVL696
	.value	0x1
	.byte	0x50
	.long	.LVL696
	.long	.LVL716
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST289:
	.long	.LVL702
	.long	.LVL710
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST290:
	.long	.LVL704
	.long	.LVL705
	.value	0x1
	.byte	0x50
	.long	.LVL705
	.long	.LVL710
	.value	0x3
	.byte	0x75
	.sleb128 -120
	.long	0
	.long	0
.LLST291:
	.long	.LVL707
	.long	.LVL708
	.value	0x1
	.byte	0x50
	.long	.LVL708
	.long	.LVL710
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST292:
	.long	.LVL724
	.long	.LVL726
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL726
	.long	.LVL728
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST293:
	.long	.LVL727
	.long	.LVL728
	.value	0x6
	.byte	0x3
	.long	events.5664
	.byte	0x9f
	.long	.LVL728
	.long	.LVL750
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST294:
	.long	.LVL727
	.long	.LVL750
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST295:
	.long	.LVL730
	.long	.LVL731
	.value	0x1
	.byte	0x50
	.long	.LVL731
	.long	.LVL741
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST296:
	.long	.LVL735
	.long	.LVL736-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST297:
	.long	.LVL742
	.long	.LVL743
	.value	0x6
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x4c
	.byte	0x1c
	.byte	0x9f
	.long	.LVL743
	.long	.LVL744-1
	.value	0x1
	.byte	0x50
	.long	.LVL745
	.long	.LVL746
	.value	0x7
	.byte	0x76
	.sleb128 16
	.byte	0x6
	.byte	0x8
	.byte	0x28
	.byte	0x1c
	.byte	0x9f
	.long	.LVL746
	.long	.LVL747-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST298:
	.long	.LVL753
	.long	.LVL755
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST299:
	.long	.LVL754
	.long	.LVL756
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST300:
	.long	.LVL760
	.long	.LVL764
	.value	0x1
	.byte	0x56
	.long	.LVL772
	.long	.LVL774
	.value	0x1
	.byte	0x56
	.long	.LVL778
	.long	.LVL779
	.value	0x1
	.byte	0x56
	.long	.LVL806
	.long	.LVL808
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST301:
	.long	.LVL762
	.long	.LVL770
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST302:
	.long	.LVL763
	.long	.LVL766
	.value	0x1
	.byte	0x50
	.long	.LVL766
	.long	.LVL767
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.long	0
	.long	0
.LLST303:
	.long	.LVL764
	.long	.LVL770
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST304:
	.long	.LVL768
	.long	.LVL769-1
	.value	0x4
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0x6
	.long	0
	.long	0
.LLST305:
	.long	.LVL765
	.long	.LVL770
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST306:
	.long	.LVL772
	.long	.LVL778
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST307:
	.long	.LVL773
	.long	.LVL778
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST308:
	.long	.LVL774
	.long	.LVL778
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST309:
	.long	.LVL775
	.long	.LVL776-1
	.value	0x1
	.byte	0x50
	.long	.LVL776-1
	.long	.LVL778
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST310:
	.long	.LVL779
	.long	.LVL806
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST311:
	.long	.LVL779
	.long	.LVL806
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST312:
	.long	.LVL779
	.long	.LVL804
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL805
	.long	.LVL806
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST313:
	.long	.LVL780
	.long	.LVL785
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST314:
	.long	.LVL781
	.long	.LVL782-1
	.value	0x1
	.byte	0x50
	.long	.LVL782-1
	.long	.LVL790
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL796
	.long	.LVL800
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	.LVL805
	.long	.LVL806
	.value	0x3
	.byte	0x77
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST315:
	.long	.LVL785
	.long	.LVL786-1
	.value	0x1
	.byte	0x50
	.long	.LVL786-1
	.long	.LVL787
	.value	0x1
	.byte	0x56
	.long	.LVL787
	.long	.LVL788-1
	.value	0x1
	.byte	0x50
	.long	.LVL788-1
	.long	.LVL806
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST316:
	.long	.LVL783
	.long	.LVL784-1
	.value	0x1
	.byte	0x50
	.long	.LVL784-1
	.long	.LVL789
	.value	0x1
	.byte	0x57
	.long	.LVL797
	.long	.LVL801-1
	.value	0x1
	.byte	0x50
	.long	.LVL805
	.long	.LVL806
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST317:
	.long	.LVL797
	.long	.LVL799
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	.LVL805
	.long	.LVL806
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST318:
	.long	.LVL805
	.long	.LVL806
	.value	0x3
	.byte	0x76
	.sleb128 20
	.byte	0x9f
	.long	0
	.long	0
.LLST319:
	.long	.LVL805
	.long	.LVL806
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST320:
	.long	.LVL810
	.long	.LVL811
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL811
	.long	.LFE152
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST321:
	.long	.LVL812
	.long	.LVL829
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL829
	.long	.LVL830
	.value	0x1
	.byte	0x56
	.long	.LVL830
	.long	.LFE156
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST322:
	.long	.LVL826
	.long	.LVL827-1
	.value	0x1
	.byte	0x50
	.long	.LVL827
	.long	.LVL828-1
	.value	0x1
	.byte	0x50
	.long	.LVL831
	.long	.LVL832
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST323:
	.long	.LVL813
	.long	.LVL814
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL814
	.long	.LVL815-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL815-1
	.long	.LVL815
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST324:
	.long	.LVL813
	.long	.LVL815
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST325:
	.long	.LVL813
	.long	.LVL815
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST326:
	.long	.LVL834
	.long	.LVL835
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST327:
	.long	.LVL847
	.long	.LVL848
	.value	0x1
	.byte	0x50
	.long	.LVL848
	.long	.LVL857
	.value	0x1
	.byte	0x57
	.long	.LVL866
	.long	.LVL867
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST328:
	.long	.LVL842
	.long	.LVL843
	.value	0x1
	.byte	0x50
	.long	.LVL850
	.long	.LVL851
	.value	0x1
	.byte	0x50
	.long	.LVL852
	.long	.LVL854
	.value	0x1
	.byte	0x50
	.long	.LVL858
	.long	.LVL859
	.value	0x1
	.byte	0x50
	.long	.LVL860
	.long	.LVL861
	.value	0x1
	.byte	0x50
	.long	.LVL862
	.long	.LVL863
	.value	0x1
	.byte	0x50
	.long	.LVL864
	.long	.LVL865
	.value	0x1
	.byte	0x50
	.long	.LVL867
	.long	.LVL868
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST329:
	.long	.LVL837
	.long	.LVL838
	.value	0x1
	.byte	0x56
	.long	.LVL839
	.long	.LVL840
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST330:
	.long	.LVL853
	.long	.LVL857
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST331:
	.long	.LVL853
	.long	.LVL855
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL855
	.long	.LVL856-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL856-1
	.long	.LVL857
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST332:
	.long	.LVL853
	.long	.LVL857
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST333:
	.long	.LVL874
	.long	.LVL875
	.value	0x1
	.byte	0x50
	.long	.LVL875
	.long	.LVL878
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST334:
	.long	.LVL869
	.long	.LVL871
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST335:
	.long	.LVL869
	.long	.LVL870
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL870
	.long	.LVL871-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL871-1
	.long	.LVL871
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST336:
	.long	.LVL869
	.long	.LVL871
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST337:
	.long	.LVL886
	.long	.LVL888
	.value	0x1
	.byte	0x50
	.long	.LVL888
	.long	.LVL891
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST338:
	.long	.LVL880
	.long	.LVL881
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST339:
	.long	.LVL881
	.long	.LVL882
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL882
	.long	.LVL883-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL883-1
	.long	.LVL883
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST340:
	.long	.LVL881
	.long	.LVL883
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST341:
	.long	.LVL881
	.long	.LVL883
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST342:
	.long	.LVL887
	.long	.LVL890
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST343:
	.long	.LVL887
	.long	.LVL889
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL889
	.long	.LVL890-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL890-1
	.long	.LVL890
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST344:
	.long	.LVL887
	.long	.LVL890
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST345:
	.long	.LVL893
	.long	.LVL896
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST346:
	.long	.LVL893
	.long	.LVL894
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL894
	.long	.LVL895-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL895-1
	.long	.LVL896
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST347:
	.long	.LVL893
	.long	.LVL896
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST348:
	.long	.LVL896
	.long	.LVL898
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.long	0
	.long	0
.LLST349:
	.long	.LVL896
	.long	.LVL897
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL897
	.long	.LVL898-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL898-1
	.long	.LVL898
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST350:
	.long	.LVL896
	.long	.LVL898
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.long	0
	.long	0
.LLST351:
	.long	.LVL899
	.long	.LVL900
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	0
	.long	0
.LLST352:
	.long	.LVL899
	.long	.LVL901
	.value	0x1
	.byte	0x52
	.long	.LVL901
	.long	.LVL902-1
	.value	0x5
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x2
	.long	0
	.long	0
.LLST353:
	.long	.LVL899
	.long	.LVL911
	.value	0x1
	.byte	0x53
	.long	.LVL918
	.long	.LVL920
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST354:
	.long	.LVL906
	.long	.LVL907
	.value	0x1
	.byte	0x50
	.long	.LVL907
	.long	.LVL918
	.value	0x1
	.byte	0x57
	.long	.LVL918
	.long	.LVL919
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST355:
	.long	.LVL903
	.long	.LVL904
	.value	0x1
	.byte	0x50
	.long	.LVL910
	.long	.LVL914-1
	.value	0x1
	.byte	0x50
	.long	.LVL915
	.long	.LVL917-1
	.value	0x1
	.byte	0x50
	.long	.LVL919
	.long	.LVL920
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST356:
	.long	.LVL912
	.long	.LVL915
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.long	0
	.long	0
.LLST357:
	.long	.LVL912
	.long	.LVL913
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL913
	.long	.LVL914-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL914-1
	.long	.LVL915
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST358:
	.long	.LVL912
	.long	.LVL915
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.long	0
	.long	0
.LLST359:
	.long	.LVL915
	.long	.LVL917
	.value	0x2
	.byte	0x39
	.byte	0x9f
	.long	0
	.long	0
.LLST360:
	.long	.LVL915
	.long	.LVL916
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL916
	.long	.LVL917-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL917-1
	.long	.LVL917
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST361:
	.long	.LVL915
	.long	.LVL917
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.long	0
	.long	0
.LLST362:
	.long	.LVL921
	.long	.LVL923
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST363:
	.long	.LVL921
	.long	.LVL922
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL922
	.long	.LVL923-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL923-1
	.long	.LVL923
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST364:
	.long	.LVL921
	.long	.LVL923
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST365:
	.long	.LVL928
	.long	.LVL929
	.value	0x1
	.byte	0x50
	.long	.LVL929
	.long	.LVL933
	.value	0x1
	.byte	0x53
	.long	.LVL933
	.long	.LFE165
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST366:
	.long	.LVL930
	.long	.LVL932
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST367:
	.long	.LVL930
	.long	.LVL932
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST368:
	.long	.LVL936
	.long	.LVL943
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST369:
	.long	.LVL935
	.long	.LVL937-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST370:
	.long	.LVL938
	.long	.LVL940
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST371:
	.long	.LVL938
	.long	.LVL940
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST372:
	.long	.LVL945
	.long	.LVL948
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL948
	.long	.LVL956
	.value	0x1
	.byte	0x53
	.long	.LVL956
	.long	.LFE169
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST373:
	.long	.LVL950
	.long	.LVL951
	.value	0x1
	.byte	0x50
	.long	.LVL951
	.long	.LVL956
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST374:
	.long	.LVL954
	.long	.LVL955-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST375:
	.long	.LVL973
	.long	.LVL976
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST376:
	.long	.LVL968
	.long	.LVL970
	.value	0x1
	.byte	0x50
	.long	.LVL970
	.long	.LVL976
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST377:
	.long	.LVL961
	.long	.LVL962
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL962
	.long	.LVL963-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL963-1
	.long	.LVL963
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST378:
	.long	.LVL961
	.long	.LVL963
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST379:
	.long	.LVL961
	.long	.LVL963
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST380:
	.long	.LVL964
	.long	.LVL966
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST381:
	.long	.LVL964
	.long	.LVL965
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL965
	.long	.LVL966-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL966-1
	.long	.LVL966
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST382:
	.long	.LVL964
	.long	.LVL966
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST383:
	.long	.LVL969
	.long	.LVL972
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST384:
	.long	.LVL969
	.long	.LVL971
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	.LVL971
	.long	.LVL972-1
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL972-1
	.long	.LVL972
	.value	0x6
	.byte	0x3
	.long	bt_dev+108
	.byte	0x9f
	.long	0
	.long	0
.LLST385:
	.long	.LVL969
	.long	.LVL972
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST386:
	.long	.LVL984
	.long	.LVL985-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST387:
	.long	.LVL982
	.long	.LVL983
	.value	0x1
	.byte	0x50
	.long	.LVL983
	.long	.LVL986
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST388:
	.long	.LVL985
	.long	.LVL986
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1bc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB119
	.long	.LFE119-.LFB119
	.long	.LFB190
	.long	.LFE190-.LFB190
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB79
	.long	.LFE79-.LFB79
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB84
	.long	.LFE84-.LFB84
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	.LFB108
	.long	.LFE108-.LFB108
	.long	.LFB110
	.long	.LFE110-.LFB110
	.long	.LFB107
	.long	.LFE107-.LFB107
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB83
	.long	.LFE83-.LFB83
	.long	.LFB159
	.long	.LFE159-.LFB159
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB109
	.long	.LFE109-.LFB109
	.long	.LFB111
	.long	.LFE111-.LFB111
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB123
	.long	.LFE123-.LFB123
	.long	.LFB144
	.long	.LFE144-.LFB144
	.long	.LFB145
	.long	.LFE145-.LFB145
	.long	.LFB153
	.long	.LFE153-.LFB153
	.long	.LFB154
	.long	.LFE154-.LFB154
	.long	.LFB149
	.long	.LFE149-.LFB149
	.long	.LFB80
	.long	.LFE80-.LFB80
	.long	.LFB204
	.long	.LFE204-.LFB204
	.long	.LFB205
	.long	.LFE205-.LFB205
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	.LFB155
	.long	.LFE155-.LFB155
	.long	.LFB129
	.long	.LFE129-.LFB129
	.long	.LFB150
	.long	.LFE150-.LFB150
	.long	.LFB151
	.long	.LFE151-.LFB151
	.long	.LFB152
	.long	.LFE152-.LFB152
	.long	.LFB156
	.long	.LFE156-.LFB156
	.long	.LFB157
	.long	.LFE157-.LFB157
	.long	.LFB160
	.long	.LFE160-.LFB160
	.long	.LFB161
	.long	.LFE161-.LFB161
	.long	.LFB163
	.long	.LFE163-.LFB163
	.long	.LFB164
	.long	.LFE164-.LFB164
	.long	.LFB165
	.long	.LFE165-.LFB165
	.long	.LFB166
	.long	.LFE166-.LFB166
	.long	.LFB167
	.long	.LFE167-.LFB167
	.long	.LFB169
	.long	.LFE169-.LFB169
	.long	.LFB170
	.long	.LFE170-.LFB170
	.long	.LFB171
	.long	.LFE171-.LFB171
	.long	.LFB172
	.long	.LFE172-.LFB172
	.long	.LFB173
	.long	.LFE173-.LFB173
	.long	.LFB174
	.long	.LFE174-.LFB174
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB118
	.long	.LBE118
	.long	.LBB149
	.long	.LBE149
	.long	0
	.long	0
	.long	.LBB120
	.long	.LBE120
	.long	.LBB125
	.long	.LBE125
	.long	.LBB126
	.long	.LBE126
	.long	.LBB130
	.long	.LBE130
	.long	0
	.long	0
	.long	.LBB127
	.long	.LBE127
	.long	.LBB131
	.long	.LBE131
	.long	0
	.long	0
	.long	.LBB133
	.long	.LBE133
	.long	.LBB150
	.long	.LBE150
	.long	.LBB151
	.long	.LBE151
	.long	0
	.long	0
	.long	.LBB135
	.long	.LBE135
	.long	.LBB140
	.long	.LBE140
	.long	.LBB141
	.long	.LBE141
	.long	.LBB145
	.long	.LBE145
	.long	0
	.long	0
	.long	.LBB142
	.long	.LBE142
	.long	.LBB146
	.long	.LBE146
	.long	0
	.long	0
	.long	.LBB158
	.long	.LBE158
	.long	.LBB161
	.long	.LBE161
	.long	0
	.long	0
	.long	.LBB164
	.long	.LBE164
	.long	.LBB167
	.long	.LBE167
	.long	0
	.long	0
	.long	.LBB206
	.long	.LBE206
	.long	.LBB210
	.long	.LBE210
	.long	.LBB211
	.long	.LBE211
	.long	0
	.long	0
	.long	.LBB224
	.long	.LBE224
	.long	.LBB228
	.long	.LBE228
	.long	.LBB229
	.long	.LBE229
	.long	0
	.long	0
	.long	.LBB308
	.long	.LBE308
	.long	.LBB379
	.long	.LBE379
	.long	.LBB380
	.long	.LBE380
	.long	0
	.long	0
	.long	.LBB310
	.long	.LBE310
	.long	.LBB336
	.long	.LBE336
	.long	.LBB337
	.long	.LBE337
	.long	0
	.long	0
	.long	.LBB314
	.long	.LBE314
	.long	.LBB317
	.long	.LBE317
	.long	0
	.long	0
	.long	.LBB318
	.long	.LBE318
	.long	.LBB321
	.long	.LBE321
	.long	0
	.long	0
	.long	.LBB322
	.long	.LBE322
	.long	.LBB329
	.long	.LBE329
	.long	0
	.long	0
	.long	.LBB324
	.long	.LBE324
	.long	.LBB327
	.long	.LBE327
	.long	0
	.long	0
	.long	.LBB330
	.long	.LBE330
	.long	.LBB333
	.long	.LBE333
	.long	0
	.long	0
	.long	.LBB340
	.long	.LBE340
	.long	.LBB343
	.long	.LBE343
	.long	0
	.long	0
	.long	.LBB346
	.long	.LBE346
	.long	.LBB351
	.long	.LBE351
	.long	0
	.long	0
	.long	.LBB355
	.long	.LBE355
	.long	.LBB363
	.long	.LBE363
	.long	.LBB364
	.long	.LBE364
	.long	0
	.long	0
	.long	.LBB367
	.long	.LBE367
	.long	.LBB376
	.long	.LBE376
	.long	0
	.long	0
	.long	.LBB396
	.long	.LBE396
	.long	.LBB399
	.long	.LBE399
	.long	0
	.long	0
	.long	.LBB404
	.long	.LBE404
	.long	.LBB407
	.long	.LBE407
	.long	0
	.long	0
	.long	.LBB492
	.long	.LBE492
	.long	.LBB590
	.long	.LBE590
	.long	0
	.long	0
	.long	.LBB502
	.long	.LBE502
	.long	.LBB588
	.long	.LBE588
	.long	0
	.long	0
	.long	.LBB506
	.long	.LBE506
	.long	.LBB510
	.long	.LBE510
	.long	.LBB513
	.long	.LBE513
	.long	0
	.long	0
	.long	.LBB526
	.long	.LBE526
	.long	.LBB529
	.long	.LBE529
	.long	0
	.long	0
	.long	.LBB541
	.long	.LBE541
	.long	.LBB586
	.long	.LBE586
	.long	0
	.long	0
	.long	.LBB557
	.long	.LBE557
	.long	.LBB584
	.long	.LBE584
	.long	.LBB585
	.long	.LBE585
	.long	0
	.long	0
	.long	.LBB558
	.long	.LBE558
	.long	.LBB571
	.long	.LBE571
	.long	.LBB575
	.long	.LBE575
	.long	0
	.long	0
	.long	.LBB559
	.long	.LBE559
	.long	.LBB564
	.long	.LBE564
	.long	.LBB568
	.long	.LBE568
	.long	.LBB570
	.long	.LBE570
	.long	0
	.long	0
	.long	.LBB565
	.long	.LBE565
	.long	.LBB569
	.long	.LBE569
	.long	0
	.long	0
	.long	.LBB576
	.long	.LBE576
	.long	.LBB582
	.long	.LBE582
	.long	.LBB583
	.long	.LBE583
	.long	0
	.long	0
	.long	.LBB625
	.long	.LBE625
	.long	.LBB636
	.long	.LBE636
	.long	0
	.long	0
	.long	.LBB626
	.long	.LBE626
	.long	.LBB633
	.long	.LBE633
	.long	.LBB634
	.long	.LBE634
	.long	.LBB635
	.long	.LBE635
	.long	0
	.long	0
	.long	.LBB627
	.long	.LBE627
	.long	.LBB632
	.long	.LBE632
	.long	0
	.long	0
	.long	.LBB646
	.long	.LBE646
	.long	.LBB649
	.long	.LBE649
	.long	0
	.long	0
	.long	.LBB676
	.long	.LBE676
	.long	.LBB679
	.long	.LBE679
	.long	0
	.long	0
	.long	.LBB682
	.long	.LBE682
	.long	.LBB693
	.long	.LBE693
	.long	0
	.long	0
	.long	.LBB685
	.long	.LBE685
	.long	.LBB694
	.long	.LBE694
	.long	.LBB695
	.long	.LBE695
	.long	0
	.long	0
	.long	.LFB64
	.long	.LFE64
	.long	.LFB69
	.long	.LFE69
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB94
	.long	.LFE94
	.long	.LFB119
	.long	.LFE119
	.long	.LFB190
	.long	.LFE190
	.long	.LFB49
	.long	.LFE49
	.long	.LFB79
	.long	.LFE79
	.long	.LFB81
	.long	.LFE81
	.long	.LFB84
	.long	.LFE84
	.long	.LFB85
	.long	.LFE85
	.long	.LFB108
	.long	.LFE108
	.long	.LFB110
	.long	.LFE110
	.long	.LFB107
	.long	.LFE107
	.long	.LFB86
	.long	.LFE86
	.long	.LFB83
	.long	.LFE83
	.long	.LFB159
	.long	.LFE159
	.long	.LFB101
	.long	.LFE101
	.long	.LFB109
	.long	.LFE109
	.long	.LFB111
	.long	.LFE111
	.long	.LFB95
	.long	.LFE95
	.long	.LFB123
	.long	.LFE123
	.long	.LFB144
	.long	.LFE144
	.long	.LFB145
	.long	.LFE145
	.long	.LFB153
	.long	.LFE153
	.long	.LFB154
	.long	.LFE154
	.long	.LFB149
	.long	.LFE149
	.long	.LFB80
	.long	.LFE80
	.long	.LFB204
	.long	.LFE204
	.long	.LFB205
	.long	.LFE205
	.long	.LFB96
	.long	.LFE96
	.long	.LFB102
	.long	.LFE102
	.long	.LFB155
	.long	.LFE155
	.long	.LFB129
	.long	.LFE129
	.long	.LFB150
	.long	.LFE150
	.long	.LFB151
	.long	.LFE151
	.long	.LFB152
	.long	.LFE152
	.long	.LFB156
	.long	.LFE156
	.long	.LFB157
	.long	.LFE157
	.long	.LFB160
	.long	.LFE160
	.long	.LFB161
	.long	.LFE161
	.long	.LFB163
	.long	.LFE163
	.long	.LFB164
	.long	.LFE164
	.long	.LFB165
	.long	.LFE165
	.long	.LFB166
	.long	.LFE166
	.long	.LFB167
	.long	.LFE167
	.long	.LFB169
	.long	.LFE169
	.long	.LFB170
	.long	.LFE170
	.long	.LFB171
	.long	.LFE171
	.long	.LFB172
	.long	.LFE172
	.long	.LFB173
	.long	.LFE173
	.long	.LFB174
	.long	.LFE174
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF479:
	.string	"cp_mask"
.LASF335:
	.string	"BT_DEV_READY"
.LASF599:
	.string	"bt_conn_process_tx"
.LASF77:
	.string	"_POLL_NUM_TYPES"
.LASF434:
	.string	"hci_le_read_remote_features"
.LASF443:
	.string	"atomic_test_and_set_bit"
.LASF213:
	.string	"bt_hci_evt_encrypt_change"
.LASF233:
	.string	"bt_hci_evt_le_ltk_request"
.LASF30:
	.string	"_ssize_t"
.LASF11:
	.string	"size_t"
.LASF567:
	.string	"net_buf_unref"
.LASF551:
	.string	"hci_rx_pool"
.LASF31:
	.string	"sizetype"
.LASF266:
	.string	"BT_SECURITY_NONE"
.LASF145:
	.string	"sco_max_len"
.LASF455:
	.string	"bt_hci_cmd_send_sync"
.LASF228:
	.string	"evt_type"
.LASF508:
	.string	"bt_recv"
.LASF412:
	.string	"hci_num_completed_packets"
.LASF477:
	.string	"sys_get_le32"
.LASF591:
	.string	"le_param_req"
.LASF24:
	.string	"tail"
.LASF317:
	.string	"BT_KEYS_DEBUG"
.LASF561:
	.string	"net_buf_simple_add"
.LASF397:
	.string	"read_local_ver_complete"
.LASF346:
	.string	"BT_DEV_ID_PENDING"
.LASF193:
	.string	"tx_octets"
.LASF149:
	.string	"bdaddr"
.LASF276:
	.string	"tx_pending"
.LASF72:
	.string	"work_q"
.LASF275:
	.string	"rx_len"
.LASF518:
	.string	"valid_adv_param"
.LASF565:
	.string	"net_buf_put"
.LASF453:
	.string	"sys_put_le64"
.LASF585:
	.string	"bt_conn_recv"
.LASF446:
	.string	"process_events"
.LASF484:
	.string	"bt_send"
.LASF307:
	.string	"write"
.LASF166:
	.string	"window"
.LASF350:
	.string	"pkts"
.LASF313:
	.string	"BT_KEYS_REMOTE_CSRK"
.LASF167:
	.string	"addr_type"
.LASF267:
	.string	"BT_SECURITY_LOW"
.LASF564:
	.string	"net_buf_ref"
.LASF37:
	.string	"aos_queue_t"
.LASF297:
	.string	"open"
.LASF399:
	.string	"read_supported_commands_complete"
.LASF94:
	.string	"state"
.LASF610:
	.string	"k_work_submit"
.LASF326:
	.string	"slave_ltk"
.LASF197:
	.string	"max_tx_time"
.LASF14:
	.string	"s32_t"
.LASF314:
	.string	"BT_KEYS_LTK_P256"
.LASF385:
	.string	"resp_addr"
.LASF471:
	.string	"bt_addr_le_create_static"
.LASF119:
	.string	"bt_addr_le_t"
.LASF429:
	.string	"K_THREAD_STACK_BUFFER"
.LASF557:
	.string	"net_buf_pool_get"
.LASF93:
	.string	"type"
.LASF407:
	.string	"target"
.LASF99:
	.string	"K_POLL_NUM_MODES"
.LASF226:
	.string	"clock_accuracy"
.LASF413:
	.string	"conn"
.LASF212:
	.string	"bt_hci_evt_disconn_complete"
.LASF67:
	.string	"k_work"
.LASF177:
	.string	"conn_latency"
.LASF220:
	.string	"bt_hci_evt_encrypt_key_refresh_complete"
.LASF33:
	.string	"ssize_t"
.LASF251:
	.string	"BT_LE_ADV_OPT_CONNECTABLE"
.LASF470:
	.string	"bt_addr_le_create_nrpa"
.LASF249:
	.string	"data_len"
.LASF547:
	.string	"pub_key_cb"
.LASF91:
	.string	"_node"
.LASF268:
	.string	"BT_SECURITY_MEDIUM"
.LASF311:
	.string	"BT_KEYS_LTK"
.LASF478:
	.string	"le_set_event_mask"
.LASF476:
	.string	"sys_get_le64"
.LASF97:
	.string	"k_poll_modes"
.LASF256:
	.string	"bt_le_scan_cb_t"
.LASF89:
	.string	"result"
.LASF382:
	.string	"BT_CONN_NUM_FLAGS"
.LASF284:
	.string	"BT_BUF_ACL_IN"
.LASF507:
	.string	"ev_count"
.LASF361:
	.string	"rx_prio_queue"
.LASF345:
	.string	"BT_DEV_RPA_VALID"
.LASF451:
	.string	"update_conn_param"
.LASF505:
	.string	"send_cmd"
.LASF65:
	.string	"fifo"
.LASF437:
	.string	"le_legacy_conn_complete"
.LASF5:
	.string	"long int"
.LASF281:
	.string	"BT_BUF_CMD"
.LASF609:
	.string	"k_thread_create"
.LASF494:
	.string	"le_conn_param_req_reply"
.LASF332:
	.string	"BT_EVENT_CONN_TX_NOTIFY"
.LASF128:
	.string	"bt_hci_handle_count"
.LASF430:
	.string	"hci_disconn_complete"
.LASF320:
	.string	"BT_KEYS_NUM_FLAGS"
.LASF265:
	.string	"BT_CONN_ROLE_SLAVE"
.LASF214:
	.string	"encrypt"
.LASF383:
	.string	"bt_conn_le"
.LASF196:
	.string	"max_tx_octets"
.LASF587:
	.string	"bt_smp_update_keys"
.LASF198:
	.string	"bt_hci_cp_le_generate_dhkey"
.LASF462:
	.string	"addr_res_enable"
.LASF586:
	.string	"bt_l2cap_encrypt_change"
.LASF553:
	.string	"atomic_get"
.LASF174:
	.string	"peer_addr"
.LASF309:
	.string	"BT_KEYS_SLAVE_LTK"
.LASF234:
	.string	"rand"
.LASF331:
	.string	"BT_EVENT_CMD_TX"
.LASF421:
	.string	"set_advertise_enable"
.LASF245:
	.string	"tx_phy"
.LASF188:
	.string	"interval_max"
.LASF23:
	.string	"head"
.LASF171:
	.string	"bt_hci_cp_le_create_conn"
.LASF483:
	.string	"set_addr"
.LASF329:
	.string	"BT_LINK_KEY_SC"
.LASF259:
	.string	"_Bool"
.LASF376:
	.string	"BT_CONN_BR_PAIRING"
.LASF157:
	.string	"max_interval"
.LASF515:
	.string	"bt_hci_driver_register"
.LASF452:
	.string	"sys_put_le32"
.LASF87:
	.string	"k_poll_signal"
.LASF286:
	.string	"BT_HCI_DRIVER_BUS_VIRTUAL"
.LASF83:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF19:
	.string	"sys_snode_t"
.LASF50:
	.string	"k_timer_handler_t"
.LASF216:
	.string	"ncmd"
.LASF1:
	.string	"signed char"
.LASF440:
	.string	"le_conn_param_req"
.LASF544:
	.string	"ready_cb"
.LASF336:
	.string	"BT_DEV_ID_STATIC_RANDOM"
.LASF41:
	.string	"_sem_t"
.LASF110:
	.string	"net_buf_pool"
.LASF581:
	.string	"bt_conn_add_le"
.LASF261:
	.string	"BT_CONN_TYPE_LE"
.LASF448:
	.string	"atomic_test_bit"
.LASF182:
	.string	"bt_hci_cp_le_ltk_req_reply"
.LASF327:
	.string	"BT_LINK_KEY_AUTHENTICATED"
.LASF135:
	.string	"hci_revision"
.LASF619:
	.string	"_poller"
.LASF223:
	.string	"bt_hci_evt_le_conn_complete"
.LASF615:
	.string	"bt_keys_clear"
.LASF2:
	.string	"unsigned char"
.LASF123:
	.string	"bt_hci_cmd_hdr"
.LASF510:
	.string	"hci_cmd_complete"
.LASF405:
	.string	"read_buffer_size_complete"
.LASF409:
	.string	"atomic_set_bit"
.LASF398:
	.string	"read_le_features_complete"
.LASF146:
	.string	"acl_max_num"
.LASF289:
	.string	"BT_HCI_DRIVER_BUS_UART"
.LASF431:
	.string	"advertise"
.LASF344:
	.string	"BT_DEV_SCAN_FILTER_DUP"
.LASF369:
	.string	"BT_CONN_CONNECT"
.LASF260:
	.string	"bt_le_conn_param"
.LASF489:
	.string	"bt_buf_get_type"
.LASF559:
	.string	"net_buf_alloc"
.LASF310:
	.string	"BT_KEYS_IRK"
.LASF618:
	.string	"/home/stone/Documents/pca"
.LASF554:
	.string	"atomic_and"
.LASF53:
	.string	"handler"
.LASF517:
	.string	"bt_addr_le_is_bonded"
.LASF73:
	.string	"_POLL_TYPE_IGNORE"
.LASF457:
	.string	"bt_addr_copy"
.LASF154:
	.string	"bt_hci_rp_le_read_local_features"
.LASF282:
	.string	"BT_BUF_EVT"
.LASF253:
	.string	"bt_le_adv_param"
.LASF32:
	.string	"char"
.LASF204:
	.string	"bt_hci_rp_le_read_max_data_len"
.LASF439:
	.string	"le_phy_update_complete"
.LASF96:
	.string	"unused"
.LASF589:
	.string	"bt_keys_find_irk"
.LASF168:
	.string	"bt_hci_cp_le_set_scan_enable"
.LASF109:
	.string	"pool_id"
.LASF278:
	.string	"tx_queue"
.LASF356:
	.string	"supported_commands"
.LASF85:
	.string	"signal"
.LASF506:
	.string	"hci_tx_thread"
.LASF530:
	.string	"storage"
.LASF380:
	.string	"BT_CONN_AUTO_PHY_UPDATE"
.LASF52:
	.string	"timer"
.LASF343:
	.string	"BT_DEV_ACTIVE_SCAN"
.LASF236:
	.string	"bt_hci_evt_le_conn_param_req"
.LASF377:
	.string	"BT_CONN_BR_NOBOND"
.LASF379:
	.string	"BT_CONN_CLEANUP"
.LASF488:
	.string	"le_conn_param_neg_reply"
.LASF605:
	.string	"irq_unlock"
.LASF69:
	.string	"flags"
.LASF176:
	.string	"conn_interval_max"
.LASF90:
	.string	"k_poll_event"
.LASF238:
	.string	"bt_hci_evt_le_p256_public_key_complete"
.LASF341:
	.string	"BT_DEV_SCANNING"
.LASF20:
	.string	"_snode"
.LASF42:
	.string	"_task_t"
.LASF381:
	.string	"BT_CONN_AUTO_DATA_LEN"
.LASF368:
	.string	"BT_CONN_CONNECT_SCAN"
.LASF500:
	.string	"check_pending_conn"
.LASF459:
	.string	"nrpa"
.LASF280:
	.string	"bt_buf_type"
.LASF106:
	.string	"node"
.LASF142:
	.string	"features"
.LASF362:
	.string	"cmd_tx_queue"
.LASF107:
	.string	"frags"
.LASF569:
	.string	"aos_free"
.LASF511:
	.string	"hci_cmd_status"
.LASF318:
	.string	"BT_KEYS_ID_PENDING_ADD"
.LASF533:
	.string	"bt_hci_get_cmd_opcode"
.LASF285:
	.string	"bt_hci_driver_bus"
.LASF59:
	.string	"task"
.LASF521:
	.string	"set_param"
.LASF415:
	.string	"hci_encrypt_change"
.LASF435:
	.string	"hci_le_set_phy"
.LASF537:
	.string	"bt_dh_key_gen"
.LASF120:
	.string	"bt_hci_evt_hdr"
.LASF172:
	.string	"scan_interval"
.LASF526:
	.string	"bt_le_scan_stop"
.LASF592:
	.string	"bt_smp_get_tk"
.LASF447:
	.string	"net_buf_user_data"
.LASF250:
	.string	"BT_LE_ADV_OPT_NONE"
.LASF546:
	.string	"pub_key"
.LASF189:
	.string	"latency"
.LASF427:
	.string	"bt_le_scan_update"
.LASF552:
	.string	"g_poll_sem"
.LASF601:
	.string	"k_poll"
.LASF560:
	.string	"net_buf_reserve"
.LASF423:
	.string	"scan_enabled"
.LASF308:
	.string	"clear"
.LASF573:
	.string	"net_buf_simple_add_u8"
.LASF426:
	.string	"bt_id_del"
.LASF163:
	.string	"bt_hci_cp_le_set_scan_param"
.LASF355:
	.string	"random_addr"
.LASF323:
	.string	"bt_keys"
.LASF531:
	.string	"bt_storage_register"
.LASF449:
	.string	"atomic_test_and_clear_bit"
.LASF139:
	.string	"bt_hci_rp_read_supported_commands"
.LASF404:
	.string	"le_read_buffer_size_complete"
.LASF322:
	.string	"bt_irk"
.LASF400:
	.string	"read_local_features_complete"
.LASF126:
	.string	"bt_hci_cp_set_event_mask"
.LASF79:
	.string	"_poll_states_bits"
.LASF88:
	.string	"signaled"
.LASF529:
	.string	"bt_buf_get_cmd_complete"
.LASF603:
	.string	"bt_conn_get_pkts"
.LASF190:
	.string	"bt_hci_cp_le_conn_param_req_neg_reply"
.LASF432:
	.string	"net_buf_simple_restore"
.LASF81:
	.string	"_POLL_STATE_SIGNALED"
.LASF137:
	.string	"manufacturer"
.LASF371:
	.string	"BT_CONN_DISCONNECT"
.LASF525:
	.string	"bt_le_scan_start"
.LASF6:
	.string	"long unsigned int"
.LASF372:
	.string	"bt_conn_state_t"
.LASF524:
	.string	"start_le_scan"
.LASF114:
	.string	"buf_size"
.LASF612:
	.string	"bt_conn_disconnect_all"
.LASF133:
	.string	"status"
.LASF441:
	.string	"param"
.LASF28:
	.string	"sys_dlist_t"
.LASF480:
	.string	"br_init"
.LASF384:
	.string	"init_addr"
.LASF187:
	.string	"interval_min"
.LASF614:
	.string	"bt_conn_lookup_addr_le"
.LASF92:
	.string	"poller"
.LASF463:
	.string	"set_ad"
.LASF203:
	.string	"bt_hci_cp_le_rem_dev_from_rl"
.LASF29:
	.string	"sys_dnode_t"
.LASF186:
	.string	"bt_hci_cp_le_conn_param_req_reply"
.LASF290:
	.string	"BT_HCI_DRIVER_BUS_RS232"
.LASF330:
	.string	"BT_LINK_KEY_NUM_FLAGS"
.LASF428:
	.string	"fast_scan"
.LASF257:
	.string	"bt_le_scan_param"
.LASF291:
	.string	"BT_HCI_DRIVER_BUS_PCI"
.LASF467:
	.string	"bt_le_conn_params_valid"
.LASF424:
	.string	"done"
.LASF604:
	.string	"irq_lock"
.LASF54:
	.string	"args"
.LASF231:
	.string	"bt_hci_evt_le_conn_update_complete"
.LASF164:
	.string	"scan_type"
.LASF366:
	.string	"bt_dh_key_cb_t"
.LASF103:
	.string	"__buf"
.LASF300:
	.string	"BT_STORAGE_LOCAL_IRK"
.LASF608:
	.string	"k_queue_init"
.LASF159:
	.string	"direct_addr"
.LASF298:
	.string	"send"
.LASF527:
	.string	"bt_buf_set_type"
.LASF445:
	.string	"bt_addr_le_cmp"
.LASF294:
	.string	"BT_HCI_DRIVER_BUS_I2C"
.LASF9:
	.string	"__uint32_t"
.LASF624:
	.string	"__stack_chk_fail"
.LASF534:
	.string	"bt_pub_key_gen"
.LASF325:
	.string	"keys"
.LASF34:
	.string	"aos_hdl_t"
.LASF293:
	.string	"BT_HCI_DRIVER_BUS_SPI"
.LASF7:
	.string	"long long int"
.LASF25:
	.string	"sys_slist_t"
.LASF576:
	.string	"bt_conn_unref"
.LASF401:
	.string	"le_read_supp_states_complete"
.LASF575:
	.string	"bt_conn_lookup_state_le"
.LASF593:
	.string	"bt_keys_find"
.LASF169:
	.string	"enable"
.LASF571:
	.string	"net_buf_simple_add_mem"
.LASF66:
	.string	"k_work_handler_t"
.LASF444:
	.string	"bt_addr_cmp"
.LASF39:
	.string	"cpu_stack_t"
.LASF389:
	.string	"acl_data"
.LASF606:
	.string	"k_work_init"
.LASF255:
	.string	"own_addr"
.LASF388:
	.string	"sync"
.LASF181:
	.string	"bt_hci_cp_le_read_remote_features"
.LASF402:
	.string	"hci_reset_complete"
.LASF173:
	.string	"scan_window"
.LASF496:
	.string	"num_reports"
.LASF49:
	.string	"k_sem"
.LASF46:
	.string	"poll_events"
.LASF408:
	.string	"mask"
.LASF292:
	.string	"BT_HCI_DRIVER_BUS_SDIO"
.LASF528:
	.string	"bt_buf_get_rx"
.LASF70:
	.string	"k_delayed_work"
.LASF138:
	.string	"lmp_subversion"
.LASF78:
	.string	"_poll_types_bits"
.LASF55:
	.string	"timeout"
.LASF566:
	.string	"k_sem_take"
.LASF100:
	.string	"net_buf_simple"
.LASF75:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF475:
	.string	"cp_le"
.LASF129:
	.string	"count"
.LASF579:
	.string	"bt_conn_init"
.LASF563:
	.string	"k_sem_init"
.LASF229:
	.string	"addr"
.LASF543:
	.string	"tx_thread_stack"
.LASF396:
	.string	"le_dhkey_complete"
.LASF499:
	.string	"net_buf_simple_save"
.LASF306:
	.string	"read"
.LASF352:
	.string	"rl_entries"
.LASF56:
	.string	"start_ms"
.LASF40:
	.string	"_queue_t"
.LASF365:
	.string	"_next"
.LASF8:
	.string	"unsigned int"
.LASF222:
	.string	"subevent"
.LASF406:
	.string	"atomic_clear_bit"
.LASF175:
	.string	"conn_interval_min"
.LASF16:
	.string	"u16_t"
.LASF155:
	.string	"bt_hci_cp_le_set_adv_param"
.LASF481:
	.string	"set_event_mask"
.LASF279:
	.string	"channels"
.LASF416:
	.string	"hci_encrypt_key_refresh_complete"
.LASF252:
	.string	"BT_LE_ADV_OPT_ONE_TIME"
.LASF353:
	.string	"bt_dev"
.LASF195:
	.string	"bt_hci_cp_le_write_default_data_len"
.LASF316:
	.string	"BT_KEYS_AUTHENTICATED"
.LASF60:
	.string	"k_thread_stack_t"
.LASF460:
	.string	"hci_id_add"
.LASF374:
	.string	"BT_CONN_BR_LEGACY_SECURE"
.LASF277:
	.string	"tx_notify"
.LASF438:
	.string	"le_remote_feat_complete"
.LASF456:
	.string	"sync_sem"
.LASF312:
	.string	"BT_KEYS_LOCAL_CSRK"
.LASF545:
	.string	"scan_dev_found_cb"
.LASF347:
	.string	"BT_DEV_NUM_FLAGS"
.LASF485:
	.string	"bt_hci_cmd_send"
.LASF578:
	.string	"atomic_set"
.LASF450:
	.string	"bt_addr_le_copy"
.LASF44:
	.string	"k_queue"
.LASF558:
	.string	"bt_conn_disconnect"
.LASF607:
	.string	"k_work_q_start"
.LASF21:
	.string	"_slist"
.LASF617:
	.string	"src/hci_core.c"
.LASF360:
	.string	"rx_queue"
.LASF419:
	.string	"set_random_address"
.LASF105:
	.string	"offset"
.LASF465:
	.string	"ad_len"
.LASF390:
	.string	"list"
.LASF367:
	.string	"BT_CONN_DISCONNECTED"
.LASF185:
	.string	"le_states"
.LASF466:
	.string	"set_data"
.LASF283:
	.string	"BT_BUF_ACL_OUT"
.LASF493:
	.string	"find_id_addr"
.LASF588:
	.string	"bt_conn_security_changed"
.LASF580:
	.string	"bt_conn_set_state"
.LASF613:
	.string	"bt_keys_clear_all"
.LASF337:
	.string	"BT_DEV_HAS_PUB_KEY"
.LASF339:
	.string	"BT_DEV_ADVERTISING"
.LASF535:
	.string	"new_cb"
.LASF512:
	.string	"sys_slist_get"
.LASF363:
	.string	"bt_pub_key_cb"
.LASF474:
	.string	"le_init"
.LASF501:
	.string	"evtype"
.LASF117:
	.string	"__bufs"
.LASF386:
	.string	"update_work"
.LASF184:
	.string	"bt_hci_rp_le_read_supp_states"
.LASF574:
	.string	"atomic_or"
.LASF26:
	.string	"_dnode"
.LASF151:
	.string	"bt_hci_rp_le_read_buffer_size"
.LASF315:
	.string	"BT_KEYS_ALL"
.LASF12:
	.string	"long double"
.LASF302:
	.string	"BT_STORAGE_SLAVE_LTK"
.LASF403:
	.string	"read_bdaddr_complete"
.LASF51:
	.string	"k_timer"
.LASF242:
	.string	"local_rpa"
.LASF269:
	.string	"BT_SECURITY_HIGH"
.LASF125:
	.string	"param_len"
.LASF420:
	.string	"set_le_scan_enable"
.LASF71:
	.string	"work"
.LASF348:
	.string	"bt_dev_le"
.LASF492:
	.string	"hci_le_meta_event"
.LASF433:
	.string	"bt_init"
.LASF468:
	.string	"update_pending_id"
.LASF287:
	.string	"BT_HCI_DRIVER_BUS_USB"
.LASF122:
	.string	"handle"
.LASF194:
	.string	"tx_time"
.LASF359:
	.string	"sent_cmd"
.LASF602:
	.string	"k_queue_append"
.LASF342:
	.string	"BT_DEV_EXPLICIT_SCAN"
.LASF43:
	.string	"_stack_element_t"
.LASF497:
	.string	"info"
.LASF61:
	.string	"k_thread_entry_t"
.LASF243:
	.string	"peer_rpa"
.LASF354:
	.string	"id_addr"
.LASF321:
	.string	"bt_ltk"
.LASF540:
	.string	"rx_thread_data"
.LASF35:
	.string	"aos_task_t"
.LASF458:
	.string	"le_set_private_addr"
.LASF454:
	.string	"bt_hci_cmd_create"
.LASF160:
	.string	"channel_map"
.LASF611:
	.string	"bt_keys_find_addr"
.LASF102:
	.string	"size"
.LASF303:
	.string	"BT_STORAGE_LTK"
.LASF0:
	.string	"long long unsigned int"
.LASF18:
	.string	"u64_t"
.LASF116:
	.string	"destroy"
.LASF207:
	.string	"bt_hci_cp_le_set_phy"
.LASF495:
	.string	"le_adv_report"
.LASF124:
	.string	"opcode"
.LASF227:
	.string	"bt_hci_evt_le_advertising_info"
.LASF230:
	.string	"length"
.LASF509:
	.string	"pool"
.LASF45:
	.string	"_queue"
.LASF414:
	.string	"update_sec_level"
.LASF141:
	.string	"bt_hci_rp_read_local_features"
.LASF596:
	.string	"net_buf_get"
.LASF522:
	.string	"bt_le_adv_stop"
.LASF221:
	.string	"bt_hci_evt_le_meta_event"
.LASF108:
	.string	"net_buf"
.LASF115:
	.string	"user_data_size"
.LASF387:
	.string	"cmd_data"
.LASF263:
	.string	"BT_CONN_TYPE_SCO"
.LASF595:
	.string	"net_buf_simple_pull_u8"
.LASF594:
	.string	"net_buf_simple_headroom"
.LASF393:
	.string	"sys_put_le16"
.LASF486:
	.string	"le_enh_conn_complete"
.LASF299:
	.string	"BT_STORAGE_ID_ADDR"
.LASF205:
	.string	"max_rx_octets"
.LASF378:
	.string	"BT_CONN_BR_PAIRING_INITIATOR"
.LASF130:
	.string	"bt_hci_cp_write_le_host_supp"
.LASF86:
	.string	"queue"
.LASF191:
	.string	"reason"
.LASF288:
	.string	"BT_HCI_DRIVER_BUS_PCCARD"
.LASF235:
	.string	"ediv"
.LASF425:
	.string	"bt_id_add"
.LASF215:
	.string	"bt_hci_evt_cmd_complete"
.LASF210:
	.string	"rx_phys"
.LASF572:
	.string	"bt_rand"
.LASF582:
	.string	"net_buf_simple_pull"
.LASF140:
	.string	"commands"
.LASF304:
	.string	"BT_STORAGE_IRK"
.LASF583:
	.string	"bt_conn_lookup_handle"
.LASF584:
	.string	"bt_conn_get_id"
.LASF161:
	.string	"filter_policy"
.LASF520:
	.string	"sd_len"
.LASF373:
	.string	"BT_CONN_AUTO_CONNECT"
.LASF244:
	.string	"bt_hci_evt_le_phy_update_complete"
.LASF58:
	.string	"k_thread"
.LASF162:
	.string	"bt_hci_cp_le_set_adv_data"
.LASF121:
	.string	"bt_hci_acl_hdr"
.LASF273:
	.string	"sec_level"
.LASF568:
	.string	"k_sem_delete"
.LASF170:
	.string	"filter_dup"
.LASF232:
	.string	"bt_hci_evt_le_remote_feat_complete"
.LASF36:
	.string	"aos_sem_t"
.LASF200:
	.string	"peer_id_addr"
.LASF357:
	.string	"init"
.LASF17:
	.string	"u32_t"
.LASF490:
	.string	"hci_acl"
.LASF473:
	.string	"common_init"
.LASF144:
	.string	"acl_max_len"
.LASF570:
	.string	"memcmp"
.LASF549:
	.string	"aos_log_level"
.LASF422:
	.string	"adv_enabled"
.LASF240:
	.string	"dhkey"
.LASF74:
	.string	"_POLL_TYPE_SIGNAL"
.LASF165:
	.string	"interval"
.LASF112:
	.string	"buf_count"
.LASF156:
	.string	"min_interval"
.LASF296:
	.string	"name"
.LASF351:
	.string	"rl_size"
.LASF158:
	.string	"own_addr_type"
.LASF597:
	.string	"k_yield"
.LASF523:
	.string	"valid_le_scan_param"
.LASF324:
	.string	"enc_size"
.LASF237:
	.string	"bt_hci_evt_le_data_len_change"
.LASF410:
	.string	"le_pkey_complete"
.LASF622:
	.string	"init_work"
.LASF469:
	.string	"create_random_addr"
.LASF3:
	.string	"short int"
.LASF598:
	.string	"bt_conn_notify_tx"
.LASF514:
	.string	"bt_recv_prio"
.LASF95:
	.string	"mode"
.LASF364:
	.string	"func"
.LASF394:
	.string	"stack_analyze"
.LASF153:
	.string	"le_max_num"
.LASF113:
	.string	"uninit_count"
.LASF555:
	.string	"k_delayed_work_submit"
.LASF225:
	.string	"supv_timeout"
.LASF38:
	.string	"aos_timer_t"
.LASF270:
	.string	"BT_SECURITY_FIPS"
.LASF334:
	.string	"BT_DEV_ENABLE"
.LASF590:
	.string	"notify_le_param_updated"
.LASF395:
	.string	"stack"
.LASF209:
	.string	"tx_phys"
.LASF295:
	.string	"bt_hci_driver"
.LASF211:
	.string	"phy_opts"
.LASF391:
	.string	"sys_slist_is_empty"
.LASF104:
	.string	"net_buf_simple_state"
.LASF504:
	.string	"hci_rx_thread"
.LASF541:
	.string	"rx_thread_stack"
.LASF620:
	.string	"k_call_stacks_analyze"
.LASF375:
	.string	"BT_CONN_USER"
.LASF271:
	.string	"bt_security_t"
.LASF132:
	.string	"bt_hci_rp_read_local_version_info"
.LASF199:
	.string	"bt_hci_cp_le_add_dev_to_rl"
.LASF192:
	.string	"bt_hci_cp_le_set_data_len"
.LASF143:
	.string	"bt_hci_rp_read_buffer_size"
.LASF461:
	.string	"keys_add_id"
.LASF180:
	.string	"max_ce_len"
.LASF248:
	.string	"bt_data"
.LASF442:
	.string	"le_ltk_request"
.LASF411:
	.string	"hci_cmd_done"
.LASF241:
	.string	"bt_hci_evt_le_enh_conn_complete"
.LASF328:
	.string	"BT_LINK_KEY_DEBUG"
.LASF274:
	.string	"required_sec_level"
.LASF247:
	.string	"bt_ready_cb_t"
.LASF516:
	.string	"bt_enable"
.LASF183:
	.string	"bt_hci_cp_le_ltk_req_neg_reply"
.LASF305:
	.string	"bt_storage"
.LASF150:
	.string	"bt_hci_cp_le_set_event_mask"
.LASF63:
	.string	"atomic_val_t"
.LASF417:
	.string	"le_data_len_change"
.LASF370:
	.string	"BT_CONN_CONNECTED"
.LASF358:
	.string	"ncmd_sem"
.LASF436:
	.string	"hci_le_set_data_len"
.LASF262:
	.string	"BT_CONN_TYPE_BR"
.LASF333:
	.string	"BT_EVENT_CONN_TX_QUEUE"
.LASF152:
	.string	"le_max_len"
.LASF349:
	.string	"states"
.LASF340:
	.string	"BT_DEV_KEEP_ADVERTISING"
.LASF532:
	.string	"bt_storage_clear"
.LASF491:
	.string	"hci_event"
.LASF217:
	.string	"bt_hci_evt_cmd_status"
.LASF10:
	.string	"uint32_t"
.LASF562:
	.string	"aos_malloc"
.LASF503:
	.string	"hci_le_create_conn"
.LASF202:
	.string	"local_irk"
.LASF76:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF623:
	.string	"bt_storage_clear_all"
.LASF472:
	.string	"hci_init"
.LASF616:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF621:
	.string	"show_dev_info"
.LASF48:
	.string	"k_fifo"
.LASF136:
	.string	"lmp_version"
.LASF464:
	.string	"hci_op"
.LASF111:
	.string	"free"
.LASF264:
	.string	"BT_CONN_ROLE_MASTER"
.LASF218:
	.string	"bt_hci_evt_num_completed_packets"
.LASF542:
	.string	"tx_thread_data"
.LASF201:
	.string	"peer_irk"
.LASF4:
	.string	"short unsigned int"
.LASF13:
	.string	"s8_t"
.LASF208:
	.string	"all_phys"
.LASF224:
	.string	"role"
.LASF134:
	.string	"hci_version"
.LASF62:
	.string	"atomic_t"
.LASF258:
	.string	"bt_le_oob"
.LASF68:
	.string	"_reserved"
.LASF179:
	.string	"min_ce_len"
.LASF15:
	.string	"u8_t"
.LASF147:
	.string	"sco_max_num"
.LASF600:
	.string	"bt_conn_prepare_events"
.LASF246:
	.string	"rx_phy"
.LASF47:
	.string	"k_lifo"
.LASF556:
	.string	"k_sem_give"
.LASF178:
	.string	"supervision_timeout"
.LASF254:
	.string	"options"
.LASF487:
	.string	"exit"
.LASF118:
	.string	"bt_addr_t"
.LASF392:
	.string	"sys_get_le16"
.LASF539:
	.string	"bt_le_oob_get_local"
.LASF502:
	.string	"failed"
.LASF219:
	.string	"num_handles"
.LASF80:
	.string	"_POLL_STATE_NOT_READY"
.LASF550:
	.string	"hci_cmd_pool"
.LASF498:
	.string	"rssi"
.LASF418:
	.string	"le_conn_update_complete"
.LASF131:
	.string	"simul"
.LASF82:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF513:
	.string	"sys_slist_get_not_empty"
.LASF127:
	.string	"events"
.LASF22:
	.string	"next"
.LASF206:
	.string	"max_rx_time"
.LASF101:
	.string	"data"
.LASF239:
	.string	"bt_hci_evt_le_generate_dhkey_complete"
.LASF301:
	.string	"BT_STORAGE_ADDRESSES"
.LASF98:
	.string	"K_POLL_MODE_NOTIFY_ONLY"
.LASF27:
	.string	"prev"
.LASF319:
	.string	"BT_KEYS_ID_PENDING_DEL"
.LASF338:
	.string	"BT_DEV_PUB_KEY_BUSY"
.LASF272:
	.string	"bt_conn"
.LASF577:
	.string	"bt_keys_foreach"
.LASF64:
	.string	"k_work_q"
.LASF84:
	.string	"_POLL_NUM_STATES"
.LASF482:
	.string	"set_static_addr"
.LASF538:
	.string	"remote_pk"
.LASF548:
	.string	"dh_key_cb"
.LASF519:
	.string	"bt_le_adv_start"
.LASF57:
	.string	"k_timer_t"
.LASF148:
	.string	"bt_hci_rp_read_bd_addr"
.LASF536:
	.string	"bt_pub_key_get"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
