	.file	"tftp_server.c"
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
.LFB25:
	.file 1 "kernel/protocols/net/apps/tftp/tftp_server.c"
	.loc 1 366 0
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
	.loc 1 369 0
	leal	-540(%ebp), %esi
	.loc 1 366 0
	subl	$540, %esp
	.loc 1 366 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL1:
	.loc 1 369 0
	pushl	$0
	movzwl	8(%ebx), %eax
	pushl	%eax
	pushl	%esi
	pushl	%ebx
	call	pbuf_copy_partial
.LVL2:
	.loc 1 370 0
	movzwl	8(%ebx), %eax
	pushl	%edi
	pushl	%eax
	pushl	$1
	pushl	%esi
	call	fwrite
.LVL3:
	.loc 1 372 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L2
	call	__stack_chk_fail
.LVL4:
.L2:
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
.LFE25:
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
.LFB24:
	.loc 1 359 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 361 0
	pushl	8(%ebp)
	pushl	16(%ebp)
	pushl	$1
	pushl	12(%ebp)
	call	fread
.LVL6:
	.loc 1 363 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
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
.LFB23:
	.loc 1 354 0
	.cfi_startproc
.LVL7:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 356 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 355 0
	jmp	fclose
.LVL8:
	.cfi_endproc
.LFE23:
	.size	tftp_fclose, .-tftp_fclose
	.section	.text.unlikely.tftp_fclose
.LCOLDE2:
	.section	.text.tftp_fclose
.LHOTE2:
	.section	.text.unlikely.resend_data,"ax",@progbits
.LCOLDB3:
	.section	.text.resend_data,"ax",@progbits
.LHOTB3:
	.type	resend_data, @function
resend_data:
.LFB18:
	.loc 1 101 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$8, %esp
	.cfi_offset 3, -12
	.loc 1 102 0
	movl	tftp_state+8, %eax
	pushl	$0
	movzwl	10(%eax), %eax
	pushl	%eax
	pushl	$0
	call	pbuf_alloc
.LVL9:
	.loc 1 103 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L9
	movl	%eax, %ebx
.LVL10:
	.loc 1 107 0
	pushl	%eax
	pushl	%eax
	pushl	tftp_state+8
	pushl	%ebx
	call	pbuf_copy
.LVL11:
	addl	$16, %esp
	testb	%al, %al
	je	.L11
	.loc 1 108 0
	subl	$12, %esp
	pushl	%ebx
	jmp	.L16
.L11:
	.loc 1 112 0
	movzwl	tftp_state+20, %eax
	pushl	%eax
	pushl	$tftp_state+16
	pushl	%ebx
	pushl	tftp_state+12
	call	udp_sendto
.LVL12:
	.loc 1 113 0
	movl	%ebx, (%esp)
.L16:
	call	pbuf_free
.LVL13:
	addl	$16, %esp
.LVL14:
.L9:
	.loc 1 114 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	resend_data, .-resend_data
	.section	.text.unlikely.resend_data
.LCOLDE3:
	.section	.text.resend_data
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"tftp: closing\n"
	.section	.text.unlikely.close_handle,"ax",@progbits
.LCOLDB5:
	.section	.text.close_handle,"ax",@progbits
.LHOTB5:
	.type	close_handle, @function
close_handle:
.LFB17:
	.loc 1 81 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 85 0
	movl	tftp_state+8, %eax
	.loc 1 82 0
	movw	$0, tftp_state+20
	.loc 1 83 0
	movl	$0, tftp_state+16
	.loc 1 85 0
	testl	%eax, %eax
	je	.L18
	.loc 1 86 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL15:
	.loc 1 87 0
	movl	$0, tftp_state+8
	addl	$16, %esp
.L18:
	.loc 1 90 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$tftp_tmr
	call	sys_untimeout
.LVL16:
	.loc 1 92 0
	movl	tftp_state+4, %eax
	addl	$16, %esp
	testl	%eax, %eax
	je	.L17
	.loc 1 93 0
	subl	$12, %esp
	pushl	%eax
	movl	tftp_state, %eax
	call	*4(%eax)
.LVL17:
	.loc 1 95 0
	movl	$.LC4, (%esp)
	.loc 1 94 0
	movl	$0, tftp_state+4
	.loc 1 95 0
	call	bk_printf
.LVL18:
	addl	$16, %esp
.L17:
	.loc 1 97 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	close_handle, .-close_handle
	.section	.text.unlikely.close_handle
.LCOLDE5:
	.section	.text.close_handle
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"Error occured while reading the file."
	.section	.text.unlikely.send_data,"ax",@progbits
.LCOLDB7:
	.section	.text.send_data,"ax",@progbits
.LHOTB7:
	.type	send_data, @function
send_data:
.LFB19:
	.loc 1 118 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 122 0
	movl	tftp_state+8, %eax
	testl	%eax, %eax
	je	.L28
	.loc 1 123 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL19:
	addl	$16, %esp
.L28:
	.loc 1 126 0
	pushl	%ecx
	pushl	$0
	pushl	$516
	pushl	$0
	call	pbuf_alloc
.LVL20:
	.loc 1 127 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 126 0
	movl	%eax, tftp_state+8
	.loc 1 127 0
	je	.L27
	.loc 1 131 0
	movl	4(%eax), %ebx
.LVL21:
	.loc 1 133 0
	subl	$12, %esp
	.loc 1 132 0
	movw	$768, (%ebx)
	.loc 1 133 0
	movzwl	tftp_state+32, %eax
	.loc 1 135 0
	addl	$4, %ebx
.LVL22:
	.loc 1 133 0
	pushl	%eax
.LVL23:
	call	lwip_htons
.LVL24:
	.loc 1 135 0
	addl	$12, %esp
	.loc 1 133 0
	movw	%ax, -2(%ebx)
	.loc 1 135 0
	movl	tftp_state, %eax
	pushl	$512
	pushl	%ebx
	pushl	tftp_state+4
	call	*8(%eax)
.LVL25:
	.loc 1 136 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L30
	.loc 1 137 0
	movzwl	tftp_state+20, %eax
.LVL26:
	subl	$12, %esp
	pushl	$.LC6
	pushl	$2
	pushl	%eax
	pushl	$tftp_state+16
	pushl	tftp_state+12
	call	tftp_send_error
.LVL27:
	.loc 1 138 0
	addl	$32, %esp
	.loc 1 144 0
	movl	-4(%ebp), %ebx
.LVL28:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 138 0
	jmp	close_handle
.LVL29:
.L30:
	.cfi_restore_state
	.loc 1 142 0
	addl	$4, %eax
.LVL30:
	pushl	%edx
	pushl	%edx
	movzwl	%ax, %eax
.LVL31:
	pushl	%eax
	pushl	tftp_state+8
	call	pbuf_realloc
.LVL32:
	.loc 1 143 0
	addl	$16, %esp
	.loc 1 144 0
	movl	-4(%ebp), %ebx
.LVL33:
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 143 0
	jmp	resend_data
.LVL34:
.L27:
	.cfi_restore_state
	.loc 1 144 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	send_data, .-send_data
	.section	.text.unlikely.send_data
.LCOLDE7:
	.section	.text.send_data
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"write"
.LC9:
	.string	"read"
.LC10:
	.string	"Only one connection at a time is supported"
.LC11:
	.string	"Filename too long/not NULL terminated"
.LC12:
	.string	"Mode too long/not NULL terminated"
.LC13:
	.string	"Unable to open requested file."
.LC14:
	.string	"tftp: %s request from "
.LC15:
	.string	"%4d.%4d.%4d.%4d"
.LC16:
	.string	" for '%s' mode '%s'\n"
.LC17:
	.string	"No connection"
.LC18:
	.string	"Not a write connection"
.LC19:
	.string	"error writing file"
.LC20:
	.string	"Not a read connection"
.LC21:
	.string	"Wrong block number"
.LC22:
	.string	"Unknown operation"
	.section	.text.unlikely.recv,"ax",@progbits
.LCOLDB23:
	.section	.text.recv,"ax",@progbits
.LHOTB23:
	.type	recv, @function
recv:
.LFB20:
	.loc 1 148 0
	.cfi_startproc
.LVL35:
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
	.loc 1 148 0
	movl	24(%ebp), %eax
	movl	16(%ebp), %esi
	movl	20(%ebp), %ebx
	movl	%eax, -76(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL36:
	.loc 1 155 0
	movl	tftp_state+20, %eax
	testw	%ax, %ax
	je	.L66
	cmpw	-76(%ebp), %ax
	jne	.L36
.L66:
	.loc 1 156 0 discriminator 3
	movl	tftp_state+16, %eax
	.loc 1 155 0 discriminator 3
	testl	%eax, %eax
	je	.L38
	.loc 1 156 0
	cmpl	(%ebx), %eax
	je	.L38
.L36:
	.loc 1 157 0
	movzwl	-76(%ebp), %eax
	subl	$12, %esp
	pushl	$.LC10
.LVL37:
	pushl	$2
	pushl	%eax
	pushl	%ebx
	pushl	tftp_state+12
	call	tftp_send_error
.LVL38:
	.loc 1 159 0
	addl	$20, %esp
	jmp	.L85
.LVL39:
.L38:
	.loc 1 149 0
	movl	4(%esi), %eax
	.loc 1 165 0
	movl	tftp_state+24, %edx
	.loc 1 163 0
	movw	(%eax), %cx
	.loc 1 165 0
	movl	%edx, tftp_state+28
.LVL40:
	.loc 1 166 0
	movb	$0, tftp_state+34
	.loc 1 168 0
	cmpw	$512, %cx
	.loc 1 163 0
	movw	%cx, -78(%ebp)
.LVL41:
	.loc 1 168 0
	je	.L41
	ja	.L42
	cmpw	$256, %cx
	je	.L41
	jmp	.L40
.L42:
	cmpw	$768, -78(%ebp)
	je	.L43
	cmpw	$1024, -78(%ebp)
	je	.L44
	jmp	.L40
.L41:
.LBB2:
	.loc 1 173 0
	xorl	%eax, %eax
	.loc 1 178 0
	cmpl	$0, tftp_state+4
	.loc 1 173 0
	leal	-48(%ebp), %edi
	movl	$5, %ecx
.LVL42:
	.loc 1 172 0
	movb	$0, -59(%ebp)
	.loc 1 173 0
	rep stosl
	.loc 1 178 0
	je	.L45
	.loc 1 179 0
	subl	$12, %esp
	pushl	$.LC10
	jmp	.L86
.L45:
	.loc 1 184 0
	pushl	%ecx
	pushl	$0
	pushl	$tftp_tmr
	pushl	$50
	call	sys_timeout
.LVL43:
	.loc 1 187 0
	leal	-59(%ebp), %eax
	pushl	$2
	pushl	$1
	pushl	%eax
	pushl	%esi
	call	pbuf_memfind
.LVL44:
	movl	%eax, %edi
.LVL45:
	.loc 1 188 0
	addl	$32, %esp
	leal	-2(%edi), %eax
.LVL46:
	cmpw	$20, %ax
	jbe	.L47
	.loc 1 189 0
	subl	$12, %esp
	pushl	$.LC11
	jmp	.L86
.L47:
	.loc 1 193 0
	movzwl	%ax, %eax
	pushl	$2
	pushl	%eax
	leal	-48(%ebp), %eax
	pushl	%eax
	pushl	%esi
	call	pbuf_copy_partial
.LVL47:
	.loc 1 196 0
	leal	1(%edi), %edx
	leal	-59(%ebp), %eax
	movzwl	%dx, %edx
	pushl	%edx
	pushl	$1
	pushl	%eax
	pushl	%esi
	movl	%edx, -84(%ebp)
	call	pbuf_memfind
.LVL48:
	.loc 1 197 0
	subl	%edi, %eax
.LVL49:
	addl	$32, %esp
	movl	-84(%ebp), %edx
	cmpw	$10, %ax
	jbe	.L48
	.loc 1 198 0
	subl	$12, %esp
	pushl	$.LC12
	jmp	.L86
.L48:
	.loc 1 202 0
	leal	-58(%ebp), %edi
.LVL50:
	movzwl	%ax, %eax
	pushl	%edx
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	pbuf_copy_partial
.LVL51:
	.loc 1 204 0
	addl	$12, %esp
	xorl	%eax, %eax
	cmpw	$512, -78(%ebp)
	sete	%al
	pushl	%eax
	leal	-48(%ebp), %eax
	pushl	%edi
	pushl	%eax
	movl	tftp_state, %eax
	call	*(%eax)
.LVL52:
	.loc 1 207 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 204 0
	movl	%eax, tftp_state+4
	.loc 1 205 0
	movw	$1, tftp_state+32
	.loc 1 207 0
	jne	.L49
	.loc 1 208 0
	subl	$12, %esp
	pushl	$.LC13
	pushl	$1
	jmp	.L84
.L49:
	.loc 1 213 0 discriminator 1
	cmpw	$512, -78(%ebp)
	movl	$.LC9, %edx
	movl	$.LC8, %eax
	cmovne	%edx, %eax
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	$.LC14
	call	bk_printf
.LVL53:
	.loc 1 215 0 discriminator 1
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L65
	.loc 1 215 0 is_stmt 0 discriminator 2
	movzbl	3(%ebx), %edi
	movzbl	2(%ebx), %ecx
	movzbl	1(%ebx), %edx
	movzbl	(%ebx), %eax
	jmp	.L51
.L65:
	.loc 1 215 0
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%edi, %edi
	xorl	%eax, %eax
.L51:
	.loc 1 215 0 discriminator 17
	subl	$12, %esp
	pushl	%edi
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$.LC15
	call	bk_printf
.LVL54:
	.loc 1 216 0 is_stmt 1 discriminator 17
	leal	-58(%ebp), %eax
	addl	$28, %esp
	pushl	%eax
	leal	-48(%ebp), %eax
	pushl	%eax
	pushl	$.LC16
	call	bk_printf
.LVL55:
	.loc 1 218 0 discriminator 17
	movl	(%ebx), %eax
	.loc 1 221 0 discriminator 17
	addl	$16, %esp
	cmpw	$512, -78(%ebp)
	.loc 1 218 0 discriminator 17
	movl	%eax, tftp_state+16
	.loc 1 219 0 discriminator 17
	movzwl	-76(%ebp), %eax
	movw	%ax, tftp_state+20
	.loc 1 221 0 discriminator 17
	jne	.L52
	.loc 1 223 0
	pushl	$0
	pushl	%eax
	pushl	$tftp_state+16
	pushl	tftp_state+12
	.loc 1 222 0
	movb	$1, tftp_state+35
	.loc 1 223 0
	call	tftp_send_ack
.LVL56:
	addl	$16, %esp
	jmp	.L53
.L52:
	.loc 1 225 0
	movb	$0, tftp_state+35
	jmp	.L83
.LVL57:
.L43:
.LBE2:
.LBB3:
	.loc 1 237 0
	cmpl	$0, tftp_state+4
	jne	.L54
.L58:
	.loc 1 238 0
	subl	$12, %esp
	pushl	$.LC17
	jmp	.L86
.L54:
	.loc 1 243 0
	cmpb	$1, tftp_state+35
	je	.L55
	.loc 1 244 0
	subl	$12, %esp
	pushl	$.LC18
.LVL58:
.L86:
	pushl	$2
	jmp	.L84
.LVL59:
.L55:
	.loc 1 249 0
	movzwl	2(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL60:
	movzwl	%ax, %edi
.LVL61:
	.loc 1 250 0
	popl	%eax
	popl	%edx
	pushl	$-4
	pushl	%esi
	call	pbuf_header
.LVL62:
	.loc 1 252 0
	popl	%ecx
	popl	%eax
	movl	tftp_state, %eax
	pushl	%esi
	pushl	tftp_state+4
	call	*12(%eax)
.LVL63:
	.loc 1 253 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L56
	.loc 1 254 0
	movzwl	-76(%ebp), %eax
.LVL64:
	subl	$12, %esp
	pushl	$.LC19
	pushl	$2
	pushl	%eax
	pushl	%ebx
	pushl	tftp_state+12
	call	tftp_send_error
.LVL65:
	.loc 1 256 0
	addl	$32, %esp
	call	close_handle
.LVL66:
	jmp	.L57
.LVL67:
.L56:
	.loc 1 258 0
	movzwl	tftp_state+20, %eax
.LVL68:
	pushl	%edi
	pushl	%eax
	pushl	$tftp_state+16
	pushl	tftp_state+12
	call	tftp_send_ack
.LVL69:
	addl	$16, %esp
.L57:
	.loc 1 261 0
	cmpw	$511, 8(%esi)
	ja	.L53
.LVL70:
.L62:
	.loc 1 262 0
	call	close_handle
.LVL71:
	jmp	.L53
.LVL72:
.L44:
.LBE3:
.LBB4:
	.loc 1 272 0
	cmpl	$0, tftp_state+4
	je	.L58
	.loc 1 278 0
	cmpb	$0, tftp_state+35
	je	.L59
	.loc 1 279 0
	subl	$12, %esp
	pushl	$.LC20
	jmp	.L86
.L59:
	.loc 1 284 0
	movzwl	2(%eax), %eax
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL73:
	.loc 1 285 0
	addl	$16, %esp
	cmpw	tftp_state+32, %ax
	je	.L60
	.loc 1 286 0
	subl	$12, %esp
	pushl	$.LC21
	pushl	$5
	jmp	.L84
.L60:
.LVL74:
	.loc 1 293 0
	movl	tftp_state+8, %edx
	testl	%edx, %edx
	je	.L61
.LVL75:
	.loc 1 297 0
	cmpw	$516, 8(%edx)
	jne	.L62
.LVL76:
.L61:
	.loc 1 298 0
	incl	%eax
.LVL77:
	movw	%ax, tftp_state+32
.L83:
	.loc 1 299 0
	call	send_data
.LVL78:
	jmp	.L53
.LVL79:
.L40:
.LBE4:
	.loc 1 308 0
	subl	$12, %esp
	pushl	$.LC22
	pushl	$4
.LVL80:
.L84:
	movzwl	-76(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	pushl	tftp_state+12
	call	tftp_send_error
.LVL81:
	.loc 1 310 0
	addl	$32, %esp
.L53:
	.loc 1 313 0
	subl	$12, %esp
.LVL82:
.L85:
	pushl	%esi
	call	pbuf_free
.LVL83:
	addl	$16, %esp
	.loc 1 314 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L63
	call	__stack_chk_fail
.LVL84:
.L63:
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
.LFE20:
	.size	recv, .-recv
	.section	.text.unlikely.recv
.LCOLDE23:
	.section	.text.recv
.LHOTE23:
	.section	.rodata.str1.1
.LC24:
	.string	"r"
.LC25:
	.string	"w"
.LC26:
	.string	"rb"
.LC27:
	.string	"wb"
.LC28:
	.string	"netascii"
.LC29:
	.string	"octet"
	.section	.text.unlikely.tftp_fopen,"ax",@progbits
.LCOLDB30:
	.section	.text.tftp_fopen,"ax",@progbits
.LHOTB30:
	.type	tftp_fopen, @function
tftp_fopen:
.LFB22:
	.loc 1 342 0
	.cfi_startproc
.LVL85:
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
	.loc 1 342 0
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
.LVL86:
	.loc 1 345 0
	pushl	$8
	pushl	$.LC28
	.loc 1 342 0
	movl	16(%ebp), %esi
	.loc 1 345 0
	pushl	%edi
	call	strncmp
.LVL87:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L88
	.loc 1 346 0
	movl	%esi, %eax
	movl	$.LC25, %edx
	testb	%al, %al
	movl	$.LC24, %eax
	cmovne	%edx, %eax
	movl	%eax, 12(%ebp)
	jmp	.L95
.L88:
	.loc 1 347 0
	pushl	%eax
	pushl	$5
	pushl	$.LC29
	pushl	%edi
	call	strncmp
.LVL88:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L90
.LVL89:
.LBB7:
.LBB8:
	.loc 1 348 0
	movl	%esi, %eax
	movl	$.LC27, %edx
	movl	%ebx, 8(%ebp)
	testb	%al, %al
	movl	$.LC26, %eax
	cmovne	%edx, %eax
	movl	%eax, 12(%ebp)
.LVL90:
.L95:
.LBE8:
.LBE7:
	.loc 1 351 0
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
.LBB10:
.LBB9:
	.loc 1 348 0
	jmp	fopen
.LVL91:
.L90:
	.cfi_restore_state
.LBE9:
.LBE10:
	.loc 1 351 0
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
.LFE22:
	.size	tftp_fopen, .-tftp_fopen
	.section	.text.unlikely.tftp_fopen
.LCOLDE30:
	.section	.text.tftp_fopen
.LHOTE30:
	.section	.rodata.str1.1
.LC31:
	.string	"tftp: timeout, retrying\n"
.LC32:
	.string	"tftp: timeout\n"
	.section	.text.unlikely.tftp_tmr,"ax",@progbits
.LCOLDB33:
	.section	.text.tftp_tmr,"ax",@progbits
.LHOTB33:
	.type	tftp_tmr, @function
tftp_tmr:
.LFB21:
	.loc 1 318 0
	.cfi_startproc
.LVL92:
	.loc 1 321 0
	incl	tftp_state+24
	.loc 1 323 0
	cmpl	$0, tftp_state+4
	je	.L103
	.loc 1 318 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 327 0
	pushl	$0
	pushl	$tftp_tmr
	pushl	$50
	call	sys_timeout
.LVL93:
	.loc 1 329 0
	movl	tftp_state+24, %eax
	subl	tftp_state+28, %eax
	addl	$16, %esp
	cmpl	$20, %eax
	jle	.L96
	.loc 1 330 0
	cmpl	$0, tftp_state+8
	je	.L100
	.loc 1 330 0 discriminator 1
	cmpb	$4, tftp_state+34
	ja	.L100
.LVL94:
.LBB13:
.LBB14:
	.loc 1 331 0
	subl	$12, %esp
	pushl	$.LC31
	call	bk_printf
.LVL95:
	.loc 1 332 0
	call	resend_data
.LVL96:
	.loc 1 333 0
	incb	tftp_state+34
	addl	$16, %esp
	jmp	.L96
.LVL97:
.L100:
.LBE14:
.LBE13:
	.loc 1 335 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC32
	call	bk_printf
.LVL98:
	.loc 1 336 0 discriminator 1
	addl	$16, %esp
	.loc 1 339 0 discriminator 1
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 336 0 discriminator 1
	jmp	close_handle
.LVL99:
.L96:
	.cfi_restore_state
	.loc 1 339 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L103:
	ret
	.cfi_endproc
.LFE21:
	.size	tftp_tmr, .-tftp_tmr
	.section	.text.unlikely.tftp_tmr
.LCOLDE33:
	.section	.text.tftp_tmr
.LHOTE33:
	.section	.text.unlikely.tftp_server_start,"ax",@progbits
.LCOLDB34:
	.section	.text.tftp_server_start,"ax",@progbits
.LHOTB34:
	.globl	tftp_server_start
	.type	tftp_server_start, @function
tftp_server_start:
.LFB26:
	.loc 1 387 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 391 0
	xorl	%esi, %esi
	.loc 1 387 0
	subl	$16, %esp
	.loc 1 390 0
	cmpl	$0, tftp_state+12
	jne	.L105
	.loc 1 393 0
	subl	$12, %esp
	pushl	$46
	call	udp_new_ip_type
.LVL100:
	.loc 1 394 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 393 0
	movl	%eax, %ebx
.LVL101:
	.loc 1 394 0
	je	.L108
	.loc 1 398 0
	pushl	%edx
	pushl	$69
	pushl	$ip_addr_any
	pushl	%eax
	call	udp_bind
.LVL102:
	.loc 1 399 0
	addl	$16, %esp
	testb	%al, %al
	je	.L106
	.loc 1 400 0
	subl	$12, %esp
	movb	%al, -9(%ebp)
	pushl	%ebx
	call	udp_remove
.LVL103:
	.loc 1 401 0
	movb	-9(%ebp), %al
	addl	$16, %esp
	movl	%eax, %esi
	jmp	.L105
.LVL104:
.L106:
.LVL105:
	.loc 1 410 0
	pushl	%eax
	pushl	$0
	pushl	$recv
	pushl	%ebx
	.loc 1 404 0
	movl	$0, tftp_state+4
	.loc 1 405 0
	movw	$0, tftp_state+20
	.loc 1 406 0
	movl	$server_ctx, tftp_state
	.loc 1 407 0
	movl	$0, tftp_state+24
	.loc 1 408 0
	movl	$0, tftp_state+8
	.loc 1 409 0
	movl	%ebx, tftp_state+12
	.loc 1 410 0
	call	udp_recv
.LVL106:
	.loc 1 412 0
	addl	$16, %esp
	jmp	.L105
.LVL107:
.L108:
	.loc 1 395 0
	movl	$-1, %esi
.LVL108:
.L105:
	.loc 1 413 0
	leal	-8(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	tftp_server_start, .-tftp_server_start
	.section	.text.unlikely.tftp_server_start
.LCOLDE34:
	.section	.text.tftp_server_start
.LHOTE34:
	.section	.text.unlikely.tftp_server_stop,"ax",@progbits
.LCOLDB35:
	.section	.text.tftp_server_stop,"ax",@progbits
.LHOTB35:
	.globl	tftp_server_stop
	.type	tftp_server_stop, @function
tftp_server_stop:
.LFB27:
	.loc 1 417 0
	.cfi_startproc
	.loc 1 418 0
	cmpl	$0, tftp_state+4
	.loc 1 417 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 418 0
	je	.L111
	.loc 1 419 0
	call	close_handle
.LVL109:
.L111:
	.loc 1 421 0
	movl	tftp_state+12, %eax
	movl	$tftp_state, %ebx
	testl	%eax, %eax
	je	.L110
	.loc 1 422 0
	subl	$12, %esp
	.loc 1 423 0
	movl	%ebx, %edi
	.loc 1 422 0
	pushl	%eax
	call	udp_remove
.LVL110:
	.loc 1 423 0
	movl	$9, %ecx
	xorl	%eax, %eax
	addl	$16, %esp
	rep stosl
.L110:
	.loc 1 425 0
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
.LFE27:
	.size	tftp_server_stop, .-tftp_server_stop
	.section	.text.unlikely.tftp_server_stop
.LCOLDE35:
	.section	.text.tftp_server_stop
.LHOTE35:
	.globl	server_ctx
	.section	.rodata.server_ctx,"a",@progbits
	.align 4
	.type	server_ctx, @object
	.size	server_ctx, 16
server_ctx:
	.long	tftp_fopen
	.long	tftp_fclose
	.long	tftp_fread
	.long	tftp_fwrite
	.section	.bss.tftp_state,"aw",@nobits
	.align 32
	.type	tftp_state, @object
	.size	tftp_state, 36
tftp_state:
	.zero	36
	.text
.Letext0:
	.section	.text.unlikely.tftp_fwrite
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 7 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 8 "./kernel/protocols/net/include/lwip/err.h"
	.file 9 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 10 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 11 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 12 "./kernel/protocols/net/include/lwip/memp.h"
	.file 13 "./kernel/protocols/net/include/lwip/netif.h"
	.file 14 "./kernel/protocols/net/include/lwip/udp.h"
	.file 15 "./kernel/protocols/net/include/lwip/apps/tftp.h"
	.file 16 "./include/aos/log.h"
	.file 17 "./kernel/protocols/net/include/lwip/timeouts.h"
	.file 18 "././platform/mcu/moc108/include/driver/uart_pub.h"
	.file 19 "./kernel/protocols/net/include/lwip/def.h"
	.file 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1473
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF268
	.byte	0xc
	.long	.LASF269
	.long	.LASF270
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF10
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x7
	.long	0x25
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x2c
	.long	0x68
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x72
	.long	0x68
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.value	0x165
	.long	0x37
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0xc9
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.byte	0xa8
	.long	0x9e
	.uleb128 0x7
	.long	.LASF16
	.byte	0x4
	.byte	0xa9
	.long	0xc9
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0xd9
	.uleb128 0x9
	.long	0xd9
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x101
	.uleb128 0xb
	.long	.LASF18
	.byte	0x4
	.byte	0xa5
	.long	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0xaa
	.long	0xaa
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x4
	.byte	0xab
	.long	0xe0
	.uleb128 0x3
	.long	.LASF21
	.byte	0x4
	.byte	0xaf
	.long	0x7d
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.long	0x11f
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF22
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x16
	.long	0x6f
	.uleb128 0xe
	.long	.LASF28
	.byte	0x18
	.byte	0x5
	.byte	0x2f
	.long	0x184
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x31
	.long	0x184
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x5
	.byte	0x32
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.byte	0x32
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.byte	0x32
	.long	0x25
	.byte	0xc
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.byte	0x32
	.long	0x25
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x5
	.byte	0x33
	.long	0x18a
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x131
	.uleb128 0x8
	.long	0x126
	.long	0x19a
	.uleb128 0x9
	.long	0xd9
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0x37
	.long	0x213
	.uleb128 0xb
	.long	.LASF30
	.byte	0x5
	.byte	0x39
	.long	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.byte	0x3a
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.byte	0x3b
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.byte	0x3c
	.long	0x25
	.byte	0xc
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.byte	0x3d
	.long	0x25
	.byte	0x10
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.byte	0x3e
	.long	0x25
	.byte	0x14
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.byte	0x3f
	.long	0x25
	.byte	0x18
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.byte	0x40
	.long	0x25
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.byte	0x41
	.long	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.value	0x108
	.byte	0x5
	.byte	0x4a
	.long	0x253
	.uleb128 0xb
	.long	.LASF40
	.byte	0x5
	.byte	0x4b
	.long	0x253
	.byte	0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x5
	.byte	0x4c
	.long	0x253
	.byte	0x80
	.uleb128 0x11
	.long	.LASF42
	.byte	0x5
	.byte	0x4e
	.long	0x126
	.value	0x100
	.uleb128 0x11
	.long	.LASF43
	.byte	0x5
	.byte	0x51
	.long	0x126
	.value	0x104
	.byte	0
	.uleb128 0x8
	.long	0x117
	.long	0x263
	.uleb128 0x9
	.long	0xd9
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF44
	.value	0x190
	.byte	0x5
	.byte	0x5d
	.long	0x2a1
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.byte	0x5e
	.long	0x2a1
	.byte	0
	.uleb128 0xb
	.long	.LASF45
	.byte	0x5
	.byte	0x5f
	.long	0x25
	.byte	0x4
	.uleb128 0xb
	.long	.LASF46
	.byte	0x5
	.byte	0x61
	.long	0x2a7
	.byte	0x8
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.byte	0x62
	.long	0x213
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x263
	.uleb128 0x8
	.long	0x2b7
	.long	0x2b7
	.uleb128 0x9
	.long	0xd9
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2bd
	.uleb128 0x12
	.uleb128 0xe
	.long	.LASF47
	.byte	0x8
	.byte	0x5
	.byte	0x75
	.long	0x2e3
	.uleb128 0xb
	.long	.LASF48
	.byte	0x5
	.byte	0x76
	.long	0x2e3
	.byte	0
	.uleb128 0xb
	.long	.LASF49
	.byte	0x5
	.byte	0x77
	.long	0x25
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x53
	.uleb128 0xe
	.long	.LASF50
	.byte	0x68
	.byte	0x5
	.byte	0xb5
	.long	0x413
	.uleb128 0xf
	.string	"_p"
	.byte	0x5
	.byte	0xb6
	.long	0x2e3
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x5
	.byte	0xb7
	.long	0x25
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x5
	.byte	0xb8
	.long	0x25
	.byte	0x8
	.uleb128 0xb
	.long	.LASF51
	.byte	0x5
	.byte	0xb9
	.long	0x5a
	.byte	0xc
	.uleb128 0xb
	.long	.LASF52
	.byte	0x5
	.byte	0xba
	.long	0x5a
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x5
	.byte	0xbb
	.long	0x2be
	.byte	0x10
	.uleb128 0xb
	.long	.LASF53
	.byte	0x5
	.byte	0xbc
	.long	0x25
	.byte	0x18
	.uleb128 0xb
	.long	.LASF54
	.byte	0x5
	.byte	0xc3
	.long	0x117
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF55
	.byte	0x5
	.byte	0xc5
	.long	0x569
	.byte	0x20
	.uleb128 0xb
	.long	.LASF56
	.byte	0x5
	.byte	0xc7
	.long	0x598
	.byte	0x24
	.uleb128 0xb
	.long	.LASF57
	.byte	0x5
	.byte	0xca
	.long	0x5bc
	.byte	0x28
	.uleb128 0xb
	.long	.LASF58
	.byte	0x5
	.byte	0xcb
	.long	0x5d6
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x5
	.byte	0xce
	.long	0x2be
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x5
	.byte	0xcf
	.long	0x2e3
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x5
	.byte	0xd0
	.long	0x25
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF59
	.byte	0x5
	.byte	0xd3
	.long	0x5dc
	.byte	0x40
	.uleb128 0xb
	.long	.LASF60
	.byte	0x5
	.byte	0xd4
	.long	0x5ec
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x5
	.byte	0xd7
	.long	0x2be
	.byte	0x44
	.uleb128 0xb
	.long	.LASF61
	.byte	0x5
	.byte	0xda
	.long	0x25
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF62
	.byte	0x5
	.byte	0xdb
	.long	0x88
	.byte	0x50
	.uleb128 0xb
	.long	.LASF63
	.byte	0x5
	.byte	0xde
	.long	0x431
	.byte	0x54
	.uleb128 0xb
	.long	.LASF64
	.byte	0x5
	.byte	0xe2
	.long	0x10c
	.byte	0x58
	.uleb128 0xb
	.long	.LASF65
	.byte	0x5
	.byte	0xe4
	.long	0x101
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF66
	.byte	0x5
	.byte	0xe5
	.long	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x25
	.long	0x431
	.uleb128 0x14
	.long	0x431
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x119
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x437
	.uleb128 0x15
	.long	.LASF67
	.value	0x424
	.byte	0x5
	.value	0x239
	.long	0x569
	.uleb128 0x16
	.long	.LASF68
	.byte	0x5
	.value	0x23b
	.long	0x25
	.byte	0
	.uleb128 0x16
	.long	.LASF69
	.byte	0x5
	.value	0x240
	.long	0x643
	.byte	0x4
	.uleb128 0x16
	.long	.LASF70
	.byte	0x5
	.value	0x240
	.long	0x643
	.byte	0x8
	.uleb128 0x16
	.long	.LASF71
	.byte	0x5
	.value	0x240
	.long	0x643
	.byte	0xc
	.uleb128 0x16
	.long	.LASF72
	.byte	0x5
	.value	0x242
	.long	0x25
	.byte	0x10
	.uleb128 0x16
	.long	.LASF73
	.byte	0x5
	.value	0x243
	.long	0x825
	.byte	0x14
	.uleb128 0x16
	.long	.LASF74
	.byte	0x5
	.value	0x246
	.long	0x25
	.byte	0x30
	.uleb128 0x16
	.long	.LASF75
	.byte	0x5
	.value	0x247
	.long	0x83a
	.byte	0x34
	.uleb128 0x16
	.long	.LASF76
	.byte	0x5
	.value	0x249
	.long	0x25
	.byte	0x38
	.uleb128 0x16
	.long	.LASF77
	.byte	0x5
	.value	0x24b
	.long	0x84b
	.byte	0x3c
	.uleb128 0x16
	.long	.LASF78
	.byte	0x5
	.value	0x24e
	.long	0x184
	.byte	0x40
	.uleb128 0x16
	.long	.LASF79
	.byte	0x5
	.value	0x24f
	.long	0x25
	.byte	0x44
	.uleb128 0x16
	.long	.LASF80
	.byte	0x5
	.value	0x250
	.long	0x184
	.byte	0x48
	.uleb128 0x16
	.long	.LASF81
	.byte	0x5
	.value	0x251
	.long	0x851
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF82
	.byte	0x5
	.value	0x254
	.long	0x25
	.byte	0x50
	.uleb128 0x16
	.long	.LASF83
	.byte	0x5
	.value	0x255
	.long	0x119
	.byte	0x54
	.uleb128 0x16
	.long	.LASF84
	.byte	0x5
	.value	0x278
	.long	0x803
	.byte	0x58
	.uleb128 0x17
	.long	.LASF44
	.byte	0x5
	.value	0x27c
	.long	0x2a1
	.value	0x148
	.uleb128 0x17
	.long	.LASF85
	.byte	0x5
	.value	0x27d
	.long	0x263
	.value	0x14c
	.uleb128 0x17
	.long	.LASF86
	.byte	0x5
	.value	0x281
	.long	0x862
	.value	0x2dc
	.uleb128 0x17
	.long	.LASF87
	.byte	0x5
	.value	0x286
	.long	0x608
	.value	0x2e0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x5
	.value	0x287
	.long	0x86e
	.value	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x413
	.uleb128 0x13
	.long	0x25
	.long	0x58d
	.uleb128 0x14
	.long	0x431
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x58d
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x593
	.uleb128 0x18
	.long	0x11f
	.uleb128 0xd
	.byte	0x4
	.long	0x56f
	.uleb128 0x13
	.long	0x93
	.long	0x5bc
	.uleb128 0x14
	.long	0x431
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x93
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x59e
	.uleb128 0x13
	.long	0x25
	.long	0x5d6
	.uleb128 0x14
	.long	0x431
	.uleb128 0x14
	.long	0x117
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5c2
	.uleb128 0x8
	.long	0x53
	.long	0x5ec
	.uleb128 0x9
	.long	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0x5fc
	.uleb128 0x9
	.long	0xd9
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF89
	.byte	0x5
	.value	0x11f
	.long	0x2e9
	.uleb128 0x19
	.long	.LASF90
	.byte	0xc
	.byte	0x5
	.value	0x123
	.long	0x63d
	.uleb128 0x16
	.long	.LASF24
	.byte	0x5
	.value	0x125
	.long	0x63d
	.byte	0
	.uleb128 0x16
	.long	.LASF91
	.byte	0x5
	.value	0x126
	.long	0x25
	.byte	0x4
	.uleb128 0x16
	.long	.LASF92
	.byte	0x5
	.value	0x127
	.long	0x643
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x608
	.uleb128 0xd
	.byte	0x4
	.long	0x5fc
	.uleb128 0x19
	.long	.LASF93
	.byte	0xe
	.byte	0x5
	.value	0x13f
	.long	0x67e
	.uleb128 0x16
	.long	.LASF94
	.byte	0x5
	.value	0x140
	.long	0x67e
	.byte	0
	.uleb128 0x16
	.long	.LASF95
	.byte	0x5
	.value	0x141
	.long	0x67e
	.byte	0x6
	.uleb128 0x16
	.long	.LASF96
	.byte	0x5
	.value	0x142
	.long	0x61
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x61
	.long	0x68e
	.uleb128 0x9
	.long	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xcc
	.byte	0x5
	.value	0x259
	.long	0x78f
	.uleb128 0x16
	.long	.LASF97
	.byte	0x5
	.value	0x25b
	.long	0x37
	.byte	0
	.uleb128 0x16
	.long	.LASF98
	.byte	0x5
	.value	0x25c
	.long	0x119
	.byte	0x4
	.uleb128 0x16
	.long	.LASF99
	.byte	0x5
	.value	0x25d
	.long	0x78f
	.byte	0x8
	.uleb128 0x16
	.long	.LASF100
	.byte	0x5
	.value	0x25e
	.long	0x19a
	.byte	0x24
	.uleb128 0x16
	.long	.LASF101
	.byte	0x5
	.value	0x25f
	.long	0x25
	.byte	0x48
	.uleb128 0x16
	.long	.LASF102
	.byte	0x5
	.value	0x260
	.long	0x76
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF103
	.byte	0x5
	.value	0x261
	.long	0x649
	.byte	0x54
	.uleb128 0x16
	.long	.LASF104
	.byte	0x5
	.value	0x262
	.long	0x101
	.byte	0x64
	.uleb128 0x16
	.long	.LASF105
	.byte	0x5
	.value	0x263
	.long	0x101
	.byte	0x6c
	.uleb128 0x16
	.long	.LASF106
	.byte	0x5
	.value	0x264
	.long	0x101
	.byte	0x74
	.uleb128 0x16
	.long	.LASF107
	.byte	0x5
	.value	0x265
	.long	0x79f
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF108
	.byte	0x5
	.value	0x266
	.long	0x7af
	.byte	0x84
	.uleb128 0x16
	.long	.LASF109
	.byte	0x5
	.value	0x267
	.long	0x25
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF110
	.byte	0x5
	.value	0x268
	.long	0x101
	.byte	0xa0
	.uleb128 0x16
	.long	.LASF111
	.byte	0x5
	.value	0x269
	.long	0x101
	.byte	0xa8
	.uleb128 0x16
	.long	.LASF112
	.byte	0x5
	.value	0x26a
	.long	0x101
	.byte	0xb0
	.uleb128 0x16
	.long	.LASF113
	.byte	0x5
	.value	0x26b
	.long	0x101
	.byte	0xb8
	.uleb128 0x16
	.long	.LASF114
	.byte	0x5
	.value	0x26c
	.long	0x101
	.byte	0xc0
	.uleb128 0x16
	.long	.LASF115
	.byte	0x5
	.value	0x26d
	.long	0x25
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x79f
	.uleb128 0x9
	.long	0xd9
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x7af
	.uleb128 0x9
	.long	0xd9
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x7bf
	.uleb128 0x9
	.long	0xd9
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x5
	.value	0x272
	.long	0x7e3
	.uleb128 0x16
	.long	.LASF116
	.byte	0x5
	.value	0x275
	.long	0x7e3
	.byte	0
	.uleb128 0x16
	.long	.LASF117
	.byte	0x5
	.value	0x276
	.long	0x7f3
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2e3
	.long	0x7f3
	.uleb128 0x9
	.long	0xd9
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x37
	.long	0x803
	.uleb128 0x9
	.long	0xd9
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x5
	.value	0x257
	.long	0x825
	.uleb128 0x1c
	.long	.LASF67
	.byte	0x5
	.value	0x26e
	.long	0x68e
	.uleb128 0x1c
	.long	.LASF118
	.byte	0x5
	.value	0x277
	.long	0x7bf
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x835
	.uleb128 0x9
	.long	0xd9
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF271
	.uleb128 0xd
	.byte	0x4
	.long	0x835
	.uleb128 0x1e
	.long	0x84b
	.uleb128 0x14
	.long	0x431
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x840
	.uleb128 0xd
	.byte	0x4
	.long	0x184
	.uleb128 0x1e
	.long	0x862
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x868
	.uleb128 0xd
	.byte	0x4
	.long	0x857
	.uleb128 0x8
	.long	0x5fc
	.long	0x87e
	.uleb128 0x9
	.long	0xd9
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF119
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF120
	.uleb128 0x3
	.long	.LASF121
	.byte	0x6
	.byte	0x42
	.long	0x5fc
	.uleb128 0x3
	.long	.LASF122
	.byte	0x7
	.byte	0x31
	.long	0x53
	.uleb128 0x3
	.long	.LASF123
	.byte	0x7
	.byte	0x32
	.long	0x4c
	.uleb128 0x3
	.long	.LASF124
	.byte	0x7
	.byte	0x33
	.long	0x61
	.uleb128 0x3
	.long	.LASF125
	.byte	0x7
	.byte	0x34
	.long	0x5a
	.uleb128 0x3
	.long	.LASF126
	.byte	0x7
	.byte	0x35
	.long	0x6f
	.uleb128 0x3
	.long	.LASF127
	.byte	0x8
	.byte	0x39
	.long	0x8a2
	.uleb128 0x1f
	.byte	0x4
	.long	0x25
	.byte	0x8
	.byte	0x3d
	.long	0x94c
	.uleb128 0x20
	.long	.LASF128
	.byte	0
	.uleb128 0x21
	.long	.LASF129
	.sleb128 -1
	.uleb128 0x21
	.long	.LASF130
	.sleb128 -2
	.uleb128 0x21
	.long	.LASF131
	.sleb128 -3
	.uleb128 0x21
	.long	.LASF132
	.sleb128 -4
	.uleb128 0x21
	.long	.LASF133
	.sleb128 -5
	.uleb128 0x21
	.long	.LASF134
	.sleb128 -6
	.uleb128 0x21
	.long	.LASF135
	.sleb128 -7
	.uleb128 0x21
	.long	.LASF136
	.sleb128 -8
	.uleb128 0x21
	.long	.LASF137
	.sleb128 -9
	.uleb128 0x21
	.long	.LASF138
	.sleb128 -10
	.uleb128 0x21
	.long	.LASF139
	.sleb128 -11
	.uleb128 0x21
	.long	.LASF140
	.sleb128 -12
	.uleb128 0x21
	.long	.LASF141
	.sleb128 -13
	.uleb128 0x21
	.long	.LASF142
	.sleb128 -14
	.uleb128 0x21
	.long	.LASF143
	.sleb128 -15
	.uleb128 0x21
	.long	.LASF144
	.sleb128 -16
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x48
	.long	0x977
	.uleb128 0x20
	.long	.LASF145
	.byte	0
	.uleb128 0x20
	.long	.LASF146
	.byte	0x1
	.uleb128 0x20
	.long	.LASF147
	.byte	0x2
	.uleb128 0x20
	.long	.LASF148
	.byte	0x3
	.uleb128 0x20
	.long	.LASF149
	.byte	0x4
	.byte	0
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x69
	.long	0x99c
	.uleb128 0x20
	.long	.LASF150
	.byte	0
	.uleb128 0x20
	.long	.LASF151
	.byte	0x1
	.uleb128 0x20
	.long	.LASF152
	.byte	0x2
	.uleb128 0x20
	.long	.LASF153
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF154
	.byte	0x10
	.byte	0x9
	.byte	0x9d
	.long	0x9fd
	.uleb128 0xb
	.long	.LASF155
	.byte	0x9
	.byte	0x9f
	.long	0x9fd
	.byte	0
	.uleb128 0xb
	.long	.LASF156
	.byte	0x9
	.byte	0xa2
	.long	0x117
	.byte	0x4
	.uleb128 0xb
	.long	.LASF157
	.byte	0x9
	.byte	0xab
	.long	0x8ad
	.byte	0x8
	.uleb128 0xf
	.string	"len"
	.byte	0x9
	.byte	0xae
	.long	0x8ad
	.byte	0xa
	.uleb128 0xb
	.long	.LASF158
	.byte	0x9
	.byte	0xb1
	.long	0x897
	.byte	0xc
	.uleb128 0xb
	.long	.LASF159
	.byte	0x9
	.byte	0xb4
	.long	0x897
	.byte	0xd
	.uleb128 0xf
	.string	"ref"
	.byte	0x9
	.byte	0xc2
	.long	0x8ad
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x99c
	.uleb128 0xd
	.byte	0x4
	.long	0xa09
	.uleb128 0x1e
	.long	0xa14
	.uleb128 0x14
	.long	0x117
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF160
	.uleb128 0xe
	.long	.LASF161
	.byte	0x4
	.byte	0xa
	.byte	0x35
	.long	0xa34
	.uleb128 0xb
	.long	.LASF162
	.byte	0xa
	.byte	0x36
	.long	0x8c3
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF163
	.byte	0xa
	.byte	0x49
	.long	0xa1b
	.uleb128 0x22
	.long	.LASF183
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x36
	.long	0xa62
	.uleb128 0x20
	.long	.LASF164
	.byte	0
	.uleb128 0x20
	.long	.LASF165
	.byte	0x6
	.uleb128 0x20
	.long	.LASF166
	.byte	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF167
	.byte	0xb
	.byte	0xe1
	.long	0xa34
	.uleb128 0x1f
	.byte	0x4
	.long	0x37
	.byte	0xc
	.byte	0x32
	.long	0xad4
	.uleb128 0x20
	.long	.LASF168
	.byte	0
	.uleb128 0x20
	.long	.LASF169
	.byte	0x1
	.uleb128 0x20
	.long	.LASF170
	.byte	0x2
	.uleb128 0x20
	.long	.LASF171
	.byte	0x3
	.uleb128 0x20
	.long	.LASF172
	.byte	0x4
	.uleb128 0x20
	.long	.LASF173
	.byte	0x5
	.uleb128 0x20
	.long	.LASF174
	.byte	0x6
	.uleb128 0x20
	.long	.LASF175
	.byte	0x7
	.uleb128 0x20
	.long	.LASF176
	.byte	0x8
	.uleb128 0x20
	.long	.LASF177
	.byte	0x9
	.uleb128 0x20
	.long	.LASF178
	.byte	0xa
	.uleb128 0x20
	.long	.LASF179
	.byte	0xb
	.uleb128 0x20
	.long	.LASF180
	.byte	0xc
	.uleb128 0x20
	.long	.LASF181
	.byte	0xd
	.uleb128 0x20
	.long	.LASF182
	.byte	0xe
	.byte	0
	.uleb128 0x22
	.long	.LASF184
	.byte	0x4
	.long	0x37
	.byte	0xd
	.byte	0x6b
	.long	0xaf7
	.uleb128 0x20
	.long	.LASF185
	.byte	0
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.uleb128 0x20
	.long	.LASF187
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF188
	.byte	0xe
	.byte	0x4d
	.long	0xb02
	.uleb128 0xd
	.byte	0x4
	.long	0xb08
	.uleb128 0x1e
	.long	0xb27
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0xb27
	.uleb128 0x14
	.long	0x9fd
	.uleb128 0x14
	.long	0xbd6
	.uleb128 0x14
	.long	0x8ad
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xb2d
	.uleb128 0xe
	.long	.LASF189
	.byte	0x28
	.byte	0xe
	.byte	0x51
	.long	0xbd6
	.uleb128 0xb
	.long	.LASF190
	.byte	0xe
	.byte	0x53
	.long	0xa62
	.byte	0
	.uleb128 0xb
	.long	.LASF191
	.byte	0xe
	.byte	0x53
	.long	0xa62
	.byte	0x4
	.uleb128 0xb
	.long	.LASF192
	.byte	0xe
	.byte	0x53
	.long	0x897
	.byte	0x8
	.uleb128 0xf
	.string	"tos"
	.byte	0xe
	.byte	0x53
	.long	0x897
	.byte	0x9
	.uleb128 0xf
	.string	"ttl"
	.byte	0xe
	.byte	0x53
	.long	0x897
	.byte	0xa
	.uleb128 0xb
	.long	.LASF155
	.byte	0xe
	.byte	0x57
	.long	0xb27
	.byte	0xc
	.uleb128 0xb
	.long	.LASF159
	.byte	0xe
	.byte	0x59
	.long	0x897
	.byte	0x10
	.uleb128 0xb
	.long	.LASF193
	.byte	0xe
	.byte	0x5b
	.long	0x8ad
	.byte	0x12
	.uleb128 0xb
	.long	.LASF194
	.byte	0xe
	.byte	0x5b
	.long	0x8ad
	.byte	0x14
	.uleb128 0xb
	.long	.LASF195
	.byte	0xe
	.byte	0x5f
	.long	0xa62
	.byte	0x18
	.uleb128 0xb
	.long	.LASF196
	.byte	0xe
	.byte	0x61
	.long	0x897
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF197
	.byte	0xe
	.byte	0x6a
	.long	0xaf7
	.byte	0x20
	.uleb128 0xb
	.long	.LASF198
	.byte	0xe
	.byte	0x6c
	.long	0x117
	.byte	0x24
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xbdc
	.uleb128 0x18
	.long	0xa62
	.uleb128 0x22
	.long	.LASF199
	.byte	0x4
	.long	0x37
	.byte	0xf
	.byte	0x41
	.long	0xc1c
	.uleb128 0x20
	.long	.LASF200
	.byte	0x1
	.uleb128 0x20
	.long	.LASF201
	.byte	0x2
	.uleb128 0x20
	.long	.LASF202
	.byte	0x3
	.uleb128 0x20
	.long	.LASF203
	.byte	0x4
	.uleb128 0x20
	.long	.LASF204
	.byte	0x5
	.uleb128 0x20
	.long	.LASF205
	.byte	0x6
	.uleb128 0x20
	.long	.LASF206
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF207
	.byte	0x10
	.byte	0xf
	.byte	0x4b
	.long	0xc59
	.uleb128 0xb
	.long	.LASF208
	.byte	0xf
	.byte	0x53
	.long	0xc72
	.byte	0
	.uleb128 0xb
	.long	.LASF209
	.byte	0xf
	.byte	0x58
	.long	0xa03
	.byte	0x4
	.uleb128 0xb
	.long	.LASF210
	.byte	0xf
	.byte	0x60
	.long	0xc91
	.byte	0x8
	.uleb128 0xb
	.long	.LASF211
	.byte	0xf
	.byte	0x69
	.long	0xcab
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	0x117
	.long	0xc72
	.uleb128 0x14
	.long	0x58d
	.uleb128 0x14
	.long	0x58d
	.uleb128 0x14
	.long	0x897
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xc59
	.uleb128 0x13
	.long	0x25
	.long	0xc91
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x25
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xc78
	.uleb128 0x13
	.long	0x25
	.long	0xcab
	.uleb128 0x14
	.long	0x117
	.uleb128 0x14
	.long	0x9fd
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xc97
	.uleb128 0x3
	.long	.LASF212
	.byte	0xf
	.byte	0x6a
	.long	0xc1c
	.uleb128 0xe
	.long	.LASF213
	.byte	0x24
	.byte	0x1
	.byte	0x3a
	.long	0xd4d
	.uleb128 0xf
	.string	"ctx"
	.byte	0x1
	.byte	0x3b
	.long	0xd4d
	.byte	0
	.uleb128 0xb
	.long	.LASF214
	.byte	0x1
	.byte	0x3c
	.long	0x117
	.byte	0x4
	.uleb128 0xb
	.long	.LASF215
	.byte	0x1
	.byte	0x3d
	.long	0x9fd
	.byte	0x8
	.uleb128 0xb
	.long	.LASF216
	.byte	0x1
	.byte	0x3e
	.long	0xb27
	.byte	0xc
	.uleb128 0xb
	.long	.LASF162
	.byte	0x1
	.byte	0x3f
	.long	0xa62
	.byte	0x10
	.uleb128 0xb
	.long	.LASF217
	.byte	0x1
	.byte	0x40
	.long	0x8ad
	.byte	0x14
	.uleb128 0xb
	.long	.LASF218
	.byte	0x1
	.byte	0x41
	.long	0x25
	.byte	0x18
	.uleb128 0xb
	.long	.LASF219
	.byte	0x1
	.byte	0x42
	.long	0x25
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF220
	.byte	0x1
	.byte	0x43
	.long	0x8ad
	.byte	0x20
	.uleb128 0xb
	.long	.LASF221
	.byte	0x1
	.byte	0x44
	.long	0x897
	.byte	0x22
	.uleb128 0xb
	.long	.LASF222
	.byte	0x1
	.byte	0x45
	.long	0x897
	.byte	0x23
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xd53
	.uleb128 0x18
	.long	0xcb1
	.uleb128 0x23
	.long	.LASF272
	.byte	0x1
	.value	0x155
	.long	0x117
	.byte	0x1
	.long	0xd99
	.uleb128 0x24
	.long	.LASF223
	.byte	0x1
	.value	0x155
	.long	0x58d
	.uleb128 0x24
	.long	.LASF224
	.byte	0x1
	.value	0x155
	.long	0x58d
	.uleb128 0x24
	.long	.LASF211
	.byte	0x1
	.value	0x155
	.long	0x897
	.uleb128 0x25
	.string	"fp"
	.byte	0x1
	.value	0x157
	.long	0xd99
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x88c
	.uleb128 0x26
	.long	.LASF273
	.byte	0x1
	.value	0x13d
	.byte	0x1
	.long	0xdb9
	.uleb128 0x27
	.string	"arg"
	.byte	0x1
	.value	0x13d
	.long	0x117
	.byte	0
	.uleb128 0x28
	.long	.LASF227
	.byte	0x1
	.value	0x16d
	.long	0x25
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xe2b
	.uleb128 0x29
	.long	.LASF214
	.byte	0x1
	.value	0x16d
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"p"
	.byte	0x1
	.value	0x16d
	.long	0x9fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2b
	.long	.LASF225
	.byte	0x1
	.value	0x16f
	.long	0xe2b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -548
	.uleb128 0x2c
	.long	.LASF226
	.byte	0x1
	.value	0x170
	.long	0x2c
	.long	.LLST0
	.uleb128 0x2d
	.long	.LVL2
	.long	0x136a
	.uleb128 0x2d
	.long	.LVL3
	.long	0x1376
	.uleb128 0x2d
	.long	.LVL4
	.long	0x1381
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0xe3c
	.uleb128 0x2e
	.long	0xd9
	.value	0x1ff
	.byte	0
	.uleb128 0x28
	.long	.LASF228
	.byte	0x1
	.value	0x166
	.long	0x25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xe9b
	.uleb128 0x29
	.long	.LASF214
	.byte	0x1
	.value	0x166
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0x166
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF229
	.byte	0x1
	.value	0x166
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2b
	.long	.LASF230
	.byte	0x1
	.value	0x168
	.long	0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2d
	.long	.LVL6
	.long	0x138a
	.byte	0
	.uleb128 0x2f
	.long	.LASF231
	.byte	0x1
	.value	0x161
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xed3
	.uleb128 0x29
	.long	.LASF214
	.byte	0x1
	.value	0x161
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LVL8
	.long	0x1395
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF232
	.byte	0x1
	.byte	0x64
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0xf1a
	.uleb128 0x33
	.string	"p"
	.byte	0x1
	.byte	0x66
	.long	0x9fd
	.long	.LLST1
	.uleb128 0x2d
	.long	.LVL9
	.long	0x13a0
	.uleb128 0x2d
	.long	.LVL11
	.long	0x13ab
	.uleb128 0x2d
	.long	.LVL12
	.long	0x13b7
	.uleb128 0x2d
	.long	.LVL13
	.long	0x13c2
	.byte	0
	.uleb128 0x34
	.long	.LASF233
	.byte	0x1
	.byte	0x50
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xf4b
	.uleb128 0x2d
	.long	.LVL15
	.long	0x13c2
	.uleb128 0x2d
	.long	.LVL16
	.long	0x13ce
	.uleb128 0x2d
	.long	.LVL18
	.long	0x13d9
	.byte	0
	.uleb128 0x34
	.long	.LASF234
	.byte	0x1
	.byte	0x75
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0xfbe
	.uleb128 0x35
	.long	.LASF156
	.byte	0x1
	.byte	0x77
	.long	0xfbe
	.long	.LLST2
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.byte	0x78
	.long	0x25
	.long	.LLST3
	.uleb128 0x2d
	.long	.LVL19
	.long	0x13c2
	.uleb128 0x2d
	.long	.LVL20
	.long	0x13a0
	.uleb128 0x2d
	.long	.LVL24
	.long	0x13e4
	.uleb128 0x2d
	.long	.LVL27
	.long	0x13ef
	.uleb128 0x36
	.long	.LVL29
	.long	0xf1a
	.uleb128 0x2d
	.long	.LVL32
	.long	0x13fa
	.uleb128 0x36
	.long	.LVL34
	.long	0xed3
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x8ad
	.uleb128 0x34
	.long	.LASF197
	.byte	0x1
	.byte	0x93
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ab
	.uleb128 0x37
	.string	"arg"
	.byte	0x1
	.byte	0x93
	.long	0x117
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x38
	.long	.LASF216
	.byte	0x1
	.byte	0x93
	.long	0xb27
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x37
	.string	"p"
	.byte	0x1
	.byte	0x93
	.long	0x9fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x38
	.long	.LASF162
	.byte	0x1
	.byte	0x93
	.long	0xbd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x38
	.long	.LASF217
	.byte	0x1
	.byte	0x93
	.long	0x8ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x35
	.long	.LASF235
	.byte	0x1
	.byte	0x95
	.long	0xfbe
	.long	.LLST4
	.uleb128 0x35
	.long	.LASF236
	.byte	0x1
	.byte	0x96
	.long	0x25
	.long	.LLST5
	.uleb128 0x39
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x10e4
	.uleb128 0x3a
	.long	.LASF237
	.byte	0x1
	.byte	0xac
	.long	0x593
	.uleb128 0x3
	.byte	0x91
	.sleb128 -67
	.uleb128 0x3a
	.long	.LASF238
	.byte	0x1
	.byte	0xad
	.long	0x11ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x3a
	.long	.LASF224
	.byte	0x1
	.byte	0xae
	.long	0x11bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x35
	.long	.LASF239
	.byte	0x1
	.byte	0xaf
	.long	0x8ad
	.long	.LLST6
	.uleb128 0x35
	.long	.LASF240
	.byte	0x1
	.byte	0xb0
	.long	0x8ad
	.long	.LLST7
	.uleb128 0x2d
	.long	.LVL43
	.long	0x1406
	.uleb128 0x2d
	.long	.LVL44
	.long	0x1411
	.uleb128 0x2d
	.long	.LVL47
	.long	0x136a
	.uleb128 0x2d
	.long	.LVL48
	.long	0x1411
	.uleb128 0x2d
	.long	.LVL51
	.long	0x136a
	.uleb128 0x2d
	.long	.LVL53
	.long	0x13d9
	.uleb128 0x2d
	.long	.LVL54
	.long	0x13d9
	.uleb128 0x2d
	.long	.LVL55
	.long	0x13d9
	.uleb128 0x2d
	.long	.LVL56
	.long	0x141d
	.byte	0
	.uleb128 0x39
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x1146
	.uleb128 0x33
	.string	"ret"
	.byte	0x1
	.byte	0xea
	.long	0x25
	.long	.LLST8
	.uleb128 0x35
	.long	.LASF220
	.byte	0x1
	.byte	0xeb
	.long	0x8ad
	.long	.LLST9
	.uleb128 0x2d
	.long	.LVL60
	.long	0x13e4
	.uleb128 0x2d
	.long	.LVL62
	.long	0x1428
	.uleb128 0x2d
	.long	.LVL65
	.long	0x13ef
	.uleb128 0x2d
	.long	.LVL66
	.long	0xf1a
	.uleb128 0x2d
	.long	.LVL69
	.long	0x141d
	.uleb128 0x2d
	.long	.LVL71
	.long	0xf1a
	.byte	0
	.uleb128 0x39
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x1186
	.uleb128 0x2c
	.long	.LASF220
	.byte	0x1
	.value	0x10d
	.long	0x8ad
	.long	.LLST10
	.uleb128 0x2c
	.long	.LASF241
	.byte	0x1
	.value	0x10e
	.long	0x25
	.long	.LLST11
	.uleb128 0x2d
	.long	.LVL73
	.long	0x13e4
	.uleb128 0x2d
	.long	.LVL78
	.long	0xf4b
	.byte	0
	.uleb128 0x2d
	.long	.LVL38
	.long	0x13ef
	.uleb128 0x2d
	.long	.LVL81
	.long	0x13ef
	.uleb128 0x2d
	.long	.LVL83
	.long	0x13c2
	.uleb128 0x2d
	.long	.LVL84
	.long	0x1381
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x11bb
	.uleb128 0x9
	.long	0xd9
	.byte	0x13
	.byte	0
	.uleb128 0x8
	.long	0x11f
	.long	0x11cb
	.uleb128 0x9
	.long	0xd9
	.byte	0x9
	.byte	0
	.uleb128 0x3b
	.long	0xd58
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x1248
	.uleb128 0x3c
	.long	0xd69
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	0xd75
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3c
	.long	0xd81
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3d
	.long	0xd8d
	.byte	0
	.uleb128 0x3e
	.long	.Ldebug_ranges0+0
	.long	0x1235
	.uleb128 0x3f
	.long	0xd75
	.long	.LLST12
	.uleb128 0x3f
	.long	0xd81
	.long	.LLST13
	.uleb128 0x3f
	.long	0xd69
	.long	.LLST14
	.uleb128 0x40
	.long	.Ldebug_ranges0+0
	.uleb128 0x41
	.long	0xd8d
	.uleb128 0x36
	.long	.LVL91
	.long	0x1434
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LVL87
	.long	0x143f
	.uleb128 0x2d
	.long	.LVL88
	.long	0x143f
	.byte	0
	.uleb128 0x3b
	.long	0xd9f
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x12a8
	.uleb128 0x3c
	.long	0xdac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.long	.LBB13
	.long	.LBE13-.LBB13
	.long	0x128c
	.uleb128 0x3f
	.long	0xdac
	.long	.LLST15
	.uleb128 0x2d
	.long	.LVL95
	.long	0x13d9
	.uleb128 0x2d
	.long	.LVL96
	.long	0xed3
	.byte	0
	.uleb128 0x2d
	.long	.LVL93
	.long	0x1406
	.uleb128 0x2d
	.long	.LVL98
	.long	0x13d9
	.uleb128 0x36
	.long	.LVL99
	.long	0xf1a
	.byte	0
	.uleb128 0x42
	.long	.LASF274
	.byte	0x1
	.value	0x182
	.long	0x8ce
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1307
	.uleb128 0x43
	.string	"ret"
	.byte	0x1
	.value	0x184
	.long	0x8ce
	.long	.LLST16
	.uleb128 0x43
	.string	"pcb"
	.byte	0x1
	.value	0x189
	.long	0xb27
	.long	.LLST17
	.uleb128 0x2d
	.long	.LVL100
	.long	0x144a
	.uleb128 0x2d
	.long	.LVL102
	.long	0x1455
	.uleb128 0x2d
	.long	.LVL103
	.long	0x1460
	.uleb128 0x2d
	.long	.LVL106
	.long	0x146b
	.byte	0
	.uleb128 0x44
	.long	.LASF275
	.byte	0x1
	.value	0x1a0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x1330
	.uleb128 0x2d
	.long	.LVL109
	.long	0xf1a
	.uleb128 0x2d
	.long	.LVL110
	.long	0x1460
	.byte	0
	.uleb128 0x3a
	.long	.LASF213
	.byte	0x1
	.byte	0x48
	.long	0xcbc
	.uleb128 0x5
	.byte	0x3
	.long	tftp_state
	.uleb128 0x45
	.long	.LASF242
	.byte	0x10
	.byte	0x17
	.long	0x37
	.uleb128 0x46
	.long	.LASF243
	.byte	0xb
	.value	0x138
	.long	0xbdc
	.uleb128 0x47
	.long	.LASF244
	.byte	0x1
	.value	0x176
	.long	0xd53
	.uleb128 0x5
	.byte	0x3
	.long	server_ctx
	.uleb128 0x48
	.long	.LASF245
	.long	.LASF245
	.byte	0x9
	.value	0x10f
	.uleb128 0x49
	.long	.LASF246
	.long	.LASF246
	.byte	0x6
	.byte	0xe0
	.uleb128 0x4a
	.long	.LASF276
	.long	.LASF276
	.uleb128 0x49
	.long	.LASF247
	.long	.LASF247
	.byte	0x6
	.byte	0xdf
	.uleb128 0x49
	.long	.LASF248
	.long	.LASF248
	.byte	0x6
	.byte	0xbf
	.uleb128 0x49
	.long	.LASF249
	.long	.LASF249
	.byte	0x9
	.byte	0xfa
	.uleb128 0x48
	.long	.LASF250
	.long	.LASF250
	.byte	0x9
	.value	0x10e
	.uleb128 0x49
	.long	.LASF251
	.long	.LASF251
	.byte	0xe
	.byte	0x83
	.uleb128 0x48
	.long	.LASF252
	.long	.LASF252
	.byte	0x9
	.value	0x109
	.uleb128 0x49
	.long	.LASF253
	.long	.LASF253
	.byte	0x11
	.byte	0x69
	.uleb128 0x49
	.long	.LASF254
	.long	.LASF254
	.byte	0x12
	.byte	0x3d
	.uleb128 0x49
	.long	.LASF255
	.long	.LASF255
	.byte	0x13
	.byte	0x56
	.uleb128 0x49
	.long	.LASF256
	.long	.LASF256
	.byte	0x1
	.byte	0x4b
	.uleb128 0x48
	.long	.LASF257
	.long	.LASF257
	.byte	0x9
	.value	0x105
	.uleb128 0x49
	.long	.LASF258
	.long	.LASF258
	.byte	0x11
	.byte	0x66
	.uleb128 0x48
	.long	.LASF259
	.long	.LASF259
	.byte	0x9
	.value	0x120
	.uleb128 0x49
	.long	.LASF260
	.long	.LASF260
	.byte	0x1
	.byte	0x4d
	.uleb128 0x48
	.long	.LASF261
	.long	.LASF261
	.byte	0x9
	.value	0x106
	.uleb128 0x49
	.long	.LASF262
	.long	.LASF262
	.byte	0x6
	.byte	0xf3
	.uleb128 0x49
	.long	.LASF263
	.long	.LASF263
	.byte	0x14
	.byte	0x27
	.uleb128 0x49
	.long	.LASF264
	.long	.LASF264
	.byte	0xe
	.byte	0x74
	.uleb128 0x49
	.long	.LASF265
	.long	.LASF265
	.byte	0xe
	.byte	0x76
	.uleb128 0x49
	.long	.LASF266
	.long	.LASF266
	.byte	0xe
	.byte	0x75
	.uleb128 0x49
	.long	.LASF267
	.long	.LASF267
	.byte	0xe
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x33
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL3
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST2:
	.long	.LVL21
	.long	.LVL22
	.value	0x1
	.byte	0x53
	.long	.LVL22
	.long	.LVL23
	.value	0x8
	.byte	0x3
	.long	tftp_state+8
	.byte	0x6
	.byte	0x23
	.uleb128 0x4
	.long	.LVL23
	.long	.LVL28
	.value	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.long	.LVL29
	.long	.LVL33
	.value	0x3
	.byte	0x73
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL31
	.value	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL36
	.long	.LVL37
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL41
	.long	.LVL42
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL42
	.long	.LVL57
	.value	0xa
	.byte	0x91
	.sleb128 -86
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL57
	.long	.LVL58
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0xa
	.byte	0x91
	.sleb128 -86
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60-1
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL60-1
	.long	.LVL72
	.value	0xa
	.byte	0x91
	.sleb128 -86
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL72
	.long	.LVL73-1
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL73-1
	.long	.LVL79
	.value	0xa
	.byte	0x91
	.sleb128 -86
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL80
	.long	.LVL82
	.value	0xa
	.byte	0x91
	.sleb128 -86
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL50
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST7:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LVL68
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL61
	.long	.LVL70
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST10:
	.long	.LVL73
	.long	.LVL77
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL74
	.long	.LVL75
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL75
	.long	.LVL76
	.value	0xc
	.byte	0x72
	.sleb128 8
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0x204
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST13:
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST14:
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST15:
	.long	.LVL94
	.long	.LVL97
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL102
	.long	.LVL103-1
	.value	0x1
	.byte	0x50
	.long	.LVL103-1
	.long	.LVL104
	.value	0x2
	.byte	0x75
	.sleb128 -9
	.long	.LVL104
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL101
	.long	.LVL102-1
	.value	0x1
	.byte	0x50
	.long	.LVL102-1
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	.LVL107
	.long	.LVL108
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB7
	.long	.LBE7
	.long	.LBB10
	.long	.LBE10
	.long	0
	.long	0
	.long	.LFB25
	.long	.LFE25
	.long	.LFB24
	.long	.LFE24
	.long	.LFB23
	.long	.LFE23
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB22
	.long	.LFE22
	.long	.LFB21
	.long	.LFE21
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF254:
	.string	"bk_printf"
.LASF189:
	.string	"udp_pcb"
.LASF171:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF192:
	.string	"so_options"
.LASF251:
	.string	"udp_sendto"
.LASF39:
	.string	"_on_exit_args"
.LASF263:
	.string	"strncmp"
.LASF150:
	.string	"PBUF_RAM"
.LASF106:
	.string	"_wctomb_state"
.LASF186:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF201:
	.string	"TFTP_ERROR_ACCESS_VIOLATION"
.LASF149:
	.string	"PBUF_RAW"
.LASF159:
	.string	"flags"
.LASF143:
	.string	"ERR_CLSD"
.LASF103:
	.string	"_r48"
.LASF136:
	.string	"ERR_USE"
.LASF144:
	.string	"ERR_ARG"
.LASF193:
	.string	"local_port"
.LASF108:
	.string	"_signal_buf"
.LASF0:
	.string	"unsigned int"
.LASF155:
	.string	"next"
.LASF253:
	.string	"sys_untimeout"
.LASF257:
	.string	"pbuf_realloc"
.LASF127:
	.string	"err_t"
.LASF53:
	.string	"_lbfsize"
.LASF51:
	.string	"_flags"
.LASF245:
	.string	"pbuf_copy_partial"
.LASF121:
	.string	"FILE"
.LASF68:
	.string	"_errno"
.LASF256:
	.string	"tftp_send_error"
.LASF124:
	.string	"u16_t"
.LASF196:
	.string	"mcast_ttl"
.LASF175:
	.string	"MEMP_TCPIP_MSG_API"
.LASF11:
	.string	"_LOCK_RECURSIVE_T"
.LASF138:
	.string	"ERR_ISCONN"
.LASF55:
	.string	"_read"
.LASF224:
	.string	"mode"
.LASF110:
	.string	"_mbrlen_state"
.LASF255:
	.string	"lwip_htons"
.LASF181:
	.string	"MEMP_PBUF_POOL"
.LASF70:
	.string	"_stdout"
.LASF142:
	.string	"ERR_RST"
.LASF13:
	.string	"_fpos_t"
.LASF46:
	.string	"_fns"
.LASF54:
	.string	"_cookie"
.LASF145:
	.string	"PBUF_TRANSPORT"
.LASF28:
	.string	"_Bigint"
.LASF183:
	.string	"lwip_ip_addr_type"
.LASF36:
	.string	"__tm_wday"
.LASF78:
	.string	"_result"
.LASF206:
	.string	"TFTP_ERROR_NO_SUCH_USER"
.LASF174:
	.string	"MEMP_NETCONN"
.LASF32:
	.string	"__tm_hour"
.LASF177:
	.string	"MEMP_IGMP_GROUP"
.LASF207:
	.string	"tftp_context_s"
.LASF212:
	.string	"tftp_context_t"
.LASF18:
	.string	"__count"
.LASF119:
	.string	"float"
.LASF31:
	.string	"__tm_min"
.LASF116:
	.string	"_nextf"
.LASF249:
	.string	"pbuf_alloc"
.LASF239:
	.string	"filename_end_offset"
.LASF243:
	.string	"ip_addr_any"
.LASF93:
	.string	"_rand48"
.LASF242:
	.string	"aos_log_level"
.LASF79:
	.string	"_result_k"
.LASF9:
	.string	"long long unsigned int"
.LASF99:
	.string	"_asctime_buf"
.LASF50:
	.string	"__sFILE"
.LASF27:
	.string	"_wds"
.LASF216:
	.string	"upcb"
.LASF219:
	.string	"last_pkt"
.LASF163:
	.string	"ip4_addr_t"
.LASF227:
	.string	"tftp_fwrite"
.LASF89:
	.string	"__FILE"
.LASF269:
	.string	"src/tftp_server.c"
.LASF62:
	.string	"_offset"
.LASF134:
	.string	"ERR_VAL"
.LASF270:
	.string	"/home/stone/Documents/pca"
.LASF266:
	.string	"udp_remove"
.LASF260:
	.string	"tftp_send_ack"
.LASF73:
	.string	"_emergency"
.LASF176:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF152:
	.string	"PBUF_REF"
.LASF250:
	.string	"pbuf_copy"
.LASF222:
	.string	"mode_write"
.LASF225:
	.string	"buff"
.LASF262:
	.string	"fopen"
.LASF157:
	.string	"tot_len"
.LASF10:
	.string	"size_t"
.LASF156:
	.string	"payload"
.LASF215:
	.string	"last_data"
.LASF146:
	.string	"PBUF_IP"
.LASF30:
	.string	"__tm_sec"
.LASF37:
	.string	"__tm_yday"
.LASF72:
	.string	"_inc"
.LASF45:
	.string	"_ind"
.LASF153:
	.string	"PBUF_POOL"
.LASF232:
	.string	"resend_data"
.LASF24:
	.string	"_next"
.LASF229:
	.string	"bytes"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF182:
	.string	"MEMP_MAX"
.LASF123:
	.string	"s8_t"
.LASF19:
	.string	"__value"
.LASF135:
	.string	"ERR_WOULDBLOCK"
.LASF131:
	.string	"ERR_TIMEOUT"
.LASF80:
	.string	"_p5s"
.LASF261:
	.string	"pbuf_header"
.LASF180:
	.string	"MEMP_PBUF"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF104:
	.string	"_mblen_state"
.LASF22:
	.string	"char"
.LASF33:
	.string	"__tm_mday"
.LASF258:
	.string	"sys_timeout"
.LASF86:
	.string	"_sig_func"
.LASF111:
	.string	"_mbrtowc_state"
.LASF85:
	.string	"_atexit0"
.LASF238:
	.string	"filename"
.LASF209:
	.string	"close"
.LASF220:
	.string	"blknum"
.LASF204:
	.string	"TFTP_ERROR_UNKNOWN_TRFR_ID"
.LASF21:
	.string	"_flock_t"
.LASF236:
	.string	"opcode"
.LASF230:
	.string	"readbytes"
.LASF15:
	.string	"__wch"
.LASF92:
	.string	"_iobs"
.LASF235:
	.string	"sbuf"
.LASF58:
	.string	"_close"
.LASF76:
	.string	"__sdidinit"
.LASF252:
	.string	"pbuf_free"
.LASF218:
	.string	"timer"
.LASF69:
	.string	"_stdin"
.LASF101:
	.string	"_gamma_signgam"
.LASF173:
	.string	"MEMP_NETBUF"
.LASF1:
	.string	"long long int"
.LASF211:
	.string	"write"
.LASF166:
	.string	"IPADDR_TYPE_ANY"
.LASF48:
	.string	"_base"
.LASF81:
	.string	"_freelist"
.LASF199:
	.string	"tftp_error_s"
.LASF95:
	.string	"_mult"
.LASF23:
	.string	"__ULong"
.LASF170:
	.string	"MEMP_TCP_PCB"
.LASF113:
	.string	"_wcrtomb_state"
.LASF122:
	.string	"u8_t"
.LASF52:
	.string	"_file"
.LASF213:
	.string	"tftp_state"
.LASF77:
	.string	"__cleanup"
.LASF203:
	.string	"TFTP_ERROR_ILLEGAL_OPERATION"
.LASF20:
	.string	"_mbstate_t"
.LASF194:
	.string	"remote_port"
.LASF226:
	.string	"writebytes"
.LASF38:
	.string	"__tm_isdst"
.LASF115:
	.string	"_h_errno"
.LASF233:
	.string	"close_handle"
.LASF223:
	.string	"fname"
.LASF137:
	.string	"ERR_ALREADY"
.LASF160:
	.string	"_Bool"
.LASF34:
	.string	"__tm_mon"
.LASF195:
	.string	"multicast_ip"
.LASF2:
	.string	"long double"
.LASF56:
	.string	"_write"
.LASF44:
	.string	"_atexit"
.LASF65:
	.string	"_mbstate"
.LASF190:
	.string	"local_ip"
.LASF130:
	.string	"ERR_BUF"
.LASF168:
	.string	"MEMP_RAW_PCB"
.LASF274:
	.string	"tftp_server_start"
.LASF188:
	.string	"udp_recv_fn"
.LASF126:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF205:
	.string	"TFTP_ERROR_FILE_EXISTS"
.LASF7:
	.string	"long int"
.LASF178:
	.string	"MEMP_SYS_TIMEOUT"
.LASF247:
	.string	"fread"
.LASF259:
	.string	"pbuf_memfind"
.LASF276:
	.string	"__stack_chk_fail"
.LASF240:
	.string	"mode_end_offset"
.LASF179:
	.string	"MEMP_NETDB"
.LASF88:
	.string	"__sf"
.LASF26:
	.string	"_sign"
.LASF63:
	.string	"_data"
.LASF169:
	.string	"MEMP_UDP_PCB"
.LASF16:
	.string	"__wchb"
.LASF272:
	.string	"tftp_fopen"
.LASF248:
	.string	"fclose"
.LASF35:
	.string	"__tm_year"
.LASF273:
	.string	"tftp_tmr"
.LASF133:
	.string	"ERR_INPROGRESS"
.LASF202:
	.string	"TFTP_ERROR_DISK_FULL"
.LASF161:
	.string	"ip4_addr"
.LASF100:
	.string	"_localtime_buf"
.LASF118:
	.string	"_unused"
.LASF84:
	.string	"_new"
.LASF82:
	.string	"_cvtlen"
.LASF25:
	.string	"_maxwds"
.LASF107:
	.string	"_l64a_buf"
.LASF231:
	.string	"tftp_fclose"
.LASF208:
	.string	"open"
.LASF61:
	.string	"_blksize"
.LASF29:
	.string	"__tm"
.LASF198:
	.string	"recv_arg"
.LASF64:
	.string	"_lock"
.LASF17:
	.string	"sizetype"
.LASF8:
	.string	"long unsigned int"
.LASF91:
	.string	"_niobs"
.LASF14:
	.string	"wint_t"
.LASF237:
	.string	"tftp_null"
.LASF125:
	.string	"s16_t"
.LASF217:
	.string	"port"
.LASF147:
	.string	"PBUF_LINK"
.LASF41:
	.string	"_dso_handle"
.LASF267:
	.string	"udp_recv"
.LASF228:
	.string	"tftp_fread"
.LASF158:
	.string	"type"
.LASF83:
	.string	"_cvtbuf"
.LASF4:
	.string	"unsigned char"
.LASF184:
	.string	"lwip_internal_netif_client_data_index"
.LASF164:
	.string	"IPADDR_TYPE_V4"
.LASF268:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF165:
	.string	"IPADDR_TYPE_V6"
.LASF172:
	.string	"MEMP_TCP_SEG"
.LASF241:
	.string	"lastpkt"
.LASF109:
	.string	"_getdate_err"
.LASF154:
	.string	"pbuf"
.LASF275:
	.string	"tftp_server_stop"
.LASF96:
	.string	"_add"
.LASF234:
	.string	"send_data"
.LASF162:
	.string	"addr"
.LASF47:
	.string	"__sbuf"
.LASF265:
	.string	"udp_bind"
.LASF187:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF90:
	.string	"_glue"
.LASF244:
	.string	"server_ctx"
.LASF141:
	.string	"ERR_ABRT"
.LASF87:
	.string	"__sglue"
.LASF246:
	.string	"fwrite"
.LASF98:
	.string	"_strtok_last"
.LASF105:
	.string	"_mbtowc_state"
.LASF221:
	.string	"retries"
.LASF128:
	.string	"ERR_OK"
.LASF197:
	.string	"recv"
.LASF75:
	.string	"_locale"
.LASF185:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF40:
	.string	"_fnargs"
.LASF140:
	.string	"ERR_IF"
.LASF3:
	.string	"signed char"
.LASF67:
	.string	"_reent"
.LASF6:
	.string	"short unsigned int"
.LASF214:
	.string	"handle"
.LASF139:
	.string	"ERR_CONN"
.LASF191:
	.string	"remote_ip"
.LASF42:
	.string	"_fntypes"
.LASF132:
	.string	"ERR_RTE"
.LASF49:
	.string	"_size"
.LASF120:
	.string	"double"
.LASF167:
	.string	"ip_addr_t"
.LASF12:
	.string	"_off_t"
.LASF60:
	.string	"_nbuf"
.LASF97:
	.string	"_unused_rand"
.LASF148:
	.string	"PBUF_RAW_TX"
.LASF74:
	.string	"_unspecified_locale_info"
.LASF151:
	.string	"PBUF_ROM"
.LASF66:
	.string	"_flags2"
.LASF43:
	.string	"_is_cxa"
.LASF94:
	.string	"_seed"
.LASF200:
	.string	"TFTP_ERROR_FILE_NOT_FOUND"
.LASF102:
	.string	"_rand_next"
.LASF129:
	.string	"ERR_MEM"
.LASF271:
	.string	"__locale_t"
.LASF210:
	.string	"read"
.LASF57:
	.string	"_seek"
.LASF71:
	.string	"_stderr"
.LASF117:
	.string	"_nmalloc"
.LASF59:
	.string	"_ubuf"
.LASF264:
	.string	"udp_new_ip_type"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
