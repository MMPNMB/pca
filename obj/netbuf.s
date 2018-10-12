	.file	"netbuf.c"
	.text
.Ltext0:
	.section	.text.unlikely.netbuf_new,"ax",@progbits
.LCOLDB0:
	.section	.text.netbuf_new,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.netbuf_new
.Ltext_cold0:
	.section	.text.netbuf_new
	.globl	netbuf_new
	.type	netbuf_new, @function
netbuf_new:
.LFB17:
	.file 1 "kernel/protocols/net/api/netbuf.c"
	.loc 1 64 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	subl	$16, %esp
	.cfi_offset 7, -12
	.loc 1 67 0
	pushl	$5
	call	memp_malloc
.LVL0:
	.loc 1 68 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 67 0
	movl	%eax, %edx
.LVL1:
	.loc 1 68 0
	je	.L2
	.loc 1 69 0
	movl	$4, %ecx
	xorl	%eax, %eax
.LVL2:
	movl	%edx, %edi
	rep stosl
.L2:
	.loc 1 72 0
	movl	%edx, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	netbuf_new, .-netbuf_new
	.section	.text.unlikely.netbuf_new
.LCOLDE0:
	.section	.text.netbuf_new
.LHOTE0:
	.section	.text.unlikely.netbuf_delete,"ax",@progbits
.LCOLDB1:
	.section	.text.netbuf_delete,"ax",@progbits
.LHOTB1:
	.globl	netbuf_delete
	.type	netbuf_delete, @function
netbuf_delete:
.LFB18:
	.loc 1 82 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 82 0
	movl	8(%ebp), %ebx
	.loc 1 83 0
	testl	%ebx, %ebx
	je	.L8
	.loc 1 84 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 85 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL4:
	.loc 1 86 0
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	addl	$16, %esp
.L10:
	.loc 1 88 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$5
	call	memp_free
.LVL5:
	addl	$16, %esp
.L8:
	.loc 1 90 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	netbuf_delete, .-netbuf_delete
	.section	.text.unlikely.netbuf_delete
.LCOLDE1:
	.section	.text.netbuf_delete
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"netbuf_alloc: invalid buf"
	.section	.text.unlikely.netbuf_alloc,"ax",@progbits
.LCOLDB3:
	.section	.text.netbuf_alloc,"ax",@progbits
.LHOTB3:
	.globl	netbuf_alloc
	.type	netbuf_alloc, @function
netbuf_alloc:
.LFB19:
	.loc 1 103 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 103 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 104 0
	testl	%ebx, %ebx
	jne	.L19
	.loc 1 104 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC2
	call	bk_printf
.LVL7:
	.loc 1 104 0 discriminator 1
	addl	$16, %esp
	xorl	%eax, %eax
	jmp	.L20
.L19:
	.loc 1 107 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L21
	.loc 1 108 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL8:
	addl	$16, %esp
.L21:
	.loc 1 110 0
	movzwl	%si, %esi
	pushl	%eax
	pushl	$0
	pushl	%esi
	pushl	$0
	call	pbuf_alloc
.LVL9:
	movl	%eax, %edx
	movl	%eax, (%ebx)
	.loc 1 111 0
	addl	$16, %esp
	.loc 1 112 0
	xorl	%eax, %eax
	.loc 1 111 0
	testl	%edx, %edx
	je	.L20
	.loc 1 117 0
	movl	4(%edx), %eax
	.loc 1 116 0
	movl	%edx, 4(%ebx)
.L20:
	.loc 1 118 0
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
.LFE19:
	.size	netbuf_alloc, .-netbuf_alloc
	.section	.text.unlikely.netbuf_alloc
.LCOLDE3:
	.section	.text.netbuf_alloc
.LHOTE3:
	.section	.rodata.str1.1
.LC4:
	.string	"netbuf_free: invalid buf"
	.section	.text.unlikely.netbuf_free,"ax",@progbits
.LCOLDB5:
	.section	.text.netbuf_free,"ax",@progbits
.LHOTB5:
	.globl	netbuf_free
	.type	netbuf_free, @function
netbuf_free:
.LFB20:
	.loc 1 128 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 128 0
	movl	8(%ebp), %ebx
	.loc 1 129 0
	testl	%ebx, %ebx
	jne	.L28
	.loc 1 129 0 discriminator 1
	movl	$.LC4, 8(%ebp)
.LVL11:
	.loc 1 134 0 discriminator 1
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 129 0 discriminator 1
	jmp	bk_printf
.LVL12:
.L28:
	.cfi_restore_state
	.loc 1 130 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L29
	.loc 1 131 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL13:
	addl	$16, %esp
.L29:
	.loc 1 133 0
	movl	$0, 4(%ebx)
	movl	$0, (%ebx)
	.loc 1 134 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	netbuf_free, .-netbuf_free
	.section	.text.unlikely.netbuf_free
.LCOLDE5:
	.section	.text.netbuf_free
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"netbuf_ref: invalid buf"
	.section	.text.unlikely.netbuf_ref,"ax",@progbits
.LCOLDB7:
	.section	.text.netbuf_ref,"ax",@progbits
.LHOTB7:
	.globl	netbuf_ref
	.type	netbuf_ref, @function
netbuf_ref:
.LFB21:
	.loc 1 148 0
	.cfi_startproc
.LVL14:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 148 0
	movl	8(%ebp), %ebx
	movl	16(%ebp), %esi
	.loc 1 149 0
	testl	%ebx, %ebx
	jne	.L35
	.loc 1 149 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC6
	call	bk_printf
.LVL15:
	addl	$16, %esp
	movb	$-16, %al
	jmp	.L36
.L35:
	.loc 1 150 0
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L37
	.loc 1 151 0
	subl	$12, %esp
	pushl	%eax
	call	pbuf_free
.LVL16:
	addl	$16, %esp
.L37:
	.loc 1 153 0
	pushl	%eax
	pushl	$2
	pushl	$0
	pushl	$0
	call	pbuf_alloc
.LVL17:
	.loc 1 154 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 153 0
	movl	%eax, (%ebx)
	.loc 1 154 0
	jne	.L38
	.loc 1 155 0
	movl	$0, 4(%ebx)
	.loc 1 156 0
	movb	$-1, %al
	jmp	.L36
.L38:
	.loc 1 158 0
	movl	12(%ebp), %edx
	.loc 1 159 0
	movw	%si, 8(%eax)
	movw	%si, 10(%eax)
	.loc 1 158 0
	movl	%edx, 4(%eax)
	.loc 1 160 0
	movl	%eax, 4(%ebx)
	.loc 1 161 0
	xorl	%eax, %eax
.L36:
	.loc 1 162 0
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
.LFE21:
	.size	netbuf_ref, .-netbuf_ref
	.section	.text.unlikely.netbuf_ref
.LCOLDE7:
	.section	.text.netbuf_ref
.LHOTE7:
	.section	.rodata.str1.1
.LC8:
	.string	"netbuf_chain: invalid head"
.LC9:
	.string	"netbuf_chain: invalid tail"
	.section	.text.unlikely.netbuf_chain,"ax",@progbits
.LCOLDB10:
	.section	.text.netbuf_chain,"ax",@progbits
.LHOTB10:
	.globl	netbuf_chain
	.type	netbuf_chain, @function
netbuf_chain:
.LFB22:
	.loc 1 173 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 173 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %esi
	.loc 1 174 0
	testl	%ebx, %ebx
	jne	.L44
	.loc 1 174 0 discriminator 1
	movl	$.LC8, 8(%ebp)
.LVL19:
	jmp	.L47
.L44:
	.loc 1 175 0
	testl	%esi, %esi
	jne	.L45
	.loc 1 175 0 discriminator 1
	movl	$.LC9, 8(%ebp)
.LVL20:
.L47:
	.loc 1 179 0 discriminator 1
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL21:
	popl	%esi
	.cfi_restore 6
.LVL22:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 175 0 discriminator 1
	jmp	bk_printf
.LVL23:
.L45:
	.cfi_restore_state
	.loc 1 176 0
	pushl	%eax
	pushl	%eax
	pushl	(%esi)
	pushl	(%ebx)
	call	pbuf_cat
.LVL24:
	.loc 1 177 0
	movl	(%ebx), %eax
	.loc 1 178 0
	addl	$16, %esp
	.loc 1 177 0
	movl	%eax, 4(%ebx)
	.loc 1 178 0
	movl	%esi, 12(%ebp)
	movl	$5, 8(%ebp)
	.loc 1 179 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL25:
	popl	%esi
	.cfi_restore 6
.LVL26:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 178 0
	jmp	memp_free
.LVL27:
	.cfi_endproc
.LFE22:
	.size	netbuf_chain, .-netbuf_chain
	.section	.text.unlikely.netbuf_chain
.LCOLDE10:
	.section	.text.netbuf_chain
.LHOTE10:
	.section	.rodata.str1.1
.LC11:
	.string	"netbuf_data: invalid buf"
.LC12:
	.string	"netbuf_data: invalid dataptr"
.LC13:
	.string	"netbuf_data: invalid len"
	.section	.text.unlikely.netbuf_data,"ax",@progbits
.LCOLDB14:
	.section	.text.netbuf_data,"ax",@progbits
.LHOTB14:
	.globl	netbuf_data
	.type	netbuf_data, @function
netbuf_data:
.LFB23:
	.loc 1 193 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 193 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ebx
	movl	16(%ebp), %ecx
	.loc 1 194 0
	testl	%edx, %edx
	jne	.L49
	.loc 1 194 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC11
	jmp	.L55
.L49:
	.loc 1 195 0
	testl	%ebx, %ebx
	jne	.L51
	.loc 1 195 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC12
.LVL29:
.L55:
	call	bk_printf
.LVL30:
	addl	$16, %esp
	movb	$-16, %al
	jmp	.L50
.LVL31:
.L51:
	.loc 1 196 0
	testl	%ecx, %ecx
	jne	.L52
	.loc 1 196 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC13
	jmp	.L55
.L52:
	.loc 1 198 0
	movl	4(%edx), %esi
	.loc 1 199 0
	movb	$-2, %al
	.loc 1 198 0
	testl	%esi, %esi
	je	.L50
	.loc 1 201 0
	movl	4(%esi), %eax
	movl	%eax, (%ebx)
	.loc 1 202 0
	movl	4(%edx), %eax
	movw	10(%eax), %ax
	movw	%ax, (%ecx)
	.loc 1 203 0
	xorl	%eax, %eax
.LVL32:
.L50:
	.loc 1 204 0
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
.LFE23:
	.size	netbuf_data, .-netbuf_data
	.section	.text.unlikely.netbuf_data
.LCOLDE14:
	.section	.text.netbuf_data
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"netbuf_next: invalid buf"
	.section	.text.unlikely.netbuf_next,"ax",@progbits
.LCOLDB16:
	.section	.text.netbuf_next,"ax",@progbits
.LHOTB16:
	.globl	netbuf_next
	.type	netbuf_next, @function
netbuf_next:
.LFB24:
	.loc 1 219 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 219 0
	movl	8(%ebp), %ecx
	.loc 1 220 0
	testl	%ecx, %ecx
	jne	.L57
	.loc 1 220 0 discriminator 1
	subl	$12, %esp
	pushl	$.LC15
	call	bk_printf
.LVL34:
	addl	$16, %esp
	movb	$-1, %al
	jmp	.L58
.L57:
	.loc 1 221 0
	movl	4(%ecx), %eax
	movl	(%eax), %edx
	.loc 1 222 0
	movb	$-1, %al
	.loc 1 221 0
	testl	%edx, %edx
	je	.L58
	.loc 1 220 0
	cmpl	$0, (%edx)
	.loc 1 224 0
	movl	%edx, 4(%ecx)
	.loc 1 220 0
	sete	%al
.L58:
	.loc 1 229 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	netbuf_next, .-netbuf_next
	.section	.text.unlikely.netbuf_next
.LCOLDE16:
	.section	.text.netbuf_next
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"netbuf_first: invalid buf"
	.section	.text.unlikely.netbuf_first,"ax",@progbits
.LCOLDB18:
	.section	.text.netbuf_first,"ax",@progbits
.LHOTB18:
	.globl	netbuf_first
	.type	netbuf_first, @function
netbuf_first:
.LFB25:
	.loc 1 241 0
	.cfi_startproc
.LVL35:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 241 0
	movl	8(%ebp), %eax
	.loc 1 242 0
	testl	%eax, %eax
	jne	.L62
	.loc 1 242 0 discriminator 1
	movl	$.LC17, 8(%ebp)
.LVL36:
	.loc 1 244 0 discriminator 1
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 242 0 discriminator 1
	jmp	bk_printf
.LVL37:
.L62:
	.cfi_restore_state
	.loc 1 243 0
	movl	(%eax), %edx
	movl	%edx, 4(%eax)
	.loc 1 244 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	netbuf_first, .-netbuf_first
	.section	.text.unlikely.netbuf_first
.LCOLDE18:
	.section	.text.netbuf_first
.LHOTE18:
	.text
.Letext0:
	.section	.text.unlikely.netbuf_new
.Letext_cold0:
	.file 2 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 3 "./kernel/protocols/net/include/lwip/err.h"
	.file 4 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 5 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 6 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 7 "./kernel/protocols/net/include/lwip/netbuf.h"
	.file 8 "./kernel/protocols/net/include/lwip/memp.h"
	.file 9 "././platform/mcu/moc108/include/driver/uart_pub.h"
	.file 10 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5ab
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF93
	.byte	0xc
	.long	.LASF94
	.long	.LASF95
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x5
	.long	.LASF14
	.byte	0x2
	.byte	0x31
	.long	0x48
	.uleb128 0x5
	.long	.LASF15
	.byte	0x2
	.byte	0x32
	.long	0x41
	.uleb128 0x5
	.long	.LASF16
	.byte	0x2
	.byte	0x33
	.long	0x56
	.uleb128 0x5
	.long	.LASF17
	.byte	0x2
	.byte	0x35
	.long	0x64
	.uleb128 0x5
	.long	.LASF18
	.byte	0x3
	.byte	0x39
	.long	0x9b
	.uleb128 0x6
	.byte	0x4
	.long	0x25
	.byte	0x3
	.byte	0x3d
	.long	0x13a
	.uleb128 0x7
	.long	.LASF19
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.sleb128 -1
	.uleb128 0x8
	.long	.LASF21
	.sleb128 -2
	.uleb128 0x8
	.long	.LASF22
	.sleb128 -3
	.uleb128 0x8
	.long	.LASF23
	.sleb128 -4
	.uleb128 0x8
	.long	.LASF24
	.sleb128 -5
	.uleb128 0x8
	.long	.LASF25
	.sleb128 -6
	.uleb128 0x8
	.long	.LASF26
	.sleb128 -7
	.uleb128 0x8
	.long	.LASF27
	.sleb128 -8
	.uleb128 0x8
	.long	.LASF28
	.sleb128 -9
	.uleb128 0x8
	.long	.LASF29
	.sleb128 -10
	.uleb128 0x8
	.long	.LASF30
	.sleb128 -11
	.uleb128 0x8
	.long	.LASF31
	.sleb128 -12
	.uleb128 0x8
	.long	.LASF32
	.sleb128 -13
	.uleb128 0x8
	.long	.LASF33
	.sleb128 -14
	.uleb128 0x8
	.long	.LASF34
	.sleb128 -15
	.uleb128 0x8
	.long	.LASF35
	.sleb128 -16
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.byte	0x4
	.byte	0x48
	.long	0x165
	.uleb128 0x7
	.long	.LASF36
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x1
	.uleb128 0x7
	.long	.LASF38
	.byte	0x2
	.uleb128 0x7
	.long	.LASF39
	.byte	0x3
	.uleb128 0x7
	.long	.LASF40
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.byte	0x4
	.byte	0x69
	.long	0x18a
	.uleb128 0x7
	.long	.LASF41
	.byte	0
	.uleb128 0x7
	.long	.LASF42
	.byte	0x1
	.uleb128 0x7
	.long	.LASF43
	.byte	0x2
	.uleb128 0x7
	.long	.LASF44
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.long	.LASF50
	.byte	0x10
	.byte	0x4
	.byte	0x9d
	.long	0x1eb
	.uleb128 0xa
	.long	.LASF45
	.byte	0x4
	.byte	0x9f
	.long	0x1eb
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x4
	.byte	0xa2
	.long	0x79
	.byte	0x4
	.uleb128 0xa
	.long	.LASF47
	.byte	0x4
	.byte	0xab
	.long	0xa6
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x4
	.byte	0xae
	.long	0xa6
	.byte	0xa
	.uleb128 0xa
	.long	.LASF48
	.byte	0x4
	.byte	0xb1
	.long	0x90
	.byte	0xc
	.uleb128 0xa
	.long	.LASF49
	.byte	0x4
	.byte	0xb4
	.long	0x90
	.byte	0xd
	.uleb128 0xb
	.string	"ref"
	.byte	0x4
	.byte	0xc2
	.long	0xa6
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x18a
	.uleb128 0x9
	.long	.LASF51
	.byte	0x8
	.byte	0x4
	.byte	0xcb
	.long	0x216
	.uleb128 0xa
	.long	.LASF45
	.byte	0x4
	.byte	0xcd
	.long	0x1eb
	.byte	0
	.uleb128 0xa
	.long	.LASF46
	.byte	0x4
	.byte	0xd0
	.long	0x216
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x21c
	.uleb128 0xd
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF52
	.uleb128 0x9
	.long	.LASF53
	.byte	0x4
	.byte	0x5
	.byte	0x35
	.long	0x23d
	.uleb128 0xa
	.long	.LASF54
	.byte	0x5
	.byte	0x36
	.long	0xb1
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF55
	.byte	0x5
	.byte	0x49
	.long	0x224
	.uleb128 0x5
	.long	.LASF56
	.byte	0x6
	.byte	0xe1
	.long	0x23d
	.uleb128 0x9
	.long	.LASF57
	.byte	0x10
	.byte	0x7
	.byte	0x3c
	.long	0x28e
	.uleb128 0xb
	.string	"p"
	.byte	0x7
	.byte	0x3d
	.long	0x1eb
	.byte	0
	.uleb128 0xb
	.string	"ptr"
	.byte	0x7
	.byte	0x3d
	.long	0x1eb
	.byte	0x4
	.uleb128 0xa
	.long	.LASF54
	.byte	0x7
	.byte	0x3e
	.long	0x248
	.byte	0x8
	.uleb128 0xa
	.long	.LASF58
	.byte	0x7
	.byte	0x3f
	.long	0xa6
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2c
	.byte	0x8
	.byte	0x32
	.long	0x2f5
	.uleb128 0x7
	.long	.LASF59
	.byte	0
	.uleb128 0x7
	.long	.LASF60
	.byte	0x1
	.uleb128 0x7
	.long	.LASF61
	.byte	0x2
	.uleb128 0x7
	.long	.LASF62
	.byte	0x3
	.uleb128 0x7
	.long	.LASF63
	.byte	0x4
	.uleb128 0x7
	.long	.LASF64
	.byte	0x5
	.uleb128 0x7
	.long	.LASF65
	.byte	0x6
	.uleb128 0x7
	.long	.LASF66
	.byte	0x7
	.uleb128 0x7
	.long	.LASF67
	.byte	0x8
	.uleb128 0x7
	.long	.LASF68
	.byte	0x9
	.uleb128 0x7
	.long	.LASF69
	.byte	0xa
	.uleb128 0x7
	.long	.LASF70
	.byte	0xb
	.uleb128 0x7
	.long	.LASF71
	.byte	0xc
	.uleb128 0x7
	.long	.LASF72
	.byte	0xd
	.uleb128 0x7
	.long	.LASF73
	.byte	0xe
	.byte	0
	.uleb128 0xe
	.long	.LASF74
	.byte	0x1
	.byte	0x3f
	.long	0x327
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x327
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.byte	0x41
	.long	0x327
	.long	.LLST0
	.uleb128 0x10
	.long	.LVL0
	.long	0x56a
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x253
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.byte	0x51
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x363
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x51
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LVL4
	.long	0x575
	.uleb128 0x10
	.long	.LVL5
	.long	0x581
	.byte	0
	.uleb128 0xe
	.long	.LASF75
	.byte	0x1
	.byte	0x66
	.long	0x79
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b4
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x66
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.byte	0x66
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x10
	.long	.LVL7
	.long	0x58c
	.uleb128 0x10
	.long	.LVL8
	.long	0x575
	.uleb128 0x10
	.long	.LVL9
	.long	0x597
	.byte	0
	.uleb128 0x11
	.long	.LASF78
	.byte	0x1
	.byte	0x7f
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x3eb
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0x7f
	.long	0x327
	.long	.LLST1
	.uleb128 0x15
	.long	.LVL12
	.long	0x58c
	.uleb128 0x10
	.long	.LVL13
	.long	0x575
	.byte	0
	.uleb128 0xe
	.long	.LASF79
	.byte	0x1
	.byte	0x93
	.long	0xbc
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x44a
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0x93
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.long	.LASF80
	.byte	0x1
	.byte	0x93
	.long	0x216
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1
	.byte	0x93
	.long	0xa6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x10
	.long	.LVL15
	.long	0x58c
	.uleb128 0x10
	.long	.LVL16
	.long	0x575
	.uleb128 0x10
	.long	.LVL17
	.long	0x597
	.byte	0
	.uleb128 0x11
	.long	.LASF81
	.byte	0x1
	.byte	0xac
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x499
	.uleb128 0x16
	.long	.LASF82
	.byte	0x1
	.byte	0xac
	.long	0x327
	.long	.LLST2
	.uleb128 0x16
	.long	.LASF83
	.byte	0x1
	.byte	0xac
	.long	0x327
	.long	.LLST3
	.uleb128 0x15
	.long	.LVL23
	.long	0x58c
	.uleb128 0x10
	.long	.LVL24
	.long	0x5a2
	.uleb128 0x15
	.long	.LVL27
	.long	0x581
	.byte	0
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.byte	0xc0
	.long	0xbc
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e9
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xc0
	.long	0x327
	.long	.LLST4
	.uleb128 0x16
	.long	.LASF80
	.byte	0x1
	.byte	0xc0
	.long	0x4e9
	.long	.LLST5
	.uleb128 0x14
	.string	"len"
	.byte	0x1
	.byte	0xc0
	.long	0x4ef
	.long	.LLST6
	.uleb128 0x10
	.long	.LVL30
	.long	0x58c
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.long	0x79
	.uleb128 0xc
	.byte	0x4
	.long	0xa6
	.uleb128 0xe
	.long	.LASF85
	.byte	0x1
	.byte	0xda
	.long	0x9b
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x526
	.uleb128 0x12
	.string	"buf"
	.byte	0x1
	.byte	0xda
	.long	0x327
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x10
	.long	.LVL34
	.long	0x58c
	.byte	0
	.uleb128 0x11
	.long	.LASF86
	.byte	0x1
	.byte	0xf0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x55f
	.uleb128 0x14
	.string	"buf"
	.byte	0x1
	.byte	0xf0
	.long	0x327
	.long	.LLST7
	.uleb128 0x17
	.long	.LVL37
	.long	0x58c
	.uleb128 0x18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	.LC17
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LASF96
	.byte	0xa
	.byte	0x17
	.long	0x2c
	.uleb128 0x1a
	.long	.LASF87
	.long	.LASF87
	.byte	0x8
	.byte	0x91
	.uleb128 0x1b
	.long	.LASF88
	.long	.LASF88
	.byte	0x4
	.value	0x109
	.uleb128 0x1a
	.long	.LASF89
	.long	.LASF89
	.byte	0x8
	.byte	0x93
	.uleb128 0x1a
	.long	.LASF90
	.long	.LASF90
	.byte	0x9
	.byte	0x3d
	.uleb128 0x1a
	.long	.LASF91
	.long	.LASF91
	.byte	0x4
	.byte	0xfa
	.uleb128 0x1b
	.long	.LASF92
	.long	.LASF92
	.byte	0x4
	.value	0x10b
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.long	.LVL2
	.long	.LFE17
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL12
	.long	.LFE20
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL19
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	.LVL23
	.long	.LVL25
	.value	0x1
	.byte	0x53
	.long	.LVL25
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL18
	.long	.LVL20
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL20
	.long	.LVL22
	.value	0x1
	.byte	0x56
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL23
	.long	.LVL26
	.value	0x1
	.byte	0x56
	.long	.LVL26
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL28
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x52
	.long	.LVL32
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL28
	.long	.LVL29
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL29
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	.LVL32
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL28
	.long	.LVL31
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x51
	.long	.LVL32
	.long	.LFE23
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST7:
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LFE25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
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
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
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
	.long	.LFB23
	.long	.LFE23
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"MEMP_PBUF"
.LASF90:
	.string	"bk_printf"
.LASF94:
	.string	"src/netbuf.c"
.LASF89:
	.string	"memp_free"
.LASF84:
	.string	"netbuf_data"
.LASF75:
	.string	"netbuf_alloc"
.LASF32:
	.string	"ERR_ABRT"
.LASF20:
	.string	"ERR_MEM"
.LASF29:
	.string	"ERR_ISCONN"
.LASF5:
	.string	"short int"
.LASF64:
	.string	"MEMP_NETBUF"
.LASF63:
	.string	"MEMP_TCP_SEG"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"ERR_CLSD"
.LASF67:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF69:
	.string	"MEMP_SYS_TIMEOUT"
.LASF82:
	.string	"head"
.LASF41:
	.string	"PBUF_RAM"
.LASF88:
	.string	"pbuf_free"
.LASF62:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF33:
	.string	"ERR_RST"
.LASF40:
	.string	"PBUF_RAW"
.LASF24:
	.string	"ERR_INPROGRESS"
.LASF70:
	.string	"MEMP_NETDB"
.LASF51:
	.string	"pbuf_rom"
.LASF12:
	.string	"float"
.LASF1:
	.string	"long long int"
.LASF85:
	.string	"netbuf_next"
.LASF79:
	.string	"netbuf_ref"
.LASF57:
	.string	"netbuf"
.LASF22:
	.string	"ERR_TIMEOUT"
.LASF7:
	.string	"long int"
.LASF56:
	.string	"ip_addr_t"
.LASF54:
	.string	"addr"
.LASF28:
	.string	"ERR_ALREADY"
.LASF96:
	.string	"aos_log_level"
.LASF92:
	.string	"pbuf_cat"
.LASF4:
	.string	"unsigned char"
.LASF2:
	.string	"long double"
.LASF83:
	.string	"tail"
.LASF23:
	.string	"ERR_RTE"
.LASF30:
	.string	"ERR_CONN"
.LASF73:
	.string	"MEMP_MAX"
.LASF3:
	.string	"signed char"
.LASF49:
	.string	"flags"
.LASF9:
	.string	"long long unsigned int"
.LASF48:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF93:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF31:
	.string	"ERR_IF"
.LASF68:
	.string	"MEMP_IGMP_GROUP"
.LASF21:
	.string	"ERR_BUF"
.LASF44:
	.string	"PBUF_POOL"
.LASF78:
	.string	"netbuf_free"
.LASF18:
	.string	"err_t"
.LASF11:
	.string	"char"
.LASF39:
	.string	"PBUF_RAW_TX"
.LASF15:
	.string	"s8_t"
.LASF66:
	.string	"MEMP_TCPIP_MSG_API"
.LASF6:
	.string	"short unsigned int"
.LASF91:
	.string	"pbuf_alloc"
.LASF52:
	.string	"_Bool"
.LASF53:
	.string	"ip4_addr"
.LASF26:
	.string	"ERR_WOULDBLOCK"
.LASF81:
	.string	"netbuf_chain"
.LASF36:
	.string	"PBUF_TRANSPORT"
.LASF37:
	.string	"PBUF_IP"
.LASF58:
	.string	"port"
.LASF86:
	.string	"netbuf_first"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF59:
	.string	"MEMP_RAW_PCB"
.LASF55:
	.string	"ip4_addr_t"
.LASF76:
	.string	"size"
.LASF77:
	.string	"netbuf_delete"
.LASF19:
	.string	"ERR_OK"
.LASF14:
	.string	"u8_t"
.LASF17:
	.string	"u32_t"
.LASF16:
	.string	"u16_t"
.LASF72:
	.string	"MEMP_PBUF_POOL"
.LASF27:
	.string	"ERR_USE"
.LASF74:
	.string	"netbuf_new"
.LASF65:
	.string	"MEMP_NETCONN"
.LASF80:
	.string	"dataptr"
.LASF47:
	.string	"tot_len"
.LASF61:
	.string	"MEMP_TCP_PCB"
.LASF95:
	.string	"/home/stone/Documents/pca"
.LASF35:
	.string	"ERR_ARG"
.LASF87:
	.string	"memp_malloc"
.LASF60:
	.string	"MEMP_UDP_PCB"
.LASF43:
	.string	"PBUF_REF"
.LASF25:
	.string	"ERR_VAL"
.LASF42:
	.string	"PBUF_ROM"
.LASF46:
	.string	"payload"
.LASF45:
	.string	"next"
.LASF50:
	.string	"pbuf"
.LASF38:
	.string	"PBUF_LINK"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
