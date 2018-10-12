	.file	"ip4_addr.c"
	.text
.Ltext0:
	.section	.text.unlikely.ip4_addr_isbroadcast_u32,"ax",@progbits
.LCOLDB0:
	.section	.text.ip4_addr_isbroadcast_u32,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ip4_addr_isbroadcast_u32
.Ltext_cold0:
	.section	.text.ip4_addr_isbroadcast_u32
	.globl	ip4_addr_isbroadcast_u32
	.type	ip4_addr_isbroadcast_u32, @function
ip4_addr_isbroadcast_u32:
.LFB23:
	.file 1 "kernel/protocols/net/core/ipv4/ip4_addr.c"
	.loc 1 59 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 66 0
	movb	$1, %al
	.loc 1 59 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 59 0
	movl	8(%ebp), %edx
.LVL1:
	movl	12(%ebp), %ecx
	.loc 1 64 0
	leal	-1(%edx), %ebx
	cmpl	$-3, %ebx
	ja	.L2
	.loc 1 68 0
	movb	61(%ecx), %al
	andb	$2, %al
	je	.L2
	.loc 1 73 0
	movl	4(%ecx), %ebx
	.loc 1 83 0
	xorl	%eax, %eax
	.loc 1 73 0
	cmpl	%ebx, %edx
	je	.L2
	.loc 1 76 0
	movl	8(%ecx), %ecx
	xorl	%edx, %ebx
	testl	%ecx, %ebx
	jne	.L2
	.loc 1 78 0
	movl	%ecx, %eax
	notl	%eax
	.loc 1 66 0
	andl	%eax, %edx
	cmpl	%eax, %edx
	sete	%al
.L2:
.LVL2:
	.loc 1 85 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	ip4_addr_isbroadcast_u32, .-ip4_addr_isbroadcast_u32
	.section	.text.unlikely.ip4_addr_isbroadcast_u32
.LCOLDE0:
	.section	.text.ip4_addr_isbroadcast_u32
.LHOTE0:
	.section	.text.unlikely.ip4_addr_netmask_valid,"ax",@progbits
.LCOLDB1:
	.section	.text.ip4_addr_netmask_valid,"ax",@progbits
.LHOTB1:
	.globl	ip4_addr_netmask_valid
	.type	ip4_addr_netmask_valid, @function
ip4_addr_netmask_valid:
.LFB24:
	.loc 1 94 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 96 0
	pushl	8(%ebp)
	call	lwip_htonl
.LVL4:
	addl	$16, %esp
	movl	$32, %ecx
	.loc 1 99 0
	movl	$-2147483648, %edx
.LVL5:
.L14:
	.loc 1 100 0
	testl	%edx, %eax
	je	.L13
	.loc 1 99 0 discriminator 2
	shrl	%edx
.LVL6:
	decl	%ecx
	jne	.L14
	jmp	.L20
.L16:
	.loc 1 106 0
	testl	%eax, %edx
	jne	.L17
	.loc 1 105 0
	shrl	%edx
.LVL7:
.L13:
	.loc 1 105 0 is_stmt 0 discriminator 1
	testl	%edx, %edx
	jne	.L16
.L20:
	.loc 1 112 0 is_stmt 1
	movb	$1, %al
.LVL8:
	jmp	.L15
.LVL9:
.L17:
	.loc 1 108 0
	xorl	%eax, %eax
.LVL10:
.L15:
	.loc 1 113 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	ip4_addr_netmask_valid, .-ip4_addr_netmask_valid
	.section	.text.unlikely.ip4_addr_netmask_valid
.LCOLDE1:
	.section	.text.ip4_addr_netmask_valid
.LHOTE1:
	.section	.text.unlikely.ip4addr_aton,"ax",@progbits
.LCOLDB2:
	.section	.text.ip4addr_aton,"ax",@progbits
.LHOTB2:
	.globl	ip4addr_aton
	.type	ip4addr_aton, @function
ip4addr_aton:
.LFB26:
	.loc 1 156 0
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
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 161 0
	leal	-44(%ebp), %esi
	.loc 1 156 0
	subl	$60, %esp
	.loc 1 156 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL12:
	.loc 1 163 0
	movsbl	(%ecx), %eax
.LVL13:
.L31:
	.loc 1 170 0
	leal	-48(%eax), %edx
	cmpb	$9, %dl
	ja	.L42
.LVL14:
	.loc 1 175 0
	cmpb	$48, %al
	.loc 1 174 0
	movb	$10, -57(%ebp)
	.loc 1 175 0
	jne	.L23
.LVL15:
	.loc 1 176 0
	movsbl	1(%ecx), %eax
.LVL16:
	.loc 1 177 0
	movb	%al, %dl
	andl	$-33, %edx
	cmpb	$88, %dl
	je	.L24
	.loc 1 176 0
	incl	%ecx
.LVL17:
	.loc 1 181 0
	movb	$8, -57(%ebp)
	jmp	.L23
.LVL18:
.L24:
	.loc 1 179 0
	movsbl	2(%ecx), %eax
.LVL19:
	.loc 1 178 0
	movb	$16, -57(%ebp)
	.loc 1 179 0
	addl	$2, %ecx
.LVL20:
.L23:
	.loc 1 186 0
	movzbl	-57(%ebp), %ebx
	incl	%ecx
.LVL21:
	.loc 1 178 0
	xorl	%edx, %edx
	.loc 1 186 0
	movl	%ebx, -68(%ebp)
.LVL22:
.L25:
	leal	-1(%ecx), %ebx
	movl	%ebx, -64(%ebp)
.LVL23:
	.loc 1 185 0
	leal	-48(%eax), %ebx
.LVL24:
	cmpb	$9, %bl
	ja	.L26
	.loc 1 186 0
	imull	-68(%ebp), %edx
.LVL25:
	leal	-48(%edx,%eax), %edx
.LVL26:
	jmp	.L61
.LVL27:
.L26:
	.loc 1 188 0
	cmpb	$16, -57(%ebp)
	jne	.L28
	.loc 1 188 0 is_stmt 0 discriminator 1
	leal	-97(%eax), %ebx
	movb	%bl, -58(%ebp)
	movb	%al, %bl
	andl	$-33, %ebx
	subl	$65, %ebx
	cmpb	$5, %bl
	ja	.L28
	.loc 1 189 0 is_stmt 1
	sall	$4, %edx
.LVL28:
	addl	$10, %eax
.LVL29:
	cmpb	$26, -58(%ebp)
	sbbl	%ebx, %ebx
	andl	$32, %ebx
	addl	$65, %ebx
	subl	%ebx, %eax
.LVL30:
	orl	%eax, %edx
.LVL31:
.L61:
	.loc 1 190 0
	movsbl	(%ecx), %eax
.LVL32:
	incl	%ecx
.LVL33:
	jmp	.L25
.LVL34:
.L28:
	.loc 1 195 0
	cmpb	$46, %al
	jne	.L30
	.loc 1 202 0
	leal	-32(%ebp), %eax
.LVL35:
	cmpl	%eax, %esi
	je	.L42
	.loc 1 206 0
	movl	-64(%ebp), %eax
	.loc 1 205 0
	addl	$4, %esi
.LVL36:
	movl	%edx, -4(%esi)
	.loc 1 206 0
	leal	1(%eax), %ecx
.LVL37:
	movsbl	1(%eax), %eax
.LVL38:
	.loc 1 210 0
	jmp	.L31
.LVL39:
.L30:
	.loc 1 214 0
	testb	$-33, %al
	je	.L32
	.loc 1 214 0 is_stmt 0 discriminator 1
	leal	-9(%eax), %ecx
	.loc 1 171 0 is_stmt 1 discriminator 1
	xorl	%eax, %eax
.LVL40:
	.loc 1 214 0 discriminator 1
	cmpb	$4, %cl
	ja	.L22
.L32:
	.loc 1 221 0
	leal	-44(%ebp), %eax
	subl	%eax, %esi
.LVL41:
	movl	%esi, %eax
	sarl	$2, %eax
	incl	%eax
	cmpl	$2, %eax
	je	.L34
	jg	.L35
	testl	%eax, %eax
	je	.L22
	jmp	.L33
.L35:
	cmpl	$3, %eax
	je	.L36
	cmpl	$4, %eax
	je	.L37
	jmp	.L33
.L34:
	.loc 1 171 0
	xorl	%eax, %eax
	.loc 1 230 0
	cmpl	$16777215, %edx
	ja	.L22
	.loc 1 233 0
	movl	-44(%ebp), %ecx
	cmpl	$255, %ecx
	ja	.L22
	.loc 1 236 0
	sall	$24, %ecx
	jmp	.L62
.L36:
	.loc 1 171 0
	xorl	%eax, %eax
	.loc 1 240 0
	cmpl	$65535, %edx
	ja	.L22
	.loc 1 243 0
	movl	-44(%ebp), %ebx
	cmpl	$255, %ebx
	ja	.L22
	.loc 1 243 0 is_stmt 0 discriminator 1
	movl	-40(%ebp), %ecx
	cmpl	$255, %ecx
	ja	.L22
	.loc 1 246 0 is_stmt 1
	sall	$24, %ebx
	sall	$16, %ecx
	jmp	.L63
.L37:
	.loc 1 171 0
	xorl	%eax, %eax
	.loc 1 250 0
	cmpl	$255, %edx
	ja	.L22
	.loc 1 253 0
	movl	-44(%ebp), %esi
	cmpl	$255, %esi
	ja	.L22
	.loc 1 253 0 is_stmt 0 discriminator 1
	movl	-40(%ebp), %ebx
	cmpl	$255, %ebx
	ja	.L22
	.loc 1 253 0 discriminator 2
	movl	-36(%ebp), %ecx
	cmpl	$255, %ecx
	ja	.L22
	.loc 1 256 0 is_stmt 1
	sall	$24, %esi
	sall	$16, %ebx
	sall	$8, %ecx
	orl	%esi, %ebx
.L63:
	orl	%ebx, %ecx
.L62:
	orl	%ecx, %edx
.LVL42:
.L33:
	.loc 1 262 0
	testl	%edi, %edi
	.loc 1 265 0
	movl	$1, %eax
	.loc 1 262 0
	je	.L22
	.loc 1 263 0
	subl	$12, %esp
	pushl	%edx
	call	lwip_htonl
.LVL43:
	addl	$16, %esp
	movl	%eax, (%edi)
	.loc 1 265 0
	movl	$1, %eax
	jmp	.L22
.LVL44:
.L42:
	.loc 1 171 0
	xorl	%eax, %eax
.LVL45:
.L22:
	.loc 1 266 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L38
	call	__stack_chk_fail
.LVL46:
.L38:
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
.LFE26:
	.size	ip4addr_aton, .-ip4addr_aton
	.section	.text.unlikely.ip4addr_aton
.LCOLDE2:
	.section	.text.ip4addr_aton
.LHOTE2:
	.section	.text.unlikely.ipaddr_addr,"ax",@progbits
.LCOLDB3:
	.section	.text.ipaddr_addr,"ax",@progbits
.LHOTB3:
	.globl	ipaddr_addr
	.type	ipaddr_addr, @function
ipaddr_addr:
.LFB25:
	.loc 1 134 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$32, %esp
	.loc 1 134 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 137 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	call	ip4addr_aton
.LVL48:
	.loc 1 140 0
	orl	$-1, %edx
	.loc 1 137 0
	addl	$16, %esp
	.loc 1 138 0
	testl	%eax, %eax
	cmovne	-16(%ebp), %edx
	.loc 1 141 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L66
	call	__stack_chk_fail
.LVL49:
.L66:
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	ipaddr_addr, .-ipaddr_addr
	.section	.text.unlikely.ipaddr_addr
.LCOLDE3:
	.section	.text.ipaddr_addr
.LHOTE3:
	.section	.text.unlikely.ip4addr_ntoa_r,"ax",@progbits
.LCOLDB4:
	.section	.text.ip4addr_ntoa_r,"ax",@progbits
.LHOTB4:
	.globl	ip4addr_ntoa_r
	.type	ip4addr_ntoa_r, @function
ip4addr_ntoa_r:
.LFB28:
	.loc 1 294 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.loc 1 307 0
	leal	-36(%ebp), %ecx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 302 0
	xorl	%edi, %edi
	.loc 1 294 0
	subl	$44, %esp
	.loc 1 294 0
	movl	12(%ebp), %eax
	movl	%eax, -48(%ebp)
	.loc 1 306 0
	movl	-48(%ebp), %esi
	.loc 1 294 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL51:
	.loc 1 304 0
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -36(%ebp)
.LVL52:
.L74:
	movb	(%ecx), %al
	.loc 1 307 0
	xorl	%edx, %edx
	movb	%al, -41(%ebp)
.L70:
.LVL53:
	.loc 1 311 0 discriminator 1
	movzbl	-41(%ebp), %eax
	movb	$10, %bl
	divb	%bl
	movzbl	%ah, %ebx
.LVL54:
	.loc 1 312 0 discriminator 1
	movb	%al, -41(%ebp)
	.loc 1 313 0 discriminator 1
	leal	1(%edx), %eax
	addl	$48, %ebx
.LVL55:
	.loc 1 314 0 discriminator 1
	cmpb	$0, -41(%ebp)
	.loc 1 313 0 discriminator 1
	movb	%al, -42(%ebp)
.LVL56:
	movzbl	%dl, %eax
.LVL57:
	movb	%bl, -31(%ebp,%eax)
	.loc 1 314 0 discriminator 1
	je	.L81
	.loc 1 313 0
	movb	-42(%ebp), %dl
	jmp	.L70
.L81:
	.loc 1 314 0
	movl	%esi, %eax
	movl	%edi, %esi
.LVL58:
	movb	$0, (%ecx)
	subl	%eax, %esi
.LVL59:
.L71:
	.loc 1 315 0
	cmpb	$-1, %dl
	leal	(%eax,%esi), %ebx
.LVL60:
	je	.L82
.LVL61:
	.loc 1 316 0
	cmpl	16(%ebp), %ebx
	leal	-1(%edx), %edi
	jge	.L78
	.loc 1 319 0
	movzbl	%dl, %edx
	incl	%eax
.LVL62:
	movb	-31(%ebp,%edx), %dl
.LVL63:
	movb	%dl, -1(%eax)
	movl	%edi, %edx
	jmp	.L71
.LVL64:
.L82:
	.loc 1 321 0
	cmpl	16(%ebp), %ebx
	leal	1(%ebx), %edi
.LVL65:
	jge	.L78
	.loc 1 308 0 discriminator 2
	leal	-32(%ebp), %edx
.LVL66:
	.loc 1 325 0 discriminator 2
	incl	%ecx
.LVL67:
	.loc 1 324 0 discriminator 2
	leal	1(%eax), %esi
.LVL68:
	movb	$46, (%eax)
	.loc 1 308 0 discriminator 2
	cmpl	%edx, %ecx
	jne	.L74
.LVL69:
	.loc 1 327 0
	movb	$0, (%eax)
	.loc 1 328 0
	movl	-48(%ebp), %eax
	jmp	.L72
.LVL70:
.L78:
	.loc 1 317 0
	xorl	%eax, %eax
.LVL71:
.L72:
	.loc 1 329 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
.LVL72:
	je	.L75
	call	__stack_chk_fail
.LVL73:
.L75:
	addl	$44, %esp
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
.LFE28:
	.size	ip4addr_ntoa_r, .-ip4addr_ntoa_r
	.section	.text.unlikely.ip4addr_ntoa_r
.LCOLDE4:
	.section	.text.ip4addr_ntoa_r
.LHOTE4:
	.section	.text.unlikely.ip4addr_ntoa,"ax",@progbits
.LCOLDB5:
	.section	.text.ip4addr_ntoa,"ax",@progbits
.LHOTB5:
	.globl	ip4addr_ntoa
	.type	ip4addr_ntoa, @function
ip4addr_ntoa:
.LFB27:
	.loc 1 278 0
	.cfi_startproc
.LVL74:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 280 0
	pushl	$16
	pushl	$str.3943
	pushl	8(%ebp)
	call	ip4addr_ntoa_r
.LVL75:
	.loc 1 281 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	ip4addr_ntoa, .-ip4addr_ntoa
	.section	.text.unlikely.ip4addr_ntoa
.LCOLDE5:
	.section	.text.ip4addr_ntoa
.LHOTE5:
	.section	.bss.str.3943,"aw",@nobits
	.align 4
	.type	str.3943, @object
	.size	str.3943, 16
str.3943:
	.zero	16
	.globl	ip_addr_broadcast
	.section	.rodata.ip_addr_broadcast,"a",@progbits
	.align 4
	.type	ip_addr_broadcast, @object
	.size	ip_addr_broadcast, 4
ip_addr_broadcast:
	.long	-1
	.globl	ip_addr_any
	.section	.rodata.ip_addr_any,"a",@progbits
	.align 4
	.type	ip_addr_any, @object
	.size	ip_addr_any, 4
ip_addr_any:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.ip4_addr_isbroadcast_u32
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 4 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 5 "./kernel/protocols/net/include/lwip/err.h"
	.file 6 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 7 "./kernel/protocols/net/include/lwip/netif.h"
	.file 8 "./include/aos/log.h"
	.file 9 "./kernel/protocols/net/include/lwip/memp.h"
	.file 10 "./kernel/protocols/net/include/lwip/def.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x743
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF91
	.byte	0xc
	.long	.LASF92
	.long	.LASF93
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
	.uleb128 0x5
	.byte	0x4
	.long	0x81
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x8e
	.uleb128 0x6
	.long	0x81
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
	.byte	0x35
	.long	0x64
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF18
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x3
	.byte	0x35
	.long	0xed
	.uleb128 0x9
	.long	.LASF24
	.byte	0x3
	.byte	0x36
	.long	0xc2
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x3
	.byte	0x49
	.long	0xd4
	.uleb128 0x7
	.long	.LASF20
	.byte	0x4
	.byte	0xe1
	.long	0xed
	.uleb128 0x7
	.long	.LASF21
	.byte	0x5
	.byte	0x39
	.long	0xac
	.uleb128 0x8
	.long	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x9d
	.long	0x16f
	.uleb128 0x9
	.long	.LASF25
	.byte	0x6
	.byte	0x9f
	.long	0x16f
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x6
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0xab
	.long	0xb7
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x6
	.byte	0xae
	.long	0xb7
	.byte	0xa
	.uleb128 0x9
	.long	.LASF28
	.byte	0x6
	.byte	0xb1
	.long	0xa1
	.byte	0xc
	.uleb128 0x9
	.long	.LASF29
	.byte	0x6
	.byte	0xb4
	.long	0xa1
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0x6
	.byte	0xc2
	.long	0xb7
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x10e
	.uleb128 0xb
	.byte	0x4
	.long	0x2c
	.byte	0x9
	.byte	0x32
	.long	0x1dc
	.uleb128 0xc
	.long	.LASF30
	.byte	0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.uleb128 0xc
	.long	.LASF32
	.byte	0x2
	.uleb128 0xc
	.long	.LASF33
	.byte	0x3
	.uleb128 0xc
	.long	.LASF34
	.byte	0x4
	.uleb128 0xc
	.long	.LASF35
	.byte	0x5
	.uleb128 0xc
	.long	.LASF36
	.byte	0x6
	.uleb128 0xc
	.long	.LASF37
	.byte	0x7
	.uleb128 0xc
	.long	.LASF38
	.byte	0x8
	.uleb128 0xc
	.long	.LASF39
	.byte	0x9
	.uleb128 0xc
	.long	.LASF40
	.byte	0xa
	.uleb128 0xc
	.long	.LASF41
	.byte	0xb
	.uleb128 0xc
	.long	.LASF42
	.byte	0xc
	.uleb128 0xc
	.long	.LASF43
	.byte	0xd
	.uleb128 0xc
	.long	.LASF44
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	.LASF48
	.byte	0x4
	.long	0x2c
	.byte	0x7
	.byte	0x6b
	.long	0x1ff
	.uleb128 0xc
	.long	.LASF45
	.byte	0
	.uleb128 0xc
	.long	.LASF46
	.byte	0x1
	.uleb128 0xc
	.long	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x4
	.long	0x2c
	.byte	0x7
	.byte	0x8f
	.long	0x21c
	.uleb128 0xc
	.long	.LASF50
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x222
	.uleb128 0x8
	.long	.LASF52
	.byte	0x54
	.byte	0x7
	.byte	0xe5
	.long	0x346
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0xe7
	.long	0x21c
	.byte	0
	.uleb128 0x9
	.long	.LASF53
	.byte	0x7
	.byte	0xeb
	.long	0xf8
	.byte	0x4
	.uleb128 0x9
	.long	.LASF54
	.byte	0x7
	.byte	0xec
	.long	0xf8
	.byte	0x8
	.uleb128 0xa
	.string	"gw"
	.byte	0x7
	.byte	0xed
	.long	0xf8
	.byte	0xc
	.uleb128 0x9
	.long	.LASF55
	.byte	0x7
	.byte	0xf8
	.long	0x346
	.byte	0x10
	.uleb128 0x9
	.long	.LASF56
	.byte	0x7
	.byte	0xfe
	.long	0x36b
	.byte	0x14
	.uleb128 0xe
	.long	.LASF57
	.byte	0x7
	.value	0x103
	.long	0x3a0
	.byte	0x18
	.uleb128 0xe
	.long	.LASF58
	.byte	0x7
	.value	0x10e
	.long	0x3c5
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF59
	.byte	0x7
	.value	0x11b
	.long	0x79
	.byte	0x20
	.uleb128 0xe
	.long	.LASF60
	.byte	0x7
	.value	0x11d
	.long	0x40b
	.byte	0x24
	.uleb128 0xe
	.long	.LASF61
	.byte	0x7
	.value	0x125
	.long	0xa1
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF62
	.byte	0x7
	.value	0x129
	.long	0x88
	.byte	0x30
	.uleb128 0xf
	.string	"mtu"
	.byte	0x7
	.value	0x12f
	.long	0xb7
	.byte	0x34
	.uleb128 0xe
	.long	.LASF63
	.byte	0x7
	.value	0x131
	.long	0xa1
	.byte	0x36
	.uleb128 0xe
	.long	.LASF64
	.byte	0x7
	.value	0x133
	.long	0x41b
	.byte	0x37
	.uleb128 0xe
	.long	.LASF29
	.byte	0x7
	.value	0x135
	.long	0xa1
	.byte	0x3d
	.uleb128 0xe
	.long	.LASF65
	.byte	0x7
	.value	0x137
	.long	0x42b
	.byte	0x3e
	.uleb128 0xf
	.string	"num"
	.byte	0x7
	.value	0x139
	.long	0xa1
	.byte	0x40
	.uleb128 0xe
	.long	.LASF66
	.byte	0x7
	.value	0x147
	.long	0x3e1
	.byte	0x44
	.uleb128 0xe
	.long	.LASF67
	.byte	0x7
	.value	0x153
	.long	0x16f
	.byte	0x48
	.uleb128 0xe
	.long	.LASF68
	.byte	0x7
	.value	0x154
	.long	0x16f
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF69
	.byte	0x7
	.value	0x156
	.long	0xb7
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF70
	.byte	0x7
	.byte	0xa2
	.long	0x351
	.uleb128 0x5
	.byte	0x4
	.long	0x357
	.uleb128 0x10
	.long	0x103
	.long	0x36b
	.uleb128 0x11
	.long	0x16f
	.uleb128 0x11
	.long	0x21c
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0xb1
	.long	0x376
	.uleb128 0x5
	.byte	0x4
	.long	0x37c
	.uleb128 0x10
	.long	0x103
	.long	0x395
	.uleb128 0x11
	.long	0x21c
	.uleb128 0x11
	.long	0x16f
	.uleb128 0x11
	.long	0x395
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x39b
	.uleb128 0x6
	.long	0xed
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0xc8
	.long	0x3ab
	.uleb128 0x5
	.byte	0x4
	.long	0x3b1
	.uleb128 0x10
	.long	0x103
	.long	0x3c5
	.uleb128 0x11
	.long	0x21c
	.uleb128 0x11
	.long	0x16f
	.byte	0
	.uleb128 0x7
	.long	.LASF73
	.byte	0x7
	.byte	0xca
	.long	0x3d0
	.uleb128 0x5
	.byte	0x4
	.long	0x3d6
	.uleb128 0x12
	.long	0x3e1
	.uleb128 0x11
	.long	0x21c
	.byte	0
	.uleb128 0x7
	.long	.LASF74
	.byte	0x7
	.byte	0xcd
	.long	0x3ec
	.uleb128 0x5
	.byte	0x4
	.long	0x3f2
	.uleb128 0x10
	.long	0x103
	.long	0x40b
	.uleb128 0x11
	.long	0x21c
	.uleb128 0x11
	.long	0x395
	.uleb128 0x11
	.long	0x1ff
	.byte	0
	.uleb128 0x13
	.long	0x79
	.long	0x41b
	.uleb128 0x14
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0xa1
	.long	0x42b
	.uleb128 0x14
	.long	0x72
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	0x81
	.long	0x43b
	.uleb128 0x14
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.long	.LASF75
	.byte	0x1
	.byte	0x3a
	.long	0xa1
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x480
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.byte	0x3a
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0x3a
	.long	0x480
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x17
	.long	.LASF77
	.byte	0x1
	.byte	0x3c
	.long	0xed
	.long	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x486
	.uleb128 0x6
	.long	0x222
	.uleb128 0x15
	.long	.LASF76
	.byte	0x1
	.byte	0x5d
	.long	0xa1
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4da
	.uleb128 0x16
	.long	.LASF54
	.byte	0x1
	.byte	0x5d
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF78
	.byte	0x1
	.byte	0x5f
	.long	0xc2
	.long	.LLST1
	.uleb128 0x17
	.long	.LASF79
	.byte	0x1
	.byte	0x60
	.long	0xc2
	.long	.LLST2
	.uleb128 0x18
	.long	.LVL4
	.long	0x732
	.byte	0
	.uleb128 0x15
	.long	.LASF80
	.byte	0x1
	.byte	0x9b
	.long	0x25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x19
	.string	"cp"
	.byte	0x1
	.byte	0x9b
	.long	0x88
	.long	.LLST3
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.byte	0x9b
	.long	0x569
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.byte	0x9d
	.long	0xc2
	.long	.LLST4
	.uleb128 0x17
	.long	.LASF81
	.byte	0x1
	.byte	0x9e
	.long	0xa1
	.long	.LLST5
	.uleb128 0x1a
	.string	"c"
	.byte	0x1
	.byte	0x9f
	.long	0x81
	.long	.LLST6
	.uleb128 0x1b
	.long	.LASF82
	.byte	0x1
	.byte	0xa0
	.long	0x56f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1a
	.string	"pp"
	.byte	0x1
	.byte	0xa1
	.long	0x57f
	.long	.LLST7
	.uleb128 0x18
	.long	.LVL43
	.long	0x732
	.uleb128 0x18
	.long	.LVL46
	.long	0x73d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xed
	.uleb128 0x13
	.long	0xc2
	.long	0x57f
	.uleb128 0x14
	.long	0x72
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xc2
	.uleb128 0x15
	.long	.LASF83
	.byte	0x1
	.byte	0x85
	.long	0xc2
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x5cc
	.uleb128 0x1c
	.string	"cp"
	.byte	0x1
	.byte	0x85
	.long	0x88
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"val"
	.byte	0x1
	.byte	0x87
	.long	0xed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x18
	.long	.LVL48
	.long	0x4da
	.uleb128 0x18
	.long	.LVL49
	.long	0x73d
	.byte	0
	.uleb128 0x1e
	.long	.LASF84
	.byte	0x1
	.value	0x125
	.long	0x7b
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x695
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x1
	.value	0x125
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.string	"buf"
	.byte	0x1
	.value	0x125
	.long	0x7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1f
	.long	.LASF85
	.byte	0x1
	.value	0x125
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0x127
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x22
	.string	"inv"
	.byte	0x1
	.value	0x128
	.long	0x695
	.uleb128 0x2
	.byte	0x91
	.sleb128 -39
	.uleb128 0x23
	.string	"rp"
	.byte	0x1
	.value	0x129
	.long	0x7b
	.long	.LLST8
	.uleb128 0x23
	.string	"ap"
	.byte	0x1
	.value	0x12a
	.long	0x6a5
	.long	.LLST9
	.uleb128 0x23
	.string	"rem"
	.byte	0x1
	.value	0x12b
	.long	0xa1
	.long	.LLST10
	.uleb128 0x23
	.string	"n"
	.byte	0x1
	.value	0x12c
	.long	0xa1
	.long	.LLST11
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.value	0x12d
	.long	0xa1
	.long	.LLST12
	.uleb128 0x23
	.string	"len"
	.byte	0x1
	.value	0x12e
	.long	0x25
	.long	.LLST13
	.uleb128 0x18
	.long	.LVL73
	.long	0x73d
	.byte	0
	.uleb128 0x13
	.long	0x81
	.long	0x6a5
	.uleb128 0x14
	.long	0x72
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0xa1
	.uleb128 0x1e
	.long	.LASF87
	.byte	0x1
	.value	0x115
	.long	0x7b
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f0
	.uleb128 0x1f
	.long	.LASF24
	.byte	0x1
	.value	0x115
	.long	0x395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"str"
	.byte	0x1
	.value	0x117
	.long	0x6f0
	.uleb128 0x5
	.byte	0x3
	.long	str.3943
	.uleb128 0x18
	.long	.LVL75
	.long	0x5cc
	.byte	0
	.uleb128 0x13
	.long	0x81
	.long	0x700
	.uleb128 0x14
	.long	0x72
	.byte	0xf
	.byte	0
	.uleb128 0x24
	.long	.LASF88
	.byte	0x8
	.byte	0x17
	.long	0x2c
	.uleb128 0x25
	.long	.LASF89
	.byte	0x1
	.byte	0x2f
	.long	0x71c
	.uleb128 0x5
	.byte	0x3
	.long	ip_addr_any
	.uleb128 0x6
	.long	0xf8
	.uleb128 0x25
	.long	.LASF90
	.byte	0x1
	.byte	0x30
	.long	0x71c
	.uleb128 0x5
	.byte	0x3
	.long	ip_addr_broadcast
	.uleb128 0x26
	.long	.LASF94
	.long	.LASF94
	.byte	0xa
	.byte	0x5b
	.uleb128 0x27
	.long	.LASF95
	.long	.LASF95
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
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.long	.LVL2
	.value	0x4
	.byte	0x91
	.sleb128 0
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5
	.value	0x5
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x1f
	.byte	0x9f
	.long	.LVL5
	.long	.LFE24
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL11
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL13
	.long	.LVL15
	.value	0x1
	.byte	0x51
	.long	.LVL15
	.long	.LVL17
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x51
	.long	.LVL18
	.long	.LVL20
	.value	0x3
	.byte	0x71
	.sleb128 2
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x51
	.long	.LVL21
	.long	.LVL22
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL26
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL26
	.long	.LVL27
	.value	0x1
	.byte	0x51
	.long	.LVL27
	.long	.LVL31
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL31
	.long	.LVL33
	.value	0x1
	.byte	0x51
	.long	.LVL33
	.long	.LVL34
	.value	0x7
	.byte	0x91
	.sleb128 -72
	.byte	0x6
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL34
	.long	.LVL37
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x51
	.long	.LVL39
	.long	.LVL44
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x52
	.long	.LVL26
	.long	.LVL28
	.value	0x1
	.byte	0x52
	.long	.LVL31
	.long	.LVL43-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL14
	.long	.LVL18
	.value	0x2
	.byte	0x3a
	.byte	0x9f
	.long	.LVL18
	.long	.LVL20
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.long	.LVL23
	.long	.LVL44
	.value	0x3
	.byte	0x91
	.sleb128 -65
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL30
	.value	0x3
	.byte	0x70
	.sleb128 -10
	.byte	0x9f
	.long	.LVL32
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL52
	.long	.LVL58
	.value	0x1
	.byte	0x56
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL68
	.value	0x1
	.byte	0x50
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x56
	.long	.LVL69
	.long	.LVL70
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL52
	.long	.LVL67
	.value	0x1
	.byte	0x51
	.long	.LVL67
	.long	.LVL68
	.value	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.long	.LVL68
	.long	.LVL72
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL52
	.long	.LVL67
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x24
	.byte	0x9f
	.long	.LVL68
	.long	.LVL71
	.value	0x8
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL53
	.long	.LVL56
	.value	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL59
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	.LVL60
	.long	.LVL63
	.value	0x1
	.byte	0x52
	.long	.LVL64
	.long	.LVL66
	.value	0x1
	.byte	0x52
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x53
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	.LVL65
	.long	.LVL70
	.value	0x1
	.byte	0x57
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB26
	.long	.LFE26
	.long	.LFB25
	.long	.LFE25
	.long	.LFB28
	.long	.LFE28
	.long	.LFB27
	.long	.LFE27
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF85:
	.string	"buflen"
.LASF64:
	.string	"hwaddr"
.LASF59:
	.string	"state"
.LASF71:
	.string	"netif_output_fn"
.LASF77:
	.string	"ipaddr"
.LASF5:
	.string	"short int"
.LASF55:
	.string	"input"
.LASF10:
	.string	"sizetype"
.LASF27:
	.string	"tot_len"
.LASF90:
	.string	"ip_addr_broadcast"
.LASF75:
	.string	"ip4_addr_isbroadcast_u32"
.LASF58:
	.string	"status_callback"
.LASF38:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF63:
	.string	"hwaddr_len"
.LASF60:
	.string	"client_data"
.LASF44:
	.string	"MEMP_MAX"
.LASF66:
	.string	"igmp_mac_filter"
.LASF47:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF33:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF62:
	.string	"hostname"
.LASF41:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"signed char"
.LASF57:
	.string	"linkoutput"
.LASF12:
	.string	"float"
.LASF1:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF48:
	.string	"lwip_internal_netif_client_data_index"
.LASF72:
	.string	"netif_linkoutput_fn"
.LASF50:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF7:
	.string	"long int"
.LASF49:
	.string	"netif_mac_filter_action"
.LASF20:
	.string	"ip_addr_t"
.LASF80:
	.string	"ip4addr_aton"
.LASF24:
	.string	"addr"
.LASF86:
	.string	"s_addr"
.LASF88:
	.string	"aos_log_level"
.LASF91:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF74:
	.string	"netif_igmp_mac_filter_fn"
.LASF65:
	.string	"name"
.LASF45:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"long double"
.LASF89:
	.string	"ip_addr_any"
.LASF70:
	.string	"netif_input_fn"
.LASF4:
	.string	"unsigned char"
.LASF73:
	.string	"netif_status_callback_fn"
.LASF92:
	.string	"src/ip4_addr.c"
.LASF76:
	.string	"ip4_addr_netmask_valid"
.LASF29:
	.string	"flags"
.LASF46:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF28:
	.string	"type"
.LASF67:
	.string	"loop_first"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"lwip_htonl"
.LASF39:
	.string	"MEMP_IGMP_GROUP"
.LASF69:
	.string	"loop_cnt_current"
.LASF51:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF6:
	.string	"short unsigned int"
.LASF21:
	.string	"err_t"
.LASF11:
	.string	"char"
.LASF15:
	.string	"s8_t"
.LASF37:
	.string	"MEMP_TCPIP_MSG_API"
.LASF18:
	.string	"_Bool"
.LASF82:
	.string	"parts"
.LASF87:
	.string	"ip4addr_ntoa"
.LASF22:
	.string	"ip4_addr"
.LASF42:
	.string	"MEMP_PBUF"
.LASF40:
	.string	"MEMP_SYS_TIMEOUT"
.LASF23:
	.string	"pbuf"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF30:
	.string	"MEMP_RAW_PCB"
.LASF19:
	.string	"ip4_addr_t"
.LASF52:
	.string	"netif"
.LASF78:
	.string	"mask"
.LASF54:
	.string	"netmask"
.LASF17:
	.string	"u32_t"
.LASF68:
	.string	"loop_last"
.LASF83:
	.string	"ipaddr_addr"
.LASF16:
	.string	"u16_t"
.LASF43:
	.string	"MEMP_PBUF_POOL"
.LASF34:
	.string	"MEMP_TCP_SEG"
.LASF84:
	.string	"ip4addr_ntoa_r"
.LASF61:
	.string	"rs_count"
.LASF36:
	.string	"MEMP_NETCONN"
.LASF56:
	.string	"output"
.LASF32:
	.string	"MEMP_TCP_PCB"
.LASF93:
	.string	"/home/stone/Documents/pca"
.LASF95:
	.string	"__stack_chk_fail"
.LASF31:
	.string	"MEMP_UDP_PCB"
.LASF14:
	.string	"u8_t"
.LASF81:
	.string	"base"
.LASF53:
	.string	"ip_addr"
.LASF79:
	.string	"nm_hostorder"
.LASF26:
	.string	"payload"
.LASF25:
	.string	"next"
.LASF35:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
