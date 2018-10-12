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
.LFB22:
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
.LFE22:
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
.LFB27:
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
.LFE27:
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
.LFB23:
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
.LFE23:
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
.LFB33:
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
.LFE33:
	.size	__item_find_cb, .-__item_find_cb
	.section	.text.unlikely.__item_find_cb
.LCOLDE3:
	.section	.text.__item_find_cb
.LHOTE3:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC4:
	.string	"kv-gc"
	.section	.text.unlikely.trigger_gc,"ax",@progbits
.LCOLDB5:
	.section	.text.trigger_gc,"ax",@progbits
.LHOTB5:
	.type	trigger_gc, @function
trigger_gc:
.LFB26:
	.loc 1 140 0
	.cfi_startproc
	.loc 1 141 0
	cmpb	$0, g_kv_mgr+1
	jne	.L38
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
	pushl	$.LC4
	.loc 1 146 0
	movb	$1, g_kv_mgr+1
	.loc 1 147 0
	call	aos_task_new
.LVL28:
	addl	$16, %esp
.LBE5:
.LBE4:
	.loc 1 148 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L38:
	ret
	.cfi_endproc
.LFE26:
	.size	trigger_gc, .-trigger_gc
	.section	.text.unlikely.trigger_gc
.LCOLDE5:
	.section	.text.trigger_gc
.LHOTE5:
	.section	.text.unlikely.kv_item_store,"ax",@progbits
.LCOLDB6:
	.section	.text.kv_item_store,"ax",@progbits
.LHOTB6:
	.type	kv_item_store, @function
kv_item_store:
.LFB37:
	.loc 1 465 0
	.cfi_startproc
.LVL29:
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
.LVL30:
	movl	%ecx, -52(%ebp)
	movl	%edx, -64(%ebp)
	.loc 1 474 0
	orl	$-1, %ecx
.LVL31:
	movl	%esi, %eax
	.loc 1 476 0
	movzwl	-52(%ebp), %edx
.LVL32:
	.loc 1 474 0
	repnz scasb
.LVL33:
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
.LVL34:
	.loc 1 479 0
	movzwl	%ax, %eax
.LVL35:
	pushl	%eax
	movl	%eax, -48(%ebp)
	call	aos_malloc
.LVL36:
	movl	%eax, %ebx
.LVL37:
	.loc 1 480 0
	addl	$16, %esp
	movl	$-12, %eax
.LVL38:
	testl	%ebx, %ebx
	je	.L40
	.loc 1 484 0
	movl	-48(%ebp), %ecx
	movl	%esi, %eax
	movl	%ebx, %edi
	.loc 1 485 0
	leal	8(%ebx), %edx
.LVL39:
	.loc 1 486 0
	movl	-56(%ebp), %esi
	.loc 1 484 0
	rep stosb
	.loc 1 486 0
	movl	%edx, %edi
	movl	-60(%ebp), %ecx
	.loc 1 490 0
	movzwl	-44(%ebp), %edx
.LVL40:
	.loc 1 486 0
	rep movsb
.LVL41:
	.loc 1 488 0
	movzwl	-52(%ebp), %ecx
	movl	-64(%ebp), %esi
	.loc 1 486 0
	movl	%edi, %eax
.LVL42:
	.loc 1 490 0
	subl	-60(%ebp), %eax
.LVL43:
	.loc 1 488 0
	rep movsb
.LVL44:
	.loc 1 490 0
	call	utils_crc8
.LVL45:
	movzbl	%al, %eax
	sall	$16, %eax
	orl	-68(%ebp), %eax
	.loc 1 491 0
	movl	%eax, (%ebx)
	movl	-72(%ebp), %eax
	movl	%eax, 4(%ebx)
.LVL46:
.LBB10:
.LBB11:
	.loc 1 197 0
	movl	g_kv_mgr+4, %eax
	shrw	$12, %ax
.LVL47:
	movzwl	%ax, %eax
	movzwl	g_kv_mgr+16(,%eax,4), %eax
.LVL48:
	cmpw	%ax, -42(%ebp)
	jnb	.L41
	.loc 1 198 0
	subl	-48(%ebp), %eax
	cmpl	$647, %eax
	jg	.L42
	cmpb	$1, g_kv_mgr+3
	ja	.L42
	.loc 1 199 0
	call	trigger_gc
.LVL49:
.L42:
	.loc 1 201 0
	movl	g_kv_mgr+4, %esi
.LVL50:
.LBE11:
.LBE10:
	.loc 1 494 0
	testw	%si, %si
	je	.L50
	jmp	.L43
.LVL51:
.L41:
.LBB13:
.LBB12:
	.loc 1 225 0
	call	trigger_gc
.LVL52:
.L50:
.LBE12:
.LBE13:
	.loc 1 502 0
	movl	$-28, %edi
	jmp	.L44
.L43:
	movzwl	%si, %eax
.LBB14:
.LBB15:
	.loc 1 131 0
	pushl	-48(%ebp)
	pushl	%ebx
	movl	%eax, -32(%ebp)
.LVL53:
	leal	-32(%ebp), %eax
.LVL54:
	pushl	%eax
.LVL55:
	pushl	$6
.LVL56:
	call	hal_flash_write
.LVL57:
.LBE15:
.LBE14:
	.loc 1 496 0
	addl	$16, %esp
	testl	%eax, %eax
.LBB17:
.LBB16:
	.loc 1 131 0
	movl	%eax, %edi
.LVL58:
.LBE16:
.LBE17:
	.loc 1 496 0
	jne	.L44
	.loc 1 497 0
	addw	-42(%ebp), %si
	.loc 1 499 0
	movw	-42(%ebp), %ax
	.loc 1 497 0
	movw	%si, g_kv_mgr+4
.LVL59:
	.loc 1 499 0
	shrw	$12, %si
.LVL60:
	movzwl	%si, %esi
	subw	%ax, g_kv_mgr+16(,%esi,4)
.LVL61:
.L44:
	.loc 1 506 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_free
.LVL62:
	addl	$16, %esp
	movl	%edi, %eax
.LVL63:
.L40:
	.loc 1 509 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
.LVL64:
	je	.L46
	call	__stack_chk_fail
.LVL65:
.L46:
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
.LFE37:
	.size	kv_item_store, .-kv_item_store
	.section	.text.unlikely.kv_item_store
.LCOLDE6:
	.section	.text.kv_item_store
.LHOTE6:
	.section	.text.unlikely.kv_state_set,"ax",@progbits
.LCOLDB7:
	.section	.text.kv_state_set,"ax",@progbits
.LHOTB7:
	.type	kv_state_set, @function
kv_state_set:
.LFB28:
	.loc 1 161 0
	.cfi_startproc
.LVL66:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movzwl	%ax, %eax
	incl	%eax
.LVL67:
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$40, %esp
	movl	%eax, -16(%ebp)
.LVL68:
.LBB20:
.LBB21:
	.loc 1 131 0
	leal	-28(%ebp), %eax
.LVL69:
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
.LVL70:
.LBE22:
.LBE24:
	.loc 1 161 0
	movb	%dl, -28(%ebp)
.LBB25:
.LBB23:
	.loc 1 131 0
	pushl	%eax
.LVL71:
	pushl	$6
.LVL72:
	call	hal_flash_write
.LVL73:
.LBE23:
.LBE25:
	.loc 1 163 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L52
	call	__stack_chk_fail
.LVL74:
.L52:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL75:
	ret
	.cfi_endproc
.LFE28:
	.size	kv_state_set, .-kv_state_set
	.section	.text.unlikely.kv_state_set
.LCOLDE7:
	.section	.text.kv_state_set
.LHOTE7:
	.section	.text.unlikely.kv_item_traverse,"ax",@progbits
.LCOLDB8:
	.section	.text.kv_item_traverse,"ax",@progbits
.LHOTB8:
	.type	kv_item_traverse, @function
kv_item_traverse:
.LFB35:
	.loc 1 375 0
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
	subl	$44, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 375 0
	movl	%edx, -32(%ebp)
	movl	%eax, -44(%ebp)
	.loc 1 378 0
	movl	-32(%ebp), %eax
.LVL77:
	.loc 1 375 0
	movl	%ecx, -48(%ebp)
	.loc 1 378 0
	sall	$12, %eax
	.loc 1 379 0
	leal	4096(%eax), %ecx
.LVL78:
	.loc 1 378 0
	leal	4(%eax), %esi
.LVL79:
	.loc 1 409 0
	movzwl	%ax, %eax
	movl	%eax, -40(%ebp)
	.loc 1 379 0
	movw	%cx, -26(%ebp)
.LVL80:
	.loc 1 408 0
	movzbl	-32(%ebp), %ecx
.LVL81:
	movl	%ecx, -36(%ebp)
.LVL82:
.L68:
	.loc 1 384 0
	subl	$12, %esp
	pushl	$16
	call	aos_malloc
.LVL83:
	.loc 1 385 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 384 0
	movl	%eax, %ebx
.LVL84:
	.loc 1 385 0
	je	.L78
	.loc 1 388 0
	xorl	%eax, %eax
.LVL85:
	movl	$4, %ecx
	movl	%ebx, %edi
	rep stosl
.LVL86:
	.loc 1 391 0
	movl	%ebx, %edx
	movzwl	%si, %eax
	movl	$8, %ecx
	call	raw_read
.LVL87:
	testl	%eax, %eax
	jne	.L79
	.loc 1 396 0
	movb	(%ebx), %al
	cmpb	$73, %al
	je	.L57
	.loc 1 397 0
	incb	%al
	jne	.L58
	.loc 1 397 0 is_stmt 0 discriminator 1
	cmpb	$-1, 1(%ebx)
	jne	.L58
	.loc 1 398 0 is_stmt 1
	movl	%ebx, %eax
	call	kv_item_free
.LVL88:
	.loc 1 399 0
	jmp	.L59
.L58:
	.loc 1 401 0
	movw	$-1, 4(%ebx)
.L57:
	.loc 1 404 0
	movw	4(%ebx), %ax
	cmpw	$512, %ax
	ja	.L60
	.loc 1 404 0 is_stmt 0 discriminator 1
	movzbl	3(%ebx), %edx
	.loc 1 405 0 is_stmt 1 discriminator 1
	movb	%dl, %cl
	decb	%cl
	js	.L60
	testw	%ax, %ax
	jne	.L61
.L60:
	.loc 1 407 0
	movl	%ebx, %eax
	.loc 1 406 0
	addl	$8, %esi
.LVL89:
	.loc 1 407 0
	call	kv_item_free
.LVL90:
	.loc 1 408 0
	movl	-36(%ebp), %eax
	leal	4(%eax), %ebx
.LVL91:
	cmpb	$-52, g_kv_mgr+2(,%ebx,4)
	jne	.L63
	.loc 1 409 0
	movl	-40(%ebp), %eax
	movl	$68, %edx
	call	kv_state_set
.LVL92:
	.loc 1 410 0
	movb	$68, g_kv_mgr+2(,%ebx,4)
	jmp	.L63
.LVL93:
.L61:
	.loc 1 415 0
	addl	%edx, %eax
	leal	11(%eax), %edi
	andl	$-4, %edi
	.loc 1 417 0
	cmpb	$-18, 1(%ebx)
	.loc 1 415 0
	movw	%di, -28(%ebp)
.LVL94:
	.loc 1 417 0
	jne	.L64
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
.LVL95:
	.loc 1 421 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L71
	.loc 1 423 0
	cmpl	$-11, %eax
	je	.L66
.LVL96:
.L79:
	.loc 1 424 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL97:
	jmp	.L78
.LVL98:
.L64:
	.loc 1 428 0
	movl	-36(%ebp), %eax
	leal	4(%eax), %edi
.LVL99:
	cmpb	$-52, g_kv_mgr+2(,%edi,4)
	jne	.L66
	.loc 1 429 0
	movl	-40(%ebp), %eax
	movl	$68, %edx
	call	kv_state_set
.LVL100:
	.loc 1 430 0
	movb	$68, g_kv_mgr+2(,%edi,4)
.L66:
	.loc 1 434 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL101:
	.loc 1 435 0
	addl	-28(%ebp), %esi
.LVL102:
.L63:
	.loc 1 436 0
	movzwl	-26(%ebp), %edx
	movzwl	%si, %eax
	addl	$8, %eax
	cmpl	%eax, %edx
	jg	.L68
.L59:
	.loc 1 438 0
	movw	-26(%ebp), %dx
	movzbl	-32(%ebp), %eax
	movl	$8, %ecx
	subl	%esi, %edx
	cmpw	-26(%ebp), %si
	cmovnb	%ecx, %edx
	movw	%dx, g_kv_mgr+16(,%eax,4)
.L78:
	.loc 1 439 0
	xorl	%eax, %eax
	jmp	.L55
.LVL103:
.L71:
	.loc 1 384 0
	movl	%ebx, %eax
.LVL104:
.L55:
	.loc 1 440 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL105:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.LVL106:
	ret
	.cfi_endproc
.LFE35:
	.size	kv_item_traverse, .-kv_item_traverse
	.section	.text.unlikely.kv_item_traverse
.LCOLDE8:
	.section	.text.kv_item_traverse
.LHOTE8:
	.section	.text.unlikely.kv_item_get,"ax",@progbits
.LCOLDB9:
	.section	.text.kv_item_get,"ax",@progbits
.LHOTB9:
	.type	kv_item_get, @function
kv_item_get:
.LFB36:
	.loc 1 443 0
	.cfi_startproc
.LVL107:
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
	je	.L81
	.loc 1 449 0
	movl	%eax, %ecx
	xorl	%edx, %edx
	movl	$__item_find_cb, %eax
.LVL108:
	call	kv_item_traverse
.LVL109:
	.loc 1 450 0
	testl	%eax, %eax
	jne	.L84
.LVL110:
.L81:
	.loc 1 448 0
	cmpb	$-18, g_kv_mgr+22
	jne	.L83
.L85:
.LVL111:
	.loc 1 456 0
	xorl	%eax, %eax
	jmp	.L84
.LVL112:
.L83:
	.loc 1 449 0
	movl	%ebx, %ecx
	movl	$1, %edx
	movl	$__item_find_cb, %eax
	call	kv_item_traverse
.LVL113:
	.loc 1 450 0
	testl	%eax, %eax
	je	.L85
.LVL114:
.L84:
	.loc 1 457 0
	popl	%edx
	popl	%ebx
	.cfi_restore 3
.LVL115:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	kv_item_get, .-kv_item_get
	.section	.text.unlikely.kv_item_get
.LCOLDE9:
	.section	.text.kv_item_get
.LHOTE9:
	.section	.text.unlikely.kv_item_del,"ax",@progbits
.LCOLDB10:
	.section	.text.kv_item_del,"ax",@progbits
.LHOTB10:
	.type	kv_item_del, @function
kv_item_del:
.LFB31:
	.loc 1 230 0
	.cfi_startproc
.LVL116:
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
.LVL117:
	.loc 1 238 0
	testl	%edx, %edx
	jne	.L91
	.loc 1 239 0
	movl	-60(%ebp), %eax
	movw	14(%eax), %ax
	movw	%ax, -56(%ebp)
.LVL118:
	jmp	.L92
.LVL119:
.L91:
	.loc 1 240 0
	decl	%edx
.LVL120:
	.loc 1 274 0
	movl	$-22, %ebx
	.loc 1 240 0
	jne	.L93
	.loc 1 241 0
	movl	-60(%ebp), %eax
	.loc 1 242 0
	leal	-36(%ebp), %edx
	movl	$2, %ecx
	movl	%edx, %edi
	.loc 1 241 0
	movw	6(%eax), %ax
	movw	%ax, -56(%ebp)
.LVL121:
	.loc 1 242 0
	xorl	%eax, %eax
.LVL122:
	rep stosl
	.loc 1 243 0
	movzwl	-56(%ebp), %eax
	movl	$8, %ecx
	movl	%eax, -64(%ebp)
	call	raw_read
.LVL123:
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L100
	.loc 1 247 0
	cmpb	$73, -36(%ebp)
	je	.L94
.LVL124:
.L95:
	.loc 1 250 0
	xorl	%ebx, %ebx
	jmp	.L93
.LVL125:
.L94:
	.loc 1 247 0 discriminator 1
	cmpb	$-18, -35(%ebp)
	jne	.L95
	.loc 1 248 0
	movl	-60(%ebp), %edi
	.loc 1 249 0
	movzbl	-33(%ebp), %eax
	.loc 1 248 0
	cmpb	3(%edi), %al
	jne	.L95
	.loc 1 253 0
	subl	$12, %esp
	pushl	%eax
	call	aos_malloc
.LVL126:
	.loc 1 254 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 253 0
	movl	%eax, %esi
.LVL127:
	.loc 1 254 0
	je	.L101
	.loc 1 257 0
	movzbl	-33(%ebp), %eax
.LVL128:
	subl	$12, %esp
	pushl	%eax
	call	aos_malloc
.LVL129:
	.loc 1 258 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 257 0
	movl	%eax, %edi
.LVL130:
	.loc 1 258 0
	jne	.L96
	.loc 1 259 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL131:
	.loc 1 260 0
	addl	$16, %esp
	jmp	.L101
.LVL132:
.L96:
	.loc 1 263 0
	movzbl	-33(%ebp), %ecx
	movl	-64(%ebp), %eax
.LVL133:
	movl	%esi, %edx
	addl	$8, %eax
	call	raw_read
.LVL134:
	.loc 1 264 0
	movl	-60(%ebp), %eax
	movzbl	-33(%ebp), %ecx
	movl	%edi, %edx
	movzwl	14(%eax), %eax
	addl	$8, %eax
	call	raw_read
.LVL135:
	.loc 1 265 0
	pushl	%eax
	movzbl	-33(%ebp), %eax
	pushl	%eax
	pushl	%edi
	pushl	%esi
	call	memcmp
.LVL136:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L97
	.loc 1 266 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL137:
	.loc 1 267 0
	movl	%edi, (%esp)
	call	aos_free
.LVL138:
	.loc 1 268 0
	addl	$16, %esp
	jmp	.L93
.L97:
	.loc 1 271 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL139:
	.loc 1 272 0
	movl	%edi, (%esp)
	call	aos_free
.LVL140:
	addl	$16, %esp
.LVL141:
.L92:
	.loc 1 277 0
	movzwl	-56(%ebp), %eax
	xorl	%edx, %edx
	call	kv_state_set
.LVL142:
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL143:
	jne	.L93
.LVL144:
	.loc 1 282 0
	movl	-56(%ebp), %esi
	shrw	$12, %si
	movzwl	%si, %esi
	addl	$4, %esi
	cmpb	$-52, g_kv_mgr+2(,%esi,4)
	jne	.L95
	.loc 1 283 0
	movl	-56(%ebp), %eax
.LVL145:
	movl	$68, %edx
	andl	$61440, %eax
	call	kv_state_set
.LVL146:
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL147:
	jne	.L93
	.loc 1 286 0
	movb	$68, g_kv_mgr+2(,%esi,4)
	jmp	.L93
.LVL148:
.L100:
	.loc 1 244 0
	movl	$-5, %ebx
	jmp	.L93
.LVL149:
.L101:
	.loc 1 255 0
	movl	$-12, %ebx
.LVL150:
.L93:
	.loc 1 290 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%ebx, %eax
	je	.L98
	call	__stack_chk_fail
.LVL151:
.L98:
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
.LVL152:
	ret
	.cfi_endproc
.LFE31:
	.size	kv_item_del, .-kv_item_del
	.section	.text.unlikely.kv_item_del
.LCOLDE10:
	.section	.text.kv_item_del
.LHOTE10:
	.section	.text.unlikely.__item_recovery_cb,"ax",@progbits
.LCOLDB11:
	.section	.text.__item_recovery_cb,"ax",@progbits
.LHOTB11:
	.type	__item_recovery_cb, @function
__item_recovery_cb:
.LFB32:
	.loc 1 296 0
	.cfi_startproc
.LVL153:
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
.LVL154:
	movl	%eax, %esi
.LVL155:
	.loc 1 298 0
	addl	$16, %esp
	.loc 1 299 0
	movl	$-12, %eax
.LVL156:
	.loc 1 298 0
	testl	%esi, %esi
	je	.L106
	.loc 1 302 0
	movzwl	14(%ebx), %eax
	movzwl	12(%ebx), %ecx
	movl	%esi, %edx
	addl	$8, %eax
	call	raw_read
.LVL157:
	testl	%eax, %eax
	je	.L107
	.loc 1 303 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL158:
	.loc 1 304 0
	addl	$16, %esp
	movl	$-5, %eax
	jmp	.L106
.L107:
	.loc 1 307 0
	movzwl	12(%ebx), %edx
	movl	%esi, %eax
	call	utils_crc8
.LVL159:
	.loc 1 312 0
	xorl	%edx, %edx
	.loc 1 307 0
	cmpb	%al, 2(%ebx)
	jne	.L115
	.loc 1 308 0
	movw	6(%ebx), %ax
	testw	%ax, %ax
	je	.L109
	.loc 1 308 0 is_stmt 0 discriminator 1
	cmpw	14(%ebx), %ax
	.loc 1 309 0 is_stmt 1 discriminator 1
	movl	$1, %edx
	.loc 1 308 0 discriminator 1
	je	.L109
.L115:
	.loc 1 312 0
	movl	%ebx, %eax
	call	kv_item_del
.LVL160:
.L109:
	.loc 1 315 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL161:
	.loc 1 316 0
	addl	$16, %esp
	movl	$-11, %eax
.L106:
	.loc 1 317 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL162:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	__item_recovery_cb, .-__item_recovery_cb
	.section	.text.unlikely.__item_recovery_cb
.LCOLDE11:
	.section	.text.__item_recovery_cb
.LHOTE11:
	.section	.text.unlikely.kv_block_format,"ax",@progbits
.LCOLDB12:
	.section	.text.kv_block_format,"ax",@progbits
.LHOTB12:
	.type	kv_block_format, @function
kv_block_format:
.LFB29:
	.loc 1 166 0
	.cfi_startproc
.LVL163:
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
.LVL164:
.LBB35:
.LBB33:
	.loc 1 136 0
	call	hal_flash_erase
.LVL165:
.LBE33:
.LBE35:
	.loc 1 172 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L117
.L119:
	.loc 1 175 0
	movl	$-5, %eax
	jmp	.L118
.L117:
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
.LVL166:
.LBB39:
.LBB38:
	.loc 1 131 0
	pushl	%edi
	pushl	%eax
	pushl	$6
	call	hal_flash_write
.LVL167:
.LBE38:
.LBE39:
	.loc 1 178 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L119
	.loc 1 184 0
	incb	g_kv_mgr+3
	.loc 1 182 0
	movzbl	%bl, %ebx
	addl	$4, %ebx
.LVL168:
	movb	$-18, g_kv_mgr+2(,%ebx,4)
	.loc 1 183 0
	movw	$4092, g_kv_mgr(,%ebx,4)
.LVL169:
.L118:
	.loc 1 186 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L120
	call	__stack_chk_fail
.LVL170:
.L120:
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
.LFE29:
	.size	kv_block_format, .-kv_block_format
	.section	.text.unlikely.kv_block_format
.LCOLDE12:
	.section	.text.kv_block_format
.LHOTE12:
	.section	.text.unlikely.aos_kv_gc,"ax",@progbits
.LCOLDB13:
	.section	.text.aos_kv_gc,"ax",@progbits
.LHOTB13:
	.globl	aos_kv_gc
	.type	aos_kv_gc, @function
aos_kv_gc:
.LFB40:
	.loc 1 611 0
	.cfi_startproc
.LVL171:
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
.LVL172:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L127
.LVL173:
	.loc 1 622 0
	cmpb	$0, g_kv_mgr+3
	je	.L127
.LVL174:
	.loc 1 627 0 discriminator 1
	cmpb	$-18, g_kv_mgr+18
	je	.L131
.LVL175:
	.loc 1 627 0 is_stmt 0
	cmpb	$-18, g_kv_mgr+22
	.loc 1 626 0 is_stmt 1
	movl	$1, %ebx
	.loc 1 627 0
	jne	.L127
	jmp	.L124
.LVL176:
.L131:
	xorl	%ebx, %ebx
.LVL177:
.L124:
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
.LVL178:
	.loc 1 637 0
	shrw	$12, %cx
	leal	1(%ecx), %eax
.LVL179:
.L129:
	.loc 1 640 0
	cmpb	$2, %al
	cmove	%edi, %eax
.LVL180:
	.loc 1 643 0
	movzbl	%al, %esi
	cmpb	$68, g_kv_mgr+18(,%esi,4)
	jne	.L126
	.loc 1 644 0
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	$__item_gc_cb, %eax
.LVL181:
	call	kv_item_traverse
.LVL182:
	.loc 1 647 0
	movl	%esi, %eax
	call	kv_block_format
.LVL183:
	testl	%eax, %eax
	jne	.L127
	.loc 1 651 0
	movl	g_kv_mgr+4, %eax
	movl	$204, %edx
	.loc 1 652 0
	addl	$4, %ebx
	.loc 1 651 0
	andl	$61440, %eax
	call	kv_state_set
.LVL184:
	.loc 1 652 0
	movb	$-52, g_kv_mgr+2(,%ebx,4)
	.loc 1 653 0
	decb	g_kv_mgr+3
	jmp	.L127
.LVL185:
.L126:
	.loc 1 656 0
	movzbl	%al, %esi
	cmpw	%si, %cx
	je	.L128
	.loc 1 659 0
	incl	%eax
.LVL186:
	.loc 1 660 0
	jmp	.L129
.L128:
	.loc 1 663 0
	movw	%dx, g_kv_mgr+4
.LVL187:
.L127:
	.loc 1 668 0
	subl	$12, %esp
	.loc 1 667 0
	movb	$0, g_kv_mgr+1
	.loc 1 668 0
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL188:
	.loc 1 669 0
	addl	$16, %esp
	cmpb	$0, g_kv_mgr+2
	je	.L130
	.loc 1 670 0
	subl	$12, %esp
	pushl	$g_kv_mgr+8
	call	aos_sem_signal_all
.LVL189:
	addl	$16, %esp
.L130:
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
.LVL190:
	.cfi_endproc
.LFE40:
	.size	aos_kv_gc, .-aos_kv_gc
	.section	.text.unlikely.aos_kv_gc
.LCOLDE13:
	.section	.text.aos_kv_gc
.LHOTE13:
	.section	.text.unlikely.__item_gc_cb,"ax",@progbits
.LCOLDB14:
	.section	.text.__item_gc_cb,"ax",@progbits
.LHOTB14:
	.type	__item_gc_cb, @function
__item_gc_cb:
.LFB34:
	.loc 1 342 0
	.cfi_startproc
.LVL191:
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
.LVL192:
	.loc 1 349 0
	movzwl	%bx, %edi
	pushl	%edi
	call	aos_malloc
.LVL193:
	movl	%eax, %esi
.LVL194:
	.loc 1 350 0
	addl	$16, %esp
	movl	$-12, %eax
.LVL195:
	testl	%esi, %esi
	je	.L134
	.loc 1 354 0
	movl	-44(%ebp), %edx
	movl	%edi, %ecx
	movzwl	14(%edx), %eax
	movl	%esi, %edx
	call	raw_read
.LVL196:
	testl	%eax, %eax
	je	.L135
.L137:
	.loc 1 355 0
	movl	$-5, %ebx
.LVL197:
	jmp	.L136
.LVL198:
.L135:
	movzwl	g_kv_mgr+4, %eax
.LBB42:
.LBB43:
	.loc 1 131 0
	pushl	%edi
	pushl	%esi
	movl	%eax, -32(%ebp)
.LVL199:
	leal	-32(%ebp), %eax
.LVL200:
	pushl	%eax
.LVL201:
	pushl	$6
.LVL202:
	call	hal_flash_write
.LVL203:
.LBE43:
.LBE42:
	.loc 1 359 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L137
	.loc 1 364 0
	movl	%ebx, %eax
	addl	g_kv_mgr+4, %eax
	movw	%ax, g_kv_mgr+4
.LVL204:
	.loc 1 366 0
	shrw	$12, %ax
.LVL205:
	movzwl	%ax, %eax
	subw	%bx, g_kv_mgr+16(,%eax,4)
.LVL206:
	.loc 1 367 0
	movl	$-11, %ebx
.LVL207:
.L136:
	.loc 1 370 0
	subl	$12, %esp
	pushl	%esi
	call	aos_free
.LVL208:
	.loc 1 371 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL209:
.L134:
	.loc 1 372 0
	movl	-28(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L138
	call	__stack_chk_fail
.LVL210:
.L138:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL211:
	popl	%edi
	.cfi_restore 7
.LVL212:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	__item_gc_cb, .-__item_gc_cb
	.section	.text.unlikely.__item_gc_cb
.LCOLDE14:
	.section	.text.__item_gc_cb
.LHOTE14:
	.section	.text.unlikely.aos_kv_del,"ax",@progbits
.LCOLDB15:
	.section	.text.aos_kv_del,"ax",@progbits
.LHOTB15:
	.globl	aos_kv_del
	.type	aos_kv_del, @function
aos_kv_del:
.LFB41:
	.loc 1 677 0
	.cfi_startproc
.LVL213:
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
.LVL214:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L143
	.loc 1 684 0
	movl	8(%ebp), %eax
.LVL215:
	call	kv_item_get
.LVL216:
	.loc 1 685 0
	testl	%eax, %eax
	.loc 1 684 0
	movl	%eax, %esi
.LVL217:
	.loc 1 685 0
	jne	.L144
	.loc 1 686 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL218:
	.loc 1 687 0
	addl	$16, %esp
	movl	$-2, %eax
	jmp	.L143
.LVL219:
.L144:
	.loc 1 690 0
	xorl	%edx, %edx
	call	kv_item_del
.LVL220:
	movl	%eax, %ebx
.LVL221:
	.loc 1 691 0
	movl	%esi, %eax
.LVL222:
	call	kv_item_free
.LVL223:
	.loc 1 692 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL224:
	.loc 1 693 0
	addl	$16, %esp
	movl	%ebx, %eax
.LVL225:
.L143:
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
.LFE41:
	.size	aos_kv_del, .-aos_kv_del
	.section	.text.unlikely.aos_kv_del
.LCOLDE15:
	.section	.text.aos_kv_del
.LHOTE15:
	.section	.text.unlikely.aos_kv_set,"ax",@progbits
.LCOLDB16:
	.section	.text.aos_kv_set,"ax",@progbits
.LHOTB16:
	.globl	aos_kv_set
	.type	aos_kv_set, @function
aos_kv_set:
.LFB42:
	.loc 1 697 0
	.cfi_startproc
.LVL226:
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
	movl	16(%ebp), %esi
	.loc 1 700 0
	sete	%dl
	testl	%esi, %esi
	setle	%al
	orb	%al, %dl
	jne	.L155
	cmpl	$0, 8(%ebp)
	sete	%al
	je	.L155
	.loc 1 700 0 is_stmt 0 discriminator 2
	movl	8(%ebp), %edi
	orl	$-1, %ecx
	repnz scasb
.LVL227:
	notl	%ecx
	decl	%ecx
	cmpl	$128, %ecx
	ja	.L155
	cmpl	$512, %esi
	jg	.L155
	.loc 1 704 0 is_stmt 1
	cmpb	$0, g_kv_mgr+1
	je	.L149
	.loc 1 706 0
	pushl	%ecx
	pushl	%ecx
	pushl	$-1
	pushl	$g_kv_mgr+8
	.loc 1 705 0
	incb	g_kv_mgr+2
	.loc 1 706 0
	call	aos_sem_wait
.LVL228:
	addl	$16, %esp
.L149:
	.loc 1 709 0
	pushl	%edx
	pushl	%edx
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL229:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL230:
	jne	.L148
	.loc 1 713 0
	movl	8(%ebp), %eax
.LVL231:
	call	kv_item_get
.LVL232:
	.loc 1 714 0
	testl	%eax, %eax
	.loc 1 713 0
	movl	%eax, %edi
.LVL233:
	.loc 1 714 0
	je	.L150
.LVL234:
.LBB46:
.LBB47:
	.loc 1 515 0
	movzwl	4(%eax), %eax
.LVL235:
	cmpl	%eax, %esi
	jne	.L151
	.loc 1 516 0
	pushl	%eax
	pushl	%esi
	pushl	12(%ebp)
	movzbl	3(%edi), %eax
	addl	8(%edi), %eax
	pushl	%eax
	call	memcmp
.LVL236:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L152
.L151:
	.loc 1 521 0
	movzwl	14(%edi), %eax
	subl	$12, %esp
	movl	12(%ebp), %edx
	movl	%esi, %ecx
	pushl	%eax
	movl	8(%ebp), %eax
	call	kv_item_store
.LVL237:
	.loc 1 522 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 521 0
	movl	%eax, %ebx
.LVL238:
	.loc 1 522 0
	jne	.L152
	.loc 1 526 0
	xorl	%edx, %edx
	movl	%edi, %eax
.LVL239:
	call	kv_item_del
.LVL240:
	movl	%eax, %ebx
.LVL241:
.L152:
.LBE47:
.LBE46:
	.loc 1 716 0
	movl	%edi, %eax
	call	kv_item_free
.LVL242:
	jmp	.L153
.LVL243:
.L150:
	.loc 1 718 0
	subl	$12, %esp
	movl	12(%ebp), %edx
	movl	8(%ebp), %eax
.LVL244:
	pushl	$0
	movl	%esi, %ecx
	call	kv_item_store
.LVL245:
	addl	$16, %esp
	movl	%eax, %ebx
.LVL246:
.L153:
	.loc 1 721 0
	subl	$12, %esp
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL247:
	.loc 1 722 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L148
.LVL248:
.L155:
	.loc 1 701 0
	movl	$-22, %eax
.L148:
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
.LFE42:
	.size	aos_kv_set, .-aos_kv_set
	.section	.text.unlikely.aos_kv_set
.LCOLDE16:
	.section	.text.aos_kv_set
.LHOTE16:
	.section	.text.unlikely.aos_kv_get,"ax",@progbits
.LCOLDB17:
	.section	.text.aos_kv_get,"ax",@progbits
.LHOTB17:
	.globl	aos_kv_get
	.type	aos_kv_get, @function
aos_kv_get:
.LFB43:
	.loc 1 726 0
	.cfi_startproc
.LVL249:
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
	jne	.L162
	testl	%ebx, %ebx
	je	.L162
	.loc 1 730 0 is_stmt 0 discriminator 2
	movl	16(%ebp), %eax
	cmpl	$0, (%eax)
	jle	.L162
	.loc 1 734 0 is_stmt 1
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_kv_mgr+12
	call	aos_mutex_lock
.LVL250:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %edx
	jne	.L162
	movl	%eax, -28(%ebp)
	.loc 1 738 0
	movl	%ebx, %eax
.LVL251:
	call	kv_item_get
.LVL252:
	.loc 1 740 0
	subl	$12, %esp
	.loc 1 738 0
	movl	%eax, %ebx
.LVL253:
	.loc 1 740 0
	pushl	$g_kv_mgr+12
	call	aos_mutex_unlock
.LVL254:
	.loc 1 742 0
	addl	$16, %esp
	testl	%ebx, %ebx
	.loc 1 743 0
	movl	$-2, %edx
	.loc 1 742 0
	je	.L162
	.loc 1 746 0
	movl	16(%ebp), %eax
	movzwl	4(%ebx), %ecx
	movl	-28(%ebp), %edx
	cmpl	%ecx, (%eax)
	jge	.L163
	.loc 1 747 0
	movl	%ecx, (%eax)
	.loc 1 748 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL255:
	.loc 1 749 0
	movl	$-28, %edx
	jmp	.L162
.L163:
	.loc 1 751 0
	movzbl	3(%ebx), %esi
	movl	12(%ebp), %edi
	addl	8(%ebx), %esi
	movl	%edx, -28(%ebp)
.LVL256:
	rep movsb
	.loc 1 752 0
	movl	16(%ebp), %edi
	movzwl	4(%ebx), %eax
	movl	%eax, (%edi)
	.loc 1 755 0
	movl	%ebx, %eax
	call	kv_item_free
.LVL257:
	.loc 1 756 0
	movl	-28(%ebp), %edx
.LVL258:
.L162:
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
.LFE43:
	.size	aos_kv_get, .-aos_kv_get
	.section	.text.unlikely.aos_kv_get
.LCOLDE17:
	.section	.text.aos_kv_get
.LHOTE17:
	.section	.text.unlikely.aos_kv_init,"ax",@progbits
.LCOLDB18:
	.section	.text.aos_kv_init,"ax",@progbits
.LHOTB18:
	.globl	aos_kv_init
	.type	aos_kv_init, @function
aos_kv_init:
.LFB44:
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
	je	.L170
.L191:
	.loc 1 853 0
	xorl	%ebx, %ebx
	jmp	.L171
.L170:
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
.LVL259:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L171
.LVL260:
.LBB50:
.LBB51:
	.loc 1 536 0
	movw	$0, -30(%ebp)
.LVL261:
	movl	$g_kv_mgr, %edi
	xorl	%esi, %esi
.LVL262:
.L177:
	movl	%esi, %eax
	.loc 1 540 0
	leal	-34(%ebp), %edx
	movl	$4, %ecx
	movb	%al, -41(%ebp)
.LVL263:
	movl	%esi, %eax
.LVL264:
	.loc 1 539 0
	movl	$0, -34(%ebp)
	.loc 1 540 0
	sall	$12, %eax
	call	raw_read
.LVL265:
	.loc 1 541 0
	cmpb	$75, -34(%ebp)
	jne	.L172
	.loc 1 542 0
	movb	-33(%ebp), %al
	cmpb	$-52, %al
	setne	%cl
	cmpb	$-18, %al
	setne	%dl
	testb	%dl, %cl
	je	.L173
	cmpb	$68, %al
	jne	.L172
.L173:
	.loc 1 550 0
	movb	%al, 18(%edi)
	.loc 1 551 0
	xorl	%ecx, %ecx
	movl	%esi, %edx
	movl	$__item_recovery_cb, %eax
	call	kv_item_traverse
.LVL266:
	.loc 1 552 0
	cmpb	$-18, -33(%ebp)
	jne	.L175
	.loc 1 553 0
	cmpw	$4092, 16(%edi)
	je	.L176
	.loc 1 554 0
	movl	%esi, %eax
	movb	%al, -30(%ebp,%ebx)
	.loc 1 555 0
	incl	%ebx
.LVL267:
	jmp	.L175
.L176:
	.loc 1 557 0
	incb	g_kv_mgr+3
	jmp	.L175
.L172:
	.loc 1 561 0
	movl	%esi, %eax
	call	kv_block_format
.LVL268:
	testl	%eax, %eax
	jne	.L198
.LVL269:
.L175:
	incl	%esi
.LVL270:
	addl	$4, %edi
	.loc 1 538 0
	cmpl	$2, %esi
	jne	.L177
	leal	-30(%ebp), %esi
	leal	(%esi,%ebx), %edi
.LVL271:
.L178:
	.loc 1 567 0
	cmpl	%esi, %edi
	je	.L220
	.loc 1 569 0
	cmpb	$0, g_kv_mgr+3
	.loc 1 568 0
	movzbl	-1(%edi), %ebx
.LVL272:
	.loc 1 569 0
	je	.L179
	.loc 1 570 0
	movl	%ebx, %eax
	movl	$68, %edx
	sall	$12, %eax
	movzwl	%ax, %eax
	call	kv_state_set
.LVL273:
	testl	%eax, %eax
	jne	.L198
	.loc 1 573 0
	movb	$68, g_kv_mgr+18(,%ebx,4)
	jmp	.L180
.LVL274:
.L179:
	.loc 1 575 0
	movzbl	%bl, %eax
	call	kv_block_format
.LVL275:
	testl	%eax, %eax
	jne	.L198
.L180:
	decl	%edi
.LVL276:
	jmp	.L178
.LVL277:
.L220:
	.loc 1 582 0
	cmpb	$0, g_kv_mgr+3
	je	.L182
.L185:
	.loc 1 588 0
	cmpb	$2, g_kv_mgr+3
	jne	.L216
	jmp	.L221
.L182:
	.loc 1 583 0
	xorl	%eax, %eax
	call	kv_block_format
.LVL278:
	testl	%eax, %eax
	je	.L185
	jmp	.L198
.LVL279:
.L216:
	.loc 1 596 0
	movb	g_kv_mgr+18, %al
	cmpb	$-52, %al
	je	.L202
	cmpb	$68, %al
	jne	.L186
.L202:
.LVL280:
	.loc 1 599 0
	cmpb	$-18, g_kv_mgr+22
	je	.L199
.LVL281:
.L186:
	.loc 1 596 0
	movb	g_kv_mgr+22, %dl
.LVL282:
	.loc 1 599 0
	cmpb	$-52, %dl
	sete	%cl
	cmpb	$68, %dl
	sete	%dl
	orb	%dl, %cl
	je	.L219
	cmpb	$-18, %al
	jne	.L219
	.loc 1 596 0
	movl	$1, %edx
	.loc 1 595 0
	movl	$1, %eax
	jmp	.L188
.LVL283:
.L221:
	.loc 1 590 0
	xorl	%eax, %eax
	movl	$204, %edx
	.loc 1 589 0
	movw	$4, g_kv_mgr+4
	.loc 1 590 0
	call	kv_state_set
.LVL284:
	testl	%eax, %eax
	movl	%eax, %ebx
	jne	.L219
	.loc 1 591 0
	movb	$-52, g_kv_mgr+18
	.loc 1 592 0
	decb	g_kv_mgr+3
	jmp	.L217
.LVL285:
.L199:
	.loc 1 596 0
	xorl	%edx, %edx
	.loc 1 599 0
	xorl	%eax, %eax
.LVL286:
.L188:
	.loc 1 600 0
	addl	$4, %edx
	movl	$4096, %ecx
	sall	$12, %eax
	subl	g_kv_mgr(,%edx,4), %ecx
	movl	%ecx, %edx
	addl	%edx, %eax
	movw	%ax, g_kv_mgr+4
.L219:
	.loc 1 607 0
	xorl	%ebx, %ebx
	jmp	.L217
.LVL287:
.L198:
.LBE51:
.LBE50:
	.loc 1 869 0
	testl	%eax, %eax
.LBB53:
.LBB52:
	.loc 1 583 0
	movl	%eax, %ebx
.LVL288:
.LBE52:
.LBE53:
	.loc 1 869 0
	jne	.L171
.L217:
	.loc 1 873 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	$g_kv_mgr+8
	call	aos_sem_new
.LVL289:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L201
	.loc 1 880 0
	movl	g_kv_mgr+4, %eax
.LVL290:
	.loc 1 877 0
	movb	$1, g_kv_mgr
.LVL291:
	.loc 1 880 0
	shrw	$12, %ax
.LVL292:
	movzwl	%ax, %eax
	cmpw	$647, g_kv_mgr+16(,%eax,4)
	ja	.L191
	.loc 1 880 0 is_stmt 0 discriminator 1
	cmpb	$1, g_kv_mgr+3
	ja	.L191
	.loc 1 882 0 is_stmt 1
	call	trigger_gc
.LVL293:
	jmp	.L171
.LVL294:
.L201:
	movl	%eax, %ebx
.LVL295:
.L171:
	.loc 1 886 0
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	movl	%ebx, %eax
	je	.L192
	call	__stack_chk_fail
.LVL296:
.L192:
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
.LFE44:
	.size	aos_kv_init, .-aos_kv_init
	.section	.text.unlikely.aos_kv_init
.LCOLDE18:
	.section	.text.aos_kv_init
.LHOTE18:
	.section	.text.unlikely.aos_kv_deinit,"ax",@progbits
.LCOLDB19:
	.section	.text.aos_kv_deinit,"ax",@progbits
.LHOTB19:
	.globl	aos_kv_deinit
	.type	aos_kv_deinit, @function
aos_kv_deinit:
.LFB45:
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
.LVL297:
	.loc 1 893 0
	movl	$g_kv_mgr+12, (%esp)
	call	aos_mutex_free
.LVL298:
	.loc 1 894 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	aos_kv_deinit, .-aos_kv_deinit
	.section	.text.unlikely.aos_kv_deinit
.LCOLDE19:
	.section	.text.aos_kv_deinit
.LHOTE19:
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
	.file 5 "./include/aos/kernel.h"
	.file 6 "./include/hal/soc/flash.h"
	.file 7 "./include/hal/sensor.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 9 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1475
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF154
	.byte	0xc
	.long	.LASF155
	.long	.LASF156
	.long	.Ldebug_ranges0+0xa0
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
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.long	0xf5
	.uleb128 0x9
	.string	"hdl"
	.byte	0x5
	.byte	0x14
	.long	0xa5
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0x15
	.long	0xe0
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0x18
	.long	0xf5
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x19
	.long	0xf5
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF22
	.uleb128 0x6
	.byte	0x4
	.long	0xbf
	.uleb128 0xa
	.byte	0x4
	.long	0x25
	.byte	0x6
	.byte	0x13
	.long	0x190
	.uleb128 0xb
	.long	.LASF23
	.sleb128 -1
	.uleb128 0xc
	.long	.LASF24
	.byte	0
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.uleb128 0xc
	.long	.LASF26
	.byte	0x2
	.uleb128 0xc
	.long	.LASF27
	.byte	0x3
	.uleb128 0xc
	.long	.LASF28
	.byte	0x4
	.uleb128 0xc
	.long	.LASF29
	.byte	0x5
	.uleb128 0xc
	.long	.LASF30
	.byte	0x6
	.uleb128 0xc
	.long	.LASF31
	.byte	0x7
	.uleb128 0xc
	.long	.LASF32
	.byte	0x8
	.uleb128 0xc
	.long	.LASF33
	.byte	0x9
	.uleb128 0xc
	.long	.LASF34
	.byte	0xa
	.uleb128 0xc
	.long	.LASF35
	.byte	0xb
	.uleb128 0xc
	.long	.LASF36
	.byte	0xc
	.uleb128 0xc
	.long	.LASF37
	.byte	0xd
	.uleb128 0xc
	.long	.LASF38
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF39
	.byte	0x6
	.byte	0x24
	.long	0x123
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.long	.LASF40
	.uleb128 0xa
	.byte	0x4
	.long	0x37
	.byte	0x7
	.byte	0x48
	.long	0x1fd
	.uleb128 0xc
	.long	.LASF41
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.uleb128 0xc
	.long	.LASF43
	.byte	0x2
	.uleb128 0xc
	.long	.LASF44
	.byte	0x3
	.uleb128 0xc
	.long	.LASF45
	.byte	0x4
	.uleb128 0xc
	.long	.LASF46
	.byte	0x5
	.uleb128 0xc
	.long	.LASF47
	.byte	0x6
	.uleb128 0xc
	.long	.LASF48
	.byte	0x7
	.uleb128 0xc
	.long	.LASF49
	.byte	0x8
	.uleb128 0xc
	.long	.LASF50
	.byte	0x9
	.uleb128 0xc
	.long	.LASF51
	.byte	0xa
	.uleb128 0xc
	.long	.LASF52
	.byte	0xb
	.uleb128 0xc
	.long	.LASF53
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x203
	.uleb128 0xd
	.uleb128 0x7
	.long	0xbf
	.uleb128 0xa
	.byte	0x4
	.long	0x25
	.byte	0x1
	.byte	0xc
	.long	0x24c
	.uleb128 0xc
	.long	.LASF54
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.sleb128 -11
	.uleb128 0xb
	.long	.LASF56
	.sleb128 -28
	.uleb128 0xb
	.long	.LASF57
	.sleb128 -22
	.uleb128 0xb
	.long	.LASF58
	.sleb128 -12
	.uleb128 0xb
	.long	.LASF59
	.sleb128 -2
	.uleb128 0xb
	.long	.LASF60
	.sleb128 -5
	.uleb128 0xb
	.long	.LASF61
	.sleb128 -5
	.uleb128 0xb
	.long	.LASF62
	.sleb128 -5
	.byte	0
	.uleb128 0xe
	.long	.LASF67
	.byte	0x4
	.byte	0x1
	.byte	0x38
	.long	0x27d
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x39
	.long	0xbf
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x3a
	.long	0xbf
	.byte	0x1
	.uleb128 0xf
	.long	.LASF65
	.byte	0x1
	.byte	0x3b
	.long	0x27d
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.long	0xbf
	.long	0x28d
	.uleb128 0x11
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x1
	.byte	0x3c
	.long	0x24c
	.uleb128 0xe
	.long	.LASF68
	.byte	0x8
	.byte	0x1
	.byte	0x3f
	.long	0x2ed
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x40
	.long	0xbf
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x41
	.long	0xbf
	.byte	0x1
	.uleb128 0x9
	.string	"crc"
	.byte	0x1
	.byte	0x42
	.long	0xbf
	.byte	0x2
	.uleb128 0xf
	.long	.LASF69
	.byte	0x1
	.byte	0x43
	.long	0xbf
	.byte	0x3
	.uleb128 0xf
	.long	.LASF70
	.byte	0x1
	.byte	0x44
	.long	0xca
	.byte	0x4
	.uleb128 0xf
	.long	.LASF71
	.byte	0x1
	.byte	0x45
	.long	0xca
	.byte	0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF72
	.byte	0x1
	.byte	0x46
	.long	0x298
	.uleb128 0xe
	.long	.LASF73
	.byte	0x10
	.byte	0x1
	.byte	0x49
	.long	0x335
	.uleb128 0x9
	.string	"hdr"
	.byte	0x1
	.byte	0x4a
	.long	0x2ed
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x1
	.byte	0x4b
	.long	0xa7
	.byte	0x8
	.uleb128 0x9
	.string	"len"
	.byte	0x1
	.byte	0x4c
	.long	0xca
	.byte	0xc
	.uleb128 0x9
	.string	"pos"
	.byte	0x1
	.byte	0x4d
	.long	0xca
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x1
	.byte	0x4e
	.long	0x2f8
	.uleb128 0xe
	.long	.LASF76
	.byte	0x4
	.byte	0x1
	.byte	0x51
	.long	0x365
	.uleb128 0xf
	.long	.LASF77
	.byte	0x1
	.byte	0x52
	.long	0xca
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x1
	.byte	0x53
	.long	0xbf
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.long	.LASF78
	.byte	0x1
	.byte	0x54
	.long	0x340
	.uleb128 0xe
	.long	.LASF79
	.byte	0x18
	.byte	0x1
	.byte	0x56
	.long	0x3dd
	.uleb128 0xf
	.long	.LASF80
	.byte	0x1
	.byte	0x57
	.long	0xbf
	.byte	0
	.uleb128 0xf
	.long	.LASF81
	.byte	0x1
	.byte	0x58
	.long	0xbf
	.byte	0x1
	.uleb128 0xf
	.long	.LASF82
	.byte	0x1
	.byte	0x59
	.long	0xbf
	.byte	0x2
	.uleb128 0xf
	.long	.LASF83
	.byte	0x1
	.byte	0x5a
	.long	0xbf
	.byte	0x3
	.uleb128 0xf
	.long	.LASF84
	.byte	0x1
	.byte	0x5b
	.long	0xca
	.byte	0x4
	.uleb128 0xf
	.long	.LASF85
	.byte	0x1
	.byte	0x5c
	.long	0x10b
	.byte	0x8
	.uleb128 0xf
	.long	.LASF86
	.byte	0x1
	.byte	0x5d
	.long	0x100
	.byte	0xc
	.uleb128 0xf
	.long	.LASF87
	.byte	0x1
	.byte	0x5e
	.long	0x3dd
	.byte	0x10
	.byte	0
	.uleb128 0x10
	.long	0x365
	.long	0x3ed
	.uleb128 0x11
	.long	0x9e
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF88
	.byte	0x1
	.byte	0x5f
	.long	0x370
	.uleb128 0x12
	.long	.LASF89
	.byte	0x1
	.value	0x125
	.long	0x404
	.uleb128 0x6
	.byte	0x4
	.long	0x40a
	.uleb128 0x13
	.long	0x25
	.long	0x41e
	.uleb128 0x14
	.long	0x41e
	.uleb128 0x14
	.long	0xb4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x335
	.uleb128 0x15
	.byte	0xc
	.byte	0x1
	.value	0x1cb
	.long	0x453
	.uleb128 0x16
	.string	"p"
	.byte	0x1
	.value	0x1cc
	.long	0xa7
	.byte	0
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.value	0x1cd
	.long	0x25
	.byte	0x4
	.uleb128 0x16
	.string	"len"
	.byte	0x1
	.value	0x1ce
	.long	0xca
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.long	.LASF90
	.byte	0x1
	.value	0x1cf
	.long	0x424
	.uleb128 0x17
	.long	.LASF157
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uleb128 0x18
	.long	.LASF99
	.byte	0x1
	.byte	0x86
	.long	0x25
	.byte	0x1
	.long	0x48e
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x86
	.long	0xd5
	.uleb128 0x19
	.long	.LASF92
	.byte	0x1
	.byte	0x86
	.long	0xd5
	.byte	0
	.uleb128 0x1a
	.long	.LASF95
	.byte	0x1
	.byte	0x69
	.long	0xbf
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e2
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x69
	.long	0x11d
	.long	.LLST0
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x1
	.byte	0x69
	.long	0xca
	.long	.LLST1
	.uleb128 0x1d
	.string	"crc"
	.byte	0x1
	.byte	0x6b
	.long	0xbf
	.long	.LLST2
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0x6c
	.long	0xbf
	.long	.LLST3
	.byte	0
	.uleb128 0x1e
	.long	.LASF158
	.byte	0x1
	.byte	0x96
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x519
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1
	.byte	0x96
	.long	0x41e
	.long	.LLST4
	.uleb128 0x1f
	.long	.LVL16
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL17
	.long	0x13bd
	.byte	0
	.uleb128 0x1a
	.long	.LASF96
	.byte	0x1
	.byte	0x7c
	.long	0x25
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x569
	.uleb128 0x1c
	.long	.LASF91
	.byte	0x1
	.byte	0x7c
	.long	0xd5
	.long	.LLST5
	.uleb128 0x1b
	.string	"buf"
	.byte	0x1
	.byte	0x7c
	.long	0xa5
	.long	.LLST6
	.uleb128 0x1c
	.long	.LASF97
	.byte	0x1
	.byte	0x7c
	.long	0x2c
	.long	.LLST7
	.uleb128 0x1f
	.long	.LVL21
	.long	0x13c9
	.byte	0
	.uleb128 0x20
	.long	.LASF98
	.byte	0x1
	.value	0x13f
	.long	0x25
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x5be
	.uleb128 0x21
	.long	.LASF94
	.byte	0x1
	.value	0x13f
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x13f
	.long	0xb4
	.long	.LLST8
	.uleb128 0x1f
	.long	.LVL25
	.long	0x13d4
	.uleb128 0x1f
	.long	.LVL26
	.long	0x519
	.uleb128 0x1f
	.long	.LVL27
	.long	0x13e0
	.byte	0
	.uleb128 0x23
	.long	0x45f
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x5db
	.uleb128 0x1f
	.long	.LVL28
	.long	0x13eb
	.byte	0
	.uleb128 0x18
	.long	.LASF100
	.byte	0x1
	.byte	0xbc
	.long	0xca
	.byte	0x1
	.long	0x60d
	.uleb128 0x24
	.string	"len"
	.byte	0x1
	.byte	0xbc
	.long	0xca
	.uleb128 0x25
	.long	.LASF101
	.byte	0x1
	.byte	0xbe
	.long	0x60d
	.uleb128 0x25
	.long	.LASF102
	.byte	0x1
	.byte	0xbf
	.long	0xbf
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x365
	.uleb128 0x18
	.long	.LASF103
	.byte	0x1
	.byte	0x81
	.long	0x25
	.byte	0x1
	.long	0x645
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.byte	0x81
	.long	0xd5
	.uleb128 0x24
	.string	"buf"
	.byte	0x1
	.byte	0x81
	.long	0x1fd
	.uleb128 0x19
	.long	.LASF97
	.byte	0x1
	.byte	0x81
	.long	0x2c
	.byte	0
	.uleb128 0x20
	.long	.LASF104
	.byte	0x1
	.value	0x1d0
	.long	0x25
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x7a1
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x1d0
	.long	0xb4
	.long	.LLST9
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0x1d0
	.long	0x1fd
	.long	.LLST10
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0x1d0
	.long	0x25
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF71
	.byte	0x1
	.value	0x1d0
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF74
	.byte	0x1
	.value	0x1d2
	.long	0x453
	.long	.LLST12
	.uleb128 0x27
	.string	"hdr"
	.byte	0x1
	.value	0x1d3
	.long	0x2ed
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x1d4
	.long	0xa7
	.long	.LLST13
	.uleb128 0x27
	.string	"pos"
	.byte	0x1
	.value	0x1d5
	.long	0xca
	.uleb128 0x26
	.long	.LASF105
	.byte	0x1
	.value	0x1d6
	.long	0xbf
	.long	.LLST14
	.uleb128 0x29
	.long	0x5db
	.long	.LBB10
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x1ed
	.long	0x72c
	.uleb128 0x2a
	.long	0x5eb
	.long	.LLST15
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0
	.uleb128 0x2c
	.long	0x5f6
	.long	.LLST16
	.uleb128 0x2c
	.long	0x601
	.long	.LLST17
	.uleb128 0x1f
	.long	.LVL49
	.long	0x45f
	.uleb128 0x1f
	.long	.LVL52
	.long	0x45f
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	0x613
	.long	.LBB14
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1ef
	.long	0x765
	.uleb128 0x2a
	.long	0x639
	.long	.LLST18
	.uleb128 0x2a
	.long	0x62e
	.long	.LLST19
	.uleb128 0x2a
	.long	0x623
	.long	.LLST20
	.uleb128 0x1f
	.long	.LVL57
	.long	0x13f6
	.byte	0
	.uleb128 0x1f
	.long	.LVL36
	.long	0x13d4
	.uleb128 0x2d
	.long	.LVL45
	.long	0x48e
	.long	0x78e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 8
	.uleb128 0x2e
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
	.uleb128 0x1f
	.long	.LVL62
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL65
	.long	0x1401
	.byte	0
	.uleb128 0x1a
	.long	.LASF106
	.byte	0x1
	.byte	0xa0
	.long	0x25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x81a
	.uleb128 0x1b
	.string	"pos"
	.byte	0x1
	.byte	0xa0
	.long	0xca
	.long	.LLST21
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x1
	.byte	0xa0
	.long	0xbf
	.long	.LLST22
	.uleb128 0x2f
	.long	0x613
	.long	.LBB20
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0xa2
	.long	0x810
	.uleb128 0x2a
	.long	0x639
	.long	.LLST23
	.uleb128 0x2a
	.long	0x62e
	.long	.LLST24
	.uleb128 0x2a
	.long	0x623
	.long	.LLST25
	.uleb128 0x1f
	.long	.LVL73
	.long	0x13f6
	.byte	0
	.uleb128 0x1f
	.long	.LVL74
	.long	0x1401
	.byte	0
	.uleb128 0x20
	.long	.LASF107
	.byte	0x1
	.value	0x176
	.long	0x41e
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x97c
	.uleb128 0x30
	.long	.LASF108
	.byte	0x1
	.value	0x176
	.long	0x3f8
	.long	.LLST26
	.uleb128 0x30
	.long	.LASF102
	.byte	0x1
	.value	0x176
	.long	0xbf
	.long	.LLST27
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x176
	.long	0xb4
	.long	.LLST28
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.value	0x178
	.long	0x41e
	.long	.LLST29
	.uleb128 0x28
	.string	"hdr"
	.byte	0x1
	.value	0x179
	.long	0x97c
	.long	.LLST30
	.uleb128 0x28
	.string	"pos"
	.byte	0x1
	.value	0x17a
	.long	0xca
	.long	.LLST31
	.uleb128 0x28
	.string	"end"
	.byte	0x1
	.value	0x17b
	.long	0xca
	.long	.LLST32
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x17c
	.long	0xca
	.long	.LLST33
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x17d
	.long	0x25
	.long	.LLST34
	.uleb128 0x1f
	.long	.LVL83
	.long	0x13d4
	.uleb128 0x2d
	.long	.LVL87
	.long	0x519
	.long	0x8f0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x6
	.byte	0x76
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2d
	.long	.LVL88
	.long	0x4e2
	.long	0x904
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL90
	.long	0x4e2
	.long	0x918
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL92
	.long	0x7a1
	.long	0x933
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x31
	.long	.LVL95
	.uleb128 0x3
	.byte	0x75
	.sleb128 -44
	.byte	0x6
	.uleb128 0x2d
	.long	.LVL97
	.long	0x4e2
	.long	0x950
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL100
	.long	0x7a1
	.long	0x96b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -40
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x32
	.long	.LVL101
	.long	0x4e2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x2ed
	.uleb128 0x20
	.long	.LASF109
	.byte	0x1
	.value	0x1ba
	.long	0x41e
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xa0b
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x1ba
	.long	0xb4
	.long	.LLST35
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.value	0x1bc
	.long	0x41e
	.long	.LLST36
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x1bd
	.long	0xbf
	.long	.LLST37
	.uleb128 0x2d
	.long	.LVL109
	.long	0x81a
	.long	0x9ec
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_find_cb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.long	.LVL113
	.long	0x81a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_find_cb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF110
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xb7a
	.uleb128 0x1c
	.long	.LASF94
	.byte	0x1
	.byte	0xe5
	.long	0x41e
	.long	.LLST38
	.uleb128 0x1c
	.long	.LASF111
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.long	.LLST39
	.uleb128 0x1d
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.long	0x25
	.long	.LLST40
	.uleb128 0x33
	.string	"hdr"
	.byte	0x1
	.byte	0xe8
	.long	0x2ed
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.long	.LASF112
	.byte	0x1
	.byte	0xe9
	.long	0xa7
	.long	.LLST41
	.uleb128 0x34
	.long	.LASF113
	.byte	0x1
	.byte	0xea
	.long	0xa7
	.long	.LLST42
	.uleb128 0x1d
	.string	"i"
	.byte	0x1
	.byte	0xeb
	.long	0xbf
	.long	.LLST43
	.uleb128 0x34
	.long	.LASF91
	.byte	0x1
	.byte	0xec
	.long	0xca
	.long	.LLST44
	.uleb128 0x2d
	.long	.LVL123
	.long	0x519
	.long	0xab9
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x75
	.sleb128 -64
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 -36
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x1f
	.long	.LVL126
	.long	0x13d4
	.uleb128 0x1f
	.long	.LVL129
	.long	0x13d4
	.uleb128 0x1f
	.long	.LVL131
	.long	0x13bd
	.uleb128 0x2d
	.long	.LVL134
	.long	0x519
	.long	0xaf1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x75
	.sleb128 -64
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL135
	.long	0x519
	.long	0xb05
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL136
	.long	0x13e0
	.uleb128 0x1f
	.long	.LVL137
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL138
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL139
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL140
	.long	0x13bd
	.uleb128 0x2d
	.long	.LVL142
	.long	0x7a1
	.long	0xb51
	.uleb128 0x2e
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
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL146
	.long	0x7a1
	.long	0xb70
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x7
	.byte	0x75
	.sleb128 -56
	.byte	0x6
	.byte	0xa
	.value	0xf000
	.byte	0x1a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x1f
	.long	.LVL151
	.long	0x1401
	.byte	0
	.uleb128 0x20
	.long	.LASF114
	.byte	0x1
	.value	0x127
	.long	0x25
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xc19
	.uleb128 0x21
	.long	.LASF94
	.byte	0x1
	.value	0x127
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"key"
	.byte	0x1
	.value	0x127
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x129
	.long	0xa7
	.long	.LLST45
	.uleb128 0x1f
	.long	.LVL154
	.long	0x13d4
	.uleb128 0x2d
	.long	.LVL157
	.long	0x519
	.long	0xbdd
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL158
	.long	0x13bd
	.uleb128 0x2d
	.long	.LVL159
	.long	0x48e
	.long	0xbfa
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL160
	.long	0xa0b
	.long	0xc0f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LVL161
	.long	0x13bd
	.byte	0
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x1
	.byte	0xa5
	.long	0x25
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0xccf
	.uleb128 0x1c
	.long	.LASF105
	.byte	0x1
	.byte	0xa5
	.long	0xbf
	.long	.LLST46
	.uleb128 0x33
	.string	"hdr"
	.byte	0x1
	.byte	0xa7
	.long	0x28d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1d
	.string	"pos"
	.byte	0x1
	.byte	0xa8
	.long	0xca
	.long	.LLST47
	.uleb128 0x2f
	.long	0x467
	.long	.LBB30
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.byte	0xac
	.long	0xc8d
	.uleb128 0x2a
	.long	0x482
	.long	.LLST48
	.uleb128 0x2a
	.long	0x477
	.long	.LLST49
	.uleb128 0x1f
	.long	.LVL165
	.long	0x140a
	.byte	0
	.uleb128 0x2f
	.long	0x613
	.long	.LBB36
	.long	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0xb2
	.long	0xcc5
	.uleb128 0x2a
	.long	0x639
	.long	.LLST50
	.uleb128 0x2a
	.long	0x62e
	.long	.LLST51
	.uleb128 0x2a
	.long	0x623
	.long	.LLST52
	.uleb128 0x1f
	.long	.LVL167
	.long	0x13f6
	.byte	0
	.uleb128 0x1f
	.long	.LVL170
	.long	0x1401
	.byte	0
	.uleb128 0x36
	.long	.LASF133
	.byte	0x1
	.value	0x262
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xdae
	.uleb128 0x35
	.string	"arg"
	.byte	0x1
	.value	0x262
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"i"
	.byte	0x1
	.value	0x264
	.long	0xbf
	.long	.LLST53
	.uleb128 0x26
	.long	.LASF116
	.byte	0x1
	.value	0x265
	.long	0xbf
	.long	.LLST54
	.uleb128 0x26
	.long	.LASF117
	.byte	0x1
	.value	0x266
	.long	0xbf
	.long	.LLST55
	.uleb128 0x26
	.long	.LASF118
	.byte	0x1
	.value	0x267
	.long	0xca
	.long	.LLST56
	.uleb128 0x37
	.long	.LASF120
	.byte	0x1
	.value	0x29a
	.long	.L127
	.uleb128 0x1f
	.long	.LVL172
	.long	0x1415
	.uleb128 0x2d
	.long	.LVL182
	.long	0x81a
	.long	0xd6a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_gc_cb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL183
	.long	0xc19
	.long	0xd7e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL184
	.long	0x7a1
	.long	0xd92
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.byte	0
	.uleb128 0x1f
	.long	.LVL188
	.long	0x1420
	.uleb128 0x1f
	.long	.LVL189
	.long	0x142b
	.uleb128 0x38
	.long	.LVL190
	.long	0x1436
	.byte	0
	.uleb128 0x20
	.long	.LASF119
	.byte	0x1
	.value	0x155
	.long	0x25
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xe9f
	.uleb128 0x21
	.long	.LASF94
	.byte	0x1
	.value	0x155
	.long	0x41e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.string	"key"
	.byte	0x1
	.value	0x155
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"p"
	.byte	0x1
	.value	0x157
	.long	0xa7
	.long	.LLST57
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x158
	.long	0x25
	.long	.LLST58
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x159
	.long	0xca
	.long	.LLST59
	.uleb128 0x26
	.long	.LASF105
	.byte	0x1
	.value	0x15a
	.long	0xbf
	.long	.LLST60
	.uleb128 0x39
	.string	"err"
	.byte	0x1
	.value	0x171
	.long	.L136
	.uleb128 0x3a
	.long	0x613
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.value	0x167
	.long	0xe69
	.uleb128 0x2a
	.long	0x639
	.long	.LLST61
	.uleb128 0x2a
	.long	0x62e
	.long	.LLST62
	.uleb128 0x2a
	.long	0x623
	.long	.LLST63
	.uleb128 0x1f
	.long	.LVL203
	.long	0x13f6
	.byte	0
	.uleb128 0x1f
	.long	.LVL193
	.long	0x13d4
	.uleb128 0x2d
	.long	.LVL196
	.long	0x519
	.long	0xe8c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL208
	.long	0x13bd
	.uleb128 0x1f
	.long	.LVL210
	.long	0x1401
	.byte	0
	.uleb128 0x3b
	.long	.LASF122
	.byte	0x1
	.value	0x2a4
	.long	0x25
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xf40
	.uleb128 0x35
	.string	"key"
	.byte	0x1
	.value	0x2a4
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.value	0x2a6
	.long	0x41e
	.long	.LLST64
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2a7
	.long	0x25
	.long	.LLST65
	.uleb128 0x1f
	.long	.LVL214
	.long	0x1415
	.uleb128 0x2d
	.long	.LVL216
	.long	0x982
	.long	0xf06
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x1f
	.long	.LVL218
	.long	0x1420
	.uleb128 0x2d
	.long	.LVL220
	.long	0xa0b
	.long	0xf22
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL223
	.long	0x4e2
	.long	0xf36
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL224
	.long	0x1420
	.byte	0
	.uleb128 0x3c
	.long	.LASF121
	.byte	0x1
	.value	0x1ff
	.long	0x25
	.byte	0x1
	.long	0xf8e
	.uleb128 0x3d
	.long	.LASF94
	.byte	0x1
	.value	0x1ff
	.long	0x41e
	.uleb128 0x3e
	.string	"key"
	.byte	0x1
	.value	0x1ff
	.long	0xb4
	.uleb128 0x3e
	.string	"val"
	.byte	0x1
	.value	0x1ff
	.long	0x1fd
	.uleb128 0x3e
	.string	"len"
	.byte	0x1
	.value	0x1ff
	.long	0x25
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x201
	.long	0x25
	.byte	0
	.uleb128 0x3b
	.long	.LASF123
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x10f8
	.uleb128 0x22
	.string	"key"
	.byte	0x1
	.value	0x2b8
	.long	0xb4
	.long	.LLST66
	.uleb128 0x35
	.string	"val"
	.byte	0x1
	.value	0x2b8
	.long	0x1fd
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.string	"len"
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x21
	.long	.LASF124
	.byte	0x1
	.value	0x2b8
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.value	0x2ba
	.long	0x41e
	.long	.LLST67
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2bb
	.long	0x25
	.long	.LLST68
	.uleb128 0x3a
	.long	0xf40
	.long	.LBB46
	.long	.LBE46-.LBB46
	.byte	0x1
	.value	0x2cb
	.long	0x1091
	.uleb128 0x2a
	.long	0xf75
	.long	.LLST69
	.uleb128 0x2a
	.long	0xf69
	.long	.LLST70
	.uleb128 0x2a
	.long	0xf5d
	.long	.LLST71
	.uleb128 0x2a
	.long	0xf51
	.long	.LLST72
	.uleb128 0x3f
	.long	.LBB47
	.long	.LBE47-.LBB47
	.uleb128 0x2c
	.long	0xf81
	.long	.LLST73
	.uleb128 0x1f
	.long	.LVL236
	.long	0x13e0
	.uleb128 0x2d
	.long	.LVL237
	.long	0x645
	.long	0x107a
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.long	.LVL240
	.long	0xa0b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL228
	.long	0x1441
	.uleb128 0x1f
	.long	.LVL229
	.long	0x1415
	.uleb128 0x2d
	.long	.LVL232
	.long	0x982
	.long	0x10b8
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.uleb128 0x2d
	.long	.LVL242
	.long	0x4e2
	.long	0x10cc
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL245
	.long	0x645
	.long	0x10ee
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL247
	.long	0x1420
	.byte	0
	.uleb128 0x3b
	.long	.LASF125
	.byte	0x1
	.value	0x2d5
	.long	0x25
	.long	.LFB43
	.long	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x11aa
	.uleb128 0x35
	.string	"key"
	.byte	0x1
	.value	0x2d5
	.long	0xb4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF126
	.byte	0x1
	.value	0x2d5
	.long	0xa5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x21
	.long	.LASF127
	.byte	0x1
	.value	0x2d5
	.long	0x11aa
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.long	.LASF94
	.byte	0x1
	.value	0x2d7
	.long	0x41e
	.long	.LLST74
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2d8
	.long	0x25
	.long	.LLST75
	.uleb128 0x1f
	.long	.LVL250
	.long	0x1415
	.uleb128 0x2d
	.long	.LVL252
	.long	0x982
	.long	0x117c
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.long	.LVL254
	.long	0x1420
	.uleb128 0x2d
	.long	.LVL255
	.long	0x4e2
	.long	0x1199
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.long	.LVL257
	.long	0x4e2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x25
	.uleb128 0x3c
	.long	.LASF128
	.byte	0x1
	.value	0x213
	.long	0x25
	.byte	0x1
	.long	0x1208
	.uleb128 0x27
	.string	"hdr"
	.byte	0x1
	.value	0x215
	.long	0x28d
	.uleb128 0x27
	.string	"ret"
	.byte	0x1
	.value	0x216
	.long	0x25
	.uleb128 0x40
	.long	.LASF129
	.byte	0x1
	.value	0x216
	.long	0x25
	.uleb128 0x27
	.string	"i"
	.byte	0x1
	.value	0x217
	.long	0xbf
	.uleb128 0x40
	.long	.LASF130
	.byte	0x1
	.value	0x217
	.long	0xbf
	.uleb128 0x40
	.long	.LASF131
	.byte	0x1
	.value	0x218
	.long	0x27d
	.byte	0
	.uleb128 0x3b
	.long	.LASF132
	.byte	0x1
	.value	0x34f
	.long	0x25
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x1360
	.uleb128 0x26
	.long	.LASF102
	.byte	0x1
	.value	0x351
	.long	0xbf
	.long	.LLST76
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x352
	.long	0x25
	.long	.LLST77
	.uleb128 0x29
	.long	0x11b0
	.long	.LBB50
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.value	0x365
	.long	0x133b
	.uleb128 0x2b
	.long	.Ldebug_ranges0+0x88
	.uleb128 0x41
	.long	0x11c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2c
	.long	0x11cd
	.long	.LLST78
	.uleb128 0x2c
	.long	0x11d9
	.long	.LLST79
	.uleb128 0x2c
	.long	0x11e5
	.long	.LLST80
	.uleb128 0x2c
	.long	0x11ef
	.long	.LLST81
	.uleb128 0x41
	.long	0x11fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -38
	.uleb128 0x2d
	.long	.LVL265
	.long	0x519
	.long	0x12b0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x24
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 -34
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x2d
	.long	.LVL266
	.long	0x81a
	.long	0x12d2
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	__item_recovery_cb
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.long	.LVL268
	.long	0xc19
	.long	0x12e6
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.long	.LVL273
	.long	0x7a1
	.long	0x12fa
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x44
	.byte	0
	.uleb128 0x2d
	.long	.LVL275
	.long	0xc19
	.long	0x1311
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.uleb128 0x2d
	.long	.LVL278
	.long	0xc19
	.long	0x1324
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x32
	.long	.LVL284
	.long	0x7a1
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0xcc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	.LVL259
	.long	0x144c
	.uleb128 0x1f
	.long	.LVL289
	.long	0x1457
	.uleb128 0x1f
	.long	.LVL293
	.long	0x45f
	.uleb128 0x1f
	.long	.LVL296
	.long	0x1401
	.byte	0
	.uleb128 0x36
	.long	.LASF134
	.byte	0x1
	.value	0x379
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x1389
	.uleb128 0x1f
	.long	.LVL297
	.long	0x1462
	.uleb128 0x1f
	.long	.LVL298
	.long	0x146d
	.byte	0
	.uleb128 0x42
	.long	.LASF135
	.byte	0x1
	.byte	0x61
	.long	0x3ed
	.uleb128 0x5
	.byte	0x3
	.long	g_kv_mgr
	.uleb128 0x43
	.long	.LASF136
	.byte	0x1
	.byte	0x63
	.long	0x204
	.byte	0x4b
	.uleb128 0x43
	.long	.LASF137
	.byte	0x1
	.byte	0x64
	.long	0x204
	.byte	0x49
	.uleb128 0x44
	.long	.LASF159
	.byte	0x9
	.byte	0x17
	.long	0x37
	.uleb128 0x45
	.long	.LASF138
	.long	.LASF138
	.byte	0x5
	.value	0x200
	.uleb128 0x46
	.long	.LASF139
	.long	.LASF139
	.byte	0x6
	.byte	0x7c
	.uleb128 0x45
	.long	.LASF140
	.long	.LASF140
	.byte	0x5
	.value	0x1e8
	.uleb128 0x46
	.long	.LASF141
	.long	.LASF141
	.byte	0x8
	.byte	0x1a
	.uleb128 0x46
	.long	.LASF142
	.long	.LASF142
	.byte	0x5
	.byte	0x43
	.uleb128 0x46
	.long	.LASF143
	.long	.LASF143
	.byte	0x6
	.byte	0x5c
	.uleb128 0x47
	.long	.LASF160
	.long	.LASF160
	.uleb128 0x46
	.long	.LASF144
	.long	.LASF144
	.byte	0x6
	.byte	0x4d
	.uleb128 0x46
	.long	.LASF145
	.long	.LASF145
	.byte	0x5
	.byte	0x9e
	.uleb128 0x46
	.long	.LASF146
	.long	.LASF146
	.byte	0x5
	.byte	0xa7
	.uleb128 0x46
	.long	.LASF147
	.long	.LASF147
	.byte	0x5
	.byte	0xe4
	.uleb128 0x46
	.long	.LASF148
	.long	.LASF148
	.byte	0x5
	.byte	0x5a
	.uleb128 0x46
	.long	.LASF149
	.long	.LASF149
	.byte	0x5
	.byte	0xcd
	.uleb128 0x46
	.long	.LASF150
	.long	.LASF150
	.byte	0x5
	.byte	0x8c
	.uleb128 0x46
	.long	.LASF151
	.long	.LASF151
	.byte	0x5
	.byte	0xbb
	.uleb128 0x46
	.long	.LASF152
	.long	.LASF152
	.byte	0x5
	.byte	0xc3
	.uleb128 0x46
	.long	.LASF153
	.long	.LASF153
	.byte	0x5
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.long	.LFE22
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
	.long	.LFE22
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
	.long	.LFE22
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
	.long	.LFE27
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
	.long	.LFE23
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
	.long	.LFE23
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
	.long	.LFE23
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
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL33
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST10:
	.long	.LVL29
	.long	.LVL32
	.value	0x1
	.byte	0x52
	.long	.LVL32
	.long	.LFE37
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST11:
	.long	.LVL29
	.long	.LVL31
	.value	0x1
	.byte	0x51
	.long	.LVL31
	.long	.LFE37
	.value	0x2
	.byte	0x91
	.sleb128 -60
	.long	0
	.long	0
.LLST12:
	.long	.LVL34
	.long	.LVL35
	.value	0x7
	.byte	0x93
	.uleb128 0x8
	.byte	0x50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL35
	.long	.LVL37
	.value	0x8
	.byte	0x93
	.uleb128 0x8
	.byte	0x91
	.sleb128 -50
	.byte	0x93
	.uleb128 0x2
	.byte	0x93
	.uleb128 0x2
	.long	.LVL37
	.long	.LVL38
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
	.long	.LVL38
	.long	.LVL61
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
	.long	.LVL61
	.long	.LVL63
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
	.long	.LVL63
	.long	.LVL64
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
	.long	.LVL64
	.long	.LFE37
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
.LLST13:
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x52
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x57
	.long	.LVL41
	.long	.LVL42
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST14:
	.long	.LVL59
	.long	.LVL60
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL60
	.long	.LVL61
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
.LLST15:
	.long	.LVL46
	.long	.LVL50
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x91
	.sleb128 -50
	.long	0
	.long	0
.LLST16:
	.long	.LVL46
	.long	.LVL47
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
	.long	.LVL47
	.long	.LVL48
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
	.long	.LVL48
	.long	.LVL49-1
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
	.long	.LVL51
	.long	.LVL52-1
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
.LLST17:
	.long	.LVL46
	.long	.LVL49-1
	.value	0xa
	.byte	0x3
	.long	g_kv_mgr+4
	.byte	0x94
	.byte	0x2
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL51
	.long	.LVL52-1
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
.LLST18:
	.long	.LVL53
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST19:
	.long	.LVL53
	.long	.LVL55
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL55
	.long	.LVL56
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL56
	.long	.LVL57-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL57-1
	.long	.LVL58
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL53
	.long	.LVL54
	.value	0x1
	.byte	0x50
	.long	.LVL54
	.long	.LVL57-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL57-1
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST21:
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LVL69
	.value	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x7
	.byte	0x75
	.sleb128 -16
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL70
	.long	.LVL73-1
	.value	0x7
	.byte	0x70
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL73-1
	.long	.LFE28
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL66
	.long	.LVL73-1
	.value	0x1
	.byte	0x52
	.long	.LVL73-1
	.long	.LVL75
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL75
	.long	.LFE28
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST23:
	.long	.LVL68
	.long	.LVL73
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL68
	.long	.LVL69
	.value	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x50
	.long	.LVL70
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
	.long	.LVL73
	.value	0x3
	.byte	0x75
	.sleb128 -28
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	.LVL70
	.long	.LVL73-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL73-1
	.long	.LVL73
	.value	0x2
	.byte	0x75
	.sleb128 -16
	.long	0
	.long	0
.LLST26:
	.long	.LVL76
	.long	.LVL77
	.value	0x1
	.byte	0x50
	.long	.LVL77
	.long	.LVL106
	.value	0x2
	.byte	0x75
	.sleb128 -44
	.long	.LVL106
	.long	.LFE35
	.value	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
.LLST27:
	.long	.LVL76
	.long	.LVL82
	.value	0x1
	.byte	0x52
	.long	.LVL82
	.long	.LFE35
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL76
	.long	.LVL78
	.value	0x1
	.byte	0x51
	.long	.LVL78
	.long	.LVL106
	.value	0x2
	.byte	0x75
	.sleb128 -48
	.long	.LVL106
	.long	.LFE35
	.value	0x2
	.byte	0x91
	.sleb128 -56
	.long	0
	.long	0
.LLST29:
	.long	.LVL84
	.long	.LVL85
	.value	0x1
	.byte	0x50
	.long	.LVL85
	.long	.LVL91
	.value	0x1
	.byte	0x53
	.long	.LVL93
	.long	.LVL102
	.value	0x1
	.byte	0x53
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST30:
	.long	.LVL86
	.long	.LVL91
	.value	0x1
	.byte	0x53
	.long	.LVL93
	.long	.LVL102
	.value	0x1
	.byte	0x53
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL79
	.long	.LVL105
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST32:
	.long	.LVL80
	.long	.LVL81
	.value	0x1
	.byte	0x51
	.long	.LVL81
	.long	.LVL106
	.value	0x2
	.byte	0x75
	.sleb128 -26
	.long	.LVL106
	.long	.LFE35
	.value	0x2
	.byte	0x91
	.sleb128 -34
	.long	0
	.long	0
.LLST33:
	.long	.LVL80
	.long	.LVL82
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL94
	.long	.LVL96
	.value	0x1
	.byte	0x57
	.long	.LVL98
	.long	.LVL99
	.value	0x1
	.byte	0x57
	.long	.LVL99
	.long	.LVL102
	.value	0x2
	.byte	0x75
	.sleb128 -28
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST34:
	.long	.LVL95
	.long	.LVL96
	.value	0x1
	.byte	0x50
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST35:
	.long	.LVL107
	.long	.LVL108
	.value	0x1
	.byte	0x50
	.long	.LVL108
	.long	.LVL109-1
	.value	0x1
	.byte	0x51
	.long	.LVL109-1
	.long	.LVL115
	.value	0x1
	.byte	0x53
	.long	.LVL115
	.long	.LFE36
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL109
	.long	.LVL110
	.value	0x1
	.byte	0x50
	.long	.LVL113
	.long	.LVL114
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL107
	.long	.LVL110
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL111
	.long	.LVL112
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL112
	.long	.LVL114
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL116
	.long	.LVL117
	.value	0x1
	.byte	0x50
	.long	.LVL117
	.long	.LVL152
	.value	0x2
	.byte	0x75
	.sleb128 -60
	.long	.LVL152
	.long	.LFE31
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST39:
	.long	.LVL116
	.long	.LVL120
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST40:
	.long	.LVL117
	.long	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL145
	.value	0x1
	.byte	0x50
	.long	.LVL145
	.long	.LVL147
	.value	0x1
	.byte	0x53
	.long	.LVL147
	.long	.LVL148
	.value	0x1
	.byte	0x50
	.long	.LVL148
	.long	.LVL150
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL117
	.long	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL127
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL127
	.long	.LVL128
	.value	0x1
	.byte	0x50
	.long	.LVL128
	.long	.LVL141
	.value	0x1
	.byte	0x56
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL149
	.long	.LVL150
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST42:
	.long	.LVL117
	.long	.LVL124
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL125
	.long	.LVL130
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL130
	.long	.LVL131-1
	.value	0x1
	.byte	0x50
	.long	.LVL131-1
	.long	.LVL132
	.value	0x1
	.byte	0x57
	.long	.LVL132
	.long	.LVL133
	.value	0x1
	.byte	0x50
	.long	.LVL133
	.long	.LVL141
	.value	0x1
	.byte	0x57
	.long	.LVL148
	.long	.LVL149
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL144
	.long	.LVL148
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
.LLST44:
	.long	.LVL118
	.long	.LVL119
	.value	0x1
	.byte	0x50
	.long	.LVL121
	.long	.LVL122
	.value	0x1
	.byte	0x50
	.long	.LVL122
	.long	.LVL150
	.value	0x2
	.byte	0x75
	.sleb128 -56
	.long	0
	.long	0
.LLST45:
	.long	.LVL155
	.long	.LVL156
	.value	0x1
	.byte	0x50
	.long	.LVL156
	.long	.LVL162
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST46:
	.long	.LVL163
	.long	.LVL164
	.value	0x1
	.byte	0x50
	.long	.LVL164
	.long	.LFE29
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST47:
	.long	.LVL164
	.long	.LVL168
	.value	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x9f
	.long	.LVL168
	.long	.LVL169
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
.LLST48:
	.long	.LVL164
	.long	.LVL165
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL164
	.long	.LVL165
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST50:
	.long	.LVL166
	.long	.LVL167
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL166
	.long	.LVL167
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST52:
	.long	.LVL166
	.long	.LVL167-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL167-1
	.long	.LVL167
	.value	0x2
	.byte	0x75
	.sleb128 -36
	.long	0
	.long	0
.LLST53:
	.long	.LVL179
	.long	.LVL181
	.value	0x1
	.byte	0x50
	.long	.LVL181
	.long	.LVL182-1
	.value	0x1
	.byte	0x52
	.long	.LVL182-1
	.long	.LVL185
	.value	0x1
	.byte	0x56
	.long	.LVL185
	.long	.LVL187
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST54:
	.long	.LVL174
	.long	.LVL175
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL175
	.long	.LVL176
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL176
	.long	.LVL177
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST55:
	.long	.LVL171
	.long	.LVL182
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL182
	.long	.LVL185
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL185
	.long	.LVL187
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL173
	.long	.LVL178
	.value	0x5
	.byte	0x3
	.long	g_kv_mgr+4
	.long	0
	.long	0
.LLST57:
	.long	.LVL194
	.long	.LVL195
	.value	0x1
	.byte	0x50
	.long	.LVL195
	.long	.LVL211
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST58:
	.long	.LVL206
	.long	.LVL207
	.value	0x3
	.byte	0x9
	.byte	0xf5
	.byte	0x9f
	.long	.LVL207
	.long	.LVL209
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST59:
	.long	.LVL192
	.long	.LVL197
	.value	0x1
	.byte	0x53
	.long	.LVL197
	.long	.LVL198
	.value	0x1
	.byte	0x57
	.long	.LVL198
	.long	.LVL207
	.value	0x1
	.byte	0x53
	.long	.LVL207
	.long	.LVL212
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST60:
	.long	.LVL204
	.long	.LVL205
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL205
	.long	.LVL207
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
.LLST61:
	.long	.LVL199
	.long	.LVL201
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL201
	.long	.LVL202
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL202
	.long	.LVL203-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL203-1
	.long	.LVL203
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST62:
	.long	.LVL199
	.long	.LVL201
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL201
	.long	.LVL202
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL202
	.long	.LVL203-1
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL203-1
	.long	.LVL203
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST63:
	.long	.LVL199
	.long	.LVL200
	.value	0x1
	.byte	0x50
	.long	.LVL200
	.long	.LVL203-1
	.value	0x2
	.byte	0x70
	.sleb128 0
	.long	.LVL203-1
	.long	.LVL203
	.value	0x2
	.byte	0x91
	.sleb128 -40
	.long	0
	.long	0
.LLST64:
	.long	.LVL217
	.long	.LVL218-1
	.value	0x1
	.byte	0x50
	.long	.LVL218-1
	.long	.LVL219
	.value	0x1
	.byte	0x56
	.long	.LVL219
	.long	.LVL220-1
	.value	0x1
	.byte	0x50
	.long	.LVL220-1
	.long	.LVL225
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST65:
	.long	.LVL214
	.long	.LVL215
	.value	0x1
	.byte	0x50
	.long	.LVL221
	.long	.LVL222
	.value	0x1
	.byte	0x50
	.long	.LVL222
	.long	.LVL225
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST66:
	.long	.LVL226
	.long	.LVL227
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST67:
	.long	.LVL233
	.long	.LVL235
	.value	0x1
	.byte	0x50
	.long	.LVL235
	.long	.LVL243
	.value	0x1
	.byte	0x57
	.long	.LVL243
	.long	.LVL244
	.value	0x1
	.byte	0x50
	.long	.LVL244
	.long	.LVL248
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST68:
	.long	.LVL230
	.long	.LVL231
	.value	0x1
	.byte	0x50
	.long	.LVL231
	.long	.LVL238
	.value	0x1
	.byte	0x53
	.long	.LVL243
	.long	.LVL248
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST69:
	.long	.LVL234
	.long	.LVL241
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST70:
	.long	.LVL234
	.long	.LVL241
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST71:
	.long	.LVL234
	.long	.LVL241
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST72:
	.long	.LVL234
	.long	.LVL235
	.value	0x1
	.byte	0x50
	.long	.LVL235
	.long	.LVL241
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST73:
	.long	.LVL238
	.long	.LVL239
	.value	0x1
	.byte	0x50
	.long	.LVL239
	.long	.LVL241
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST74:
	.long	.LVL249
	.long	.LVL253
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL253
	.long	.LVL254-1
	.value	0x1
	.byte	0x50
	.long	.LVL254-1
	.long	.LVL258
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST75:
	.long	.LVL250
	.long	.LVL251
	.value	0x1
	.byte	0x50
	.long	.LVL251
	.long	.LVL252-1
	.value	0x1
	.byte	0x52
	.long	.LVL252-1
	.long	.LVL256
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST76:
	.long	.LVL291
	.long	.LVL292
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x3c
	.byte	0x25
	.byte	0x9f
	.long	.LVL292
	.long	.LVL293-1
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
.LLST77:
	.long	.LVL259
	.long	.LVL262
	.value	0x1
	.byte	0x50
	.long	.LVL289
	.long	.LVL290
	.value	0x1
	.byte	0x50
	.long	.LVL294
	.long	.LVL295
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST78:
	.long	.LVL268
	.long	.LVL269
	.value	0x1
	.byte	0x50
	.long	.LVL273
	.long	.LVL274
	.value	0x1
	.byte	0x50
	.long	.LVL275
	.long	.LVL277
	.value	0x1
	.byte	0x50
	.long	.LVL278
	.long	.LVL279
	.value	0x1
	.byte	0x50
	.long	.LVL287
	.long	.LVL288
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST79:
	.long	.LVL260
	.long	.LVL262
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL263
	.long	.LVL271
	.value	0x1
	.byte	0x53
	.long	.LVL271
	.long	.LVL276
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1e
	.byte	0x9f
	.long	.LVL276
	.long	.LVL277
	.value	0x8
	.byte	0x77
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1f
	.byte	0x9f
	.long	.LVL277
	.long	.LVL287
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
.LLST80:
	.long	.LVL261
	.long	.LVL262
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL263
	.long	.LVL264
	.value	0x1
	.byte	0x50
	.long	.LVL264
	.long	.LVL269
	.value	0x1
	.byte	0x56
	.long	.LVL269
	.long	.LVL270
	.value	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.long	.LVL270
	.long	.LVL271
	.value	0x7
	.byte	0x75
	.sleb128 -41
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.long	.LVL272
	.long	.LVL277
	.value	0x1
	.byte	0x53
	.long	.LVL279
	.long	.LVL281
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL281
	.long	.LVL283
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL285
	.long	.LVL286
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST81:
	.long	.LVL280
	.long	.LVL281
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL282
	.long	.LVL283
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL285
	.long	.LVL286
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xac
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
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
	.long	.LBB50
	.long	.LBE50
	.long	.LBB53
	.long	.LBE53
	.long	0
	.long	0
	.long	.LFB22
	.long	.LFE22
	.long	.LFB27
	.long	.LFE27
	.long	.LFB23
	.long	.LFE23
	.long	.LFB33
	.long	.LFE33
	.long	.LFB26
	.long	.LFE26
	.long	.LFB37
	.long	.LFE37
	.long	.LFB28
	.long	.LFE28
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB29
	.long	.LFE29
	.long	.LFB40
	.long	.LFE40
	.long	.LFB34
	.long	.LFE34
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB43
	.long	.LFE43
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF4:
	.string	"size_t"
.LASF95:
	.string	"utils_crc8"
.LASF46:
	.string	"TAG_DEV_BARO"
.LASF27:
	.string	"HAL_PARTITION_OTA_TEMP"
.LASF135:
	.string	"g_kv_mgr"
.LASF5:
	.string	"__uint8_t"
.LASF48:
	.string	"TAG_DEV_UV"
.LASF30:
	.string	"HAL_PARTITION_PARAMETER_2"
.LASF31:
	.string	"HAL_PARTITION_PARAMETER_3"
.LASF119:
	.string	"__item_gc_cb"
.LASF59:
	.string	"RES_ITEM_NOT_FOUND"
.LASF140:
	.string	"aos_malloc"
.LASF13:
	.string	"long long unsigned int"
.LASF37:
	.string	"HAL_PARTITION_MAX"
.LASF145:
	.string	"aos_mutex_lock"
.LASF88:
	.string	"kv_mgr_t"
.LASF130:
	.string	"next"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF61:
	.string	"RES_FLASH_WRITE_ERR"
.LASF127:
	.string	"buffer_len"
.LASF78:
	.string	"block_info_t"
.LASF21:
	.string	"aos_sem_t"
.LASF149:
	.string	"aos_sem_wait"
.LASF64:
	.string	"state"
.LASF10:
	.string	"long int"
.LASF131:
	.string	"unclean"
.LASF84:
	.string	"write_pos"
.LASF49:
	.string	"TAG_DEV_HUMI"
.LASF106:
	.string	"kv_state_set"
.LASF56:
	.string	"RES_NO_SPACE"
.LASF71:
	.string	"origin_off"
.LASF100:
	.string	"kv_item_calc_pos"
.LASF17:
	.string	"uint16_t"
.LASF20:
	.string	"aos_mutex_t"
.LASF86:
	.string	"kv_mutex"
.LASF73:
	.string	"_kv_item_t"
.LASF29:
	.string	"HAL_PARTITION_PARAMETER_1"
.LASF24:
	.string	"HAL_PARTITION_BOOTLOADER"
.LASF151:
	.string	"aos_sem_new"
.LASF32:
	.string	"HAL_PARTITION_PARAMETER_4"
.LASF110:
	.string	"kv_item_del"
.LASF80:
	.string	"kv_initialize"
.LASF156:
	.string	"/home/stone/Documents/pca"
.LASF69:
	.string	"key_len"
.LASF70:
	.string	"val_len"
.LASF11:
	.string	"__uint32_t"
.LASF39:
	.string	"hal_partition_t"
.LASF134:
	.string	"aos_kv_deinit"
.LASF116:
	.string	"gc_index"
.LASF148:
	.string	"aos_task_exit"
.LASF65:
	.string	"reserved"
.LASF98:
	.string	"__item_find_cb"
.LASF57:
	.string	"RES_INVALID_PARAM"
.LASF90:
	.string	"kv_storeage_t"
.LASF159:
	.string	"aos_log_level"
.LASF122:
	.string	"aos_kv_del"
.LASF42:
	.string	"TAG_DEV_MAG"
.LASF0:
	.string	"unsigned int"
.LASF132:
	.string	"aos_kv_init"
.LASF51:
	.string	"TAG_DEV_HR"
.LASF12:
	.string	"long unsigned int"
.LASF101:
	.string	"blk_info"
.LASF89:
	.string	"item_func"
.LASF92:
	.string	"size"
.LASF9:
	.string	"short unsigned int"
.LASF77:
	.string	"space"
.LASF74:
	.string	"store"
.LASF52:
	.string	"TAG_DEV_GPS"
.LASF33:
	.string	"HAL_PARTITION_BT_FIRMWARE"
.LASF152:
	.string	"aos_sem_free"
.LASF79:
	.string	"_kv_mgr_t"
.LASF94:
	.string	"item"
.LASF144:
	.string	"hal_flash_erase"
.LASF143:
	.string	"hal_flash_write"
.LASF67:
	.string	"_block_header_t"
.LASF55:
	.string	"RES_CONT"
.LASF142:
	.string	"aos_task_new"
.LASF153:
	.string	"aos_mutex_free"
.LASF14:
	.string	"sizetype"
.LASF66:
	.string	"block_hdr_t"
.LASF38:
	.string	"HAL_PARTITION_NONE"
.LASF54:
	.string	"RES_OK"
.LASF81:
	.string	"gc_triggered"
.LASF19:
	.string	"aos_hdl_t"
.LASF138:
	.string	"aos_free"
.LASF118:
	.string	"origin_pos"
.LASF146:
	.string	"aos_mutex_unlock"
.LASF40:
	.string	"float"
.LASF76:
	.string	"_block_info_t"
.LASF97:
	.string	"nbytes"
.LASF82:
	.string	"gc_waiter"
.LASF124:
	.string	"sync"
.LASF60:
	.string	"RES_FLASH_READ_ERR"
.LASF121:
	.string	"kv_item_update"
.LASF104:
	.string	"kv_item_store"
.LASF115:
	.string	"kv_block_format"
.LASF136:
	.string	"BLK_MAGIC_NUM"
.LASF22:
	.string	"_Bool"
.LASF58:
	.string	"RES_MALLOC_FAILED"
.LASF6:
	.string	"unsigned char"
.LASF28:
	.string	"HAL_PARTITION_RF_FIRMWARE"
.LASF109:
	.string	"kv_item_get"
.LASF157:
	.string	"trigger_gc"
.LASF7:
	.string	"short int"
.LASF68:
	.string	"_item_header_t"
.LASF63:
	.string	"magic"
.LASF44:
	.string	"TAG_DEV_ALS"
.LASF50:
	.string	"TAG_DEV_HALL"
.LASF139:
	.string	"hal_flash_read"
.LASF137:
	.string	"ITEM_MAGIC_NUM"
.LASF23:
	.string	"HAL_PARTITION_ERROR"
.LASF120:
	.string	"exit"
.LASF75:
	.string	"kv_item_t"
.LASF160:
	.string	"__stack_chk_fail"
.LASF114:
	.string	"__item_recovery_cb"
.LASF34:
	.string	"HAL_PARTITION_SPIFFS"
.LASF113:
	.string	"new_key"
.LASF154:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF147:
	.string	"aos_sem_signal_all"
.LASF155:
	.string	"src/kvmgr.c"
.LASF26:
	.string	"HAL_PARTITION_ATE"
.LASF41:
	.string	"TAG_DEV_ACC"
.LASF2:
	.string	"long double"
.LASF85:
	.string	"gc_sem"
.LASF43:
	.string	"TAG_DEV_GYRO"
.LASF15:
	.string	"char"
.LASF108:
	.string	"func"
.LASF111:
	.string	"mode"
.LASF8:
	.string	"__uint16_t"
.LASF105:
	.string	"index"
.LASF125:
	.string	"aos_kv_get"
.LASF47:
	.string	"TAG_DEV_TEMP"
.LASF126:
	.string	"buffer"
.LASF117:
	.string	"gc_copy"
.LASF96:
	.string	"raw_read"
.LASF141:
	.string	"memcmp"
.LASF91:
	.string	"offset"
.LASF62:
	.string	"RES_FLASH_EARSE_ERR"
.LASF25:
	.string	"HAL_PARTITION_APPLICATION"
.LASF133:
	.string	"aos_kv_gc"
.LASF93:
	.string	"length"
.LASF83:
	.string	"clean_blk_nums"
.LASF112:
	.string	"origin_key"
.LASF45:
	.string	"TAG_DEV_PS"
.LASF18:
	.string	"uint32_t"
.LASF128:
	.string	"kv_init"
.LASF16:
	.string	"uint8_t"
.LASF129:
	.string	"nums"
.LASF72:
	.string	"item_hdr_t"
.LASF107:
	.string	"kv_item_traverse"
.LASF87:
	.string	"block_info"
.LASF150:
	.string	"aos_mutex_new"
.LASF158:
	.string	"kv_item_free"
.LASF99:
	.string	"raw_erase"
.LASF103:
	.string	"raw_write"
.LASF53:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF102:
	.string	"blk_index"
.LASF35:
	.string	"HAL_PARTITION_CUSTOM_1"
.LASF36:
	.string	"HAL_PARTITION_CUSTOM_2"
.LASF123:
	.string	"aos_kv_set"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
