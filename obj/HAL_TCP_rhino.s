	.file	"HAL_TCP_rhino.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"RHINOSOCK %d %s() | establish tcp connection with server(host=%s port=%u)\n"
.LC1:
	.string	"%u"
.LC2:
	.string	"getaddrinfo error"
.LC3:
	.string	"socket type error"
.LC4:
	.string	"create socket error"
.LC5:
	.string	"connect error"
.LC6:
	.string	"RHINOSOCK %d %s() | fail to establish tcp\n"
.LC7:
	.string	"RHINOSOCK %d %s() | success to establish tcp, fd=%d\n"
	.section	.text.unlikely.HAL_TCP_Establish,"ax",@progbits
.LCOLDB8:
	.section	.text.HAL_TCP_Establish,"ax",@progbits
.LHOTB8:
	.section	.text.unlikely.HAL_TCP_Establish
.Ltext_cold0:
	.section	.text.HAL_TCP_Establish
	.globl	HAL_TCP_Establish
	.type	HAL_TCP_Establish, @function
HAL_TCP_Establish:
.LFB17:
	.file 1 "framework/protocol/linkkit/iotkit/hal-impl/rhino/HAL_TCP_rhino.c"
	.loc 1 22 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 30 0
	movl	$8, %ecx
	.loc 1 22 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 30 0
	leal	-68(%ebp), %ebx
	.loc 1 22 0
	subl	$72, %esp
	.loc 1 30 0
	movl	%ebx, %edi
	.loc 1 22 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 24 0
	movl	$0, -72(%ebp)
.LVL1:
	.loc 1 30 0
	rep stosl
	.loc 1 32 0
	movzwl	12(%ebp), %edi
	pushl	%edi
	pushl	%esi
	pushl	$__FUNCTION__.4016
	pushl	$32
	pushl	$.LC0
	call	printf
.LVL2:
	.loc 1 37 0
	addl	$28, %esp
	.loc 1 34 0
	movl	$2, -64(%ebp)
	.loc 1 35 0
	movl	$1, -60(%ebp)
	.loc 1 37 0
	pushl	%edi
	leal	-34(%ebp), %edi
	pushl	$.LC1
	.loc 1 36 0
	movl	$6, -56(%ebp)
	.loc 1 37 0
	pushl	%edi
	call	sprintf
.LVL3:
	.loc 1 39 0
	leal	-72(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	call	lwip_getaddrinfo
.LVL4:
	addl	$32, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 40 0
	subl	$12, %esp
	pushl	$.LC2
	call	perror
.LVL5:
	.loc 1 41 0
	addl	$16, %esp
	orl	$-1, %eax
	jmp	.L3
.LVL6:
.L2:
	.loc 1 44 0
	movl	-72(%ebp), %ebx
.LVL7:
	movl	%eax, %edi
	xorl	%esi, %esi
.LVL8:
.L4:
	.loc 1 44 0 is_stmt 0 discriminator 1
	testl	%ebx, %ebx
	je	.L16
	.loc 1 45 0 is_stmt 1
	cmpl	$2, 4(%ebx)
	je	.L5
	.loc 1 46 0
	subl	$12, %esp
	pushl	$.LC3
	jmp	.L14
.L5:
	.loc 1 51 0
	pushl	%ecx
	pushl	12(%ebx)
	pushl	8(%ebx)
	pushl	$2
	call	lwip_socket
.LVL9:
	.loc 1 52 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 51 0
	movl	%eax, %esi
.LVL10:
	.loc 1 52 0
	jns	.L7
	.loc 1 53 0
	subl	$12, %esp
	pushl	$.LC4
	jmp	.L14
.L7:
	.loc 1 58 0
	pushl	%edx
	pushl	16(%ebx)
	pushl	20(%ebx)
	pushl	%eax
	call	lwip_connect
.LVL11:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L12
	.loc 1 63 0
	subl	$12, %esp
	pushl	%esi
	call	lwip_close
.LVL12:
	.loc 1 64 0
	movl	$.LC5, (%esp)
.LVL13:
.L14:
	call	perror
.LVL14:
	orl	$-1, %esi
	addl	$16, %esp
	.loc 1 44 0
	movl	28(%ebx), %ebx
.LVL15:
	jmp	.L4
.LVL16:
.L16:
	.loc 1 68 0
	cmpl	$-1, %esi
	jne	.L8
.LVL17:
	.loc 1 69 0
	pushl	%eax
	pushl	$__FUNCTION__.4016
	pushl	$69
	pushl	$.LC6
	call	printf
.LVL18:
	addl	$16, %esp
	jmp	.L10
.LVL19:
.L12:
	.loc 1 51 0
	movl	%esi, %edi
.LVL20:
.L8:
	.loc 1 71 0
	pushl	%edi
	pushl	$__FUNCTION__.4016
	movl	%edi, %esi
	pushl	$71
	pushl	$.LC7
	call	printf
.LVL21:
	addl	$16, %esp
.LVL22:
.L10:
	.loc 1 73 0
	subl	$12, %esp
	pushl	-72(%ebp)
	call	lwip_freeaddrinfo
.LVL23:
	.loc 1 75 0
	movl	%esi, %eax
	addl	$16, %esp
.LVL24:
.L3:
	.loc 1 76 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L11
	call	__stack_chk_fail
.LVL25:
.L11:
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
	.size	HAL_TCP_Establish, .-HAL_TCP_Establish
	.section	.text.unlikely.HAL_TCP_Establish
.LCOLDE8:
	.section	.text.HAL_TCP_Establish
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"shutdown error"
.LC10:
	.string	"closesocket error"
	.section	.text.unlikely.HAL_TCP_Destroy,"ax",@progbits
.LCOLDB11:
	.section	.text.HAL_TCP_Destroy,"ax",@progbits
.LHOTB11:
	.globl	HAL_TCP_Destroy
	.type	HAL_TCP_Destroy, @function
HAL_TCP_Destroy:
.LFB18:
	.loc 1 80 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 80 0
	movl	8(%ebp), %ebx
	.loc 1 84 0
	pushl	$2
	pushl	%ebx
	call	lwip_shutdown
.LVL27:
	.loc 1 85 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L18
	.loc 1 86 0
	subl	$12, %esp
	pushl	$.LC9
	jmp	.L23
.L18:
	.loc 1 90 0
	subl	$12, %esp
	pushl	%ebx
	call	lwip_close
.LVL28:
	.loc 1 91 0
	addl	$16, %esp
	.loc 1 96 0
	xorl	%edx, %edx
	.loc 1 91 0
	testl	%eax, %eax
	je	.L19
	.loc 1 92 0
	subl	$12, %esp
	pushl	$.LC10
.L23:
	call	perror
.LVL29:
	.loc 1 93 0
	addl	$16, %esp
	orl	$-1, %edx
.L19:
	.loc 1 97 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	HAL_TCP_Destroy, .-HAL_TCP_Destroy
	.section	.text.unlikely.HAL_TCP_Destroy
.LCOLDE11:
	.section	.text.HAL_TCP_Destroy
.LHOTE11:
	.globl	__udivdi3
	.globl	__umoddi3
	.section	.rodata.str1.1
.LC12:
	.string	"RHINOSOCK %d %s() | Should NOT arrive\n"
.LC13:
	.string	"RHINOSOCK %d %s() | EINTR be caught\n"
.LC14:
	.string	"select-write fail"
.LC15:
	.string	"RHINOSOCK %d %s() | No data be sent\n"
.LC16:
	.string	"send fail"
	.section	.text.unlikely.HAL_TCP_Write,"ax",@progbits
.LCOLDB17:
	.section	.text.HAL_TCP_Write,"ax",@progbits
.LHOTB17:
	.globl	HAL_TCP_Write
	.type	HAL_TCP_Write, @function
HAL_TCP_Write:
.LFB19:
	.loc 1 101 0
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
	.loc 1 110 0
	movl	$1, %ebx
	.loc 1 101 0
	subl	$76, %esp
	.loc 1 101 0
	movl	12(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 107 0
	call	HAL_UptimeMs
.LVL31:
	addl	20(%ebp), %eax
.LBB2:
	.loc 1 119 0
	movl	8(%ebp), %ecx
.LBE2:
	.loc 1 107 0
	movl	$0, -68(%ebp)
.LVL32:
	.loc 1 108 0
	movl	$0, -60(%ebp)
	.loc 1 107 0
	movl	%eax, -72(%ebp)
.LVL33:
.LBB4:
	.loc 1 119 0
	movl	8(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -64(%ebp)
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -76(%ebp)
.LVL34:
.L37:
.LBE4:
	.loc 1 113 0
	call	HAL_UptimeMs
.LVL35:
	cltd
	pushl	%edx
	pushl	%eax
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	call	aliot_platform_time_left
.LVL36:
	movl	%eax, %esi
	.loc 1 115 0
	movl	%edx, %eax
	addl	$16, %esp
	orl	%esi, %eax
	.loc 1 113 0
	movl	%edx, %edi
.LVL37:
	.loc 1 115 0
	je	.L25
.LVL38:
.LBB5:
	.loc 1 119 0 discriminator 1
	movl	-64(%ebp), %eax
	.loc 1 121 0 discriminator 1
	pushl	$0
	pushl	$1000
	pushl	%edx
	pushl	%esi
	.loc 1 119 0 discriminator 1
	movl	-76(%ebp), %ecx
.LBB3:
	.loc 1 118 0 discriminator 1
	movb	$0, -36(%ebp)
.LVL39:
	movb	$0, -35(%ebp)
.LVL40:
	movb	$0, -34(%ebp)
.LVL41:
	movb	$0, -33(%ebp)
.LVL42:
	movb	$0, -32(%ebp)
.LVL43:
	movb	$0, -31(%ebp)
.LVL44:
	movb	$0, -30(%ebp)
.LVL45:
	movb	$0, -29(%ebp)
.LVL46:
.LBE3:
	.loc 1 119 0 discriminator 1
	orl	%ecx, -36(%ebp,%eax,4)
	.loc 1 121 0 discriminator 1
	call	__udivdi3
.LVL47:
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	.loc 1 122 0 discriminator 1
	pushl	$0
	pushl	$1000
	pushl	%edi
	pushl	%esi
	call	__umoddi3
.LVL48:
	imull	$1000, %eax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 124 0 discriminator 1
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	leal	-36(%ebp), %eax
	pushl	$0
	pushl	%eax
	movl	8(%ebp), %eax
	pushl	$0
	incl	%eax
	pushl	%eax
	call	lwip_select
.LVL49:
	.loc 1 125 0 discriminator 1
	addl	$32, %esp
	cmpl	$0, %eax
	.loc 1 124 0 discriminator 1
	movl	%eax, %ebx
.LVL50:
	.loc 1 125 0 discriminator 1
	jle	.L26
	.loc 1 126 0
	movl	-64(%ebp), %eax
.LVL51:
	movl	-76(%ebp), %edi
	testl	%edi, -36(%ebp,%eax,4)
	jne	.L31
.LVL52:
	.loc 1 127 0
	pushl	%ebx
	pushl	$__FUNCTION__.4044
	.loc 1 129 0
	xorl	%ebx, %ebx
	.loc 1 127 0
	pushl	$127
	pushl	$.LC12
	call	printf
.LVL53:
	.loc 1 130 0
	addl	$16, %esp
	jmp	.L32
.LVL54:
.L26:
	.loc 1 132 0
	je	.L33
	.loc 1 136 0
	call	__errno
.LVL55:
	.loc 1 136 0
	cmpl	$4, (%eax)
	jne	.L30
	.loc 1 137 0
	pushl	%ecx
	pushl	$__FUNCTION__.4044
	pushl	$137
	jmp	.L46
.L30:
.LVL56:
	.loc 1 142 0
	subl	$12, %esp
	pushl	$.LC14
	jmp	.L45
.LVL57:
.L25:
.LBE5:
	.loc 1 147 0
	testl	%ebx, %ebx
	jle	.L32
.L31:
.LVL58:
	.loc 1 148 0
	movl	16(%ebp), %eax
	subl	-60(%ebp), %eax
	pushl	$0
	pushl	%eax
	movl	-80(%ebp), %eax
	addl	-60(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	lwip_send
.LVL59:
	.loc 1 149 0
	addl	$16, %esp
	cmpl	$0, %eax
	.loc 1 148 0
	movl	%eax, %ebx
.LVL60:
	.loc 1 149 0
	jle	.L34
	.loc 1 150 0
	addl	%eax, -60(%ebp)
.LVL61:
	jmp	.L32
.LVL62:
.L34:
	.loc 1 151 0
	jne	.L35
	.loc 1 152 0
	pushl	%edx
	pushl	$__FUNCTION__.4044
	pushl	$152
	pushl	$.LC15
.LVL63:
.L44:
	call	printf
.LVL64:
	addl	$16, %esp
	jmp	.L32
.LVL65:
.L35:
	.loc 1 154 0
	call	__errno
.LVL66:
	.loc 1 154 0
	cmpl	$4, (%eax)
	jne	.L36
	.loc 1 155 0
	pushl	%eax
	pushl	$__FUNCTION__.4044
	pushl	$155
.L46:
	pushl	$.LC13
	jmp	.L44
.L36:
.LVL67:
	.loc 1 160 0
	subl	$12, %esp
	pushl	$.LC16
.L45:
	call	perror
.LVL68:
	.loc 1 161 0
	addl	$16, %esp
	jmp	.L33
.LVL69:
.L32:
	.loc 1 164 0
	movl	-60(%ebp), %eax
	cmpl	16(%ebp), %eax
	jnb	.L33
	.loc 1 164 0 is_stmt 0 discriminator 1
	call	HAL_UptimeMs
.LVL70:
	cltd
	pushl	%edx
	pushl	%eax
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	call	aliot_platform_time_left
.LVL71:
	addl	$16, %esp
	orl	%eax, %edx
	jne	.L37
.LVL72:
.L33:
	.loc 1 167 0 is_stmt 1
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	-60(%ebp), %eax
	je	.L38
	call	__stack_chk_fail
.LVL73:
.L38:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL74:
	popl	%esi
	.cfi_restore 6
.LVL75:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	HAL_TCP_Write, .-HAL_TCP_Write
	.section	.text.unlikely.HAL_TCP_Write
.LCOLDE17:
	.section	.text.HAL_TCP_Write
.LHOTE17:
	.section	.rodata.str1.1
.LC18:
	.string	"connection is closed"
.LC19:
	.string	"select-recv fail"
	.section	.text.unlikely.HAL_TCP_Read,"ax",@progbits
.LCOLDB20:
	.section	.text.HAL_TCP_Read,"ax",@progbits
.LHOTB20:
	.globl	HAL_TCP_Read
	.type	HAL_TCP_Read, @function
HAL_TCP_Read:
.LFB20:
	.loc 1 171 0
	.cfi_startproc
.LVL76:
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
	.loc 1 179 0
	xorl	%ebx, %ebx
	.loc 1 171 0
	subl	$76, %esp
	.loc 1 171 0
	movl	12(%ebp), %eax
	movl	%eax, -76(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 178 0
	call	HAL_UptimeMs
.LVL77:
	addl	20(%ebp), %eax
	.loc 1 188 0
	movl	8(%ebp), %ecx
	.loc 1 178 0
	movl	$0, -60(%ebp)
.LVL78:
	movl	%eax, -64(%ebp)
.LVL79:
	.loc 1 188 0
	movl	8(%ebp), %eax
	shrl	$5, %eax
	movl	%eax, -68(%ebp)
	movl	$1, %eax
	sall	%cl, %eax
	movl	%eax, -72(%ebp)
.LVL80:
.L54:
	.loc 1 183 0
	call	HAL_UptimeMs
.LVL81:
	cltd
	pushl	%edx
	pushl	%eax
	pushl	-60(%ebp)
	pushl	-64(%ebp)
	call	aliot_platform_time_left
.LVL82:
	movl	%eax, %esi
	.loc 1 184 0
	movl	%edx, %eax
	addl	$16, %esp
	orl	%esi, %eax
	.loc 1 183 0
	movl	%edx, %edi
.LVL83:
	.loc 1 184 0
	je	.L57
.LVL84:
	.loc 1 188 0 discriminator 1
	movl	-68(%ebp), %eax
	.loc 1 190 0 discriminator 1
	pushl	$0
	pushl	$1000
	pushl	%edi
	pushl	%esi
	.loc 1 188 0 discriminator 1
	movl	-72(%ebp), %edx
.LBB6:
	.loc 1 187 0 discriminator 1
	movb	$0, -36(%ebp)
.LVL85:
	movb	$0, -35(%ebp)
.LVL86:
	movb	$0, -34(%ebp)
.LVL87:
	movb	$0, -33(%ebp)
.LVL88:
	movb	$0, -32(%ebp)
.LVL89:
	movb	$0, -31(%ebp)
.LVL90:
	movb	$0, -30(%ebp)
.LVL91:
	movb	$0, -29(%ebp)
.LVL92:
.LBE6:
	.loc 1 188 0 discriminator 1
	orl	%edx, -36(%ebp,%eax,4)
	.loc 1 190 0 discriminator 1
	call	__udivdi3
.LVL93:
	addl	$16, %esp
	movl	%eax, -44(%ebp)
	.loc 1 191 0 discriminator 1
	pushl	$0
	pushl	$1000
	pushl	%edi
	pushl	%esi
	call	__umoddi3
.LVL94:
	imull	$1000, %eax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 193 0 discriminator 1
	leal	-44(%ebp), %eax
	movl	%eax, (%esp)
	leal	-36(%ebp), %eax
	pushl	$0
	pushl	$0
	pushl	%eax
	movl	8(%ebp), %eax
	incl	%eax
	pushl	%eax
	call	lwip_select
.LVL95:
	.loc 1 194 0 discriminator 1
	addl	$32, %esp
	cmpl	$0, %eax
	jle	.L49
	.loc 1 195 0
	movl	16(%ebp), %eax
.LVL96:
	pushl	$0
	subl	%ebx, %eax
	pushl	%eax
	movl	-76(%ebp), %eax
	addl	%ebx, %eax
	pushl	%eax
	pushl	8(%ebp)
	call	lwip_recv
.LVL97:
	.loc 1 196 0
	addl	$16, %esp
	cmpl	$0, %eax
	jle	.L50
	.loc 1 197 0
	addl	%eax, %ebx
.LVL98:
	jmp	.L51
.L50:
	.loc 1 198 0
	jne	.L52
	.loc 1 199 0
	subl	$12, %esp
	pushl	$.LC18
	call	perror
.LVL99:
	.loc 1 201 0
	addl	$16, %esp
	.loc 1 200 0
	orl	$-1, %eax
	.loc 1 201 0
	jmp	.L48
.LVL100:
.L52:
	.loc 1 203 0
	call	__errno
.LVL101:
	.loc 1 203 0
	cmpl	$4, (%eax)
	jne	.L53
	.loc 1 204 0
	pushl	%eax
	pushl	$__FUNCTION__.4068
	pushl	$204
	pushl	$.LC13
	call	printf
.LVL102:
	.loc 1 205 0
	addl	$16, %esp
	jmp	.L51
.L53:
	.loc 1 207 0
	subl	$12, %esp
	pushl	$.LC16
	jmp	.L63
.LVL103:
.L49:
	.loc 1 180 0
	movl	$0, %eax
.LVL104:
	.loc 1 211 0
	je	.L48
	.loc 1 214 0
	subl	$12, %esp
	pushl	$.LC19
.L63:
	call	perror
.LVL105:
	.loc 1 216 0
	addl	$16, %esp
	.loc 1 215 0
	movl	$-2, %eax
	.loc 1 216 0
	jmp	.L48
.LVL106:
.L51:
	.loc 1 218 0
	cmpl	16(%ebp), %ebx
	jb	.L54
.LVL107:
.L57:
	.loc 1 180 0
	xorl	%eax, %eax
.LVL108:
.L48:
	.loc 1 222 0
	testl	%ebx, %ebx
	cmovne	%ebx, %eax
.LVL109:
	.loc 1 223 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L56
	call	__stack_chk_fail
.LVL110:
.L56:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL111:
	popl	%esi
	.cfi_restore 6
.LVL112:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	HAL_TCP_Read, .-HAL_TCP_Read
	.section	.text.unlikely.HAL_TCP_Read
.LCOLDE20:
	.section	.text.HAL_TCP_Read
.LHOTE20:
	.section	.rodata.__FUNCTION__.4068,"a",@progbits
	.align 4
	.type	__FUNCTION__.4068, @object
	.size	__FUNCTION__.4068, 13
__FUNCTION__.4068:
	.string	"HAL_TCP_Read"
	.section	.rodata.__FUNCTION__.4044,"a",@progbits
	.align 4
	.type	__FUNCTION__.4044, @object
	.size	__FUNCTION__.4044, 14
__FUNCTION__.4044:
	.string	"HAL_TCP_Write"
	.section	.rodata.__FUNCTION__.4016,"a",@progbits
	.align 4
	.type	__FUNCTION__.4016, @object
	.size	__FUNCTION__.4016, 18
__FUNCTION__.4016:
	.string	"HAL_TCP_Establish"
	.text
.Letext0:
	.section	.text.unlikely.HAL_TCP_Establish
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h"
	.file 8 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 9 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 10 "./kernel/protocols/net/include/lwip/netdb.h"
	.file 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.file 13 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x7cf
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF86
	.byte	0xc
	.long	.LASF87
	.long	.LASF88
	.long	.Ldebug_ranges0+0x20
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
	.long	.LASF4
	.byte	0x2
	.byte	0x2b
	.long	0x45
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x3f
	.long	0x57
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x2
	.byte	0x41
	.long	0x69
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x2
	.byte	0x5b
	.long	0x82
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF12
	.byte	0x2
	.byte	0xca
	.long	0x9b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0xd8
	.long	0x9b
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0xcc
	.long	0x57
	.uleb128 0x5
	.byte	0x4
	.long	0xb4
	.uleb128 0x5
	.byte	0x4
	.long	0xd9
	.uleb128 0x6
	.long	0xb4
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x24
	.long	0x3a
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x2c
	.long	0x4c
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x30
	.long	0x5e
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x3c
	.long	0x77
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x48
	.long	0x90
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x23
	.long	0xc2
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x28
	.long	0x57
	.uleb128 0x7
	.long	.LASF29
	.byte	0x8
	.byte	0x6
	.byte	0x34
	.long	0x150
	.uleb128 0x8
	.long	.LASF26
	.byte	0x6
	.byte	0x35
	.long	0x120
	.byte	0
	.uleb128 0x8
	.long	.LASF27
	.byte	0x6
	.byte	0x36
	.long	0x115
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x7
	.byte	0x2d
	.long	0x69
	.uleb128 0x7
	.long	.LASF30
	.byte	0x8
	.byte	0x7
	.byte	0x35
	.long	0x174
	.uleb128 0x8
	.long	.LASF31
	.byte	0x7
	.byte	0x36
	.long	0x174
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x150
	.long	0x184
	.uleb128 0xa
	.long	0xbb
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x7
	.byte	0x37
	.long	0x15b
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF32
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF33
	.uleb128 0x3
	.long	.LASF34
	.byte	0x8
	.byte	0x31
	.long	0x2c
	.uleb128 0x3
	.long	.LASF35
	.byte	0x8
	.byte	0x35
	.long	0x69
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF36
	.uleb128 0x3
	.long	.LASF37
	.byte	0x9
	.byte	0x40
	.long	0x19d
	.uleb128 0x7
	.long	.LASF38
	.byte	0x10
	.byte	0x9
	.byte	0x5f
	.long	0x1f6
	.uleb128 0x8
	.long	.LASF39
	.byte	0x9
	.byte	0x60
	.long	0x19d
	.byte	0
	.uleb128 0x8
	.long	.LASF40
	.byte	0x9
	.byte	0x61
	.long	0x1ba
	.byte	0x1
	.uleb128 0x8
	.long	.LASF41
	.byte	0x9
	.byte	0x62
	.long	0x1f6
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xb4
	.long	0x206
	.uleb128 0xa
	.long	0xbb
	.byte	0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x9
	.byte	0x72
	.long	0x1a8
	.uleb128 0x7
	.long	.LASF43
	.byte	0x20
	.byte	0xa
	.byte	0x67
	.long	0x27e
	.uleb128 0x8
	.long	.LASF44
	.byte	0xa
	.byte	0x68
	.long	0x89
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0xa
	.byte	0x69
	.long	0x89
	.byte	0x4
	.uleb128 0x8
	.long	.LASF46
	.byte	0xa
	.byte	0x6a
	.long	0x89
	.byte	0x8
	.uleb128 0x8
	.long	.LASF47
	.byte	0xa
	.byte	0x6b
	.long	0x89
	.byte	0xc
	.uleb128 0x8
	.long	.LASF48
	.byte	0xa
	.byte	0x6c
	.long	0x206
	.byte	0x10
	.uleb128 0x8
	.long	.LASF49
	.byte	0xa
	.byte	0x6d
	.long	0x27e
	.byte	0x14
	.uleb128 0x8
	.long	.LASF50
	.byte	0xa
	.byte	0x6e
	.long	0xcd
	.byte	0x18
	.uleb128 0x8
	.long	.LASF51
	.byte	0xa
	.byte	0x6f
	.long	0x284
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1c5
	.uleb128 0x5
	.byte	0x4
	.long	0x211
	.uleb128 0xb
	.long	.LASF57
	.byte	0x1
	.byte	0x15
	.long	0x10a
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x392
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.byte	0x15
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.byte	0x15
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xd
	.long	.LASF54
	.byte	0x1
	.byte	0x17
	.long	0x211
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0xd
	.long	.LASF55
	.byte	0x1
	.byte	0x18
	.long	0x284
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0xe
	.string	"cur"
	.byte	0x1
	.byte	0x19
	.long	0x284
	.long	.LLST0
	.uleb128 0xe
	.string	"fd"
	.byte	0x1
	.byte	0x1a
	.long	0x89
	.long	.LLST1
	.uleb128 0xe
	.string	"rc"
	.byte	0x1
	.byte	0x1b
	.long	0x89
	.long	.LLST2
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x1c
	.long	0x392
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0xf
	.long	.LASF66
	.long	0x3b2
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4016
	.uleb128 0x10
	.long	.LVL2
	.long	0x71d
	.uleb128 0x10
	.long	.LVL3
	.long	0x728
	.uleb128 0x10
	.long	.LVL4
	.long	0x733
	.uleb128 0x10
	.long	.LVL5
	.long	0x73e
	.uleb128 0x10
	.long	.LVL9
	.long	0x749
	.uleb128 0x10
	.long	.LVL11
	.long	0x755
	.uleb128 0x10
	.long	.LVL12
	.long	0x761
	.uleb128 0x10
	.long	.LVL14
	.long	0x73e
	.uleb128 0x10
	.long	.LVL18
	.long	0x71d
	.uleb128 0x10
	.long	.LVL21
	.long	0x71d
	.uleb128 0x10
	.long	.LVL23
	.long	0x76d
	.uleb128 0x10
	.long	.LVL25
	.long	0x778
	.byte	0
	.uleb128 0x9
	.long	0xb4
	.long	0x3a2
	.uleb128 0xa
	.long	0xbb
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	0xd9
	.long	0x3b2
	.uleb128 0xa
	.long	0xbb
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.long	0x3a2
	.uleb128 0xb
	.long	.LASF58
	.byte	0x1
	.byte	0x4f
	.long	0xe9
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x407
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x4f
	.long	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.string	"rc"
	.byte	0x1
	.byte	0x51
	.long	0x89
	.long	.LLST3
	.uleb128 0x10
	.long	.LVL27
	.long	0x781
	.uleb128 0x10
	.long	.LVL28
	.long	0x761
	.uleb128 0x10
	.long	.LVL29
	.long	0x73e
	.byte	0
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.byte	0x64
	.long	0xe9
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x58a
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0x64
	.long	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0x64
	.long	0xd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0x64
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.long	.LASF60
	.byte	0x1
	.byte	0x64
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0x66
	.long	0x89
	.long	.LLST4
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0x66
	.long	0x89
	.long	.LLST5
	.uleb128 0x13
	.long	.LASF62
	.byte	0x1
	.byte	0x67
	.long	0xf4
	.long	.LLST6
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0x68
	.long	0xff
	.long	.LLST7
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0x68
	.long	0xff
	.long	.LLST8
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0x69
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x6b
	.long	0x89
	.long	0x4c1
	.uleb128 0x15
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.long	0x59a
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4044
	.uleb128 0x16
	.long	.Ldebug_ranges0+0
	.long	0x52f
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0x74
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x17
	.long	.LBB3
	.long	.LBE3-.LBB3
	.long	0x513
	.uleb128 0xe
	.string	"__i"
	.byte	0x1
	.byte	0x76
	.long	0xa2
	.long	.LLST9
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0x76
	.long	0xcd
	.long	.LLST10
	.byte	0
	.uleb128 0x10
	.long	.LVL49
	.long	0x78d
	.uleb128 0x10
	.long	.LVL53
	.long	0x71d
	.uleb128 0x10
	.long	.LVL55
	.long	0x799
	.byte	0
	.uleb128 0x10
	.long	.LVL31
	.long	0x7a4
	.uleb128 0x10
	.long	.LVL35
	.long	0x7a4
	.uleb128 0x10
	.long	.LVL36
	.long	0x7af
	.uleb128 0x10
	.long	.LVL59
	.long	0x7ba
	.uleb128 0x10
	.long	.LVL64
	.long	0x71d
	.uleb128 0x10
	.long	.LVL66
	.long	0x799
	.uleb128 0x10
	.long	.LVL68
	.long	0x73e
	.uleb128 0x10
	.long	.LVL70
	.long	0x7a4
	.uleb128 0x10
	.long	.LVL71
	.long	0x7af
	.uleb128 0x10
	.long	.LVL73
	.long	0x778
	.byte	0
	.uleb128 0x9
	.long	0xd9
	.long	0x59a
	.uleb128 0xa
	.long	0xbb
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.long	0x58a
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.byte	0xaa
	.long	0xe9
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6fd
	.uleb128 0x11
	.string	"fd"
	.byte	0x1
	.byte	0xaa
	.long	0x10a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x11
	.string	"buf"
	.byte	0x1
	.byte	0xaa
	.long	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x11
	.string	"len"
	.byte	0x1
	.byte	0xaa
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xc
	.long	.LASF60
	.byte	0x1
	.byte	0xaa
	.long	0xf4
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xe
	.string	"ret"
	.byte	0x1
	.byte	0xac
	.long	0x89
	.long	.LLST11
	.uleb128 0x13
	.long	.LASF61
	.byte	0x1
	.byte	0xac
	.long	0x89
	.long	.LLST12
	.uleb128 0x13
	.long	.LASF70
	.byte	0x1
	.byte	0xad
	.long	0xf4
	.long	.LLST13
	.uleb128 0x13
	.long	.LASF63
	.byte	0x1
	.byte	0xae
	.long	0xff
	.long	.LLST14
	.uleb128 0x13
	.long	.LASF64
	.byte	0x1
	.byte	0xae
	.long	0xff
	.long	.LLST15
	.uleb128 0xd
	.long	.LASF65
	.byte	0x1
	.byte	0xaf
	.long	0x184
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xd
	.long	.LASF67
	.byte	0x1
	.byte	0xb0
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x6b
	.long	0x89
	.long	0x667
	.uleb128 0x15
	.byte	0
	.uleb128 0xf
	.long	.LASF66
	.long	0x70d
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.4068
	.uleb128 0x17
	.long	.LBB6
	.long	.LBE6-.LBB6
	.long	0x6a2
	.uleb128 0xe
	.string	"__i"
	.byte	0x1
	.byte	0xbb
	.long	0xa2
	.long	.LLST16
	.uleb128 0x13
	.long	.LASF68
	.byte	0x1
	.byte	0xbb
	.long	0xcd
	.long	.LLST17
	.byte	0
	.uleb128 0x10
	.long	.LVL77
	.long	0x7a4
	.uleb128 0x10
	.long	.LVL81
	.long	0x7a4
	.uleb128 0x10
	.long	.LVL82
	.long	0x7af
	.uleb128 0x10
	.long	.LVL95
	.long	0x78d
	.uleb128 0x10
	.long	.LVL97
	.long	0x7c6
	.uleb128 0x10
	.long	.LVL99
	.long	0x73e
	.uleb128 0x10
	.long	.LVL101
	.long	0x799
	.uleb128 0x10
	.long	.LVL102
	.long	0x71d
	.uleb128 0x10
	.long	.LVL105
	.long	0x73e
	.uleb128 0x10
	.long	.LVL110
	.long	0x778
	.byte	0
	.uleb128 0x9
	.long	0xd9
	.long	0x70d
	.uleb128 0xa
	.long	0xbb
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	0x6fd
	.uleb128 0x18
	.long	.LASF89
	.byte	0xd
	.byte	0x17
	.long	0x9b
	.uleb128 0x19
	.long	.LASF72
	.long	.LASF72
	.byte	0xb
	.byte	0xc8
	.uleb128 0x19
	.long	.LASF73
	.long	.LASF73
	.byte	0xb
	.byte	0xf4
	.uleb128 0x19
	.long	.LASF74
	.long	.LASF74
	.byte	0xa
	.byte	0x7e
	.uleb128 0x19
	.long	.LASF75
	.long	.LASF75
	.byte	0xb
	.byte	0xf1
	.uleb128 0x1a
	.long	.LASF76
	.long	.LASF76
	.byte	0x9
	.value	0x1fc
	.uleb128 0x1a
	.long	.LASF77
	.long	.LASF77
	.byte	0x9
	.value	0x1f2
	.uleb128 0x1a
	.long	.LASF78
	.long	.LASF78
	.byte	0x9
	.value	0x1f1
	.uleb128 0x19
	.long	.LASF79
	.long	.LASF79
	.byte	0xa
	.byte	0x7d
	.uleb128 0x1b
	.long	.LASF90
	.long	.LASF90
	.uleb128 0x1a
	.long	.LASF80
	.long	.LASF80
	.byte	0x9
	.value	0x1ec
	.uleb128 0x1a
	.long	.LASF81
	.long	.LASF81
	.byte	0x9
	.value	0x1ff
	.uleb128 0x19
	.long	.LASF82
	.long	.LASF82
	.byte	0xc
	.byte	0xf
	.uleb128 0x19
	.long	.LASF71
	.long	.LASF71
	.byte	0x1
	.byte	0x6b
	.uleb128 0x19
	.long	.LASF83
	.long	.LASF83
	.byte	0x1
	.byte	0xd
	.uleb128 0x1a
	.long	.LASF84
	.long	.LASF84
	.byte	0x9
	.value	0x1f8
	.uleb128 0x1a
	.long	.LASF85
	.long	.LASF85
	.byte	0x9
	.value	0x1f4
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.long	.LVL7
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL7
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	.LVL11-1
	.long	.LVL13
	.value	0x1
	.byte	0x56
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL4
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL10
	.value	0x1
	.byte	0x56
	.long	.LVL14
	.long	.LVL16
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x56
	.long	.LVL17
	.long	.LVL19
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL27
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LVL29-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL32
	.long	.LVL34
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL34
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x53
	.long	.LVL53
	.long	.LVL54
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL54
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	.LVL55-1
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	.LVL60
	.long	.LVL63
	.value	0x1
	.byte	0x50
	.long	.LVL63
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x50
	.long	.LVL66-1
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL32
	.long	.LVL56
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL56
	.long	.LVL57
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL57
	.long	.LVL67
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL67
	.long	.LVL69
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL69
	.long	.LVL72
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL32
	.long	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL61
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL62
	.long	.LVL73
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL73
	.long	.LFE19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL32
	.long	.LVL33
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0
	.long	0
.LLST8:
	.long	.LVL37
	.long	.LVL75
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST9:
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL46
	.long	.LVL57
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL38
	.long	.LVL39
	.value	0x3
	.byte	0x91
	.sleb128 -43
	.byte	0x9f
	.long	.LVL39
	.long	.LVL40
	.value	0x3
	.byte	0x91
	.sleb128 -42
	.byte	0x9f
	.long	.LVL40
	.long	.LVL41
	.value	0x3
	.byte	0x91
	.sleb128 -41
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42
	.value	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.value	0x3
	.byte	0x91
	.sleb128 -39
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x3
	.byte	0x91
	.sleb128 -38
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x3
	.byte	0x91
	.sleb128 -37
	.byte	0x9f
	.long	.LVL45
	.long	.LVL57
	.value	0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL97
	.long	.LVL99-1
	.value	0x1
	.byte	0x50
	.long	.LVL100
	.long	.LVL101-1
	.value	0x1
	.byte	0x50
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL78
	.long	.LVL99
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL99
	.long	.LVL100
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL100
	.long	.LVL105
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL105
	.long	.LVL106
	.value	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.long	.LVL106
	.long	.LVL108
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL108
	.long	.LVL109
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL78
	.long	.LVL80
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL80
	.long	.LVL111
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL78
	.long	.LVL79
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST15:
	.long	.LVL83
	.long	.LVL112
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST16:
	.long	.LVL84
	.long	.LVL85
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.value	0x2
	.byte	0x35
	.byte	0x9f
	.long	.LVL90
	.long	.LVL91
	.value	0x2
	.byte	0x36
	.byte	0x9f
	.long	.LVL91
	.long	.LVL92
	.value	0x2
	.byte	0x37
	.byte	0x9f
	.long	.LVL92
	.long	.LVL107
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL84
	.long	.LVL85
	.value	0x3
	.byte	0x91
	.sleb128 -43
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.value	0x3
	.byte	0x91
	.sleb128 -42
	.byte	0x9f
	.long	.LVL86
	.long	.LVL87
	.value	0x3
	.byte	0x91
	.sleb128 -41
	.byte	0x9f
	.long	.LVL87
	.long	.LVL88
	.value	0x3
	.byte	0x91
	.sleb128 -40
	.byte	0x9f
	.long	.LVL88
	.long	.LVL89
	.value	0x3
	.byte	0x91
	.sleb128 -39
	.byte	0x9f
	.long	.LVL89
	.long	.LVL90
	.value	0x3
	.byte	0x91
	.sleb128 -38
	.byte	0x9f
	.long	.LVL90
	.long	.LVL91
	.value	0x3
	.byte	0x91
	.sleb128 -37
	.byte	0x9f
	.long	.LVL91
	.long	.LVL107
	.value	0x3
	.byte	0x91
	.sleb128 -36
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB4
	.long	.LBE4
	.long	.LBB5
	.long	.LBE5
	.long	0
	.long	0
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"src/HAL_TCP_rhino.c"
.LASF58:
	.string	"HAL_TCP_Destroy"
.LASF78:
	.string	"lwip_close"
.LASF30:
	.string	"_types_fd_set"
.LASF39:
	.string	"sa_len"
.LASF22:
	.string	"uint64_t"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"size_t"
.LASF17:
	.string	"sizetype"
.LASF79:
	.string	"lwip_freeaddrinfo"
.LASF28:
	.string	"fd_mask"
.LASF81:
	.string	"lwip_select"
.LASF76:
	.string	"lwip_socket"
.LASF7:
	.string	"__uint32_t"
.LASF18:
	.string	"__suseconds_t"
.LASF4:
	.string	"__uint16_t"
.LASF43:
	.string	"addrinfo"
.LASF25:
	.string	"time_t"
.LASF35:
	.string	"u32_t"
.LASF90:
	.string	"__stack_chk_fail"
.LASF84:
	.string	"lwip_send"
.LASF55:
	.string	"addrInfoList"
.LASF70:
	.string	"len_recv"
.LASF68:
	.string	"__tmp"
.LASF32:
	.string	"float"
.LASF46:
	.string	"ai_socktype"
.LASF64:
	.string	"t_left"
.LASF9:
	.string	"long long int"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"lwip_shutdown"
.LASF72:
	.string	"printf"
.LASF85:
	.string	"lwip_recv"
.LASF66:
	.string	"__FUNCTION__"
.LASF75:
	.string	"perror"
.LASF89:
	.string	"aos_log_level"
.LASF54:
	.string	"hints"
.LASF45:
	.string	"ai_family"
.LASF15:
	.string	"long double"
.LASF59:
	.string	"HAL_TCP_Write"
.LASF26:
	.string	"tv_sec"
.LASF37:
	.string	"sa_family_t"
.LASF1:
	.string	"unsigned char"
.LASF42:
	.string	"socklen_t"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF21:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF77:
	.string	"lwip_connect"
.LASF73:
	.string	"sprintf"
.LASF62:
	.string	"len_sent"
.LASF41:
	.string	"sa_data"
.LASF3:
	.string	"short unsigned int"
.LASF16:
	.string	"char"
.LASF19:
	.string	"uint16_t"
.LASF20:
	.string	"int32_t"
.LASF74:
	.string	"lwip_getaddrinfo"
.LASF61:
	.string	"err_code"
.LASF36:
	.string	"_Bool"
.LASF86:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF10:
	.string	"__uint64_t"
.LASF65:
	.string	"sets"
.LASF57:
	.string	"HAL_TCP_Establish"
.LASF60:
	.string	"timeout_ms"
.LASF53:
	.string	"port"
.LASF8:
	.string	"long unsigned int"
.LASF69:
	.string	"HAL_TCP_Read"
.LASF12:
	.string	"__uintptr_t"
.LASF23:
	.string	"uintptr_t"
.LASF50:
	.string	"ai_canonname"
.LASF29:
	.string	"timeval"
.LASF40:
	.string	"sa_family"
.LASF44:
	.string	"ai_flags"
.LASF27:
	.string	"tv_usec"
.LASF5:
	.string	"__int32_t"
.LASF34:
	.string	"u8_t"
.LASF24:
	.string	"suseconds_t"
.LASF31:
	.string	"fds_bits"
.LASF51:
	.string	"ai_next"
.LASF48:
	.string	"ai_addrlen"
.LASF88:
	.string	"/home/stone/Documents/pca"
.LASF33:
	.string	"double"
.LASF63:
	.string	"t_end"
.LASF52:
	.string	"host"
.LASF47:
	.string	"ai_protocol"
.LASF56:
	.string	"service"
.LASF49:
	.string	"ai_addr"
.LASF67:
	.string	"timeout"
.LASF38:
	.string	"sockaddr"
.LASF82:
	.string	"__errno"
.LASF83:
	.string	"aliot_platform_time_left"
.LASF71:
	.string	"HAL_UptimeMs"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
