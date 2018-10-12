	.file	"utils_net.c"
	.text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"sockfd: %d"
.LC1:
	.string	"establish tcp fail, sockfd: %d"
	.section	.text.unlikely.iotx_net_connect,"ax",@progbits
.LCOLDB2:
	.section	.text.iotx_net_connect,"ax",@progbits
.LHOTB2:
	.section	.text.unlikely.iotx_net_connect
.Ltext_cold0:
	.section	.text.iotx_net_connect
	.globl	iotx_net_connect
	.type	iotx_net_connect, @function
iotx_net_connect:
.LFB14:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_net.c"
	.loc 1 190 0
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
	.loc 1 190 0
	movl	8(%ebp), %ebx
	.loc 1 193 0
	movl	8(%ebx), %ecx
	movzwl	4(%ebx), %edx
	.loc 1 193 0
	testl	%ecx, %ecx
	jne	.L2
.LVL1:
.LBB10:
.LBB11:
	.loc 1 74 0
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	(%ebx)
	call	HAL_TCP_Establish
.LVL2:
	.loc 1 75 0
	movl	%eax, (%esp)
	pushl	$.LC0
	.loc 1 74 0
	movl	%eax, %esi
.LVL3:
	.loc 1 75 0
	pushl	$5
	pushl	$75
	pushl	$__FUNCTION__.3386
	call	LITE_syslog
.LVL4:
	.loc 1 76 0
	addl	$32, %esp
	testl	%esi, %esi
	jns	.L3
	.loc 1 77 0
	subl	$12, %esp
	pushl	%esi
	pushl	$.LC1
	pushl	$5
	pushl	$77
	pushl	$__FUNCTION__.3386
	call	LITE_syslog
.LVL5:
	.loc 1 78 0
	movl	$0, 12(%ebx)
	addl	$32, %esp
	.loc 1 79 0
	orl	$-1, %eax
	jmp	.L4
.L3:
	.loc 1 81 0
	movl	%esi, tcp_fd
	.loc 1 82 0
	movl	%esi, 12(%ebx)
	.loc 1 83 0
	xorl	%eax, %eax
	jmp	.L4
.LVL6:
.L2:
.LBE11:
.LBE10:
.LBB12:
.LBB13:
	.loc 1 128 0
	movzwl	6(%ebx), %eax
	incl	%eax
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	(%ebx)
	call	HAL_SSL_Establish
.LVL7:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, 12(%ebx)
	sete	%al
	movzbl	%al, %eax
	negl	%eax
.LVL8:
.L4:
.LBE13:
.LBE12:
	.loc 1 208 0
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
.LFE14:
	.size	iotx_net_connect, .-iotx_net_connect
	.section	.text.unlikely.iotx_net_connect
.LCOLDE2:
	.section	.text.iotx_net_connect
.LHOTE2:
	.section	.text.unlikely.utils_net_write,"ax",@progbits
.LCOLDB3:
	.section	.text.utils_net_write,"ax",@progbits
.LHOTB3:
	.globl	utils_net_write
	.type	utils_net_write, @function
utils_net_write:
.LFB12:
	.loc 1 160 0
	.cfi_startproc
.LVL9:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 160 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	20(%ebp), %ebx
	.loc 1 163 0
	cmpl	$0, 8(%eax)
	jne	.L8
.LVL10:
.LBB20:
.LBB21:
.LBB22:
.LBB23:
	.loc 1 53 0
	movl	12(%eax), %eax
.LBE23:
.LBE22:
.LBE21:
.LBE20:
	.loc 1 172 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LBB30:
.LBB28:
.LBB26:
.LBB24:
	.loc 1 53 0
	movl	%eax, 8(%ebp)
.LVL11:
.LBE24:
.LBE26:
.LBE28:
.LBE30:
	.loc 1 172 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB31:
.LBB29:
.LBB27:
.LBB25:
	.loc 1 53 0
	jmp	HAL_TCP_Write
.LVL12:
.L8:
	.cfi_restore_state
.LBE25:
.LBE27:
.LBE29:
.LBE31:
.LBB32:
.LBB33:
	.loc 1 105 0
	movl	%ebx, 20(%ebp)
	movl	%ecx, 16(%ebp)
	movl	%edx, 12(%ebp)
	movl	12(%eax), %eax
.LVL13:
.LBE33:
.LBE32:
	.loc 1 172 0
	popl	%ebx
	.cfi_restore 3
.LVL14:
.LBB36:
.LBB34:
	.loc 1 105 0
	movl	%eax, 8(%ebp)
.LVL15:
.LBE34:
.LBE36:
	.loc 1 172 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB37:
.LBB35:
	.loc 1 105 0
	jmp	HAL_SSL_Write
.LVL16:
.LBE35:
.LBE37:
	.cfi_endproc
.LFE12:
	.size	utils_net_write, .-utils_net_write
	.section	.text.unlikely.utils_net_write
.LCOLDE3:
	.section	.text.utils_net_write
.LHOTE3:
	.section	.text.unlikely.iotx_net_disconnect,"ax",@progbits
.LCOLDB4:
	.section	.text.iotx_net_disconnect,"ax",@progbits
.LHOTB4:
	.globl	iotx_net_disconnect
	.type	iotx_net_disconnect, @function
iotx_net_disconnect:
.LFB13:
	.loc 1 175 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 175 0
	movl	8(%ebp), %ebx
	.loc 1 178 0
	cmpl	$0, 8(%ebx)
	jne	.L11
.LVL18:
.LBB42:
.LBB43:
	.loc 1 58 0
	movl	12(%ebx), %edx
	.loc 1 59 0
	orl	$-1, %eax
	.loc 1 58 0
	testl	%edx, %edx
	je	.L12
	.loc 1 62 0
	subl	$12, %esp
	pushl	%edx
	call	HAL_TCP_Destroy
.LVL19:
	jmp	.L15
.LVL20:
.L11:
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 1 115 0
	subl	$12, %esp
	pushl	12(%ebx)
	call	HAL_SSL_Destroy
.LVL21:
.L15:
	.loc 1 116 0
	movl	$0, 12(%ebx)
	addl	$16, %esp
	.loc 1 118 0
	xorl	%eax, %eax
.L12:
.LVL22:
.LBE45:
.LBE44:
	.loc 1 187 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	iotx_net_disconnect, .-iotx_net_disconnect
	.section	.text.unlikely.iotx_net_disconnect
.LCOLDE4:
	.section	.text.iotx_net_disconnect
.LHOTE4:
	.section	.text.unlikely.get_tcp_fd,"ax",@progbits
.LCOLDB5:
	.section	.text.get_tcp_fd,"ax",@progbits
.LHOTB5:
	.globl	get_tcp_fd
	.type	get_tcp_fd, @function
get_tcp_fd:
.LFB1:
	.loc 1 27 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 29 0
	movl	tcp_fd, %eax
	.loc 1 27 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 29 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	get_tcp_fd, .-get_tcp_fd
	.section	.text.unlikely.get_tcp_fd
.LCOLDE5:
	.section	.text.get_tcp_fd
.LHOTE5:
	.section	.text.unlikely.get_iotx_fd,"ax",@progbits
.LCOLDB6:
	.section	.text.get_iotx_fd,"ax",@progbits
.LHOTB6:
	.globl	get_iotx_fd
	.type	get_iotx_fd, @function
get_iotx_fd:
.LFB2:
	.loc 1 36 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 43 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 41 0
	jmp	get_ssl_fd
.LVL23:
	.cfi_endproc
.LFE2:
	.size	get_iotx_fd, .-get_iotx_fd
	.section	.text.unlikely.get_iotx_fd
.LCOLDE6:
	.section	.text.get_iotx_fd
.LHOTE6:
	.section	.text.unlikely.read_tcp,"ax",@progbits
.LCOLDB7:
	.section	.text.read_tcp,"ax",@progbits
.LHOTB7:
	.globl	read_tcp
	.type	read_tcp, @function
read_tcp:
.LFB3:
	.loc 1 46 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 47 0
	movl	8(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL25:
	.loc 1 48 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 47 0
	jmp	HAL_TCP_Read
.LVL26:
	.cfi_endproc
.LFE3:
	.size	read_tcp, .-read_tcp
	.section	.text.unlikely.read_tcp
.LCOLDE7:
	.section	.text.read_tcp
.LHOTE7:
	.section	.text.unlikely.utils_net_read,"ax",@progbits
.LCOLDB8:
	.section	.text.utils_net_read,"ax",@progbits
.LHOTB8:
	.globl	utils_net_read
	.type	utils_net_read, @function
utils_net_read:
.LFB11:
	.loc 1 145 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 145 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	16(%ebp), %ecx
	movl	20(%ebp), %ebx
	.loc 1 148 0
	cmpl	$0, 8(%eax)
	jne	.L23
	.loc 1 157 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 149 0
	jmp	read_tcp
.LVL28:
.L23:
	.cfi_restore_state
.LBB48:
.LBB49:
	.loc 1 95 0
	movl	%ebx, 20(%ebp)
	movl	%ecx, 16(%ebp)
	movl	%edx, 12(%ebp)
	movl	12(%eax), %eax
.LVL29:
.LBE49:
.LBE48:
	.loc 1 157 0
	popl	%ebx
	.cfi_restore 3
.LVL30:
.LBB52:
.LBB50:
	.loc 1 95 0
	movl	%eax, 8(%ebp)
.LVL31:
.LBE50:
.LBE52:
	.loc 1 157 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB53:
.LBB51:
	.loc 1 95 0
	jmp	HAL_SSL_Read
.LVL32:
.LBE51:
.LBE53:
	.cfi_endproc
.LFE11:
	.size	utils_net_read, .-utils_net_read
	.section	.text.unlikely.utils_net_read
.LCOLDE8:
	.section	.text.utils_net_read
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"parameter error! pNetwork=%p, host = %p"
	.section	.text.unlikely.iotx_net_init,"ax",@progbits
.LCOLDB10:
	.section	.text.iotx_net_init,"ax",@progbits
.LHOTB10:
	.globl	iotx_net_init
	.type	iotx_net_init, @function
iotx_net_init:
.LFB15:
	.loc 1 211 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 211 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	movl	16(%ebp), %ebx
	movl	20(%ebp), %edi
	.loc 1 212 0
	testl	%edx, %edx
	je	.L31
	testl	%ecx, %ecx
	sete	%al
	jne	.L26
.L31:
	.loc 1 213 0
	pushl	%eax
	pushl	%eax
	pushl	%ecx
	pushl	%edx
	pushl	$.LC9
	pushl	$2
	pushl	$213
	pushl	$__FUNCTION__.3438
	call	LITE_syslog
.LVL34:
	.loc 1 214 0
	addl	$32, %esp
	orl	$-1, %eax
	jmp	.L28
.LVL35:
.L26:
	.loc 1 220 0
	testl	%edi, %edi
	.loc 1 216 0
	movl	%ecx, (%edx)
	.loc 1 217 0
	movw	%bx, 4(%edx)
	.loc 1 218 0
	movl	%edi, 8(%edx)
	.loc 1 220 0
	jne	.L29
.LVL36:
	.loc 1 221 0
	movw	$0, 6(%edx)
	jmp	.L30
.L29:
	.loc 1 223 0
	orl	$-1, %ecx
.LVL37:
	repnz scasb
.LVL38:
	notl	%ecx
	decl	%ecx
	movw	%cx, 6(%edx)
.L30:
	.loc 1 226 0
	movl	$0, 12(%edx)
	.loc 1 227 0
	movl	$utils_net_read, 16(%edx)
	.loc 1 232 0
	xorl	%eax, %eax
	.loc 1 228 0
	movl	$utils_net_write, 20(%edx)
	.loc 1 229 0
	movl	$iotx_net_disconnect, 24(%edx)
	.loc 1 230 0
	movl	$iotx_net_connect, 28(%edx)
.LVL39:
.L28:
	.loc 1 233 0
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
.LFE15:
	.size	iotx_net_init, .-iotx_net_init
	.section	.text.unlikely.iotx_net_init
.LCOLDE10:
	.section	.text.iotx_net_init
.LHOTE10:
	.section	.rodata.__FUNCTION__.3438,"a",@progbits
	.align 4
	.type	__FUNCTION__.3438, @object
	.size	__FUNCTION__.3438, 14
__FUNCTION__.3438:
	.string	"iotx_net_init"
	.section	.rodata.__FUNCTION__.3386,"a",@progbits
	.align 4
	.type	__FUNCTION__.3386, @object
	.size	__FUNCTION__.3386, 12
__FUNCTION__.3386:
	.string	"connect_tcp"
	.section	.data.tcp_fd,"aw",@progbits
	.align 4
	.type	tcp_fd, @object
	.size	tcp_fd, 4
tcp_fd:
	.long	-1
	.text
.Letext0:
	.section	.text.unlikely.iotx_net_connect
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_net.h"
	.file 5 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 6 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x8fa
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF66
	.byte	0xc
	.long	.LASF67
	.long	.LASF68
	.long	.Ldebug_ranges0+0x60
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
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x2b
	.long	0x61
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x2
	.byte	0xc8
	.long	0x25
	.uleb128 0x4
	.long	.LASF13
	.byte	0x2
	.byte	0xca
	.long	0x2c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.long	0xab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.long	0xb8
	.uleb128 0x6
	.long	0xab
	.uleb128 0x4
	.long	.LASF16
	.byte	0x3
	.byte	0x24
	.long	0x56
	.uleb128 0x4
	.long	.LASF17
	.byte	0x3
	.byte	0x30
	.long	0x6f
	.uleb128 0x4
	.long	.LASF18
	.byte	0x3
	.byte	0x43
	.long	0x88
	.uleb128 0x4
	.long	.LASF19
	.byte	0x3
	.byte	0x48
	.long	0x93
	.uleb128 0x7
	.long	.LASF69
	.byte	0x20
	.byte	0x4
	.byte	0x23
	.long	0x162
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x24
	.long	0xb2
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x4
	.byte	0x25
	.long	0xbd
	.byte	0x4
	.uleb128 0x8
	.long	.LASF22
	.byte	0x4
	.byte	0x26
	.long	0xbd
	.byte	0x6
	.uleb128 0x8
	.long	.LASF23
	.byte	0x4
	.byte	0x29
	.long	0xb2
	.byte	0x8
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.byte	0x2c
	.long	0xde
	.byte	0xc
	.uleb128 0x8
	.long	.LASF25
	.byte	0x4
	.byte	0x2f
	.long	0x191
	.byte	0x10
	.uleb128 0x8
	.long	.LASF26
	.byte	0x4
	.byte	0x32
	.long	0x1b5
	.byte	0x14
	.uleb128 0x8
	.long	.LASF27
	.byte	0x4
	.byte	0x35
	.long	0x1ca
	.byte	0x18
	.uleb128 0x8
	.long	.LASF28
	.byte	0x4
	.byte	0x38
	.long	0x1ca
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF29
	.byte	0x4
	.byte	0x21
	.long	0x16d
	.uleb128 0x5
	.byte	0x4
	.long	0xe9
	.uleb128 0x9
	.long	0x25
	.long	0x191
	.uleb128 0xa
	.long	0x162
	.uleb128 0xa
	.long	0xa5
	.uleb128 0xa
	.long	0xc8
	.uleb128 0xa
	.long	0xc8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x173
	.uleb128 0x9
	.long	0x25
	.long	0x1b5
	.uleb128 0xa
	.long	0x162
	.uleb128 0xa
	.long	0xb2
	.uleb128 0xa
	.long	0xc8
	.uleb128 0xa
	.long	0xc8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x197
	.uleb128 0x9
	.long	0x25
	.long	0x1ca
	.uleb128 0xa
	.long	0x162
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x1bb
	.uleb128 0xb
	.long	.LASF70
	.byte	0x4
	.long	0x2c
	.byte	0x6
	.byte	0x22
	.long	0x205
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
	.byte	0
	.uleb128 0xd
	.long	.LASF39
	.byte	0x1
	.byte	0x33
	.long	0x25
	.byte	0x1
	.long	0x242
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x33
	.long	0x162
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x33
	.long	0xb2
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x33
	.long	0xc8
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x33
	.long	0xc8
	.byte	0
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1
	.byte	0x9f
	.long	0x25
	.byte	0x1
	.long	0x28a
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x9f
	.long	0x162
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x9f
	.long	0xb2
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x9f
	.long	0xc8
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x9f
	.long	0xc8
	.uleb128 0x11
	.string	"ret"
	.byte	0x1
	.byte	0xa1
	.long	0x25
	.byte	0
	.uleb128 0xd
	.long	.LASF40
	.byte	0x1
	.byte	0x38
	.long	0x25
	.byte	0x1
	.long	0x2a6
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x38
	.long	0x162
	.byte	0
	.uleb128 0xd
	.long	.LASF41
	.byte	0x1
	.byte	0x43
	.long	0x25
	.byte	0x1
	.long	0x2da
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x43
	.long	0x162
	.uleb128 0x12
	.long	.LASF42
	.long	0x2ea
	.long	.LASF41
	.uleb128 0x13
	.long	.LASF43
	.byte	0x1
	.byte	0x4a
	.long	0xd3
	.byte	0
	.uleb128 0x14
	.long	0xb8
	.long	0x2ea
	.uleb128 0x15
	.long	0x9e
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.long	0x2da
	.uleb128 0xd
	.long	.LASF44
	.byte	0x1
	.byte	0x79
	.long	0x25
	.byte	0x1
	.long	0x318
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x79
	.long	0x162
	.uleb128 0x12
	.long	.LASF42
	.long	0x318
	.long	.LASF44
	.byte	0
	.uleb128 0x6
	.long	0x2da
	.uleb128 0x16
	.long	.LASF47
	.byte	0x1
	.byte	0xbd
	.long	0x25
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x3dc
	.uleb128 0x17
	.long	.LASF36
	.byte	0x1
	.byte	0xbd
	.long	0x162
	.long	.LLST0
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0xbf
	.long	0x25
	.long	.LLST1
	.uleb128 0x19
	.long	0x2a6
	.long	.LBB10
	.long	.LBE10-.LBB10
	.byte	0x1
	.byte	0xc2
	.long	0x3aa
	.uleb128 0x1a
	.long	0x2b6
	.long	.LLST2
	.uleb128 0x1b
	.long	.LBB11
	.long	.LBE11-.LBB11
	.uleb128 0x1c
	.long	0x2ce
	.long	.LLST3
	.uleb128 0x1d
	.long	0x2c1
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3386
	.uleb128 0x1e
	.long	.LVL2
	.long	0x887
	.uleb128 0x1e
	.long	.LVL4
	.long	0x893
	.uleb128 0x1e
	.long	.LVL5
	.long	0x893
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x2ef
	.long	.LBB12
	.long	.LBE12-.LBB12
	.byte	0x1
	.byte	0xc5
	.uleb128 0x1a
	.long	0x2ff
	.long	.LLST4
	.uleb128 0x1b
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x20
	.long	0x30a
	.uleb128 0x1e
	.long	.LVL7
	.long	0x89e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.byte	0x62
	.long	0x25
	.byte	0x1
	.long	0x426
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x62
	.long	0x162
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x62
	.long	0xb2
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x62
	.long	0xc8
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x62
	.long	0xc8
	.uleb128 0x12
	.long	.LASF42
	.long	0x436
	.long	.LASF45
	.byte	0
	.uleb128 0x14
	.long	0xb8
	.long	0x436
	.uleb128 0x15
	.long	0x9e
	.byte	0x9
	.byte	0
	.uleb128 0x6
	.long	0x426
	.uleb128 0x21
	.long	0x242
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x538
	.uleb128 0x1a
	.long	0x252
	.long	.LLST5
	.uleb128 0x1a
	.long	0x25d
	.long	.LLST6
	.uleb128 0x1a
	.long	0x268
	.long	.LLST7
	.uleb128 0x1a
	.long	0x273
	.long	.LLST8
	.uleb128 0x22
	.long	0x27e
	.byte	0
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.long	0x4ef
	.uleb128 0x24
	.long	0x273
	.uleb128 0x24
	.long	0x268
	.uleb128 0x24
	.long	0x25d
	.uleb128 0x1a
	.long	0x252
	.long	.LLST9
	.uleb128 0x25
	.long	.Ldebug_ranges0+0
	.uleb128 0x20
	.long	0x27e
	.uleb128 0x26
	.long	0x205
	.long	.LBB22
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xa4
	.uleb128 0x1a
	.long	0x215
	.long	.LLST9
	.uleb128 0x24
	.long	0x236
	.uleb128 0x24
	.long	0x22b
	.uleb128 0x24
	.long	0x220
	.uleb128 0x27
	.long	.LVL12
	.long	0x8aa
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0x3dc
	.long	.LBB32
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xa7
	.uleb128 0x1a
	.long	0x40d
	.long	.LLST11
	.uleb128 0x1a
	.long	0x402
	.long	.LLST12
	.uleb128 0x1a
	.long	0x3f7
	.long	.LLST13
	.uleb128 0x1a
	.long	0x3ec
	.long	.LLST14
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x20
	.long	0x418
	.uleb128 0x29
	.long	.LVL16
	.long	0x8b6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.byte	0x6c
	.long	0x25
	.byte	0x1
	.long	0x561
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x6c
	.long	0x162
	.uleb128 0x12
	.long	.LASF42
	.long	0x571
	.long	.LASF46
	.byte	0
	.uleb128 0x14
	.long	0xb8
	.long	0x571
	.uleb128 0x15
	.long	0x9e
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.long	0x561
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.byte	0xae
	.long	0x25
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x604
	.uleb128 0x2a
	.long	.LASF36
	.byte	0x1
	.byte	0xae
	.long	0x162
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.byte	0xb0
	.long	0x25
	.long	.LLST15
	.uleb128 0x19
	.long	0x28a
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.byte	0xb3
	.long	0x5d2
	.uleb128 0x1a
	.long	0x29a
	.long	.LLST16
	.uleb128 0x1e
	.long	.LVL19
	.long	0x8c2
	.byte	0
	.uleb128 0x1f
	.long	0x538
	.long	.LBB44
	.long	.LBE44-.LBB44
	.byte	0x1
	.byte	0xb6
	.uleb128 0x1a
	.long	0x548
	.long	.LLST17
	.uleb128 0x1b
	.long	.LBB45
	.long	.LBE45-.LBB45
	.uleb128 0x20
	.long	0x553
	.uleb128 0x1e
	.long	.LVL21
	.long	0x8ce
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF72
	.byte	0x1
	.byte	0x1a
	.long	0x25
	.long	.LFB1
	.long	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF73
	.byte	0x1
	.byte	0x23
	.long	0x25
	.long	.LFB2
	.long	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x63c
	.uleb128 0x29
	.long	.LVL23
	.long	0x8da
	.byte	0
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.byte	0x2d
	.long	0x25
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x6b1
	.uleb128 0x17
	.long	.LASF36
	.byte	0x1
	.byte	0x2d
	.long	0x162
	.long	.LLST18
	.uleb128 0x2a
	.long	.LASF37
	.byte	0x1
	.byte	0x2d
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.string	"len"
	.byte	0x1
	.byte	0x2d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2a
	.long	.LASF38
	.byte	0x1
	.byte	0x2d
	.long	0xc8
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LVL26
	.long	0x8e5
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x1
	.byte	0x58
	.long	0x25
	.byte	0x1
	.long	0x6fb
	.uleb128 0xe
	.long	.LASF36
	.byte	0x1
	.byte	0x58
	.long	0x162
	.uleb128 0xe
	.long	.LASF37
	.byte	0x1
	.byte	0x58
	.long	0xa5
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.byte	0x58
	.long	0xc8
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.byte	0x58
	.long	0xc8
	.uleb128 0x12
	.long	.LASF42
	.long	0x70b
	.long	.LASF50
	.byte	0
	.uleb128 0x14
	.long	0xb8
	.long	0x70b
	.uleb128 0x15
	.long	0x9e
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.long	0x6fb
	.uleb128 0x16
	.long	.LASF51
	.byte	0x1
	.byte	0x90
	.long	0x25
	.long	.LFB11
	.long	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x7e8
	.uleb128 0x17
	.long	.LASF36
	.byte	0x1
	.byte	0x90
	.long	0x162
	.long	.LLST19
	.uleb128 0x17
	.long	.LASF37
	.byte	0x1
	.byte	0x90
	.long	0xa5
	.long	.LLST20
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0x90
	.long	0xc8
	.long	.LLST21
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x90
	.long	0xc8
	.long	.LLST22
	.uleb128 0x2f
	.string	"ret"
	.byte	0x1
	.byte	0x92
	.long	0x25
	.byte	0
	.uleb128 0x30
	.long	0x6b1
	.long	.LBB48
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x98
	.long	0x7bd
	.uleb128 0x1a
	.long	0x6e2
	.long	.LLST23
	.uleb128 0x1a
	.long	0x6d7
	.long	.LLST24
	.uleb128 0x1a
	.long	0x6cc
	.long	.LLST25
	.uleb128 0x1a
	.long	0x6c1
	.long	.LLST26
	.uleb128 0x25
	.long	.Ldebug_ranges0+0x40
	.uleb128 0x20
	.long	0x6ed
	.uleb128 0x29
	.long	.LVL32
	.long	0x8f1
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL28
	.long	0x63c
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3
	.byte	0x91
	.sleb128 8
	.byte	0x6
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0x91
	.sleb128 12
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF52
	.byte	0x1
	.byte	0xd2
	.long	0x25
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x855
	.uleb128 0x17
	.long	.LASF36
	.byte	0x1
	.byte	0xd2
	.long	0x162
	.long	.LLST27
	.uleb128 0x17
	.long	.LASF53
	.byte	0x1
	.byte	0xd2
	.long	0xb2
	.long	.LLST28
	.uleb128 0x2a
	.long	.LASF21
	.byte	0x1
	.byte	0xd2
	.long	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x17
	.long	.LASF23
	.byte	0x1
	.byte	0xd2
	.long	0xb2
	.long	.LLST29
	.uleb128 0x31
	.long	.LASF42
	.long	0x865
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3438
	.uleb128 0x1e
	.long	.LVL34
	.long	0x893
	.byte	0
	.uleb128 0x14
	.long	0xb8
	.long	0x865
	.uleb128 0x15
	.long	0x9e
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.long	0x855
	.uleb128 0x32
	.long	.LASF54
	.byte	0x1
	.byte	0x19
	.long	0x25
	.uleb128 0x5
	.byte	0x3
	.long	tcp_fd
	.uleb128 0x33
	.long	.LASF55
	.byte	0x1
	.byte	0x22
	.long	0x25
	.sleb128 -1
	.uleb128 0x34
	.long	.LASF56
	.long	.LASF56
	.byte	0x5
	.value	0x129
	.uleb128 0x35
	.long	.LASF57
	.long	.LASF57
	.byte	0x6
	.byte	0x34
	.uleb128 0x34
	.long	.LASF58
	.long	.LASF58
	.byte	0x5
	.value	0x15e
	.uleb128 0x34
	.long	.LASF59
	.long	.LASF59
	.byte	0x5
	.value	0x142
	.uleb128 0x34
	.long	.LASF60
	.long	.LASF60
	.byte	0x5
	.value	0x17b
	.uleb128 0x34
	.long	.LASF61
	.long	.LASF61
	.byte	0x5
	.value	0x134
	.uleb128 0x34
	.long	.LASF62
	.long	.LASF62
	.byte	0x5
	.value	0x16d
	.uleb128 0x35
	.long	.LASF63
	.long	.LASF63
	.byte	0x1
	.byte	0x1f
	.uleb128 0x34
	.long	.LASF64
	.long	.LASF64
	.byte	0x5
	.value	0x151
	.uleb128 0x34
	.long	.LASF65
	.long	.LASF65
	.byte	0x5
	.value	0x18b
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.long	.LVL0
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	.LVL8
	.long	.LFE14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL8
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL8
	.long	.LFE14
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4-1
	.value	0x1
	.byte	0x50
	.long	.LVL4-1
	.long	.LVL6
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL8
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL12
	.long	.LVL16-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL12
	.long	.LVL16-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST8:
	.long	.LVL9
	.long	.LVL12
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL12
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL14
	.long	.LVL16-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST9:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL12
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL14
	.long	.LVL16-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST12:
	.long	.LVL12
	.long	.LVL16-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST13:
	.long	.LVL12
	.long	.LVL16-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST14:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LVL17
	.long	.LVL22
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL22
	.long	.LFE13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST16:
	.long	.LVL18
	.long	.LVL20
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST17:
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST18:
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST19:
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL28
	.long	.LVL32-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL28
	.long	.LVL32-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST22:
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL28
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL32-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST23:
	.long	.LVL28
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	.LVL30
	.long	.LVL32-1
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST24:
	.long	.LVL28
	.long	.LVL32-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST25:
	.long	.LVL28
	.long	.LVL32-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST26:
	.long	.LVL28
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	.LVL29
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST27:
	.long	.LVL33
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL35
	.long	.LVL39
	.value	0x1
	.byte	0x52
	.long	.LVL39
	.long	.LFE15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST28:
	.long	.LVL33
	.long	.LVL35
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x51
	.long	.LVL37
	.long	.LFE15
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST29:
	.long	.LVL33
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL36
	.long	.LVL38
	.value	0x1
	.byte	0x57
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
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB2
	.long	.LFE2-.LFB2
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB20
	.long	.LBE20
	.long	.LBB30
	.long	.LBE30
	.long	.LBB31
	.long	.LBE31
	.long	0
	.long	0
	.long	.LBB32
	.long	.LBE32
	.long	.LBB36
	.long	.LBE36
	.long	.LBB37
	.long	.LBE37
	.long	0
	.long	0
	.long	.LBB48
	.long	.LBE48
	.long	.LBB52
	.long	.LBE52
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LFB14
	.long	.LFE14
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB1
	.long	.LFE1
	.long	.LFB2
	.long	.LFE2
	.long	.LFB3
	.long	.LFE3
	.long	.LFB11
	.long	.LFE11
	.long	.LFB15
	.long	.LFE15
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"connect_ssl"
.LASF19:
	.string	"uintptr_t"
.LASF35:
	.string	"LOG_DEBUG_LEVEL"
.LASF33:
	.string	"LOG_WARNING_LEVEL"
.LASF61:
	.string	"HAL_TCP_Destroy"
.LASF73:
	.string	"get_iotx_fd"
.LASF11:
	.string	"long long unsigned int"
.LASF48:
	.string	"iotx_net_disconnect"
.LASF43:
	.string	"sockfd"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF67:
	.string	"src/utils_net.c"
.LASF27:
	.string	"disconnect"
.LASF49:
	.string	"read_tcp"
.LASF40:
	.string	"disconnect_tcp"
.LASF7:
	.string	"long int"
.LASF60:
	.string	"HAL_SSL_Write"
.LASF52:
	.string	"iotx_net_init"
.LASF16:
	.string	"uint16_t"
.LASF68:
	.string	"/home/stone/Documents/pca"
.LASF9:
	.string	"__uint32_t"
.LASF12:
	.string	"__intptr_t"
.LASF21:
	.string	"port"
.LASF45:
	.string	"write_ssl"
.LASF0:
	.string	"unsigned int"
.LASF56:
	.string	"HAL_TCP_Establish"
.LASF10:
	.string	"long unsigned int"
.LASF42:
	.string	"__FUNCTION__"
.LASF23:
	.string	"ca_crt"
.LASF31:
	.string	"LOG_CRIT_LEVEL"
.LASF6:
	.string	"short unsigned int"
.LASF36:
	.string	"pNetwork"
.LASF57:
	.string	"LITE_syslog"
.LASF70:
	.string	"_LOGLEVEL"
.LASF18:
	.string	"intptr_t"
.LASF72:
	.string	"get_tcp_fd"
.LASF54:
	.string	"tcp_fd"
.LASF50:
	.string	"read_ssl"
.LASF20:
	.string	"pHostAddress"
.LASF46:
	.string	"disconnect_ssl"
.LASF26:
	.string	"write"
.LASF22:
	.string	"ca_crt_len"
.LASF14:
	.string	"sizetype"
.LASF69:
	.string	"utils_network"
.LASF2:
	.string	"long double"
.LASF64:
	.string	"HAL_TCP_Read"
.LASF30:
	.string	"LOG_EMERG_LEVEL"
.LASF65:
	.string	"HAL_SSL_Read"
.LASF38:
	.string	"timeout_ms"
.LASF4:
	.string	"unsigned char"
.LASF59:
	.string	"HAL_TCP_Write"
.LASF5:
	.string	"short int"
.LASF29:
	.string	"utils_network_pt"
.LASF13:
	.string	"__uintptr_t"
.LASF51:
	.string	"utils_net_read"
.LASF32:
	.string	"LOG_ERR_LEVEL"
.LASF28:
	.string	"connect"
.LASF66:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF17:
	.string	"uint32_t"
.LASF34:
	.string	"LOG_INFO_LEVEL"
.LASF71:
	.string	"utils_net_write"
.LASF41:
	.string	"connect_tcp"
.LASF15:
	.string	"char"
.LASF8:
	.string	"__uint16_t"
.LASF53:
	.string	"host"
.LASF37:
	.string	"buffer"
.LASF62:
	.string	"HAL_SSL_Destroy"
.LASF63:
	.string	"get_ssl_fd"
.LASF47:
	.string	"iotx_net_connect"
.LASF39:
	.string	"write_tcp"
.LASF25:
	.string	"read"
.LASF55:
	.string	"iotx_fd"
.LASF24:
	.string	"handle"
.LASF58:
	.string	"HAL_SSL_Establish"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
