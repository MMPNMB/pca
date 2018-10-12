	.file	"netifapi.c"
	.text
.Ltext0:
	.section	.text.unlikely.netifapi_do_netif_add,"ax",@progbits
.LCOLDB0:
	.section	.text.netifapi_do_netif_add,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.netifapi_do_netif_add
.Ltext_cold0:
	.section	.text.netifapi_do_netif_add
	.type	netifapi_do_netif_add, @function
netifapi_do_netif_add:
.LFB17:
	.file 1 "kernel/protocols/net/api/netifapi.c"
	.loc 1 59 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 59 0
	movl	8(%ebp), %eax
.LVL1:
	.loc 1 64 0
	pushl	28(%eax)
	pushl	24(%eax)
	pushl	20(%eax)
	pushl	16(%eax)
	pushl	12(%eax)
	pushl	8(%eax)
	pushl	4(%eax)
	call	netif_add
.LVL2:
	addl	$32, %esp
	.loc 1 75 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	.loc 1 77 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 75 0
	andl	$-12, %eax
	.loc 1 77 0
	ret
	.cfi_endproc
.LFE17:
	.size	netifapi_do_netif_add, .-netifapi_do_netif_add
	.section	.text.unlikely.netifapi_do_netif_add
.LCOLDE0:
	.section	.text.netifapi_do_netif_add
.LHOTE0:
	.section	.text.unlikely.netifapi_do_netif_set_addr,"ax",@progbits
.LCOLDB1:
	.section	.text.netifapi_do_netif_set_addr,"ax",@progbits
.LHOTB1:
	.type	netifapi_do_netif_set_addr, @function
netifapi_do_netif_set_addr:
.LFB18:
	.loc 1 85 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 85 0
	movl	8(%ebp), %eax
.LVL4:
	.loc 1 90 0
	pushl	16(%eax)
	pushl	12(%eax)
	pushl	8(%eax)
	pushl	4(%eax)
	call	netif_set_addr
.LVL5:
	.loc 1 95 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	netifapi_do_netif_set_addr, .-netifapi_do_netif_set_addr
	.section	.text.unlikely.netifapi_do_netif_set_addr
.LCOLDE1:
	.section	.text.netifapi_do_netif_set_addr
.LHOTE1:
	.section	.text.unlikely.netifapi_do_netif_common,"ax",@progbits
.LCOLDB2:
	.section	.text.netifapi_do_netif_common,"ax",@progbits
.LHOTB2:
	.type	netifapi_do_netif_common, @function
netifapi_do_netif_common:
.LFB19:
	.loc 1 104 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 104 0
	movl	8(%ebp), %eax
.LVL7:
	.loc 1 109 0
	movl	12(%eax), %edx
	testl	%edx, %edx
	je	.L8
	.loc 1 110 0
	movl	4(%eax), %eax
.LVL8:
	movl	%eax, 8(%ebp)
.LVL9:
	.loc 1 115 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 110 0
	jmp	*%edx
.LVL10:
.L8:
	.cfi_restore_state
.LBB4:
.LBB5:
	.loc 1 112 0
	subl	$12, %esp
	pushl	4(%eax)
	call	*8(%eax)
.LVL11:
	addl	$16, %esp
.LBE5:
.LBE4:
	.loc 1 115 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	netifapi_do_netif_common, .-netifapi_do_netif_common
	.section	.text.unlikely.netifapi_do_netif_common
.LCOLDE2:
	.section	.text.netifapi_do_netif_common
.LHOTE2:
	.section	.text.unlikely.netifapi_netif_add,"ax",@progbits
.LCOLDB3:
	.section	.text.netifapi_netif_add,"ax",@progbits
.LHOTB3:
	.globl	netifapi_netif_add
	.type	netifapi_netif_add, @function
netifapi_netif_add:
.LFB20:
	.loc 1 130 0
	.cfi_startproc
.LVL12:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 3, -12
	.loc 1 130 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%gs:20, %ebx
	movl	%ebx, -12(%ebp)
	xorl	%ebx, %ebx
	.loc 1 137 0
	movl	$ip_addr_any, %ebx
	testl	%ecx, %ecx
	cmove	%ebx, %ecx
.LVL13:
	.loc 1 140 0
	testl	%edx, %edx
	cmove	%ebx, %edx
.LVL14:
	.loc 1 143 0
	testl	%eax, %eax
	.loc 1 149 0
	movl	%ecx, -36(%ebp)
	.loc 1 143 0
	cmove	%ebx, %eax
.LVL15:
	.loc 1 147 0
	movl	8(%ebp), %ebx
	.loc 1 150 0
	movl	%edx, -32(%ebp)
	.loc 1 151 0
	movl	%eax, -28(%ebp)
	.loc 1 153 0
	movl	24(%ebp), %eax
.LVL16:
	.loc 1 147 0
	movl	%ebx, -40(%ebp)
	.loc 1 153 0
	movl	%eax, -24(%ebp)
	.loc 1 154 0
	movl	28(%ebp), %eax
	movl	%eax, -20(%ebp)
	.loc 1 155 0
	movl	32(%ebp), %eax
	movl	%eax, -16(%ebp)
	.loc 1 156 0
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	$netifapi_do_netif_add
	call	tcpip_api_call
.LVL17:
	.loc 1 159 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L15
	call	__stack_chk_fail
.LVL18:
.L15:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	netifapi_netif_add, .-netifapi_netif_add
	.section	.text.unlikely.netifapi_netif_add
.LCOLDE3:
	.section	.text.netifapi_netif_add
.LHOTE3:
	.section	.text.unlikely.netifapi_netif_set_addr,"ax",@progbits
.LCOLDB4:
	.section	.text.netifapi_netif_set_addr,"ax",@progbits
.LHOTB4:
	.globl	netifapi_netif_set_addr
	.type	netifapi_netif_set_addr, @function
netifapi_netif_set_addr:
.LFB21:
	.loc 1 174 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 3, -12
	.loc 1 174 0
	movl	12(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	20(%ebp), %eax
	movl	%gs:20, %ebx
	movl	%ebx, -12(%ebp)
	xorl	%ebx, %ebx
	.loc 1 180 0
	movl	$ip_addr_any, %ebx
	testl	%ecx, %ecx
	cmove	%ebx, %ecx
.LVL20:
	.loc 1 183 0
	testl	%edx, %edx
	cmove	%ebx, %edx
.LVL21:
	.loc 1 186 0
	testl	%eax, %eax
	.loc 1 190 0
	movl	%ecx, -36(%ebp)
	.loc 1 186 0
	cmove	%ebx, %eax
.LVL22:
	.loc 1 189 0
	movl	8(%ebp), %ebx
	.loc 1 191 0
	movl	%edx, -32(%ebp)
	.loc 1 192 0
	movl	%eax, -28(%ebp)
	.loc 1 193 0
	leal	-44(%ebp), %eax
.LVL23:
	pushl	%eax
	pushl	$netifapi_do_netif_set_addr
	.loc 1 189 0
	movl	%ebx, -40(%ebp)
	.loc 1 193 0
	call	tcpip_api_call
.LVL24:
	.loc 1 196 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L21
	call	__stack_chk_fail
.LVL25:
.L21:
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	netifapi_netif_set_addr, .-netifapi_netif_set_addr
	.section	.text.unlikely.netifapi_netif_set_addr
.LCOLDE4:
	.section	.text.netifapi_netif_set_addr
.LHOTE4:
	.section	.text.unlikely.netifapi_netif_common,"ax",@progbits
.LCOLDB5:
	.section	.text.netifapi_netif_common,"ax",@progbits
.LHOTB5:
	.globl	netifapi_netif_common
	.type	netifapi_netif_common, @function
netifapi_netif_common:
.LFB22:
	.loc 1 208 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$64, %esp
	.loc 1 208 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 213 0
	movl	8(%ebp), %eax
	movl	%eax, -40(%ebp)
	.loc 1 214 0
	movl	12(%ebp), %eax
	movl	%eax, -36(%ebp)
	.loc 1 215 0
	movl	16(%ebp), %eax
	movl	%eax, -32(%ebp)
	.loc 1 216 0
	leal	-44(%ebp), %eax
	pushl	%eax
	pushl	$netifapi_do_netif_common
	call	tcpip_api_call
.LVL27:
	.loc 1 219 0
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L24
	call	__stack_chk_fail
.LVL28:
.L24:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	netifapi_netif_common, .-netifapi_netif_common
	.section	.text.unlikely.netifapi_netif_common
.LCOLDE5:
	.section	.text.netifapi_netif_common
.LHOTE5:
	.text
.Letext0:
	.section	.text.unlikely.netifapi_do_netif_add
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 5 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 6 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 7 "./kernel/protocols/net/include/lwip/netif.h"
	.file 8 "./kernel/protocols/net/include/lwip/priv/tcpip_priv.h"
	.file 9 "./kernel/protocols/net/include/lwip/netifapi.h"
	.file 10 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x80b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF94
	.byte	0xc
	.long	.LASF95
	.long	.LASF96
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
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x88
	.uleb128 0x6
	.long	0x7b
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
	.uleb128 0x7
	.long	.LASF18
	.byte	0x3
	.byte	0x39
	.long	0xa6
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x3
	.byte	0x3d
	.long	0x145
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0xa
	.long	.LASF20
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF21
	.sleb128 -2
	.uleb128 0xa
	.long	.LASF22
	.sleb128 -3
	.uleb128 0xa
	.long	.LASF23
	.sleb128 -4
	.uleb128 0xa
	.long	.LASF24
	.sleb128 -5
	.uleb128 0xa
	.long	.LASF25
	.sleb128 -6
	.uleb128 0xa
	.long	.LASF26
	.sleb128 -7
	.uleb128 0xa
	.long	.LASF27
	.sleb128 -8
	.uleb128 0xa
	.long	.LASF28
	.sleb128 -9
	.uleb128 0xa
	.long	.LASF29
	.sleb128 -10
	.uleb128 0xa
	.long	.LASF30
	.sleb128 -11
	.uleb128 0xa
	.long	.LASF31
	.sleb128 -12
	.uleb128 0xa
	.long	.LASF32
	.sleb128 -13
	.uleb128 0xa
	.long	.LASF33
	.sleb128 -14
	.uleb128 0xa
	.long	.LASF34
	.sleb128 -15
	.uleb128 0xa
	.long	.LASF35
	.sleb128 -16
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF36
	.uleb128 0xb
	.long	.LASF39
	.byte	0x4
	.byte	0x4
	.byte	0x35
	.long	0x165
	.uleb128 0xc
	.long	.LASF41
	.byte	0x4
	.byte	0x36
	.long	0xbc
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x4
	.byte	0x49
	.long	0x14c
	.uleb128 0x7
	.long	.LASF38
	.byte	0x5
	.byte	0xe1
	.long	0x165
	.uleb128 0xb
	.long	.LASF40
	.byte	0x10
	.byte	0x6
	.byte	0x9d
	.long	0x1dc
	.uleb128 0xc
	.long	.LASF42
	.byte	0x6
	.byte	0x9f
	.long	0x1dc
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x6
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0xc
	.long	.LASF44
	.byte	0x6
	.byte	0xab
	.long	0xb1
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x6
	.byte	0xae
	.long	0xb1
	.byte	0xa
	.uleb128 0xc
	.long	.LASF45
	.byte	0x6
	.byte	0xb1
	.long	0x9b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF46
	.byte	0x6
	.byte	0xb4
	.long	0x9b
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x6
	.byte	0xc2
	.long	0xb1
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x17b
	.uleb128 0xe
	.long	.LASF97
	.byte	0x4
	.long	0x2c
	.byte	0x7
	.byte	0x8f
	.long	0x1ff
	.uleb128 0x9
	.long	.LASF47
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF49
	.byte	0x7
	.byte	0x9b
	.long	0x20a
	.uleb128 0x5
	.byte	0x4
	.long	0x210
	.uleb128 0xf
	.long	0xc7
	.long	0x21f
	.uleb128 0x10
	.long	0x21f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x225
	.uleb128 0xb
	.long	.LASF50
	.byte	0x54
	.byte	0x7
	.byte	0xe5
	.long	0x349
	.uleb128 0xc
	.long	.LASF42
	.byte	0x7
	.byte	0xe7
	.long	0x21f
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x7
	.byte	0xeb
	.long	0x170
	.byte	0x4
	.uleb128 0xc
	.long	.LASF52
	.byte	0x7
	.byte	0xec
	.long	0x170
	.byte	0x8
	.uleb128 0xd
	.string	"gw"
	.byte	0x7
	.byte	0xed
	.long	0x170
	.byte	0xc
	.uleb128 0xc
	.long	.LASF53
	.byte	0x7
	.byte	0xf8
	.long	0x349
	.byte	0x10
	.uleb128 0xc
	.long	.LASF54
	.byte	0x7
	.byte	0xfe
	.long	0x36e
	.byte	0x14
	.uleb128 0x11
	.long	.LASF55
	.byte	0x7
	.value	0x103
	.long	0x3a3
	.byte	0x18
	.uleb128 0x11
	.long	.LASF56
	.byte	0x7
	.value	0x10e
	.long	0x3c8
	.byte	0x1c
	.uleb128 0x11
	.long	.LASF57
	.byte	0x7
	.value	0x11b
	.long	0x79
	.byte	0x20
	.uleb128 0x11
	.long	.LASF58
	.byte	0x7
	.value	0x11d
	.long	0x40e
	.byte	0x24
	.uleb128 0x11
	.long	.LASF59
	.byte	0x7
	.value	0x125
	.long	0x9b
	.byte	0x2c
	.uleb128 0x11
	.long	.LASF60
	.byte	0x7
	.value	0x129
	.long	0x82
	.byte	0x30
	.uleb128 0x12
	.string	"mtu"
	.byte	0x7
	.value	0x12f
	.long	0xb1
	.byte	0x34
	.uleb128 0x11
	.long	.LASF61
	.byte	0x7
	.value	0x131
	.long	0x9b
	.byte	0x36
	.uleb128 0x11
	.long	.LASF62
	.byte	0x7
	.value	0x133
	.long	0x41e
	.byte	0x37
	.uleb128 0x11
	.long	.LASF46
	.byte	0x7
	.value	0x135
	.long	0x9b
	.byte	0x3d
	.uleb128 0x11
	.long	.LASF63
	.byte	0x7
	.value	0x137
	.long	0x42e
	.byte	0x3e
	.uleb128 0x12
	.string	"num"
	.byte	0x7
	.value	0x139
	.long	0x9b
	.byte	0x40
	.uleb128 0x11
	.long	.LASF64
	.byte	0x7
	.value	0x147
	.long	0x3e4
	.byte	0x44
	.uleb128 0x11
	.long	.LASF65
	.byte	0x7
	.value	0x153
	.long	0x1dc
	.byte	0x48
	.uleb128 0x11
	.long	.LASF66
	.byte	0x7
	.value	0x154
	.long	0x1dc
	.byte	0x4c
	.uleb128 0x11
	.long	.LASF67
	.byte	0x7
	.value	0x156
	.long	0xb1
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF68
	.byte	0x7
	.byte	0xa2
	.long	0x354
	.uleb128 0x5
	.byte	0x4
	.long	0x35a
	.uleb128 0xf
	.long	0xc7
	.long	0x36e
	.uleb128 0x10
	.long	0x1dc
	.uleb128 0x10
	.long	0x21f
	.byte	0
	.uleb128 0x7
	.long	.LASF69
	.byte	0x7
	.byte	0xb1
	.long	0x379
	.uleb128 0x5
	.byte	0x4
	.long	0x37f
	.uleb128 0xf
	.long	0xc7
	.long	0x398
	.uleb128 0x10
	.long	0x21f
	.uleb128 0x10
	.long	0x1dc
	.uleb128 0x10
	.long	0x398
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x39e
	.uleb128 0x6
	.long	0x165
	.uleb128 0x7
	.long	.LASF70
	.byte	0x7
	.byte	0xc8
	.long	0x3ae
	.uleb128 0x5
	.byte	0x4
	.long	0x3b4
	.uleb128 0xf
	.long	0xc7
	.long	0x3c8
	.uleb128 0x10
	.long	0x21f
	.uleb128 0x10
	.long	0x1dc
	.byte	0
	.uleb128 0x7
	.long	.LASF71
	.byte	0x7
	.byte	0xca
	.long	0x3d3
	.uleb128 0x5
	.byte	0x4
	.long	0x3d9
	.uleb128 0x13
	.long	0x3e4
	.uleb128 0x10
	.long	0x21f
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0x7
	.byte	0xcd
	.long	0x3ef
	.uleb128 0x5
	.byte	0x4
	.long	0x3f5
	.uleb128 0xf
	.long	0xc7
	.long	0x40e
	.uleb128 0x10
	.long	0x21f
	.uleb128 0x10
	.long	0x398
	.uleb128 0x10
	.long	0x1e2
	.byte	0
	.uleb128 0x14
	.long	0x79
	.long	0x41e
	.uleb128 0x15
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x9b
	.long	0x42e
	.uleb128 0x15
	.long	0x72
	.byte	0x5
	.byte	0
	.uleb128 0x14
	.long	0x7b
	.long	0x43e
	.uleb128 0x15
	.long	0x72
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	0x170
	.uleb128 0xb
	.long	.LASF73
	.byte	0x1
	.byte	0x8
	.byte	0x61
	.long	0x45c
	.uleb128 0xc
	.long	.LASF74
	.byte	0x8
	.byte	0x69
	.long	0x9b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x443
	.uleb128 0x7
	.long	.LASF75
	.byte	0x9
	.byte	0x37
	.long	0x3d3
	.uleb128 0x7
	.long	.LASF76
	.byte	0x9
	.byte	0x38
	.long	0x20a
	.uleb128 0x16
	.byte	0x18
	.byte	0x9
	.byte	0x3e
	.long	0x4c8
	.uleb128 0xc
	.long	.LASF77
	.byte	0x9
	.byte	0x40
	.long	0x398
	.byte	0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x9
	.byte	0x41
	.long	0x398
	.byte	0x4
	.uleb128 0xd
	.string	"gw"
	.byte	0x9
	.byte	0x42
	.long	0x398
	.byte	0x8
	.uleb128 0xc
	.long	.LASF57
	.byte	0x9
	.byte	0x44
	.long	0x79
	.byte	0xc
	.uleb128 0xc
	.long	.LASF78
	.byte	0x9
	.byte	0x45
	.long	0x1ff
	.byte	0x10
	.uleb128 0xc
	.long	.LASF53
	.byte	0x9
	.byte	0x46
	.long	0x349
	.byte	0x14
	.byte	0
	.uleb128 0x16
	.byte	0x8
	.byte	0x9
	.byte	0x48
	.long	0x4e9
	.uleb128 0xc
	.long	.LASF79
	.byte	0x9
	.byte	0x49
	.long	0x462
	.byte	0
	.uleb128 0xc
	.long	.LASF80
	.byte	0x9
	.byte	0x4a
	.long	0x46d
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x18
	.byte	0x9
	.byte	0x3d
	.long	0x508
	.uleb128 0x18
	.string	"add"
	.byte	0x9
	.byte	0x47
	.long	0x478
	.uleb128 0x19
	.long	.LASF81
	.byte	0x9
	.byte	0x4b
	.long	0x4c8
	.byte	0
	.uleb128 0xb
	.long	.LASF82
	.byte	0x20
	.byte	0x9
	.byte	0x3a
	.long	0x539
	.uleb128 0xc
	.long	.LASF83
	.byte	0x9
	.byte	0x3b
	.long	0x443
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x9
	.byte	0x3c
	.long	0x21f
	.byte	0x4
	.uleb128 0xd
	.string	"msg"
	.byte	0x9
	.byte	0x4c
	.long	0x4e9
	.byte	0x8
	.byte	0
	.uleb128 0x1a
	.long	.LASF98
	.byte	0x1
	.byte	0x67
	.long	0xc7
	.byte	0x1
	.long	0x55e
	.uleb128 0x1b
	.string	"m"
	.byte	0x1
	.byte	0x67
	.long	0x45c
	.uleb128 0x1c
	.string	"msg"
	.byte	0x1
	.byte	0x6b
	.long	0x55e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x508
	.uleb128 0x1d
	.long	.LASF84
	.byte	0x1
	.byte	0x3a
	.long	0xc7
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a2
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x3a
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x3e
	.long	0x55e
	.long	.LLST0
	.uleb128 0x20
	.long	.LVL2
	.long	0x7e2
	.byte	0
	.uleb128 0x1d
	.long	.LASF85
	.byte	0x1
	.byte	0x54
	.long	0xc7
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e0
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x54
	.long	0x45c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.string	"msg"
	.byte	0x1
	.byte	0x58
	.long	0x55e
	.long	.LLST1
	.uleb128 0x20
	.long	.LVL5
	.long	0x7ee
	.byte	0
	.uleb128 0x21
	.long	0x539
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x628
	.uleb128 0x22
	.long	0x549
	.long	.LLST2
	.uleb128 0x23
	.long	0x552
	.long	.LLST3
	.uleb128 0x24
	.long	.LBB4
	.long	.LBE4-.LBB4
	.uleb128 0x22
	.long	0x549
	.long	.LLST4
	.uleb128 0x24
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x25
	.long	0x552
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LASF86
	.byte	0x1
	.byte	0x7d
	.long	0xc7
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x6d5
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.byte	0x7d
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF77
	.byte	0x1
	.byte	0x7f
	.long	0x398
	.long	.LLST5
	.uleb128 0x28
	.long	.LASF52
	.byte	0x1
	.byte	0x7f
	.long	0x398
	.long	.LLST6
	.uleb128 0x29
	.string	"gw"
	.byte	0x1
	.byte	0x7f
	.long	0x398
	.long	.LLST7
	.uleb128 0x27
	.long	.LASF57
	.byte	0x1
	.byte	0x81
	.long	0x79
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.long	.LASF78
	.byte	0x1
	.byte	0x81
	.long	0x1ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x27
	.long	.LASF53
	.byte	0x1
	.byte	0x81
	.long	0x349
	.uleb128 0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0x83
	.long	0xc7
	.long	.LLST8
	.uleb128 0x2a
	.string	"msg"
	.byte	0x1
	.byte	0x84
	.long	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LVL17
	.long	0x7fa
	.uleb128 0x20
	.long	.LVL18
	.long	0x805
	.byte	0
	.uleb128 0x26
	.long	.LASF87
	.byte	0x1
	.byte	0xaa
	.long	0xc7
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x758
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.byte	0xaa
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF77
	.byte	0x1
	.byte	0xab
	.long	0x398
	.long	.LLST9
	.uleb128 0x28
	.long	.LASF52
	.byte	0x1
	.byte	0xac
	.long	0x398
	.long	.LLST10
	.uleb128 0x29
	.string	"gw"
	.byte	0x1
	.byte	0xad
	.long	0x398
	.long	.LLST11
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0xaf
	.long	0xc7
	.long	.LLST12
	.uleb128 0x2a
	.string	"msg"
	.byte	0x1
	.byte	0xb0
	.long	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LVL24
	.long	0x7fa
	.uleb128 0x20
	.long	.LVL25
	.long	0x805
	.byte	0
	.uleb128 0x26
	.long	.LASF88
	.byte	0x1
	.byte	0xce
	.long	0xc7
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x7cb
	.uleb128 0x27
	.long	.LASF50
	.byte	0x1
	.byte	0xce
	.long	0x21f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF79
	.byte	0x1
	.byte	0xce
	.long	0x462
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF80
	.byte	0x1
	.byte	0xcf
	.long	0x46d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1f
	.string	"err"
	.byte	0x1
	.byte	0xd1
	.long	0xc7
	.long	.LLST13
	.uleb128 0x2a
	.string	"msg"
	.byte	0x1
	.byte	0xd2
	.long	0x508
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x20
	.long	.LVL27
	.long	0x7fa
	.uleb128 0x20
	.long	.LVL28
	.long	0x805
	.byte	0
	.uleb128 0x2b
	.long	.LASF89
	.byte	0xa
	.byte	0x17
	.long	0x2c
	.uleb128 0x2c
	.long	.LASF90
	.byte	0x5
	.value	0x138
	.long	0x43e
	.uleb128 0x2d
	.long	.LASF91
	.long	.LASF91
	.byte	0x7
	.value	0x16b
	.uleb128 0x2d
	.long	.LASF92
	.long	.LASF92
	.byte	0x7
	.value	0x171
	.uleb128 0x2e
	.long	.LASF93
	.long	.LASF93
	.byte	0x8
	.byte	0x6d
	.uleb128 0x2f
	.long	.LASF99
	.long	.LASF99
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x13
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.long	.LVL2-1
	.value	0x1
	.byte	0x50
	.long	.LVL2-1
	.long	.LFE17
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x50
	.long	.LVL5-1
	.long	.LFE18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	.LVL11-1
	.long	.LFE19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x50
	.long	.LVL11-1
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL13
	.long	.LVL17-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL12
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL14
	.long	.LVL17-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17-1
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL18-1
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LFE20
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL20
	.long	.LVL24-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL19
	.long	.LVL21
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL21
	.long	.LVL24-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL19
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LVL24-1
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST12:
	.long	.LVL24
	.long	.LVL25-1
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LFE21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL27
	.long	.LVL28-1
	.value	0x1
	.byte	0x50
	.long	.LVL28
	.long	.LFE22
	.value	0x1
	.byte	0x50
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
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF82:
	.string	"netifapi_msg"
.LASF70:
	.string	"netif_linkoutput_fn"
.LASF30:
	.string	"ERR_CONN"
.LASF62:
	.string	"hwaddr"
.LASF32:
	.string	"ERR_ABRT"
.LASF75:
	.string	"netifapi_void_fn"
.LASF29:
	.string	"ERR_ISCONN"
.LASF69:
	.string	"netif_output_fn"
.LASF77:
	.string	"ipaddr"
.LASF5:
	.string	"short int"
.LASF53:
	.string	"input"
.LASF10:
	.string	"sizetype"
.LASF44:
	.string	"tot_len"
.LASF34:
	.string	"ERR_CLSD"
.LASF56:
	.string	"status_callback"
.LASF61:
	.string	"hwaddr_len"
.LASF58:
	.string	"client_data"
.LASF47:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF64:
	.string	"igmp_mac_filter"
.LASF84:
	.string	"netifapi_do_netif_add"
.LASF51:
	.string	"ip_addr"
.LASF91:
	.string	"netif_add"
.LASF23:
	.string	"ERR_RTE"
.LASF33:
	.string	"ERR_RST"
.LASF60:
	.string	"hostname"
.LASF92:
	.string	"netif_set_addr"
.LASF73:
	.string	"tcpip_api_call_data"
.LASF3:
	.string	"signed char"
.LASF87:
	.string	"netifapi_netif_set_addr"
.LASF55:
	.string	"linkoutput"
.LASF12:
	.string	"float"
.LASF1:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF83:
	.string	"call"
.LASF7:
	.string	"long int"
.LASF97:
	.string	"netif_mac_filter_action"
.LASF38:
	.string	"ip_addr_t"
.LASF41:
	.string	"addr"
.LASF28:
	.string	"ERR_ALREADY"
.LASF74:
	.string	"dummy"
.LASF89:
	.string	"aos_log_level"
.LASF72:
	.string	"netif_igmp_mac_filter_fn"
.LASF57:
	.string	"state"
.LASF79:
	.string	"voidfunc"
.LASF2:
	.string	"long double"
.LASF68:
	.string	"netif_input_fn"
.LASF4:
	.string	"unsigned char"
.LASF49:
	.string	"netif_init_fn"
.LASF24:
	.string	"ERR_INPROGRESS"
.LASF71:
	.string	"netif_status_callback_fn"
.LASF90:
	.string	"ip_addr_any"
.LASF46:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF45:
	.string	"type"
.LASF65:
	.string	"loop_first"
.LASF0:
	.string	"unsigned int"
.LASF94:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF31:
	.string	"ERR_IF"
.LASF20:
	.string	"ERR_MEM"
.LASF93:
	.string	"tcpip_api_call"
.LASF21:
	.string	"ERR_BUF"
.LASF67:
	.string	"loop_cnt_current"
.LASF48:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF95:
	.string	"src/netifapi.c"
.LASF18:
	.string	"err_t"
.LASF76:
	.string	"netifapi_errt_fn"
.LASF78:
	.string	"init"
.LASF15:
	.string	"s8_t"
.LASF88:
	.string	"netifapi_netif_common"
.LASF6:
	.string	"short unsigned int"
.LASF22:
	.string	"ERR_TIMEOUT"
.LASF36:
	.string	"_Bool"
.LASF39:
	.string	"ip4_addr"
.LASF26:
	.string	"ERR_WOULDBLOCK"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF81:
	.string	"common"
.LASF80:
	.string	"errtfunc"
.LASF37:
	.string	"ip4_addr_t"
.LASF50:
	.string	"netif"
.LASF98:
	.string	"netifapi_do_netif_common"
.LASF19:
	.string	"ERR_OK"
.LASF52:
	.string	"netmask"
.LASF17:
	.string	"u32_t"
.LASF66:
	.string	"loop_last"
.LASF16:
	.string	"u16_t"
.LASF27:
	.string	"ERR_USE"
.LASF63:
	.string	"name"
.LASF59:
	.string	"rs_count"
.LASF54:
	.string	"output"
.LASF96:
	.string	"/home/stone/Documents/pca"
.LASF35:
	.string	"ERR_ARG"
.LASF99:
	.string	"__stack_chk_fail"
.LASF14:
	.string	"u8_t"
.LASF85:
	.string	"netifapi_do_netif_set_addr"
.LASF86:
	.string	"netifapi_netif_add"
.LASF25:
	.string	"ERR_VAL"
.LASF43:
	.string	"payload"
.LASF42:
	.string	"next"
.LASF40:
	.string	"pbuf"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
