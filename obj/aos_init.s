	.file	"aos_init.c"
	.text
.Ltext0:
	.section	.text.unlikely.hex,"ax",@progbits
.LCOLDB0:
	.section	.text.hex,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.hex
.Ltext_cold0:
	.section	.text.hex
	.type	hex, @function
hex:
.LFB22:
	.file 1 "kernel/init/aos_init.c"
	.loc 1 168 0
	.cfi_startproc
.LVL0:
	.loc 1 169 0
	leal	-48(%eax), %edx
	.loc 1 168 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 169 0
	cmpb	$9, %dl
	.loc 1 168 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 169 0
	jbe	.L4
	.loc 1 171 0
	leal	-97(%eax), %edx
	cmpb	$25, %dl
	ja	.L3
	.loc 1 172 0
	subl	$87, %eax
.LVL1:
	jmp	.L2
.LVL2:
.L3:
	.loc 1 173 0
	leal	-65(%eax), %edx
	.loc 1 174 0
	subl	$55, %eax
.LVL3:
	cmpb	$25, %dl
	movb	$0, %dl
	cmova	%edx, %eax
	jmp	.L2
.LVL4:
.L4:
	movb	%dl, %al
.LVL5:
.L2:
	.loc 1 176 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	hex, .-hex
	.section	.text.unlikely.hex
.LCOLDE0:
	.section	.text.hex
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"tftp client get succeed\r\n"
.LC2:
	.string	"tftp client get failed\r\n"
	.section	.text.unlikely.tftp_get_done,"ax",@progbits
.LCOLDB3:
	.section	.text.tftp_get_done,"ax",@progbits
.LHOTB3:
	.type	tftp_get_done, @function
tftp_get_done:
.LFB18:
	.loc 1 101 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 102 0
	cmpl	$0, 8(%ebp)
	jne	.L9
	.loc 1 103 0
	movl	$.LC1, 8(%ebp)
.LVL7:
	.loc 1 107 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 103 0
	jmp	aos_cli_printf
.LVL8:
.L9:
	.cfi_restore_state
	.loc 1 105 0
	movl	$.LC2, 8(%ebp)
.LVL9:
	.loc 1 107 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 105 0
	jmp	aos_cli_printf
.LVL10:
	.cfi_endproc
.LFE18:
	.size	tftp_get_done, .-tftp_get_done
	.section	.text.unlikely.tftp_get_done
.LCOLDE3:
	.section	.text.tftp_get_done
.LHOTE3:
	.section	.rodata.str1.1
.LC4:
	.string	"error creating socket!\n"
.LC5:
	.string	"error send data %d!\n"
	.section	.text.unlikely.udp_cmd,"ax",@progbits
.LCOLDB6:
	.section	.text.udp_cmd,"ax",@progbits
.LHOTB6:
	.type	udp_cmd, @function
udp_cmd:
.LFB17:
	.loc 1 72 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 72 0
	movl	20(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 75 0
	cmpl	$3, 16(%ebp)
	jle	.L11
	.loc 1 79 0
	leal	-44(%ebp), %edi
	movl	$4, %ecx
	.loc 1 81 0
	subl	$12, %esp
	.loc 1 79 0
	rep stosl
	.loc 1 81 0
	pushl	8(%esi)
	.loc 1 80 0
	movb	$2, -43(%ebp)
	.loc 1 81 0
	call	atoi
.LVL12:
	movzwl	%ax, %eax
	movl	%eax, (%esp)
	call	lwip_htons
.LVL13:
	.loc 1 82 0
	popl	%edi
	pushl	4(%esi)
	.loc 1 81 0
	movw	%ax, -42(%ebp)
	.loc 1 82 0
	call	ipaddr_addr
.LVL14:
	.loc 1 84 0
	addl	$12, %esp
	.loc 1 82 0
	movl	%eax, -40(%ebp)
	.loc 1 84 0
	pushl	$0
	pushl	$2
	pushl	$2
	call	lwip_socket
.LVL15:
	.loc 1 85 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 84 0
	movl	%eax, %ebx
.LVL16:
	.loc 1 85 0
	jns	.L13
	.loc 1 86 0
	subl	$12, %esp
	pushl	$.LC4
	call	aos_cli_printf
.LVL17:
	jmp	.L18
.LVL18:
.L13:
	.loc 1 90 0
	movl	12(%esi), %edx
	xorl	%eax, %eax
.LVL19:
	orl	$-1, %ecx
	movl	%edx, %edi
	repnz scasb
	leal	-44(%ebp), %eax
	pushl	%esi
	pushl	%esi
	notl	%ecx
	pushl	$16
	decl	%ecx
	pushl	%eax
	pushl	$0
	pushl	%ecx
	pushl	%edx
	pushl	%ebx
	call	lwip_sendto
.LVL20:
	.loc 1 92 0
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L14
	.loc 1 93 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	$.LC5
	call	aos_cli_printf
.LVL21:
	addl	$16, %esp
.L14:
	.loc 1 96 0
	subl	$12, %esp
	pushl	%ebx
	call	lwip_close
.LVL22:
.L18:
	addl	$16, %esp
.LVL23:
.L11:
	.loc 1 97 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L16
	call	__stack_chk_fail
.LVL24:
.L16:
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
.LFE17:
	.size	udp_cmd, .-udp_cmd
	.section	.text.unlikely.udp_cmd
.LCOLDE6:
	.section	.text.udp_cmd
.LHOTE6:
	.section	.rodata.str1.1
.LC7:
	.string	"done"
.LC8:
	.string	"failed"
.LC9:
	.string	"10.0.0.2"
.LC10:
	.string	"server"
.LC11:
	.string	"start"
.LC12:
	.string	"tftp start server %s\r\n"
.LC13:
	.string	"stop"
.LC14:
	.string	"tftp stop server done\r\n"
.LC15:
	.string	"get"
.LC16:
	.string	"ota"
.LC17:
	.string	"Usage: tftp server start/stop\r\n"
.LC18:
	.string	"       tftp get path/to/file\r\n"
	.section	.text.unlikely.tftp_cmd,"ax",@progbits
.LCOLDB19:
	.section	.text.tftp_cmd,"ax",@progbits
.LHOTB19:
	.type	tftp_cmd, @function
tftp_cmd:
.LFB19:
	.loc 1 113 0
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
	.loc 1 113 0
	movl	16(%ebp), %edi
	movl	20(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 114 0
	cmpl	$2, %edi
	jle	.L20
	.loc 1 118 0
	movl	4(%ebx), %esi
	pushl	%eax
	pushl	$6
	pushl	$.LC10
	pushl	%esi
	call	strncmp
.LVL26:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L21
	.loc 1 119 0
	movl	8(%ebx), %ebx
	pushl	%eax
	pushl	$5
	pushl	$.LC11
	pushl	%ebx
	call	strncmp
.LVL27:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L22
.LBB2:
	.loc 1 120 0
	call	tftp_server_start
.LVL28:
	.loc 1 121 0
	testb	%al, %al
	movl	$.LC8, %edx
	movl	$.LC7, %eax
.LVL29:
	cmovne	%edx, %eax
	pushl	%edi
	pushl	%edi
	pushl	%eax
	pushl	$.LC12
	jmp	.L31
.L22:
.LBE2:
	.loc 1 123 0
	pushl	%esi
	pushl	$4
	pushl	$.LC13
	pushl	%ebx
	call	strncmp
.LVL30:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L20
	.loc 1 124 0
	call	tftp_server_stop
.LVL31:
	.loc 1 125 0
	subl	$12, %esp
	pushl	$.LC14
	jmp	.L31
.L21:
	.loc 1 129 0
	pushl	%ecx
	pushl	$3
	pushl	$.LC15
	pushl	%esi
	call	strncmp
.LVL32:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L25
.LBB3:
	.loc 1 131 0
	cmpl	$4, %edi
	movl	$.LC9, %eax
	jne	.L26
	.loc 1 131 0 is_stmt 0 discriminator 1
	movl	8(%ebx), %eax
.L26:
	.loc 1 131 0 discriminator 4
	leal	-32(%ebp), %esi
	pushl	%edx
	pushl	%edx
	pushl	%esi
	pushl	%eax
	call	ip4addr_aton
.LVL33:
	.loc 1 132 0 is_stmt 1 discriminator 4
	pushl	$tftp_get_done
	pushl	$client_ctx
	pushl	-4(%ebx,%edi,4)
	pushl	%esi
	call	tftp_client_get
.LVL34:
	addl	$32, %esp
	jmp	.L19
.L25:
.LBE3:
	.loc 1 134 0
	pushl	%eax
	pushl	$3
	pushl	$.LC16
	pushl	%esi
	call	strncmp
.LVL35:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L20
.LBB4:
	.loc 1 138 0
	leal	-32(%ebp), %eax
	pushl	$ota_get_done
	pushl	$ota_ctx
	pushl	8(%ebx)
	.loc 1 137 0
	movl	$33554442, -32(%ebp)
	.loc 1 138 0
	pushl	%eax
	call	tftp_client_get
.LVL36:
	jmp	.L32
.L20:
.LBE4:
	.loc 1 143 0
	subl	$12, %esp
	pushl	$.LC17
	call	aos_cli_printf
.LVL37:
	.loc 1 144 0
	movl	$.LC18, (%esp)
.L31:
	call	aos_cli_printf
.LVL38:
.L32:
	addl	$16, %esp
.L19:
	.loc 1 145 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L27
	call	__stack_chk_fail
.LVL39:
.L27:
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
.LFE19:
	.size	tftp_cmd, .-tftp_cmd
	.section	.text.unlikely.tftp_cmd
.LCOLDE19:
	.section	.text.tftp_cmd
.LHOTE19:
	.section	.text.unlikely.wifi_debug_cmd,"ax",@progbits
.LCOLDB20:
	.section	.text.wifi_debug_cmd,"ax",@progbits
.LHOTB20:
	.globl	wifi_debug_cmd
	.type	wifi_debug_cmd, @function
wifi_debug_cmd:
.LFB21:
	.loc 1 163 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 164 0
	movl	$0, 8(%ebp)
.LVL41:
	.loc 1 165 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 164 0
	jmp	hal_wifi_start_debug_mode
.LVL42:
	.cfi_endproc
.LFE21:
	.size	wifi_debug_cmd, .-wifi_debug_cmd
	.section	.text.unlikely.wifi_debug_cmd
.LCOLDE20:
	.section	.text.wifi_debug_cmd
.LHOTE20:
	.section	.rodata.str1.1
.LC21:
	.string	"MAC address: %02x-%02x-%02x-%02x-%02x-%02x\r\n"
.LC22:
	.string	"Set MAC address: %02x-%02x-%02x-%02x-%02x-%02x\r\n"
.LC23:
	.string	"invalid cmd\r\n"
	.section	.text.unlikely.mac_cmd,"ax",@progbits
.LCOLDB24:
	.section	.text.mac_cmd,"ax",@progbits
.LHOTB24:
	.globl	mac_cmd
	.type	mac_cmd, @function
mac_cmd:
.LFB24:
	.loc 1 188 0
	.cfi_startproc
.LVL43:
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
	.loc 1 188 0
	movl	16(%ebp), %eax
	movl	20(%ebp), %edx
	movl	%gs:20, %ebx
	movl	%ebx, -12(%ebp)
	xorl	%ebx, %ebx
	.loc 1 191 0
	cmpl	$1, %eax
	jne	.L36
.LVL44:
.LBB9:
.LBB10:
	.loc 1 193 0
	leal	-18(%ebp), %eax
.LVL45:
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	$0
	call	hal_wifi_get_mac_addr
.LVL46:
	.loc 1 194 0
	movzbl	-13(%ebp), %eax
	addl	$12, %esp
	pushl	%eax
	movzbl	-14(%ebp), %eax
	pushl	%eax
	movzbl	-15(%ebp), %eax
	pushl	%eax
	movzbl	-16(%ebp), %eax
	pushl	%eax
	movzbl	-17(%ebp), %eax
	pushl	%eax
	movzbl	-18(%ebp), %eax
	pushl	%eax
	pushl	$.LC21
	jmp	.L45
.LVL47:
.L36:
.LBE10:
.LBE9:
	.loc 1 197 0
	cmpl	$2, %eax
	jne	.L38
	.loc 1 199 0
	movl	4(%edx), %ebx
.LVL48:
.LBB11:
.LBB12:
	.loc 1 181 0
	xorl	%ecx, %ecx
.LVL49:
.L39:
	movsbl	(%ebx,%ecx,2), %eax
	testb	%al, %al
	je	.L41
	.loc 1 182 0
	call	hex
.LVL50:
	sall	$4, %eax
	movb	%al, -18(%ebp,%ecx)
	movl	%eax, %esi
	.loc 1 183 0
	movsbl	1(%ebx,%ecx,2), %eax
	call	hex
.LVL51:
	orl	%esi, %eax
	movb	%al, -18(%ebp,%ecx)
	.loc 1 181 0
	incl	%ecx
.LVL52:
	cmpl	$6, %ecx
	jne	.L39
.L41:
.LVL53:
.LBE12:
.LBE11:
	.loc 1 200 0
	pushl	%eax
	pushl	%eax
	leal	-18(%ebp), %eax
	pushl	%eax
	pushl	$0
	call	hal_wifi_set_mac_addr
.LVL54:
	.loc 1 201 0
	movzbl	-13(%ebp), %eax
	addl	$12, %esp
	pushl	%eax
	movzbl	-14(%ebp), %eax
	pushl	%eax
	movzbl	-15(%ebp), %eax
	pushl	%eax
	movzbl	-16(%ebp), %eax
	pushl	%eax
	movzbl	-17(%ebp), %eax
	pushl	%eax
	movzbl	-18(%ebp), %eax
	pushl	%eax
	pushl	$.LC22
.L45:
	call	aos_cli_printf
.LVL55:
	addl	$32, %esp
	jmp	.L35
.L38:
	.loc 1 206 0
	subl	$12, %esp
	pushl	$.LC23
	call	aos_cli_printf
.LVL56:
	addl	$16, %esp
.L35:
	.loc 1 208 0
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L42
	call	__stack_chk_fail
.LVL57:
.L42:
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
.LFE24:
	.size	mac_cmd, .-mac_cmd
	.section	.text.unlikely.mac_cmd
.LCOLDE24:
	.section	.text.mac_cmd
.LHOTE24:
	.section	.text.unlikely.tcpip_cli_init,"ax",@progbits
.LCOLDB25:
	.section	.text.tcpip_cli_init,"ax",@progbits
.LHOTB25:
	.globl	tcpip_cli_init
	.type	tcpip_cli_init, @function
tcpip_cli_init:
.LFB20:
	.loc 1 157 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 158 0
	pushl	$2
	pushl	$tcpip_cli_cmd
	call	aos_cli_register_commands
.LVL58:
	.loc 1 159 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	tcpip_cli_init, .-tcpip_cli_init
	.section	.text.unlikely.tcpip_cli_init
.LCOLDE25:
	.section	.text.tcpip_cli_init
.LHOTE25:
	.section	.text.unlikely.hal_wifi_cli_init,"ax",@progbits
.LCOLDB26:
	.section	.text.hal_wifi_cli_init,"ax",@progbits
.LHOTB26:
	.globl	hal_wifi_cli_init
	.type	hal_wifi_cli_init, @function
hal_wifi_cli_init:
.LFB25:
	.loc 1 217 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 218 0
	pushl	$2
	pushl	$wifi_cli_cmd
	call	aos_cli_register_commands
.LVL59:
	.loc 1 219 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	hal_wifi_cli_init, .-hal_wifi_cli_init
	.section	.text.unlikely.hal_wifi_cli_init
.LCOLDE26:
	.section	.text.hal_wifi_cli_init
.LHOTE26:
	.section	.text.unlikely.cli_service_init,"ax",@progbits
.LCOLDB27:
	.section	.text.cli_service_init,"ax",@progbits
.LHOTB27:
	.globl	cli_service_init
	.type	cli_service_init, @function
cli_service_init:
.LFB26:
	.loc 1 223 0
	.cfi_startproc
.LVL60:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 224 0
	movl	8(%ebp), %eax
	cmpb	$0, 8(%eax)
	je	.L50
.LVL61:
.LBB15:
.LBB16:
	.loc 1 226 0
	call	aos_cli_init
.LVL62:
	.loc 1 229 0
	call	dumpsys_cli_init
.LVL63:
	.loc 1 232 0
	call	tcpip_cli_init
.LVL64:
.LBE16:
.LBE15:
	.loc 1 237 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB18:
.LBB17:
	.loc 1 234 0
	jmp	hal_wifi_cli_init
.LVL65:
.L50:
	.cfi_restore_state
.LBE17:
.LBE18:
	.loc 1 237 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	cli_service_init, .-cli_service_init
	.section	.text.unlikely.cli_service_init
.LCOLDE27:
	.section	.text.cli_service_init
.LHOTE27:
	.section	.text.unlikely.aos_kernel_init,"ax",@progbits
.LCOLDB28:
	.section	.text.aos_kernel_init,"ax",@progbits
.LHOTB28:
	.globl	aos_kernel_init
	.type	aos_kernel_init, @function
aos_kernel_init:
.LFB27:
	.loc 1 242 0
	.cfi_startproc
.LVL66:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 242 0
	movl	8(%ebp), %ebx
	.loc 1 244 0
	call	vfs_init
.LVL67:
	.loc 1 245 0
	call	vfs_device_init
.LVL68:
	.loc 1 249 0
	subl	$12, %esp
	pushl	%ebx
	call	cli_service_init
.LVL69:
	.loc 1 256 0
	call	aos_kv_init
.LVL70:
	.loc 1 264 0
	call	aos_loop_init
.LVL71:
	.loc 1 268 0
	call	trace_start
.LVL72:
	.loc 1 272 0
	call	ota_service_init
.LVL73:
	.loc 1 299 0
	call	aos_framework_init
.LVL74:
	.loc 1 302 0
	popl	%edx
	popl	%ecx
	pushl	4(%ebx)
	pushl	(%ebx)
	call	application_start
.LVL75:
	.loc 1 306 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	aos_kernel_init, .-aos_kernel_init
	.section	.text.unlikely.aos_kernel_init
.LCOLDE28:
	.section	.text.aos_kernel_init
.LHOTE28:
	.globl	wifi_cli_cmd
	.section	.rodata.str1.1
.LC29:
	.string	"wifi_debug"
.LC30:
	.string	"wifi debug mode"
.LC31:
	.string	"mac"
.LC32:
	.string	"get/set mac"
	.section	.data.wifi_cli_cmd,"aw",@progbits
	.align 4
	.type	wifi_cli_cmd, @object
	.size	wifi_cli_cmd, 24
wifi_cli_cmd:
	.long	.LC29
	.long	.LC30
	.long	wifi_debug_cmd
	.long	.LC31
	.long	.LC32
	.long	mac_cmd
	.globl	tcpip_cli_cmd
	.section	.rodata.str1.1
.LC33:
	.string	"tftp"
.LC34:
	.string	"tftp server/client control"
.LC35:
	.string	"udp"
.LC36:
	.string	"[ip] [port] [string data] send udp data"
	.section	.data.tcpip_cli_cmd,"aw",@progbits
	.align 4
	.type	tcpip_cli_cmd, @object
	.size	tcpip_cli_cmd, 24
tcpip_cli_cmd:
	.long	.LC33
	.long	.LC34
	.long	tftp_cmd
	.long	.LC35
	.long	.LC36
	.long	udp_cmd
	.text
.Letext0:
	.section	.text.unlikely.hex
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 5 "./include/aos/cli.h"
	.file 6 "./include/aos/init.h"
	.file 7 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 8 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 9 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 10 "./kernel/protocols/net/include/lwip/inet.h"
	.file 11 "./kernel/protocols/net/include/lwip/err.h"
	.file 12 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 13 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 14 "./kernel/protocols/net/include/lwip/apps/tftp.h"
	.file 15 "./include/aos/log.h"
	.file 16 "./kernel/protocols/net/include/lwip/def.h"
	.file 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 18 "./include/hal/wifi.h"
	.file 19 "./include/aos/yloop.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb60
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF126
	.byte	0xc
	.long	.LASF127
	.long	.LASF128
	.long	.Ldebug_ranges0+0x18
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
	.uleb128 0x4
	.long	.LASF6
	.byte	0x2
	.byte	0x1d
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF7
	.byte	0x2
	.byte	0x2b
	.long	0x6c
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x2
	.byte	0x41
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xa2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x6
	.byte	0x4
	.long	0xaf
	.uleb128 0x7
	.long	0xa2
	.uleb128 0x8
	.long	0xa2
	.long	0xc4
	.uleb128 0x9
	.long	0x93
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.long	.LASF15
	.byte	0x3
	.byte	0x18
	.long	0x48
	.uleb128 0x4
	.long	.LASF16
	.byte	0x4
	.byte	0x49
	.long	0x7a
	.uleb128 0x4
	.long	.LASF17
	.byte	0x4
	.byte	0x4e
	.long	0x61
	.uleb128 0xa
	.long	.LASF32
	.byte	0xc
	.byte	0x5
	.byte	0x16
	.long	0x116
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.byte	0x17
	.long	0xa9
	.byte	0
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.byte	0x18
	.long	0xa9
	.byte	0x4
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.byte	0x1a
	.long	0x136
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	0x130
	.uleb128 0xd
	.long	0x9c
	.uleb128 0xd
	.long	0x25
	.uleb128 0xd
	.long	0x25
	.uleb128 0xd
	.long	0x130
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9c
	.uleb128 0x6
	.byte	0x4
	.long	0x116
	.uleb128 0x6
	.byte	0x4
	.long	0x142
	.uleb128 0xc
	.long	0x14d
	.uleb128 0xd
	.long	0x9a
	.byte	0
	.uleb128 0xe
	.byte	0xc
	.byte	0x6
	.byte	0xb
	.long	0x17a
	.uleb128 0xb
	.long	.LASF21
	.byte	0x6
	.byte	0xc
	.long	0x25
	.byte	0
	.uleb128 0xb
	.long	.LASF22
	.byte	0x6
	.byte	0xd
	.long	0x130
	.byte	0x4
	.uleb128 0xb
	.long	.LASF23
	.byte	0x6
	.byte	0xf
	.long	0x17a
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0x4
	.long	.LASF25
	.byte	0x6
	.byte	0x10
	.long	0x14d
	.uleb128 0x8
	.long	0xc4
	.long	0x19c
	.uleb128 0x9
	.long	0x93
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF26
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF27
	.uleb128 0x4
	.long	.LASF28
	.byte	0x7
	.byte	0x31
	.long	0x53
	.uleb128 0x4
	.long	.LASF29
	.byte	0x7
	.byte	0x32
	.long	0x41
	.uleb128 0x4
	.long	.LASF30
	.byte	0x7
	.byte	0x33
	.long	0x6c
	.uleb128 0x4
	.long	.LASF31
	.byte	0x7
	.byte	0x35
	.long	0x85
	.uleb128 0xa
	.long	.LASF33
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.long	0x1f5
	.uleb128 0xb
	.long	.LASF34
	.byte	0x8
	.byte	0x36
	.long	0x1d1
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF35
	.byte	0x8
	.byte	0x49
	.long	0x1dc
	.uleb128 0x4
	.long	.LASF36
	.byte	0x9
	.byte	0xe1
	.long	0x1f5
	.uleb128 0xa
	.long	.LASF37
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.long	0x224
	.uleb128 0xb
	.long	.LASF38
	.byte	0xa
	.byte	0x3b
	.long	0xcf
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF39
	.byte	0xb
	.byte	0x39
	.long	0x1bb
	.uleb128 0xf
	.byte	0x4
	.long	0x25
	.byte	0xb
	.byte	0x3d
	.long	0x2a2
	.uleb128 0x10
	.long	.LASF40
	.byte	0
	.uleb128 0x11
	.long	.LASF41
	.sleb128 -1
	.uleb128 0x11
	.long	.LASF42
	.sleb128 -2
	.uleb128 0x11
	.long	.LASF43
	.sleb128 -3
	.uleb128 0x11
	.long	.LASF44
	.sleb128 -4
	.uleb128 0x11
	.long	.LASF45
	.sleb128 -5
	.uleb128 0x11
	.long	.LASF46
	.sleb128 -6
	.uleb128 0x11
	.long	.LASF47
	.sleb128 -7
	.uleb128 0x11
	.long	.LASF48
	.sleb128 -8
	.uleb128 0x11
	.long	.LASF49
	.sleb128 -9
	.uleb128 0x11
	.long	.LASF50
	.sleb128 -10
	.uleb128 0x11
	.long	.LASF51
	.sleb128 -11
	.uleb128 0x11
	.long	.LASF52
	.sleb128 -12
	.uleb128 0x11
	.long	.LASF53
	.sleb128 -13
	.uleb128 0x11
	.long	.LASF54
	.sleb128 -14
	.uleb128 0x11
	.long	.LASF55
	.sleb128 -15
	.uleb128 0x11
	.long	.LASF56
	.sleb128 -16
	.byte	0
	.uleb128 0x4
	.long	.LASF57
	.byte	0xc
	.byte	0x40
	.long	0x1b0
	.uleb128 0xa
	.long	.LASF58
	.byte	0x10
	.byte	0xc
	.byte	0x4a
	.long	0x2f6
	.uleb128 0xb
	.long	.LASF59
	.byte	0xc
	.byte	0x4b
	.long	0x1b0
	.byte	0
	.uleb128 0xb
	.long	.LASF60
	.byte	0xc
	.byte	0x4c
	.long	0x2a2
	.byte	0x1
	.uleb128 0xb
	.long	.LASF61
	.byte	0xc
	.byte	0x4d
	.long	0xda
	.byte	0x2
	.uleb128 0xb
	.long	.LASF62
	.byte	0xc
	.byte	0x4e
	.long	0x20b
	.byte	0x4
	.uleb128 0xb
	.long	.LASF63
	.byte	0xc
	.byte	0x50
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	.LASF64
	.byte	0x10
	.byte	0xc
	.byte	0x5f
	.long	0x327
	.uleb128 0xb
	.long	.LASF65
	.byte	0xc
	.byte	0x60
	.long	0x1b0
	.byte	0
	.uleb128 0xb
	.long	.LASF66
	.byte	0xc
	.byte	0x61
	.long	0x2a2
	.byte	0x1
	.uleb128 0xb
	.long	.LASF67
	.byte	0xc
	.byte	0x62
	.long	0x327
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0xa2
	.long	0x337
	.uleb128 0x9
	.long	0x93
	.byte	0xd
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x10
	.byte	0xd
	.byte	0x9d
	.long	0x398
	.uleb128 0xb
	.long	.LASF69
	.byte	0xd
	.byte	0x9f
	.long	0x398
	.byte	0
	.uleb128 0xb
	.long	.LASF70
	.byte	0xd
	.byte	0xa2
	.long	0x9a
	.byte	0x4
	.uleb128 0xb
	.long	.LASF71
	.byte	0xd
	.byte	0xab
	.long	0x1c6
	.byte	0x8
	.uleb128 0x12
	.string	"len"
	.byte	0xd
	.byte	0xae
	.long	0x1c6
	.byte	0xa
	.uleb128 0xb
	.long	.LASF72
	.byte	0xd
	.byte	0xb1
	.long	0x1b0
	.byte	0xc
	.uleb128 0xb
	.long	.LASF73
	.byte	0xd
	.byte	0xb4
	.long	0x1b0
	.byte	0xd
	.uleb128 0x12
	.string	"ref"
	.byte	0xd
	.byte	0xc2
	.long	0x1c6
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x337
	.uleb128 0xa
	.long	.LASF74
	.byte	0x10
	.byte	0xe
	.byte	0x4b
	.long	0x3db
	.uleb128 0xb
	.long	.LASF75
	.byte	0xe
	.byte	0x53
	.long	0x3f4
	.byte	0
	.uleb128 0xb
	.long	.LASF76
	.byte	0xe
	.byte	0x58
	.long	0x13c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF77
	.byte	0xe
	.byte	0x60
	.long	0x413
	.byte	0x8
	.uleb128 0xb
	.long	.LASF78
	.byte	0xe
	.byte	0x69
	.long	0x42d
	.byte	0xc
	.byte	0
	.uleb128 0x13
	.long	0x9a
	.long	0x3f4
	.uleb128 0xd
	.long	0xa9
	.uleb128 0xd
	.long	0xa9
	.uleb128 0xd
	.long	0x1b0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3db
	.uleb128 0x13
	.long	0x25
	.long	0x413
	.uleb128 0xd
	.long	0x9a
	.uleb128 0xd
	.long	0x9a
	.uleb128 0xd
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3fa
	.uleb128 0x13
	.long	0x25
	.long	0x42d
	.uleb128 0xd
	.long	0x9a
	.uleb128 0xd
	.long	0x398
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x419
	.uleb128 0x4
	.long	.LASF79
	.byte	0xe
	.byte	0x6a
	.long	0x39e
	.uleb128 0x14
	.long	.LASF80
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x482
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xbb
	.long	0x9c
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xbb
	.long	0x25
	.uleb128 0x16
	.long	.LASF21
	.byte	0x1
	.byte	0xbb
	.long	0x25
	.uleb128 0x16
	.long	.LASF22
	.byte	0x1
	.byte	0xbb
	.long	0x130
	.uleb128 0x17
	.string	"mac"
	.byte	0x1
	.byte	0xbd
	.long	0x18c
	.byte	0
	.uleb128 0x14
	.long	.LASF81
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	0x49a
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0xde
	.long	0x49a
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x181
	.uleb128 0x18
	.long	.LASF129
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.long	0x4d7
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xb2
	.long	0xa9
	.uleb128 0x15
	.string	"mac"
	.byte	0x1
	.byte	0xb2
	.long	0x19c
	.uleb128 0x15
	.string	"len"
	.byte	0x1
	.byte	0xb2
	.long	0x25
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0xb4
	.long	0x25
	.byte	0
	.uleb128 0x19
	.string	"hex"
	.byte	0x1
	.byte	0xa7
	.long	0xc4
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fe
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0xa7
	.long	0xa2
	.long	.LLST0
	.byte	0
	.uleb128 0x1b
	.long	.LASF85
	.byte	0x1
	.byte	0x64
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x565
	.uleb128 0x1c
	.long	.LASF84
	.byte	0x1
	.byte	0x64
	.long	0x25
	.long	.LLST1
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x64
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LVL8
	.long	0xa38
	.long	0x550
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	.LC1
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.uleb128 0x20
	.long	.LVL10
	.long	0xa38
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF86
	.byte	0x1
	.byte	0x47
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x641
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x47
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x47
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF21
	.byte	0x1
	.byte	0x47
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF22
	.byte	0x1
	.byte	0x47
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x22
	.long	.LASF88
	.byte	0x1
	.byte	0x49
	.long	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x23
	.long	.LASF87
	.byte	0x1
	.byte	0x51
	.long	0x25
	.long	0x5d1
	.uleb128 0x24
	.byte	0
	.uleb128 0x25
	.long	.LASF89
	.byte	0x1
	.byte	0x54
	.long	0x25
	.long	.LLST2
	.uleb128 0x26
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.long	0x25
	.long	.LLST3
	.uleb128 0x27
	.long	.LVL12
	.long	0xa43
	.uleb128 0x27
	.long	.LVL13
	.long	0xa4e
	.uleb128 0x27
	.long	.LVL14
	.long	0xa59
	.uleb128 0x27
	.long	.LVL15
	.long	0xa64
	.uleb128 0x27
	.long	.LVL17
	.long	0xa38
	.uleb128 0x27
	.long	.LVL20
	.long	0xa70
	.uleb128 0x27
	.long	.LVL21
	.long	0xa38
	.uleb128 0x27
	.long	.LVL22
	.long	0xa7c
	.uleb128 0x27
	.long	.LVL24
	.long	0xa88
	.byte	0
	.uleb128 0x1b
	.long	.LASF90
	.byte	0x1
	.byte	0x70
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x76f
	.uleb128 0x1d
	.string	"buf"
	.byte	0x1
	.byte	0x70
	.long	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x70
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF21
	.byte	0x1
	.byte	0x70
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF22
	.byte	0x1
	.byte	0x70
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.long	.LASF130
	.byte	0x1
	.byte	0x8e
	.long	.L20
	.uleb128 0x29
	.long	.LBB2
	.long	.LBE2-.LBB2
	.long	0x6bf
	.uleb128 0x26
	.string	"err"
	.byte	0x1
	.byte	0x78
	.long	0x224
	.long	.LLST4
	.uleb128 0x27
	.long	.LVL28
	.long	0xa91
	.byte	0
	.uleb128 0x29
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x6ed
	.uleb128 0x22
	.long	.LASF91
	.byte	0x1
	.byte	0x82
	.long	0x200
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.long	.LVL33
	.long	0xa9c
	.uleb128 0x27
	.long	.LVL34
	.long	0xaa7
	.byte	0
	.uleb128 0x29
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x71d
	.uleb128 0x22
	.long	.LASF91
	.byte	0x1
	.byte	0x87
	.long	0x200
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2a
	.long	.LASF92
	.byte	0x1
	.byte	0x88
	.long	0x76f
	.uleb128 0x27
	.long	.LVL36
	.long	0xaa7
	.byte	0
	.uleb128 0x27
	.long	.LVL26
	.long	0xab2
	.uleb128 0x27
	.long	.LVL27
	.long	0xab2
	.uleb128 0x27
	.long	.LVL30
	.long	0xab2
	.uleb128 0x27
	.long	.LVL31
	.long	0xabd
	.uleb128 0x27
	.long	.LVL32
	.long	0xab2
	.uleb128 0x27
	.long	.LVL35
	.long	0xab2
	.uleb128 0x27
	.long	.LVL37
	.long	0xa38
	.uleb128 0x27
	.long	.LVL38
	.long	0xa38
	.uleb128 0x27
	.long	.LVL39
	.long	0xa88
	.byte	0
	.uleb128 0x8
	.long	0xc4
	.long	0x77f
	.uleb128 0x9
	.long	0x93
	.byte	0x3
	.byte	0
	.uleb128 0x2b
	.long	.LASF93
	.byte	0x1
	.byte	0xa2
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x7de
	.uleb128 0x1a
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.long	0x9c
	.long	.LLST5
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0xa2
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF21
	.byte	0x1
	.byte	0xa2
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF22
	.byte	0x1
	.byte	0xa2
	.long	0x130
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LVL42
	.long	0xac8
	.uleb128 0x1f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x43e
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x8df
	.uleb128 0x2d
	.long	0x44a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	0x455
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	0x460
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	0x46b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x29
	.long	.LBB9
	.long	.LBE9-.LBB9
	.long	0x866
	.uleb128 0x2f
	.long	0x44a
	.long	.LLST6
	.uleb128 0x2f
	.long	0x455
	.long	.LLST7
	.uleb128 0x2f
	.long	0x460
	.long	.LLST8
	.uleb128 0x2f
	.long	0x46b
	.long	.LLST9
	.uleb128 0x30
	.long	.LBB10
	.long	.LBE10-.LBB10
	.uleb128 0x2e
	.long	0x476
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x27
	.long	.LVL46
	.long	0xad4
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x4a0
	.long	.LBB11
	.long	.LBE11-.LBB11
	.byte	0x1
	.byte	0xc7
	.long	0x8ba
	.uleb128 0x2f
	.long	0x4c2
	.long	.LLST10
	.uleb128 0x2f
	.long	0x4b7
	.long	.LLST11
	.uleb128 0x2f
	.long	0x4ac
	.long	.LLST12
	.uleb128 0x30
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x32
	.long	0x4cd
	.long	.LLST13
	.uleb128 0x27
	.long	.LVL50
	.long	0x4d7
	.uleb128 0x27
	.long	.LVL51
	.long	0x4d7
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL54
	.long	0xadf
	.uleb128 0x27
	.long	.LVL55
	.long	0xa38
	.uleb128 0x27
	.long	.LVL56
	.long	0xa38
	.uleb128 0x27
	.long	.LVL57
	.long	0xa88
	.byte	0
	.uleb128 0x2b
	.long	.LASF94
	.byte	0x1
	.byte	0x9c
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x8fe
	.uleb128 0x27
	.long	.LVL58
	.long	0xaea
	.byte	0
	.uleb128 0x2b
	.long	.LASF95
	.byte	0x1
	.byte	0xd8
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x91d
	.uleb128 0x27
	.long	.LVL59
	.long	0xaea
	.byte	0
	.uleb128 0x2c
	.long	0x482
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x96c
	.uleb128 0x2d
	.long	0x48e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x2f
	.long	0x48e
	.long	.LLST14
	.uleb128 0x27
	.long	.LVL62
	.long	0xaf5
	.uleb128 0x27
	.long	.LVL63
	.long	0xb00
	.uleb128 0x27
	.long	.LVL64
	.long	0x8df
	.uleb128 0x34
	.long	.LVL65
	.long	0x8fe
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	.LASF131
	.byte	0x1
	.byte	0xf1
	.long	0x25
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e5
	.uleb128 0x21
	.long	.LASF82
	.byte	0x1
	.byte	0xf1
	.long	0x49a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LVL67
	.long	0xb0b
	.uleb128 0x27
	.long	.LVL68
	.long	0xb16
	.uleb128 0x27
	.long	.LVL69
	.long	0x482
	.uleb128 0x27
	.long	.LVL70
	.long	0xb21
	.uleb128 0x27
	.long	.LVL71
	.long	0xb2c
	.uleb128 0x27
	.long	.LVL72
	.long	0xb37
	.uleb128 0x27
	.long	.LVL73
	.long	0xb42
	.uleb128 0x27
	.long	.LVL74
	.long	0xb4d
	.uleb128 0x27
	.long	.LVL75
	.long	0xb58
	.byte	0
	.uleb128 0x36
	.long	.LASF96
	.byte	0xf
	.byte	0x17
	.long	0x2c
	.uleb128 0x36
	.long	.LASF97
	.byte	0x1
	.byte	0x6d
	.long	0x433
	.uleb128 0x36
	.long	.LASF98
	.byte	0x1
	.byte	0x6e
	.long	0x433
	.uleb128 0x8
	.long	0xe5
	.long	0xa16
	.uleb128 0x9
	.long	0x93
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF99
	.byte	0x1
	.byte	0x94
	.long	0xa06
	.uleb128 0x5
	.byte	0x3
	.long	tcpip_cli_cmd
	.uleb128 0x37
	.long	.LASF100
	.byte	0x1
	.byte	0xd3
	.long	0xa06
	.uleb128 0x5
	.byte	0x3
	.long	wifi_cli_cmd
	.uleb128 0x38
	.long	.LASF101
	.long	.LASF101
	.byte	0x5
	.byte	0x6c
	.uleb128 0x38
	.long	.LASF87
	.long	.LASF87
	.byte	0x1
	.byte	0x51
	.uleb128 0x38
	.long	.LASF102
	.long	.LASF102
	.byte	0x10
	.byte	0x56
	.uleb128 0x38
	.long	.LASF103
	.long	.LASF103
	.byte	0x8
	.byte	0xf7
	.uleb128 0x39
	.long	.LASF104
	.long	.LASF104
	.byte	0xc
	.value	0x1fc
	.uleb128 0x39
	.long	.LASF105
	.long	.LASF105
	.byte	0xc
	.value	0x1fa
	.uleb128 0x39
	.long	.LASF106
	.long	.LASF106
	.byte	0xc
	.value	0x1f1
	.uleb128 0x3a
	.long	.LASF132
	.long	.LASF132
	.uleb128 0x38
	.long	.LASF107
	.long	.LASF107
	.byte	0xe
	.byte	0x6e
	.uleb128 0x38
	.long	.LASF108
	.long	.LASF108
	.byte	0x8
	.byte	0xf8
	.uleb128 0x38
	.long	.LASF109
	.long	.LASF109
	.byte	0xe
	.byte	0x70
	.uleb128 0x38
	.long	.LASF110
	.long	.LASF110
	.byte	0x11
	.byte	0x27
	.uleb128 0x38
	.long	.LASF111
	.long	.LASF111
	.byte	0xe
	.byte	0x6f
	.uleb128 0x39
	.long	.LASF112
	.long	.LASF112
	.byte	0x12
	.value	0x1a1
	.uleb128 0x38
	.long	.LASF113
	.long	.LASF113
	.byte	0x12
	.byte	0xe8
	.uleb128 0x38
	.long	.LASF114
	.long	.LASF114
	.byte	0x12
	.byte	0xf2
	.uleb128 0x38
	.long	.LASF115
	.long	.LASF115
	.byte	0x5
	.byte	0x57
	.uleb128 0x38
	.long	.LASF116
	.long	.LASF116
	.byte	0x5
	.byte	0x77
	.uleb128 0x38
	.long	.LASF117
	.long	.LASF117
	.byte	0x1
	.byte	0x16
	.uleb128 0x38
	.long	.LASF118
	.long	.LASF118
	.byte	0x1
	.byte	0x10
	.uleb128 0x38
	.long	.LASF119
	.long	.LASF119
	.byte	0x1
	.byte	0x11
	.uleb128 0x38
	.long	.LASF120
	.long	.LASF120
	.byte	0x1
	.byte	0x12
	.uleb128 0x38
	.long	.LASF121
	.long	.LASF121
	.byte	0x13
	.byte	0xb2
	.uleb128 0x38
	.long	.LASF122
	.long	.LASF122
	.byte	0x1
	.byte	0x15
	.uleb128 0x38
	.long	.LASF123
	.long	.LASF123
	.byte	0x1
	.byte	0x13
	.uleb128 0x38
	.long	.LASF124
	.long	.LASF124
	.byte	0x1
	.byte	0x14
	.uleb128 0x38
	.long	.LASF125
	.long	.LASF125
	.byte	0x1
	.byte	0x17
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
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
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.long	.LVL2
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x1
	.byte	0x50
	.long	.LVL5
	.long	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL6
	.long	.LVL7
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	.LVL17-1
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LVL23
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL20
	.long	.LVL21-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL44
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL44
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST8:
	.long	.LVL44
	.long	.LVL47
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x52
	.long	.LVL45
	.long	.LVL47
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST10:
	.long	.LVL48
	.long	.LVL53
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL48
	.long	.LVL53
	.value	0x3
	.byte	0x91
	.sleb128 -26
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL48
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL48
	.long	.LVL49
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL49
	.long	.LVL50-1
	.value	0x1
	.byte	0x51
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST14:
	.long	.LVL61
	.long	.LVL65
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB15
	.long	.LBE15
	.long	.LBB18
	.long	.LBE18
	.long	0
	.long	0
	.long	.LFB22
	.long	.LFE22
	.long	.LFB18
	.long	.LFE18
	.long	.LFB17
	.long	.LFE17
	.long	.LFB19
	.long	.LFE19
	.long	.LFB21
	.long	.LFE21
	.long	.LFB24
	.long	.LFE24
	.long	.LFB20
	.long	.LFE20
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF100:
	.string	"wifi_cli_cmd"
.LASF109:
	.string	"tftp_client_get"
.LASF85:
	.string	"tftp_get_done"
.LASF120:
	.string	"aos_kv_init"
.LASF94:
	.string	"tcpip_cli_init"
.LASF110:
	.string	"strncmp"
.LASF67:
	.string	"sa_data"
.LASF73:
	.string	"flags"
.LASF55:
	.string	"ERR_CLSD"
.LASF48:
	.string	"ERR_USE"
.LASF64:
	.string	"sockaddr"
.LASF56:
	.string	"ERR_ARG"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"next"
.LASF39:
	.string	"err_t"
.LASF92:
	.string	"gw_ip"
.LASF30:
	.string	"u16_t"
.LASF117:
	.string	"dumpsys_cli_init"
.LASF97:
	.string	"client_ctx"
.LASF115:
	.string	"aos_cli_register_commands"
.LASF84:
	.string	"error"
.LASF102:
	.string	"lwip_htons"
.LASF83:
	.string	"macstr"
.LASF54:
	.string	"ERR_RST"
.LASF108:
	.string	"ip4addr_aton"
.LASF49:
	.string	"ERR_ALREADY"
.LASF16:
	.string	"in_addr_t"
.LASF74:
	.string	"tftp_context_s"
.LASF79:
	.string	"tftp_context_t"
.LASF123:
	.string	"ota_service_init"
.LASF26:
	.string	"float"
.LASF59:
	.string	"sin_len"
.LASF88:
	.string	"saddr"
.LASF96:
	.string	"aos_log_level"
.LASF12:
	.string	"long long unsigned int"
.LASF25:
	.string	"kinit_t"
.LASF7:
	.string	"__uint16_t"
.LASF17:
	.string	"in_port_t"
.LASF46:
	.string	"ERR_VAL"
.LASF128:
	.string	"/home/stone/Documents/pca"
.LASF104:
	.string	"lwip_socket"
.LASF122:
	.string	"trace_start"
.LASF103:
	.string	"ipaddr_addr"
.LASF63:
	.string	"sin_zero"
.LASF91:
	.string	"dst_addr"
.LASF38:
	.string	"s_addr"
.LASF131:
	.string	"aos_kernel_init"
.LASF71:
	.string	"tot_len"
.LASF57:
	.string	"sa_family_t"
.LASF70:
	.string	"payload"
.LASF105:
	.string	"lwip_sendto"
.LASF24:
	.string	"_Bool"
.LASF60:
	.string	"sin_family"
.LASF29:
	.string	"s8_t"
.LASF47:
	.string	"ERR_WOULDBLOCK"
.LASF43:
	.string	"ERR_TIMEOUT"
.LASF116:
	.string	"aos_cli_init"
.LASF14:
	.string	"char"
.LASF76:
	.string	"close"
.LASF15:
	.string	"uint8_t"
.LASF1:
	.string	"long long int"
.LASF78:
	.string	"write"
.LASF52:
	.string	"ERR_IF"
.LASF61:
	.string	"sin_port"
.LASF93:
	.string	"wifi_debug_cmd"
.LASF86:
	.string	"udp_cmd"
.LASF119:
	.string	"vfs_device_init"
.LASF28:
	.string	"u8_t"
.LASF62:
	.string	"sin_addr"
.LASF113:
	.string	"hal_wifi_get_mac_addr"
.LASF106:
	.string	"lwip_close"
.LASF21:
	.string	"argc"
.LASF23:
	.string	"cli_enable"
.LASF22:
	.string	"argv"
.LASF2:
	.string	"long double"
.LASF98:
	.string	"ota_ctx"
.LASF42:
	.string	"ERR_BUF"
.LASF107:
	.string	"tftp_server_start"
.LASF31:
	.string	"u32_t"
.LASF5:
	.string	"short int"
.LASF35:
	.string	"ip4_addr_t"
.LASF9:
	.string	"long int"
.LASF81:
	.string	"cli_service_init"
.LASF132:
	.string	"__stack_chk_fail"
.LASF65:
	.string	"sa_len"
.LASF95:
	.string	"hal_wifi_cli_init"
.LASF45:
	.string	"ERR_INPROGRESS"
.LASF114:
	.string	"hal_wifi_set_mac_addr"
.LASF33:
	.string	"ip4_addr"
.LASF89:
	.string	"sockfd"
.LASF58:
	.string	"sockaddr_in"
.LASF6:
	.string	"__uint8_t"
.LASF50:
	.string	"ERR_ISCONN"
.LASF18:
	.string	"name"
.LASF127:
	.string	"src/aos_init.c"
.LASF75:
	.string	"open"
.LASF13:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF130:
	.string	"tftp_print_usage"
.LASF129:
	.string	"hexstr2bin"
.LASF37:
	.string	"in_addr"
.LASF19:
	.string	"help"
.LASF72:
	.string	"type"
.LASF80:
	.string	"mac_cmd"
.LASF4:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF20:
	.string	"function"
.LASF126:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF68:
	.string	"pbuf"
.LASF111:
	.string	"tftp_server_stop"
.LASF99:
	.string	"tcpip_cli_cmd"
.LASF34:
	.string	"addr"
.LASF82:
	.string	"kinit"
.LASF101:
	.string	"aos_cli_printf"
.LASF125:
	.string	"application_start"
.LASF53:
	.string	"ERR_ABRT"
.LASF118:
	.string	"vfs_init"
.LASF40:
	.string	"ERR_OK"
.LASF3:
	.string	"signed char"
.LASF66:
	.string	"sa_family"
.LASF121:
	.string	"aos_loop_init"
.LASF8:
	.string	"short unsigned int"
.LASF87:
	.string	"atoi"
.LASF51:
	.string	"ERR_CONN"
.LASF44:
	.string	"ERR_RTE"
.LASF27:
	.string	"double"
.LASF36:
	.string	"ip_addr_t"
.LASF112:
	.string	"hal_wifi_start_debug_mode"
.LASF90:
	.string	"tftp_cmd"
.LASF124:
	.string	"aos_framework_init"
.LASF41:
	.string	"ERR_MEM"
.LASF77:
	.string	"read"
.LASF32:
	.string	"cli_command"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
