	.file	"ota_socket.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"ota_socket_send: invalid socket fd\n\r\n"
.LC1:
	.string	"[%06d]<E> "
.LC2:
	.string	"\r\n"
.LC3:
	.string	"ota_socket_send: buf is NULL\n\r\n"
	.section	.text.unlikely.ota_socket_send,"ax",@progbits
.LCOLDB4:
	.section	.text.ota_socket_send,"ax",@progbits
.LHOTB4:
	.section	.text.unlikely.ota_socket_send
.Ltext_cold0:
	.section	.text.ota_socket_send
	.globl	ota_socket_send
	.type	ota_socket_send, @function
ota_socket_send:
.LFB18:
	.file 1 "framework/fota/download/http/socket/stand/ota_socket.c"
	.loc 1 65 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 65 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	.loc 1 66 0
	testl	%eax, %eax
	jns	.L2
	.loc 1 67 0
	testb	$2, aos_log_level
	je	.L3
	.loc 1 67 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL1:
	pushl	%ecx
	pushl	$.LC0
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL2:
	movl	$.LC0, (%esp)
	jmp	.L10
.L2:
	.loc 1 70 0 is_stmt 1
	testl	%edx, %edx
	jne	.L4
	.loc 1 71 0
	testb	$2, aos_log_level
	je	.L3
	.loc 1 71 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL3:
	pushl	%edx
	pushl	$.LC3
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL4:
	movl	$.LC3, (%esp)
.L10:
	call	csp_printf
.LVL5:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL6:
	addl	$16, %esp
	jmp	.L3
.L4:
	.loc 1 75 0 is_stmt 1
	movl	%ecx, 16(%ebp)
.LVL7:
	movl	%edx, 12(%ebp)
.LVL8:
	movl	%eax, 8(%ebp)
.LVL9:
	.loc 1 76 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 75 0
	jmp	lwip_write
.LVL10:
.L3:
	.cfi_restore_state
	.loc 1 76 0
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	ota_socket_send, .-ota_socket_send
	.section	.text.unlikely.ota_socket_send
.LCOLDE4:
	.section	.text.ota_socket_send
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"ota_socket_recv: invalid socket fd\n\r\n"
.LC6:
	.string	"ota_socket_recv: buf is NULL\n\r\n"
	.section	.text.unlikely.ota_socket_recv,"ax",@progbits
.LCOLDB7:
	.section	.text.ota_socket_recv,"ax",@progbits
.LHOTB7:
	.globl	ota_socket_recv
	.type	ota_socket_recv, @function
ota_socket_recv:
.LFB19:
	.loc 1 79 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 79 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	.loc 1 80 0
	testl	%eax, %eax
	jns	.L13
	.loc 1 81 0
	testb	$2, aos_log_level
	je	.L14
	.loc 1 81 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL12:
	pushl	%ecx
	pushl	$.LC5
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL13:
	movl	$.LC5, (%esp)
	jmp	.L21
.L13:
	.loc 1 84 0 is_stmt 1
	testl	%edx, %edx
	jne	.L15
	.loc 1 85 0
	testb	$2, aos_log_level
	je	.L14
	.loc 1 85 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL14:
	pushl	%edx
	pushl	$.LC6
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL15:
	movl	$.LC6, (%esp)
.L21:
	call	csp_printf
.LVL16:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL17:
	addl	$16, %esp
	jmp	.L14
.L15:
	.loc 1 89 0 is_stmt 1
	movl	%ecx, 16(%ebp)
.LVL18:
	movl	%edx, 12(%ebp)
.LVL19:
	movl	%eax, 8(%ebp)
.LVL20:
	.loc 1 90 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 89 0
	jmp	lwip_read
.LVL21:
.L14:
	.cfi_restore_state
	.loc 1 90 0
	orl	$-1, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	ota_socket_recv, .-ota_socket_recv
	.section	.text.unlikely.ota_socket_recv
.LCOLDE7:
	.section	.text.ota_socket_recv
.LHOTE7:
	.section	.text.unlikely.ota_socket_close,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_socket_close,"ax",@progbits
.LHOTB8:
	.globl	ota_socket_close
	.type	ota_socket_close, @function
ota_socket_close:
.LFB20:
	.loc 1 93 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 95 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 94 0
	jmp	lwip_close
.LVL23:
	.cfi_endproc
.LFE20:
	.size	ota_socket_close, .-ota_socket_close
	.section	.text.unlikely.ota_socket_close
.LCOLDE8:
	.section	.text.ota_socket_close
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"ota_socket_check_conn: invalid socket fd\n\r\n"
	.section	.text.unlikely.ota_socket_check_conn,"ax",@progbits
.LCOLDB10:
	.section	.text.ota_socket_check_conn,"ax",@progbits
.LHOTB10:
	.globl	ota_socket_check_conn
	.type	ota_socket_check_conn, @function
ota_socket_check_conn:
.LFB21:
	.loc 1 98 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 121 0
	xorl	%ebx, %ebx
	.loc 1 98 0
	pushl	%ecx
	.loc 1 99 0
	cmpl	$0, 8(%ebp)
	jns	.L25
	.loc 1 101 0
	orl	$-1, %ebx
	.loc 1 100 0
	testb	$2, aos_log_level
	je	.L25
.LVL25:
.LBB30:
.LBB31:
	call	aos_now_ms
.LVL26:
	pushl	%edx
	pushl	$.LC9
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL27:
	movl	$.LC9, (%esp)
	call	csp_printf
.LVL28:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL29:
	addl	$16, %esp
.L25:
.LBE31:
.LBE30:
	.loc 1 122 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	ota_socket_check_conn, .-ota_socket_check_conn
	.section	.text.unlikely.ota_socket_check_conn
.LCOLDE10:
	.section	.text.ota_socket_check_conn
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"ota_socket_connect parms   error\n \r\n"
.LC12:
	.string	"Gethostname   error,   %s\n \r\n"
.LC13:
	.string	"Socket   Error:%s\007\n \r\n"
.LC14:
	.string	"setsockopt failed\n\r\n"
.LC15:
	.string	"socket connecting %s failed!\n\r\n"
	.section	.text.unlikely.ota_socket_connect,"ax",@progbits
.LCOLDB16:
	.section	.text.ota_socket_connect,"ax",@progbits
.LHOTB16:
	.globl	ota_socket_connect
	.type	ota_socket_connect, @function
ota_socket_connect:
.LFB17:
	.loc 1 14 0
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
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 14 0
	movl	12(%ebp), %eax
	movl	%gs:20, %ecx
	movl	%ecx, -28(%ebp)
	xorl	%ecx, %ecx
	.loc 1 15 0
	testl	%eax, %eax
	je	.L31
	.loc 1 15 0 discriminator 1
	cmpb	$0, (%eax)
	je	.L31
	cmpl	$0, 8(%ebp)
	jg	.L32
.L31:
	.loc 1 16 0
	testb	$2, aos_log_level
	je	.L59
	.loc 1 16 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL31:
	pushl	%edi
	pushl	$.LC11
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL32:
	movl	$.LC11, (%esp)
	jmp	.L61
.L32:
	.loc 1 22 0 is_stmt 1
	subl	$12, %esp
	pushl	%eax
	call	lwip_gethostbyname
.LVL33:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %esi
.LVL34:
	jne	.L36
	.loc 1 23 0
	testb	$2, aos_log_level
	je	.L59
	.loc 1 23 0 discriminator 1
	call	__errno
.LVL35:
	.loc 1 23 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL36:
	movl	%eax, %ebx
	call	aos_now_ms
.LVL37:
	pushl	%ebx
	pushl	$.LC12
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL38:
	.loc 1 23 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL39:
	.loc 1 23 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL40:
	popl	%ebx
	popl	%esi
.LVL41:
	pushl	%eax
	pushl	$.LC12
.L61:
	call	csp_printf
.LVL42:
	.loc 1 23 0 discriminator 1
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL43:
	jmp	.L60
.LVL44:
.L36:
	.loc 1 27 0
	pushl	%ecx
	pushl	$0
	pushl	$1
	pushl	$2
	call	lwip_socket
.LVL45:
	addl	$16, %esp
	cmpl	$-1, %eax
	movl	%eax, %ebx
.LVL46:
	jne	.L38
	.loc 1 28 0
	testb	$2, aos_log_level
	je	.L59
	.loc 1 28 0 discriminator 1
	call	__errno
.LVL47:
	.loc 1 28 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL48:
	movl	%eax, %ebx
.LVL49:
	call	aos_now_ms
.LVL50:
	pushl	%ebx
	pushl	$.LC13
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL51:
	.loc 1 28 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL52:
	.loc 1 28 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL53:
	popl	%edi
	popl	%edx
	pushl	%eax
	pushl	$.LC13
	jmp	.L61
.LVL54:
.L38:
	.loc 1 36 0
	leal	-52(%ebp), %eax
.LVL55:
	subl	$12, %esp
	.loc 1 33 0
	movl	$10, -52(%ebp)
	.loc 1 36 0
	pushl	$8
	.loc 1 34 0
	movl	$0, -48(%ebp)
	.loc 1 36 0
	pushl	%eax
	pushl	$4102
	pushl	$4095
	pushl	%ebx
	call	lwip_setsockopt
.LVL56:
	addl	$32, %esp
	testl	%eax, %eax
	jns	.L39
	.loc 1 38 0
	testb	$2, aos_log_level
	je	.L41
	.loc 1 38 0 is_stmt 0 discriminator 1
	call	aos_now_ms
.LVL57:
.LVL58:
	pushl	%esi
	pushl	$.LC14
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL59:
	movl	$.LC14, (%esp)
	call	csp_printf
.LVL60:
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL61:
	addl	$16, %esp
	jmp	.L41
.LVL62:
.L39:
	.loc 1 42 0 is_stmt 1
	leal	-44(%ebp), %edx
	xorl	%eax, %eax
	movl	$4, %ecx
	.loc 1 44 0
	subl	$12, %esp
	.loc 1 42 0
	movl	%edx, %edi
	movl	%edx, -60(%ebp)
	rep stosl
	.loc 1 44 0
	movzwl	8(%ebp), %eax
	.loc 1 43 0
	movb	$2, -43(%ebp)
	.loc 1 44 0
	pushl	%eax
	call	lwip_htons
.LVL63:
	movw	%ax, -42(%ebp)
	.loc 1 45 0
	movl	16(%esi), %eax
	.loc 1 47 0
	addl	$12, %esp
	movl	-60(%ebp), %edx
	.loc 1 45 0
	movl	(%eax), %eax
	movl	(%eax), %eax
	.loc 1 47 0
	pushl	$16
	pushl	%edx
	pushl	%ebx
	.loc 1 45 0
	movl	%eax, -40(%ebp)
	.loc 1 47 0
	call	lwip_connect
.LVL64:
	addl	$16, %esp
	incl	%eax
	movl	%ebx, %edx
	jne	.L35
.LVL65:
	.loc 1 48 0
	testb	$2, aos_log_level
	je	.L42
	.loc 1 48 0 discriminator 1
	call	__errno
.LVL66:
	.loc 1 48 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL67:
	movl	%eax, %esi
.LVL68:
	call	aos_now_ms
.LVL69:
	pushl	%esi
	pushl	$.LC15
	pushl	%eax
	pushl	$.LC1
	call	csp_printf
.LVL70:
	.loc 1 48 0 discriminator 1
	addl	$32, %esp
	call	__errno
.LVL71:
	.loc 1 48 0 discriminator 1
	subl	$12, %esp
	pushl	(%eax)
	call	strerror
.LVL72:
	popl	%edx
	popl	%ecx
	pushl	%eax
	pushl	$.LC15
	call	csp_printf
.LVL73:
	.loc 1 48 0 discriminator 1
	movl	$.LC2, (%esp)
	call	csp_printf
.LVL74:
	addl	$16, %esp
.L42:
	.loc 1 49 0
	call	__errno
.LVL75:
	.loc 1 49 0
	cmpl	$4, (%eax)
	jne	.L41
	.loc 1 52 0
	subl	$12, %esp
	pushl	%ebx
	call	ota_socket_check_conn
.LVL76:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%ebx, %edx
	jns	.L35
.L41:
	.loc 1 59 0
	subl	$12, %esp
	pushl	%ebx
	call	lwip_close
.LVL77:
.L60:
	.loc 1 60 0
	addl	$16, %esp
.L59:
	orl	$-1, %edx
.L35:
	.loc 1 62 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%edx, %eax
	je	.L44
	call	__stack_chk_fail
.LVL78:
.L44:
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
	.size	ota_socket_connect, .-ota_socket_connect
	.section	.text.unlikely.ota_socket_connect
.LCOLDE16:
	.section	.text.ota_socket_connect
.LHOTE16:
	.text
.Letext0:
	.section	.text.unlikely.ota_socket_send
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h"
	.file 7 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 8 "./kernel/protocols/net/include/lwip/inet.h"
	.file 9 "./kernel/protocols/net/include/lwip/sockets.h"
	.file 10 "./kernel/protocols/net/include/lwip/netdb.h"
	.file 11 "./include/aos/kernel.h"
	.file 12 "./include/aos/internal/log_impl.h"
	.file 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h"
	.file 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 15 "./kernel/protocols/net/include/lwip/def.h"
	.file 16 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x69d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF75
	.byte	0xc
	.long	.LASF76
	.long	.LASF77
	.long	.Ldebug_ranges0+0
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
	.byte	0x2
	.byte	0x2b
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
	.byte	0x2
	.byte	0x41
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
	.byte	0x3
	.byte	0xd8
	.long	0x7a
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0xcc
	.long	0x4c
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x3
	.long	.LASF16
	.byte	0x5
	.byte	0x23
	.long	0x9a
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x28
	.long	0x4c
	.uleb128 0x5
	.long	.LASF33
	.byte	0x8
	.byte	0x5
	.byte	0x34
	.long	0xe7
	.uleb128 0x6
	.long	.LASF18
	.byte	0x5
	.byte	0x35
	.long	0xb7
	.byte	0
	.uleb128 0x6
	.long	.LASF19
	.byte	0x5
	.byte	0x36
	.long	0xac
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x6
	.byte	0x49
	.long	0x53
	.uleb128 0x3
	.long	.LASF21
	.byte	0x6
	.byte	0x4e
	.long	0x3a
	.uleb128 0x7
	.byte	0x4
	.long	0xa5
	.uleb128 0x7
	.byte	0x4
	.long	0x109
	.uleb128 0x8
	.long	0xa5
	.uleb128 0x9
	.long	0xa5
	.long	0x11e
	.uleb128 0xa
	.long	0x93
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0xfd
	.uleb128 0xb
	.long	.LASF78
	.byte	0x4
	.long	0x73
	.byte	0xc
	.byte	0x12
	.long	0x15f
	.uleb128 0xc
	.long	.LASF22
	.sleb128 -1
	.uleb128 0xd
	.long	.LASF23
	.byte	0
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.uleb128 0xd
	.long	.LASF25
	.byte	0x2
	.uleb128 0xd
	.long	.LASF26
	.byte	0x3
	.uleb128 0xd
	.long	.LASF27
	.byte	0x4
	.uleb128 0xd
	.long	.LASF28
	.byte	0x5
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF29
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF30
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.long	.LASF31
	.uleb128 0x3
	.long	.LASF32
	.byte	0x7
	.byte	0x31
	.long	0x2c
	.uleb128 0x5
	.long	.LASF34
	.byte	0x4
	.byte	0x8
	.byte	0x3a
	.long	0x198
	.uleb128 0x6
	.long	.LASF35
	.byte	0x8
	.byte	0x3b
	.long	0xe7
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF36
	.byte	0x9
	.byte	0x40
	.long	0x174
	.uleb128 0x5
	.long	.LASF37
	.byte	0x10
	.byte	0x9
	.byte	0x4a
	.long	0x1ec
	.uleb128 0x6
	.long	.LASF38
	.byte	0x9
	.byte	0x4b
	.long	0x174
	.byte	0
	.uleb128 0x6
	.long	.LASF39
	.byte	0x9
	.byte	0x4c
	.long	0x198
	.byte	0x1
	.uleb128 0x6
	.long	.LASF40
	.byte	0x9
	.byte	0x4d
	.long	0xf2
	.byte	0x2
	.uleb128 0x6
	.long	.LASF41
	.byte	0x9
	.byte	0x4e
	.long	0x17f
	.byte	0x4
	.uleb128 0x6
	.long	.LASF42
	.byte	0x9
	.byte	0x50
	.long	0x10e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	.LASF43
	.byte	0x10
	.byte	0x9
	.byte	0x5f
	.long	0x21d
	.uleb128 0x6
	.long	.LASF44
	.byte	0x9
	.byte	0x60
	.long	0x174
	.byte	0
	.uleb128 0x6
	.long	.LASF45
	.byte	0x9
	.byte	0x61
	.long	0x198
	.byte	0x1
	.uleb128 0x6
	.long	.LASF46
	.byte	0x9
	.byte	0x62
	.long	0x21d
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	0xa5
	.long	0x22d
	.uleb128 0xa
	.long	0x93
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.long	.LASF47
	.byte	0x14
	.byte	0xa
	.byte	0x5d
	.long	0x276
	.uleb128 0x6
	.long	.LASF48
	.byte	0xa
	.byte	0x5e
	.long	0xfd
	.byte	0
	.uleb128 0x6
	.long	.LASF49
	.byte	0xa
	.byte	0x5f
	.long	0x11e
	.byte	0x4
	.uleb128 0x6
	.long	.LASF50
	.byte	0xa
	.byte	0x61
	.long	0x73
	.byte	0x8
	.uleb128 0x6
	.long	.LASF51
	.byte	0xa
	.byte	0x62
	.long	0x73
	.byte	0xc
	.uleb128 0x6
	.long	.LASF52
	.byte	0xa
	.byte	0x63
	.long	0x11e
	.byte	0x10
	.byte	0
	.uleb128 0xe
	.long	.LASF79
	.byte	0xc
	.byte	0xd
	.long	0x7a
	.byte	0x3
	.uleb128 0xf
	.long	.LASF80
	.byte	0x1
	.byte	0x61
	.long	0x73
	.byte	0x1
	.long	0x29e
	.uleb128 0x10
	.long	.LASF81
	.byte	0x1
	.byte	0x61
	.long	0x73
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x1
	.byte	0x40
	.long	0x73
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x324
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x40
	.long	0x73
	.long	.LLST0
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.long	0x103
	.long	.LLST1
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x40
	.long	0x81
	.long	.LLST2
	.uleb128 0x14
	.long	.LVL1
	.long	0x60c
	.uleb128 0x14
	.long	.LVL2
	.long	0x618
	.uleb128 0x14
	.long	.LVL3
	.long	0x60c
	.uleb128 0x14
	.long	.LVL4
	.long	0x618
	.uleb128 0x14
	.long	.LVL5
	.long	0x618
	.uleb128 0x14
	.long	.LVL6
	.long	0x618
	.uleb128 0x15
	.long	.LVL10
	.long	0x623
	.byte	0
	.uleb128 0x11
	.long	.LASF55
	.byte	0x1
	.byte	0x4e
	.long	0x73
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3aa
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x4e
	.long	0x73
	.long	.LLST3
	.uleb128 0x13
	.string	"buf"
	.byte	0x1
	.byte	0x4e
	.long	0xfd
	.long	.LLST4
	.uleb128 0x13
	.string	"len"
	.byte	0x1
	.byte	0x4e
	.long	0x81
	.long	.LLST5
	.uleb128 0x14
	.long	.LVL12
	.long	0x60c
	.uleb128 0x14
	.long	.LVL13
	.long	0x618
	.uleb128 0x14
	.long	.LVL14
	.long	0x60c
	.uleb128 0x14
	.long	.LVL15
	.long	0x618
	.uleb128 0x14
	.long	.LVL16
	.long	0x618
	.uleb128 0x14
	.long	.LVL17
	.long	0x618
	.uleb128 0x15
	.long	.LVL21
	.long	0x62f
	.byte	0
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0x5c
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e0
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0x5c
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.long	.LVL23
	.long	0x63b
	.uleb128 0x19
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x282
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x433
	.uleb128 0x1b
	.long	0x292
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LBB30
	.long	.LBE30-.LBB30
	.uleb128 0x1d
	.long	0x292
	.long	.LLST6
	.uleb128 0x14
	.long	.LVL26
	.long	0x60c
	.uleb128 0x14
	.long	.LVL27
	.long	0x618
	.uleb128 0x14
	.long	.LVL28
	.long	0x618
	.uleb128 0x14
	.long	.LVL29
	.long	0x618
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF56
	.byte	0x1
	.byte	0xd
	.long	0x73
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x5fb
	.uleb128 0x17
	.long	.LASF57
	.byte	0x1
	.byte	0xd
	.long	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x17
	.long	.LASF58
	.byte	0x1
	.byte	0xd
	.long	0xfd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF59
	.byte	0x1
	.byte	0x13
	.long	0x1a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1f
	.long	.LASF60
	.byte	0x1
	.byte	0x14
	.long	0x5fb
	.long	.LLST7
	.uleb128 0x1f
	.long	.LASF61
	.byte	0x1
	.byte	0x15
	.long	0x73
	.long	.LLST8
	.uleb128 0x1e
	.long	.LASF62
	.byte	0x1
	.byte	0x20
	.long	0xc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x20
	.long	.LASF83
	.byte	0x1
	.byte	0x3a
	.long	.L41
	.uleb128 0x14
	.long	.LVL31
	.long	0x60c
	.uleb128 0x14
	.long	.LVL32
	.long	0x618
	.uleb128 0x14
	.long	.LVL33
	.long	0x647
	.uleb128 0x14
	.long	.LVL35
	.long	0x652
	.uleb128 0x14
	.long	.LVL36
	.long	0x65d
	.uleb128 0x14
	.long	.LVL37
	.long	0x60c
	.uleb128 0x14
	.long	.LVL38
	.long	0x618
	.uleb128 0x14
	.long	.LVL39
	.long	0x652
	.uleb128 0x14
	.long	.LVL40
	.long	0x65d
	.uleb128 0x14
	.long	.LVL42
	.long	0x618
	.uleb128 0x14
	.long	.LVL43
	.long	0x618
	.uleb128 0x14
	.long	.LVL45
	.long	0x668
	.uleb128 0x14
	.long	.LVL47
	.long	0x652
	.uleb128 0x14
	.long	.LVL48
	.long	0x65d
	.uleb128 0x14
	.long	.LVL50
	.long	0x60c
	.uleb128 0x14
	.long	.LVL51
	.long	0x618
	.uleb128 0x14
	.long	.LVL52
	.long	0x652
	.uleb128 0x14
	.long	.LVL53
	.long	0x65d
	.uleb128 0x14
	.long	.LVL56
	.long	0x674
	.uleb128 0x14
	.long	.LVL57
	.long	0x60c
	.uleb128 0x14
	.long	.LVL59
	.long	0x618
	.uleb128 0x14
	.long	.LVL60
	.long	0x618
	.uleb128 0x14
	.long	.LVL61
	.long	0x618
	.uleb128 0x14
	.long	.LVL63
	.long	0x680
	.uleb128 0x14
	.long	.LVL64
	.long	0x68b
	.uleb128 0x14
	.long	.LVL66
	.long	0x652
	.uleb128 0x14
	.long	.LVL67
	.long	0x65d
	.uleb128 0x14
	.long	.LVL69
	.long	0x60c
	.uleb128 0x14
	.long	.LVL70
	.long	0x618
	.uleb128 0x14
	.long	.LVL71
	.long	0x652
	.uleb128 0x14
	.long	.LVL72
	.long	0x65d
	.uleb128 0x14
	.long	.LVL73
	.long	0x618
	.uleb128 0x14
	.long	.LVL74
	.long	0x618
	.uleb128 0x14
	.long	.LVL75
	.long	0x652
	.uleb128 0x14
	.long	.LVL76
	.long	0x282
	.uleb128 0x14
	.long	.LVL77
	.long	0x63b
	.uleb128 0x14
	.long	.LVL78
	.long	0x697
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x22d
	.uleb128 0x21
	.long	.LASF84
	.byte	0x10
	.byte	0x17
	.long	0x7a
	.uleb128 0x22
	.long	.LASF63
	.long	.LASF63
	.byte	0xb
	.value	0x20e
	.uleb128 0x23
	.long	.LASF64
	.long	.LASF64
	.byte	0xc
	.byte	0x50
	.uleb128 0x22
	.long	.LASF65
	.long	.LASF65
	.byte	0x9
	.value	0x1fd
	.uleb128 0x22
	.long	.LASF66
	.long	.LASF66
	.byte	0x9
	.value	0x1f5
	.uleb128 0x22
	.long	.LASF67
	.long	.LASF67
	.byte	0x9
	.value	0x1f1
	.uleb128 0x23
	.long	.LASF68
	.long	.LASF68
	.byte	0xa
	.byte	0x7a
	.uleb128 0x23
	.long	.LASF69
	.long	.LASF69
	.byte	0xd
	.byte	0xf
	.uleb128 0x23
	.long	.LASF70
	.long	.LASF70
	.byte	0xe
	.byte	0x24
	.uleb128 0x22
	.long	.LASF71
	.long	.LASF71
	.byte	0x9
	.value	0x1fc
	.uleb128 0x22
	.long	.LASF72
	.long	.LASF72
	.byte	0x9
	.value	0x1f0
	.uleb128 0x23
	.long	.LASF73
	.long	.LASF73
	.byte	0xf
	.byte	0x56
	.uleb128 0x22
	.long	.LASF74
	.long	.LASF74
	.byte	0x9
	.value	0x1f2
	.uleb128 0x24
	.long	.LASF85
	.long	.LASF85
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL10
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL7
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL10
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST3:
	.long	.LVL11
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL21
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL11
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL21
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL11
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL21
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL25
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL41
	.value	0x1
	.byte	0x56
	.long	.LVL44
	.long	.LVL45-1
	.value	0x1
	.byte	0x50
	.long	.LVL45-1
	.long	.LVL58
	.value	0x1
	.byte	0x56
	.long	.LVL62
	.long	.LVL68
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST8:
	.long	.LVL46
	.long	.LVL47-1
	.value	0x1
	.byte	0x50
	.long	.LVL47-1
	.long	.LVL49
	.value	0x1
	.byte	0x53
	.long	.LVL54
	.long	.LVL55
	.value	0x1
	.byte	0x50
	.long	.LVL55
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	.LVL65
	.long	.LVL66-1
	.value	0x1
	.byte	0x52
	.long	.LVL66-1
	.long	.LVL77
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF12:
	.string	"long double"
.LASF78:
	.string	"log_level_bit"
.LASF26:
	.string	"AOS_LL_V_INFO_BIT"
.LASF67:
	.string	"lwip_close"
.LASF44:
	.string	"sa_len"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF13:
	.string	"sizetype"
.LASF27:
	.string	"AOS_LL_V_DEBUG_BIT"
.LASF58:
	.string	"host_addr"
.LASF56:
	.string	"ota_socket_connect"
.LASF76:
	.string	"src/ota_socket.c"
.LASF6:
	.string	"__uint32_t"
.LASF14:
	.string	"__suseconds_t"
.LASF5:
	.string	"__uint16_t"
.LASF55:
	.string	"ota_socket_recv"
.LASF70:
	.string	"strerror"
.LASF17:
	.string	"time_t"
.LASF22:
	.string	"AOS_LL_V_NONE_BIT"
.LASF39:
	.string	"sin_family"
.LASF38:
	.string	"sin_len"
.LASF68:
	.string	"lwip_gethostbyname"
.LASF30:
	.string	"float"
.LASF63:
	.string	"aos_now_ms"
.LASF54:
	.string	"ota_socket_send"
.LASF8:
	.string	"long long int"
.LASF28:
	.string	"AOS_LL_V_MAX_BIT"
.LASF61:
	.string	"sockfd"
.LASF4:
	.string	"long int"
.LASF53:
	.string	"socket"
.LASF71:
	.string	"lwip_socket"
.LASF84:
	.string	"aos_log_level"
.LASF72:
	.string	"lwip_setsockopt"
.LASF41:
	.string	"sin_addr"
.LASF49:
	.string	"h_aliases"
.LASF83:
	.string	"err_out"
.LASF36:
	.string	"sa_family_t"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF42:
	.string	"sin_zero"
.LASF9:
	.string	"long long unsigned int"
.LASF10:
	.string	"unsigned int"
.LASF66:
	.string	"lwip_read"
.LASF74:
	.string	"lwip_connect"
.LASF35:
	.string	"s_addr"
.LASF65:
	.string	"lwip_write"
.LASF73:
	.string	"lwip_htons"
.LASF46:
	.string	"sa_data"
.LASF51:
	.string	"h_length"
.LASF15:
	.string	"char"
.LASF3:
	.string	"short unsigned int"
.LASF82:
	.string	"ota_socket_close"
.LASF79:
	.string	"aos_log_get_level"
.LASF29:
	.string	"_Bool"
.LASF20:
	.string	"in_addr_t"
.LASF75:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF80:
	.string	"ota_socket_check_conn"
.LASF48:
	.string	"h_name"
.LASF62:
	.string	"timeout"
.LASF64:
	.string	"csp_printf"
.LASF57:
	.string	"port"
.LASF50:
	.string	"h_addrtype"
.LASF7:
	.string	"long unsigned int"
.LASF34:
	.string	"in_addr"
.LASF31:
	.string	"double"
.LASF33:
	.string	"timeval"
.LASF40:
	.string	"sin_port"
.LASF19:
	.string	"tv_usec"
.LASF32:
	.string	"u8_t"
.LASF16:
	.string	"suseconds_t"
.LASF45:
	.string	"sa_family"
.LASF21:
	.string	"in_port_t"
.LASF25:
	.string	"AOS_LL_V_WARN_BIT"
.LASF18:
	.string	"tv_sec"
.LASF52:
	.string	"h_addr_list"
.LASF77:
	.string	"/home/stone/Documents/pca"
.LASF24:
	.string	"AOS_LL_V_ERROR_BIT"
.LASF85:
	.string	"__stack_chk_fail"
.LASF60:
	.string	"host"
.LASF47:
	.string	"hostent"
.LASF59:
	.string	"server_addr"
.LASF37:
	.string	"sockaddr_in"
.LASF23:
	.string	"AOS_LL_V_FATAL_BIT"
.LASF43:
	.string	"sockaddr"
.LASF69:
	.string	"__errno"
.LASF81:
	.string	"sock"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
