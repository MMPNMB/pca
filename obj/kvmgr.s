	.file	"kvmgr.c"
	.text
.Ltext0:
	.section	.text.unlikely.utils_crc8,"ax",@progbits
.LCOLDB0:
	.section	.text.utils_crc8,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.utils_crc8
.Ltext_cold0:
	.section	.text.utils_crc8
	.type	utils_crc8, @function
utils_crc8:
.LFB16:
	.file 1 "kernel/modules/fs/kv/kvmgr.c"
	.loc 1 106 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%eax, %ecx
	.loc 1 107 0
	xorl	%eax, %eax
.LVL1:
	.loc 1 106 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LVL2:
.L2:
	.loc 1 110 0
	decl	%edx
.LVL3:
	cmpw	$-1, %dx
	je	.L10
.LVL4:
	.loc 1 111 0
	xorb	(%ecx), %al
.LVL5:
	movb	$8, %bl
.LVL6:
.L5:
	.loc 1 113 0
	testb	%al, %al
	jns	.L3
	.loc 1 114 0
	addl	%eax, %eax
.LVL7:
	xorl	$49, %eax
.LVL8:
	jmp	.L4
.LVL9:
.L3:
	.loc 1 116 0
	addl	%eax, %eax
.LVL10:
.L4:
	.loc 1 112 0 discriminator 2
	decb	%bl
.LVL11:
	jne	.L5
	incl	%ecx
.LVL12:
	jmp	.L2
.LVL13:
.L10:
	.loc 1 122 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	utils_crc8, .-utils_crc8
	.section	.text.unlikely.utils_crc8
.LCOLDE0:
	.section	.text.utils_crc8
.LHOTE0:
	.section	.text.unlikely.kv_item_free,"ax",@progbits
.LCOLDB1:
	.section	.text.kv_item_free,"ax",@progbits
.LHOTB1:
	.type	kv_item_free, @function
kv_item_free:
.LFB21:
	.loc 1 151 0
	.cfi_startproc
.LVL14:
	.loc 1 152 0
	testl	%eax, %eax
	je	.L22
	.loc 1 151 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	movl	%eax, %ebx
	pushl	%edx
	.loc 1 153 0
	movl	8(%eax), %eax
.LVL15:
	testl	%eax, %eax
	je	.L13
	.loc 1 154 0
	subl	$12, %esp
	pushl	%eax
	call	aos_free
.LVL16:
	addl	$16, %esp
.L13:
	.loc 1 156 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL17:
	addl	$16, %esp
	.loc 1 158 0
	movl	-4(%ebp), %ebx
.LVL18:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
.L22:
	ret
	.cfi_endproc
.LFE21:
	.size	kv_item_free, .-kv_item_free
	.section	.text.unlikely.kv_item_free
.LCOLDE1:
	.section	.text.kv_item_free
.LHOTE1:
	.section	.text.unlikely.raw_read,"ax",@progbits
.LCOLDB2:
	.section	.text.raw_read,"ax",@progbits
.LHOTB2:
	.type	raw_read, @function
raw_read:
.LFB17:
	.loc 1 125 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 125 0
	movl	%eax, -12(%ebp)
	.loc 1 126 0
	leal	-12(%ebp), %eax
.LVL20:
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	pushl	$6
	call	hal_flash_read
.LVL21:
	.loc 1 127 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL22:
	ret
	.cfi_endproc
.LFE17:
	.size	raw_read, .-raw_read
	.section	.text.unlikely.raw_read
.LCOLDE2:
	.section	.text.raw_read
.LHOTE2:
	.section	.text.unlikely.__item_find_cb,"ax",@progbits
.LCOLDB3:
	.section	.text.__item_find_cb,"ax",@progbits
.LHOTB3:
	.type	__item_find_cb, @function
__item_find_cb:
.LFB27:
	.loc 1 320 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 321 0
	xorl	%eax, %eax
	.loc 1 320 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 321 0
	orl	$-1, %esi
	movl	%esi, %ecx
	.loc 1 320 0
	subl	$12, %esp
	.loc 1 320 0
	movl	8(%ebp), %ebx
	.loc 1 321 0
	movl	12(%ebp), %edi
	repnz scasb
.LVL24:
	movzbl	3(%ebx), %eax
	notl	%ecx
	decl	%ecx
	cmpl	%ecx, %eax
	jne	.L26
	.loc 1 325 0
	movzwl	4(%ebx), %edx
	subl	$12, %esp
	addl	%edx, %eax
	pushl	%eax
	call	aos_malloc
.LVL25:
	.loc 1 326 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 325 0
	movl	%eax, %edx
	movl	%eax, 8(%ebx)
	.loc 1 327 0
	movl	$-12, %ecx
	.loc 1 326 0
	je	.L27
	.loc 1 330 0
	movzwl	14(%ebx), %eax
	movzwl	12(%ebx), %ecx
	addl	$8, %eax
	call	raw_read
.LVL26:
	testl	%eax, %eax
	.loc 1 331 0
	movl	$-5, %ecx
	.loc 1 330 0
	jne	.L27
	.loc 1 334 0
	movl	12(%ebp), %edi
	movl	%esi, %ecx
	repnz scasb
	pushl	%eax
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	12(%ebp)
	pushl	8(%ebx)
	call	memcmp
.LVL27:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ecx
	je	.L27
.L26:
	.loc 1 338 0
	movl	$-11, %ecx
.L27:
	.loc 1 339 0
	leal	-12(%ebp), %esp
	movl	%ecx, %eax
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
.LFE27:
	.size	__item_find_cb, .-__item_find_cb
	.section	.text.unlikely.__item_find_cb
.LCOLDE3:
	.section	.text.__item_find_cb
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"%s = %s\r\n"
	.section	.text.unlikely.__item_print_cb,"ax",@progbits
.LCOLDB5:
	.section	.text.__item_print_cb,"ax",@progbits
.LHOTB5:
	.type	__item_print_cb, @function
__item_print_cb:
.LFB38:
	.loc 1 762 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$40, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 762 0
	movl	8(%ebp), %ebx
	.loc 1 765 0
	movzbl	3(%ebx), %eax
	incl	%eax
	pushl	%eax
	call	aos_malloc
.LVL29:
	movl	%eax, %esi
.LVL30:
	.loc 1 766 0
	addl	$16, %esp
	.loc 1 767 0
	movl	$-12, %eax
.LVL31:
	.loc 1 766 0
	testl	%esi, %esi
	je	.L35
	.loc 1 769 0
	movzbl	3(%ebx), %ecx
	xorl	%eax, %eax
	movl	%esi, %edi
	.loc 1 770 0
	movl	%esi, %edx
	.loc 1 769 0
	incl	%ecx
	rep stosb
	.loc 1 770 0
	movzwl	14(%ebx), %eax
	movzbl	3(%ebx), %ecx
	addl	$8, %eax
	call	raw_read
.LVL32:
	.loc 1 772 0
	movzwl	4(%ebx), %eax
	subl	$12, %esp
	incl	%eax
	pushl	%eax
	call	aos_malloc
.LVL33:
	.loc 1 773 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 772 0
	movl	%eax, -28(%ebp)
.LVL34:
	.loc 1 773 0
	jne	.L36
	.loc 1 774 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL35:
	.loc 1 775 0
	addl	$16, %esp
	movl	$-12, %eax
	jmp	.L35
.LVL36:
.L36:
	.loc 1 777 0
	movzwl	4(%ebx), %ecx
	movl	-28(%ebp), %edi
	xorl	%eax, %eax
.LVL37:
	incl	%ecx
	rep stosb
	.loc 1 778 0
	movzwl	14(%ebx), %edx
	movzbl	3(%ebx), %eax
	movzwl	4(%ebx), %ecx
	leal	8(%edx,%eax), %eax
	movl	-28(%ebp), %edx
	call	raw_read
.LVL38:
	.loc 1 780 0
	pushl	%eax
	pushl	-28(%ebp)
	pushl	%esi
	pushl	$.LC4
	call	aos_cli_printf
.LVL39:
	.loc 1 781 0
	movl	%esi, (%esp)
	call	aos_free
.LVL40:
	.loc 1 782 0
	popl	%edx
	pushl	-28(%ebp)
	call	aos_free
.LVL41:
	.loc 1 784 0
	addl	$16, %esp
	movl	$-11, %eax
.LVL42:
.L35:
	.loc 1 785 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL43:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	__item_print_cb, .-__item_print_cb
	.section	.text.unlikely.__item_print_cb
.LCOLDE5:
	.section	.text.__item_print_cb
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"kv-gc"
	.section	.text.unlikely.trigger_gc,"ax",@progbits
.LCOLDB7:
	.section	.text.trigger_gc,"ax",@progbits
.LHOTB7:
	.type	trigger_gc, @function
trigger_gc:
.LFB20:
	.loc 1 140 0
	.cfi_startproc
	.loc 1 141 0
	cmpb	$0, g_kv_mgr+1
	jne	.L43
	.loc 1 140 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
.LBB4:
.LBB5:
	.loc 1 145 0
	movb	$0, g_kv_mgr+2
	.loc 1 147 0
	pushl	$1024
	pushl	$0
	pushl	$aos_kv_gc
	pushl	$.LC6
	.loc 1 146 0
	movb	$1, g_kv_mgr+1
	.loc 1 147 0
	call	aos_task_new
.LVL44:
	addl	$16, %esp
.LBE5:
.LBE4:
	.loc 1 148 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L43:
	ret
	.cfi_endproc
.LFE20:
	.size	trigger_gc, .-trigger_gc
	.section	.text.unlikely.trigger_gc
.LCOLDE7:
	.section	.text.trigger_gc
.LHOTE7:
	.section	.text.unlikely.kv_item_store,"ax",@progbits
.LCOLDB8:
	.section	.text.kv_item_store,"ax",@progbits
.LHOTB8:
	.type	kv_item_store, @function
kv_item_store:
.LFB31:
	.loc 1 465 0
	.cfi_startproc
.LVL45:
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
	.loc 1 474 0
	xorl	%esi, %esi
	.loc 1 465 0
	subl	$72, %esp
	.loc 1 465 0
	movl	%eax, -56(%ebp)
	.loc 1 474 0
	movl	-56(%ebp), %edi
	.loc 1 465 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL46:
	movl	%ecx, -52(%ebp)
	movl	%edx, -64(%ebp)
	.loc 1 474 0
	orl	$-1, %ecx
.LVL47:
	movl	%esi, %eax
	.loc 1 476 0
	movzwl	-52(%ebp), %edx
.LVL48:
	.loc 1 474 0
	repnz scasb
.LVL49:
	notl	%ecx
	decl	%ecx
	movzbl	%cl, %eax
	.loc 1 478 0
	movzbl	%cl, %ecx
	addl	-52(%ebp), %ecx
	.loc 1 474 0
	movl	%eax, -60(%ebp)
	sall	$24, %eax
	orl	$61001, %eax
	movl	%eax, -68(%ebp)
	.loc 1 476 0
	movl	8(%ebp), %eax
	.loc 1 478 0
	movw	%cx, -44(%ebp)
	.loc 1 476 0
	sall	$16, %eax
	orl	%eax, %edx
	.loc 1 478 0
	movl	%ecx, %eax
	addl	$11, %eax
	.loc 1 476 0
	movl	%edx, -72(%ebp)
	.loc 1 478 0
	andl	$-4, %eax
	movw	%ax, -42(%ebp)
.LVL50:
	.loc 1 479 0
	movzwl	%ax, %eax
.LVL51:
	pushl	%eax
	movl	%eax, -48(%ebp)
	call	aos_malloc
.LVL52:
	movl	%eax, %ebx
.LVL53:
	.loc 1 480 0
	addl	$16, %esp
	movl	$-12, %eax
.LVL54:
	testl	%ebx, %ebx
	je	.L45
	.loc 1 484 0
	movl	-48(%ebp), %ecx
	movl	%esi, %eax
	movl	%ebx, %edi
	.loc 1 485 0
	leal	8(%ebx), %edx
.LVL55:
	.loc 1 486 0
	movl	-56(%ebp), %esi
	.loc 1 484 0
	rep stosb
	.loc 1 486 0
	movl	%edx, %edi
	movl	-60(%ebp), %ecx
	.loc 1 490 0
	movzwl	-44(%ebp), %edx
.LVL56:
	.loc 1 486 0
	rep movsb
.LVL57:
	.loc 1 488 0
	movzwl	-52(%ebp), %ecx
	movl	-64(%ebp), %esi
	.loc 1 486 0
	movl	%edi, %eax
.LVL58:
	.loc 1 490 0
	subl	-60(%ebp), %eax
.LVL59:
	.loc 1 488 0
	rep movsb
.LVL60:
	.loc 1 490 0
	call	utils_crc8
.LVL61:
	movzbl	%al, %eax
	sall	$16, %eax
	orl	-68(%ebp), %eax
	.loc 1 491 0
	movl	%eax, (%ebx)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%ebx)
.LVL62:
.LBB10:
.LBB11:
	.loc 1 197 0
	movl	g_kv_mgr+4, %eax
	shrw	$12, %ax
.LVL63:
	movzwl	%ax, %eax
	movzwl	g_kv_mgr+16(,%eax,4), %eax
.LVL64:
	cmpw	%ax, -42(%ebp)
	jnb	.L46
	.loc 1 198 0
	subl	-48(%ebp), %eax
	cmpl	$647, %eax
	jg	.L47
	cmpb	$1, g_kv_mgr+3
	ja	.L47
	.loc 1 199 0
	call	trigger_gc
.LVL65:
.L47:
	.loc 1 201 0
	movl	g_kv_mgr+4, %esi
.LVL66:
.LBE11:
.LBE10:
	.loc 1 494 0
	testw	%si, %si
	je	.L55
	jmp	.L48
.LVL67:
.L46:
.LBB13:
.LBB12:
	.loc 1 225 0
	call	trigger_gc
.LVL68:
.L55:
.LBE12:
.LBE13:
	.loc 1 502 0
	movl	$-28, %edi
	jmp	.L49
.L48:
	movzwl	%si, %eax
.LBB14:
.LBB15:
	.loc 1 131 0
	pushl	-48(%ebp)
	pushl	%ebx
	movl	%eax, -32(%ebp)
.LVL69:
	leal	-32(%ebp), %eax
.LVL70:
	pushl	%eax
.LVL71:
	pushl	$6
.LVL72:
	call	hal_flash_write
.LVL73:
.LBE15:
.LBE14:
	.loc 1 496 0
	addl	$16, %esp
	testl	%eax, %eax
.LBB17:
.LBB16:
	.loc 1 131 0
	movl	%eax, %edi
.LVL74:
.LBE16:
.LBE17:
	.loc 1 496 0
	jne	.L49
	.loc 1 497 0
	addw	-42(%ebp), %si
	.loc 1 499 0
	movw	-42(%ebp), %ax
	.loc 1 497 0
	movw	%si, g_kv_mgr+4
.LVL75:
	.loc 1 499 0
	shrw	$12, %si
.LVL76:
	movzwl	%si, %esi
	subw	%ax, g_kv_mgr+16(,%esi,4)
.LVL77:
.L49:
	.loc 1 506 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL78:
	addl	$16, %esp
	movl	%edi, %eax
.LVL79:
.L45:
	.loc 1 509 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
.LVL80:
	je	.L51
	call	__stack_chk_fail
.LVL81:
.L51:
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
.LFE31:
	.size	kv_item_store, .-kv_item_store
	.section	.text.unlikely.kv_item_store
.LCOLDE8:
	.section	.text.kv_item_store
.LHOTE8:
	.section	.text.unlikely.kv_state_set,"ax",@progbits
.LCOLDB9:
	.section	.text.kv_state_set,"ax",@progbits
.LHOTB9:
	.type	kv_state_set, @function
kv_state_set:
.LFB22:
	.loc 1 161 0
	.cfi_startproc
.LVL82:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzwl	%ax, %eax
	incl	%eax
.LVL83:
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%eax, -16(%ebp)
.LVL84:
.LBB20:
.LBB21:
	.loc 1 131 0
	leal	-28(%ebp), %eax
.LVL85:
	pushl	$1
.LBE21:
.LBE20:
	.loc 1 161 0
	movl	%gs:20, %ecx
	movl	%ecx, -12(%ebp)
	xorl	%ecx, %ecx
.LBB24:
.LBB22:
	.loc 1 131 0
	pushl	%eax
	leal	-16(%ebp), %eax
.LVL86:
.LBE22:
.LBE24:
	.loc 1 161 0
	movb	%dl, -28(%ebp)
.LBB25:
.LBB23:
	.loc 1 131 0
	pushl	%eax
.LVL87:
	pushl	$6
.LVL88:
	call	hal_flash_write
.LVL89:
.LBE23:
.LBE25:
	.loc 1 163 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L57
	call	__stack_chk_fail
.LVL90:
.L57:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL91:
	ret
	.cfi_endproc
.LFE22:
	.size	kv_state_set, .-kv_state_set
	.section	.text.unlikely.kv_state_set
.LCOLDE9:
	.section	.text.kv_state_set
.LHOTE9:
	.section	.text.unlikely.kv_item_traverse,"ax",@progbits
.LCOLDB10:
	.section	.text.kv_item_traverse,"ax",@progbits
.LHOTB10:
	.type	kv_item_traverse, @function
kv_item_traverse:
.LFB29:
	.loc 1 375 0
	.cfi_startproc
.LVL92:
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
	.loc 1 375 0
	movl	%edx, -32(%ebp)
	movl	%eax, -44(%ebp)
	.loc 1 378 0
	movl	-32(%ebp), %eax
.LVL93:
	.loc 1 375 0
	movl	%ecx, -48(%ebp)
	.loc 1 378 0
	sall	$12, %eax
	.loc 1 379 0
	leal	4096(%eax), %ecx
.LVL94:
	.loc 1 378 0
	leal	4(%eax), %esi
.LVL95:
	.loc 1 409 0
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 379 0
	movw	%cx, -26(%ebp)
.LVL96:
	.loc 1 408 0
	movzbl	-32(%ebp), %ecx
.LVL97:
	movl	%ecx, -36(%ebp)
.LVL98:
.L73:
	.loc 1 384 0
	subl	$12, %esp
	pushl	$16
	call	aos_malloc
.LVL99:
	.loc 1 385 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 384 0
	movl	%eax, %ebx
.LVL100:
	.loc 1 385 0
	je	.L83
	.loc 1 388 0
	xorl	%eax, %eax
.LVL101:
	movl	$4, %ecx
	movl	%ebx, %edi
	rep stosl
.LVL102:
	.loc 1 391 0
	movl	%ebx, %edx
	movzwl	%si, %eax
	movl	$8, %ecx
	call	raw_read
.LVL103:
	testl	%eax, %eax
	jne	.L84
	.loc 1 396 0
	movb	(%ebx), %al
	cmpb	$73, %al
	je	.L62
	.loc 1 397 0
	incb	%al
	jne	.L63
	.loc 1 397 0 is_stmt 0 discriminator 1
	cmpb	$-1, 1(%ebx)
	jne	.L63
	.loc 1 398 0 is_stmt 1
	movl	%ebx, %eax
	call	kv_item_free
.LVL104:
	.loc 1 399 0
	jmp	.L64
.L63:
	.loc 1 401 0
	movw	$-1, 4(%ebx)
.L62:
	.loc 1 404 0
	movw	4(%ebx), %ax
	cmpw	$512, %ax
	ja	.L65
	.loc 1 404 0 is_stmt 0 discriminator 1
	movzbl	3(%ebx), %edx
	.loc 1 405 0 is_stmt 1 discriminator 1
	movb	%dl, %cl
	decb	%cl
	js	.L65
	testw	%ax, %ax
	jne	.L66
.L65:
	.loc 1 407 0
	movl	%ebx, %eax
	.loc 1 406 0
	addl	$8, %esi
.LVL105:
	.loc 1 407 0
	call	kv_item_free
.LVL106:
	.loc 1 408 0
	movl	-36(%ebp), %eax
	leal	4(%eax), %ebx
.LVL107:
	cmpb	$-52, g_kv_mgr+2(,%ebx,4)
	jne	.L68
	.loc 1 409 0
	movl	-40(%ebp), %eax
	movl	$68, %edx
	call	kv_state_set
.LVL108:
	.loc 1 410 0
	movb	$68, g_kv_mgr+2(,%ebx,4)
	jmp	.L68
.LVL109:
.L66:
	.loc 1 415 0
	addl	%edx, %eax
	leal	11(%eax), %edi
	andl	$-4, %edi
	.loc 1 417 0
	cmpb	$-18, 1(%ebx)
	.loc 1 415 0
	movw	%di, -28(%ebp)
.LVL110:
	.loc 1 417 0
	jne	.L69
	.loc 1 419 0
	movw	%ax, 12(%ebx)
	.loc 1 418 0
	movw	%si, 14(%ebx)
	.loc 1 420 0
	pushl	%eax
	pushl	%eax
	pushl	-48(%ebp)
	pushl	%ebx
	movl	-44(%ebp), %eax
	call	*%eax
.LVL111:
	.loc 1 421 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L76
	.loc 1 423 0
	cmpl	$-11, %eax
	je	.L71
.LVL112:
.L84:
	.loc 1 424 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL113:
	jmp	.L83
.LVL114:
.L69:
	.loc 1 428 0
	movl	-36(%ebp), %eax
	leal	4(%eax), %edi
.LVL115:
	cmpb	$-52, g_kv_mgr+2(,%edi,4)
	jne	.L71
	.loc 1 429 0
	movl	-40(%ebp), %eax
	movl	$68, %edx
	call	kv_state_set
.LVL116:
	.loc 1 430 0
	movb	$68, g_kv_mgr+2(,%edi,4)
.L71:
	.loc 1 434 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL117:
	.loc 1 435 0
	addl	-28(%ebp), %esi
.LVL118:
.L68:
	.loc 1 436 0
	movzwl	-26(%ebp), %edx
	movzwl	%si, %eax
	addl	$8, %eax
	cmpl	%eax, %edx
	jg	.L73
.L64:
	.loc 1 438 0
	movw	-26(%ebp), %dx
	movzbl	-32(%ebp), %eax
	movl	$8, %ecx
	subl	%esi, %edx
	cmpw	-26(%ebp), %si
	cmovnb	%ecx, %edx
	movw	%dx, g_kv_mgr+16(,%eax,4)
.L83:
	.loc 1 439 0
	xorl	%eax, %eax
	jmp	.L60
.LVL119:
.L76:
	.loc 1 384 0
	movl	%ebx, %eax
.LVL120:
.L60:
	.loc 1 440 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL121:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL122:
	ret
	.cfi_endproc
.LFE29:
	.size	kv_item_traverse, .-kv_item_traverse
	.section	.text.unlikely.kv_item_traverse
.LCOLDE10:
	.section	.text.kv_item_traverse
.LHOTE10:
	.section	.text.unlikely.kv_item_get,"ax",@progbits
.LCOLDB11:
	.section	.text.kv_item_get,"ax",@progbits
.LHOTB11:
	.type	kv_item_get, @function
kv_item_get:
.LFB30:
	.loc 1 443 0
	.cfi_startproc
.LVL123:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 448 0
	cmpb	$-18, g_kv_mgr+18
	.loc 1 443 0
	movl	%eax, %ebx
	.loc 1 448 0
	je	.L86
	.loc 1 449 0
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	$__item_find_cb, %eax
.LVL124:
	call	kv_item_traverse
.LVL125:
	.loc 1 450 0
	testl	%eax, %eax
	jne	.L89
.LVL126:
.L86:
	.loc 1 448 0
	cmpb	$-18, g_kv_mgr+22
	jne	.L88
.L90:
.LVL127:
	.loc 1 456 0
	xorl	%eax, %eax
	jmp	.L89
.LVL128:
.L88:
	.loc 1 449 0
	movl	%ebx, %ecx
	movl	$1, %edx
	movl	$__item_find_cb, %eax
	call	kv_item_traverse
.LVL129:
	.loc 1 450 0
	testl	%eax, %eax
	je	.L90
.LVL130:
.L89:
	.loc 1 457 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
.LVL131:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	kv_item_get, .-kv_item_get
	.section	.text.unlikely.kv_item_get
.LCOLDE11:
	.section	.text.kv_item_get
.LHOTE11:
	.section	.text.unlikely.kv_item_del,"ax",@progbits
.LCOLDB12:
	.section	.text.kv_item_del,"ax",@progbits
.LHOTB12:
	.type	kv_item_del, @function
kv_item_del:
.LFB25:
	.loc 1 230 0
	.cfi_startproc
.LVL132:
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
	.loc 1 230 0
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL133:
	.loc 1 238 0
	testl	%edx, %edx
	jne	.L96
	.loc 1 239 0
	movl	-60(%ebp), %eax
	movw	14(%eax), %ax
	movw	%ax, -56(%ebp)
.LVL134:
	jmp	.L97
.LVL135:
.L96:
	.loc 1 240 0
	decl	%edx
.LVL136:
	.loc 1 274 0
	movl	$-22, %ebx
	.loc 1 240 0
	jne	.L98
	.loc 1 241 0
	movl	-60(%ebp), %eax
	.loc 1 242 0
	leal	-36(%ebp), %edx
	movl	$2, %ecx
	movl	%edx, %edi
	.loc 1 241 0
	movw	6(%eax), %ax
	movw	%ax, -56(%ebp)
.LVL137:
	.loc 1 242 0
	xorl	%eax, %eax
.LVL138:
	rep stosl
	.loc 1 243 0
	movzwl	-56(%ebp), %eax
	movl	$8, %ecx
	movl	%eax, -64(%ebp)
	call	raw_read
.LVL139:
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L105
	.loc 1 247 0
	cmpb	$73, -36(%ebp)
	je	.L99
.LVL140:
.L100:
	.loc 1 250 0
	xorl	%ebx, %ebx
	jmp	.L98
.LVL141:
.L99:
	.loc 1 247 0 discriminator 1
	cmpb	$-18, -35(%ebp)
	jne	.L100
	.loc 1 248 0
	movl	-60(%ebp), %edi
	.loc 1 249 0
	movzbl	-33(%ebp), %eax
	.loc 1 248 0
	cmpb	3(%edi), %al
	jne	.L100
	.loc 1 253 0
	subl	$12, %esp
	pushl	%eax
	call	aos_malloc
.LVL142:
	.loc 1 254 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 253 0
	movl	%eax, %esi
.LVL143:
	.loc 1 254 0
	je	.L106
	.loc 1 257 0
	movzbl	-33(%ebp), %eax
.LVL144:
	subl	$12, %esp
	pushl	%eax
	call	aos_malloc
.LVL145:
	.loc 1 258 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 257 0
	movl	%eax, %edi
.LVL146:
	.loc 1 258 0
	jne	.L101
	.loc 1 259 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL147:
	.loc 1 260 0
	addl	$16, %esp
	jmp	.L106
.LVL148:
.L101:
	.loc 1 263 0
	movzbl	-33(%ebp), %ecx
	movl	-64(%ebp), %eax
.LVL149:
	movl	%esi, %edx
	addl	$8, %eax
	call	raw_read
.LVL150:
	.loc 1 264 0
	movl	-60(%ebp), %eax
	movzbl	-33(%ebp), %ecx
	movl	%edi, %edx
	movzwl	14(%eax), %eax
	addl	$8, %eax
	call	raw_read
.LVL151:
	.loc 1 265 0
	pushl	%eax
	movzbl	-33(%ebp), %eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	memcmp
.LVL152:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L102
	.loc 1 266 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL153:
	.loc 1 267 0
	movl	%edi, (%esp)
	call	aos_free
.LVL154:
	.loc 1 268 0
	addl	$16, %esp
	jmp	.L98
.L102:
	.loc 1 271 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL155:
	.loc 1 272 0
	movl	%edi, (%esp)
	call	aos_free
.LVL156:
	addl	$16, %esp
.LVL157:
.L97:
	.loc 1 277 0
	movzwl	-56(%ebp), %eax
	xorl	%edx, %edx
	call	kv_state_set
.LVL158:
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL159:
	jne	.L98
.LVL160:
	.loc 1 282 0
	movl	-56(%ebp), %esi
	shrw	$12, %si
	movzwl	%si, %esi
	addl	$4, %esi
	cmpb	$-52, g_kv_mgr+2(,%esi,4)
	jne	.L100
	.loc 1 283 0
	movl	-56(%ebp), %eax
.LVL161:
	movl	$68, %edx
	andl	$61440, %eax
	call	kv_state_set
.LVL162:
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL163:
	jne	.L98
	.loc 1 286 0
	movb	$68, g_kv_mgr+2(,%esi,4)
	jmp	.L98
.LVL164:
.L105:
	.loc 1 244 0
	movl	$-5, %ebx
	jmp	.L98
.LVL165:
.L106:
	.loc 1 255 0
	movl	$-12, %ebx
.LVL166:
.L98:
	.loc 1 290 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%ebx, %eax
	je	.L103
	call	__stack_chk_fail
.LVL167:
.L103:
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
.LVL168:
	ret
	.cfi_endproc
.LFE25:
	.size	kv_item_del, .-kv_item_del
	.section	.text.unlikely.kv_item_del
.LCOLDE12:
	.section	.text.kv_item_del
.LHOTE12:
	.section	.text.unlikely.__item_recovery_cb,"ax",@progbits
.LCOLDB13:
	.section	.text.__item_recovery_cb,"ax",@progbits
.LHOTB13:
	.type	__item_recovery_cb, @function
__item_recovery_cb:
.LFB26:
	.loc 1 296 0
	.cfi_startproc
.LVL169:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 296 0
	movl	8(%ebp), %ebx
	.loc 1 297 0
	subl	$12, %esp
	movzwl	12(%ebx), %eax
	pushl	%eax
	call	aos_malloc
.LVL170:
	movl	%eax, %esi
.LVL171:
	.loc 1 298 0
	addl	$16, %esp
	.loc 1 299 0
	movl	$-12, %eax
.LVL172:
	.loc 1 298 0
	testl	%esi, %esi
	je	.L111
	.loc 1 302 0
	movzwl	14(%ebx), %eax
	movzwl	12(%ebx), %ecx
	movl	%esi, %edx
	addl	$8, %eax
	call	raw_read
.LVL173:
	testl	%eax, %eax
	je	.L112
	.loc 1 303 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL174:
	.loc 1 304 0
	addl	$16, %esp
	movl	$-5, %eax
	jmp	.L111
.L112:
	.loc 1 307 0
	movzwl	12(%ebx), %edx
	movl	%esi, %eax
	call	utils_crc8
.LVL175:
	.loc 1 312 0
	xorl	%edx, %edx
	.loc 1 307 0
	cmpb	%al, 2(%ebx)
	jne	.L120
	.loc 1 308 0
	movw	6(%ebx), %ax
	testw	%ax, %ax
	je	.L114
	.loc 1 308 0 is_stmt 0 discriminator 1
	cmpw	14(%ebx), %ax
	.loc 1 309 0 is_stmt 1 discriminator 1
	movl	$1, %edx
	.loc 1 308 0 discriminator 1
	je	.L114
.L120:
	.loc 1 312 0
	movl	%ebx, %eax
	call	kv_item_del
.LVL176:
.L114:
	.loc 1 315 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL177:
	.loc 1 316 0
	addl	$16, %esp
	movl	$-11, %eax
.L111:
	.loc 1 317 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL178:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	__item_recovery_cb, .-__item_recovery_cb
	.section	.text.unlikely.__item_recovery_cb
.LCOLDE13:
	.section	.text.__item_recovery_cb
.LHOTE13:
	.section	.text.unlikely.kv_block_format,"ax",@progbits
.LCOLDB14:
	.section	.text.kv_block_format,"ax",@progbits
.LHOTB14:
	.type	kv_block_format, @function
kv_block_format:
.LFB23:
	.loc 1 166 0
	.cfi_startproc
.LVL179:
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
	movl	%eax, %ebx
	.loc 1 172 0
	movl	%ebx, %esi
	sall	$12, %esi
	.loc 1 166 0
	subl	$32, %esp
	.loc 1 170 0
	movl	$0, -32(%ebp)
	.loc 1 172 0
	movzwl	%si, %esi
.LBB30:
.LBB31:
	.loc 1 136 0
	pushl	$4096
.LBE31:
.LBE30:
	.loc 1 171 0
	movb	$75, -32(%ebp)
.LBB34:
.LBB32:
	.loc 1 136 0
	pushl	%esi
	pushl	$6
.LBE32:
.LBE34:
	.loc 1 166 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL180:
.LBB35:
.LBB33:
	.loc 1 136 0
	call	hal_flash_erase
.LVL181:
.LBE33:
.LBE35:
	.loc 1 172 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L122
.L124:
	.loc 1 175 0
	movl	$-5, %eax
	jmp	.L123
.L122:
.LBB36:
.LBB37:
	.loc 1 131 0
	leal	-36(%ebp), %eax
	leal	-32(%ebp), %edi
	pushl	$4
.LBE37:
.LBE36:
	.loc 1 173 0
	movb	$-18, -31(%ebp)
	movl	%esi, -36(%ebp)
.LVL182:
.LBB39:
.LBB38:
	.loc 1 131 0
	pushl	%edi
	pushl	%eax
	pushl	$6
	call	hal_flash_write
.LVL183:
.LBE38:
.LBE39:
	.loc 1 178 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L124
	.loc 1 184 0
	incb	g_kv_mgr+3
	.loc 1 182 0
	movzbl	%bl, %ebx
	addl	$4, %ebx
.LVL184:
	movb	$-18, g_kv_mgr+2(,%ebx,4)
	.loc 1 183 0
	movw	$4092, g_kv_mgr(,%ebx,4)
.LVL185:
.L123:
	.loc 1 186 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L125
	call	__stack_chk_fail
.LVL186:
.L125:
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
.LFE23:
	.size	kv_block_format, .-kv_block_format
	.section	.text.unlikely.kv_block_format
.LCOLDE14:
	.section	.text.kv_block_format
.LHOTE14:
	.section	.text.unlikely.aos_kv_gc,"ax",@progbits
.LCOLDB15:
	.section	.text.aos_kv_gc,"ax",@progbits
.LHOTB15:
	.globl	aos_kv_gc
	.type	aos_kv_gc, @function
aos_kv_gc:
.LFB34:
	.loc 1 611 0
	.cfi_startproc
.LVL187:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 617 0
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL188:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L132
.LVL189:
	.loc 1 622 0
	cmpb	$0, g_kv_mgr+3
	je	.L132
.LVL190:
	.loc 1 627 0 discriminator 1
	cmpb	$-18, g_kv_mgr+18
	je	.L136
.LVL191:
	.loc 1 627 0 is_stmt 0
	cmpb	$-18, g_kv_mgr+22
	.loc 1 626 0 is_stmt 1
	movl	$1, %ebx
	.loc 1 627 0
	jne	.L132
	jmp	.L129
.LVL192:
.L136:
	xorl	%ebx, %ebx
.LVL193:
.L129:
	.loc 1 621 0
	movl	g_kv_mgr+4, %edx
	.loc 1 628 0
	movzbl	%bl, %eax
	.loc 1 640 0
	xorl	%edi, %edi
	.loc 1 628 0
	sall	$12, %eax
	addl	$4, %eax
	.loc 1 637 0
	movl	%edx, %ecx
	.loc 1 628 0
	movw	%ax, g_kv_mgr+4
.LVL194:
	.loc 1 637 0
	shrw	$12, %cx
	leal	1(%ecx), %eax
.LVL195:
.L134:
	.loc 1 640 0
	cmpb	$2, %al
	cmove	%edi, %eax
.LVL196:
	.loc 1 643 0
	movzbl	%al, %esi
	cmpb	$68, g_kv_mgr+18(,%esi,4)
	jne	.L131
	.loc 1 644 0
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	$__item_gc_cb, %eax
.LVL197:
	call	kv_item_traverse
.LVL198:
	.loc 1 647 0
	movl	%esi, %eax
	call	kv_block_format
.LVL199:
	testl	%eax, %eax
	jne	.L132
	.loc 1 651 0
	movl	g_kv_mgr+4, %eax
	movl	$204, %edx
	.loc 1 652 0
	addl	$4, %ebx
	.loc 1 651 0
	andl	$61440, %eax
	call	kv_state_set
.LVL200:
	.loc 1 652 0
	movb	$-52, g_kv_mgr+2(,%ebx,4)
	.loc 1 653 0
	decb	g_kv_mgr+3
	jmp	.L132
.LVL201:
.L131:
	.loc 1 656 0
	movzbl	%al, %esi
	cmpw	%si, %cx
	je	.L133
	.loc 1 659 0
	incl	%eax
.LVL202:
	.loc 1 660 0
	jmp	.L134
.L133:
	.loc 1 663 0
	movw	%dx, g_kv_mgr+4
.LVL203:
.L132:
	.loc 1 668 0
	subl	$12, %esp
	.loc 1 667 0
	movb	$0, g_kv_mgr+1
	.loc 1 668 0
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL204:
	.loc 1 669 0
	addl	$16, %esp
	cmpb	$0, g_kv_mgr+2
	je	.L135
	.loc 1 670 0
	subl	$12, %esp
	pushl	$g_kv_mgr+8
	call	aos_sem_signal_all
.LVL205:
	addl	$16, %esp
.L135:
	.loc 1 673 0
	movl	$0, 8(%ebp)
	.loc 1 674 0
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
	.loc 1 673 0
	jmp	aos_task_exit
.LVL206:
	.cfi_endproc
.LFE34:
	.size	aos_kv_gc, .-aos_kv_gc
	.section	.text.unlikely.aos_kv_gc
.LCOLDE15:
	.section	.text.aos_kv_gc
.LHOTE15:
	.section	.text.unlikely.__item_gc_cb,"ax",@progbits
.LCOLDB16:
	.section	.text.__item_gc_cb,"ax",@progbits
.LHOTB16:
	.type	__item_gc_cb, @function
__item_gc_cb:
.LFB28:
	.loc 1 342 0
	.cfi_startproc
.LVL207:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$56, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 342 0
	movl	8(%ebp), %edx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 348 0
	movl	12(%edx), %eax
	movl	%edx, -44(%ebp)
	leal	11(%eax), %ebx
	andl	$-4, %ebx
.LVL208:
	.loc 1 349 0
	movzwl	%bx, %edi
	pushl	%edi
	call	aos_malloc
.LVL209:
	movl	%eax, %esi
.LVL210:
	.loc 1 350 0
	addl	$16, %esp
	movl	$-12, %eax
.LVL211:
	testl	%esi, %esi
	je	.L139
	.loc 1 354 0
	movl	-44(%ebp), %edx
	movl	%edi, %ecx
	movzwl	14(%edx), %eax
	movl	%esi, %edx
	call	raw_read
.LVL212:
	testl	%eax, %eax
	je	.L140
.L142:
	.loc 1 355 0
	movl	$-5, %ebx
.LVL213:
	jmp	.L141
.LVL214:
.L140:
	movzwl	g_kv_mgr+4, %eax
.LBB42:
.LBB43:
	.loc 1 131 0
	pushl	%edi
	pushl	%esi
	movl	%eax, -32(%ebp)
.LVL215:
	leal	-32(%ebp), %eax
.LVL216:
	pushl	%eax
.LVL217:
	pushl	$6
.LVL218:
	call	hal_flash_write
.LVL219:
.LBE43:
.LBE42:
	.loc 1 359 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L142
	.loc 1 364 0
	movl	%ebx, %eax
	addl	g_kv_mgr+4, %eax
	movw	%ax, g_kv_mgr+4
.LVL220:
	.loc 1 366 0
	shrw	$12, %ax
.LVL221:
	movzwl	%ax, %eax
	subw	%bx, g_kv_mgr+16(,%eax,4)
.LVL222:
	.loc 1 367 0
	movl	$-11, %ebx
.LVL223:
.L141:
	.loc 1 370 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL224:
	.loc 1 371 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL225:
.L139:
	.loc 1 372 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L143
	call	__stack_chk_fail
.LVL226:
.L143:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL227:
	popl	%edi
	.cfi_restore 7
.LVL228:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	__item_gc_cb, .-__item_gc_cb
	.section	.text.unlikely.__item_gc_cb
.LCOLDE16:
	.section	.text.__item_gc_cb
.LHOTE16:
	.section	.text.unlikely.aos_kv_del,"ax",@progbits
.LCOLDB17:
	.section	.text.aos_kv_del,"ax",@progbits
.LHOTB17:
	.globl	aos_kv_del
	.type	aos_kv_del, @function
aos_kv_del:
.LFB35:
	.loc 1 677 0
	.cfi_startproc
.LVL229:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 680 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL230:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L148
.LVL231:
.LBB46:
.LBB47:
	.loc 1 684 0
	movl	8(%ebp), %eax
.LVL232:
	call	kv_item_get
.LVL233:
	.loc 1 685 0
	testl	%eax, %eax
	.loc 1 684 0
	movl	%eax, %esi
.LVL234:
	.loc 1 685 0
	jne	.L149
	.loc 1 686 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL235:
	addl	$16, %esp
	.loc 1 687 0
	movl	$-2, %eax
	jmp	.L148
.LVL236:
.L149:
	.loc 1 690 0
	xorl	%edx, %edx
	call	kv_item_del
.LVL237:
	movl	%eax, %ebx
.LVL238:
	.loc 1 691 0
	movl	%esi, %eax
.LVL239:
	call	kv_item_free
.LVL240:
	.loc 1 692 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL241:
	addl	$16, %esp
	.loc 1 693 0
	movl	%ebx, %eax
.LVL242:
.L148:
.LBE47:
.LBE46:
	.loc 1 694 0
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
.LFE35:
	.size	aos_kv_del, .-aos_kv_del
	.section	.text.unlikely.aos_kv_del
.LCOLDE17:
	.section	.text.aos_kv_del
.LHOTE17:
	.section	.text.unlikely.aos_kv_set,"ax",@progbits
.LCOLDB18:
	.section	.text.aos_kv_set,"ax",@progbits
.LHOTB18:
	.globl	aos_kv_set
	.type	aos_kv_set, @function
aos_kv_set:
.LFB36:
	.loc 1 697 0
	.cfi_startproc
.LVL243:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 700 0
	cmpl	$0, 12(%ebp)
	.loc 1 697 0
	movl	16(%ebp), %ebx
	.loc 1 700 0
	sete	%dl
	testl	%ebx, %ebx
	setle	%al
	orb	%al, %dl
	jne	.L160
	cmpl	$0, 8(%ebp)
	sete	%al
	je	.L160
	.loc 1 700 0 is_stmt 0 discriminator 2
	movl	8(%ebp), %edi
	orl	$-1, %ecx
	repnz scasb
.LVL244:
	notl	%ecx
	decl	%ecx
	cmpl	$128, %ecx
	ja	.L160
	cmpl	$512, %ebx
	jg	.L160
	.loc 1 704 0 is_stmt 1
	cmpb	$0, g_kv_mgr+1
	je	.L154
	.loc 1 706 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_kv_mgr+8
	.loc 1 705 0
	incb	g_kv_mgr+2
	.loc 1 706 0
	call	aos_sem_wait
.LVL245:
	addl	$16, %esp
.L154:
	.loc 1 709 0
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL246:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L153
.LVL247:
.LBB52:
.LBB53:
	.loc 1 713 0
	movl	8(%ebp), %eax
.LVL248:
	call	kv_item_get
.LVL249:
	.loc 1 714 0
	testl	%eax, %eax
	.loc 1 713 0
	movl	%eax, %edi
.LVL250:
	.loc 1 714 0
	je	.L155
.LVL251:
.LBB54:
.LBB55:
	.loc 1 515 0
	movzwl	4(%eax), %eax
.LVL252:
	cmpl	%eax, %ebx
	jne	.L156
	.loc 1 516 0
	pushl	%eax
	pushl	%ebx
	.loc 1 517 0
	xorl	%esi, %esi
	.loc 1 516 0
	pushl	12(%ebp)
	movzbl	3(%edi), %eax
	addl	8(%edi), %eax
	pushl	%eax
	call	memcmp
.LVL253:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L157
.L156:
	.loc 1 521 0
	movzwl	14(%edi), %eax
	subl	$12, %esp
	movl	12(%ebp), %edx
	movl	%ebx, %ecx
	pushl	%eax
	movl	8(%ebp), %eax
	call	kv_item_store
.LVL254:
	.loc 1 522 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 521 0
	movl	%eax, %esi
.LVL255:
	.loc 1 522 0
	jne	.L157
	.loc 1 526 0
	xorl	%edx, %edx
	movl	%edi, %eax
.LVL256:
	call	kv_item_del
.LVL257:
	movl	%eax, %esi
.LVL258:
.L157:
.LBE55:
.LBE54:
	.loc 1 716 0
	movl	%edi, %eax
	call	kv_item_free
.LVL259:
	jmp	.L158
.LVL260:
.L155:
	.loc 1 718 0
	subl	$12, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
.LVL261:
	pushl	$0
	movl	%ebx, %ecx
	call	kv_item_store
.LVL262:
	addl	$16, %esp
	movl	%eax, %esi
.LVL263:
.L158:
	.loc 1 721 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL264:
	addl	$16, %esp
	movl	%esi, %eax
	jmp	.L153
.L160:
.LBE53:
.LBE52:
	.loc 1 701 0
	movl	$-22, %eax
.L153:
	.loc 1 723 0
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
.LFE36:
	.size	aos_kv_set, .-aos_kv_set
	.section	.text.unlikely.aos_kv_set
.LCOLDE18:
	.section	.text.aos_kv_set
.LHOTE18:
	.section	.text.unlikely.aos_kv_get,"ax",@progbits
.LCOLDB19:
	.section	.text.aos_kv_get,"ax",@progbits
.LHOTB19:
	.globl	aos_kv_get
	.type	aos_kv_get, @function
aos_kv_get:
.LFB37:
	.loc 1 726 0
	.cfi_startproc
.LVL265:
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
	.loc 1 730 0
	cmpl	$0, 12(%ebp)
	.loc 1 726 0
	movl	8(%ebp), %ebx
	.loc 1 730 0
	sete	%dl
	cmpl	$0, 16(%ebp)
	sete	%al
	orb	%al, %dl
	.loc 1 731 0
	movl	$-22, %edx
	.loc 1 730 0
	jne	.L166
	testl	%ebx, %ebx
	je	.L166
	.loc 1 730 0 is_stmt 0 discriminator 2
	movl	16(%ebp), %eax
	cmpl	$0, (%eax)
	jle	.L166
	.loc 1 734 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL266:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L166
	movl	%eax, -28(%ebp)
.LVL267:
.LBB58:
.LBB59:
	.loc 1 738 0
	movl	%ebx, %eax
.LVL268:
	call	kv_item_get
.LVL269:
	.loc 1 740 0
	subl	$12, %esp
	.loc 1 738 0
	movl	%eax, %ebx
.LVL270:
	.loc 1 740 0
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL271:
	.loc 1 742 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 743 0
	movl	$-2, %edx
	.loc 1 742 0
	je	.L166
	.loc 1 746 0
	movl	16(%ebp), %eax
	movzwl	4(%ebx), %ecx
	movl	-28(%ebp), %edx
	cmpl	%ecx, (%eax)
	jge	.L167
	.loc 1 747 0
	movl	%ecx, (%eax)
	.loc 1 748 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL272:
	.loc 1 749 0
	movl	$-28, %edx
	jmp	.L166
.L167:
	.loc 1 751 0
	movzbl	3(%ebx), %esi
	movl	12(%ebp), %edi
	addl	8(%ebx), %esi
	movl	%edx, -28(%ebp)
.LVL273:
	rep movsb
	.loc 1 752 0
	movl	16(%ebp), %edi
	movzwl	4(%ebx), %eax
	movl	%eax, (%edi)
	.loc 1 755 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL274:
	movl	-28(%ebp), %edx
.LVL275:
.L166:
.LBE59:
.LBE58:
	.loc 1 757 0
	leal	-12(%ebp), %esp
	movl	%edx, %eax
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
.LFE37:
	.size	aos_kv_get, .-aos_kv_get
	.section	.text.unlikely.aos_kv_get
.LCOLDE19:
	.section	.text.aos_kv_get
.LHOTE19:
	.section	.rodata.str1.1
.LC20:
	.string	""
.LC21:
	.string	"set"
.LC22:
	.string	"cli set kv failed\r\n"
.LC23:
	.string	"get"
.LC24:
	.string	"cli get kv failed\r\n"
.LC25:
	.string	"cli: no paired kv\r\n"
.LC26:
	.string	"value is %s\r\n"
.LC27:
	.string	"del"
.LC28:
	.string	"cli kv del failed\r\n"
.LC29:
	.string	"list"
	.section	.text.unlikely.handle_kv_cmd,"ax",@progbits
.LCOLDB30:
	.section	.text.handle_kv_cmd,"ax",@progbits
.LHOTB30:
	.type	handle_kv_cmd, @function
handle_kv_cmd:
.LFB39:
	.loc 1 788 0
	.cfi_startproc
.LVL276:
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
	movl	$.LC20, %edi
	subl	$44, %esp
	.loc 1 788 0
	movl	16(%ebp), %esi
	movl	20(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 789 0
	cmpl	$1, %esi
	jle	.L174
	.loc 1 789 0 is_stmt 0 discriminator 1
	movl	4(%ebx), %edi
.L174:
.LVL277:
	.loc 1 794 0 is_stmt 1 discriminator 4
	pushl	%eax
	pushl	%eax
	pushl	$.LC21
	pushl	%edi
	.loc 1 792 0 discriminator 4
	movl	$4096, -32(%ebp)
	.loc 1 794 0 discriminator 4
	call	strcmp
.LVL278:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L175
	.loc 1 795 0
	cmpl	$4, %esi
	jne	.L173
	.loc 1 798 0
	movl	12(%ebx), %edx
	orl	$-1, %ecx
	movl	%edx, %edi
.LVL279:
	repnz scasb
	pushl	$1
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	8(%ebx)
	call	aos_kv_set
.LVL280:
	.loc 1 799 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L173
	.loc 1 800 0
	subl	$12, %esp
	pushl	$.LC22
	jmp	.L195
.LVL281:
.L175:
	.loc 1 802 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC23
	pushl	%edi
	call	strcmp
.LVL282:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L179
	.loc 1 803 0
	cmpl	$3, %esi
	jne	.L173
	.loc 1 806 0
	subl	$12, %esp
	movl	%eax, -44(%ebp)
	pushl	$4096
	call	aos_malloc
.LVL283:
	.loc 1 807 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 806 0
	movl	%eax, %esi
.LVL284:
	.loc 1 807 0
	movl	-44(%ebp), %edx
	jne	.L180
	.loc 1 808 0
	subl	$12, %esp
	pushl	$.LC24
.LVL285:
.L195:
	call	aos_cli_printf
.LVL286:
.L196:
	.loc 1 809 0
	addl	$16, %esp
	jmp	.L173
.LVL287:
.L180:
	.loc 1 812 0
	movl	%eax, %edi
.LVL288:
	movl	$1024, %ecx
	movl	%edx, %eax
.LVL289:
	rep stosl
	.loc 1 814 0
	leal	-32(%ebp), %eax
	pushl	%edi
	pushl	%eax
	pushl	%esi
	pushl	8(%ebx)
	call	aos_kv_get
.LVL290:
	.loc 1 815 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L181
	.loc 1 816 0
	subl	$12, %esp
	pushl	$.LC25
	jmp	.L194
.L181:
	.loc 1 818 0
	pushl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	$.LC26
.L194:
	call	aos_cli_printf
.LVL291:
	addl	$16, %esp
	.loc 1 822 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL292:
	jmp	.L196
.LVL293:
.L179:
	.loc 1 824 0
	pushl	%edx
	pushl	%edx
	pushl	$.LC27
	pushl	%edi
	call	strcmp
.LVL294:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L183
	.loc 1 825 0
	cmpl	$3, %esi
	jne	.L173
	.loc 1 828 0
	subl	$12, %esp
	pushl	8(%ebx)
	call	aos_kv_del
.LVL295:
	.loc 1 829 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L173
	.loc 1 830 0
	subl	$12, %esp
	pushl	$.LC28
	jmp	.L195
.LVL296:
.L183:
	.loc 1 832 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC29
	pushl	%edi
	call	strcmp
.LVL297:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L173
.LVL298:
	.loc 1 834 0 discriminator 1
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	movl	$__item_print_cb, %eax
	call	kv_item_traverse
.LVL299:
	xorl	%ecx, %ecx
	movl	$1, %edx
	movl	$__item_print_cb, %eax
	call	kv_item_traverse
.LVL300:
.L173:
	.loc 1 838 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L184
	call	__stack_chk_fail
.LVL301:
.L184:
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
.LFE39:
	.size	handle_kv_cmd, .-handle_kv_cmd
	.section	.text.unlikely.handle_kv_cmd
.LCOLDE30:
	.section	.text.handle_kv_cmd
.LHOTE30:
	.section	.text.unlikely.aos_kv_init,"ax",@progbits
.LCOLDB31:
	.section	.text.aos_kv_init,"ax",@progbits
.LHOTB31:
	.globl	aos_kv_init
	.type	aos_kv_init, @function
aos_kv_init:
.LFB40:
	.loc 1 848 0
	.cfi_startproc
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
	.loc 1 848 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 852 0
	cmpb	$0, g_kv_mgr
	je	.L198
.L219:
	.loc 1 853 0
	xorl	%ebx, %ebx
	jmp	.L199
.L198:
	movl	$g_kv_mgr, %edx
	.loc 1 860 0
	xorl	%eax, %eax
	movl	$6, %ecx
	movl	%edx, %edi
	.loc 1 861 0
	subl	$12, %esp
	.loc 1 860 0
	rep stosl
	.loc 1 861 0
	pushl	$g_kv_mgr+12
	call	aos_mutex_new
.LVL302:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L199
	.loc 1 866 0
	subl	$12, %esp
	movl	$g_kv_mgr, %edi
.LBB62:
.LBB63:
	.loc 1 536 0
	xorl	%esi, %esi
.LBE63:
.LBE62:
	.loc 1 866 0
	pushl	$ncmd
	call	aos_cli_register_command
.LVL303:
.LBB66:
.LBB64:
	.loc 1 536 0
	movw	$0, -30(%ebp)
.LVL304:
	addl	$16, %esp
.LVL305:
.L205:
	movl	%esi, %eax
	.loc 1 540 0
	leal	-34(%ebp), %edx
	movl	$4, %ecx
	movb	%al, -41(%ebp)
.LVL306:
	movl	%esi, %eax
.LVL307:
	.loc 1 539 0
	movl	$0, -34(%ebp)
	.loc 1 540 0
	sall	$12, %eax
	call	raw_read
.LVL308:
	.loc 1 541 0
	cmpb	$75, -34(%ebp)
	jne	.L200
	.loc 1 542 0
	movb	-33(%ebp), %al
	cmpb	$-52, %al
	setne	%cl
	cmpb	$-18, %al
	setne	%dl
	testb	%dl, %cl
	je	.L201
	cmpb	$68, %al
	jne	.L200
.L201:
	.loc 1 550 0
	movb	%al, 18(%edi)
	.loc 1 551 0
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	$__item_recovery_cb, %eax
	call	kv_item_traverse
.LVL309:
	.loc 1 552 0
	cmpb	$-18, -33(%ebp)
	jne	.L203
	.loc 1 553 0
	cmpw	$4092, 16(%edi)
	je	.L204
	.loc 1 554 0
	movl	%esi, %eax
	movb	%al, -30(%ebp,%ebx)
	.loc 1 555 0
	incl	%ebx
.LVL310:
	jmp	.L203
.L204:
	.loc 1 557 0
	incb	g_kv_mgr+3
	jmp	.L203
.L200:
	.loc 1 561 0
	movl	%esi, %eax
	call	kv_block_format
.LVL311:
	testl	%eax, %eax
	jne	.L226
.LVL312:
.L203:
	incl	%esi
.LVL313:
	addl	$4, %edi
	.loc 1 538 0
	cmpl	$2, %esi
	jne	.L205
	leal	-30(%ebp), %esi
	leal	(%esi,%ebx), %edi
.LVL314:
.L206:
	.loc 1 567 0
	cmpl	%esi, %edi
	je	.L248
	.loc 1 569 0
	cmpb	$0, g_kv_mgr+3
	.loc 1 568 0
	movzbl	-1(%edi), %ebx
.LVL315:
	.loc 1 569 0
	je	.L207
	.loc 1 570 0
	movl	%ebx, %eax
	movl	$68, %edx
	sall	$12, %eax
	movzwl	%ax, %eax
	call	kv_state_set
.LVL316:
	testl	%eax, %eax
	jne	.L226
	.loc 1 573 0
	movb	$68, g_kv_mgr+18(,%ebx,4)
	jmp	.L208
.LVL317:
.L207:
	.loc 1 575 0
	movzbl	%bl, %eax
	call	kv_block_format
.LVL318:
	testl	%eax, %eax
	jne	.L226
.L208:
	decl	%edi
.LVL319:
	jmp	.L206
.LVL320:
.L248:
	.loc 1 582 0
	cmpb	$0, g_kv_mgr+3
	je	.L210
.L213:
	.loc 1 588 0
	cmpb	$2, g_kv_mgr+3
	jne	.L244
	jmp	.L249
.L210:
	.loc 1 583 0
	xorl	%eax, %eax
	call	kv_block_format
.LVL321:
	testl	%eax, %eax
	je	.L213
	jmp	.L226
.LVL322:
.L244:
	.loc 1 596 0
	movb	g_kv_mgr+18, %al
	cmpb	$-52, %al
	je	.L230
	cmpb	$68, %al
	jne	.L214
.L230:
.LVL323:
	.loc 1 599 0
	cmpb	$-18, g_kv_mgr+22
	je	.L227
.LVL324:
.L214:
	.loc 1 596 0
	movb	g_kv_mgr+22, %dl
.LVL325:
	.loc 1 599 0
	cmpb	$-52, %dl
	sete	%cl
	cmpb	$68, %dl
	sete	%dl
	orb	%dl, %cl
	je	.L247
	cmpb	$-18, %al
	jne	.L247
	.loc 1 596 0
	movl	$1, %edx
	.loc 1 595 0
	movl	$1, %eax
	jmp	.L216
.LVL326:
.L249:
	.loc 1 590 0
	xorl	%eax, %eax
	movl	$204, %edx
	.loc 1 589 0
	movw	$4, g_kv_mgr+4
	.loc 1 590 0
	call	kv_state_set
.LVL327:
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L247
	.loc 1 591 0
	movb	$-52, g_kv_mgr+18
	.loc 1 592 0
	decb	g_kv_mgr+3
	jmp	.L245
.LVL328:
.L227:
	.loc 1 596 0
	xorl	%edx, %edx
	.loc 1 599 0
	xorl	%eax, %eax
.LVL329:
.L216:
	.loc 1 600 0
	addl	$4, %edx
	movl	$4096, %ecx
	sall	$12, %eax
	subl	g_kv_mgr(,%edx,4), %ecx
	movl	%ecx, %edx
	addl	%edx, %eax
	movw	%ax, g_kv_mgr+4
.L247:
	.loc 1 607 0
	xorl	%ebx, %ebx
	jmp	.L245
.LVL330:
.L226:
.LBE64:
.LBE66:
	.loc 1 869 0
	testl	%eax, %eax
.LBB67:
.LBB65:
	.loc 1 583 0
	movl	%eax, %ebx
.LVL331:
.LBE65:
.LBE67:
	.loc 1 869 0
	jne	.L199
.L245:
	.loc 1 873 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$g_kv_mgr+8
	call	aos_sem_new
.LVL332:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L229
	.loc 1 880 0
	movl	g_kv_mgr+4, %eax
.LVL333:
	.loc 1 877 0
	movb	$1, g_kv_mgr
.LVL334:
	.loc 1 880 0
	shrw	$12, %ax
.LVL335:
	movzwl	%ax, %eax
	cmpw	$647, g_kv_mgr+16(,%eax,4)
	ja	.L219
	.loc 1 880 0 is_stmt 0 discriminator 1
	cmpb	$1, g_kv_mgr+3
	ja	.L219
	.loc 1 882 0 is_stmt 1
	call	trigger_gc
.LVL336:
	jmp	.L199
.LVL337:
.L229:
	movl	%eax, %ebx
.LVL338:
.L199:
	.loc 1 886 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%ebx, %eax
	je	.L220
	call	__stack_chk_fail
.LVL339:
.L220:
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
.LFE40:
	.size	aos_kv_init, .-aos_kv_init
	.section	.text.unlikely.aos_kv_init
.LCOLDE31:
	.section	.text.aos_kv_init
.LHOTE31:
	.section	.text.unlikely.aos_kv_deinit,"ax",@progbits
.LCOLDB32:
	.section	.text.aos_kv_deinit,"ax",@progbits
.LHOTB32:
	.globl	aos_kv_deinit
	.type	aos_kv_deinit, @function
aos_kv_deinit:
.LFB41:
	.loc 1 890 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 891 0
	movb	$0, g_kv_mgr
	.loc 1 892 0
	pushl	$g_kv_mgr+8
	call	aos_sem_free
.LVL340:
	.loc 1 893 0
	movl	$g_kv_mgr+12, (%esp)
	call	aos_mutex_free
.LVL341:
	.loc 1 894 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	aos_kv_deinit, .-aos_kv_deinit
	.section	.text.unlikely.aos_kv_deinit
.LCOLDE32:
	.section	.text.aos_kv_deinit
.LHOTE32:
	.section	.rodata.str1.1
.LC33:
	.string	"kv"
.LC34:
	.string	"kv [set key value | get key | del key | list]"
	.section	.data.ncmd,"aw",@progbits
	.align 4
	.type	ncmd, @object
	.size	ncmd, 12
ncmd:
	.long	.LC33
	.long	.LC34
	.long	handle_kv_cmd
	.section	.bss.g_kv_mgr,"aw",@nobits
	.align 4
	.type	g_kv_mgr, @object
	.size	g_kv_mgr, 24
g_kv_mgr:
	.zero	24
	.text
.Letext0:
	.section	.text.unlikely.utils_crc8
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./include/aos/cli.h"
	.file 6 "./include/aos/kernel.h"
	.file 7 "./include/hal/soc/flash.h"
	.file 8 "./include/hal/sensor.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 10 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x182c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF171
	.byte	0xc
	.long	.LASF172
	.long	.LASF173
	.long	.Ldebug_ranges0+0xa8
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
	.uleb128 0x3
	.long	.LASF8
	.byte	0x3
	.byte	0x2b
	.long	0x77
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x3
	.byte	0x41
	.long	0x90
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF14
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xad
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF15
	.uleb128 0x6
	.byte	0x4
	.long	0xba
	.uleb128 0x7
	.long	0xad
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF17
	.byte	0x4
	.byte	0x24
	.long	0x6c
	.uleb128 0x3
	.long	.LASF18
	.byte	0x4
	.byte	0x30
	.long	0x85
	.uleb128 0x8
	.long	.LASF66
	.byte	0xc
	.byte	0x5
	.byte	0x16
	.long	0x111
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x17
	.long	0xb4
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.byte	0x18
	.long	0xb4
	.byte	0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.byte	0x1a
	.long	0x131
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.long	0x12b
	.uleb128 0xb
	.long	0xa7
	.uleb128 0xb
	.long	0x25
	.uleb128 0xb
	.long	0x25
	.uleb128 0xb
	.long	0x12b
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xa7
	.uleb128 0x6
	.byte	0x4
	.long	0x111
	.uleb128 0xc
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.long	0x14c
	.uleb128 0xd
	.string	"hdl"
	.byte	0x6
	.byte	0x14
	.long	0xa5
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x6
	.byte	0x15
	.long	0x137
	.uleb128 0x3
	.long	.LASF23
	.byte	0x6
	.byte	0x18
	.long	0x14c
	.uleb128 0x3
	.long	.LASF24
	.byte	0x6
	.byte	0x19
	.long	0x14c
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF25
	.uleb128 0x6
	.byte	0x4
	.long	0xbf
	.uleb128 0xe
	.byte	0x4
	.long	0x25
	.byte	0x7
	.byte	0x13
	.long	0x1e7
	.uleb128 0xf
	.long	.LASF26
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF27
	.byte	0
	.uleb128 0x10
	.long	.LASF28
	.byte	0x1
	.uleb128 0x10
	.long	.LASF29
	.byte	0x2
	.uleb128 0x10
	.long	.LASF30
	.byte	0x3
	.uleb128 0x10
	.long	.LASF31
	.byte	0x4
	.uleb128 0x10
	.long	.LASF32
	.byte	0x5
	.uleb128 0x10
	.long	.LASF33
	.byte	0x6
	.uleb128 0x10
	.long	.LASF34
	.byte	0x7
	.uleb128 0x10
	.long	.LASF35
	.byte	0x8
	.uleb128 0x10
	.long	.LASF36
	.byte	0x9
	.uleb128 0x10
	.long	.LASF37
	.byte	0xa
	.uleb128 0x10
	.long	.LASF38
	.byte	0xb
	.uleb128 0x10
	.long	.LASF39
	.byte	0xc
	.uleb128 0x10
	.long	.LASF40
	.byte	0xd
	.uleb128 0x10
	.long	.LASF41
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF42
	.byte	0x7
	.byte	0x24
	.long	0x17a
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF43
	.uleb128 0xe
	.byte	0x4
	.long	0x37
	.byte	0x8
	.byte	0x48
	.long	0x254
	.uleb128 0x10
	.long	.LASF44
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.byte	0x1
	.uleb128 0x10
	.long	.LASF46
	.byte	0x2
	.uleb128 0x10
	.long	.LASF47
	.byte	0x3
	.uleb128 0x10
	.long	.LASF48
	.byte	0x4
	.uleb128 0x10
	.long	.LASF49
	.byte	0x5
	.uleb128 0x10
	.long	.LASF50
	.byte	0x6
	.uleb128 0x10
	.long	.LASF51
	.byte	0x7
	.uleb128 0x10
	.long	.LASF52
	.byte	0x8
	.uleb128 0x10
	.long	.LASF53
	.byte	0x9
	.uleb128 0x10
	.long	.LASF54
	.byte	0xa
	.uleb128 0x10
	.long	.LASF55
	.byte	0xb
	.uleb128 0x10
	.long	.LASF56
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x25a
	.uleb128 0x11
	.uleb128 0x7
	.long	0xbf
	.uleb128 0xe
	.byte	0x4
	.long	0x25
	.byte	0x1
	.byte	0xc
	.long	0x2a3
	.uleb128 0x10
	.long	.LASF57
	.byte	0
	.uleb128 0xf
	.long	.LASF58
	.sleb128 -11
	.uleb128 0xf
	.long	.LASF59
	.sleb128 -28
	.uleb128 0xf
	.long	.LASF60
	.sleb128 -22
	.uleb128 0xf
	.long	.LASF61
	.sleb128 -12
	.uleb128 0xf
	.long	.LASF62
	.sleb128 -2
	.uleb128 0xf
	.long	.LASF63
	.sleb128 -5
	.uleb128 0xf
	.long	.LASF64
	.sleb128 -5
	.uleb128 0xf
	.long	.LASF65
	.sleb128 -5
	.byte	0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.long	0x2d4
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1
	.byte	0x39
	.long	0xbf
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1
	.byte	0x3a
	.long	0xbf
	.byte	0x1
	.uleb128 0x9
	.long	.LASF70
	.byte	0x1
	.byte	0x3b
	.long	0x2d4
	.byte	0x2
	.byte	0
	.uleb128 0x12
	.long	0xbf
	.long	0x2e4
	.uleb128 0x13
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF71
	.byte	0x1
	.byte	0x3c
	.long	0x2a3
	.uleb128 0x8
	.long	.LASF72
	.byte	0x8
	.byte	0x1
	.byte	0x3f
	.long	0x344
	.uleb128 0x9
	.long	.LASF68
	.byte	0x1
	.byte	0x40
	.long	0xbf
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1
	.byte	0x41
	.long	0xbf
	.byte	0x1
	.uleb128 0xd
	.string	"crc"
	.byte	0x1
	.byte	0x42
	.long	0xbf
	.byte	0x2
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.byte	0x43
	.long	0xbf
	.byte	0x3
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.byte	0x44
	.long	0xca
	.byte	0x4
	.uleb128 0x9
	.long	.LASF75
	.byte	0x1
	.byte	0x45
	.long	0xca
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF76
	.byte	0x1
	.byte	0x46
	.long	0x2ef
	.uleb128 0x8
	.long	.LASF77
	.byte	0x10
	.byte	0x1
	.byte	0x49
	.long	0x38c
	.uleb128 0xd
	.string	"hdr"
	.byte	0x1
	.byte	0x4a
	.long	0x344
	.byte	0
	.uleb128 0x9
	.long	.LASF78
	.byte	0x1
	.byte	0x4b
	.long	0xa7
	.byte	0x8
	.uleb128 0xd
	.string	"len"
	.byte	0x1
	.byte	0x4c
	.long	0xca
	.byte	0xc
	.uleb128 0xd
	.string	"pos"
	.byte	0x1
	.byte	0x4d
	.long	0xca
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF79
	.byte	0x1
	.byte	0x4e
	.long	0x34f
	.uleb128 0x8
	.long	.LASF80
	.byte	0x4
	.byte	0x1
	.byte	0x51
	.long	0x3bc
	.uleb128 0x9
	.long	.LASF81
	.byte	0x1
	.byte	0x52
	.long	0xca
	.byte	0
	.uleb128 0x9
	.long	.LASF69
	.byte	0x1
	.byte	0x53
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF82
	.byte	0x1
	.byte	0x54
	.long	0x397
	.uleb128 0x8
	.long	.LASF83
	.byte	0x18
	.byte	0x1
	.byte	0x56
	.long	0x434
	.uleb128 0x9
	.long	.LASF84
	.byte	0x1
	.byte	0x57
	.long	0xbf
	.byte	0
	.uleb128 0x9
	.long	.LASF85
	.byte	0x1
	.byte	0x58
	.long	0xbf
	.byte	0x1
	.uleb128 0x9
	.long	.LASF86
	.byte	0x1
	.byte	0x59
	.long	0xbf
	.byte	0x2
	.uleb128 0x9
	.long	.LASF87
	.byte	0x1
	.byte	0x5a
	.long	0xbf
	.byte	0x3
	.uleb128 0x9
	.long	.LASF88
	.byte	0x1
	.byte	0x5b
	.long	0xca
	.byte	0x4
	.uleb128 0x9
	.long	.LASF89
	.byte	0x1
	.byte	0x5c
	.long	0x162
	.byte	0x8
	.uleb128 0x9
	.long	.LASF90
	.byte	0x1
	.byte	0x5d
	.long	0x157
	.byte	0xc
	.uleb128 0x9
	.long	.LASF91
	.byte	0x1
	.byte	0x5e
	.long	0x434
	.byte	0x10
	.byte	0
	.uleb128 0x12
	.long	0x3bc
	.long	0x444
	.uleb128 0x13
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF92
	.byte	0x1
	.byte	0x5f
	.long	0x3c7
	.uleb128 0x14
	.long	.LASF93
	.byte	0x1
	.value	0x125
	.long	0x45b
	.uleb128 0x6
	.byte	0x4
	.long	0x461
	.uleb128 0x15
	.long	0x25
	.long	0x475
	.uleb128 0xb
	.long	0x475
	.uleb128 0xb
	.long	0xb4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x38c
	.uleb128 0x16
	.byte	0xc
	.byte	0x1
	.value	0x1cb
	.long	0x4aa
	.uleb128 0x17
	.string	"p"
	.byte	0x1
	.value	0x1cc
	.long	0xa7
	.byte	0
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.value	0x1cd
	.long	0x25
	.byte	0x4
	.uleb128 0x17
	.string	"len"
	.byte	0x1
	.value	0x1ce
	.long	0xca
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	.LASF94
	.byte	0x1
	.value	0x1cf
	.long	0x47b
	.uleb128 0x18
	.long	.LASF174
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uleb128 0x19
	.long	.LASF96
	.byte	0x1
	.value	0x2a4
	.long	0x25
	.byte	0x1
	.long	0x4f4
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x2a4
	.long	0xb4
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.value	0x2a6
	.long	0x475
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x2a7
	.long	0x25
	.byte	0
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.byte	0x1
	.long	0x54e
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x2b8
	.long	0xb4
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x2b8
	.long	0x254
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.uleb128 0x1d
	.long	.LASF98
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.value	0x2ba
	.long	0x475
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x2bb
	.long	0x25
	.byte	0
	.uleb128 0x19
	.long	.LASF99
	.byte	0x1
	.value	0x2d5
	.long	0x25
	.byte	0x1
	.long	0x59c
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x2d5
	.long	0xb4
	.uleb128 0x1d
	.long	.LASF100
	.byte	0x1
	.value	0x2d5
	.long	0xa5
	.uleb128 0x1d
	.long	.LASF101
	.byte	0x1
	.value	0x2d5
	.long	0x59c
	.uleb128 0x1b
	.long	.LASF95
	.byte	0x1
	.value	0x2d7
	.long	0x475
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x2d8
	.long	0x25
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x25
	.uleb128 0x1e
	.long	.LASF112
	.byte	0x1
	.byte	0x86
	.long	0x25
	.byte	0x1
	.long	0x5c9
	.uleb128 0x1f
	.long	.LASF102
	.byte	0x1
	.byte	0x86
	.long	0xd5
	.uleb128 0x1f
	.long	.LASF103
	.byte	0x1
	.byte	0x86
	.long	0xd5
	.byte	0
	.uleb128 0x20
	.long	.LASF105
	.byte	0x1
	.byte	0x69
	.long	0xbf
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x61d
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0x69
	.long	0x174
	.long	.LLST0
	.uleb128 0x22
	.long	.LASF104
	.byte	0x1
	.byte	0x69
	.long	0xca
	.long	.LLST1
	.uleb128 0x23
	.string	"crc"
	.byte	0x1
	.byte	0x6b
	.long	0xbf
	.long	.LLST2
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0xbf
	.long	.LLST3
	.byte	0
	.uleb128 0x24
	.long	.LASF135
	.byte	0x1
	.byte	0x96
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x654
	.uleb128 0x22
	.long	.LASF95
	.byte	0x1
	.byte	0x96
	.long	0x475
	.long	.LLST4
	.uleb128 0x25
	.long	.LVL16
	.long	0x1753
	.uleb128 0x25
	.long	.LVL17
	.long	0x1753
	.byte	0
	.uleb128 0x20
	.long	.LASF106
	.byte	0x1
	.byte	0x7c
	.long	0x25
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a4
	.uleb128 0x22
	.long	.LASF102
	.byte	0x1
	.byte	0x7c
	.long	0xd5
	.long	.LLST5
	.uleb128 0x21
	.string	"buf"
	.byte	0x1
	.byte	0x7c
	.long	0xa5
	.long	.LLST6
	.uleb128 0x22
	.long	.LASF107
	.byte	0x1
	.byte	0x7c
	.long	0x2c
	.long	.LLST7
	.uleb128 0x25
	.long	.LVL21
	.long	0x175f
	.byte	0
	.uleb128 0x26
	.long	.LASF108
	.byte	0x1
	.value	0x13f
	.long	0x25
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f9
	.uleb128 0x27
	.long	.LASF95
	.byte	0x1
	.value	0x13f
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x13f
	.long	0xb4
	.long	.LLST8
	.uleb128 0x25
	.long	.LVL25
	.long	0x176a
	.uleb128 0x25
	.long	.LVL26
	.long	0x654
	.uleb128 0x25
	.long	.LVL27
	.long	0x1776
	.byte	0
	.uleb128 0x26
	.long	.LASF109
	.byte	0x1
	.value	0x2f9
	.long	0x25
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x7b1
	.uleb128 0x27
	.long	.LASF95
	.byte	0x1
	.value	0x2f9
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x2f9
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.long	.LASF110
	.byte	0x1
	.value	0x2fb
	.long	0xa7
	.long	.LLST9
	.uleb128 0x2a
	.long	.LASF111
	.byte	0x1
	.value	0x2fc
	.long	0xa7
	.long	.LLST10
	.uleb128 0x25
	.long	.LVL29
	.long	0x176a
	.uleb128 0x2b
	.long	.LVL32
	.long	0x654
	.long	0x76e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL33
	.long	0x176a
	.uleb128 0x25
	.long	.LVL35
	.long	0x1753
	.uleb128 0x2b
	.long	.LVL38
	.long	0x654
	.long	0x795
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.long	.LVL39
	.long	0x1781
	.uleb128 0x25
	.long	.LVL40
	.long	0x1753
	.uleb128 0x25
	.long	.LVL41
	.long	0x1753
	.byte	0
	.uleb128 0x2d
	.long	0x4b6
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ce
	.uleb128 0x25
	.long	.LVL44
	.long	0x178c
	.byte	0
	.uleb128 0x1e
	.long	.LASF113
	.byte	0x1
	.byte	0xbc
	.long	0xca
	.byte	0x1
	.long	0x800
	.uleb128 0x2e
	.string	"len"
	.byte	0x1
	.byte	0xbc
	.long	0xca
	.uleb128 0x2f
	.long	.LASF114
	.byte	0x1
	.byte	0xbe
	.long	0x800
	.uleb128 0x2f
	.long	.LASF115
	.byte	0x1
	.byte	0xbf
	.long	0xbf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3bc
	.uleb128 0x1e
	.long	.LASF116
	.byte	0x1
	.byte	0x81
	.long	0x25
	.byte	0x1
	.long	0x838
	.uleb128 0x1f
	.long	.LASF102
	.byte	0x1
	.byte	0x81
	.long	0xd5
	.uleb128 0x2e
	.string	"buf"
	.byte	0x1
	.byte	0x81
	.long	0x254
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x1
	.byte	0x81
	.long	0x2c
	.byte	0
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x1d0
	.long	0x25
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x994
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x1d0
	.long	0xb4
	.long	.LLST11
	.uleb128 0x28
	.string	"val"
	.byte	0x1
	.value	0x1d0
	.long	0x254
	.long	.LLST12
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x1d0
	.long	0x25
	.long	.LLST13
	.uleb128 0x27
	.long	.LASF75
	.byte	0x1
	.value	0x1d0
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.long	.LASF78
	.byte	0x1
	.value	0x1d2
	.long	0x4aa
	.long	.LLST14
	.uleb128 0x1c
	.string	"hdr"
	.byte	0x1
	.value	0x1d3
	.long	0x344
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x1d4
	.long	0xa7
	.long	.LLST15
	.uleb128 0x1c
	.string	"pos"
	.byte	0x1
	.value	0x1d5
	.long	0xca
	.uleb128 0x2a
	.long	.LASF118
	.byte	0x1
	.value	0x1d6
	.long	0xbf
	.long	.LLST16
	.uleb128 0x31
	.long	0x7ce
	.long	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1ed
	.long	0x91f
	.uleb128 0x32
	.long	0x7de
	.long	.LLST17
	.uleb128 0x33
	.long	.Ldebug_ranges0+0
	.uleb128 0x34
	.long	0x7e9
	.long	.LLST18
	.uleb128 0x34
	.long	0x7f4
	.long	.LLST19
	.uleb128 0x25
	.long	.LVL65
	.long	0x4b6
	.uleb128 0x25
	.long	.LVL68
	.long	0x4b6
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	0x806
	.long	.LBB14
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1ef
	.long	0x958
	.uleb128 0x32
	.long	0x82c
	.long	.LLST20
	.uleb128 0x32
	.long	0x821
	.long	.LLST21
	.uleb128 0x32
	.long	0x816
	.long	.LLST22
	.uleb128 0x25
	.long	.LVL73
	.long	0x1797
	.byte	0
	.uleb128 0x25
	.long	.LVL52
	.long	0x176a
	.uleb128 0x2b
	.long	.LVL61
	.long	0x5c9
	.long	0x981
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x8
	.byte	0x91
	.sleb128 -52
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0
	.uleb128 0x25
	.long	.LVL78
	.long	0x1753
	.uleb128 0x25
	.long	.LVL81
	.long	0x17a2
	.byte	0
	.uleb128 0x20
	.long	.LASF119
	.byte	0x1
	.byte	0xa0
	.long	0x25
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0d
	.uleb128 0x21
	.string	"pos"
	.byte	0x1
	.byte	0xa0
	.long	0xca
	.long	.LLST23
	.uleb128 0x22
	.long	.LASF69
	.byte	0x1
	.byte	0xa0
	.long	0xbf
	.long	.LLST24
	.uleb128 0x35
	.long	0x806
	.long	.LBB20
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa2
	.long	0xa03
	.uleb128 0x32
	.long	0x82c
	.long	.LLST25
	.uleb128 0x32
	.long	0x821
	.long	.LLST26
	.uleb128 0x32
	.long	0x816
	.long	.LLST27
	.uleb128 0x25
	.long	.LVL89
	.long	0x1797
	.byte	0
	.uleb128 0x25
	.long	.LVL90
	.long	0x17a2
	.byte	0
	.uleb128 0x26
	.long	.LASF120
	.byte	0x1
	.value	0x176
	.long	0x475
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xb6f
	.uleb128 0x36
	.long	.LASF121
	.byte	0x1
	.value	0x176
	.long	0x44f
	.long	.LLST28
	.uleb128 0x36
	.long	.LASF115
	.byte	0x1
	.value	0x176
	.long	0xbf
	.long	.LLST29
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x176
	.long	0xb4
	.long	.LLST30
	.uleb128 0x2a
	.long	.LASF95
	.byte	0x1
	.value	0x178
	.long	0x475
	.long	.LLST31
	.uleb128 0x30
	.string	"hdr"
	.byte	0x1
	.value	0x179
	.long	0xb6f
	.long	.LLST32
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x17a
	.long	0xca
	.long	.LLST33
	.uleb128 0x30
	.string	"end"
	.byte	0x1
	.value	0x17b
	.long	0xca
	.long	.LLST34
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x17c
	.long	0xca
	.long	.LLST35
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x17d
	.long	0x25
	.long	.LLST36
	.uleb128 0x25
	.long	.LVL99
	.long	0x176a
	.uleb128 0x2b
	.long	.LVL103
	.long	0x654
	.long	0xae3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2b
	.long	.LVL104
	.long	0x61d
	.long	0xaf7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL106
	.long	0x61d
	.long	0xb0b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL108
	.long	0x994
	.long	0xb26
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x37
	.long	.LVL111
	.uleb128 0x3
	.byte	0x75
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2b
	.long	.LVL113
	.long	0x61d
	.long	0xb43
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL116
	.long	0x994
	.long	0xb5e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x38
	.long	.LVL117
	.long	0x61d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x344
	.uleb128 0x26
	.long	.LASF122
	.byte	0x1
	.value	0x1ba
	.long	0x475
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0xbfe
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0x1ba
	.long	0xb4
	.long	.LLST37
	.uleb128 0x2a
	.long	.LASF95
	.byte	0x1
	.value	0x1bc
	.long	0x475
	.long	.LLST38
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0xbf
	.long	.LLST39
	.uleb128 0x2b
	.long	.LVL125
	.long	0xa0d
	.long	0xbdf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_find_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL129
	.long	0xa0d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_find_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF123
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0xd6d
	.uleb128 0x22
	.long	.LASF95
	.byte	0x1
	.byte	0xe5
	.long	0x475
	.long	.LLST40
	.uleb128 0x22
	.long	.LASF124
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.long	.LLST41
	.uleb128 0x23
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.long	0x25
	.long	.LLST42
	.uleb128 0x39
	.string	"hdr"
	.byte	0x1
	.byte	0xe8
	.long	0x344
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3a
	.long	.LASF125
	.byte	0x1
	.byte	0xe9
	.long	0xa7
	.long	.LLST43
	.uleb128 0x3a
	.long	.LASF126
	.byte	0x1
	.byte	0xea
	.long	0xa7
	.long	.LLST44
	.uleb128 0x23
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.long	0xbf
	.long	.LLST45
	.uleb128 0x3a
	.long	.LASF102
	.byte	0x1
	.byte	0xec
	.long	0xca
	.long	.LLST46
	.uleb128 0x2b
	.long	.LVL139
	.long	0x654
	.long	0xcac
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x25
	.long	.LVL142
	.long	0x176a
	.uleb128 0x25
	.long	.LVL145
	.long	0x176a
	.uleb128 0x25
	.long	.LVL147
	.long	0x1753
	.uleb128 0x2b
	.long	.LVL150
	.long	0x654
	.long	0xce4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x75
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL151
	.long	0x654
	.long	0xcf8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL152
	.long	0x1776
	.uleb128 0x25
	.long	.LVL153
	.long	0x1753
	.uleb128 0x25
	.long	.LVL154
	.long	0x1753
	.uleb128 0x25
	.long	.LVL155
	.long	0x1753
	.uleb128 0x25
	.long	.LVL156
	.long	0x1753
	.uleb128 0x2b
	.long	.LVL158
	.long	0x994
	.long	0xd44
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x8
	.byte	0x75
	.sleb128 -56
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL162
	.long	0x994
	.long	0xd63
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 -56
	.byte	0x6
	.byte	0xa
	.value	0xf000
	.byte	0x1a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x25
	.long	.LVL167
	.long	0x17a2
	.byte	0
	.uleb128 0x26
	.long	.LASF127
	.byte	0x1
	.value	0x127
	.long	0x25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0xe0c
	.uleb128 0x27
	.long	.LASF95
	.byte	0x1
	.value	0x127
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x127
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x129
	.long	0xa7
	.long	.LLST47
	.uleb128 0x25
	.long	.LVL170
	.long	0x176a
	.uleb128 0x2b
	.long	.LVL173
	.long	0x654
	.long	0xdd0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL174
	.long	0x1753
	.uleb128 0x2b
	.long	.LVL175
	.long	0x5c9
	.long	0xded
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL176
	.long	0xbfe
	.long	0xe02
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.long	.LVL177
	.long	0x1753
	.byte	0
	.uleb128 0x20
	.long	.LASF128
	.byte	0x1
	.byte	0xa5
	.long	0x25
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0xec2
	.uleb128 0x22
	.long	.LASF118
	.byte	0x1
	.byte	0xa5
	.long	0xbf
	.long	.LLST48
	.uleb128 0x39
	.string	"hdr"
	.byte	0x1
	.byte	0xa7
	.long	0x2e4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.string	"pos"
	.byte	0x1
	.byte	0xa8
	.long	0xca
	.long	.LLST49
	.uleb128 0x35
	.long	0x5a2
	.long	.LBB30
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xac
	.long	0xe80
	.uleb128 0x32
	.long	0x5bd
	.long	.LLST50
	.uleb128 0x32
	.long	0x5b2
	.long	.LLST51
	.uleb128 0x25
	.long	.LVL181
	.long	0x17ab
	.byte	0
	.uleb128 0x35
	.long	0x806
	.long	.LBB36
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xb2
	.long	0xeb8
	.uleb128 0x32
	.long	0x82c
	.long	.LLST52
	.uleb128 0x32
	.long	0x821
	.long	.LLST53
	.uleb128 0x32
	.long	0x816
	.long	.LLST54
	.uleb128 0x25
	.long	.LVL183
	.long	0x1797
	.byte	0
	.uleb128 0x25
	.long	.LVL186
	.long	0x17a2
	.byte	0
	.uleb128 0x3b
	.long	.LASF146
	.byte	0x1
	.value	0x262
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xfa1
	.uleb128 0x29
	.string	"arg"
	.byte	0x1
	.value	0x262
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0xbf
	.long	.LLST55
	.uleb128 0x2a
	.long	.LASF129
	.byte	0x1
	.value	0x265
	.long	0xbf
	.long	.LLST56
	.uleb128 0x2a
	.long	.LASF130
	.byte	0x1
	.value	0x266
	.long	0xbf
	.long	.LLST57
	.uleb128 0x2a
	.long	.LASF131
	.byte	0x1
	.value	0x267
	.long	0xca
	.long	.LLST58
	.uleb128 0x3c
	.long	.LASF133
	.byte	0x1
	.value	0x29a
	.long	.L132
	.uleb128 0x25
	.long	.LVL188
	.long	0x17b6
	.uleb128 0x2b
	.long	.LVL198
	.long	0xa0d
	.long	0xf5d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_gc_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL199
	.long	0xe0c
	.long	0xf71
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL200
	.long	0x994
	.long	0xf85
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.byte	0
	.uleb128 0x25
	.long	.LVL204
	.long	0x17c1
	.uleb128 0x25
	.long	.LVL205
	.long	0x17cc
	.uleb128 0x3d
	.long	.LVL206
	.long	0x17d7
	.byte	0
	.uleb128 0x26
	.long	.LASF132
	.byte	0x1
	.value	0x155
	.long	0x25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x1092
	.uleb128 0x27
	.long	.LASF95
	.byte	0x1
	.value	0x155
	.long	0x475
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"key"
	.byte	0x1
	.value	0x155
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"p"
	.byte	0x1
	.value	0x157
	.long	0xa7
	.long	.LLST59
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x158
	.long	0x25
	.long	.LLST60
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x159
	.long	0xca
	.long	.LLST61
	.uleb128 0x2a
	.long	.LASF118
	.byte	0x1
	.value	0x15a
	.long	0xbf
	.long	.LLST62
	.uleb128 0x3e
	.string	"err"
	.byte	0x1
	.value	0x171
	.long	.L141
	.uleb128 0x3f
	.long	0x806
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.value	0x167
	.long	0x105c
	.uleb128 0x32
	.long	0x82c
	.long	.LLST63
	.uleb128 0x32
	.long	0x821
	.long	.LLST64
	.uleb128 0x32
	.long	0x816
	.long	.LLST65
	.uleb128 0x25
	.long	.LVL219
	.long	0x1797
	.byte	0
	.uleb128 0x25
	.long	.LVL209
	.long	0x176a
	.uleb128 0x2b
	.long	.LVL212
	.long	0x654
	.long	0x107f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL224
	.long	0x1753
	.uleb128 0x25
	.long	.LVL226
	.long	0x17a2
	.byte	0
	.uleb128 0x2d
	.long	0x4be
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x1146
	.uleb128 0x40
	.long	0x4cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x41
	.long	0x4db
	.uleb128 0x34
	.long	0x4e7
	.long	.LLST66
	.uleb128 0x42
	.long	.LBB46
	.long	.LBE46-.LBB46
	.long	0x113c
	.uleb128 0x32
	.long	0x4cf
	.long	.LLST67
	.uleb128 0x43
	.long	.LBB47
	.long	.LBE47-.LBB47
	.uleb128 0x34
	.long	0x4db
	.long	.LLST68
	.uleb128 0x34
	.long	0x4e7
	.long	.LLST69
	.uleb128 0x2b
	.long	.LVL233
	.long	0xb75
	.long	0x1101
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x25
	.long	.LVL235
	.long	0x17c1
	.uleb128 0x2b
	.long	.LVL237
	.long	0xbfe
	.long	0x111d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL240
	.long	0x61d
	.long	0x1131
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL241
	.long	0x17c1
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL230
	.long	0x17b6
	.byte	0
	.uleb128 0x44
	.long	.LASF134
	.byte	0x1
	.value	0x1ff
	.long	0x25
	.byte	0x1
	.long	0x1194
	.uleb128 0x1d
	.long	.LASF95
	.byte	0x1
	.value	0x1ff
	.long	0x475
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0x1ff
	.long	0xb4
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x1ff
	.long	0x254
	.uleb128 0x1a
	.string	"len"
	.byte	0x1
	.value	0x1ff
	.long	0x25
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x201
	.long	0x25
	.byte	0
	.uleb128 0x2d
	.long	0x4f4
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x1317
	.uleb128 0x32
	.long	0x505
	.long	.LLST70
	.uleb128 0x40
	.long	0x511
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.long	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x40
	.long	0x529
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x41
	.long	0x535
	.uleb128 0x34
	.long	0x541
	.long	.LLST71
	.uleb128 0x42
	.long	.LBB52
	.long	.LBE52-.LBB52
	.long	0x1304
	.uleb128 0x32
	.long	0x529
	.long	.LLST72
	.uleb128 0x32
	.long	0x51d
	.long	.LLST73
	.uleb128 0x32
	.long	0x511
	.long	.LLST74
	.uleb128 0x32
	.long	0x505
	.long	.LLST75
	.uleb128 0x43
	.long	.LBB53
	.long	.LBE53-.LBB53
	.uleb128 0x34
	.long	0x535
	.long	.LLST76
	.uleb128 0x34
	.long	0x541
	.long	.LLST77
	.uleb128 0x3f
	.long	0x1146
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.value	0x2cb
	.long	0x12ae
	.uleb128 0x32
	.long	0x117b
	.long	.LLST78
	.uleb128 0x32
	.long	0x116f
	.long	.LLST79
	.uleb128 0x32
	.long	0x1163
	.long	.LLST80
	.uleb128 0x32
	.long	0x1157
	.long	.LLST81
	.uleb128 0x43
	.long	.LBB55
	.long	.LBE55-.LBB55
	.uleb128 0x34
	.long	0x1187
	.long	.LLST82
	.uleb128 0x25
	.long	.LVL253
	.long	0x1776
	.uleb128 0x2b
	.long	.LVL254
	.long	0x838
	.long	0x1297
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL257
	.long	0xbfe
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LVL249
	.long	0xb75
	.long	0x12c3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x2b
	.long	.LVL259
	.long	0x61d
	.long	0x12d7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL262
	.long	0x838
	.long	0x12f9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL264
	.long	0x17c1
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL245
	.long	0x17e2
	.uleb128 0x25
	.long	.LVL246
	.long	0x17b6
	.byte	0
	.uleb128 0x2d
	.long	0x54e
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x13dd
	.uleb128 0x40
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x40
	.long	0x56b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x40
	.long	0x577
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x45
	.long	0x583
	.byte	0
	.uleb128 0x34
	.long	0x58f
	.long	.LLST83
	.uleb128 0x42
	.long	.LBB58
	.long	.LBE58-.LBB58
	.long	0x13d3
	.uleb128 0x32
	.long	0x577
	.long	.LLST84
	.uleb128 0x32
	.long	0x56b
	.long	.LLST85
	.uleb128 0x32
	.long	0x55f
	.long	.LLST86
	.uleb128 0x43
	.long	.LBB59
	.long	.LBE59-.LBB59
	.uleb128 0x34
	.long	0x583
	.long	.LLST87
	.uleb128 0x41
	.long	0x58f
	.uleb128 0x2b
	.long	.LVL269
	.long	0xb75
	.long	0x13a4
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.long	.LVL271
	.long	0x17c1
	.uleb128 0x2b
	.long	.LVL272
	.long	0x61d
	.long	0x13c1
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x38
	.long	.LVL274
	.long	0x61d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL266
	.long	0x17b6
	.byte	0
	.uleb128 0x46
	.long	.LASF136
	.byte	0x1
	.value	0x313
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x152b
	.uleb128 0x27
	.long	.LASF137
	.byte	0x1
	.value	0x313
	.long	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF138
	.byte	0x1
	.value	0x313
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF139
	.byte	0x1
	.value	0x313
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF140
	.byte	0x1
	.value	0x313
	.long	0x12b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2a
	.long	.LASF141
	.byte	0x1
	.value	0x315
	.long	0xb4
	.long	.LLST88
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x316
	.long	0x25
	.long	.LLST89
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x316
	.long	0x25
	.long	.LLST90
	.uleb128 0x2a
	.long	.LASF100
	.byte	0x1
	.value	0x317
	.long	0xa7
	.long	.LLST91
	.uleb128 0x47
	.string	"len"
	.byte	0x1
	.value	0x318
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x25
	.long	.LVL278
	.long	0x17ed
	.uleb128 0x25
	.long	.LVL280
	.long	0x4f4
	.uleb128 0x25
	.long	.LVL282
	.long	0x17ed
	.uleb128 0x25
	.long	.LVL283
	.long	0x176a
	.uleb128 0x25
	.long	.LVL286
	.long	0x1781
	.uleb128 0x25
	.long	.LVL290
	.long	0x54e
	.uleb128 0x25
	.long	.LVL291
	.long	0x1781
	.uleb128 0x25
	.long	.LVL292
	.long	0x1753
	.uleb128 0x25
	.long	.LVL294
	.long	0x17ed
	.uleb128 0x25
	.long	.LVL295
	.long	0x4be
	.uleb128 0x25
	.long	.LVL297
	.long	0x17ed
	.uleb128 0x2b
	.long	.LVL299
	.long	0xa0d
	.long	0x1500
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_print_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL300
	.long	0xa0d
	.long	0x1521
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_print_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.long	.LVL301
	.long	0x17a2
	.byte	0
	.uleb128 0x44
	.long	.LASF142
	.byte	0x1
	.value	0x213
	.long	0x25
	.byte	0x1
	.long	0x1583
	.uleb128 0x1c
	.string	"hdr"
	.byte	0x1
	.value	0x215
	.long	0x2e4
	.uleb128 0x1c
	.string	"ret"
	.byte	0x1
	.value	0x216
	.long	0x25
	.uleb128 0x1b
	.long	.LASF143
	.byte	0x1
	.value	0x216
	.long	0x25
	.uleb128 0x1c
	.string	"i"
	.byte	0x1
	.value	0x217
	.long	0xbf
	.uleb128 0x1b
	.long	.LASF144
	.byte	0x1
	.value	0x217
	.long	0xbf
	.uleb128 0x1b
	.long	.LASF145
	.byte	0x1
	.value	0x218
	.long	0x2d4
	.byte	0
	.uleb128 0x48
	.long	.LASF175
	.byte	0x1
	.value	0x34f
	.long	0x25
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x16e4
	.uleb128 0x2a
	.long	.LASF115
	.byte	0x1
	.value	0x351
	.long	0xbf
	.long	.LLST92
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x352
	.long	0x25
	.long	.LLST93
	.uleb128 0x31
	.long	0x152b
	.long	.LBB62
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.value	0x365
	.long	0x16b6
	.uleb128 0x33
	.long	.Ldebug_ranges0+0x88
	.uleb128 0x49
	.long	0x153c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x34
	.long	0x1548
	.long	.LLST94
	.uleb128 0x34
	.long	0x1554
	.long	.LLST95
	.uleb128 0x34
	.long	0x1560
	.long	.LLST96
	.uleb128 0x34
	.long	0x156a
	.long	.LLST97
	.uleb128 0x49
	.long	0x1576
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2b
	.long	.LVL308
	.long	0x654
	.long	0x162b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 -34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2b
	.long	.LVL309
	.long	0xa0d
	.long	0x164d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_recovery_cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.long	.LVL311
	.long	0xe0c
	.long	0x1661
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	.LVL316
	.long	0x994
	.long	0x1675
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.long	.LVL318
	.long	0xe0c
	.long	0x168c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2b
	.long	.LVL321
	.long	0xe0c
	.long	0x169f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x38
	.long	.LVL327
	.long	0x994
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.long	.LVL302
	.long	0x17f8
	.uleb128 0x25
	.long	.LVL303
	.long	0x1803
	.uleb128 0x25
	.long	.LVL332
	.long	0x180e
	.uleb128 0x25
	.long	.LVL336
	.long	0x4b6
	.uleb128 0x25
	.long	.LVL339
	.long	0x17a2
	.byte	0
	.uleb128 0x3b
	.long	.LASF147
	.byte	0x1
	.value	0x379
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x170d
	.uleb128 0x25
	.long	.LVL340
	.long	0x1819
	.uleb128 0x25
	.long	.LVL341
	.long	0x1824
	.byte	0
	.uleb128 0x4a
	.long	.LASF148
	.byte	0x1
	.byte	0x61
	.long	0x444
	.uleb128 0x5
	.byte	0x3
	.long	g_kv_mgr
	.uleb128 0x4b
	.long	.LASF149
	.byte	0x1
	.byte	0x63
	.long	0x25b
	.byte	0x4b
	.uleb128 0x4b
	.long	.LASF150
	.byte	0x1
	.byte	0x64
	.long	0x25b
	.byte	0x49
	.uleb128 0x4c
	.long	.LASF151
	.byte	0x1
	.value	0x348
	.long	0xe0
	.uleb128 0x5
	.byte	0x3
	.long	ncmd
	.uleb128 0x4d
	.long	.LASF176
	.byte	0xa
	.byte	0x17
	.long	0x37
	.uleb128 0x4e
	.long	.LASF152
	.long	.LASF152
	.byte	0x6
	.value	0x200
	.uleb128 0x4f
	.long	.LASF153
	.long	.LASF153
	.byte	0x7
	.byte	0x7c
	.uleb128 0x4e
	.long	.LASF154
	.long	.LASF154
	.byte	0x6
	.value	0x1e8
	.uleb128 0x4f
	.long	.LASF155
	.long	.LASF155
	.byte	0x9
	.byte	0x1a
	.uleb128 0x4f
	.long	.LASF156
	.long	.LASF156
	.byte	0x5
	.byte	0x6c
	.uleb128 0x4f
	.long	.LASF157
	.long	.LASF157
	.byte	0x6
	.byte	0x43
	.uleb128 0x4f
	.long	.LASF158
	.long	.LASF158
	.byte	0x7
	.byte	0x5c
	.uleb128 0x50
	.long	.LASF177
	.long	.LASF177
	.uleb128 0x4f
	.long	.LASF159
	.long	.LASF159
	.byte	0x7
	.byte	0x4d
	.uleb128 0x4f
	.long	.LASF160
	.long	.LASF160
	.byte	0x6
	.byte	0x9e
	.uleb128 0x4f
	.long	.LASF161
	.long	.LASF161
	.byte	0x6
	.byte	0xa7
	.uleb128 0x4f
	.long	.LASF162
	.long	.LASF162
	.byte	0x6
	.byte	0xe4
	.uleb128 0x4f
	.long	.LASF163
	.long	.LASF163
	.byte	0x6
	.byte	0x5a
	.uleb128 0x4f
	.long	.LASF164
	.long	.LASF164
	.byte	0x6
	.byte	0xcd
	.uleb128 0x4f
	.long	.LASF165
	.long	.LASF165
	.byte	0x9
	.byte	0x20
	.uleb128 0x4f
	.long	.LASF166
	.long	.LASF166
	.byte	0x6
	.byte	0x8c
	.uleb128 0x4f
	.long	.LASF167
	.long	.LASF167
	.byte	0x5
	.byte	0x43
	.uleb128 0x4f
	.long	.LASF168
	.long	.LASF168
	.byte	0x6
	.byte	0xbb
	.uleb128 0x4f
	.long	.LASF169
	.long	.LASF169
	.byte	0x6
	.byte	0xc3
	.uleb128 0x4f
	.long	.LASF170
	.long	.LASF170
	.byte	0x6
	.byte	0x94
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
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
	.uleb128 0x17
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0x49
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4a
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
	.uleb128 0x4b
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0x50
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
	.long	.LVL4
	.value	0x1
	.byte	0x51
	.long	.LVL4
	.long	.LVL12
	.value	0x3
	.byte	0x71
	.sleb128 1
	.byte	0x9f
	.long	.LVL12
	.long	.LFE16
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL3
	.value	0x1
	.byte	0x52
	.long	.LVL3
	.long	.LFE16
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL2
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL9
	.value	0x9
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0x31
	.byte	0x27
	.byte	0x8
	.byte	0x31
	.byte	0x27
	.byte	0x9f
	.long	.LVL9
	.long	.LFE16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	.LVL6
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LVL11
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL11
	.long	.LVL13
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST4:
	.long	.LVL14
	.long	.LVL15
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL18
	.value	0x1
	.byte	0x53
	.long	.LVL18
	.long	.LFE21
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL19
	.long	.LVL20
	.value	0x1
	.byte	0x50
	.long	.LVL20
	.long	.LVL21-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL21-1
	.long	.LVL22
	.value	0x2
	.byte	0x75
	.sleb128 -12
	.long	.LVL22
	.long	.LFE17
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL21-1
	.value	0x1
	.byte	0x52
	.long	.LVL21-1
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL19
	.long	.LVL21-1
	.value	0x1
	.byte	0x51
	.long	.LVL21-1
	.long	.LFE17
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST9:
	.long	.LVL28
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LVL43
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL34
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x50
	.long	.LVL35-1
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL42
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST11:
	.long	.LVL45
	.long	.LVL46
	.value	0x1
	.byte	0x50
	.long	.LVL46
	.long	.LVL49
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST12:
	.long	.LVL45
	.long	.LVL48
	.value	0x1
	.byte	0x52
	.long	.LVL48
	.long	.LFE31
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST13:
	.long	.LVL45
	.long	.LVL47
	.value	0x1
	.byte	0x51
	.long	.LVL47
	.long	.LFE31
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST14:
	.long	.LVL50
	.long	.LVL51
	.value	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL51
	.long	.LVL53
	.value	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL53
	.long	.LVL54
	.value	0xb
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL54
	.long	.LVL77
	.value	0xb
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL77
	.long	.LVL79
	.value	0xc
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL79
	.long	.LVL80
	.value	0xb
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0x93
	.uleb128 0x4
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL80
	.long	.LFE31
	.value	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	0
	.long	0
.LLST15:
	.long	.LVL55
	.long	.LVL56
	.value	0x1
	.byte	0x52
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x57
	.long	.LVL57
	.long	.LVL58
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST16:
	.long	.LVL75
	.long	.LVL76
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL76
	.long	.LVL77
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL62
	.long	.LVL66
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	.LVL67
	.long	.LVL68
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	0
	.long	0
.LLST18:
	.long	.LVL62
	.long	.LVL63
	.value	0x18
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	g_kv_mgr
	.byte	0x22
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.value	0x11
	.byte	0x70
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	g_kv_mgr
	.byte	0x22
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65-1
	.value	0x18
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	g_kv_mgr
	.byte	0x22
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68-1
	.value	0x18
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	g_kv_mgr
	.byte	0x22
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL62
	.long	.LVL65-1
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL67
	.long	.LVL68-1
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL69
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST21:
	.long	.LVL69
	.long	.LVL71
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL71
	.long	.LVL72
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL72
	.long	.LVL73-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL73-1
	.long	.LVL74
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST22:
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL70
	.long	.LVL73-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL73-1
	.long	.LVL74
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST23:
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x50
	.long	.LVL83
	.long	.LVL85
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.value	0x7
	.byte	0x75
	.sleb128 -16
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL86
	.long	.LVL89-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL89-1
	.long	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL82
	.long	.LVL89-1
	.value	0x1
	.byte	0x52
	.long	.LVL89-1
	.long	.LVL91
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL91
	.long	.LFE22
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST25:
	.long	.LVL84
	.long	.LVL89
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL84
	.long	.LVL85
	.value	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.long	.LVL85
	.long	.LVL86
	.value	0x1
	.byte	0x50
	.long	.LVL86
	.long	.LVL87
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL87
	.long	.LVL88
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL88
	.long	.LVL89-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL89-1
	.long	.LVL89
	.value	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LVL86
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL86
	.long	.LVL89-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL89-1
	.long	.LVL89
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	0
	.long	0
.LLST28:
	.long	.LVL92
	.long	.LVL93
	.value	0x1
	.byte	0x50
	.long	.LVL93
	.long	.LVL122
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	.LVL122
	.long	.LFE29
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST29:
	.long	.LVL92
	.long	.LVL98
	.value	0x1
	.byte	0x52
	.long	.LVL98
	.long	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL92
	.long	.LVL94
	.value	0x1
	.byte	0x51
	.long	.LVL94
	.long	.LVL122
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.long	.LVL122
	.long	.LFE29
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST31:
	.long	.LVL100
	.long	.LVL101
	.value	0x1
	.byte	0x50
	.long	.LVL101
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	.LVL109
	.long	.LVL118
	.value	0x1
	.byte	0x53
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST32:
	.long	.LVL102
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	.LVL109
	.long	.LVL118
	.value	0x1
	.byte	0x53
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST33:
	.long	.LVL95
	.long	.LVL121
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST34:
	.long	.LVL96
	.long	.LVL97
	.value	0x1
	.byte	0x51
	.long	.LVL97
	.long	.LVL122
	.value	0x2
	.byte	0x75
	.sleb128 -26
	.long	.LVL122
	.long	.LFE29
	.value	0x2
	.byte	0x91
	.sleb128 -34
	.long	0
	.long	0
.LLST35:
	.long	.LVL96
	.long	.LVL98
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL110
	.long	.LVL112
	.value	0x1
	.byte	0x57
	.long	.LVL114
	.long	.LVL115
	.value	0x1
	.byte	0x57
	.long	.LVL115
	.long	.LVL118
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST36:
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x50
	.long	.LVL119
	.long	.LVL120
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL123
	.long	.LVL124
	.value	0x1
	.byte	0x50
	.long	.LVL124
	.long	.LVL125-1
	.value	0x1
	.byte	0x51
	.long	.LVL125-1
	.long	.LVL131
	.value	0x1
	.byte	0x53
	.long	.LVL131
	.long	.LFE30
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL125
	.long	.LVL126
	.value	0x1
	.byte	0x50
	.long	.LVL129
	.long	.LVL130
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST39:
	.long	.LVL123
	.long	.LVL126
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL126
	.long	.LVL127
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL128
	.long	.LVL130
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL132
	.long	.LVL133
	.value	0x1
	.byte	0x50
	.long	.LVL133
	.long	.LVL168
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	.LVL168
	.long	.LFE25
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST41:
	.long	.LVL132
	.long	.LVL136
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST42:
	.long	.LVL133
	.long	.LVL140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL159
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL159
	.long	.LVL161
	.value	0x1
	.byte	0x50
	.long	.LVL161
	.long	.LVL163
	.value	0x1
	.byte	0x53
	.long	.LVL163
	.long	.LVL164
	.value	0x1
	.byte	0x50
	.long	.LVL164
	.long	.LVL166
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL133
	.long	.LVL140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.value	0x1
	.byte	0x50
	.long	.LVL144
	.long	.LVL157
	.value	0x1
	.byte	0x56
	.long	.LVL164
	.long	.LVL165
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL165
	.long	.LVL166
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST44:
	.long	.LVL133
	.long	.LVL140
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL146
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL146
	.long	.LVL147-1
	.value	0x1
	.byte	0x50
	.long	.LVL147-1
	.long	.LVL148
	.value	0x1
	.byte	0x57
	.long	.LVL148
	.long	.LVL149
	.value	0x1
	.byte	0x50
	.long	.LVL149
	.long	.LVL157
	.value	0x1
	.byte	0x57
	.long	.LVL164
	.long	.LVL165
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST45:
	.long	.LVL160
	.long	.LVL164
	.value	0x7
	.byte	0x75
	.sleb128 -56
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL134
	.long	.LVL135
	.value	0x1
	.byte	0x50
	.long	.LVL137
	.long	.LVL138
	.value	0x1
	.byte	0x50
	.long	.LVL138
	.long	.LVL166
	.value	0x2
	.byte	0x75
	.sleb128 -56
	.long	0
	.long	0
.LLST47:
	.long	.LVL171
	.long	.LVL172
	.value	0x1
	.byte	0x50
	.long	.LVL172
	.long	.LVL178
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST48:
	.long	.LVL179
	.long	.LVL180
	.value	0x1
	.byte	0x50
	.long	.LVL180
	.long	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL180
	.long	.LVL184
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.long	.LVL184
	.long	.LVL185
	.value	0x8
	.byte	0x73
	.sleb128 -4
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST50:
	.long	.LVL180
	.long	.LVL181
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL180
	.long	.LVL181
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST52:
	.long	.LVL182
	.long	.LVL183
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL182
	.long	.LVL183
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST54:
	.long	.LVL182
	.long	.LVL183-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL183-1
	.long	.LVL183
	.value	0x2
	.byte	0x75
	.sleb128 -36
	.long	0
	.long	0
.LLST55:
	.long	.LVL195
	.long	.LVL197
	.value	0x1
	.byte	0x50
	.long	.LVL197
	.long	.LVL198-1
	.value	0x1
	.byte	0x52
	.long	.LVL198-1
	.long	.LVL201
	.value	0x1
	.byte	0x56
	.long	.LVL201
	.long	.LVL203
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST56:
	.long	.LVL190
	.long	.LVL191
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LVL192
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL192
	.long	.LVL193
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST57:
	.long	.LVL187
	.long	.LVL198
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL198
	.long	.LVL201
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL201
	.long	.LVL203
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST58:
	.long	.LVL189
	.long	.LVL194
	.value	0x5
	.byte	0x3
	.long	g_kv_mgr+4
	.long	0
	.long	0
.LLST59:
	.long	.LVL210
	.long	.LVL211
	.value	0x1
	.byte	0x50
	.long	.LVL211
	.long	.LVL227
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST60:
	.long	.LVL222
	.long	.LVL223
	.value	0x3
	.byte	0x9
	.byte	0xf5
	.byte	0x9f
	.long	.LVL223
	.long	.LVL225
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST61:
	.long	.LVL208
	.long	.LVL213
	.value	0x1
	.byte	0x53
	.long	.LVL213
	.long	.LVL214
	.value	0x1
	.byte	0x57
	.long	.LVL214
	.long	.LVL223
	.value	0x1
	.byte	0x53
	.long	.LVL223
	.long	.LVL228
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST62:
	.long	.LVL220
	.long	.LVL221
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL221
	.long	.LVL223
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL215
	.long	.LVL217
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL217
	.long	.LVL218
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL218
	.long	.LVL219-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL219-1
	.long	.LVL219
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST64:
	.long	.LVL215
	.long	.LVL217
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL217
	.long	.LVL218
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL218
	.long	.LVL219-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL219-1
	.long	.LVL219
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST65:
	.long	.LVL215
	.long	.LVL216
	.value	0x1
	.byte	0x50
	.long	.LVL216
	.long	.LVL219-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL219-1
	.long	.LVL219
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST66:
	.long	.LVL230
	.long	.LVL232
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST67:
	.long	.LVL231
	.long	.LVL242
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST68:
	.long	.LVL234
	.long	.LVL235-1
	.value	0x1
	.byte	0x50
	.long	.LVL235-1
	.long	.LVL236
	.value	0x1
	.byte	0x56
	.long	.LVL236
	.long	.LVL237-1
	.value	0x1
	.byte	0x50
	.long	.LVL237-1
	.long	.LVL242
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST69:
	.long	.LVL238
	.long	.LVL239
	.value	0x1
	.byte	0x50
	.long	.LVL239
	.long	.LVL242
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST70:
	.long	.LVL243
	.long	.LVL244
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST71:
	.long	.LVL246
	.long	.LVL248
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST72:
	.long	.LVL247
	.long	.LVL264
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST73:
	.long	.LVL247
	.long	.LVL264
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST74:
	.long	.LVL247
	.long	.LVL264
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST75:
	.long	.LVL247
	.long	.LVL264
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST76:
	.long	.LVL250
	.long	.LVL252
	.value	0x1
	.byte	0x50
	.long	.LVL252
	.long	.LVL260
	.value	0x1
	.byte	0x57
	.long	.LVL260
	.long	.LVL261
	.value	0x1
	.byte	0x50
	.long	.LVL261
	.long	.LVL264
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST77:
	.long	.LVL263
	.long	.LVL264
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST78:
	.long	.LVL251
	.long	.LVL258
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST79:
	.long	.LVL251
	.long	.LVL258
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST80:
	.long	.LVL251
	.long	.LVL258
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST81:
	.long	.LVL251
	.long	.LVL252
	.value	0x1
	.byte	0x50
	.long	.LVL252
	.long	.LVL258
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST82:
	.long	.LVL255
	.long	.LVL256
	.value	0x1
	.byte	0x50
	.long	.LVL256
	.long	.LVL258
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST83:
	.long	.LVL266
	.long	.LVL268
	.value	0x1
	.byte	0x50
	.long	.LVL268
	.long	.LVL269-1
	.value	0x1
	.byte	0x52
	.long	.LVL269-1
	.long	.LVL273
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST84:
	.long	.LVL267
	.long	.LVL275
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST85:
	.long	.LVL267
	.long	.LVL275
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST86:
	.long	.LVL267
	.long	.LVL270
	.value	0x1
	.byte	0x53
	.long	.LVL270
	.long	.LVL275
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST87:
	.long	.LVL270
	.long	.LVL271-1
	.value	0x1
	.byte	0x50
	.long	.LVL271-1
	.long	.LVL275
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST88:
	.long	.LVL277
	.long	.LVL279
	.value	0x1
	.byte	0x57
	.long	.LVL281
	.long	.LVL285
	.value	0x1
	.byte	0x57
	.long	.LVL287
	.long	.LVL288
	.value	0x1
	.byte	0x57
	.long	.LVL293
	.long	.LVL300
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST89:
	.long	.LVL298
	.long	.LVL299
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL299
	.long	.LVL300
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST90:
	.long	.LVL277
	.long	.LVL280
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL280
	.long	.LVL281
	.value	0x1
	.byte	0x50
	.long	.LVL281
	.long	.LVL285
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL287
	.long	.LVL290
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL290
	.long	.LVL291-1
	.value	0x1
	.byte	0x50
	.long	.LVL293
	.long	.LVL295
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL295
	.long	.LVL296
	.value	0x1
	.byte	0x50
	.long	.LVL296
	.long	.LVL300
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST91:
	.long	.LVL277
	.long	.LVL284
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL284
	.long	.LVL285
	.value	0x1
	.byte	0x50
	.long	.LVL287
	.long	.LVL289
	.value	0x1
	.byte	0x50
	.long	.LVL289
	.long	.LVL293
	.value	0x1
	.byte	0x56
	.long	.LVL293
	.long	.LVL300
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST92:
	.long	.LVL334
	.long	.LVL335
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL335
	.long	.LVL336-1
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	0
	.long	0
.LLST93:
	.long	.LVL302
	.long	.LVL303-1
	.value	0x1
	.byte	0x50
	.long	.LVL303-1
	.long	.LVL305
	.value	0x1
	.byte	0x53
	.long	.LVL332
	.long	.LVL333
	.value	0x1
	.byte	0x50
	.long	.LVL337
	.long	.LVL338
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST94:
	.long	.LVL311
	.long	.LVL312
	.value	0x1
	.byte	0x50
	.long	.LVL316
	.long	.LVL317
	.value	0x1
	.byte	0x50
	.long	.LVL318
	.long	.LVL320
	.value	0x1
	.byte	0x50
	.long	.LVL321
	.long	.LVL322
	.value	0x1
	.byte	0x50
	.long	.LVL330
	.long	.LVL331
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST95:
	.long	.LVL303
	.long	.LVL305
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL306
	.long	.LVL314
	.value	0x1
	.byte	0x53
	.long	.LVL314
	.long	.LVL319
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1e
	.byte	0x9f
	.long	.LVL319
	.long	.LVL320
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1f
	.byte	0x9f
	.long	.LVL320
	.long	.LVL330
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST96:
	.long	.LVL304
	.long	.LVL305
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL306
	.long	.LVL307
	.value	0x1
	.byte	0x50
	.long	.LVL307
	.long	.LVL312
	.value	0x1
	.byte	0x56
	.long	.LVL312
	.long	.LVL313
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL313
	.long	.LVL314
	.value	0x7
	.byte	0x75
	.sleb128 -41
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL315
	.long	.LVL320
	.value	0x1
	.byte	0x53
	.long	.LVL322
	.long	.LVL324
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL324
	.long	.LVL326
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL328
	.long	.LVL329
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST97:
	.long	.LVL323
	.long	.LVL324
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL325
	.long	.LVL326
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL328
	.long	.LVL329
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xbc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LBB14
	.long	.LBE14
	.long	.LBB17
	.long	.LBE17
	.long	0
	.long	0
	.long	.LBB20
	.long	.LBE20
	.long	.LBB24
	.long	.LBE24
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LBB30
	.long	.LBE30
	.long	.LBB34
	.long	.LBE34
	.long	.LBB35
	.long	.LBE35
	.long	0
	.long	0
	.long	.LBB36
	.long	.LBE36
	.long	.LBB39
	.long	.LBE39
	.long	0
	.long	0
	.long	.LBB62
	.long	.LBE62
	.long	.LBB66
	.long	.LBE66
	.long	.LBB67
	.long	.LBE67
	.long	0
	.long	0
	.long	.LFB16
	.long	.LFE16
	.long	.LFB21
	.long	.LFE21
	.long	.LFB17
	.long	.LFE17
	.long	.LFB27
	.long	.LFE27
	.long	.LFB38
	.long	.LFE38
	.long	.LFB20
	.long	.LFE20
	.long	.LFB31
	.long	.LFE31
	.long	.LFB22
	.long	.LFE22
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB25
	.long	.LFE25
	.long	.LFB26
	.long	.LFE26
	.long	.LFB23
	.long	.LFE23
	.long	.LFB34
	.long	.LFE34
	.long	.LFB28
	.long	.LFE28
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB41
	.long	.LFE41
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF151:
	.string	"ncmd"
.LASF136:
	.string	"handle_kv_cmd"
.LASF165:
	.string	"strcmp"
.LASF4:
	.string	"size_t"
.LASF105:
	.string	"utils_crc8"
.LASF49:
	.string	"TAG_DEV_BARO"
.LASF30:
	.string	"HAL_PARTITION_OTA_TEMP"
.LASF148:
	.string	"g_kv_mgr"
.LASF5:
	.string	"__uint8_t"
.LASF51:
	.string	"TAG_DEV_UV"
.LASF33:
	.string	"HAL_PARTITION_PARAMETER_2"
.LASF34:
	.string	"HAL_PARTITION_PARAMETER_3"
.LASF132:
	.string	"__item_gc_cb"
.LASF62:
	.string	"RES_ITEM_NOT_FOUND"
.LASF154:
	.string	"aos_malloc"
.LASF13:
	.string	"long long unsigned int"
.LASF40:
	.string	"HAL_PARTITION_MAX"
.LASF160:
	.string	"aos_mutex_lock"
.LASF92:
	.string	"kv_mgr_t"
.LASF144:
	.string	"next"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF64:
	.string	"RES_FLASH_WRITE_ERR"
.LASF101:
	.string	"buffer_len"
.LASF21:
	.string	"function"
.LASF82:
	.string	"block_info_t"
.LASF24:
	.string	"aos_sem_t"
.LASF164:
	.string	"aos_sem_wait"
.LASF145:
	.string	"unclean"
.LASF69:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF20:
	.string	"help"
.LASF88:
	.string	"write_pos"
.LASF153:
	.string	"hal_flash_read"
.LASF52:
	.string	"TAG_DEV_HUMI"
.LASF119:
	.string	"kv_state_set"
.LASF59:
	.string	"RES_NO_SPACE"
.LASF75:
	.string	"origin_off"
.LASF113:
	.string	"kv_item_calc_pos"
.LASF7:
	.string	"short int"
.LASF17:
	.string	"uint16_t"
.LASF23:
	.string	"aos_mutex_t"
.LASF90:
	.string	"kv_mutex"
.LASF77:
	.string	"_kv_item_t"
.LASF32:
	.string	"HAL_PARTITION_PARAMETER_1"
.LASF27:
	.string	"HAL_PARTITION_BOOTLOADER"
.LASF168:
	.string	"aos_sem_new"
.LASF35:
	.string	"HAL_PARTITION_PARAMETER_4"
.LASF123:
	.string	"kv_item_del"
.LASF84:
	.string	"kv_initialize"
.LASF173:
	.string	"/home/stone/Documents/pca"
.LASF73:
	.string	"key_len"
.LASF74:
	.string	"val_len"
.LASF11:
	.string	"__uint32_t"
.LASF42:
	.string	"hal_partition_t"
.LASF147:
	.string	"aos_kv_deinit"
.LASF111:
	.string	"p_val"
.LASF129:
	.string	"gc_index"
.LASF163:
	.string	"aos_task_exit"
.LASF70:
	.string	"reserved"
.LASF108:
	.string	"__item_find_cb"
.LASF60:
	.string	"RES_INVALID_PARAM"
.LASF94:
	.string	"kv_storeage_t"
.LASF176:
	.string	"aos_log_level"
.LASF96:
	.string	"aos_kv_del"
.LASF45:
	.string	"TAG_DEV_MAG"
.LASF0:
	.string	"unsigned int"
.LASF175:
	.string	"aos_kv_init"
.LASF54:
	.string	"TAG_DEV_HR"
.LASF12:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF114:
	.string	"blk_info"
.LASF93:
	.string	"item_func"
.LASF103:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF81:
	.string	"space"
.LASF78:
	.string	"store"
.LASF55:
	.string	"TAG_DEV_GPS"
.LASF36:
	.string	"HAL_PARTITION_BT_FIRMWARE"
.LASF169:
	.string	"aos_sem_free"
.LASF83:
	.string	"_kv_mgr_t"
.LASF95:
	.string	"item"
.LASF159:
	.string	"hal_flash_erase"
.LASF158:
	.string	"hal_flash_write"
.LASF67:
	.string	"_block_header_t"
.LASF58:
	.string	"RES_CONT"
.LASF157:
	.string	"aos_task_new"
.LASF170:
	.string	"aos_mutex_free"
.LASF66:
	.string	"cli_command"
.LASF14:
	.string	"sizetype"
.LASF71:
	.string	"block_hdr_t"
.LASF41:
	.string	"HAL_PARTITION_NONE"
.LASF57:
	.string	"RES_OK"
.LASF85:
	.string	"gc_triggered"
.LASF22:
	.string	"aos_hdl_t"
.LASF167:
	.string	"aos_cli_register_command"
.LASF152:
	.string	"aos_free"
.LASF110:
	.string	"p_key"
.LASF131:
	.string	"origin_pos"
.LASF161:
	.string	"aos_mutex_unlock"
.LASF43:
	.string	"float"
.LASF80:
	.string	"_block_info_t"
.LASF107:
	.string	"nbytes"
.LASF86:
	.string	"gc_waiter"
.LASF98:
	.string	"sync"
.LASF63:
	.string	"RES_FLASH_READ_ERR"
.LASF134:
	.string	"kv_item_update"
.LASF137:
	.string	"pwbuf"
.LASF117:
	.string	"kv_item_store"
.LASF128:
	.string	"kv_block_format"
.LASF149:
	.string	"BLK_MAGIC_NUM"
.LASF25:
	.string	"_Bool"
.LASF61:
	.string	"RES_MALLOC_FAILED"
.LASF6:
	.string	"unsigned char"
.LASF31:
	.string	"HAL_PARTITION_RF_FIRMWARE"
.LASF122:
	.string	"kv_item_get"
.LASF174:
	.string	"trigger_gc"
.LASF138:
	.string	"blen"
.LASF72:
	.string	"_item_header_t"
.LASF68:
	.string	"magic"
.LASF47:
	.string	"TAG_DEV_ALS"
.LASF53:
	.string	"TAG_DEV_HALL"
.LASF141:
	.string	"rtype"
.LASF150:
	.string	"ITEM_MAGIC_NUM"
.LASF26:
	.string	"HAL_PARTITION_ERROR"
.LASF133:
	.string	"exit"
.LASF79:
	.string	"kv_item_t"
.LASF177:
	.string	"__stack_chk_fail"
.LASF127:
	.string	"__item_recovery_cb"
.LASF37:
	.string	"HAL_PARTITION_SPIFFS"
.LASF126:
	.string	"new_key"
.LASF171:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF162:
	.string	"aos_sem_signal_all"
.LASF172:
	.string	"src/kvmgr.c"
.LASF29:
	.string	"HAL_PARTITION_ATE"
.LASF44:
	.string	"TAG_DEV_ACC"
.LASF2:
	.string	"long double"
.LASF89:
	.string	"gc_sem"
.LASF46:
	.string	"TAG_DEV_GYRO"
.LASF15:
	.string	"char"
.LASF121:
	.string	"func"
.LASF124:
	.string	"mode"
.LASF156:
	.string	"aos_cli_printf"
.LASF8:
	.string	"__uint16_t"
.LASF118:
	.string	"index"
.LASF99:
	.string	"aos_kv_get"
.LASF50:
	.string	"TAG_DEV_TEMP"
.LASF100:
	.string	"buffer"
.LASF130:
	.string	"gc_copy"
.LASF106:
	.string	"raw_read"
.LASF155:
	.string	"memcmp"
.LASF102:
	.string	"offset"
.LASF65:
	.string	"RES_FLASH_EARSE_ERR"
.LASF28:
	.string	"HAL_PARTITION_APPLICATION"
.LASF146:
	.string	"aos_kv_gc"
.LASF104:
	.string	"length"
.LASF87:
	.string	"clean_blk_nums"
.LASF125:
	.string	"origin_key"
.LASF48:
	.string	"TAG_DEV_PS"
.LASF18:
	.string	"uint32_t"
.LASF142:
	.string	"kv_init"
.LASF16:
	.string	"uint8_t"
.LASF143:
	.string	"nums"
.LASF76:
	.string	"item_hdr_t"
.LASF120:
	.string	"kv_item_traverse"
.LASF91:
	.string	"block_info"
.LASF166:
	.string	"aos_mutex_new"
.LASF135:
	.string	"kv_item_free"
.LASF139:
	.string	"argc"
.LASF112:
	.string	"raw_erase"
.LASF116:
	.string	"raw_write"
.LASF56:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF115:
	.string	"blk_index"
.LASF38:
	.string	"HAL_PARTITION_CUSTOM_1"
.LASF39:
	.string	"HAL_PARTITION_CUSTOM_2"
.LASF109:
	.string	"__item_print_cb"
.LASF140:
	.string	"argv"
.LASF97:
	.string	"aos_kv_set"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
