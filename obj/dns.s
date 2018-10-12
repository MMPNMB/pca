	.file	"dns.c"
	.text
.Ltext0:
	.section	.text.unlikely.dns_call_found,"ax",@progbits
.LCOLDB0:
	.section	.text.dns_call_found,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.dns_call_found
.Ltext_cold0:
	.section	.text.dns_call_found
	.type	dns_call_found, @function
dns_call_found:
.LFB33:
	.file 1 "kernel/protocols/net/core/dns.c"
	.loc 1 827 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 848 0
	movzbl	%al, %esi
	.loc 1 827 0
	pushl	%ebx
	.cfi_offset 3, -20
	movl	$dns_requests, %ebx
	.loc 1 848 0
	imull	$272, %esi, %esi
	.loc 1 827 0
	subl	$28, %esp
	.loc 1 827 0
	movb	%al, -29(%ebp)
.LVL1:
.L3:
	.loc 1 847 0
	movl	(%ebx), %edi
	testl	%edi, %edi
	movl	%edi, -28(%ebp)
	je	.L2
	.loc 1 847 0 is_stmt 0 discriminator 1
	movb	-29(%ebp), %cl
	cmpb	%cl, 8(%ebx)
	jne	.L2
	.loc 1 848 0 is_stmt 1
	leal	dns_table+16(%esi), %edi
	movl	%eax, -40(%ebp)
	movl	%edx, -36(%ebp)
	pushl	%eax
	movl	-28(%ebp), %eax
	pushl	4(%ebx)
	pushl	%edx
	pushl	%edi
	call	*%eax
.LVL2:
	.loc 1 850 0
	movl	-40(%ebp), %eax
	movl	-36(%ebp), %edx
	addl	$16, %esp
	movl	$0, (%ebx)
.L2:
	addl	$12, %ebx
	.loc 1 846 0 discriminator 2
	cmpl	$dns_requests+24, %ebx
	jne	.L3
.LVL3:
	.loc 1 862 0
	testb	%al, %al
	movzbl	%al, %edx
	je	.L4
	.loc 1 865 0
	cmpb	$2, dns_table+10
	jne	.L4
	.loc 1 866 0
	imull	$272, %edx, %ecx
	movb	dns_table+15(%ecx), %cl
	cmpb	%cl, dns_table+15
	je	.L5
.L4:
.LVL4:
	.loc 1 862 0
	decb	%al
.LVL5:
	je	.L6
	.loc 1 865 0
	cmpb	$2, dns_table+282
	jne	.L6
	.loc 1 866 0
	imull	$272, %edx, %eax
	movb	dns_table+15(%eax), %al
	cmpb	%al, dns_table+287
	jne	.L6
.LVL6:
.L5:
	.loc 1 868 0
	imull	$272, %edx, %eax
	movb	$2, dns_table+15(%eax)
.L6:
	.loc 1 873 0
	imull	$272, %edx, %edx
	movzbl	dns_table+15(%edx), %eax
	leal	dns_table(%edx), %ebx
	cmpb	$1, %al
	ja	.L1
	.loc 1 875 0
	subl	$12, %esp
	pushl	dns_pcbs(,%eax,4)
	call	udp_remove
.LVL7:
	.loc 1 876 0
	movzbl	15(%ebx), %eax
	.loc 1 877 0
	addl	$16, %esp
	movb	$2, 15(%ebx)
	.loc 1 876 0
	movl	$0, dns_pcbs(,%eax,4)
.L1:
	.loc 1 880 0
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
.LFE33:
	.size	dns_call_found, .-dns_call_found
	.section	.text.unlikely.dns_call_found
.LCOLDE0:
	.section	.text.dns_call_found
.LHOTE0:
	.section	.text.unlikely.dns_send,"ax",@progbits
.LCOLDB1:
	.section	.text.dns_send,"ax",@progbits
.LHOTB1:
	.type	dns_send, @function
dns_send:
.LFB30:
	.loc 1 668 0
	.cfi_startproc
.LVL8:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 677 0
	movzbl	%al, %eax
	.loc 1 668 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$60, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 677 0
	movl	%eax, -60(%ebp)
.LVL9:
	.loc 1 682 0
	imull	$272, %eax, %eax
.LVL10:
	.loc 1 668 0
	movl	%gs:20, %ebx
	movl	%ebx, -28(%ebp)
	xorl	%ebx, %ebx
	.loc 1 682 0
	leal	dns_table(%eax), %esi
.LVL11:
	movzbl	11(%esi), %edx
	cmpl	$0, dns_servers(,%edx,4)
	jne	.L15
	.loc 1 685 0
	movl	-60(%ebp), %eax
	xorl	%edx, %edx
	call	dns_call_found
.LVL12:
	.loc 1 687 0
	movb	$0, 10(%esi)
	.loc 1 688 0
	xorl	%eax, %eax
	jmp	.L16
.L15:
	.loc 1 692 0
	addl	$dns_table+16, %eax
	orl	$-1, %ecx
	movl	%eax, -64(%ebp)
	movl	-64(%ebp), %edi
	xorl	%eax, %eax
	repnz scasb
	pushl	%ebx
	pushl	$0
	movl	%ecx, %eax
	notl	%eax
	addl	$17, %eax
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$0
	call	pbuf_alloc
.LVL13:
	movl	%eax, %ebx
.LVL14:
	.loc 1 694 0
	addl	$16, %esp
	.loc 1 742 0
	movb	$-1, %al
.LVL15:
	.loc 1 694 0
	testl	%ebx, %ebx
	je	.L16
	.loc 1 696 0
	leal	-40(%ebp), %edx
	xorl	%eax, %eax
	movl	$3, %ecx
	.loc 1 697 0
	subl	$12, %esp
	.loc 1 696 0
	movl	%edx, %edi
	movl	%edx, -68(%ebp)
	rep stosl
	.loc 1 697 0
	movzwl	8(%esi), %eax
	.loc 1 705 0
	movl	$12, %esi
.LVL16:
	.loc 1 697 0
	pushl	%eax
	call	lwip_htons
.LVL17:
	.loc 1 700 0
	movl	-68(%ebp), %edx
	addl	$12, %esp
	.loc 1 697 0
	movw	%ax, -40(%ebp)
	.loc 1 700 0
	pushl	$12
	.loc 1 698 0
	movb	$1, -38(%ebp)
	.loc 1 699 0
	movw	$256, -36(%ebp)
	.loc 1 700 0
	pushl	%edx
	pushl	%ebx
	call	pbuf_take
.LVL18:
	.loc 1 702 0
	movl	-64(%ebp), %edi
	addl	$16, %esp
	decl	%edi
.LVL19:
.L20:
	.loc 1 707 0
	leal	1(%edi), %ecx
.LVL20:
	.loc 1 709 0
	xorl	%edx, %edx
	.loc 1 707 0
	movl	%ecx, %edi
.LVL21:
.L17:
	.loc 1 709 0 discriminator 1
	movb	(%edi), %al
	cmpb	$46, %al
	je	.L23
	testb	%al, %al
	je	.L23
	.loc 1 710 0 discriminator 3
	incl	%edx
.LVL22:
	.loc 1 709 0 discriminator 3
	incl	%edi
.LVL23:
	jmp	.L17
.L23:
	.loc 1 712 0
	movl	%edi, %eax
	movl	%ecx, -72(%ebp)
	.loc 1 713 0
	movb	%dl, -68(%ebp)
	.loc 1 712 0
	subl	%ecx, %eax
.LVL24:
	.loc 1 713 0
	pushl	%ecx
	.loc 1 712 0
	movl	%eax, -64(%ebp)
.LVL25:
	.loc 1 713 0
	movzbl	%dl, %eax
	pushl	%eax
	movzwl	%si, %eax
	pushl	%eax
	pushl	%ebx
	call	pbuf_put_at
.LVL26:
	.loc 1 714 0
	leal	1(%esi), %eax
	movl	-72(%ebp), %ecx
	movzwl	%ax, %eax
	pushl	%eax
	movzwl	-64(%ebp), %eax
	pushl	%eax
	pushl	%ecx
	pushl	%ebx
	call	pbuf_take_at
.LVL27:
	.loc 1 715 0
	movzbl	-68(%ebp), %edx
	.loc 1 716 0
	addl	$32, %esp
	.loc 1 715 0
	addl	%esi, %edx
	.loc 1 716 0
	cmpb	$0, (%edi)
	.loc 1 715 0
	leal	1(%edx), %esi
.LVL28:
	.loc 1 716 0
	jne	.L20
	.loc 1 717 0
	movzwl	%si, %esi
	pushl	%eax
	pushl	$0
	pushl	%esi
	pushl	%ebx
	movl	%edx, -64(%ebp)
.LVL29:
	call	pbuf_put_at
.LVL30:
	.loc 1 727 0
	movl	-64(%ebp), %edx
	leal	-44(%ebp), %eax
	.loc 1 724 0
	movw	$256, -44(%ebp)
	.loc 1 726 0
	movw	$256, -42(%ebp)
	.loc 1 727 0
	addl	$2, %edx
	movzwl	%dx, %edx
	pushl	%edx
	pushl	$4
	pushl	%eax
	pushl	%ebx
	call	pbuf_take_at
.LVL31:
	.loc 1 737 0
	imull	$272, -60(%ebp), %eax
	addl	$32, %esp
	pushl	$53
	movzbl	dns_table+11(%eax), %edx
	addl	$dns_table, %eax
	leal	dns_servers(,%edx,4), %edx
	pushl	%edx
	pushl	%ebx
	movzbl	15(%eax), %eax
	pushl	dns_pcbs(,%eax,4)
	call	udp_sendto
.LVL32:
	movl	%eax, %esi
.LVL33:
	.loc 1 740 0
	movl	%ebx, (%esp)
	call	pbuf_free
.LVL34:
	addl	$16, %esp
	.loc 1 737 0
	movl	%esi, %eax
.LVL35:
.L16:
	.loc 1 746 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
	je	.L21
	call	__stack_chk_fail
.LVL36:
.L21:
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
.LVL37:
	ret
	.cfi_endproc
.LFE30:
	.size	dns_send, .-dns_send
	.section	.text.unlikely.dns_send
.LCOLDE1:
	.section	.text.dns_send
.LHOTE1:
	.section	.text.unlikely.dns_check_entry,"ax",@progbits
.LCOLDB2:
	.section	.text.dns_check_entry,"ax",@progbits
.LHOTB2:
	.type	dns_check_entry, @function
dns_check_entry:
.LFB35:
	.loc 1 915 0
	.cfi_startproc
.LVL38:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	.loc 1 917 0
	movzbl	%al, %esi
.LVL39:
	.loc 1 922 0
	imull	$272, %esi, %edx
	.loc 1 915 0
	pushl	%ebx
	.cfi_offset 3, -16
	.loc 1 922 0
	leal	dns_table(%edx), %ebx
.LVL40:
	movb	10(%ebx), %al
.LVL41:
	cmpb	$2, %al
	je	.L31
	cmpb	$3, %al
	je	.L32
	decb	%al
	jne	.L29
.L46:
.LBB5:
.LBB6:
	.loc 1 890 0
	call	rand
.LVL42:
	.loc 1 894 0
	cmpb	$2, dns_table+10
	.loc 1 890 0
	movl	%eax, %edx
.LVL43:
	.loc 1 894 0
	jne	.L34
	cmpw	dns_table+8, %ax
	je	.L46
.L34:
.LVL44:
	cmpb	$2, dns_table+282
	je	.L35
.L36:
.LVL45:
.LBE6:
.LBE5:
	.loc 1 925 0
	imull	$272, %esi, %eax
	movw	%dx, dns_table+8(%eax)
	.loc 1 926 0
	movb	$2, dns_table+10(%eax)
	.loc 1 927 0
	movb	$0, dns_table+11(%eax)
	.loc 1 928 0
	movb	$1, dns_table+12(%eax)
	.loc 1 929 0
	movb	$0, dns_table+13(%eax)
	jmp	.L39
.LVL46:
.L35:
.LBB8:
.LBB7:
	.loc 1 894 0
	cmpw	dns_table+280, %ax
	jne	.L36
	jmp	.L46
.LVL47:
.L31:
.LBE7:
.LBE8:
	.loc 1 939 0
	decb	12(%ebx)
	jne	.L29
	.loc 1 940 0
	movzbl	num_dns, %ecx
	movb	13(%ebx), %al
	.loc 1 941 0
	movb	$1, 12(%ebx)
	.loc 1 940 0
	incl	%eax
	leal	0(,%ecx,4), %edx
	movb	%al, 13(%ebx)
	movzbl	%al, %eax
	cmpl	%edx, %eax
	jne	.L38
	.loc 1 945 0
	xorl	%edx, %edx
	movl	%esi, %eax
	.loc 1 942 0
	movb	$0, 13(%ebx)
	.loc 1 945 0
	call	dns_call_found
.LVL48:
	.loc 1 946 0
	movb	$0, 10(%ebx)
	.loc 1 947 0
	jmp	.L29
.L38:
	.loc 1 952 0
	movzbl	11(%ebx), %eax
	incl	%eax
	cltd
	idivl	%ecx
.LVL49:
	.loc 1 953 0
	cmpb	$1, %dl
	ja	.L39
	.loc 1 953 0 is_stmt 0 discriminator 1
	cmpl	$0, dns_servers(,%edx,4)
	je	.L39
	.loc 1 954 0 is_stmt 1
	movb	%dl, 11(%ebx)
.LVL50:
.L39:
	.loc 1 980 0
	popl	%ebx
	.cfi_remember_state
	.cfi_restore 3
.LVL51:
	.loc 1 958 0
	movl	%esi, %eax
	.loc 1 980 0
	popl	%esi
	.cfi_restore 6
.LVL52:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 958 0
	jmp	dns_send
.LVL53:
.L32:
	.cfi_restore_state
	.loc 1 967 0
	movl	dns_table(%edx), %eax
	testl	%eax, %eax
	jne	.L40
.L41:
	.loc 1 970 0
	imull	$272, %esi, %esi
	movb	$0, dns_table+10(%esi)
	jmp	.L29
.L40:
	.loc 1 967 0 discriminator 1
	decl	%eax
	testl	%eax, %eax
	movl	%eax, dns_table(%edx)
	je	.L41
.L29:
	.loc 1 980 0
	popl	%ebx
	.cfi_restore 3
.LVL54:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	dns_check_entry, .-dns_check_entry
	.section	.text.unlikely.dns_check_entry
.LCOLDE2:
	.section	.text.dns_check_entry
.LHOTE2:
	.section	.text.unlikely.dns_recv,"ax",@progbits
.LCOLDB3:
	.section	.text.dns_recv,"ax",@progbits
.LHOTB3:
	.type	dns_recv, @function
dns_recv:
.LFB38:
	.loc 1 1032 0
	.cfi_startproc
.LVL55:
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
	.loc 1 1032 0
	movl	16(%ebp), %ebx
	movl	20(%ebp), %edi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 1046 0
	cmpw	$15, 8(%ebx)
	jbe	.L67
	.loc 1 1053 0
	leal	-40(%ebp), %eax
	pushl	$0
	pushl	$12
	pushl	%eax
	pushl	%ebx
	call	pbuf_copy_partial
.LVL56:
	addl	$16, %esp
	cmpw	$12, %ax
	jne	.L67
	.loc 1 1055 0
	movzwl	-40(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL57:
.LBB18:
	.loc 1 1058 0
	addl	$16, %esp
	cmpb	$2, dns_table+10
	jne	.L52
	cmpw	dns_table+8, %ax
	je	.L70
.L52:
.LVL58:
	cmpb	$2, dns_table+282
	jne	.L67
	cmpw	dns_table+280, %ax
	jne	.L67
	.loc 1 1057 0
	movl	$1, -76(%ebp)
	jmp	.L53
.LVL59:
.L70:
	movl	$0, -76(%ebp)
.LVL60:
.L53:
	.loc 1 1063 0
	movzwl	-36(%ebp), %eax
.LVL61:
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL62:
	movl	%eax, %esi
.LVL63:
	.loc 1 1064 0
	movzwl	-34(%ebp), %eax
.LVL64:
	movl	%eax, (%esp)
	call	lwip_htons
.LVL65:
	.loc 1 1071 0
	addl	$16, %esp
	cmpb	$0, -38(%ebp)
	.loc 1 1064 0
	movw	%ax, -78(%ebp)
.LVL66:
	.loc 1 1071 0
	jns	.L67
	decw	%si
.LVL67:
	jne	.L67
	.loc 1 1078 0
	imull	$272, -76(%ebp), %esi
	movzbl	dns_table+11(%esi), %eax
.LVL68:
	movl	dns_servers(,%eax,4), %eax
	cmpl	%eax, (%edi)
	jne	.L67
	.loc 1 1084 0
	addl	$dns_table+16, %esi
.LVL69:
.LBB19:
.LBB20:
	.loc 1 586 0
	movl	$12, %edi
.L57:
.LVL70:
	.loc 1 589 0
	leal	1(%edi), %eax
	movzwl	%di, %edx
	movw	%ax, -80(%ebp)
.LVL71:
.LVL72:
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	call	pbuf_try_get_at
.LVL73:
	.loc 1 590 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L67
	.loc 1 594 0
	movl	%eax, %edx
	andl	$192, %edx
	cmpl	$192, %edx
	je	.L67
	movl	-80(%ebp), %edi
	addl	%esi, %eax
.LVL74:
	movl	%eax, -84(%ebp)
.LVL75:
.L55:
	.loc 1 599 0
	cmpl	%esi, -84(%ebp)
	movzwl	%di, %eax
	je	.L90
.LBB21:
	.loc 1 600 0
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%ebx
	call	pbuf_try_get_at
.LVL76:
	.loc 1 601 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L67
	.loc 1 604 0
	movsbl	(%esi), %ecx
	movzbl	%al, %eax
.LVL77:
	cmpl	%eax, %ecx
	jne	.L67
	.loc 1 607 0
	incl	%edi
.LVL78:
	.loc 1 608 0
	incl	%esi
.LVL79:
	jmp	.L55
.L90:
.LBE21:
	.loc 1 611 0
	movl	-84(%ebp), %esi
.LVL80:
	.loc 1 613 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	%ebx
	.loc 1 611 0
	incl	%esi
.LVL81:
	.loc 1 613 0
	call	pbuf_try_get_at
.LVL82:
	.loc 1 614 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L67
	.loc 1 617 0
	jne	.L57
	.loc 1 619 0
	leal	1(%edi), %eax
.LVL83:
.LBE20:
.LBE19:
	.loc 1 1085 0
	cmpw	$-1, %ax
	je	.L67
	.loc 1 1091 0
	movzwl	%ax, %eax
	pushl	%eax
	leal	-56(%ebp), %eax
	pushl	$4
	pushl	%eax
	pushl	%ebx
	call	pbuf_copy_partial
.LVL84:
	addl	$16, %esp
	cmpw	$4, %ax
	jne	.L67
	.loc 1 1094 0
	cmpw	$256, -54(%ebp)
	jne	.L67
	.loc 1 1095 0
	cmpw	$256, -56(%ebp)
	jne	.L67
	.loc 1 1104 0
	testb	$15, -37(%ebp)
	.loc 1 1101 0
	leal	5(%edi), %edx
.LVL85:
	.loc 1 1115 0
	leal	-52(%ebp), %edi
.LVL86:
	.loc 1 1104 0
	je	.L59
.L58:
	.loc 1 1186 0
	subl	$12, %esp
	pushl	%ebx
	call	pbuf_free
.LVL87:
	.loc 1 1187 0
	movl	-76(%ebp), %eax
	xorl	%edx, %edx
	call	dns_call_found
.LVL88:
	.loc 1 1188 0
	imull	$272, -76(%ebp), %eax
	movb	$0, dns_table+10(%eax)
	jmp	.L89
.LVL89:
.L93:
	.loc 1 1107 0 discriminator 1
	cmpw	8(%ebx), %dx
	jnb	.L58
.LVL90:
.L62:
.LBB22:
.LBB23:
	.loc 1 636 0
	leal	1(%edx), %esi
.LVL91:
	movzwl	%dx, %edx
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	%ebx
	call	pbuf_try_get_at
.LVL92:
	.loc 1 637 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L67
	.loc 1 641 0
	movl	%eax, %edx
	andl	$192, %edx
	cmpl	$192, %edx
	jne	.L91
.LVL93:
.L61:
	.loc 1 657 0
	leal	1(%esi), %eax
.LVL94:
.LBE23:
.LBE22:
	.loc 1 1110 0
	cmpw	$-1, %ax
	je	.L67
	.loc 1 1115 0
	movzwl	%ax, %eax
	pushl	%eax
	pushl	$10
	pushl	%edi
	pushl	%ebx
	call	pbuf_copy_partial
.LVL95:
	addl	$16, %esp
	cmpw	$10, %ax
	jne	.L67
	.loc 1 1120 0
	cmpw	$256, -50(%ebp)
	.loc 1 1118 0
	leal	11(%esi), %eax
	movw	%ax, -84(%ebp)
.LVL96:
	movzwl	%ax, %esi
.LVL97:
	.loc 1 1120 0
	je	.L92
.L63:
	.loc 1 1161 0
	movzwl	-44(%ebp), %eax
.LVL98:
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL99:
	movzwl	%ax, %eax
	addl	$16, %esp
	addl	%esi, %eax
	cmpl	$65535, %eax
	jg	.L67
	.loc 1 1164 0
	movzwl	-44(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	lwip_htons
.LVL100:
	movl	-84(%ebp), %edx
	.loc 1 1165 0
	decw	-78(%ebp)
.LVL101:
	addl	$16, %esp
	.loc 1 1164 0
	addl	%eax, %edx
.LVL102:
.L59:
	.loc 1 1107 0
	cmpw	$0, -78(%ebp)
	jne	.L93
	jmp	.L58
.LVL103:
.L91:
.LBB25:
.LBB24:
	.loc 1 646 0
	movzwl	8(%ebx), %ecx
	movzwl	%si, %edx
	addl	%eax, %edx
	cmpl	%ecx, %edx
	jge	.L67
	.loc 1 649 0
	leal	(%esi,%eax), %edx
.LVL104:
	.loc 1 651 0
	pushl	%ecx
	pushl	%ecx
	movzwl	%dx, %eax
.LVL105:
	movl	%edx, -84(%ebp)
	pushl	%eax
	pushl	%ebx
	call	pbuf_try_get_at
.LVL106:
	.loc 1 652 0
	addl	$16, %esp
	testl	%eax, %eax
	js	.L67
	.loc 1 655 0
	movl	-84(%ebp), %edx
	jne	.L62
	.loc 1 649 0
	movl	%edx, %esi
	jmp	.L61
.LVL107:
.L92:
.LBE24:
.LBE25:
	.loc 1 1122 0
	cmpw	$256, -52(%ebp)
	jne	.L63
	.loc 1 1122 0 is_stmt 0 discriminator 1
	cmpw	$1024, -44(%ebp)
	jne	.L63
.LBB26:
	.loc 1 1129 0 is_stmt 1
	leal	-60(%ebp), %eax
.LVL108:
	pushl	%esi
	pushl	$4
	pushl	%eax
	pushl	%ebx
	call	pbuf_copy_partial
.LVL109:
	addl	$16, %esp
	cmpw	$4, %ax
	jne	.L67
	.loc 1 1132 0
	imull	$272, -76(%ebp), %esi
	.loc 1 1133 0
	subl	$12, %esp
	.loc 1 1132 0
	movl	-60(%ebp), %eax
	.loc 1 1133 0
	pushl	%ebx
	.loc 1 1132 0
	movl	%eax, dns_table+4(%esi)
	.loc 1 1133 0
	call	pbuf_free
.LVL110:
	.loc 1 1135 0
	popl	%eax
	pushl	-48(%ebp)
	call	lwip_htonl
.LVL111:
.LBB27:
.LBB28:
	.loc 1 1011 0
	addl	$16, %esp
	cmpl	$604800, %eax
	.loc 1 1003 0
	movb	$3, dns_table+10(%esi)
	.loc 1 1010 0
	movl	%eax, dns_table(%esi)
	.loc 1 1011 0
	jbe	.L65
	.loc 1 1012 0
	movl	$604800, dns_table(%esi)
.L65:
	.loc 1 1014 0
	imull	$272, -76(%ebp), %esi
	movl	-76(%ebp), %eax
.LVL112:
	leal	dns_table+4(%esi), %edx
	call	dns_call_found
.LVL113:
	.loc 1 1016 0
	cmpl	$0, dns_table(%esi)
	jne	.L50
	.loc 1 1022 0
	cmpb	$3, dns_table+10(%esi)
	jne	.L50
	.loc 1 1023 0
	movb	$0, dns_table+10(%esi)
.LVL114:
	jmp	.L50
.LVL115:
.L67:
.LBE28:
.LBE27:
.LBE26:
.LBE18:
	.loc 1 1196 0
	subl	$12, %esp
	pushl	%ebx
	call	pbuf_free
.LVL116:
.L89:
	.loc 1 1197 0
	addl	$16, %esp
.L50:
	.loc 1 1198 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L69
	call	__stack_chk_fail
.LVL117:
.L69:
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
.LFE38:
	.size	dns_recv, .-dns_recv
	.section	.text.unlikely.dns_recv
.LCOLDE3:
	.section	.text.dns_recv
.LHOTE3:
	.section	.text.unlikely.dns_setserver,"ax",@progbits
.LCOLDB4:
	.section	.text.dns_setserver,"ax",@progbits
.LHOTB4:
	.globl	dns_setserver
	.type	dns_setserver, @function
dns_setserver:
.LFB24:
	.loc 1 339 0
	.cfi_startproc
.LVL118:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 339 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 340 0
	leal	1(%eax), %ecx
	.loc 1 342 0
	cmpb	$1, %al
	.loc 1 340 0
	movb	%cl, num_dns
	.loc 1 342 0
	ja	.L94
.LVL119:
.LBB31:
.LBB32:
	.loc 1 343 0
	testl	%edx, %edx
	movzbl	%al, %eax
	je	.L96
	.loc 1 344 0
	movl	(%edx), %edx
	jmp	.L98
.LVL120:
.L96:
	.loc 1 346 0
	movl	ip_addr_any, %edx
.LVL121:
.L98:
	movl	%edx, dns_servers(,%eax,4)
.LVL122:
.L94:
.LBE32:
.LBE31:
	.loc 1 349 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	dns_setserver, .-dns_setserver
	.section	.text.unlikely.dns_setserver
.LCOLDE4:
	.section	.text.dns_setserver
.LHOTE4:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"208.67.222.222"
	.section	.text.unlikely.dns_init,"ax",@progbits
.LCOLDB6:
	.section	.text.dns_init,"ax",@progbits
.LHOTB6:
	.globl	dns_init
	.type	dns_init, @function
dns_init:
.LFB23:
	.loc 1 293 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 297 0
	pushl	$.LC5
	.loc 1 293 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 297 0
	call	ipaddr_addr
.LVL123:
	movl	%eax, -16(%ebp)
	.loc 1 298 0
	popl	%eax
	leal	-16(%ebp), %eax
	popl	%edx
	pushl	%eax
	pushl	$0
	call	dns_setserver
.LVL124:
	.loc 1 328 0
	addl	$16, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L100
	call	__stack_chk_fail
.LVL125:
.L100:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	dns_init, .-dns_init
	.section	.text.unlikely.dns_init
.LCOLDE6:
	.section	.text.dns_init
.LHOTE6:
	.section	.text.unlikely.dns_getserver,"ax",@progbits
.LCOLDB7:
	.section	.text.dns_getserver,"ax",@progbits
.LHOTB7:
	.globl	dns_getserver
	.type	dns_getserver, @function
dns_getserver:
.LFB25:
	.loc 1 361 0
	.cfi_startproc
.LVL126:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$ip_addr_any, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 361 0
	movl	8(%ebp), %edx
	.loc 1 362 0
	cmpb	$1, %dl
	ja	.L103
	.loc 1 363 0
	movzbl	%dl, %edx
	leal	dns_servers(,%edx,4), %eax
.L103:
	.loc 1 367 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	dns_getserver, .-dns_getserver
	.section	.text.unlikely.dns_getserver
.LCOLDE7:
	.section	.text.dns_getserver
.LHOTE7:
	.section	.text.unlikely.dns_tmr,"ax",@progbits
.LCOLDB8:
	.section	.text.dns_tmr,"ax",@progbits
.LHOTB8:
	.globl	dns_tmr
	.type	dns_tmr, @function
dns_tmr:
.LFB26:
	.loc 1 375 0
	.cfi_startproc
.LVL127:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB35:
.LBB36:
	.loc 1 991 0
	xorl	%eax, %eax
.LBE36:
.LBE35:
	.loc 1 375 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
.LBB39:
.LBB37:
	.loc 1 991 0
	call	dns_check_entry
.LVL128:
.LBE37:
.LBE39:
	.loc 1 378 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LBB40:
.LBB38:
	.loc 1 991 0
	movl	$1, %eax
	jmp	dns_check_entry
.LVL129:
.LBE38:
.LBE40:
	.cfi_endproc
.LFE26:
	.size	dns_tmr, .-dns_tmr
	.section	.text.unlikely.dns_tmr
.LCOLDE8:
	.section	.text.dns_tmr
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"localhost"
	.section	.text.unlikely.dns_gethostbyname_addrtype,"ax",@progbits
.LCOLDB10:
	.section	.text.dns_gethostbyname_addrtype,"ax",@progbits
.LHOTB10:
	.globl	dns_gethostbyname_addrtype
	.type	dns_gethostbyname_addrtype, @function
dns_gethostbyname_addrtype:
.LFB41:
	.loc 1 1379 0
	.cfi_startproc
.LVL130:
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
	.loc 1 1385 0
	movl	$-16, %edi
	.loc 1 1379 0
	subl	$28, %esp
	.loc 1 1379 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %esi
	.loc 1 1383 0
	testl	%ebx, %ebx
	je	.L156
	testl	%esi, %esi
	sete	%al
	je	.L156
	.loc 1 1384 0
	cmpb	$0, (%esi)
	je	.L156
	.loc 1 1392 0
	orl	$-1, %ecx
	movl	%esi, %edi
	repnz scasb
.LVL131:
	.loc 1 1385 0
	movl	$-16, %edi
	.loc 1 1392 0
	notl	%ecx
	leal	-1(%ecx), %eax
	.loc 1 1393 0
	cmpl	$255, %eax
	.loc 1 1392 0
	movl	%eax, -36(%ebp)
.LVL132:
	.loc 1 1393 0
	ja	.L156
.LVL133:
	.loc 1 1400 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC9
	pushl	%esi
	call	strcmp
.LVL134:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L111
	.loc 1 1401 0
	movl	$16777343, (%ebx)
	jmp	.L166
.L111:
	.loc 1 1407 0
	pushl	%eax
	pushl	%eax
	.loc 1 1413 0
	xorl	%edi, %edi
	.loc 1 1407 0
	pushl	%ebx
	pushl	%esi
	call	ip4addr_aton
.LVL135:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, -32(%ebp)
	jne	.L156
.LVL136:
.LBB50:
.LBB51:
	.loc 1 555 0
	cmpb	$3, dns_table+10
	jne	.L112
	.loc 1 556 0
	pushl	%eax
	pushl	$256
	pushl	$dns_table+16
	pushl	%esi
	call	lwip_strnicmp
.LVL137:
	.loc 1 555 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L113
.L112:
.LVL138:
	cmpb	$3, dns_table+282
	jne	.L114
	.loc 1 556 0
	pushl	%edi
	pushl	$256
	pushl	$dns_table+288
	pushl	%esi
	call	lwip_strnicmp
.LVL139:
	.loc 1 555 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L114
	movl	$1, %eax
.LVL140:
.L113:
	.loc 1 562 0
	imull	$272, %eax, %eax
	movl	dns_table+4(%eax), %eax
	movl	%eax, (%ebx)
.L166:
.LBE51:
.LBE50:
	.loc 1 1418 0
	xorl	%edi, %edi
	jmp	.L156
.LVL141:
.L114:
	.loc 1 1438 0
	cmpl	$0, dns_servers
	.loc 1 1439 0
	movl	$-6, %edi
	.loc 1 1438 0
	je	.L156
	movl	$dns_table+16, %ebx
	movb	$0, -25(%ebp)
.L118:
.LVL142:
.LBB52:
.LBB53:
	.loc 1 1223 0
	cmpb	$2, -6(%ebx)
	jne	.L116
	.loc 1 1224 0
	pushl	%ecx
	pushl	$256
	pushl	%ebx
	pushl	%esi
	call	lwip_strnicmp
.LVL143:
	.loc 1 1223 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L116
.LVL144:
	.loc 1 1235 0
	cmpl	$0, dns_requests
	je	.L117
.LVL145:
	cmpl	$0, dns_requests+12
	jne	.L116
	movl	$1, %eax
.LVL146:
.L117:
	.loc 1 1236 0
	imull	$12, %eax, %eax
	movl	16(%ebp), %esi
	leal	dns_requests(%eax), %edx
	movl	%esi, dns_requests(%eax)
	.loc 1 1237 0
	movl	20(%ebp), %eax
	movl	%eax, 4(%edx)
	.loc 1 1238 0
	movb	-25(%ebp), %al
	movb	%al, 8(%edx)
	jmp	.L167
.L116:
	.loc 1 1222 0
	incb	-25(%ebp)
.LVL147:
	addl	$272, %ebx
	cmpb	$2, -25(%ebp)
	jne	.L118
	.loc 1 1255 0
	movb	dns_table+10, %cl
	.loc 1 1260 0
	movb	dns_seqno, %dl
.LVL148:
	.loc 1 1255 0
	testb	%cl, %cl
	je	.L140
	.loc 1 1259 0
	xorl	%eax, %eax
	cmpb	$3, %cl
	jne	.L120
	.loc 1 1260 0
	movzbl	-25(%ebp), %edi
	movb	%dl, %al
	subb	dns_table+14, %al
	movb	$0, %cl
	cmovne	%ecx, %edi
	movl	%edi, %ecx
	movb	%cl, -25(%ebp)
.L120:
.LVL149:
	.loc 1 1255 0
	movb	dns_table+282, %cl
	testb	%cl, %cl
	jne	.L121
	.loc 1 1252 0
	movb	$1, -25(%ebp)
.LVL150:
	.loc 1 1253 0
	movl	$1, %ebx
	jmp	.L119
.LVL151:
.L140:
	xorl	%ebx, %ebx
	.loc 1 1255 0
	movb	$0, -25(%ebp)
.LVL152:
.L119:
	.loc 1 1253 0
	imull	$272, %ebx, %ebx
	addl	$dns_table, %ebx
	jmp	.L122
.LVL153:
.L121:
	.loc 1 1259 0
	cmpb	$3, %cl
	jne	.L123
	.loc 1 1260 0
	movb	%dl, %cl
	subb	dns_table+286, %cl
	cmpb	%al, %cl
	jbe	.L123
	.loc 1 1252 0
	movb	$1, -25(%ebp)
.LVL154:
	jmp	.L164
.LVL155:
.L123:
	.loc 1 1269 0
	cmpb	$2, -25(%ebp)
	.loc 1 1272 0
	movl	$-1, %edi
	.loc 1 1269 0
	je	.L156
.LVL156:
.L164:
	movzbl	-25(%ebp), %ebx
	.loc 1 1272 0
	movl	$-1, %edi
	.loc 1 1269 0
	imull	$272, %ebx, %ebx
	addl	$dns_table, %ebx
	cmpb	$3, 10(%ebx)
	jne	.L156
.LVL157:
.L122:
	.loc 1 1284 0
	cmpl	$0, dns_requests
	je	.L124
.LVL158:
	cmpl	$0, dns_requests+12
	.loc 1 1272 0
	movl	$-1, %edi
	.loc 1 1284 0
	jne	.L156
	movl	$1, -32(%ebp)
.LVL159:
.L124:
	.loc 1 1294 0
	imull	$12, -32(%ebp), %edi
	.loc 1 1305 0
	movb	%dl, 14(%ebx)
	.loc 1 1308 0
	movl	16(%ebp), %edx
	.loc 1 1311 0
	leal	16(%ebx), %eax
	.loc 1 1310 0
	cmpl	$255, -36(%ebp)
	.loc 1 1294 0
	movb	-25(%ebp), %cl
	.loc 1 1304 0
	movb	$1, 10(%ebx)
	.loc 1 1308 0
	movl	%edx, dns_requests(%edi)
	.loc 1 1309 0
	movl	20(%ebp), %edx
	.loc 1 1294 0
	movb	%cl, dns_requests+8(%edi)
	.loc 1 1309 0
	movl	%edx, dns_requests+4(%edi)
	.loc 1 1310 0
	movl	$255, %edx
	cmovbe	-36(%ebp), %edx
.LVL160:
.LBB54:
.LBB55:
	.loc 1 790 0
	cmpl	$0, dns_pcbs
.LBE55:
.LBE54:
	.loc 1 1311 0
	movl	%eax, %edi
	movl	%edx, %ecx
	rep movsb
	.loc 1 1312 0
	movb	$0, 16(%ebx,%edx)
.LVL161:
.LBB65:
.LBB63:
	.loc 1 790 0
	je	.L145
.LVL162:
	cmpl	$0, dns_pcbs+4
	je	.L168
.LVL163:
.L126:
	.loc 1 804 0
	movb	dns_last_pcb_idx, %al
	.loc 1 806 0
	movb	$0, %dl
	.loc 1 804 0
	incl	%eax
.LVL164:
	.loc 1 806 0
	cmpb	$2, %al
	cmovnb	%edx, %eax
.LVL165:
	.loc 1 808 0
	movzbl	%al, %edx
	cmpl	$0, dns_pcbs(,%edx,4)
	jne	.L133
.LVL166:
	xorl	$1, %eax
.LVL167:
	.loc 1 813 0
	movb	$2, %dl
	.loc 1 808 0
	andl	$1, %eax
.LVL168:
	movzbl	%al, %ecx
	cmpl	$0, dns_pcbs(,%ecx,4)
	je	.L131
.LVL169:
.L133:
	.loc 1 809 0
	movb	%al, dns_last_pcb_idx
	movb	%al, %dl
.L131:
.LBE63:
.LBE65:
	.loc 1 1316 0
	cmpb	$2, %dl
	.loc 1 1315 0
	movb	%dl, 15(%ebx)
	.loc 1 1316 0
	jne	.L134
	.loc 1 1320 0
	imull	$12, -32(%ebp), %eax
	.loc 1 1319 0
	movb	$0, 10(%ebx)
	.loc 1 1321 0
	movl	$-1, %edi
	.loc 1 1320 0
	movl	$0, dns_requests(%eax)
	jmp	.L156
.L134:
	.loc 1 1329 0
	movzbl	-25(%ebp), %eax
	.loc 1 1326 0
	incb	dns_seqno
	.loc 1 1329 0
	call	dns_check_entry
.LVL170:
.L167:
	.loc 1 1332 0
	movl	$-5, %edi
	jmp	.L156
.LVL171:
.L145:
.LBB66:
.LBB64:
	.loc 1 789 0
	xorl	%esi, %esi
	jmp	.L125
.LVL172:
.L168:
	movl	$1, %esi
.LVL173:
.L125:
.LBB56:
.LBB57:
	.loc 1 755 0
	subl	$12, %esp
.LBE57:
.LBE56:
	.loc 1 795 0
	movl	%esi, %eax
.LBB61:
.LBB59:
	.loc 1 755 0
	pushl	$46
.LBE59:
.LBE61:
	.loc 1 795 0
	movzbl	%al, %eax
	movl	%eax, -36(%ebp)
.LVL174:
.LBB62:
.LBB60:
	.loc 1 755 0
	call	udp_new_ip_type
.LVL175:
	movl	%eax, %edi
.LVL176:
	.loc 1 756 0
	addl	$16, %esp
	.loc 1 758 0
	xorl	%eax, %eax
.LVL177:
	.loc 1 756 0
	testl	%edi, %edi
	je	.L130
.L127:
.LBB58:
	.loc 1 761 0
	call	rand
.LVL178:
	.loc 1 762 0
	cmpw	$1023, %ax
	jbe	.L127
	.loc 1 767 0
	movzwl	%ax, %eax
	pushl	%edx
	pushl	%eax
	pushl	$ip_addr_any
	pushl	%edi
	call	udp_bind
.LVL179:
.LBE58:
	.loc 1 768 0
	addl	$16, %esp
	cmpb	$-8, %al
	je	.L127
	.loc 1 769 0
	testb	%al, %al
	je	.L129
	.loc 1 770 0
	subl	$12, %esp
	pushl	%edi
	call	udp_remove
.LVL180:
	addl	$16, %esp
	.loc 1 771 0
	xorl	%eax, %eax
	jmp	.L130
.LVL181:
.L129:
.LVL182:
	.loc 1 773 0
	pushl	%eax
	pushl	$0
	pushl	$dns_recv
	pushl	%edi
	call	udp_recv
.LVL183:
	addl	$16, %esp
	movl	%edi, %eax
.L130:
.LVL184:
.LBE60:
.LBE62:
	.loc 1 795 0
	movl	-36(%ebp), %edx
	.loc 1 796 0
	testl	%eax, %eax
	.loc 1 795 0
	movl	%eax, dns_pcbs(,%edx,4)
	.loc 1 796 0
	je	.L126
	.loc 1 798 0
	movl	%esi, %eax
	movl	%esi, %edx
	movb	%al, dns_last_pcb_idx
	jmp	.L131
.LVL185:
.L156:
.LBE64:
.LBE66:
.LBE53:
.LBE52:
	.loc 1 1444 0
	leal	-12(%ebp), %esp
	movl	%edi, %eax
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
.LFE41:
	.size	dns_gethostbyname_addrtype, .-dns_gethostbyname_addrtype
	.section	.text.unlikely.dns_gethostbyname_addrtype
.LCOLDE10:
	.section	.text.dns_gethostbyname_addrtype
.LHOTE10:
	.section	.text.unlikely.dns_gethostbyname,"ax",@progbits
.LCOLDB11:
	.section	.text.dns_gethostbyname,"ax",@progbits
.LHOTB11:
	.globl	dns_gethostbyname
	.type	dns_gethostbyname, @function
dns_gethostbyname:
.LFB40:
	.loc 1 1358 0
	.cfi_startproc
.LVL186:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 1359 0
	pushl	$0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	dns_gethostbyname_addrtype
.LVL187:
	.loc 1 1360 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	dns_gethostbyname, .-dns_gethostbyname
	.section	.text.unlikely.dns_gethostbyname
.LCOLDE11:
	.section	.text.dns_gethostbyname
.LHOTE11:
	.section	.bss.num_dns,"aw",@nobits
	.type	num_dns, @object
	.size	num_dns, 1
num_dns:
	.zero	1
	.section	.bss.dns_servers,"aw",@nobits
	.align 4
	.type	dns_servers, @object
	.size	dns_servers, 8
dns_servers:
	.zero	8
	.section	.bss.dns_requests,"aw",@nobits
	.align 4
	.type	dns_requests, @object
	.size	dns_requests, 24
dns_requests:
	.zero	24
	.section	.bss.dns_table,"aw",@nobits
	.align 32
	.type	dns_table, @object
	.size	dns_table, 544
dns_table:
	.zero	544
	.section	.bss.dns_seqno,"aw",@nobits
	.type	dns_seqno, @object
	.size	dns_seqno, 1
dns_seqno:
	.zero	1
	.section	.bss.dns_last_pcb_idx,"aw",@nobits
	.type	dns_last_pcb_idx, @object
	.size	dns_last_pcb_idx, 1
dns_last_pcb_idx:
	.zero	1
	.section	.bss.dns_pcbs,"aw",@nobits
	.align 4
	.type	dns_pcbs, @object
	.size	dns_pcbs, 8
dns_pcbs:
	.zero	8
	.text
.Letext0:
	.section	.text.unlikely.dns_call_found
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 6 "./kernel/protocols/net/include/lwip/err.h"
	.file 7 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 8 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 9 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 10 "./kernel/protocols/net/include/lwip/memp.h"
	.file 11 "./kernel/protocols/net/include/lwip/netif.h"
	.file 12 "./kernel/protocols/net/include/lwip/udp.h"
	.file 13 "./kernel/protocols/net/include/lwip/dns.h"
	.file 14 "./kernel/protocols/net/include/lwip/prot/dns.h"
	.file 15 "./include/aos/log.h"
	.file 16 "./kernel/protocols/net/include/lwip/def.h"
	.file 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x12a4
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF188
	.byte	0xc
	.long	.LASF189
	.long	.LASF190
	.long	.Ldebug_ranges0+0x90
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x1d
	.long	0x5e
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.long	.LASF6
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x7
	.long	0x91
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF15
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.long	.LASF16
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x31
	.long	0x5e
	.uleb128 0x3
	.long	.LASF18
	.byte	0x5
	.byte	0x32
	.long	0x4c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x33
	.long	0x6c
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x34
	.long	0x65
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x35
	.long	0x7a
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0x39
	.long	0xc7
	.uleb128 0x8
	.byte	0x4
	.long	0x25
	.byte	0x6
	.byte	0x3d
	.long	0x171
	.uleb128 0x9
	.long	.LASF23
	.byte	0
	.uleb128 0xa
	.long	.LASF24
	.sleb128 -1
	.uleb128 0xa
	.long	.LASF25
	.sleb128 -2
	.uleb128 0xa
	.long	.LASF26
	.sleb128 -3
	.uleb128 0xa
	.long	.LASF27
	.sleb128 -4
	.uleb128 0xa
	.long	.LASF28
	.sleb128 -5
	.uleb128 0xa
	.long	.LASF29
	.sleb128 -6
	.uleb128 0xa
	.long	.LASF30
	.sleb128 -7
	.uleb128 0xa
	.long	.LASF31
	.sleb128 -8
	.uleb128 0xa
	.long	.LASF32
	.sleb128 -9
	.uleb128 0xa
	.long	.LASF33
	.sleb128 -10
	.uleb128 0xa
	.long	.LASF34
	.sleb128 -11
	.uleb128 0xa
	.long	.LASF35
	.sleb128 -12
	.uleb128 0xa
	.long	.LASF36
	.sleb128 -13
	.uleb128 0xa
	.long	.LASF37
	.sleb128 -14
	.uleb128 0xa
	.long	.LASF38
	.sleb128 -15
	.uleb128 0xa
	.long	.LASF39
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0x7
	.byte	0x48
	.long	0x19c
	.uleb128 0x9
	.long	.LASF40
	.byte	0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x1
	.uleb128 0x9
	.long	.LASF42
	.byte	0x2
	.uleb128 0x9
	.long	.LASF43
	.byte	0x3
	.uleb128 0x9
	.long	.LASF44
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0x7
	.byte	0x69
	.long	0x1c1
	.uleb128 0x9
	.long	.LASF45
	.byte	0
	.uleb128 0x9
	.long	.LASF46
	.byte	0x1
	.uleb128 0x9
	.long	.LASF47
	.byte	0x2
	.uleb128 0x9
	.long	.LASF48
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x10
	.byte	0x7
	.byte	0x9d
	.long	0x222
	.uleb128 0xc
	.long	.LASF49
	.byte	0x7
	.byte	0x9f
	.long	0x222
	.byte	0
	.uleb128 0xc
	.long	.LASF50
	.byte	0x7
	.byte	0xa2
	.long	0x8f
	.byte	0x4
	.uleb128 0xc
	.long	.LASF51
	.byte	0x7
	.byte	0xab
	.long	0xd2
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x7
	.byte	0xae
	.long	0xd2
	.byte	0xa
	.uleb128 0xc
	.long	.LASF52
	.byte	0x7
	.byte	0xb1
	.long	0xbc
	.byte	0xc
	.uleb128 0xc
	.long	.LASF53
	.byte	0x7
	.byte	0xb4
	.long	0xbc
	.byte	0xd
	.uleb128 0xd
	.string	"ref"
	.byte	0x7
	.byte	0xc2
	.long	0xd2
	.byte	0xe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1c1
	.uleb128 0xe
	.long	0x91
	.long	0x238
	.uleb128 0xf
	.long	0x88
	.byte	0xff
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF54
	.uleb128 0xb
	.long	.LASF56
	.byte	0x4
	.byte	0x8
	.byte	0x35
	.long	0x258
	.uleb128 0xc
	.long	.LASF57
	.byte	0x8
	.byte	0x36
	.long	0xe8
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF58
	.byte	0x8
	.byte	0x49
	.long	0x23f
	.uleb128 0x10
	.long	.LASF78
	.byte	0x4
	.long	0x37
	.byte	0x9
	.byte	0x36
	.long	0x286
	.uleb128 0x9
	.long	.LASF59
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x6
	.uleb128 0x9
	.long	.LASF61
	.byte	0x2e
	.byte	0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x9
	.byte	0xe1
	.long	0x258
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x32
	.long	0x2f8
	.uleb128 0x9
	.long	.LASF63
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x1
	.uleb128 0x9
	.long	.LASF65
	.byte	0x2
	.uleb128 0x9
	.long	.LASF66
	.byte	0x3
	.uleb128 0x9
	.long	.LASF67
	.byte	0x4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x5
	.uleb128 0x9
	.long	.LASF69
	.byte	0x6
	.uleb128 0x9
	.long	.LASF70
	.byte	0x7
	.uleb128 0x9
	.long	.LASF71
	.byte	0x8
	.uleb128 0x9
	.long	.LASF72
	.byte	0x9
	.uleb128 0x9
	.long	.LASF73
	.byte	0xa
	.uleb128 0x9
	.long	.LASF74
	.byte	0xb
	.uleb128 0x9
	.long	.LASF75
	.byte	0xc
	.uleb128 0x9
	.long	.LASF76
	.byte	0xd
	.uleb128 0x9
	.long	.LASF77
	.byte	0xe
	.byte	0
	.uleb128 0x10
	.long	.LASF79
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x6b
	.long	0x31b
	.uleb128 0x9
	.long	.LASF80
	.byte	0
	.uleb128 0x9
	.long	.LASF81
	.byte	0x1
	.uleb128 0x9
	.long	.LASF82
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF83
	.byte	0xc
	.byte	0x4d
	.long	0x326
	.uleb128 0x6
	.byte	0x4
	.long	0x32c
	.uleb128 0x11
	.long	0x34b
	.uleb128 0x12
	.long	0x8f
	.uleb128 0x12
	.long	0x34b
	.uleb128 0x12
	.long	0x222
	.uleb128 0x12
	.long	0x3fa
	.uleb128 0x12
	.long	0xd2
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x351
	.uleb128 0xb
	.long	.LASF84
	.byte	0x28
	.byte	0xc
	.byte	0x51
	.long	0x3fa
	.uleb128 0xc
	.long	.LASF85
	.byte	0xc
	.byte	0x53
	.long	0x286
	.byte	0
	.uleb128 0xc
	.long	.LASF86
	.byte	0xc
	.byte	0x53
	.long	0x286
	.byte	0x4
	.uleb128 0xc
	.long	.LASF87
	.byte	0xc
	.byte	0x53
	.long	0xbc
	.byte	0x8
	.uleb128 0xd
	.string	"tos"
	.byte	0xc
	.byte	0x53
	.long	0xbc
	.byte	0x9
	.uleb128 0xd
	.string	"ttl"
	.byte	0xc
	.byte	0x53
	.long	0xbc
	.byte	0xa
	.uleb128 0xc
	.long	.LASF49
	.byte	0xc
	.byte	0x57
	.long	0x34b
	.byte	0xc
	.uleb128 0xc
	.long	.LASF53
	.byte	0xc
	.byte	0x59
	.long	0xbc
	.byte	0x10
	.uleb128 0xc
	.long	.LASF88
	.byte	0xc
	.byte	0x5b
	.long	0xd2
	.byte	0x12
	.uleb128 0xc
	.long	.LASF89
	.byte	0xc
	.byte	0x5b
	.long	0xd2
	.byte	0x14
	.uleb128 0xc
	.long	.LASF90
	.byte	0xc
	.byte	0x5f
	.long	0x286
	.byte	0x18
	.uleb128 0xc
	.long	.LASF91
	.byte	0xc
	.byte	0x61
	.long	0xbc
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF92
	.byte	0xc
	.byte	0x6a
	.long	0x31b
	.byte	0x20
	.uleb128 0xc
	.long	.LASF93
	.byte	0xc
	.byte	0x6c
	.long	0x8f
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x400
	.uleb128 0x7
	.long	0x286
	.uleb128 0x3
	.long	.LASF94
	.byte	0xd
	.byte	0x5e
	.long	0x410
	.uleb128 0x6
	.byte	0x4
	.long	0x416
	.uleb128 0x11
	.long	0x42b
	.uleb128 0x12
	.long	0x98
	.uleb128 0x12
	.long	0x3fa
	.uleb128 0x12
	.long	0x8f
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0xc
	.byte	0xe
	.byte	0x67
	.long	0x48b
	.uleb128 0xd
	.string	"id"
	.byte	0xe
	.byte	0x68
	.long	0xd2
	.byte	0
	.uleb128 0xc
	.long	.LASF96
	.byte	0xe
	.byte	0x69
	.long	0xbc
	.byte	0x2
	.uleb128 0xc
	.long	.LASF97
	.byte	0xe
	.byte	0x6a
	.long	0xbc
	.byte	0x3
	.uleb128 0xc
	.long	.LASF98
	.byte	0xe
	.byte	0x6b
	.long	0xd2
	.byte	0x4
	.uleb128 0xc
	.long	.LASF99
	.byte	0xe
	.byte	0x6c
	.long	0xd2
	.byte	0x6
	.uleb128 0xc
	.long	.LASF100
	.byte	0xe
	.byte	0x6d
	.long	0xd2
	.byte	0x8
	.uleb128 0xc
	.long	.LASF101
	.byte	0xe
	.byte	0x6e
	.long	0xd2
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.long	.LASF102
	.byte	0x4
	.byte	0x1
	.byte	0xb0
	.long	0x4b0
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.byte	0xb3
	.long	0xd2
	.byte	0
	.uleb128 0xd
	.string	"cls"
	.byte	0x1
	.byte	0xb4
	.long	0xd2
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF103
	.byte	0xc
	.byte	0x1
	.byte	0xba
	.long	0x4ed
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.byte	0xbd
	.long	0xd2
	.byte	0
	.uleb128 0xd
	.string	"cls"
	.byte	0x1
	.byte	0xbe
	.long	0xd2
	.byte	0x2
	.uleb128 0xd
	.string	"ttl"
	.byte	0x1
	.byte	0xbf
	.long	0xe8
	.byte	0x4
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0xc0
	.long	0xd2
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0x1
	.byte	0xc7
	.long	0x512
	.uleb128 0x9
	.long	.LASF104
	.byte	0
	.uleb128 0x9
	.long	.LASF105
	.byte	0x1
	.uleb128 0x9
	.long	.LASF106
	.byte	0x2
	.uleb128 0x9
	.long	.LASF107
	.byte	0x3
	.byte	0
	.uleb128 0x13
	.long	.LASF108
	.value	0x110
	.byte	0x1
	.byte	0xcf
	.long	0x598
	.uleb128 0xd
	.string	"ttl"
	.byte	0x1
	.byte	0xd0
	.long	0xe8
	.byte	0
	.uleb128 0xc
	.long	.LASF109
	.byte	0x1
	.byte	0xd1
	.long	0x286
	.byte	0x4
	.uleb128 0xc
	.long	.LASF110
	.byte	0x1
	.byte	0xd2
	.long	0xd2
	.byte	0x8
	.uleb128 0xc
	.long	.LASF111
	.byte	0x1
	.byte	0xd3
	.long	0xbc
	.byte	0xa
	.uleb128 0xc
	.long	.LASF112
	.byte	0x1
	.byte	0xd4
	.long	0xbc
	.byte	0xb
	.uleb128 0xd
	.string	"tmr"
	.byte	0x1
	.byte	0xd5
	.long	0xbc
	.byte	0xc
	.uleb128 0xc
	.long	.LASF113
	.byte	0x1
	.byte	0xd6
	.long	0xbc
	.byte	0xd
	.uleb128 0xc
	.long	.LASF114
	.byte	0x1
	.byte	0xd7
	.long	0xbc
	.byte	0xe
	.uleb128 0xc
	.long	.LASF115
	.byte	0x1
	.byte	0xd9
	.long	0xbc
	.byte	0xf
	.uleb128 0xc
	.long	.LASF116
	.byte	0x1
	.byte	0xdb
	.long	0x228
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	.LASF117
	.byte	0xc
	.byte	0x1
	.byte	0xe3
	.long	0x5c9
	.uleb128 0xc
	.long	.LASF118
	.byte	0x1
	.byte	0xe5
	.long	0x405
	.byte	0
	.uleb128 0xd
	.string	"arg"
	.byte	0x1
	.byte	0xe7
	.long	0x8f
	.byte	0x4
	.uleb128 0xc
	.long	.LASF119
	.byte	0x1
	.byte	0xe9
	.long	0xbc
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF191
	.byte	0x1
	.value	0x152
	.byte	0x1
	.long	0x5ef
	.uleb128 0x15
	.long	.LASF120
	.byte	0x1
	.value	0x152
	.long	0xbc
	.uleb128 0x15
	.long	.LASF121
	.byte	0x1
	.value	0x152
	.long	0x3fa
	.byte	0
	.uleb128 0x16
	.long	.LASF130
	.byte	0x1
	.value	0x247
	.long	0xd2
	.byte	0x1
	.long	0x645
	.uleb128 0x15
	.long	.LASF122
	.byte	0x1
	.value	0x247
	.long	0x98
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x247
	.long	0x222
	.uleb128 0x15
	.long	.LASF123
	.byte	0x1
	.value	0x247
	.long	0xd2
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x249
	.long	0x25
	.uleb128 0x19
	.long	.LASF124
	.byte	0x1
	.value	0x24a
	.long	0xd2
	.uleb128 0x1a
	.uleb128 0x18
	.string	"c"
	.byte	0x1
	.value	0x258
	.long	0x25
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF132
	.byte	0x1
	.value	0x33a
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x69c
	.uleb128 0x1c
	.string	"idx"
	.byte	0x1
	.value	0x33a
	.long	0xbc
	.long	.LLST0
	.uleb128 0x1d
	.long	.LASF57
	.byte	0x1
	.value	0x33a
	.long	0x69c
	.long	.LLST1
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x33d
	.long	0xbc
	.long	.LLST2
	.uleb128 0x1f
	.long	.LVL2
	.uleb128 0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x6
	.uleb128 0x20
	.long	.LVL7
	.long	0x11c6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x286
	.uleb128 0x21
	.long	.LASF192
	.byte	0x1
	.value	0x29b
	.long	0xf3
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ec
	.uleb128 0x1c
	.string	"idx"
	.byte	0x1
	.value	0x29b
	.long	0xbc
	.long	.LLST3
	.uleb128 0x1e
	.string	"err"
	.byte	0x1
	.value	0x29d
	.long	0xf3
	.long	.LLST4
	.uleb128 0x22
	.string	"hdr"
	.byte	0x1
	.value	0x29e
	.long	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"qry"
	.byte	0x1
	.value	0x29f
	.long	0x48b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1e
	.string	"p"
	.byte	0x1
	.value	0x2a0
	.long	0x222
	.long	.LLST5
	.uleb128 0x23
	.long	.LASF125
	.byte	0x1
	.value	0x2a1
	.long	0xd2
	.long	.LLST6
	.uleb128 0x23
	.long	.LASF126
	.byte	0x1
	.value	0x2a1
	.long	0xd2
	.long	.LLST7
	.uleb128 0x23
	.long	.LASF127
	.byte	0x1
	.value	0x2a2
	.long	0x98
	.long	.LLST8
	.uleb128 0x23
	.long	.LASF128
	.byte	0x1
	.value	0x2a2
	.long	0x98
	.long	.LLST9
	.uleb128 0x1e
	.string	"n"
	.byte	0x1
	.value	0x2a3
	.long	0xbc
	.long	.LLST10
	.uleb128 0x23
	.long	.LASF115
	.byte	0x1
	.value	0x2a4
	.long	0xbc
	.long	.LLST11
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.value	0x2a5
	.long	0x7ec
	.long	.LLST12
	.uleb128 0x24
	.long	.LVL12
	.long	0x645
	.long	0x791
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -60
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.long	.LVL13
	.long	0x11d1
	.uleb128 0x20
	.long	.LVL17
	.long	0x11dc
	.uleb128 0x20
	.long	.LVL18
	.long	0x11e7
	.uleb128 0x20
	.long	.LVL26
	.long	0x11f3
	.uleb128 0x20
	.long	.LVL27
	.long	0x11ff
	.uleb128 0x20
	.long	.LVL30
	.long	0x11f3
	.uleb128 0x20
	.long	.LVL31
	.long	0x11ff
	.uleb128 0x20
	.long	.LVL32
	.long	0x120b
	.uleb128 0x20
	.long	.LVL34
	.long	0x1216
	.uleb128 0x20
	.long	.LVL36
	.long	0x1222
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x512
	.uleb128 0x16
	.long	.LASF131
	.byte	0x1
	.value	0x374
	.long	0xd2
	.byte	0x1
	.long	0x832
	.uleb128 0x19
	.long	.LASF110
	.byte	0x1
	.value	0x376
	.long	0xd2
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x377
	.long	0xbc
	.uleb128 0x26
	.long	.LASF193
	.byte	0x1
	.value	0x379
	.uleb128 0x27
	.long	.LASF156
	.byte	0x1
	.value	0x2f9
	.long	0x25
	.byte	0
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF133
	.byte	0x1
	.value	0x392
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x8eb
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x392
	.long	0xbc
	.long	.LLST13
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.value	0x394
	.long	0xf3
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.value	0x395
	.long	0x7ec
	.long	.LLST14
	.uleb128 0x23
	.long	.LASF134
	.byte	0x1
	.value	0x396
	.long	0xa3
	.long	.LLST15
	.uleb128 0x29
	.long	0x7f2
	.long	.LBB5
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x39d
	.long	0x8bd
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.uleb128 0x2b
	.long	0x803
	.long	.LLST16
	.uleb128 0x2b
	.long	0x80f
	.long	.LLST17
	.uleb128 0x2c
	.long	0x819
	.uleb128 0x20
	.long	.LVL42
	.long	0x122b
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL48
	.long	0x645
	.long	0x8d6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL53
	.long	0x6a2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF135
	.byte	0x1
	.value	0x276
	.long	0xd2
	.byte	0x1
	.long	0x929
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x276
	.long	0x222
	.uleb128 0x15
	.long	.LASF125
	.byte	0x1
	.value	0x276
	.long	0xd2
	.uleb128 0x18
	.string	"n"
	.byte	0x1
	.value	0x278
	.long	0x25
	.uleb128 0x19
	.long	.LASF136
	.byte	0x1
	.value	0x279
	.long	0xd2
	.byte	0
	.uleb128 0x2e
	.long	.LASF143
	.byte	0x1
	.value	0x3e7
	.byte	0x1
	.long	0x95b
	.uleb128 0x17
	.string	"idx"
	.byte	0x1
	.value	0x3e7
	.long	0xbc
	.uleb128 0x17
	.string	"ttl"
	.byte	0x1
	.value	0x3e7
	.long	0xe8
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.value	0x3e9
	.long	0x7ec
	.byte	0
	.uleb128 0x1b
	.long	.LASF137
	.byte	0x1
	.value	0x407
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xc36
	.uleb128 0x2f
	.string	"arg"
	.byte	0x1
	.value	0x407
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2f
	.string	"pcb"
	.byte	0x1
	.value	0x407
	.long	0x34b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.string	"p"
	.byte	0x1
	.value	0x407
	.long	0x222
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF57
	.byte	0x1
	.value	0x407
	.long	0x3fa
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF138
	.byte	0x1
	.value	0x407
	.long	0xd2
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.value	0x409
	.long	0xbc
	.long	.LLST18
	.uleb128 0x23
	.long	.LASF110
	.byte	0x1
	.value	0x40a
	.long	0xd2
	.long	.LLST19
	.uleb128 0x23
	.long	.LASF139
	.byte	0x1
	.value	0x40b
	.long	0xd2
	.long	.LLST20
	.uleb128 0x22
	.string	"hdr"
	.byte	0x1
	.value	0x40c
	.long	0x42b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x22
	.string	"ans"
	.byte	0x1
	.value	0x40d
	.long	0x4b0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x22
	.string	"qry"
	.byte	0x1
	.value	0x40e
	.long	0x48b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x23
	.long	.LASF140
	.byte	0x1
	.value	0x40f
	.long	0xd2
	.long	.LLST21
	.uleb128 0x23
	.long	.LASF141
	.byte	0x1
	.value	0x40f
	.long	0xd2
	.long	.LLST22
	.uleb128 0x31
	.long	.LASF194
	.byte	0x1
	.value	0x4aa
	.long	.L67
	.uleb128 0x32
	.long	.LBB18
	.long	.LBE18-.LBB18
	.long	0xc11
	.uleb128 0x23
	.long	.LASF129
	.byte	0x1
	.value	0x421
	.long	0xc36
	.long	.LLST23
	.uleb128 0x33
	.long	0x5ef
	.long	.LBB19
	.long	.LBE19-.LBB19
	.byte	0x1
	.value	0x43c
	.long	0xadc
	.uleb128 0x34
	.long	0x616
	.long	.LLST24
	.uleb128 0x34
	.long	0x60c
	.long	.LLST25
	.uleb128 0x34
	.long	0x600
	.long	.LLST26
	.uleb128 0x35
	.long	.LBB20
	.long	.LBE20-.LBB20
	.uleb128 0x2b
	.long	0x622
	.long	.LLST27
	.uleb128 0x2b
	.long	0x62c
	.long	.LLST28
	.uleb128 0x32
	.long	.LBB21
	.long	.LBE21-.LBB21
	.long	0xac8
	.uleb128 0x2b
	.long	0x639
	.long	.LLST29
	.uleb128 0x20
	.long	.LVL76
	.long	0x1237
	.byte	0
	.uleb128 0x20
	.long	.LVL73
	.long	0x1237
	.uleb128 0x20
	.long	.LVL82
	.long	0x1237
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x8eb
	.long	.LBB22
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x455
	.long	0xb25
	.uleb128 0x36
	.long	0x906
	.uleb128 0x36
	.long	0x8fc
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2b
	.long	0x912
	.long	.LLST30
	.uleb128 0x2b
	.long	0x91c
	.long	.LLST31
	.uleb128 0x20
	.long	.LVL92
	.long	0x1237
	.uleb128 0x20
	.long	.LVL106
	.long	0x1237
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LBB26
	.long	.LBE26-.LBB26
	.long	0xbb6
	.uleb128 0x37
	.long	.LASF142
	.byte	0x1
	.value	0x467
	.long	0x258
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x33
	.long	0x929
	.long	.LBB27
	.long	.LBE27-.LBB27
	.byte	0x1
	.value	0x46f
	.long	0xb9a
	.uleb128 0x34
	.long	0x942
	.long	.LLST32
	.uleb128 0x34
	.long	0x936
	.long	.LLST33
	.uleb128 0x35
	.long	.LBB28
	.long	.LBE28-.LBB28
	.uleb128 0x2b
	.long	0x94e
	.long	.LLST34
	.uleb128 0x38
	.long	.LVL113
	.long	0x645
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x76
	.sleb128 0
	.byte	0x3
	.long	dns_table+4
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL109
	.long	0x1243
	.uleb128 0x20
	.long	.LVL110
	.long	0x1216
	.uleb128 0x20
	.long	.LVL111
	.long	0x124f
	.byte	0
	.uleb128 0x20
	.long	.LVL62
	.long	0x11dc
	.uleb128 0x20
	.long	.LVL65
	.long	0x11dc
	.uleb128 0x20
	.long	.LVL84
	.long	0x1243
	.uleb128 0x20
	.long	.LVL87
	.long	0x1216
	.uleb128 0x24
	.long	.LVL88
	.long	0x645
	.long	0xbf5
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.long	.LVL95
	.long	0x1243
	.uleb128 0x20
	.long	.LVL99
	.long	0x11dc
	.uleb128 0x20
	.long	.LVL100
	.long	0x11dc
	.byte	0
	.uleb128 0x20
	.long	.LVL56
	.long	0x1243
	.uleb128 0x20
	.long	.LVL57
	.long	0x11dc
	.uleb128 0x20
	.long	.LVL116
	.long	0x1216
	.uleb128 0x20
	.long	.LVL117
	.long	0x1222
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xc3c
	.uleb128 0x7
	.long	0x512
	.uleb128 0x39
	.long	0x5c9
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0xc82
	.uleb128 0x3a
	.long	0x5d6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x34
	.long	0x5e2
	.long	.LLST35
	.uleb128 0x35
	.long	.LBB31
	.long	.LBE31-.LBB31
	.uleb128 0x34
	.long	0x5e2
	.long	.LLST36
	.uleb128 0x34
	.long	0x5d6
	.long	.LLST37
	.byte	0
	.byte	0
	.uleb128 0x3b
	.long	.LASF145
	.byte	0x1
	.value	0x124
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xcc3
	.uleb128 0x37
	.long	.LASF121
	.byte	0x1
	.value	0x128
	.long	0x286
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LVL123
	.long	0x125a
	.uleb128 0x20
	.long	.LVL124
	.long	0x5c9
	.uleb128 0x20
	.long	.LVL125
	.long	0x1222
	.byte	0
	.uleb128 0x3c
	.long	.LASF157
	.byte	0x1
	.value	0x168
	.long	0x3fa
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xced
	.uleb128 0x30
	.long	.LASF120
	.byte	0x1
	.value	0x168
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.long	.LASF144
	.byte	0x1
	.value	0x3da
	.byte	0x1
	.long	0xd05
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x3dc
	.long	0xbc
	.byte	0
	.uleb128 0x3b
	.long	.LASF146
	.byte	0x1
	.value	0x176
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xd5e
	.uleb128 0x3d
	.long	0xced
	.long	.LBB35
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x179
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2b
	.long	0xcfa
	.long	.LLST38
	.uleb128 0x24
	.long	.LVL128
	.long	0x832
	.long	0xd4c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL129
	.long	0x832
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.long	.LASF147
	.byte	0x1
	.value	0x219
	.long	0xf3
	.byte	0x1
	.long	0xd92
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.value	0x219
	.long	0x98
	.uleb128 0x15
	.long	.LASF57
	.byte	0x1
	.value	0x219
	.long	0x69c
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x21b
	.long	0xbc
	.byte	0
	.uleb128 0x16
	.long	.LASF148
	.byte	0x1
	.value	0x4ba
	.long	0xf3
	.byte	0x1
	.long	0xe24
	.uleb128 0x15
	.long	.LASF116
	.byte	0x1
	.value	0x4ba
	.long	0x98
	.uleb128 0x15
	.long	.LASF149
	.byte	0x1
	.value	0x4ba
	.long	0x2c
	.uleb128 0x15
	.long	.LASF118
	.byte	0x1
	.value	0x4ba
	.long	0x405
	.uleb128 0x15
	.long	.LASF150
	.byte	0x1
	.value	0x4bb
	.long	0x8f
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x4bd
	.long	0xbc
	.uleb128 0x19
	.long	.LASF151
	.byte	0x1
	.value	0x4be
	.long	0xbc
	.uleb128 0x19
	.long	.LASF152
	.byte	0x1
	.value	0x4be
	.long	0xbc
	.uleb128 0x19
	.long	.LASF129
	.byte	0x1
	.value	0x4bf
	.long	0x7ec
	.uleb128 0x19
	.long	.LASF153
	.byte	0x1
	.value	0x4c0
	.long	0x2c
	.uleb128 0x18
	.string	"req"
	.byte	0x1
	.value	0x4c1
	.long	0xe24
	.uleb128 0x18
	.string	"r"
	.byte	0x1
	.value	0x4c4
	.long	0xbc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x598
	.uleb128 0x16
	.long	.LASF154
	.byte	0x1
	.value	0x310
	.long	0xbc
	.byte	0x1
	.long	0xe52
	.uleb128 0x18
	.string	"i"
	.byte	0x1
	.value	0x312
	.long	0xbc
	.uleb128 0x18
	.string	"idx"
	.byte	0x1
	.value	0x313
	.long	0xbc
	.byte	0
	.uleb128 0x16
	.long	.LASF155
	.byte	0x1
	.value	0x2ee
	.long	0x34b
	.byte	0x1
	.long	0xe9a
	.uleb128 0x18
	.string	"err"
	.byte	0x1
	.value	0x2f0
	.long	0xf3
	.uleb128 0x18
	.string	"ret"
	.byte	0x1
	.value	0x2f1
	.long	0x34b
	.uleb128 0x1a
	.uleb128 0x19
	.long	.LASF138
	.byte	0x1
	.value	0x2f9
	.long	0xd2
	.uleb128 0x27
	.long	.LASF156
	.byte	0x1
	.value	0x2f9
	.long	0x25
	.byte	0
	.uleb128 0x28
	.uleb128 0x28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.long	.LASF158
	.byte	0x1
	.value	0x561
	.long	0xf3
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x1091
	.uleb128 0x1d
	.long	.LASF127
	.byte	0x1
	.value	0x561
	.long	0x98
	.long	.LLST39
	.uleb128 0x30
	.long	.LASF57
	.byte	0x1
	.value	0x561
	.long	0x69c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF118
	.byte	0x1
	.value	0x561
	.long	0x405
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF150
	.byte	0x1
	.value	0x562
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.long	.LASF159
	.byte	0x1
	.value	0x562
	.long	0xbc
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.value	0x564
	.long	0x2c
	.long	.LLST40
	.uleb128 0x33
	.long	0xd5e
	.long	.LBB50
	.long	.LBE50-.LBB50
	.byte	0x1
	.value	0x589
	.long	0xf54
	.uleb128 0x36
	.long	0xd7b
	.uleb128 0x36
	.long	0xd6f
	.uleb128 0x35
	.long	.LBB51
	.long	.LBE51-.LBB51
	.uleb128 0x2b
	.long	0xd87
	.long	.LLST41
	.uleb128 0x20
	.long	.LVL137
	.long	0x1265
	.uleb128 0x20
	.long	.LVL139
	.long	0x1265
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	0xd92
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x1
	.value	0x5a3
	.long	0x107e
	.uleb128 0x36
	.long	0xdc7
	.uleb128 0x36
	.long	0xdbb
	.uleb128 0x36
	.long	0xdaf
	.uleb128 0x36
	.long	0xda3
	.uleb128 0x35
	.long	.LBB53
	.long	.LBE53-.LBB53
	.uleb128 0x2b
	.long	0xdd3
	.long	.LLST42
	.uleb128 0x2b
	.long	0xddd
	.long	.LLST43
	.uleb128 0x2b
	.long	0xde9
	.long	.LLST44
	.uleb128 0x2b
	.long	0xdf5
	.long	.LLST45
	.uleb128 0x2b
	.long	0xe01
	.long	.LLST46
	.uleb128 0x2b
	.long	0xe0d
	.long	.LLST47
	.uleb128 0x2b
	.long	0xe19
	.long	.LLST48
	.uleb128 0x29
	.long	0xe2a
	.long	.LBB54
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.value	0x523
	.long	0x105e
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x50
	.uleb128 0x2b
	.long	0xe3b
	.long	.LLST49
	.uleb128 0x2b
	.long	0xe45
	.long	.LLST50
	.uleb128 0x3d
	.long	0xe52
	.long	.LBB56
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.value	0x31b
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x70
	.uleb128 0x2b
	.long	0xe63
	.long	.LLST51
	.uleb128 0x2b
	.long	0xe6f
	.long	.LLST52
	.uleb128 0x32
	.long	.LBB58
	.long	.LBE58-.LBB58
	.long	0x103f
	.uleb128 0x2b
	.long	0xe7c
	.long	.LLST53
	.uleb128 0x20
	.long	.LVL178
	.long	0x122b
	.uleb128 0x20
	.long	.LVL179
	.long	0x1270
	.byte	0
	.uleb128 0x20
	.long	.LVL175
	.long	0x127b
	.uleb128 0x20
	.long	.LVL180
	.long	0x11c6
	.uleb128 0x20
	.long	.LVL183
	.long	0x1286
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL143
	.long	0x1265
	.uleb128 0x38
	.long	.LVL170
	.long	0x832
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x91
	.sleb128 -33
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL134
	.long	0x1291
	.uleb128 0x20
	.long	.LVL135
	.long	0x129c
	.byte	0
	.uleb128 0x3c
	.long	.LASF160
	.byte	0x1
	.value	0x54c
	.long	0xf3
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f1
	.uleb128 0x30
	.long	.LASF127
	.byte	0x1
	.value	0x54c
	.long	0x98
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.long	.LASF57
	.byte	0x1
	.value	0x54c
	.long	0x69c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LASF118
	.byte	0x1
	.value	0x54c
	.long	0x405
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x30
	.long	.LASF150
	.byte	0x1
	.value	0x54d
	.long	0x8f
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x20
	.long	.LVL187
	.long	0xe9a
	.byte	0
	.uleb128 0xe
	.long	0x34b
	.long	0x1101
	.uleb128 0xf
	.long	0x88
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF161
	.byte	0x1
	.value	0x115
	.long	0x10f1
	.uleb128 0x5
	.byte	0x3
	.long	dns_pcbs
	.uleb128 0x37
	.long	.LASF162
	.byte	0x1
	.value	0x117
	.long	0xbc
	.uleb128 0x5
	.byte	0x3
	.long	dns_last_pcb_idx
	.uleb128 0x37
	.long	.LASF163
	.byte	0x1
	.value	0x119
	.long	0xbc
	.uleb128 0x5
	.byte	0x3
	.long	dns_seqno
	.uleb128 0xe
	.long	0x512
	.long	0x1147
	.uleb128 0xf
	.long	0x88
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF164
	.byte	0x1
	.value	0x11a
	.long	0x1137
	.uleb128 0x5
	.byte	0x3
	.long	dns_table
	.uleb128 0xe
	.long	0x598
	.long	0x1169
	.uleb128 0xf
	.long	0x88
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF165
	.byte	0x1
	.value	0x11b
	.long	0x1159
	.uleb128 0x5
	.byte	0x3
	.long	dns_requests
	.uleb128 0xe
	.long	0x286
	.long	0x118b
	.uleb128 0xf
	.long	0x88
	.byte	0x1
	.byte	0
	.uleb128 0x37
	.long	.LASF166
	.byte	0x1
	.value	0x11c
	.long	0x117b
	.uleb128 0x5
	.byte	0x3
	.long	dns_servers
	.uleb128 0x37
	.long	.LASF167
	.byte	0x1
	.value	0x11d
	.long	0xa3
	.uleb128 0x5
	.byte	0x3
	.long	num_dns
	.uleb128 0x3e
	.long	.LASF168
	.byte	0xf
	.byte	0x17
	.long	0x37
	.uleb128 0x3f
	.long	.LASF169
	.byte	0x9
	.value	0x138
	.long	0x400
	.uleb128 0x40
	.long	.LASF170
	.long	.LASF170
	.byte	0xc
	.byte	0x75
	.uleb128 0x40
	.long	.LASF171
	.long	.LASF171
	.byte	0x7
	.byte	0xfa
	.uleb128 0x40
	.long	.LASF172
	.long	.LASF172
	.byte	0x10
	.byte	0x56
	.uleb128 0x41
	.long	.LASF173
	.long	.LASF173
	.byte	0x7
	.value	0x110
	.uleb128 0x41
	.long	.LASF174
	.long	.LASF174
	.byte	0x7
	.value	0x11e
	.uleb128 0x41
	.long	.LASF175
	.long	.LASF175
	.byte	0x7
	.value	0x111
	.uleb128 0x40
	.long	.LASF176
	.long	.LASF176
	.byte	0xc
	.byte	0x83
	.uleb128 0x41
	.long	.LASF177
	.long	.LASF177
	.byte	0x7
	.value	0x109
	.uleb128 0x42
	.long	.LASF195
	.long	.LASF195
	.uleb128 0x41
	.long	.LASF156
	.long	.LASF156
	.byte	0x1
	.value	0x2f9
	.uleb128 0x41
	.long	.LASF178
	.long	.LASF178
	.byte	0x7
	.value	0x11d
	.uleb128 0x41
	.long	.LASF179
	.long	.LASF179
	.byte	0x7
	.value	0x10f
	.uleb128 0x40
	.long	.LASF180
	.long	.LASF180
	.byte	0x10
	.byte	0x5b
	.uleb128 0x40
	.long	.LASF181
	.long	.LASF181
	.byte	0x8
	.byte	0xf7
	.uleb128 0x40
	.long	.LASF182
	.long	.LASF182
	.byte	0x10
	.byte	0x80
	.uleb128 0x40
	.long	.LASF183
	.long	.LASF183
	.byte	0xc
	.byte	0x76
	.uleb128 0x40
	.long	.LASF184
	.long	.LASF184
	.byte	0xc
	.byte	0x74
	.uleb128 0x40
	.long	.LASF185
	.long	.LASF185
	.byte	0xc
	.byte	0x7b
	.uleb128 0x40
	.long	.LASF186
	.long	.LASF186
	.byte	0x11
	.byte	0x20
	.uleb128 0x40
	.long	.LASF187
	.long	.LASF187
	.byte	0x8
	.byte	0xf8
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.long	.LVL5
	.value	0x2
	.byte	0x75
	.sleb128 -29
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x52
	.long	.LVL1
	.long	.LFE33
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL4
	.long	.LVL6
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL37
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	.LVL37
	.long	.LFE30
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST4:
	.long	.LVL33
	.long	.LVL34-1
	.value	0x1
	.byte	0x50
	.long	.LVL34-1
	.long	.LVL35
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST5:
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL30
	.value	0x1
	.byte	0x56
	.long	.LVL30
	.long	.LVL35
	.value	0x7
	.byte	0x75
	.sleb128 -64
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL25
	.long	.LVL29
	.value	0x2
	.byte	0x75
	.sleb128 -64
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x75
	.sleb128 -64
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x57
	.long	.LVL20
	.long	.LVL21
	.value	0x1
	.byte	0x51
	.long	.LVL21
	.long	.LVL35
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST9:
	.long	.LVL20
	.long	.LVL24
	.value	0x1
	.byte	0x51
	.long	.LVL24
	.long	.LVL35
	.value	0x3
	.byte	0x75
	.sleb128 -72
	.long	0
	.long	0
.LLST10:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL26-1
	.value	0x1
	.byte	0x52
	.long	.LVL26-1
	.long	.LVL35
	.value	0x3
	.byte	0x75
	.sleb128 -68
	.long	0
	.long	0
.LLST11:
	.long	.LVL31
	.long	.LVL32-1
	.value	0xd
	.byte	0x75
	.sleb128 -60
	.byte	0x6
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table+15
	.byte	0x22
	.long	0
	.long	0
.LLST12:
	.long	.LVL9
	.long	.LVL10
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL10
	.long	.LVL11
	.value	0xe
	.byte	0x75
	.sleb128 -60
	.byte	0x6
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL11
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	.LVL16
	.long	.LVL37
	.value	0xe
	.byte	0x75
	.sleb128 -60
	.byte	0x6
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL37
	.long	.LFE30
	.value	0xf
	.byte	0x91
	.sleb128 -68
	.byte	0x6
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL38
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL52
	.value	0x1
	.byte	0x56
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53-1
	.long	.LFE35
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL39
	.long	.LVL40
	.value	0xd
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL40
	.long	.LVL51
	.value	0x1
	.byte	0x53
	.long	.LVL51
	.long	.LVL52
	.value	0xd
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL52
	.long	.LVL53-1
	.value	0xd
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL53-1
	.long	.LVL53
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x53
	.long	.LVL54
	.long	.LFE35
	.value	0x11
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST16:
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL43
	.long	.LVL44
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL57
	.long	.LVL58
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL57
	.long	.LVL61
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL85
	.long	.LVL87-1
	.value	0x1
	.byte	0x52
	.long	.LVL89
	.long	.LVL90
	.value	0x1
	.byte	0x52
	.long	.LVL96
	.long	.LVL98
	.value	0x1
	.byte	0x50
	.long	.LVL98
	.long	.LVL102
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	.LVL102
	.long	.LVL103
	.value	0x1
	.byte	0x52
	.long	.LVL107
	.long	.LVL108
	.value	0x1
	.byte	0x50
	.long	.LVL108
	.long	.LVL115
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	0
	.long	0
.LLST21:
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LVL67
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST22:
	.long	.LVL66
	.long	.LVL68
	.value	0x1
	.byte	0x50
	.long	.LVL68
	.long	.LVL101
	.value	0x3
	.byte	0x91
	.sleb128 -86
	.long	.LVL102
	.long	.LVL115
	.value	0x3
	.byte	0x91
	.sleb128 -86
	.long	0
	.long	0
.LLST23:
	.long	.LVL57
	.long	.LVL58
	.value	0x6
	.byte	0x3
	.long	dns_table
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x6
	.byte	0x3
	.long	dns_table+272
	.byte	0x9f
	.long	.LVL59
	.long	.LVL60
	.value	0x6
	.byte	0x3
	.long	dns_table
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL69
	.long	.LVL83
	.value	0x2
	.byte	0x3c
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL69
	.long	.LVL83
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST26:
	.long	.LVL69
	.long	.LVL80
	.value	0x1
	.byte	0x56
	.long	.LVL81
	.long	.LVL83
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST27:
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x50
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL70
	.long	.LVL71
	.value	0x1
	.byte	0x57
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x50
	.long	.LVL72
	.long	.LVL75
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL75
	.long	.LVL86
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST29:
	.long	.LVL76
	.long	.LVL77
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL92
	.long	.LVL94
	.value	0x1
	.byte	0x50
	.long	.LVL103
	.long	.LVL105
	.value	0x1
	.byte	0x50
	.long	.LVL106
	.long	.LVL107
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL90
	.long	.LVL91
	.value	0x1
	.byte	0x52
	.long	.LVL91
	.long	.LVL97
	.value	0x1
	.byte	0x56
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x56
	.long	.LVL104
	.long	.LVL106-1
	.value	0x1
	.byte	0x52
	.long	.LVL106-1
	.long	.LVL107
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	0
	.long	0
.LLST32:
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST33:
	.long	.LVL111
	.long	.LVL114
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST34:
	.long	.LVL111
	.long	.LVL115
	.value	0xf
	.byte	0x91
	.sleb128 -84
	.byte	0x6
	.byte	0xa
	.value	0x110
	.byte	0x1e
	.byte	0x3
	.long	dns_table
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST35:
	.long	.LVL118
	.long	.LVL120
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL120
	.long	.LVL121
	.value	0x1
	.byte	0x52
	.long	.LVL121
	.long	.LFE24
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST36:
	.long	.LVL119
	.long	.LVL120
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL120
	.long	.LVL121
	.value	0x1
	.byte	0x52
	.long	.LVL121
	.long	.LVL122
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST37:
	.long	.LVL119
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST38:
	.long	.LVL127
	.long	.LVL128
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL128
	.long	.LFE26
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL130
	.long	.LVL131
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST40:
	.long	.LVL132
	.long	.LVL133
	.value	0x1
	.byte	0x50
	.long	.LVL133
	.long	.LVL163
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	.LVL171
	.long	.LVL174
	.value	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
.LLST41:
	.long	.LVL136
	.long	.LVL138
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL138
	.long	.LVL140
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST42:
	.long	.LVL142
	.long	.LVL147
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LVL151
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL153
	.long	.LVL155
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL155
	.long	.LVL157
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL157
	.long	.LVL185
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	0
	.long	0
.LLST43:
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LVL151
	.value	0x1
	.byte	0x50
	.long	.LVL151
	.long	.LVL152
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL153
	.long	.LVL155
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST44:
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL149
	.long	.LVL150
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL151
	.long	.LVL152
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL153
	.long	.LVL154
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	.LVL155
	.long	.LVL157
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	0
	.long	0
.LLST45:
	.long	.LVL148
	.long	.LVL149
	.value	0x6
	.byte	0x3
	.long	dns_table
	.byte	0x9f
	.long	.LVL149
	.long	.LVL151
	.value	0x6
	.byte	0x3
	.long	dns_table+272
	.byte	0x9f
	.long	.LVL151
	.long	.LVL152
	.value	0x6
	.byte	0x3
	.long	dns_table
	.byte	0x9f
	.long	.LVL153
	.long	.LVL155
	.value	0x6
	.byte	0x3
	.long	dns_table+272
	.byte	0x9f
	.long	.LVL157
	.long	.LVL170
	.value	0x1
	.byte	0x53
	.long	.LVL171
	.long	.LVL185
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST46:
	.long	.LVL160
	.long	.LVL163
	.value	0x1
	.byte	0x52
	.long	.LVL171
	.long	.LVL175-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST47:
	.long	.LVL157
	.long	.LVL159
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL170
	.value	0xc
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	dns_requests
	.byte	0x22
	.byte	0x9f
	.long	.LVL171
	.long	.LVL185
	.value	0xc
	.byte	0x91
	.sleb128 -40
	.byte	0x6
	.byte	0x3c
	.byte	0x1e
	.byte	0x3
	.long	dns_requests
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL144
	.long	.LVL145
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL157
	.long	.LVL158
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL158
	.long	.LVL159
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL161
	.long	.LVL162
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL162
	.long	.LVL163
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL163
	.long	.LVL166
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL166
	.long	.LVL169
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL171
	.long	.LVL172
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL172
	.long	.LVL173
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL164
	.long	.LVL166
	.value	0x1
	.byte	0x50
	.long	.LVL166
	.long	.LVL167
	.value	0x3
	.byte	0x70
	.sleb128 1
	.byte	0x9f
	.long	.LVL167
	.long	.LVL168
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST51:
	.long	.LVL179
	.long	.LVL180-1
	.value	0x1
	.byte	0x50
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST52:
	.long	.LVL176
	.long	.LVL177
	.value	0x1
	.byte	0x50
	.long	.LVL177
	.long	.LVL184
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST53:
	.long	.LVL178
	.long	.LVL179-1
	.value	0x1
	.byte	0x50
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
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB40
	.long	.LFE40-.LFB40
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
	.long	.LBB22
	.long	.LBE22
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LBB35
	.long	.LBE35
	.long	.LBB39
	.long	.LBE39
	.long	.LBB40
	.long	.LBE40
	.long	0
	.long	0
	.long	.LBB54
	.long	.LBE54
	.long	.LBB65
	.long	.LBE65
	.long	.LBB66
	.long	.LBE66
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB61
	.long	.LBE61
	.long	.LBB62
	.long	.LBE62
	.long	0
	.long	0
	.long	.LFB33
	.long	.LFE33
	.long	.LFB30
	.long	.LFE30
	.long	.LFB35
	.long	.LFE35
	.long	.LFB38
	.long	.LFE38
	.long	.LFB24
	.long	.LFE24
	.long	.LFB23
	.long	.LFE23
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB41
	.long	.LFE41
	.long	.LFB40
	.long	.LFE40
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"DNS_STATE_DONE"
.LASF84:
	.string	"udp_pcb"
.LASF96:
	.string	"flags1"
.LASF97:
	.string	"flags2"
.LASF156:
	.string	"rand"
.LASF94:
	.string	"dns_found_callback"
.LASF66:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF87:
	.string	"so_options"
.LASF102:
	.string	"dns_query"
.LASF177:
	.string	"pbuf_free"
.LASF193:
	.string	"again"
.LASF160:
	.string	"dns_gethostbyname"
.LASF45:
	.string	"PBUF_RAM"
.LASF81:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF44:
	.string	"PBUF_RAW"
.LASF53:
	.string	"flags"
.LASF38:
	.string	"ERR_CLSD"
.LASF31:
	.string	"ERR_USE"
.LASF39:
	.string	"ERR_ARG"
.LASF88:
	.string	"local_port"
.LASF191:
	.string	"dns_setserver"
.LASF0:
	.string	"unsigned int"
.LASF49:
	.string	"next"
.LASF123:
	.string	"start_offset"
.LASF161:
	.string	"dns_pcbs"
.LASF22:
	.string	"err_t"
.LASF142:
	.string	"ip4addr"
.LASF179:
	.string	"pbuf_copy_partial"
.LASF137:
	.string	"dns_recv"
.LASF19:
	.string	"u16_t"
.LASF91:
	.string	"mcast_ttl"
.LASF133:
	.string	"dns_check_entry"
.LASF120:
	.string	"numdns"
.LASF180:
	.string	"lwip_htonl"
.LASF172:
	.string	"lwip_htons"
.LASF149:
	.string	"hostnamelen"
.LASF76:
	.string	"MEMP_PBUF_POOL"
.LASF37:
	.string	"ERR_RST"
.LASF187:
	.string	"ip4addr_aton"
.LASF118:
	.string	"found"
.LASF40:
	.string	"PBUF_TRANSPORT"
.LASF125:
	.string	"query_idx"
.LASF32:
	.string	"ERR_ALREADY"
.LASF78:
	.string	"lwip_ip_addr_type"
.LASF114:
	.string	"seqno"
.LASF69:
	.string	"MEMP_NETCONN"
.LASF72:
	.string	"MEMP_IGMP_GROUP"
.LASF173:
	.string	"pbuf_take"
.LASF70:
	.string	"MEMP_TCPIP_MSG_API"
.LASF112:
	.string	"server_idx"
.LASF15:
	.string	"float"
.LASF139:
	.string	"res_idx"
.LASF147:
	.string	"dns_lookup"
.LASF134:
	.string	"index"
.LASF169:
	.string	"ip_addr_any"
.LASF152:
	.string	"lseqi"
.LASF168:
	.string	"aos_log_level"
.LASF11:
	.string	"long long unsigned int"
.LASF136:
	.string	"offset"
.LASF108:
	.string	"dns_table_entry"
.LASF58:
	.string	"ip4_addr_t"
.LASF135:
	.string	"dns_skip_name"
.LASF29:
	.string	"ERR_VAL"
.LASF190:
	.string	"/home/stone/Documents/pca"
.LASF71:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF47:
	.string	"PBUF_REF"
.LASF181:
	.string	"ipaddr_addr"
.LASF51:
	.string	"tot_len"
.LASF109:
	.string	"ipaddr"
.LASF4:
	.string	"size_t"
.LASF141:
	.string	"nanswers"
.LASF50:
	.string	"payload"
.LASF41:
	.string	"PBUF_IP"
.LASF55:
	.string	"pbuf"
.LASF166:
	.string	"dns_servers"
.LASF105:
	.string	"DNS_STATE_NEW"
.LASF48:
	.string	"PBUF_POOL"
.LASF126:
	.string	"copy_len"
.LASF77:
	.string	"MEMP_MAX"
.LASF18:
	.string	"s8_t"
.LASF192:
	.string	"dns_send"
.LASF132:
	.string	"dns_call_found"
.LASF30:
	.string	"ERR_WOULDBLOCK"
.LASF26:
	.string	"ERR_TIMEOUT"
.LASF75:
	.string	"MEMP_PBUF"
.LASF13:
	.string	"char"
.LASF99:
	.string	"numanswers"
.LASF167:
	.string	"num_dns"
.LASF189:
	.string	"src/dns.c"
.LASF178:
	.string	"pbuf_try_get_at"
.LASF153:
	.string	"namelen"
.LASF14:
	.string	"uint8_t"
.LASF95:
	.string	"dns_hdr"
.LASF171:
	.string	"pbuf_alloc"
.LASF119:
	.string	"dns_table_idx"
.LASF127:
	.string	"hostname"
.LASF68:
	.string	"MEMP_NETBUF"
.LASF1:
	.string	"long long int"
.LASF61:
	.string	"IPADDR_TYPE_ANY"
.LASF35:
	.string	"ERR_IF"
.LASF121:
	.string	"dnsserver"
.LASF175:
	.string	"pbuf_take_at"
.LASF65:
	.string	"MEMP_TCP_PCB"
.LASF17:
	.string	"u8_t"
.LASF176:
	.string	"udp_sendto"
.LASF100:
	.string	"numauthrr"
.LASF89:
	.string	"remote_port"
.LASF158:
	.string	"dns_gethostbyname_addrtype"
.LASF128:
	.string	"hostname_part"
.LASF163:
	.string	"dns_seqno"
.LASF42:
	.string	"PBUF_LINK"
.LASF54:
	.string	"_Bool"
.LASF131:
	.string	"dns_create_txid"
.LASF130:
	.string	"dns_compare_name"
.LASF155:
	.string	"dns_alloc_random_port"
.LASF182:
	.string	"lwip_strnicmp"
.LASF122:
	.string	"query"
.LASF90:
	.string	"multicast_ip"
.LASF2:
	.string	"long double"
.LASF157:
	.string	"dns_getserver"
.LASF25:
	.string	"ERR_BUF"
.LASF83:
	.string	"udp_recv_fn"
.LASF21:
	.string	"u32_t"
.LASF7:
	.string	"short int"
.LASF140:
	.string	"nquestions"
.LASF9:
	.string	"long int"
.LASF98:
	.string	"numquestions"
.LASF73:
	.string	"MEMP_SYS_TIMEOUT"
.LASF195:
	.string	"__stack_chk_fail"
.LASF151:
	.string	"lseq"
.LASF165:
	.string	"dns_requests"
.LASF64:
	.string	"MEMP_UDP_PCB"
.LASF85:
	.string	"local_ip"
.LASF28:
	.string	"ERR_INPROGRESS"
.LASF56:
	.string	"ip4_addr"
.LASF5:
	.string	"__uint8_t"
.LASF33:
	.string	"ERR_ISCONN"
.LASF116:
	.string	"name"
.LASF174:
	.string	"pbuf_put_at"
.LASF63:
	.string	"MEMP_RAW_PCB"
.LASF93:
	.string	"recv_arg"
.LASF154:
	.string	"dns_alloc_pcb"
.LASF12:
	.string	"sizetype"
.LASF162:
	.string	"dns_last_pcb_idx"
.LASF10:
	.string	"long unsigned int"
.LASF144:
	.string	"dns_check_entries"
.LASF20:
	.string	"s16_t"
.LASF138:
	.string	"port"
.LASF146:
	.string	"dns_tmr"
.LASF101:
	.string	"numextrarr"
.LASF185:
	.string	"udp_recv"
.LASF117:
	.string	"dns_req_entry"
.LASF129:
	.string	"entry"
.LASF52:
	.string	"type"
.LASF6:
	.string	"unsigned char"
.LASF79:
	.string	"lwip_internal_netif_client_data_index"
.LASF59:
	.string	"IPADDR_TYPE_V4"
.LASF188:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF60:
	.string	"IPADDR_TYPE_V6"
.LASF194:
	.string	"memerr"
.LASF67:
	.string	"MEMP_TCP_SEG"
.LASF164:
	.string	"dns_table"
.LASF115:
	.string	"pcb_idx"
.LASF150:
	.string	"callback_arg"
.LASF57:
	.string	"addr"
.LASF106:
	.string	"DNS_STATE_ASKING"
.LASF145:
	.string	"dns_init"
.LASF111:
	.string	"state"
.LASF183:
	.string	"udp_bind"
.LASF82:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF103:
	.string	"dns_answer"
.LASF36:
	.string	"ERR_ABRT"
.LASF104:
	.string	"DNS_STATE_UNUSED"
.LASF113:
	.string	"retries"
.LASF170:
	.string	"udp_remove"
.LASF23:
	.string	"ERR_OK"
.LASF92:
	.string	"recv"
.LASF124:
	.string	"response_offset"
.LASF80:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF159:
	.string	"dns_addrtype"
.LASF3:
	.string	"signed char"
.LASF8:
	.string	"short unsigned int"
.LASF34:
	.string	"ERR_CONN"
.LASF148:
	.string	"dns_enqueue"
.LASF86:
	.string	"remote_ip"
.LASF27:
	.string	"ERR_RTE"
.LASF143:
	.string	"dns_correct_response"
.LASF16:
	.string	"double"
.LASF62:
	.string	"ip_addr_t"
.LASF74:
	.string	"MEMP_NETDB"
.LASF43:
	.string	"PBUF_RAW_TX"
.LASF46:
	.string	"PBUF_ROM"
.LASF110:
	.string	"txid"
.LASF24:
	.string	"ERR_MEM"
.LASF186:
	.string	"strcmp"
.LASF184:
	.string	"udp_new_ip_type"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
