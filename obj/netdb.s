	.file	"netdb.c"
	.text
.Ltext0:
	.section	.text.unlikely.lwip_gethostbyname,"ax",@progbits
.LCOLDB0:
	.section	.text.lwip_gethostbyname,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.lwip_gethostbyname
.Ltext_cold0:
	.section	.text.lwip_gethostbyname
	.globl	lwip_gethostbyname
	.type	lwip_gethostbyname, @function
lwip_gethostbyname:
.LFB17:
	.file 1 "kernel/protocols/net/api/netdb.c"
	.loc 1 88 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 3, -12
	.loc 1 88 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 100 0
	leal	-16(%ebp), %eax
	pushl	%eax
	pushl	%ebx
	call	netconn_gethostbyname
.LVL1:
	.loc 1 101 0
	addl	$16, %esp
	testb	%al, %al
	je	.L2
	.loc 1 103 0
	movl	$210, h_errno
	.loc 1 104 0
	xorl	%eax, %eax
.LVL2:
	jmp	.L3
.LVL3:
.L2:
	.loc 1 108 0
	movl	-16(%ebp), %eax
.LVL4:
	.loc 1 109 0
	movl	$s_hostent_addr.4800, s_phostent_addr.4801
	.loc 1 110 0
	movl	$0, s_phostent_addr.4801+4
	.loc 1 108 0
	movl	%eax, s_hostent_addr.4800
	.loc 1 111 0
	pushl	%eax
	pushl	$256
	pushl	%ebx
	pushl	$s_hostname.4802
	call	strncpy
.LVL5:
	.loc 1 112 0
	movb	$0, s_hostname.4802+256
	.loc 1 113 0
	movl	$s_hostname.4802, s_hostent.4798
	.loc 1 141 0
	addl	$16, %esp
	.loc 1 114 0
	movl	$0, s_aliases.4799
	.loc 1 115 0
	movl	$s_aliases.4799, s_hostent.4798+4
	.loc 1 141 0
	movl	$s_hostent.4798, %eax
	.loc 1 116 0
	movl	$2, s_hostent.4798+8
	.loc 1 117 0
	movl	$4, s_hostent.4798+12
	.loc 1 118 0
	movl	$s_phostent_addr.4801, s_hostent.4798+16
.L3:
	.loc 1 143 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L4
	call	__stack_chk_fail
.LVL6:
.L4:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	lwip_gethostbyname, .-lwip_gethostbyname
	.section	.text.unlikely.lwip_gethostbyname
.LCOLDE0:
	.section	.text.lwip_gethostbyname
.LHOTE0:
	.section	.text.unlikely.lwip_gethostbyname_r,"ax",@progbits
.LCOLDB1:
	.section	.text.lwip_gethostbyname_r,"ax",@progbits
.LHOTB1:
	.globl	lwip_gethostbyname_r
	.type	lwip_gethostbyname_r, @function
lwip_gethostbyname_r:
.LFB18:
	.loc 1 164 0
	.cfi_startproc
.LVL7:
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
	.loc 1 164 0
	movl	8(%ebp), %eax
	movl	28(%ebp), %esi
	movl	12(%ebp), %edx
	movl	16(%ebp), %ebx
	movl	%eax, -44(%ebp)
	movl	24(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 173 0
	leal	-32(%ebp), %eax
	testl	%esi, %esi
	cmove	%eax, %esi
.LVL8:
	.loc 1 176 0
	cmpl	$0, -48(%ebp)
	je	.L16
	.loc 1 182 0
	movl	-48(%ebp), %eax
	.loc 1 183 0
	testl	%edx, %edx
	sete	%cl
	testl	%ebx, %ebx
	.loc 1 182 0
	movl	$0, (%eax)
	.loc 1 183 0
	sete	%al
	orb	%al, %cl
	jne	.L16
	cmpl	$0, -44(%ebp)
	sete	%al
	jne	.L11
.L16:
	.loc 1 185 0
	movl	$22, (%esi)
	jmp	.L18
.L11:
	.loc 1 189 0
	movl	-44(%ebp), %edi
	orl	$-1, %ecx
	repnz scasb
.LVL9:
	notl	%ecx
	movl	%ecx, %eax
	movl	%ecx, -52(%ebp)
	leal	-1(%ecx), %ecx
.LVL10:
	.loc 1 190 0
	addl	$19, %eax
	cmpl	20(%ebp), %eax
	jbe	.L13
	.loc 1 192 0
	movl	$34, (%esi)
	jmp	.L18
.L13:
	.loc 1 196 0
	addl	$3, %ebx
	movl	%edx, -64(%ebp)
	.loc 1 200 0
	pushl	%edx
	.loc 1 196 0
	andl	$-4, %ebx
.LVL11:
	.loc 1 200 0
	pushl	%edx
	movl	%ecx, -60(%ebp)
	leal	8(%ebx), %eax
	pushl	%eax
	pushl	-44(%ebp)
	movl	%eax, -56(%ebp)
.LVL12:
	call	netconn_gethostbyname
.LVL13:
	.loc 1 201 0
	addl	$16, %esp
	testb	%al, %al
	movl	-60(%ebp), %ecx
	movl	-64(%ebp), %edx
	je	.L14
	.loc 1 203 0
	movl	$210, (%esi)
.LVL14:
.L18:
	.loc 1 204 0
	orl	$-1, %eax
	jmp	.L10
.LVL15:
.L14:
	.loc 1 208 0
	leal	16(%ebx), %edi
	movl	-44(%ebp), %esi
.LVL16:
	.loc 1 212 0
	leal	8(%ebx), %eax
.LVL17:
	.loc 1 208 0
	rep movsb
	.loc 1 209 0
	movl	-52(%ebp), %edi
	movb	$0, 15(%ebx,%edi)
	.loc 1 212 0
	movl	%eax, (%ebx)
	.loc 1 215 0
	leal	16(%ebx), %eax
	.loc 1 213 0
	movl	$0, 4(%ebx)
	.loc 1 214 0
	movl	$0, 12(%ebx)
	.loc 1 215 0
	movl	%eax, (%edx)
	.loc 1 216 0
	leal	12(%ebx), %eax
	.loc 1 217 0
	movl	$2, 8(%edx)
	.loc 1 218 0
	movl	$4, 12(%edx)
	.loc 1 219 0
	movl	%ebx, 16(%edx)
	.loc 1 216 0
	movl	%eax, 4(%edx)
	.loc 1 222 0
	movl	-48(%ebp), %eax
	movl	%edx, (%eax)
	.loc 1 225 0
	xorl	%eax, %eax
.LVL18:
.L10:
	.loc 1 226 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L15
	call	__stack_chk_fail
.LVL19:
.L15:
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
.LFE18:
	.size	lwip_gethostbyname_r, .-lwip_gethostbyname_r
	.section	.text.unlikely.lwip_gethostbyname_r
.LCOLDE1:
	.section	.text.lwip_gethostbyname_r
.LHOTE1:
	.section	.text.unlikely.lwip_freeaddrinfo,"ax",@progbits
.LCOLDB2:
	.section	.text.lwip_freeaddrinfo,"ax",@progbits
.LHOTB2:
	.globl	lwip_freeaddrinfo
	.type	lwip_freeaddrinfo, @function
lwip_freeaddrinfo:
.LFB19:
	.loc 1 237 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
.LVL21:
.L20:
	.loc 1 240 0
	testl	%eax, %eax
	je	.L23
	.loc 1 241 0
	movl	28(%eax), %ebx
.LVL22:
	.loc 1 242 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	$11
	call	memp_free
.LVL23:
	addl	$16, %esp
	.loc 1 243 0
	movl	%ebx, %eax
	jmp	.L20
.LVL24:
.L23:
	.loc 1 245 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	lwip_freeaddrinfo, .-lwip_freeaddrinfo
	.section	.text.unlikely.lwip_freeaddrinfo
.LCOLDE2:
	.section	.text.lwip_freeaddrinfo
.LHOTE2:
	.section	.text.unlikely.lwip_getaddrinfo,"ax",@progbits
.LCOLDB3:
	.section	.text.lwip_getaddrinfo,"ax",@progbits
.LHOTB3:
	.globl	lwip_getaddrinfo
	.type	lwip_getaddrinfo, @function
lwip_getaddrinfo:
.LFB20:
	.loc 1 271 0
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 271 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	16(%ebp), %esi
	movl	%eax, -44(%ebp)
	movl	20(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL26:
	.loc 1 281 0
	cmpl	$0, -56(%ebp)
	jne	.L25
.LVL27:
.L34:
	.loc 1 282 0
	movl	$202, %eax
	jmp	.L26
.LVL28:
.L25:
	.loc 1 285 0
	cmpl	$0, -44(%ebp)
	.loc 1 284 0
	movl	-56(%ebp), %eax
	movl	$0, (%eax)
	.loc 1 285 0
	jne	.L27
	testl	%ecx, %ecx
	jne	.L27
.LVL29:
.L32:
	.loc 1 286 0
	movl	$200, %eax
	jmp	.L26
.LVL30:
.L27:
	.loc 1 289 0
	testl	%esi, %esi
	je	.L28
.LVL31:
	.loc 1 291 0
	testl	$-3, 4(%esi)
	.loc 1 299 0
	movl	$204, %eax
	.loc 1 291 0
	jne	.L26
.LVL32:
.L28:
	.loc 1 305 0
	testl	%ecx, %ecx
	je	.L43
	.loc 1 308 0
	subl	$12, %esp
	pushl	%ecx
	call	atoi
.LVL33:
	.loc 1 309 0
	leal	-1(%eax), %ecx
	addl	$16, %esp
	.loc 1 308 0
	movl	%eax, -52(%ebp)
.LVL34:
	.loc 1 310 0
	movl	$201, %eax
.LVL35:
	.loc 1 309 0
	cmpl	$65534, %ecx
	ja	.L26
	jmp	.L29
.LVL36:
.L43:
	.loc 1 276 0
	movl	$0, -52(%ebp)
.LVL37:
.L29:
	.loc 1 314 0
	cmpl	$0, -44(%ebp)
	je	.L30
	.loc 1 316 0
	testl	%esi, %esi
	leal	-32(%ebp), %eax
	je	.L31
	.loc 1 316 0 discriminator 1
	testb	$4, (%esi)
	je	.L31
	.loc 1 318 0
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	-44(%ebp)
	call	ip4addr_aton
.LVL38:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L32
	jmp	.L33
.L31:
	.loc 1 337 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	-44(%ebp)
	call	netconn_gethostbyname
.LVL39:
	.loc 1 338 0
	addl	$16, %esp
	testb	%al, %al
	jne	.L34
	jmp	.L33
.LVL40:
.L30:
	.loc 1 344 0
	testl	%esi, %esi
	je	.L35
	.loc 1 344 0 discriminator 1
	testb	$1, (%esi)
	je	.L35
	.loc 1 345 0
	movl	$0, -32(%ebp)
	jmp	.L36
.L35:
	.loc 1 347 0
	movl	$16777343, -32(%ebp)
	jmp	.L36
.L33:
.LVL41:
	.loc 1 353 0
	movl	-44(%ebp), %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
.LVL42:
	notl	%ecx
	leal	-1(%ecx), %eax
	.loc 1 354 0
	cmpl	$256, %eax
	.loc 1 353 0
	movl	%eax, -48(%ebp)
.LVL43:
	.loc 1 354 0
	ja	.L34
	.loc 1 359 0
	addl	$48, %ecx
.LVL44:
.L39:
	.loc 1 364 0
	subl	$12, %esp
	movl	%ecx, -60(%ebp)
.LVL45:
	pushl	$11
	call	memp_malloc
.LVL46:
	movl	%eax, %ebx
.LVL47:
	.loc 1 365 0
	addl	$16, %esp
	.loc 1 366 0
	movl	$203, %eax
.LVL48:
	.loc 1 365 0
	testl	%ebx, %ebx
	jne	.L80
.LVL49:
.L26:
	.loc 1 411 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L41
	call	__stack_chk_fail
.LVL50:
.L36:
	.loc 1 278 0
	movl	$0, -48(%ebp)
	.loc 1 351 0
	movl	$48, %ecx
	jmp	.L39
.LVL51:
.L80:
	.loc 1 368 0
	movl	-60(%ebp), %ecx
	xorl	%eax, %eax
	movl	%ebx, %edi
.LBB2:
	.loc 1 388 0
	subl	$12, %esp
.LBE2:
	.loc 1 368 0
	rep stosb
	.loc 1 370 0
	leal	32(%ebx), %eax
.LBB3:
	.loc 1 386 0
	movb	$2, 33(%ebx)
	.loc 1 387 0
	movb	$16, 32(%ebx)
.LBE3:
	.loc 1 370 0
	movl	%eax, -60(%ebp)
.LVL52:
.LBB4:
	.loc 1 385 0
	movl	-32(%ebp), %eax
.LVL53:
	movl	%eax, 36(%ebx)
	.loc 1 388 0
	pushl	-52(%ebp)
	call	lwip_htons
.LVL54:
.LBE4:
	.loc 1 394 0
	addl	$16, %esp
	testl	%esi, %esi
.LBB5:
	.loc 1 388 0
	movw	%ax, 34(%ebx)
	.loc 1 389 0
	movl	$2, 4(%ebx)
.LBE5:
	.loc 1 394 0
	je	.L37
	.loc 1 396 0
	movl	8(%esi), %eax
	movl	%eax, 8(%ebx)
	.loc 1 397 0
	movl	12(%esi), %eax
	movl	%eax, 12(%ebx)
.L37:
	.loc 1 399 0
	cmpl	$0, -44(%ebp)
	je	.L38
	.loc 1 401 0
	leal	48(%ebx), %eax
	.loc 1 402 0
	movl	-44(%ebp), %esi
	movl	-48(%ebp), %ecx
	.loc 1 401 0
	movl	%eax, 24(%ebx)
	.loc 1 402 0
	movl	%eax, %edi
	.loc 1 403 0
	movl	-48(%ebp), %eax
	.loc 1 402 0
	rep movsb
	.loc 1 403 0
	movb	$0, 48(%ebx,%eax)
.L38:
	.loc 1 406 0
	leal	32(%ebx), %eax
	.loc 1 405 0
	movl	$16, 16(%ebx)
	.loc 1 406 0
	movl	%eax, 20(%ebx)
	.loc 1 408 0
	movl	-56(%ebp), %eax
	movl	%ebx, (%eax)
	.loc 1 410 0
	xorl	%eax, %eax
	jmp	.L26
.LVL55:
.L41:
	.loc 1 411 0
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
	.size	lwip_getaddrinfo, .-lwip_getaddrinfo
	.section	.text.unlikely.lwip_getaddrinfo
.LCOLDE3:
	.section	.text.lwip_getaddrinfo
.LHOTE3:
	.section	.bss.s_aliases.4799,"aw",@nobits
	.align 4
	.type	s_aliases.4799, @object
	.size	s_aliases.4799, 4
s_aliases.4799:
	.zero	4
	.section	.bss.s_hostent.4798,"aw",@nobits
	.align 4
	.type	s_hostent.4798, @object
	.size	s_hostent.4798, 20
s_hostent.4798:
	.zero	20
	.section	.bss.s_hostname.4802,"aw",@nobits
	.align 32
	.type	s_hostname.4802, @object
	.size	s_hostname.4802, 257
s_hostname.4802:
	.zero	257
	.section	.bss.s_phostent_addr.4801,"aw",@nobits
	.align 4
	.type	s_phostent_addr.4801, @object
	.size	s_phostent_addr.4801, 8
s_phostent_addr.4801:
	.zero	8
	.section	.bss.s_hostent_addr.4800,"aw",@nobits
	.align 4
	.type	s_hostent_addr.4800, @object
	.size	s_hostent_addr.4800, 4
s_hostent_addr.4800:
	.zero	4
	.globl	h_errno
	.section	.bss.h_errno,"aw",@nobits
	.align 4
	.type	h_errno, @object
	.size	h_errno, 4
h_errno:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.lwip_gethostbyname
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 6 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 7 "./kernel/protocols/net/include/lwip/arch.h"
	.file 8 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 9 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 10 "./kernel/protocols/net/include/lwip/inet.h"
	.file 11 "./kernel/protocols/net/include/lwip/err.h"
	.file 12 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 13 "./kernel/protocols/net/include/lwip/netdb.h"
	.file 14 "./kernel/protocols/net/include/lwip/memp.h"
	.file 15 "./include/aos/log.h"
	.file 16 "./kernel/protocols/net/include/lwip/api.h"
	.file 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 18 "./kernel/protocols/net/include/lwip/def.h"
	.file 19 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x814
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF132
	.byte	0xc
	.long	.LASF133
	.long	.LASF134
	.long	.Ldebug_ranges0+0x28
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
	.byte	0x3
	.byte	0xca
	.long	0x37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.long	0xab
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.long	0xb8
	.uleb128 0x6
	.long	0xab
	.uleb128 0x7
	.long	0xab
	.long	0xcd
	.uleb128 0x8
	.long	0x9e
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x48
	.long	0x93
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF17
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x49
	.long	0x7a
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x4e
	.long	0x61
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0x31
	.long	0x53
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0x32
	.long	0x4c
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x33
	.long	0x6c
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x34
	.long	0x5a
	.uleb128 0x3
	.long	.LASF25
	.byte	0x6
	.byte	0x35
	.long	0x85
	.uleb128 0x3
	.long	.LASF26
	.byte	0x7
	.byte	0x46
	.long	0xcd
	.uleb128 0x5
	.byte	0x4
	.long	0xa5
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF27
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.long	0x164
	.uleb128 0xa
	.long	.LASF32
	.byte	0x8
	.byte	0x36
	.long	0x128
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF28
	.byte	0x8
	.byte	0x49
	.long	0x14b
	.uleb128 0x3
	.long	.LASF29
	.byte	0x9
	.byte	0xe1
	.long	0x164
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.long	0x193
	.uleb128 0xa
	.long	.LASF33
	.byte	0xa
	.byte	0x3b
	.long	0xe6
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0xb
	.byte	0x39
	.long	0x107
	.uleb128 0xb
	.byte	0x4
	.long	0x25
	.byte	0xb
	.byte	0x3d
	.long	0x211
	.uleb128 0xc
	.long	.LASF35
	.byte	0
	.uleb128 0xd
	.long	.LASF36
	.sleb128 -1
	.uleb128 0xd
	.long	.LASF37
	.sleb128 -2
	.uleb128 0xd
	.long	.LASF38
	.sleb128 -3
	.uleb128 0xd
	.long	.LASF39
	.sleb128 -4
	.uleb128 0xd
	.long	.LASF40
	.sleb128 -5
	.uleb128 0xd
	.long	.LASF41
	.sleb128 -6
	.uleb128 0xd
	.long	.LASF42
	.sleb128 -7
	.uleb128 0xd
	.long	.LASF43
	.sleb128 -8
	.uleb128 0xd
	.long	.LASF44
	.sleb128 -9
	.uleb128 0xd
	.long	.LASF45
	.sleb128 -10
	.uleb128 0xd
	.long	.LASF46
	.sleb128 -11
	.uleb128 0xd
	.long	.LASF47
	.sleb128 -12
	.uleb128 0xd
	.long	.LASF48
	.sleb128 -13
	.uleb128 0xd
	.long	.LASF49
	.sleb128 -14
	.uleb128 0xd
	.long	.LASF50
	.sleb128 -15
	.uleb128 0xd
	.long	.LASF51
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.long	.LASF52
	.byte	0xc
	.byte	0x40
	.long	0xfc
	.uleb128 0x9
	.long	.LASF53
	.byte	0x10
	.byte	0xc
	.byte	0x4a
	.long	0x265
	.uleb128 0xa
	.long	.LASF54
	.byte	0xc
	.byte	0x4b
	.long	0xfc
	.byte	0
	.uleb128 0xa
	.long	.LASF55
	.byte	0xc
	.byte	0x4c
	.long	0x211
	.byte	0x1
	.uleb128 0xa
	.long	.LASF56
	.byte	0xc
	.byte	0x4d
	.long	0xf1
	.byte	0x2
	.uleb128 0xa
	.long	.LASF57
	.byte	0xc
	.byte	0x4e
	.long	0x17a
	.byte	0x4
	.uleb128 0xa
	.long	.LASF58
	.byte	0xc
	.byte	0x50
	.long	0xbd
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF59
	.byte	0x10
	.byte	0xc
	.byte	0x5f
	.long	0x296
	.uleb128 0xa
	.long	.LASF60
	.byte	0xc
	.byte	0x60
	.long	0xfc
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0xc
	.byte	0x61
	.long	0x211
	.byte	0x1
	.uleb128 0xa
	.long	.LASF62
	.byte	0xc
	.byte	0x62
	.long	0x296
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	0xab
	.long	0x2a6
	.uleb128 0x8
	.long	0x9e
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.long	.LASF63
	.byte	0x10
	.byte	0xc
	.byte	0x65
	.long	0x2e3
	.uleb128 0xa
	.long	.LASF64
	.byte	0xc
	.byte	0x66
	.long	0xfc
	.byte	0
	.uleb128 0xa
	.long	.LASF65
	.byte	0xc
	.byte	0x67
	.long	0x211
	.byte	0x1
	.uleb128 0xa
	.long	.LASF66
	.byte	0xc
	.byte	0x68
	.long	0x2e3
	.byte	0x2
	.uleb128 0xa
	.long	.LASF67
	.byte	0xc
	.byte	0x69
	.long	0x2f3
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.long	0xab
	.long	0x2f3
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	0x128
	.long	0x303
	.uleb128 0x8
	.long	0x9e
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF68
	.byte	0xc
	.byte	0x72
	.long	0x128
	.uleb128 0x9
	.long	.LASF69
	.byte	0x14
	.byte	0xd
	.byte	0x5d
	.long	0x357
	.uleb128 0xa
	.long	.LASF70
	.byte	0xd
	.byte	0x5e
	.long	0xa5
	.byte	0
	.uleb128 0xa
	.long	.LASF71
	.byte	0xd
	.byte	0x5f
	.long	0x13e
	.byte	0x4
	.uleb128 0xa
	.long	.LASF72
	.byte	0xd
	.byte	0x61
	.long	0x25
	.byte	0x8
	.uleb128 0xa
	.long	.LASF73
	.byte	0xd
	.byte	0x62
	.long	0x25
	.byte	0xc
	.uleb128 0xa
	.long	.LASF74
	.byte	0xd
	.byte	0x63
	.long	0x13e
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.byte	0x67
	.long	0x3c4
	.uleb128 0xa
	.long	.LASF76
	.byte	0xd
	.byte	0x68
	.long	0x25
	.byte	0
	.uleb128 0xa
	.long	.LASF77
	.byte	0xd
	.byte	0x69
	.long	0x25
	.byte	0x4
	.uleb128 0xa
	.long	.LASF78
	.byte	0xd
	.byte	0x6a
	.long	0x25
	.byte	0x8
	.uleb128 0xa
	.long	.LASF79
	.byte	0xd
	.byte	0x6b
	.long	0x25
	.byte	0xc
	.uleb128 0xa
	.long	.LASF80
	.byte	0xd
	.byte	0x6c
	.long	0x303
	.byte	0x10
	.uleb128 0xa
	.long	.LASF81
	.byte	0xd
	.byte	0x6d
	.long	0x3c4
	.byte	0x14
	.uleb128 0xa
	.long	.LASF82
	.byte	0xd
	.byte	0x6e
	.long	0xa5
	.byte	0x18
	.uleb128 0xa
	.long	.LASF83
	.byte	0xd
	.byte	0x6f
	.long	0x3ca
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x265
	.uleb128 0x5
	.byte	0x4
	.long	0x357
	.uleb128 0xb
	.byte	0x4
	.long	0x37
	.byte	0xe
	.byte	0x32
	.long	0x437
	.uleb128 0xc
	.long	.LASF84
	.byte	0
	.uleb128 0xc
	.long	.LASF85
	.byte	0x1
	.uleb128 0xc
	.long	.LASF86
	.byte	0x2
	.uleb128 0xc
	.long	.LASF87
	.byte	0x3
	.uleb128 0xc
	.long	.LASF88
	.byte	0x4
	.uleb128 0xc
	.long	.LASF89
	.byte	0x5
	.uleb128 0xc
	.long	.LASF90
	.byte	0x6
	.uleb128 0xc
	.long	.LASF91
	.byte	0x7
	.uleb128 0xc
	.long	.LASF92
	.byte	0x8
	.uleb128 0xc
	.long	.LASF93
	.byte	0x9
	.uleb128 0xc
	.long	.LASF94
	.byte	0xa
	.uleb128 0xc
	.long	.LASF95
	.byte	0xb
	.uleb128 0xc
	.long	.LASF96
	.byte	0xc
	.uleb128 0xc
	.long	.LASF97
	.byte	0xd
	.uleb128 0xc
	.long	.LASF98
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.long	.LASF99
	.byte	0x10
	.byte	0x1
	.byte	0x35
	.long	0x468
	.uleb128 0xa
	.long	.LASF100
	.byte	0x1
	.byte	0x36
	.long	0x468
	.byte	0
	.uleb128 0xa
	.long	.LASF32
	.byte	0x1
	.byte	0x37
	.long	0x16f
	.byte	0x8
	.uleb128 0xa
	.long	.LASF101
	.byte	0x1
	.byte	0x38
	.long	0xa5
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	0x478
	.long	0x478
	.uleb128 0x8
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x16f
	.uleb128 0xe
	.long	.LASF107
	.byte	0x1
	.byte	0x57
	.long	0x533
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x533
	.uleb128 0xf
	.long	.LASF109
	.byte	0x1
	.byte	0x57
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.string	"err"
	.byte	0x1
	.byte	0x59
	.long	0x193
	.long	.LLST0
	.uleb128 0x11
	.long	.LASF32
	.byte	0x1
	.byte	0x5a
	.long	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.long	.LASF102
	.byte	0x1
	.byte	0x5d
	.long	0x30e
	.uleb128 0x5
	.byte	0x3
	.long	s_hostent.4798
	.uleb128 0x11
	.long	.LASF103
	.byte	0x1
	.byte	0x5e
	.long	0xa5
	.uleb128 0x5
	.byte	0x3
	.long	s_aliases.4799
	.uleb128 0x11
	.long	.LASF104
	.byte	0x1
	.byte	0x5f
	.long	0x16f
	.uleb128 0x5
	.byte	0x3
	.long	s_hostent_addr.4800
	.uleb128 0x11
	.long	.LASF105
	.byte	0x1
	.byte	0x60
	.long	0x468
	.uleb128 0x5
	.byte	0x3
	.long	s_phostent_addr.4801
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1
	.byte	0x61
	.long	0x539
	.uleb128 0x5
	.byte	0x3
	.long	s_hostname.4802
	.uleb128 0x12
	.long	.LVL1
	.long	0x7c0
	.uleb128 0x12
	.long	.LVL5
	.long	0x7cc
	.uleb128 0x12
	.long	.LVL6
	.long	0x7d7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x30e
	.uleb128 0x7
	.long	0xab
	.long	0x54a
	.uleb128 0x13
	.long	0x9e
	.value	0x100
	.byte	0
	.uleb128 0xe
	.long	.LASF108
	.byte	0x1
	.byte	0xa2
	.long	0x25
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x614
	.uleb128 0x14
	.long	.LASF109
	.byte	0x1
	.byte	0xa2
	.long	0xb2
	.long	.LLST1
	.uleb128 0x15
	.string	"ret"
	.byte	0x1
	.byte	0xa2
	.long	0x533
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x15
	.string	"buf"
	.byte	0x1
	.byte	0xa2
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.long	.LASF110
	.byte	0x1
	.byte	0xa3
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xf
	.long	.LASF111
	.byte	0x1
	.byte	0xa3
	.long	0x614
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.long	.LASF112
	.byte	0x1
	.byte	0xa3
	.long	0x61a
	.long	.LLST2
	.uleb128 0x10
	.string	"err"
	.byte	0x1
	.byte	0xa5
	.long	0x193
	.long	.LLST3
	.uleb128 0x10
	.string	"h"
	.byte	0x1
	.byte	0xa6
	.long	0x620
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF113
	.byte	0x1
	.byte	0xa7
	.long	0xa5
	.long	.LLST5
	.uleb128 0x16
	.long	.LASF114
	.byte	0x1
	.byte	0xa8
	.long	0x2c
	.long	.LLST6
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1
	.byte	0xa9
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x12
	.long	.LVL13
	.long	0x7c0
	.uleb128 0x12
	.long	.LVL19
	.long	0x7d7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x533
	.uleb128 0x5
	.byte	0x4
	.long	0x25
	.uleb128 0x5
	.byte	0x4
	.long	0x437
	.uleb128 0x17
	.long	.LASF135
	.byte	0x1
	.byte	0xec
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x662
	.uleb128 0x18
	.string	"ai"
	.byte	0x1
	.byte	0xec
	.long	0x3ca
	.long	.LLST7
	.uleb128 0x16
	.long	.LASF116
	.byte	0x1
	.byte	0xee
	.long	0x3ca
	.long	.LLST8
	.uleb128 0x12
	.long	.LVL23
	.long	0x7e0
	.byte	0
	.uleb128 0x19
	.long	.LASF117
	.byte	0x1
	.value	0x10d
	.long	0x25
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x787
	.uleb128 0x1a
	.long	.LASF118
	.byte	0x1
	.value	0x10d
	.long	0xb2
	.long	.LLST9
	.uleb128 0x1b
	.long	.LASF119
	.byte	0x1
	.value	0x10d
	.long	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1b
	.long	.LASF120
	.byte	0x1
	.value	0x10e
	.long	0x787
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.string	"res"
	.byte	0x1
	.value	0x10e
	.long	0x792
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1d
	.string	"err"
	.byte	0x1
	.value	0x110
	.long	0x193
	.long	.LLST10
	.uleb128 0x1e
	.long	.LASF32
	.byte	0x1
	.value	0x111
	.long	0x16f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"ai"
	.byte	0x1
	.value	0x112
	.long	0x3ca
	.long	.LLST11
	.uleb128 0x1d
	.string	"sa"
	.byte	0x1
	.value	0x113
	.long	0x798
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF121
	.byte	0x1
	.value	0x114
	.long	0x25
	.long	.LLST13
	.uleb128 0x1f
	.long	.LASF122
	.byte	0x1
	.value	0x115
	.long	0x2c
	.long	.LLST14
	.uleb128 0x1f
	.long	.LASF114
	.byte	0x1
	.value	0x116
	.long	0x2c
	.long	.LLST15
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.value	0x117
	.long	0x25
	.long	.LLST16
	.uleb128 0x20
	.long	.Ldebug_ranges0+0
	.long	0x759
	.uleb128 0x1d
	.string	"sa4"
	.byte	0x1
	.value	0x17f
	.long	0x79e
	.long	.LLST17
	.uleb128 0x12
	.long	.LVL54
	.long	0x7eb
	.byte	0
	.uleb128 0x12
	.long	.LVL33
	.long	0x7f6
	.uleb128 0x12
	.long	.LVL38
	.long	0x801
	.uleb128 0x12
	.long	.LVL39
	.long	0x7c0
	.uleb128 0x12
	.long	.LVL46
	.long	0x80c
	.uleb128 0x12
	.long	.LVL50
	.long	0x7d7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x78d
	.uleb128 0x6
	.long	0x357
	.uleb128 0x5
	.byte	0x4
	.long	0x3ca
	.uleb128 0x5
	.byte	0x4
	.long	0x2a6
	.uleb128 0x5
	.byte	0x4
	.long	0x21c
	.uleb128 0x21
	.long	.LASF123
	.byte	0xf
	.byte	0x17
	.long	0x37
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.byte	0x3d
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	h_errno
	.uleb128 0x23
	.long	.LASF125
	.long	.LASF125
	.byte	0x10
	.value	0x151
	.uleb128 0x24
	.long	.LASF126
	.long	.LASF126
	.byte	0x11
	.byte	0x28
	.uleb128 0x25
	.long	.LASF136
	.long	.LASF136
	.uleb128 0x24
	.long	.LASF127
	.long	.LASF127
	.byte	0xe
	.byte	0x93
	.uleb128 0x24
	.long	.LASF128
	.long	.LASF128
	.byte	0x12
	.byte	0x56
	.uleb128 0x24
	.long	.LASF129
	.long	.LASF129
	.byte	0x13
	.byte	0x51
	.uleb128 0x24
	.long	.LASF130
	.long	.LASF130
	.byte	0x8
	.byte	0xf8
	.uleb128 0x24
	.long	.LASF131
	.long	.LASF131
	.byte	0xe
	.byte	0x91
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL7
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL7
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 20
	.long	.LVL8
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	.LVL16
	.long	.LFE18
	.value	0x10
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0x91
	.sleb128 -40
	.byte	0x91
	.sleb128 20
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL15
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 -64
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL13-1
	.value	0x1
	.byte	0x51
	.long	.LVL13-1
	.long	.LVL14
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL15
	.long	.LVL18
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL21
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LFE19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL22
	.long	.LVL24
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST9:
	.long	.LVL25
	.long	.LVL27
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL28
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL50
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL47
	.long	.LVL48
	.value	0x1
	.byte	0x50
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x53
	.long	.LVL51
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST12:
	.long	.LVL26
	.long	.LVL49
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL50
	.long	.LVL52
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL55
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST13:
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL36
	.long	.LVL37
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL37
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	.LVL50
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST14:
	.long	.LVL41
	.long	.LVL44
	.value	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x51
	.long	.LVL46-1
	.long	.LVL49
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL50
	.long	.LVL51
	.value	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST15:
	.long	.LVL26
	.long	.LVL27
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL28
	.long	.LVL43
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL45
	.long	.LVL49
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	.LVL50
	.long	.LVL51
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL51
	.long	.LVL55
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST16:
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x76
	.sleb128 4
	.long	0
	.long	0
.LLST17:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x50
	.long	.LVL53
	.long	.LVL55
	.value	0x3
	.byte	0x91
	.sleb128 -68
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
	.long	.LBB3
	.long	.LBE3
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
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF62:
	.string	"sa_data"
.LASF50:
	.string	"ERR_CLSD"
.LASF43:
	.string	"ERR_USE"
.LASF59:
	.string	"sockaddr"
.LASF51:
	.string	"ERR_ARG"
.LASF0:
	.string	"unsigned int"
.LASF116:
	.string	"next"
.LASF34:
	.string	"err_t"
.LASF64:
	.string	"s2_len"
.LASF23:
	.string	"u16_t"
.LASF124:
	.string	"h_errno"
.LASF128:
	.string	"lwip_htons"
.LASF97:
	.string	"MEMP_PBUF_POOL"
.LASF66:
	.string	"s2_data1"
.LASF67:
	.string	"s2_data2"
.LASF49:
	.string	"ERR_RST"
.LASF130:
	.string	"ip4addr_aton"
.LASF122:
	.string	"total_size"
.LASF133:
	.string	"src/netdb.c"
.LASF90:
	.string	"MEMP_NETCONN"
.LASF19:
	.string	"in_addr_t"
.LASF93:
	.string	"MEMP_IGMP_GROUP"
.LASF91:
	.string	"MEMP_TCPIP_MSG_API"
.LASF17:
	.string	"float"
.LASF54:
	.string	"sin_len"
.LASF125:
	.string	"netconn_gethostbyname"
.LASF111:
	.string	"result"
.LASF123:
	.string	"aos_log_level"
.LASF12:
	.string	"long long unsigned int"
.LASF126:
	.string	"strncpy"
.LASF115:
	.string	"lh_errno"
.LASF55:
	.string	"sin_family"
.LASF7:
	.string	"__uint16_t"
.LASF20:
	.string	"in_port_t"
.LASF41:
	.string	"ERR_VAL"
.LASF134:
	.string	"/home/stone/Documents/pca"
.LASF92:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF127:
	.string	"memp_free"
.LASF58:
	.string	"sin_zero"
.LASF121:
	.string	"port_nr"
.LASF33:
	.string	"s_addr"
.LASF6:
	.string	"size_t"
.LASF52:
	.string	"sa_family_t"
.LASF81:
	.string	"ai_addr"
.LASF70:
	.string	"h_name"
.LASF27:
	.string	"_Bool"
.LASF112:
	.string	"h_errnop"
.LASF98:
	.string	"MEMP_MAX"
.LASF22:
	.string	"s8_t"
.LASF72:
	.string	"h_addrtype"
.LASF73:
	.string	"h_length"
.LASF42:
	.string	"ERR_WOULDBLOCK"
.LASF38:
	.string	"ERR_TIMEOUT"
.LASF96:
	.string	"MEMP_PBUF"
.LASF63:
	.string	"sockaddr_storage"
.LASF15:
	.string	"char"
.LASF114:
	.string	"namelen"
.LASF105:
	.string	"s_phostent_addr"
.LASF110:
	.string	"buflen"
.LASF65:
	.string	"ss_family"
.LASF113:
	.string	"hostname"
.LASF131:
	.string	"memp_malloc"
.LASF89:
	.string	"MEMP_NETBUF"
.LASF1:
	.string	"long long int"
.LASF53:
	.string	"sockaddr_in"
.LASF47:
	.string	"ERR_IF"
.LASF100:
	.string	"addr_list"
.LASF56:
	.string	"sin_port"
.LASF86:
	.string	"MEMP_TCP_PCB"
.LASF21:
	.string	"u8_t"
.LASF104:
	.string	"s_hostent_addr"
.LASF83:
	.string	"ai_next"
.LASF71:
	.string	"h_aliases"
.LASF57:
	.string	"sin_addr"
.LASF82:
	.string	"ai_canonname"
.LASF44:
	.string	"ERR_ALREADY"
.LASF2:
	.string	"long double"
.LASF119:
	.string	"servname"
.LASF120:
	.string	"hints"
.LASF77:
	.string	"ai_family"
.LASF13:
	.string	"__uintptr_t"
.LASF37:
	.string	"ERR_BUF"
.LASF101:
	.string	"aliases"
.LASF25:
	.string	"u32_t"
.LASF108:
	.string	"lwip_gethostbyname_r"
.LASF5:
	.string	"short int"
.LASF28:
	.string	"ip4_addr_t"
.LASF9:
	.string	"long int"
.LASF99:
	.string	"gethostbyname_r_helper"
.LASF94:
	.string	"MEMP_SYS_TIMEOUT"
.LASF136:
	.string	"__stack_chk_fail"
.LASF60:
	.string	"sa_len"
.LASF107:
	.string	"lwip_gethostbyname"
.LASF85:
	.string	"MEMP_UDP_PCB"
.LASF40:
	.string	"ERR_INPROGRESS"
.LASF30:
	.string	"ip4_addr"
.LASF26:
	.string	"mem_ptr_t"
.LASF45:
	.string	"ERR_ISCONN"
.LASF109:
	.string	"name"
.LASF117:
	.string	"lwip_getaddrinfo"
.LASF106:
	.string	"s_hostname"
.LASF16:
	.string	"uintptr_t"
.LASF84:
	.string	"MEMP_RAW_PCB"
.LASF14:
	.string	"sizetype"
.LASF11:
	.string	"long unsigned int"
.LASF74:
	.string	"h_addr_list"
.LASF135:
	.string	"lwip_freeaddrinfo"
.LASF24:
	.string	"s16_t"
.LASF118:
	.string	"nodename"
.LASF31:
	.string	"in_addr"
.LASF79:
	.string	"ai_protocol"
.LASF78:
	.string	"ai_socktype"
.LASF4:
	.string	"unsigned char"
.LASF10:
	.string	"__uint32_t"
.LASF132:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF88:
	.string	"MEMP_TCP_SEG"
.LASF32:
	.string	"addr"
.LASF48:
	.string	"ERR_ABRT"
.LASF76:
	.string	"ai_flags"
.LASF35:
	.string	"ERR_OK"
.LASF3:
	.string	"signed char"
.LASF61:
	.string	"sa_family"
.LASF8:
	.string	"short unsigned int"
.LASF129:
	.string	"atoi"
.LASF103:
	.string	"s_aliases"
.LASF46:
	.string	"ERR_CONN"
.LASF102:
	.string	"s_hostent"
.LASF69:
	.string	"hostent"
.LASF39:
	.string	"ERR_RTE"
.LASF18:
	.string	"double"
.LASF29:
	.string	"ip_addr_t"
.LASF95:
	.string	"MEMP_NETDB"
.LASF80:
	.string	"ai_addrlen"
.LASF75:
	.string	"addrinfo"
.LASF68:
	.string	"socklen_t"
.LASF36:
	.string	"ERR_MEM"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
