	.file	"tftp_client.c"
	.text
.Ltext0:
	.section	.text.unlikely.tftp_fwrite,"ax",@progbits
.LCOLDB0:
	.section	.text.tftp_fwrite,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.tftp_fwrite
.Ltext_cold0:
	.section	.text.tftp_fwrite
	.type	tftp_fwrite, @function
tftp_fwrite:
.LFB23:
	.file 1 "kernel/protocols/net/apps/tftp/tftp_client.c"
	.loc 1 181 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$532, %esp
	.cfi_offset 3, -12
	.loc 1 181 0
	movl	12(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 184 0
	pushl	$0
	movzwl	8(%ebx), %eax
	pushl	%eax
	leal	-524(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	call	pbuf_copy_partial
.LVL2:
	.loc 1 188 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	.loc 1 187 0
	movzwl	8(%ebx), %eax
.LVL3:
	.loc 1 188 0
	je	.L2
	call	__stack_chk_fail
.LVL4:
.L2:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	tftp_fwrite, .-tftp_fwrite
	.section	.text.unlikely.tftp_fwrite
.LCOLDE0:
	.section	.text.tftp_fwrite
.LHOTE0:
	.section	.text.unlikely.tftp_fread,"ax",@progbits
.LCOLDB1:
	.section	.text.tftp_fread,"ax",@progbits
.LHOTB1:
	.type	tftp_fread, @function
tftp_fread:
.LFB22:
	.loc 1 174 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 176 0
	pushl	8(%ebp)
	pushl	16(%ebp)
	pushl	$1
	pushl	12(%ebp)
	call	fread
.LVL6:
	.loc 1 178 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	tftp_fread, .-tftp_fread
	.section	.text.unlikely.tftp_fread
.LCOLDE1:
	.section	.text.tftp_fread
.LHOTE1:
	.section	.text.unlikely.tftp_fclose,"ax",@progbits
.LCOLDB2:
	.section	.text.tftp_fclose,"ax",@progbits
.LHOTB2:
	.type	tftp_fclose, @function
tftp_fclose:
.LFB21:
	.loc 1 169 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 171 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 170 0
	jmp	fclose
.LVL8:
	.cfi_endproc
.LFE21:
	.size	tftp_fclose, .-tftp_fclose
	.section	.text.unlikely.tftp_fclose
.LCOLDE2:
	.section	.text.tftp_fclose
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"tftp: closing\n"
	.section	.text.unlikely.close_handle,"ax",@progbits
.LCOLDB4:
	.section	.text.close_handle,"ax",@progbits
.LHOTB4:
	.type	close_handle, @function
close_handle:
.LFB17:
	.loc 1 40 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	pushl	%ebx
	.cfi_offset 3, -16
	.loc 1 42 0
	pushl	%edi
	pushl	%edi
	.loc 1 40 0
	movl	%eax, %ebx
	.loc 1 42 0
	pushl	$0
	pushl	$tftp_tmr
	call	sys_untimeout
.LVL10:
	.loc 1 43 0
	popl	%eax
	pushl	tftp_state+4
	call	udp_remove
.LVL11:
	.loc 1 45 0
	movl	tftp_state+8, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L10
	.loc 1 46 0
	subl	$12, %esp
	pushl	%eax
	movl	tftp_state, %eax
	call	*4(%eax)
.LVL12:
	.loc 1 47 0
	movl	$0, tftp_state+8
	addl	$16, %esp
.L10:
	.loc 1 49 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC3
	call	bk_printf
.LVL13:
	.loc 1 51 0 discriminator 1
	movl	tftp_state+12, %edx
	addl	$16, %esp
	testl	%edx, %edx
	je	.L11
	.loc 1 52 0
	testl	%ebx, %ebx
	movl	$-1, %eax
	cmove	tftp_state+28, %eax
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%ebx
	call	*%edx
.LVL14:
	addl	$16, %esp
.L11:
	.loc 1 53 0
	movl	$tftp_state, %edx
	movl	$11, %ecx
	xorl	%eax, %eax
	movl	%edx, %edi
	rep stosl
	.loc 1 54 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL15:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	close_handle, .-close_handle
	.section	.text.unlikely.close_handle
.LCOLDE4:
	.section	.text.close_handle
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"r"
.LC6:
	.string	"w"
.LC7:
	.string	"rb"
.LC8:
	.string	"wb"
.LC9:
	.string	"netascii"
.LC10:
	.string	"octet"
	.section	.text.unlikely.tftp_fopen,"ax",@progbits
.LCOLDB11:
	.section	.text.tftp_fopen,"ax",@progbits
.LHOTB11:
	.type	tftp_fopen, @function
tftp_fopen:
.LFB20:
	.loc 1 157 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 157 0
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
.LVL17:
	.loc 1 160 0
	pushl	$8
	pushl	$.LC9
	.loc 1 157 0
	movl	16(%ebp), %esi
	.loc 1 160 0
	pushl	%edi
	call	strncmp
.LVL18:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L22
	.loc 1 161 0
	movl	%esi, %eax
	movl	$.LC6, %edx
	testb	%al, %al
	movl	$.LC5, %eax
	cmovne	%edx, %eax
	movl	%eax, 12(%ebp)
	jmp	.L29
.L22:
	.loc 1 162 0
	pushl	%eax
	pushl	$5
	pushl	$.LC10
	pushl	%edi
	call	strncmp
.LVL19:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L24
.LVL20:
.LBB5:
.LBB6:
	.loc 1 163 0
	movl	%esi, %eax
	movl	$.LC8, %edx
	movl	%ebx, 8(%ebp)
	testb	%al, %al
	movl	$.LC7, %eax
	cmovne	%edx, %eax
	movl	%eax, 12(%ebp)
.LVL21:
.L29:
.LBE6:
.LBE5:
	.loc 1 166 0
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
.LBB8:
.LBB7:
	.loc 1 163 0
	jmp	fopen
.LVL22:
.L24:
	.cfi_restore_state
.LBE7:
.LBE8:
	.loc 1 166 0
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
.LFE20:
	.size	tftp_fopen, .-tftp_fopen
	.section	.text.unlikely.tftp_fopen
.LCOLDE11:
	.section	.text.tftp_fopen
.LHOTE11:
	.section	.rodata.str1.1
.LC12:
	.string	"tftp: timeout, retrying...............\n"
.LC13:
	.string	"wait packet timeout"
.LC14:
	.string	"tftp: timeout\n"
	.section	.text.unlikely.tftp_tmr,"ax",@progbits
.LCOLDB15:
	.section	.text.tftp_tmr,"ax",@progbits
.LHOTB15:
	.type	tftp_tmr, @function
tftp_tmr:
.LFB18:
	.loc 1 57 0
	.cfi_startproc
.LVL23:
	.loc 1 59 0
	incw	tftp_state+32
	.loc 1 61 0
	cmpl	$0, tftp_state+8
	je	.L37
	.loc 1 57 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 65 0
	pushl	$0
	pushl	$tftp_tmr
	pushl	$50
	call	sys_timeout
.LVL24:
	.loc 1 67 0
	movzwl	tftp_state+32, %eax
	movzwl	tftp_state+34, %edx
	addl	$16, %esp
	subl	%edx, %eax
	cmpl	$20, %eax
	jle	.L30
	.loc 1 68 0
	cmpw	$1, tftp_state+22
	jbe	.L34
	.loc 1 68 0 is_stmt 0 discriminator 1
	cmpw	$4, tftp_state+36
	ja	.L34
.LVL25:
.LBB11:
.LBB12:
	.loc 1 69 0 is_stmt 1
	subl	$12, %esp
	pushl	$.LC12
	call	bk_printf
.LVL26:
	.loc 1 70 0
	movzwl	tftp_state+24, %eax
	pushl	%eax
	movzwl	tftp_state+20, %eax
	pushl	%eax
	pushl	$tftp_state+16
	pushl	tftp_state+4
	call	tftp_send_ack
.LVL27:
	.loc 1 71 0
	incw	tftp_state+36
	addl	$32, %esp
	jmp	.L30
.LVL28:
.L34:
.LBE12:
.LBE11:
	.loc 1 73 0
	movzwl	tftp_state+20, %eax
	subl	$12, %esp
	pushl	$.LC13
	pushl	$4
	pushl	%eax
	pushl	$tftp_state+16
	pushl	tftp_state+4
	call	tftp_send_error
.LVL29:
	.loc 1 75 0
	addl	$20, %esp
	pushl	$.LC14
	call	bk_printf
.LVL30:
	.loc 1 76 0
	addl	$16, %esp
	.loc 1 79 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 76 0
	orl	$-1, %eax
	jmp	close_handle
.LVL31:
.L30:
	.cfi_restore_state
	.loc 1 79 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L37:
	ret
	.cfi_endproc
.LFE18:
	.size	tftp_tmr, .-tftp_tmr
	.section	.text.unlikely.tftp_tmr
.LCOLDE15:
	.section	.text.tftp_tmr
.LHOTE15:
	.section	.rodata.str1.1
.LC16:
	.string	"port or addr illegal"
.LC17:
	.string	"received repeated block '%d', len='%u'\n"
.LC18:
	.string	"received error block '%d', len='%u'\n"
.LC19:
	.string	"seqno error"
.LC20:
	.string	"received new block '%d', len='%u'\n"
.LC21:
	.string	"disk full"
.LC22:
	.string	"write block failed\n"
.LC23:
	.string	"get succeed: received %u bytes in %u mS\n"
.LC24:
	.string	"sever return error '%d', msg: '%s'\n"
	.section	.text.unlikely.recv,"ax",@progbits
.LCOLDB25:
	.section	.text.recv,"ax",@progbits
.LHOTB25:
	.type	recv, @function
recv:
.LFB19:
	.loc 1 82 0
	.cfi_startproc
.LVL32:
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
	.loc 1 84 0
	cmpw	$0, tftp_state+22
	.loc 1 82 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %ecx
	movl	24(%ebp), %ebx
	.loc 1 84 0
	jne	.L39
	.loc 1 84 0 is_stmt 0 discriminator 1
	movl	(%ecx), %eax
	cmpl	%eax, tftp_state+16
	jne	.L39
	.loc 1 85 0 is_stmt 1
	movw	%bx, tftp_state+20
	.loc 1 86 0
	movw	$1, tftp_state+22
.L39:
	.loc 1 89 0
	cmpw	tftp_state+20, %bx
	jne	.L40
	.loc 1 89 0 is_stmt 0 discriminator 1
	movl	(%ecx), %eax
	cmpl	%eax, tftp_state+16
	je	.L41
.L40:
	.loc 1 90 0 is_stmt 1
	subl	$12, %esp
	movzwl	%bx, %ebx
	pushl	$.LC16
	pushl	$5
	pushl	%ebx
	pushl	%ecx
	pushl	tftp_state+4
	call	tftp_send_error
.LVL33:
	jmp	.L51
.L41:
.LVL34:
.LBB16:
.LBB17:
	.loc 1 96 0
	movl	4(%esi), %eax
.LVL35:
	.loc 1 97 0
	movl	tftp_state+32, %edx
	movw	%dx, tftp_state+34
.LVL36:
	.loc 1 100 0
	movw	(%eax), %dx
	xchgb	%dh, %dl
	cmpw	$3, %dx
	je	.L43
	cmpw	$5, %dx
	jne	.L42
.LBB18:
	.loc 1 146 0
	pushl	%edx
	leal	4(%eax), %edx
	pushl	%edx
	movw	2(%eax), %ax
.LVL37:
	xchgb	%ah, %al
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$.LC24
	jmp	.L49
.LVL38:
.L43:
	.loc 1 102 0
	movw	2(%eax), %ax
.LVL39:
	movzwl	%bx, %ebx
	xchgb	%ah, %al
	movw	%ax, -28(%ebp)
.LVL40:
	.loc 1 103 0
	movl	8(%esi), %eax
.LVL41:
	.loc 1 104 0
	movzwl	-28(%ebp), %edi
	.loc 1 103 0
	subl	$4, %eax
	.loc 1 104 0
	cmpw	tftp_state+22, %di
	.loc 1 103 0
	movw	%ax, -30(%ebp)
.LVL42:
	movzwl	-30(%ebp), %edx
	.loc 1 104 0
	jnb	.L45
.LVL43:
	.loc 1 105 0
	pushl	%eax
.LVL44:
	pushl	%edx
	pushl	%edi
	pushl	$.LC17
	call	bk_printf
.LVL45:
	.loc 1 107 0
	pushl	%edi
	pushl	%ebx
	pushl	$tftp_state+16
	pushl	tftp_state+4
	call	tftp_send_ack
.LVL46:
	.loc 1 108 0
	movl	-28(%ebp), %eax
	movw	%ax, tftp_state+24
.LVL47:
.L51:
	addl	$32, %esp
	jmp	.L42
.LVL48:
.L45:
	.loc 1 112 0
	jbe	.L46
.LVL49:
	.loc 1 113 0
	pushl	%eax
.LVL50:
	pushl	%edx
	pushl	%edi
	pushl	$.LC18
	movl	%ecx, -28(%ebp)
.LVL51:
	call	bk_printf
.LVL52:
	.loc 1 115 0
	movl	-28(%ebp), %ecx
	movl	$.LC19, (%esp)
	pushl	$4
	pushl	%ebx
	pushl	%ecx
	pushl	tftp_state+4
	call	tftp_send_error
.LVL53:
	.loc 1 117 0
	addl	$32, %esp
	orl	$-1, %eax
	call	close_handle
.LVL54:
	jmp	.L42
.LVL55:
.L46:
.LVL56:
	.loc 1 121 0
	pushl	%eax
.LVL57:
	pushl	%edx
	pushl	%edi
	pushl	$.LC20
	movl	%ecx, -40(%ebp)
	movl	%edx, -36(%ebp)
	call	bk_printf
.LVL58:
	.loc 1 123 0
	popl	%eax
	popl	%edx
	pushl	$-4
	pushl	%esi
	call	pbuf_header
.LVL59:
	.loc 1 124 0
	popl	%ecx
	popl	%eax
	movl	tftp_state, %eax
	pushl	%esi
	pushl	tftp_state+8
	call	*12(%eax)
.LVL60:
	.loc 1 125 0
	movl	-36(%ebp), %edx
	addl	$16, %esp
	cmpl	%eax, %edx
	je	.L47
	.loc 1 126 0
	movl	-40(%ebp), %ecx
	subl	$12, %esp
	pushl	$.LC21
	pushl	$3
	pushl	%ebx
	pushl	%ecx
	pushl	tftp_state+4
	call	tftp_send_error
.LVL61:
	.loc 1 127 0
	addl	$20, %esp
	pushl	$.LC22
	jmp	.L49
.LVL62:
.L47:
	.loc 1 132 0
	movl	-28(%ebp), %eax
.LVL63:
	.loc 1 135 0
	pushl	%edi
	pushl	%ebx
	pushl	$tftp_state+16
	pushl	tftp_state+4
	.loc 1 133 0
	addl	%edx, tftp_state+28
	.loc 1 134 0
	incw	tftp_state+22
	.loc 1 132 0
	movw	%ax, tftp_state+24
	.loc 1 135 0
	call	tftp_send_ack
.LVL64:
	.loc 1 137 0
	addl	$16, %esp
	cmpw	$511, -30(%ebp)
	ja	.L42
	.loc 1 138 0
	call	aos_now_ms
.LVL65:
	subl	tftp_state+40, %eax
	.loc 1 139 0
	pushl	%ecx
	pushl	%eax
	pushl	tftp_state+28
	pushl	$.LC23
	.loc 1 138 0
	movl	%eax, tftp_state+40
	.loc 1 139 0
	call	bk_printf
.LVL66:
	.loc 1 141 0
	xorl	%eax, %eax
	jmp	.L50
.LVL67:
.L49:
	.loc 1 146 0
	call	bk_printf
.LVL68:
	.loc 1 148 0
	orl	$-1, %eax
.L50:
	call	close_handle
.LVL69:
	addl	$16, %esp
.LVL70:
.L42:
.LBE18:
	.loc 1 153 0
	movl	%esi, 8(%ebp)
.LBE17:
.LBE16:
	.loc 1 154 0
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
.LBB20:
.LBB19:
	.loc 1 153 0
	jmp	pbuf_free
.LVL71:
.LBE19:
.LBE20:
	.cfi_endproc
.LFE19:
	.size	recv, .-recv
	.section	.text.unlikely.recv
.LCOLDE25:
	.section	.text.recv
.LHOTE25:
	.section	.rodata.str1.1
.LC26:
	.string	"error: open file '%s' failed\n"
.LC27:
	.string	"error: bind to port '%u' failed\n"
.LC28:
	.string	"error: alloc pbuf failed\n"
.LC29:
	.string	"error: send RRQ to server failed\n"
	.section	.text.unlikely.tftp_client_get,"ax",@progbits
.LCOLDB30:
	.section	.text.tftp_client_get,"ax",@progbits
.LHOTB30:
	.globl	tftp_client_get
	.type	tftp_client_get, @function
tftp_client_get:
.LFB24:
	.loc 1 199 0
	.cfi_startproc
.LVL72:
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
	.loc 1 203 0
	call	aos_now_ms
.LVL73:
	movl	%eax, tftp_state+40
	.loc 1 204 0
	pushl	%eax
	movl	16(%ebp), %eax
	pushl	$1
	pushl	$.LC9
	pushl	12(%ebp)
	call	*(%eax)
.LVL74:
	.loc 1 205 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 204 0
	movl	%eax, tftp_state+8
	.loc 1 205 0
	jne	.L53
	.loc 1 206 0 discriminator 1
	pushl	%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	$.LC26
	call	bk_printf
.LVL75:
	jmp	.L60
.L53:
	.loc 1 210 0
	subl	$12, %esp
	pushl	$46
	call	udp_new_ip_type
.LVL76:
	.loc 1 211 0
	addl	$16, %esp
	.loc 1 210 0
	movl	%eax, -28(%ebp)
.LVL77:
	.loc 1 212 0
	orl	$-1, %eax
.LVL78:
	.loc 1 211 0
	cmpl	$0, -28(%ebp)
	je	.L54
	.loc 1 215 0
	call	rand
.LVL79:
	.loc 1 216 0
	movl	$16384, %ecx
	cltd
	idivl	%ecx
.LVL80:
	subw	$16384, %dx
	pushl	%eax
	movzwl	%dx, %ebx
	pushl	%ebx
	pushl	$ip_addr_any
	pushl	-28(%ebp)
	call	udp_bind
.LVL81:
	.loc 1 217 0
	addl	$16, %esp
	testb	%al, %al
	.loc 1 216 0
	movb	%al, -29(%ebp)
.LVL82:
	.loc 1 217 0
	je	.L55
	.loc 1 218 0 discriminator 1
	pushl	%esi
	pushl	%esi
	pushl	%ebx
	pushl	$.LC27
	call	bk_printf
.LVL83:
	.loc 1 219 0 discriminator 1
	popl	%edi
	pushl	-28(%ebp)
	call	udp_remove
.LVL84:
	.loc 1 220 0 discriminator 1
	movsbl	-29(%ebp), %eax
	addl	$16, %esp
	jmp	.L54
.LVL85:
.L55:
	.loc 1 224 0
	movb	-29(%ebp), %al
.LVL86:
	movl	12(%ebp), %edi
	orl	$-1, %ecx
	repnz scasb
.LVL87:
	notl	%ecx
	leal	11(%ecx), %esi
.LVL88:
	.loc 1 225 0
	pushl	%ecx
	pushl	$0
	movzwl	%si, %eax
	pushl	%eax
	pushl	$0
	call	pbuf_alloc
.LVL89:
	.loc 1 226 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 225 0
	movl	%eax, %ebx
.LVL90:
	.loc 1 226 0
	jne	.L56
	.loc 1 227 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC28
	call	bk_printf
.LVL91:
.L61:
	.loc 1 228 0 discriminator 1
	popl	%edx
	pushl	-28(%ebp)
	call	udp_remove
.LVL92:
.L60:
	.loc 1 229 0 discriminator 1
	addl	$16, %esp
	orl	$-1, %eax
	jmp	.L54
.LVL93:
.L56:
	.loc 1 232 0
	movl	4(%eax), %edx
.LVL94:
	.loc 1 233 0
	movb	-29(%ebp), %al
.LVL95:
	movl	%esi, %ecx
	.loc 1 236 0
	movl	12(%ebp), %esi
.LVL96:
	.loc 1 233 0
	movl	%edx, %edi
	rep stosb
.LVL97:
	.loc 1 236 0
	movl	12(%ebp), %edi
	.loc 1 234 0
	movb	$0, (%edx)
	.loc 1 236 0
	orl	$-1, %ecx
	.loc 1 235 0
	movb	$1, 1(%edx)
	.loc 1 236 0
	repnz scasb
	leal	2(%edx), %eax
	notl	%ecx
	decl	%ecx
	movl	%eax, %edi
	.loc 1 237 0
	movb	-29(%ebp), %al
	.loc 1 236 0
	rep movsb
	.loc 1 237 0
	movl	12(%ebp), %edi
	orl	$-1, %ecx
	repnz scasb
	notl	%ecx
	leal	2(%edx,%ecx), %eax
	movl	$1635018094, (%eax)
	movl	$1768514419, 4(%eax)
	.loc 1 239 0
	pushl	$69
	pushl	8(%ebp)
	pushl	%ebx
	pushl	-28(%ebp)
	.loc 1 238 0
	movw	$69, tftp_state+20
	.loc 1 239 0
	call	udp_sendto
.LVL98:
	.loc 1 240 0
	addl	$16, %esp
	testb	%al, %al
	je	.L57
	.loc 1 241 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC29
	call	bk_printf
.LVL99:
	.loc 1 242 0 discriminator 1
	movl	%ebx, (%esp)
	call	pbuf_free
.LVL100:
	jmp	.L61
.LVL101:
.L57:
.LVL102:
	.loc 1 247 0
	pushl	%eax
	pushl	$0
	pushl	$recv
	pushl	-28(%ebp)
	call	udp_recv
.LVL103:
	.loc 1 250 0
	addl	$12, %esp
	.loc 1 248 0
	movw	$0, tftp_state+32
	.loc 1 249 0
	movw	$0, tftp_state+34
	.loc 1 250 0
	pushl	$0
	pushl	$tftp_tmr
	pushl	$50
	call	sys_timeout
.LVL104:
	.loc 1 251 0
	movl	-28(%ebp), %eax
	movl	%eax, tftp_state+4
	.loc 1 252 0
	movl	16(%ebp), %eax
	movl	%eax, tftp_state
	.loc 1 253 0
	movl	20(%ebp), %eax
	movl	%eax, tftp_state+12
	.loc 1 254 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	.loc 1 257 0
	movl	%ebx, (%esp)
	.loc 1 255 0
	movw	$0, tftp_state+22
	.loc 1 256 0
	movl	$0, tftp_state+28
	.loc 1 254 0
	movl	%eax, tftp_state+16
	.loc 1 257 0
	call	pbuf_free
.LVL105:
	.loc 1 258 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL106:
.L54:
	.loc 1 259 0
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
.LFE24:
	.size	tftp_client_get, .-tftp_client_get
	.section	.text.unlikely.tftp_client_get
.LCOLDE30:
	.section	.text.tftp_client_get
.LHOTE30:
	.globl	client_ctx
	.section	.rodata.client_ctx,"a",@progbits
	.align 4
	.type	client_ctx, @object
	.size	client_ctx, 16
client_ctx:
	.long	tftp_fopen
	.long	tftp_fclose
	.long	tftp_fread
	.long	tftp_fwrite
	.section	.bss.tftp_state,"aw",@nobits
	.align 32
	.type	tftp_state, @object
	.size	tftp_state, 44
tftp_state:
	.zero	44
	.text
.Letext0:
	.section	.text.unlikely.tftp_fwrite
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 9 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 10 "./kernel/protocols/net/include/lwip/err.h"
	.file 11 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 12 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 13 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 14 "./kernel/protocols/net/include/lwip/memp.h"
	.file 15 "./kernel/protocols/net/include/lwip/netif.h"
	.file 16 "./kernel/protocols/net/include/lwip/udp.h"
	.file 17 "./kernel/protocols/net/include/lwip/apps/tftp.h"
	.file 18 "./include/aos/log.h"
	.file 19 "./kernel/protocols/net/include/lwip/timeouts.h"
	.file 20 "././platform/mcu/moc108/include/driver/uart_pub.h"
	.file 21 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 22 "./include/aos/kernel.h"
	.file 23 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1505
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF273
	.byte	0xc
	.long	.LASF274
	.long	.LASF275
	.long	.Ldebug_ranges0+0x30
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0xd8
	.long	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x4
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF7
	.byte	0x3
	.byte	0x2b
	.long	0x6c
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x41
	.long	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x7
	.long	0x25
	.uleb128 0x3
	.long	.LASF14
	.byte	0x5
	.byte	0x2c
	.long	0x73
	.uleb128 0x3
	.long	.LASF15
	.byte	0x5
	.byte	0x72
	.long	0x73
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.value	0x165
	.long	0x37
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.long	0xdf
	.uleb128 0x7
	.long	.LASF17
	.byte	0x5
	.byte	0xa8
	.long	0xb4
	.uleb128 0x7
	.long	.LASF18
	.byte	0x5
	.byte	0xa9
	.long	0xdf
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0xef
	.uleb128 0x9
	.long	0xef
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.long	0x117
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0xa5
	.long	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.byte	0xaa
	.long	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0xab
	.long	0xf6
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0xaf
	.long	0x93
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.long	0x135
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF24
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x16
	.long	0x85
	.uleb128 0xe
	.long	.LASF30
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.long	0x19a
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0x31
	.long	0x19a
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.byte	0x32
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.byte	0x32
	.long	0x25
	.byte	0xc
	.uleb128 0xb
	.long	.LASF29
	.byte	0x6
	.byte	0x32
	.long	0x25
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.long	0x1a0
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x147
	.uleb128 0x8
	.long	0x13c
	.long	0x1b0
	.uleb128 0x9
	.long	0xef
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF31
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.long	0x229
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.byte	0x39
	.long	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.byte	0x3a
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.byte	0x3b
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.byte	0x3c
	.long	0x25
	.byte	0xc
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.byte	0x3d
	.long	0x25
	.byte	0x10
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.byte	0x3e
	.long	0x25
	.byte	0x14
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.byte	0x3f
	.long	0x25
	.byte	0x18
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.byte	0x40
	.long	0x25
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.byte	0x41
	.long	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.value	0x108
	.byte	0x6
	.byte	0x4a
	.long	0x269
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0x4b
	.long	0x269
	.byte	0
	.uleb128 0xb
	.long	.LASF43
	.byte	0x6
	.byte	0x4c
	.long	0x269
	.byte	0x80
	.uleb128 0x11
	.long	.LASF44
	.byte	0x6
	.byte	0x4e
	.long	0x13c
	.value	0x100
	.uleb128 0x11
	.long	.LASF45
	.byte	0x6
	.byte	0x51
	.long	0x13c
	.value	0x104
	.byte	0
	.uleb128 0x8
	.long	0x12d
	.long	0x279
	.uleb128 0x9
	.long	0xef
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF46
	.value	0x190
	.byte	0x6
	.byte	0x5d
	.long	0x2b7
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0x5e
	.long	0x2b7
	.byte	0
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0x5f
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF48
	.byte	0x6
	.byte	0x61
	.long	0x2bd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.byte	0x62
	.long	0x229
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x279
	.uleb128 0x8
	.long	0x2cd
	.long	0x2cd
	.uleb128 0x9
	.long	0xef
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2d3
	.uleb128 0x12
	.uleb128 0xe
	.long	.LASF49
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.long	0x2f9
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.byte	0x76
	.long	0x2f9
	.byte	0
	.uleb128 0xb
	.long	.LASF51
	.byte	0x6
	.byte	0x77
	.long	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x53
	.uleb128 0xe
	.long	.LASF52
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.long	0x429
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.long	0x2f9
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.long	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0xb9
	.long	0x5a
	.byte	0xc
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0xba
	.long	0x5a
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.long	0x2d4
	.byte	0x10
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.byte	0xbc
	.long	0x25
	.byte	0x18
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.byte	0xc3
	.long	0x12d
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.byte	0xc5
	.long	0x57f
	.byte	0x20
	.uleb128 0xb
	.long	.LASF58
	.byte	0x6
	.byte	0xc7
	.long	0x5ae
	.byte	0x24
	.uleb128 0xb
	.long	.LASF59
	.byte	0x6
	.byte	0xca
	.long	0x5d2
	.byte	0x28
	.uleb128 0xb
	.long	.LASF60
	.byte	0x6
	.byte	0xcb
	.long	0x5ec
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.long	0x2d4
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.long	0x2f9
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.long	0x25
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF61
	.byte	0x6
	.byte	0xd3
	.long	0x5f2
	.byte	0x40
	.uleb128 0xb
	.long	.LASF62
	.byte	0x6
	.byte	0xd4
	.long	0x602
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.long	0x2d4
	.byte	0x44
	.uleb128 0xb
	.long	.LASF63
	.byte	0x6
	.byte	0xda
	.long	0x25
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF64
	.byte	0x6
	.byte	0xdb
	.long	0x9e
	.byte	0x50
	.uleb128 0xb
	.long	.LASF65
	.byte	0x6
	.byte	0xde
	.long	0x447
	.byte	0x54
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.byte	0xe2
	.long	0x122
	.byte	0x58
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.byte	0xe4
	.long	0x117
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF68
	.byte	0x6
	.byte	0xe5
	.long	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x25
	.long	0x447
	.uleb128 0x14
	.long	0x447
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0x12f
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x44d
	.uleb128 0x15
	.long	.LASF69
	.value	0x424
	.byte	0x6
	.value	0x239
	.long	0x57f
	.uleb128 0x16
	.long	.LASF70
	.byte	0x6
	.value	0x23b
	.long	0x25
	.byte	0
	.uleb128 0x16
	.long	.LASF71
	.byte	0x6
	.value	0x240
	.long	0x659
	.byte	0x4
	.uleb128 0x16
	.long	.LASF72
	.byte	0x6
	.value	0x240
	.long	0x659
	.byte	0x8
	.uleb128 0x16
	.long	.LASF73
	.byte	0x6
	.value	0x240
	.long	0x659
	.byte	0xc
	.uleb128 0x16
	.long	.LASF74
	.byte	0x6
	.value	0x242
	.long	0x25
	.byte	0x10
	.uleb128 0x16
	.long	.LASF75
	.byte	0x6
	.value	0x243
	.long	0x83b
	.byte	0x14
	.uleb128 0x16
	.long	.LASF76
	.byte	0x6
	.value	0x246
	.long	0x25
	.byte	0x30
	.uleb128 0x16
	.long	.LASF77
	.byte	0x6
	.value	0x247
	.long	0x850
	.byte	0x34
	.uleb128 0x16
	.long	.LASF78
	.byte	0x6
	.value	0x249
	.long	0x25
	.byte	0x38
	.uleb128 0x16
	.long	.LASF79
	.byte	0x6
	.value	0x24b
	.long	0x861
	.byte	0x3c
	.uleb128 0x16
	.long	.LASF80
	.byte	0x6
	.value	0x24e
	.long	0x19a
	.byte	0x40
	.uleb128 0x16
	.long	.LASF81
	.byte	0x6
	.value	0x24f
	.long	0x25
	.byte	0x44
	.uleb128 0x16
	.long	.LASF82
	.byte	0x6
	.value	0x250
	.long	0x19a
	.byte	0x48
	.uleb128 0x16
	.long	.LASF83
	.byte	0x6
	.value	0x251
	.long	0x867
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF84
	.byte	0x6
	.value	0x254
	.long	0x25
	.byte	0x50
	.uleb128 0x16
	.long	.LASF85
	.byte	0x6
	.value	0x255
	.long	0x12f
	.byte	0x54
	.uleb128 0x16
	.long	.LASF86
	.byte	0x6
	.value	0x278
	.long	0x819
	.byte	0x58
	.uleb128 0x17
	.long	.LASF46
	.byte	0x6
	.value	0x27c
	.long	0x2b7
	.value	0x148
	.uleb128 0x17
	.long	.LASF87
	.byte	0x6
	.value	0x27d
	.long	0x279
	.value	0x14c
	.uleb128 0x17
	.long	.LASF88
	.byte	0x6
	.value	0x281
	.long	0x878
	.value	0x2dc
	.uleb128 0x17
	.long	.LASF89
	.byte	0x6
	.value	0x286
	.long	0x61e
	.value	0x2e0
	.uleb128 0x17
	.long	.LASF90
	.byte	0x6
	.value	0x287
	.long	0x884
	.value	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x429
	.uleb128 0x13
	.long	0x25
	.long	0x5a3
	.uleb128 0x14
	.long	0x447
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0x5a3
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5a9
	.uleb128 0x18
	.long	0x135
	.uleb128 0xd
	.byte	0x4
	.long	0x585
	.uleb128 0x13
	.long	0xa9
	.long	0x5d2
	.uleb128 0x14
	.long	0x447
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0xa9
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5b4
	.uleb128 0x13
	.long	0x25
	.long	0x5ec
	.uleb128 0x14
	.long	0x447
	.uleb128 0x14
	.long	0x12d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5d8
	.uleb128 0x8
	.long	0x53
	.long	0x602
	.uleb128 0x9
	.long	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0x612
	.uleb128 0x9
	.long	0xef
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF91
	.byte	0x6
	.value	0x11f
	.long	0x2ff
	.uleb128 0x19
	.long	.LASF92
	.byte	0xc
	.byte	0x6
	.value	0x123
	.long	0x653
	.uleb128 0x16
	.long	.LASF26
	.byte	0x6
	.value	0x125
	.long	0x653
	.byte	0
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.value	0x126
	.long	0x25
	.byte	0x4
	.uleb128 0x16
	.long	.LASF94
	.byte	0x6
	.value	0x127
	.long	0x659
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x61e
	.uleb128 0xd
	.byte	0x4
	.long	0x612
	.uleb128 0x19
	.long	.LASF95
	.byte	0xe
	.byte	0x6
	.value	0x13f
	.long	0x694
	.uleb128 0x16
	.long	.LASF96
	.byte	0x6
	.value	0x140
	.long	0x694
	.byte	0
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.value	0x141
	.long	0x694
	.byte	0x6
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.value	0x142
	.long	0x6c
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x6c
	.long	0x6a4
	.uleb128 0x9
	.long	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xcc
	.byte	0x6
	.value	0x259
	.long	0x7a5
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.value	0x25b
	.long	0x37
	.byte	0
	.uleb128 0x16
	.long	.LASF100
	.byte	0x6
	.value	0x25c
	.long	0x12f
	.byte	0x4
	.uleb128 0x16
	.long	.LASF101
	.byte	0x6
	.value	0x25d
	.long	0x7a5
	.byte	0x8
	.uleb128 0x16
	.long	.LASF102
	.byte	0x6
	.value	0x25e
	.long	0x1b0
	.byte	0x24
	.uleb128 0x16
	.long	.LASF103
	.byte	0x6
	.value	0x25f
	.long	0x25
	.byte	0x48
	.uleb128 0x16
	.long	.LASF104
	.byte	0x6
	.value	0x260
	.long	0x8c
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF105
	.byte	0x6
	.value	0x261
	.long	0x65f
	.byte	0x54
	.uleb128 0x16
	.long	.LASF106
	.byte	0x6
	.value	0x262
	.long	0x117
	.byte	0x64
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.value	0x263
	.long	0x117
	.byte	0x6c
	.uleb128 0x16
	.long	.LASF108
	.byte	0x6
	.value	0x264
	.long	0x117
	.byte	0x74
	.uleb128 0x16
	.long	.LASF109
	.byte	0x6
	.value	0x265
	.long	0x7b5
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF110
	.byte	0x6
	.value	0x266
	.long	0x7c5
	.byte	0x84
	.uleb128 0x16
	.long	.LASF111
	.byte	0x6
	.value	0x267
	.long	0x25
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF112
	.byte	0x6
	.value	0x268
	.long	0x117
	.byte	0xa0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x6
	.value	0x269
	.long	0x117
	.byte	0xa8
	.uleb128 0x16
	.long	.LASF114
	.byte	0x6
	.value	0x26a
	.long	0x117
	.byte	0xb0
	.uleb128 0x16
	.long	.LASF115
	.byte	0x6
	.value	0x26b
	.long	0x117
	.byte	0xb8
	.uleb128 0x16
	.long	.LASF116
	.byte	0x6
	.value	0x26c
	.long	0x117
	.byte	0xc0
	.uleb128 0x16
	.long	.LASF117
	.byte	0x6
	.value	0x26d
	.long	0x25
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.long	0x135
	.long	0x7b5
	.uleb128 0x9
	.long	0xef
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	0x135
	.long	0x7c5
	.uleb128 0x9
	.long	0xef
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x135
	.long	0x7d5
	.uleb128 0x9
	.long	0xef
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x6
	.value	0x272
	.long	0x7f9
	.uleb128 0x16
	.long	.LASF118
	.byte	0x6
	.value	0x275
	.long	0x7f9
	.byte	0
	.uleb128 0x16
	.long	.LASF119
	.byte	0x6
	.value	0x276
	.long	0x809
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2f9
	.long	0x809
	.uleb128 0x9
	.long	0xef
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x37
	.long	0x819
	.uleb128 0x9
	.long	0xef
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.value	0x257
	.long	0x83b
	.uleb128 0x1c
	.long	.LASF69
	.byte	0x6
	.value	0x26e
	.long	0x6a4
	.uleb128 0x1c
	.long	.LASF120
	.byte	0x6
	.value	0x277
	.long	0x7d5
	.byte	0
	.uleb128 0x8
	.long	0x135
	.long	0x84b
	.uleb128 0x9
	.long	0xef
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF276
	.uleb128 0xd
	.byte	0x4
	.long	0x84b
	.uleb128 0x1e
	.long	0x861
	.uleb128 0x14
	.long	0x447
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x856
	.uleb128 0xd
	.byte	0x4
	.long	0x19a
	.uleb128 0x1e
	.long	0x878
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x87e
	.uleb128 0xd
	.byte	0x4
	.long	0x86d
	.uleb128 0x8
	.long	0x612
	.long	0x894
	.uleb128 0x9
	.long	0xef
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF121
	.byte	0x7
	.byte	0x24
	.long	0x61
	.uleb128 0x3
	.long	.LASF122
	.byte	0x7
	.byte	0x30
	.long	0x7a
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF123
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF124
	.uleb128 0x3
	.long	.LASF125
	.byte	0x8
	.byte	0x42
	.long	0x612
	.uleb128 0x3
	.long	.LASF126
	.byte	0x9
	.byte	0x31
	.long	0x53
	.uleb128 0x3
	.long	.LASF127
	.byte	0x9
	.byte	0x32
	.long	0x4c
	.uleb128 0x3
	.long	.LASF128
	.byte	0x9
	.byte	0x33
	.long	0x6c
	.uleb128 0x3
	.long	.LASF129
	.byte	0x9
	.byte	0x34
	.long	0x5a
	.uleb128 0x3
	.long	.LASF130
	.byte	0x9
	.byte	0x35
	.long	0x85
	.uleb128 0x3
	.long	.LASF131
	.byte	0xa
	.byte	0x39
	.long	0x8ce
	.uleb128 0x1f
	.byte	0x4
	.long	0x25
	.byte	0xa
	.byte	0x3d
	.long	0x978
	.uleb128 0x20
	.long	.LASF132
	.byte	0
	.uleb128 0x21
	.long	.LASF133
	.sleb128 -1
	.uleb128 0x21
	.long	.LASF134
	.sleb128 -2
	.uleb128 0x21
	.long	.LASF135
	.sleb128 -3
	.uleb128 0x21
	.long	.LASF136
	.sleb128 -4
	.uleb128 0x21
	.long	.LASF137
	.sleb128 -5
	.uleb128 0x21
	.long	.LASF138
	.sleb128 -6
	.uleb128 0x21
	.long	.LASF139
	.sleb128 -7
	.uleb128 0x21
	.long	.LASF140
	.sleb128 -8
	.uleb128 0x21
	.long	.LASF141
	.sleb128 -9
	.uleb128 0x21
	.long	.LASF142
	.sleb128 -10
	.uleb128 0x21
	.long	.LASF143
	.sleb128 -11
	.uleb128 0x21
	.long	.LASF144
	.sleb128 -12
	.uleb128 0x21
	.long	.LASF145
	.sleb128 -13
	.uleb128 0x21
	.long	.LASF146
	.sleb128 -14
	.uleb128 0x21
	.long	.LASF147
	.sleb128 -15
	.uleb128 0x21
	.long	.LASF148
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x48
	.long	0x9a3
	.uleb128 0x20
	.long	.LASF149
	.byte	0
	.uleb128 0x20
	.long	.LASF150
	.byte	0x1
	.uleb128 0x20
	.long	.LASF151
	.byte	0x2
	.uleb128 0x20
	.long	.LASF152
	.byte	0x3
	.uleb128 0x20
	.long	.LASF153
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x69
	.long	0x9c8
	.uleb128 0x20
	.long	.LASF154
	.byte	0
	.uleb128 0x20
	.long	.LASF155
	.byte	0x1
	.uleb128 0x20
	.long	.LASF156
	.byte	0x2
	.uleb128 0x20
	.long	.LASF157
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF158
	.byte	0x10
	.byte	0xb
	.byte	0x9d
	.long	0xa29
	.uleb128 0xb
	.long	.LASF159
	.byte	0xb
	.byte	0x9f
	.long	0xa29
	.byte	0
	.uleb128 0xb
	.long	.LASF160
	.byte	0xb
	.byte	0xa2
	.long	0x12d
	.byte	0x4
	.uleb128 0xb
	.long	.LASF161
	.byte	0xb
	.byte	0xab
	.long	0x8d9
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0xb
	.byte	0xae
	.long	0x8d9
	.byte	0xa
	.uleb128 0xb
	.long	.LASF162
	.byte	0xb
	.byte	0xb1
	.long	0x8c3
	.byte	0xc
	.uleb128 0xb
	.long	.LASF163
	.byte	0xb
	.byte	0xb4
	.long	0x8c3
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0xb
	.byte	0xc2
	.long	0x8d9
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x9c8
	.uleb128 0xd
	.byte	0x4
	.long	0xa35
	.uleb128 0x1e
	.long	0xa40
	.uleb128 0x14
	.long	0x12d
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF164
	.uleb128 0xe
	.long	.LASF165
	.byte	0x4
	.byte	0xc
	.byte	0x35
	.long	0xa60
	.uleb128 0xb
	.long	.LASF166
	.byte	0xc
	.byte	0x36
	.long	0x8ef
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF167
	.byte	0xc
	.byte	0x49
	.long	0xa47
	.uleb128 0x22
	.long	.LASF187
	.byte	0x4
	.long	0x37
	.byte	0xd
	.byte	0x36
	.long	0xa8e
	.uleb128 0x20
	.long	.LASF168
	.byte	0
	.uleb128 0x20
	.long	.LASF169
	.byte	0x6
	.uleb128 0x20
	.long	.LASF170
	.byte	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF171
	.byte	0xd
	.byte	0xe1
	.long	0xa60
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0xe
	.byte	0x32
	.long	0xb00
	.uleb128 0x20
	.long	.LASF172
	.byte	0
	.uleb128 0x20
	.long	.LASF173
	.byte	0x1
	.uleb128 0x20
	.long	.LASF174
	.byte	0x2
	.uleb128 0x20
	.long	.LASF175
	.byte	0x3
	.uleb128 0x20
	.long	.LASF176
	.byte	0x4
	.uleb128 0x20
	.long	.LASF177
	.byte	0x5
	.uleb128 0x20
	.long	.LASF178
	.byte	0x6
	.uleb128 0x20
	.long	.LASF179
	.byte	0x7
	.uleb128 0x20
	.long	.LASF180
	.byte	0x8
	.uleb128 0x20
	.long	.LASF181
	.byte	0x9
	.uleb128 0x20
	.long	.LASF182
	.byte	0xa
	.uleb128 0x20
	.long	.LASF183
	.byte	0xb
	.uleb128 0x20
	.long	.LASF184
	.byte	0xc
	.uleb128 0x20
	.long	.LASF185
	.byte	0xd
	.uleb128 0x20
	.long	.LASF186
	.byte	0xe
	.byte	0
	.uleb128 0x22
	.long	.LASF188
	.byte	0x4
	.long	0x37
	.byte	0xf
	.byte	0x6b
	.long	0xb23
	.uleb128 0x20
	.long	.LASF189
	.byte	0
	.uleb128 0x20
	.long	.LASF190
	.byte	0x1
	.uleb128 0x20
	.long	.LASF191
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF192
	.byte	0x10
	.byte	0x4d
	.long	0xb2e
	.uleb128 0xd
	.byte	0x4
	.long	0xb34
	.uleb128 0x1e
	.long	0xb53
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0xb53
	.uleb128 0x14
	.long	0xa29
	.uleb128 0x14
	.long	0xc02
	.uleb128 0x14
	.long	0x8d9
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xb59
	.uleb128 0xe
	.long	.LASF193
	.byte	0x28
	.byte	0x10
	.byte	0x51
	.long	0xc02
	.uleb128 0xb
	.long	.LASF194
	.byte	0x10
	.byte	0x53
	.long	0xa8e
	.byte	0
	.uleb128 0xb
	.long	.LASF195
	.byte	0x10
	.byte	0x53
	.long	0xa8e
	.byte	0x4
	.uleb128 0xb
	.long	.LASF196
	.byte	0x10
	.byte	0x53
	.long	0x8c3
	.byte	0x8
	.uleb128 0xf
	.string	"tos"
	.byte	0x10
	.byte	0x53
	.long	0x8c3
	.byte	0x9
	.uleb128 0xf
	.string	"ttl"
	.byte	0x10
	.byte	0x53
	.long	0x8c3
	.byte	0xa
	.uleb128 0xb
	.long	.LASF159
	.byte	0x10
	.byte	0x57
	.long	0xb53
	.byte	0xc
	.uleb128 0xb
	.long	.LASF163
	.byte	0x10
	.byte	0x59
	.long	0x8c3
	.byte	0x10
	.uleb128 0xb
	.long	.LASF197
	.byte	0x10
	.byte	0x5b
	.long	0x8d9
	.byte	0x12
	.uleb128 0xb
	.long	.LASF198
	.byte	0x10
	.byte	0x5b
	.long	0x8d9
	.byte	0x14
	.uleb128 0xb
	.long	.LASF199
	.byte	0x10
	.byte	0x5f
	.long	0xa8e
	.byte	0x18
	.uleb128 0xb
	.long	.LASF200
	.byte	0x10
	.byte	0x61
	.long	0x8c3
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF201
	.byte	0x10
	.byte	0x6a
	.long	0xb23
	.byte	0x20
	.uleb128 0xb
	.long	.LASF202
	.byte	0x10
	.byte	0x6c
	.long	0x12d
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xc08
	.uleb128 0x18
	.long	0xa8e
	.uleb128 0x22
	.long	.LASF203
	.byte	0x4
	.long	0x37
	.byte	0x11
	.byte	0x41
	.long	0xc48
	.uleb128 0x20
	.long	.LASF204
	.byte	0x1
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2
	.uleb128 0x20
	.long	.LASF206
	.byte	0x3
	.uleb128 0x20
	.long	.LASF207
	.byte	0x4
	.uleb128 0x20
	.long	.LASF208
	.byte	0x5
	.uleb128 0x20
	.long	.LASF209
	.byte	0x6
	.uleb128 0x20
	.long	.LASF210
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF211
	.byte	0x10
	.byte	0x11
	.byte	0x4b
	.long	0xc85
	.uleb128 0xb
	.long	.LASF212
	.byte	0x11
	.byte	0x53
	.long	0xc9e
	.byte	0
	.uleb128 0xb
	.long	.LASF213
	.byte	0x11
	.byte	0x58
	.long	0xa2f
	.byte	0x4
	.uleb128 0xb
	.long	.LASF214
	.byte	0x11
	.byte	0x60
	.long	0xcbd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF215
	.byte	0x11
	.byte	0x69
	.long	0xcd7
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	0x12d
	.long	0xc9e
	.uleb128 0x14
	.long	0x5a3
	.uleb128 0x14
	.long	0x5a3
	.uleb128 0x14
	.long	0x8c3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xc85
	.uleb128 0x13
	.long	0x25
	.long	0xcbd
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xca4
	.uleb128 0x13
	.long	0x25
	.long	0xcd7
	.uleb128 0x14
	.long	0x12d
	.uleb128 0x14
	.long	0xa29
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xcc3
	.uleb128 0x3
	.long	.LASF216
	.byte	0x11
	.byte	0x6a
	.long	0xc48
	.uleb128 0x3
	.long	.LASF217
	.byte	0x11
	.byte	0x6c
	.long	0xcf3
	.uleb128 0xd
	.byte	0x4
	.long	0xcf9
	.uleb128 0x1e
	.long	0xd09
	.uleb128 0x14
	.long	0x25
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xe
	.long	.LASF218
	.byte	0x2c
	.byte	0x1
	.byte	0xe
	.long	0xdbd
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0xf
	.long	0xdbd
	.byte	0
	.uleb128 0xb
	.long	.LASF219
	.byte	0x1
	.byte	0x10
	.long	0xb53
	.byte	0x4
	.uleb128 0xb
	.long	.LASF220
	.byte	0x1
	.byte	0x11
	.long	0x12d
	.byte	0x8
	.uleb128 0xf
	.string	"cb"
	.byte	0x1
	.byte	0x12
	.long	0xce8
	.byte	0xc
	.uleb128 0xb
	.long	.LASF166
	.byte	0x1
	.byte	0x13
	.long	0xa8e
	.byte	0x10
	.uleb128 0xb
	.long	.LASF221
	.byte	0x1
	.byte	0x14
	.long	0x894
	.byte	0x14
	.uleb128 0xb
	.long	.LASF222
	.byte	0x1
	.byte	0x15
	.long	0x894
	.byte	0x16
	.uleb128 0xb
	.long	.LASF223
	.byte	0x1
	.byte	0x16
	.long	0x894
	.byte	0x18
	.uleb128 0xf
	.string	"seq"
	.byte	0x1
	.byte	0x17
	.long	0x894
	.byte	0x1a
	.uleb128 0xb
	.long	.LASF224
	.byte	0x1
	.byte	0x18
	.long	0x25
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF225
	.byte	0x1
	.byte	0x19
	.long	0x894
	.byte	0x20
	.uleb128 0xb
	.long	.LASF226
	.byte	0x1
	.byte	0x1a
	.long	0x894
	.byte	0x22
	.uleb128 0xb
	.long	.LASF227
	.byte	0x1
	.byte	0x1b
	.long	0x894
	.byte	0x24
	.uleb128 0xb
	.long	.LASF228
	.byte	0x1
	.byte	0x1c
	.long	0x89f
	.byte	0x28
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xdc3
	.uleb128 0x18
	.long	0xcdd
	.uleb128 0x3
	.long	.LASF229
	.byte	0x1
	.byte	0x1d
	.long	0xd09
	.uleb128 0x23
	.long	.LASF277
	.byte	0x1
	.byte	0x9c
	.long	0x12d
	.byte	0x1
	.long	0xe0f
	.uleb128 0x24
	.long	.LASF230
	.byte	0x1
	.byte	0x9c
	.long	0x5a3
	.uleb128 0x24
	.long	.LASF231
	.byte	0x1
	.byte	0x9c
	.long	0x5a3
	.uleb128 0x24
	.long	.LASF215
	.byte	0x1
	.byte	0x9c
	.long	0x8c3
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.byte	0x9e
	.long	0xe0f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x8b8
	.uleb128 0x26
	.long	.LASF233
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.long	0xe38
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x38
	.long	0x12d
	.uleb128 0x28
	.long	.LASF232
	.byte	0x1
	.byte	0x3a
	.long	0xe38
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xdc8
	.uleb128 0x26
	.long	.LASF201
	.byte	0x1
	.byte	0x51
	.byte	0x1
	.long	0xec4
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.byte	0x51
	.long	0x12d
	.uleb128 0x24
	.long	.LASF219
	.byte	0x1
	.byte	0x51
	.long	0xb53
	.uleb128 0x27
	.string	"p"
	.byte	0x1
	.byte	0x51
	.long	0xa29
	.uleb128 0x24
	.long	.LASF166
	.byte	0x1
	.byte	0x51
	.long	0xc02
	.uleb128 0x24
	.long	.LASF221
	.byte	0x1
	.byte	0x51
	.long	0x8d9
	.uleb128 0x28
	.long	.LASF232
	.byte	0x1
	.byte	0x53
	.long	0xe38
	.uleb128 0x28
	.long	.LASF234
	.byte	0x1
	.byte	0x60
	.long	0xec4
	.uleb128 0x28
	.long	.LASF235
	.byte	0x1
	.byte	0x62
	.long	0x894
	.uleb128 0x28
	.long	.LASF236
	.byte	0x1
	.byte	0x63
	.long	0x894
	.uleb128 0x28
	.long	.LASF237
	.byte	0x1
	.byte	0x63
	.long	0x894
	.uleb128 0x29
	.uleb128 0x28
	.long	.LASF238
	.byte	0x1
	.byte	0x7c
	.long	0x25
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x8d9
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x1
	.byte	0xb4
	.long	0x25
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2e
	.uleb128 0x2b
	.long	.LASF220
	.byte	0x1
	.byte	0xb4
	.long	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"p"
	.byte	0x1
	.byte	0xb4
	.long	0xa29
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	.LASF239
	.byte	0x1
	.byte	0xb6
	.long	0xf2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -532
	.uleb128 0x2e
	.long	.LASF240
	.byte	0x1
	.byte	0xb7
	.long	0x2c
	.long	.LLST0
	.uleb128 0x2f
	.long	.LVL2
	.long	0x141f
	.uleb128 0x2f
	.long	.LVL4
	.long	0x142b
	.byte	0
	.uleb128 0x8
	.long	0x135
	.long	0xf3f
	.uleb128 0x30
	.long	0xef
	.value	0x1ff
	.byte	0
	.uleb128 0x2a
	.long	.LASF242
	.byte	0x1
	.byte	0xad
	.long	0x25
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xf99
	.uleb128 0x2b
	.long	.LASF220
	.byte	0x1
	.byte	0xad
	.long	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"buf"
	.byte	0x1
	.byte	0xad
	.long	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF243
	.byte	0x1
	.byte	0xad
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF244
	.byte	0x1
	.byte	0xaf
	.long	0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2f
	.long	.LVL6
	.long	0x1434
	.byte	0
	.uleb128 0x31
	.long	.LASF245
	.byte	0x1
	.byte	0xa8
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0xfcf
	.uleb128 0x2b
	.long	.LASF220
	.byte	0x1
	.byte	0xa8
	.long	0x12d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x32
	.long	.LVL8
	.long	0x143f
	.uleb128 0x33
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF246
	.byte	0x1
	.byte	0x27
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x1021
	.uleb128 0x35
	.string	"err"
	.byte	0x1
	.byte	0x27
	.long	0x25
	.long	.LLST1
	.uleb128 0x2d
	.long	.LASF232
	.byte	0x1
	.byte	0x29
	.long	0xe38
	.uleb128 0x6
	.byte	0x3
	.long	tftp_state
	.byte	0x9f
	.uleb128 0x2f
	.long	.LVL10
	.long	0x144a
	.uleb128 0x2f
	.long	.LVL11
	.long	0x1455
	.uleb128 0x2f
	.long	.LVL13
	.long	0x1460
	.byte	0
	.uleb128 0x36
	.long	0xdd3
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x109e
	.uleb128 0x37
	.long	0xde3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	0xdee
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	0xdf9
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	0xe04
	.byte	0
	.uleb128 0x39
	.long	.Ldebug_ranges0+0
	.long	0x108b
	.uleb128 0x3a
	.long	0xdee
	.long	.LLST2
	.uleb128 0x3a
	.long	0xdf9
	.long	.LLST3
	.uleb128 0x3a
	.long	0xde3
	.long	.LLST4
	.uleb128 0x3b
	.long	.Ldebug_ranges0+0
	.uleb128 0x3c
	.long	0xe04
	.uleb128 0x3d
	.long	.LVL22
	.long	0x146b
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL18
	.long	0x1476
	.uleb128 0x2f
	.long	.LVL19
	.long	0x1476
	.byte	0
	.uleb128 0x36
	.long	0xe15
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x1129
	.uleb128 0x37
	.long	0xe21
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3e
	.long	0xe2c
	.uleb128 0x6
	.byte	0x3
	.long	tftp_state
	.byte	0x9f
	.uleb128 0x3f
	.long	.LBB11
	.long	.LBE11-.LBB11
	.long	0x10fd
	.uleb128 0x3a
	.long	0xe21
	.long	.LLST5
	.uleb128 0x40
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x3c
	.long	0xe2c
	.uleb128 0x2f
	.long	.LVL26
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL27
	.long	0x1481
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL24
	.long	0x148c
	.uleb128 0x2f
	.long	.LVL29
	.long	0x1497
	.uleb128 0x2f
	.long	.LVL30
	.long	0x1460
	.uleb128 0x32
	.long	.LVL31
	.long	0xfcf
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x41
	.long	0xe3e
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x1294
	.uleb128 0x37
	.long	0xe4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	0xe55
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.long	0xe60
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	0xe69
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	0xe74
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x3e
	.long	0xe7f
	.uleb128 0x6
	.byte	0x3
	.long	tftp_state
	.byte	0x9f
	.uleb128 0x3c
	.long	0xe8a
	.uleb128 0x3c
	.long	0xe95
	.uleb128 0x3c
	.long	0xea0
	.uleb128 0x3c
	.long	0xeab
	.uleb128 0x39
	.long	.Ldebug_ranges0+0x18
	.long	0x128a
	.uleb128 0x3a
	.long	0xe4a
	.long	.LLST6
	.uleb128 0x3a
	.long	0xe55
	.long	.LLST7
	.uleb128 0x3a
	.long	0xe74
	.long	.LLST8
	.uleb128 0x3a
	.long	0xe69
	.long	.LLST9
	.uleb128 0x3a
	.long	0xe60
	.long	.LLST10
	.uleb128 0x3b
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x3c
	.long	0xe7f
	.uleb128 0x42
	.long	0xe8a
	.long	.LLST11
	.uleb128 0x42
	.long	0xe95
	.long	.LLST12
	.uleb128 0x42
	.long	0xea0
	.long	.LLST13
	.uleb128 0x42
	.long	0xeab
	.long	.LLST14
	.uleb128 0x3f
	.long	.LBB18
	.long	.LBE18-.LBB18
	.long	0x127f
	.uleb128 0x42
	.long	0xeb7
	.long	.LLST15
	.uleb128 0x2f
	.long	.LVL45
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL46
	.long	0x1481
	.uleb128 0x2f
	.long	.LVL52
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL53
	.long	0x1497
	.uleb128 0x43
	.long	.LVL54
	.long	0xfcf
	.long	0x1236
	.uleb128 0x33
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2f
	.long	.LVL58
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL59
	.long	0x14a2
	.uleb128 0x2f
	.long	.LVL61
	.long	0x1497
	.uleb128 0x2f
	.long	.LVL64
	.long	0x1481
	.uleb128 0x2f
	.long	.LVL65
	.long	0x14ae
	.uleb128 0x2f
	.long	.LVL66
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL68
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL69
	.long	0xfcf
	.byte	0
	.uleb128 0x3d
	.long	.LVL71
	.long	0x14ba
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LVL33
	.long	0x1497
	.byte	0
	.uleb128 0x44
	.long	.LASF278
	.byte	0x1
	.byte	0xc5
	.long	0x25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x13e0
	.uleb128 0x2b
	.long	.LASF247
	.byte	0x1
	.byte	0xc5
	.long	0xc02
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x45
	.long	.LASF230
	.byte	0x1
	.byte	0xc5
	.long	0x5a3
	.long	.LLST16
	.uleb128 0x2c
	.string	"ctx"
	.byte	0x1
	.byte	0xc6
	.long	0x13e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2c
	.string	"cb"
	.byte	0x1
	.byte	0xc6
	.long	0xce8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.byte	0xc8
	.long	0x8fa
	.long	.LLST17
	.uleb128 0x2d
	.long	.LASF232
	.byte	0x1
	.byte	0xc9
	.long	0xe38
	.uleb128 0x6
	.byte	0x3
	.long	tftp_state
	.byte	0x9f
	.uleb128 0x46
	.string	"pcb"
	.byte	0x1
	.byte	0xd2
	.long	0xb53
	.long	.LLST18
	.uleb128 0x2e
	.long	.LASF221
	.byte	0x1
	.byte	0xd7
	.long	0x894
	.long	.LLST19
	.uleb128 0x2e
	.long	.LASF248
	.byte	0x1
	.byte	0xe0
	.long	0x25
	.long	.LLST20
	.uleb128 0x46
	.string	"p"
	.byte	0x1
	.byte	0xe1
	.long	0xa29
	.long	.LLST21
	.uleb128 0x2e
	.long	.LASF160
	.byte	0x1
	.byte	0xe8
	.long	0x12f
	.long	.LLST22
	.uleb128 0x2f
	.long	.LVL73
	.long	0x14ae
	.uleb128 0x2f
	.long	.LVL75
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL76
	.long	0x14c6
	.uleb128 0x2f
	.long	.LVL79
	.long	0x14d1
	.uleb128 0x2f
	.long	.LVL81
	.long	0x14dc
	.uleb128 0x2f
	.long	.LVL83
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL84
	.long	0x1455
	.uleb128 0x2f
	.long	.LVL89
	.long	0x14e7
	.uleb128 0x2f
	.long	.LVL91
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL92
	.long	0x1455
	.uleb128 0x2f
	.long	.LVL98
	.long	0x14f2
	.uleb128 0x2f
	.long	.LVL99
	.long	0x1460
	.uleb128 0x2f
	.long	.LVL100
	.long	0x14ba
	.uleb128 0x2f
	.long	.LVL103
	.long	0x14fd
	.uleb128 0x2f
	.long	.LVL104
	.long	0x148c
	.uleb128 0x2f
	.long	.LVL105
	.long	0x14ba
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xcdd
	.uleb128 0x2d
	.long	.LASF249
	.byte	0x1
	.byte	0x1f
	.long	0xdc8
	.uleb128 0x5
	.byte	0x3
	.long	tftp_state
	.uleb128 0x47
	.long	.LASF250
	.byte	0x12
	.byte	0x17
	.long	0x37
	.uleb128 0x48
	.long	.LASF251
	.byte	0xd
	.value	0x138
	.long	0xc08
	.uleb128 0x49
	.long	.LASF252
	.byte	0x1
	.byte	0xbe
	.long	0xdc3
	.uleb128 0x5
	.byte	0x3
	.long	client_ctx
	.uleb128 0x4a
	.long	.LASF253
	.long	.LASF253
	.byte	0xb
	.value	0x10f
	.uleb128 0x4b
	.long	.LASF279
	.long	.LASF279
	.uleb128 0x4c
	.long	.LASF254
	.long	.LASF254
	.byte	0x8
	.byte	0xdf
	.uleb128 0x4c
	.long	.LASF255
	.long	.LASF255
	.byte	0x8
	.byte	0xbf
	.uleb128 0x4c
	.long	.LASF256
	.long	.LASF256
	.byte	0x13
	.byte	0x69
	.uleb128 0x4c
	.long	.LASF257
	.long	.LASF257
	.byte	0x10
	.byte	0x75
	.uleb128 0x4c
	.long	.LASF258
	.long	.LASF258
	.byte	0x14
	.byte	0x3d
	.uleb128 0x4c
	.long	.LASF259
	.long	.LASF259
	.byte	0x8
	.byte	0xf3
	.uleb128 0x4c
	.long	.LASF260
	.long	.LASF260
	.byte	0x15
	.byte	0x27
	.uleb128 0x4c
	.long	.LASF261
	.long	.LASF261
	.byte	0x1
	.byte	0x24
	.uleb128 0x4c
	.long	.LASF262
	.long	.LASF262
	.byte	0x13
	.byte	0x66
	.uleb128 0x4c
	.long	.LASF263
	.long	.LASF263
	.byte	0x1
	.byte	0x22
	.uleb128 0x4a
	.long	.LASF264
	.long	.LASF264
	.byte	0xb
	.value	0x106
	.uleb128 0x4a
	.long	.LASF265
	.long	.LASF265
	.byte	0x16
	.value	0x20e
	.uleb128 0x4a
	.long	.LASF266
	.long	.LASF266
	.byte	0xb
	.value	0x109
	.uleb128 0x4c
	.long	.LASF267
	.long	.LASF267
	.byte	0x10
	.byte	0x74
	.uleb128 0x4c
	.long	.LASF268
	.long	.LASF268
	.byte	0x17
	.byte	0x8c
	.uleb128 0x4c
	.long	.LASF269
	.long	.LASF269
	.byte	0x10
	.byte	0x76
	.uleb128 0x4c
	.long	.LASF270
	.long	.LASF270
	.byte	0xb
	.byte	0xfa
	.uleb128 0x4c
	.long	.LASF271
	.long	.LASF271
	.byte	0x10
	.byte	0x83
	.uleb128 0x4c
	.long	.LASF272
	.long	.LASF272
	.byte	0x10
	.byte	0x7b
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
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x33
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x35
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.long	.LVL1
	.long	.LVL2
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0x9
	.byte	0x73
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL10-1
	.long	.LVL15
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST4:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL25
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL34
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL48
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL34
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL48
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL34
	.long	.LVL47
	.value	0x1
	.byte	0x53
	.long	.LVL48
	.long	.LVL67
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL34
	.long	.LVL45-1
	.value	0x1
	.byte	0x51
	.long	.LVL45-1
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL48
	.long	.LVL52-1
	.value	0x1
	.byte	0x51
	.long	.LVL52-1
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL55
	.long	.LVL58-1
	.value	0x1
	.byte	0x51
	.long	.LVL58-1
	.long	.LVL70
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST10:
	.long	.LVL34
	.long	.LVL47
	.value	0x1
	.byte	0x56
	.long	.LVL48
	.long	.LVL70
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST11:
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL38
	.value	0x3
	.byte	0x72
	.sleb128 -4
	.byte	0x9f
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL44
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	.LVL48
	.long	.LVL50
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	.LVL55
	.long	.LVL57
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	0
	.long	0
.LLST12:
	.long	.LVL35
	.long	.LVL36
	.value	0x19
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x10
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL48
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL51
	.long	.LVL55
	.value	0x1
	.byte	0x57
	.long	.LVL55
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST14:
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 -38
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -38
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x50
	.long	.LVL56
	.long	.LVL67
	.value	0x2
	.byte	0x91
	.sleb128 -38
	.long	0
	.long	0
.LLST15:
	.long	.LVL60
	.long	.LVL61-1
	.value	0x1
	.byte	0x50
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL72
	.long	.LVL87
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST17:
	.long	.LVL82
	.long	.LVL83-1
	.value	0x1
	.byte	0x50
	.long	.LVL83-1
	.long	.LVL85
	.value	0x2
	.byte	0x91
	.sleb128 -37
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LVL91
	.value	0x2
	.byte	0x91
	.sleb128 -37
	.long	.LVL93
	.long	.LVL98
	.value	0x2
	.byte	0x91
	.sleb128 -37
	.long	.LVL98
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL101
	.long	.LVL102
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL77
	.long	.LVL78
	.value	0x1
	.byte	0x50
	.long	.LVL78
	.long	.LVL92
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL93
	.long	.LVL106
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST19:
	.long	.LVL79
	.long	.LVL80
	.value	0xf
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0x4000
	.byte	0x14
	.byte	0x14
	.byte	0x1b
	.byte	0x1e
	.byte	0x1c
	.byte	0xa
	.value	0x4000
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL88
	.long	.LVL91
	.value	0x1
	.byte	0x56
	.long	.LVL93
	.long	.LVL96
	.value	0x1
	.byte	0x56
	.long	.LVL96
	.long	.LVL97
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST21:
	.long	.LVL90
	.long	.LVL91-1
	.value	0x1
	.byte	0x50
	.long	.LVL91-1
	.long	.LVL92
	.value	0x1
	.byte	0x53
	.long	.LVL93
	.long	.LVL95
	.value	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LVL106
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST22:
	.long	.LVL94
	.long	.LVL98-1
	.value	0x1
	.byte	0x52
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB5
	.long	.LBE5
	.long	.LBB8
	.long	.LBE8
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB20
	.long	.LBE20
	.long	0
	.long	0
	.long	.LFB23
	.long	.LFE23
	.long	.LFB22
	.long	.LFE22
	.long	.LFB21
	.long	.LFE21
	.long	.LFB17
	.long	.LFE17
	.long	.LFB20
	.long	.LFE20
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB24
	.long	.LFE24
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF258:
	.string	"bk_printf"
.LASF278:
	.string	"tftp_client_get"
.LASF193:
	.string	"udp_pcb"
.LASF268:
	.string	"rand"
.LASF175:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF196:
	.string	"so_options"
.LASF271:
	.string	"udp_sendto"
.LASF41:
	.string	"_on_exit_args"
.LASF260:
	.string	"strncmp"
.LASF154:
	.string	"PBUF_RAM"
.LASF108:
	.string	"_wctomb_state"
.LASF190:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF205:
	.string	"TFTP_ERROR_ACCESS_VIOLATION"
.LASF153:
	.string	"PBUF_RAW"
.LASF163:
	.string	"flags"
.LASF147:
	.string	"ERR_CLSD"
.LASF105:
	.string	"_r48"
.LASF140:
	.string	"ERR_USE"
.LASF148:
	.string	"ERR_ARG"
.LASF197:
	.string	"local_port"
.LASF110:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF159:
	.string	"next"
.LASF256:
	.string	"sys_untimeout"
.LASF267:
	.string	"udp_new_ip_type"
.LASF131:
	.string	"err_t"
.LASF55:
	.string	"_lbfsize"
.LASF53:
	.string	"_flags"
.LASF253:
	.string	"pbuf_copy_partial"
.LASF125:
	.string	"FILE"
.LASF70:
	.string	"_errno"
.LASF263:
	.string	"tftp_send_error"
.LASF128:
	.string	"u16_t"
.LASF200:
	.string	"mcast_ttl"
.LASF179:
	.string	"MEMP_TCPIP_MSG_API"
.LASF252:
	.string	"client_ctx"
.LASF13:
	.string	"_LOCK_RECURSIVE_T"
.LASF222:
	.string	"seq_expect"
.LASF142:
	.string	"ERR_ISCONN"
.LASF57:
	.string	"_read"
.LASF231:
	.string	"mode"
.LASF112:
	.string	"_mbrlen_state"
.LASF185:
	.string	"MEMP_PBUF_POOL"
.LASF72:
	.string	"_stdout"
.LASF146:
	.string	"ERR_RST"
.LASF15:
	.string	"_fpos_t"
.LASF48:
	.string	"_fns"
.LASF56:
	.string	"_cookie"
.LASF149:
	.string	"PBUF_TRANSPORT"
.LASF30:
	.string	"_Bigint"
.LASF187:
	.string	"lwip_ip_addr_type"
.LASF38:
	.string	"__tm_wday"
.LASF80:
	.string	"_result"
.LASF210:
	.string	"TFTP_ERROR_NO_SUCH_USER"
.LASF122:
	.string	"uint32_t"
.LASF178:
	.string	"MEMP_NETCONN"
.LASF34:
	.string	"__tm_hour"
.LASF181:
	.string	"MEMP_IGMP_GROUP"
.LASF211:
	.string	"tftp_context_s"
.LASF216:
	.string	"tftp_context_t"
.LASF20:
	.string	"__count"
.LASF247:
	.string	"paddr"
.LASF123:
	.string	"float"
.LASF33:
	.string	"__tm_min"
.LASF118:
	.string	"_nextf"
.LASF270:
	.string	"pbuf_alloc"
.LASF218:
	.string	"tftp_state_s"
.LASF229:
	.string	"tftp_state_t"
.LASF95:
	.string	"_rand48"
.LASF250:
	.string	"aos_log_level"
.LASF81:
	.string	"_result_k"
.LASF12:
	.string	"long long unsigned int"
.LASF101:
	.string	"_asctime_buf"
.LASF52:
	.string	"__sFILE"
.LASF29:
	.string	"_wds"
.LASF219:
	.string	"upcb"
.LASF223:
	.string	"seq_last"
.LASF7:
	.string	"__uint16_t"
.LASF241:
	.string	"tftp_fwrite"
.LASF91:
	.string	"__FILE"
.LASF64:
	.string	"_offset"
.LASF228:
	.string	"time"
.LASF138:
	.string	"ERR_VAL"
.LASF275:
	.string	"/home/stone/Documents/pca"
.LASF257:
	.string	"udp_remove"
.LASF75:
	.string	"_emergency"
.LASF180:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF156:
	.string	"PBUF_REF"
.LASF239:
	.string	"buff"
.LASF259:
	.string	"fopen"
.LASF188:
	.string	"lwip_internal_netif_client_data_index"
.LASF161:
	.string	"tot_len"
.LASF6:
	.string	"size_t"
.LASF160:
	.string	"payload"
.LASF150:
	.string	"PBUF_IP"
.LASF32:
	.string	"__tm_sec"
.LASF265:
	.string	"aos_now_ms"
.LASF39:
	.string	"__tm_yday"
.LASF74:
	.string	"_inc"
.LASF47:
	.string	"_ind"
.LASF157:
	.string	"PBUF_POOL"
.LASF26:
	.string	"_next"
.LASF243:
	.string	"bytes"
.LASF114:
	.string	"_mbsrtowcs_state"
.LASF186:
	.string	"MEMP_MAX"
.LASF127:
	.string	"s8_t"
.LASF21:
	.string	"__value"
.LASF139:
	.string	"ERR_WOULDBLOCK"
.LASF135:
	.string	"ERR_TIMEOUT"
.LASF82:
	.string	"_p5s"
.LASF264:
	.string	"pbuf_header"
.LASF184:
	.string	"MEMP_PBUF"
.LASF116:
	.string	"_wcsrtombs_state"
.LASF106:
	.string	"_mblen_state"
.LASF24:
	.string	"char"
.LASF35:
	.string	"__tm_mday"
.LASF262:
	.string	"sys_timeout"
.LASF88:
	.string	"_sig_func"
.LASF113:
	.string	"_mbrtowc_state"
.LASF87:
	.string	"_atexit0"
.LASF213:
	.string	"close"
.LASF236:
	.string	"blknum"
.LASF208:
	.string	"TFTP_ERROR_UNKNOWN_TRFR_ID"
.LASF23:
	.string	"_flock_t"
.LASF235:
	.string	"opcode"
.LASF244:
	.string	"readbytes"
.LASF17:
	.string	"__wch"
.LASF94:
	.string	"_iobs"
.LASF234:
	.string	"sbuf"
.LASF237:
	.string	"blklen"
.LASF60:
	.string	"_close"
.LASF217:
	.string	"tftp_done_cb"
.LASF78:
	.string	"__sdidinit"
.LASF266:
	.string	"pbuf_free"
.LASF71:
	.string	"_stdin"
.LASF103:
	.string	"_gamma_signgam"
.LASF177:
	.string	"MEMP_NETBUF"
.LASF1:
	.string	"long long int"
.LASF215:
	.string	"write"
.LASF170:
	.string	"IPADDR_TYPE_ANY"
.LASF50:
	.string	"_base"
.LASF83:
	.string	"_freelist"
.LASF203:
	.string	"tftp_error_s"
.LASF97:
	.string	"_mult"
.LASF25:
	.string	"__ULong"
.LASF174:
	.string	"MEMP_TCP_PCB"
.LASF115:
	.string	"_wcrtomb_state"
.LASF126:
	.string	"u8_t"
.LASF54:
	.string	"_file"
.LASF249:
	.string	"tftp_state"
.LASF79:
	.string	"__cleanup"
.LASF207:
	.string	"TFTP_ERROR_ILLEGAL_OPERATION"
.LASF22:
	.string	"_mbstate_t"
.LASF198:
	.string	"remote_port"
.LASF240:
	.string	"writebytes"
.LASF40:
	.string	"__tm_isdst"
.LASF251:
	.string	"ip_addr_any"
.LASF117:
	.string	"_h_errno"
.LASF246:
	.string	"close_handle"
.LASF230:
	.string	"fname"
.LASF141:
	.string	"ERR_ALREADY"
.LASF164:
	.string	"_Bool"
.LASF36:
	.string	"__tm_mon"
.LASF226:
	.string	"last_tick"
.LASF199:
	.string	"multicast_ip"
.LASF2:
	.string	"long double"
.LASF121:
	.string	"uint16_t"
.LASF225:
	.string	"tick"
.LASF58:
	.string	"_write"
.LASF46:
	.string	"_atexit"
.LASF67:
	.string	"_mbstate"
.LASF194:
	.string	"local_ip"
.LASF134:
	.string	"ERR_BUF"
.LASF172:
	.string	"MEMP_RAW_PCB"
.LASF192:
	.string	"udp_recv_fn"
.LASF130:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF209:
	.string	"TFTP_ERROR_FILE_EXISTS"
.LASF167:
	.string	"ip4_addr_t"
.LASF9:
	.string	"long int"
.LASF238:
	.string	"wlen"
.LASF182:
	.string	"MEMP_SYS_TIMEOUT"
.LASF254:
	.string	"fread"
.LASF279:
	.string	"__stack_chk_fail"
.LASF183:
	.string	"MEMP_NETDB"
.LASF90:
	.string	"__sf"
.LASF28:
	.string	"_sign"
.LASF65:
	.string	"_data"
.LASF173:
	.string	"MEMP_UDP_PCB"
.LASF18:
	.string	"__wchb"
.LASF277:
	.string	"tftp_fopen"
.LASF255:
	.string	"fclose"
.LASF37:
	.string	"__tm_year"
.LASF233:
	.string	"tftp_tmr"
.LASF137:
	.string	"ERR_INPROGRESS"
.LASF248:
	.string	"pkt_len"
.LASF232:
	.string	"pstate"
.LASF206:
	.string	"TFTP_ERROR_DISK_FULL"
.LASF165:
	.string	"ip4_addr"
.LASF102:
	.string	"_localtime_buf"
.LASF120:
	.string	"_unused"
.LASF86:
	.string	"_new"
.LASF84:
	.string	"_cvtlen"
.LASF27:
	.string	"_maxwds"
.LASF109:
	.string	"_l64a_buf"
.LASF245:
	.string	"tftp_fclose"
.LASF212:
	.string	"open"
.LASF63:
	.string	"_blksize"
.LASF31:
	.string	"__tm"
.LASF202:
	.string	"recv_arg"
.LASF66:
	.string	"_lock"
.LASF19:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF93:
	.string	"_niobs"
.LASF16:
	.string	"wint_t"
.LASF129:
	.string	"s16_t"
.LASF221:
	.string	"port"
.LASF151:
	.string	"PBUF_LINK"
.LASF43:
	.string	"_dso_handle"
.LASF274:
	.string	"src/tftp_client.c"
.LASF272:
	.string	"udp_recv"
.LASF242:
	.string	"tftp_fread"
.LASF162:
	.string	"type"
.LASF85:
	.string	"_cvtbuf"
.LASF4:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF168:
	.string	"IPADDR_TYPE_V4"
.LASF273:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF169:
	.string	"IPADDR_TYPE_V6"
.LASF176:
	.string	"MEMP_TCP_SEG"
.LASF111:
	.string	"_getdate_err"
.LASF158:
	.string	"pbuf"
.LASF98:
	.string	"_add"
.LASF166:
	.string	"addr"
.LASF49:
	.string	"__sbuf"
.LASF269:
	.string	"udp_bind"
.LASF191:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF92:
	.string	"_glue"
.LASF261:
	.string	"tftp_send_ack"
.LASF145:
	.string	"ERR_ABRT"
.LASF89:
	.string	"__sglue"
.LASF100:
	.string	"_strtok_last"
.LASF107:
	.string	"_mbtowc_state"
.LASF227:
	.string	"retries"
.LASF132:
	.string	"ERR_OK"
.LASF201:
	.string	"recv"
.LASF77:
	.string	"_locale"
.LASF189:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF42:
	.string	"_fnargs"
.LASF144:
	.string	"ERR_IF"
.LASF3:
	.string	"signed char"
.LASF69:
	.string	"_reent"
.LASF8:
	.string	"short unsigned int"
.LASF220:
	.string	"handle"
.LASF143:
	.string	"ERR_CONN"
.LASF195:
	.string	"remote_ip"
.LASF44:
	.string	"_fntypes"
.LASF136:
	.string	"ERR_RTE"
.LASF51:
	.string	"_size"
.LASF124:
	.string	"double"
.LASF171:
	.string	"ip_addr_t"
.LASF14:
	.string	"_off_t"
.LASF62:
	.string	"_nbuf"
.LASF99:
	.string	"_unused_rand"
.LASF152:
	.string	"PBUF_RAW_TX"
.LASF76:
	.string	"_unspecified_locale_info"
.LASF155:
	.string	"PBUF_ROM"
.LASF68:
	.string	"_flags2"
.LASF45:
	.string	"_is_cxa"
.LASF96:
	.string	"_seed"
.LASF204:
	.string	"TFTP_ERROR_FILE_NOT_FOUND"
.LASF104:
	.string	"_rand_next"
.LASF133:
	.string	"ERR_MEM"
.LASF276:
	.string	"__locale_t"
.LASF214:
	.string	"read"
.LASF59:
	.string	"_seek"
.LASF224:
	.string	"flen"
.LASF73:
	.string	"_stderr"
.LASF119:
	.string	"_nmalloc"
.LASF61:
	.string	"_ubuf"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
