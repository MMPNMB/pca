	.file	"buf.c"
	.text
.Ltext0:
	.section	.text.unlikely.net_buf_pool_get,"ax",@progbits
.LCOLDB0:
	.section	.text.net_buf_pool_get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.net_buf_pool_get
.Ltext_cold0:
	.section	.text.net_buf_pool_get
	.globl	net_buf_pool_get
	.type	net_buf_pool_get, @function
net_buf_pool_get:
.LFB74:
	.file 1 "src/buf.c"
	.loc 1 3166 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3167 0
	movl	8(%ebp), %eax
	.loc 1 3168 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3167 0
	movl	net_buf_pool_list(,%eax,4), %eax
	.loc 1 3168 0
	ret
	.cfi_endproc
.LFE74:
	.size	net_buf_pool_get, .-net_buf_pool_get
	.section	.text.unlikely.net_buf_pool_get
.LCOLDE0:
	.section	.text.net_buf_pool_get
.LHOTE0:
	.section	.text.unlikely.net_buf_id,"ax",@progbits
.LCOLDB1:
	.section	.text.net_buf_id,"ax",@progbits
.LHOTB1:
	.globl	net_buf_id
	.type	net_buf_id, @function
net_buf_id:
.LFB76:
	.loc 1 3186 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3186 0
	movl	8(%ebp), %eax
.LVL2:
.LBB64:
.LBB65:
	.loc 1 3167 0
	movzbl	6(%eax), %edx
.LVL3:
	movl	net_buf_pool_list(,%edx,4), %ebx
.LVL4:
.LBE65:
.LBE64:
	.loc 1 3190 0
	movzwl	16(%ebx), %ecx
	movzwl	18(%ebx), %edx
	subl	24(%ebx), %eax
	.loc 1 3191 0
	popl	%ebx
	.cfi_restore 3
.LVL5:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3190 0
	addl	$3, %ecx
	addl	$3, %edx
	andl	$-4, %edx
	andl	$-4, %ecx
	leal	16(%ecx,%edx), %ecx
	xorl	%edx, %edx
	divl	%ecx
	.loc 1 3191 0
	ret
	.cfi_endproc
.LFE76:
	.size	net_buf_id, .-net_buf_id
	.section	.text.unlikely.net_buf_id
.LCOLDE1:
	.section	.text.net_buf_id
.LHOTE1:
	.section	.text.unlikely.net_buf_reset,"ax",@progbits
.LCOLDB2:
	.section	.text.net_buf_reset,"ax",@progbits
.LHOTB2:
	.globl	net_buf_reset
	.type	net_buf_reset, @function
net_buf_reset:
.LFB78:
	.loc 1 3202 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3202 0
	movl	8(%ebp), %eax
	.loc 1 3206 0
	leal	16(%eax), %edx
	.loc 1 3205 0
	movw	$0, 12(%eax)
	.loc 1 3206 0
	movl	%edx, 8(%eax)
	.loc 1 3207 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE78:
	.size	net_buf_reset, .-net_buf_reset
	.section	.text.unlikely.net_buf_reset
.LCOLDE2:
	.section	.text.net_buf_reset
.LHOTE2:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"index < (sizeof(net_buf_pool_list) / 4)"
.LC4:
	.string	"kernel/protocols/bluetooth/common/buf.c"
	.section	.text.unlikely.net_buf_alloc,"ax",@progbits
.LCOLDB5:
	.section	.text.net_buf_alloc,"ax",@progbits
.LHOTB5:
	.globl	net_buf_alloc
	.type	net_buf_alloc, @function
net_buf_alloc:
.LFB79:
	.loc 1 3209 0
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
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 3209 0
	movl	8(%ebp), %esi
	.loc 1 3214 0
	call	irq_lock
.LVL8:
	movl	%eax, %edx
.LVL9:
	.loc 1 3215 0
	movw	14(%esi), %ax
.LVL10:
	testw	%ax, %ax
	je	.L8
.LBB73:
	.loc 1 3217 0
	cmpw	12(%esi), %ax
	jnb	.L9
	.loc 1 3218 0
	pushl	%ecx
	pushl	%ecx
	pushl	$0
	pushl	%esi
	movl	%edx, -28(%ebp)
	call	k_queue_get
.LVL11:
	.loc 1 3219 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 3218 0
	movl	%eax, %ebx
.LVL12:
	.loc 1 3219 0
	movl	-28(%ebp), %edx
	je	.L9
	.loc 1 3220 0
	subl	$12, %esp
	pushl	%edx
	call	irq_unlock
.LVL13:
	.loc 1 3221 0
	addl	$16, %esp
	jmp	.L10
.LVL14:
.L9:
	.loc 1 3224 0
	movzwl	14(%esi), %edi
	.loc 1 3225 0
	subl	$12, %esp
	.loc 1 3224 0
	leal	-1(%edi), %eax
	movw	%ax, 14(%esi)
.LVL15:
	.loc 1 3225 0
	pushl	%edx
	call	irq_unlock
.LVL16:
.LBB74:
.LBB75:
	.loc 1 3196 0
	movzwl	16(%esi), %edx
	movzwl	18(%esi), %eax
.LBB76:
.LBB77:
	.loc 1 3173 0
	addl	$16, %esp
.LBE77:
.LBE76:
	.loc 1 3196 0
	movzwl	12(%esi), %ebx
	addl	$3, %edx
	addl	$3, %eax
	andl	$-4, %edx
	andl	$-4, %eax
	subl	%edi, %ebx
	leal	16(%edx,%eax), %eax
	imull	%eax, %ebx
	addl	24(%esi), %ebx
.LVL17:
.LBB80:
.LBB78:
	.loc 1 3173 0
	cmpl	net_buf_pool_list, %esi
	je	.L13
.LVL18:
	cmpl	net_buf_pool_list+4, %esi
	je	.L14
.LVL19:
	cmpl	net_buf_pool_list+8, %esi
	je	.L15
.LVL20:
	.loc 1 3179 0
	pushl	$.LC3
	pushl	$__func__.4661
	pushl	$117
	pushl	$.LC4
	call	__assert_func
.LVL21:
.L8:
.LBE78:
.LBE80:
.LBE75:
.LBE74:
.LBE73:
	.loc 1 3229 0
	subl	$12, %esp
	pushl	%edx
	call	irq_unlock
.LVL22:
	.loc 1 3230 0
	popl	%eax
	popl	%edx
	pushl	12(%ebp)
	pushl	%esi
	call	k_queue_get
.LVL23:
	movl	%eax, %ebx
.LVL24:
	.loc 1 3231 0
	addl	$16, %esp
	.loc 1 3234 0
	xorl	%eax, %eax
.LVL25:
	.loc 1 3231 0
	testl	%ebx, %ebx
	je	.L20
.LVL26:
.L10:
.LBB84:
.LBB85:
	.loc 1 3206 0
	leal	16(%ebx), %eax
.LBE85:
.LBE84:
	.loc 1 3239 0
	movb	$1, 4(%ebx)
	.loc 1 3240 0
	movb	$0, 5(%ebx)
	.loc 1 3241 0
	movl	$0, (%ebx)
.LVL27:
.LBB87:
.LBB86:
	.loc 1 3205 0
	movw	$0, 12(%ebx)
	.loc 1 3206 0
	movl	%eax, 8(%ebx)
.LVL28:
.LBE86:
.LBE87:
	.loc 1 3245 0
	movl	%ebx, %eax
	jmp	.L20
.LVL29:
.L13:
.LBB88:
.LBB83:
.LBB82:
.LBB81:
.LBB79:
	.loc 1 3172 0
	xorl	%eax, %eax
	jmp	.L11
.LVL30:
.L14:
	movl	$1, %eax
	jmp	.L11
.LVL31:
.L15:
	movl	$2, %eax
.LVL32:
.L11:
.LBE79:
.LBE81:
	.loc 1 3197 0
	movb	%al, 6(%ebx)
	.loc 1 3198 0
	movl	16(%esi), %eax
	movw	%ax, 14(%ebx)
.LVL33:
.LBE82:
.LBE83:
	.loc 1 3227 0
	jmp	.L10
.LVL34:
.L20:
.LBE88:
	.loc 1 3246 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL35:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	net_buf_alloc, .-net_buf_alloc
	.section	.text.unlikely.net_buf_alloc
.LCOLDE5:
	.section	.text.net_buf_alloc
.LHOTE5:
	.section	.text.unlikely.net_buf_get,"ax",@progbits
.LCOLDB6:
	.section	.text.net_buf_get,"ax",@progbits
.LHOTB6:
	.globl	net_buf_get
	.type	net_buf_get, @function
net_buf_get:
.LFB80:
	.loc 1 3248 0
	.cfi_startproc
.LVL36:
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
	.loc 1 3248 0
	movl	8(%ebp), %edi
	.loc 1 3251 0
	pushl	12(%ebp)
	pushl	%edi
	call	k_queue_get
.LVL37:
	.loc 1 3252 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 3251 0
	movl	%eax, %esi
.LVL38:
	movl	%eax, %ebx
	.loc 1 3252 0
	je	.L30
.LVL39:
.L25:
	.loc 1 3258 0 discriminator 1
	testb	$1, 5(%ebx)
	je	.L31
	.loc 1 3259 0 discriminator 3
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%edi
	call	k_queue_get
.LVL40:
	.loc 1 3261 0 discriminator 3
	andb	$-2, 5(%ebx)
.LVL41:
	.loc 1 3259 0 discriminator 3
	movl	%eax, (%ebx)
	.loc 1 3261 0 discriminator 3
	addl	$16, %esp
	.loc 1 3258 0 discriminator 3
	movl	%eax, %ebx
	jmp	.L25
.LVL42:
.L31:
	.loc 1 3263 0
	movl	$0, (%ebx)
	.loc 1 3266 0
	movl	%esi, %eax
	jmp	.L24
.LVL43:
.L30:
	xorl	%eax, %eax
.LVL44:
.L24:
	.loc 1 3267 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL45:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE80:
	.size	net_buf_get, .-net_buf_get
	.section	.text.unlikely.net_buf_get
.LCOLDE6:
	.section	.text.net_buf_get
.LHOTE6:
	.section	.text.unlikely.net_buf_reserve,"ax",@progbits
.LCOLDB7:
	.section	.text.net_buf_reserve,"ax",@progbits
.LHOTB7:
	.globl	net_buf_reserve
	.type	net_buf_reserve, @function
net_buf_reserve:
.LFB81:
	.loc 1 3269 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3269 0
	movl	8(%ebp), %edx
	.loc 1 3273 0
	leal	16(%edx), %eax
	addl	12(%ebp), %eax
	movl	%eax, 8(%edx)
	.loc 1 3274 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE81:
	.size	net_buf_reserve, .-net_buf_reserve
	.section	.text.unlikely.net_buf_reserve
.LCOLDE7:
	.section	.text.net_buf_reserve
.LHOTE7:
	.section	.text.unlikely.net_buf_slist_put,"ax",@progbits
.LCOLDB8:
	.section	.text.net_buf_slist_put,"ax",@progbits
.LHOTB8:
	.globl	net_buf_slist_put
	.type	net_buf_slist_put, @function
net_buf_slist_put:
.LFB82:
	.loc 1 3276 0
	.cfi_startproc
.LVL47:
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
	.loc 1 3276 0
	movl	12(%ebp), %edi
.LVL48:
	movl	8(%ebp), %esi
	.loc 1 3281 0
	movl	%edi, %ebx
.LVL49:
.L35:
	.loc 1 3281 0 is_stmt 0 discriminator 1
	movl	(%ebx), %eax
	testl	%eax, %eax
	je	.L41
	.loc 1 3282 0 is_stmt 1 discriminator 3
	orb	$1, 5(%ebx)
.LVL50:
	movl	%eax, %ebx
	jmp	.L35
.LVL51:
.L41:
	.loc 1 3284 0
	call	irq_lock
.LVL52:
.LBB91:
.LBB92:
	.loc 1 771 0
	movl	4(%esi), %edx
	testl	%edx, %edx
	jne	.L37
	.loc 1 772 0
	movl	%edi, (%esi)
	jmp	.L40
.L37:
	.loc 1 775 0
	movl	%edi, (%edx)
.L40:
	.loc 1 776 0
	movl	%ebx, 4(%esi)
.LVL53:
.LBE92:
.LBE91:
	.loc 1 3286 0
	movl	%eax, 8(%ebp)
	.loc 1 3287 0
	addl	$12, %esp
	popl	%ebx
	.cfi_restore 3
.LVL54:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3286 0
	jmp	irq_unlock
.LVL55:
	.cfi_endproc
.LFE82:
	.size	net_buf_slist_put, .-net_buf_slist_put
	.section	.text.unlikely.net_buf_slist_put
.LCOLDE8:
	.section	.text.net_buf_slist_put
.LHOTE8:
	.section	.text.unlikely.net_buf_slist_get,"ax",@progbits
.LCOLDB9:
	.section	.text.net_buf_slist_get,"ax",@progbits
.LHOTB9:
	.globl	net_buf_slist_get
	.type	net_buf_slist_get, @function
net_buf_slist_get:
.LFB83:
	.loc 1 3289 0
	.cfi_startproc
.LVL56:
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
	.loc 1 3289 0
	movl	8(%ebp), %ebx
	.loc 1 3293 0
	call	irq_lock
.LVL57:
	movl	(%ebx), %edi
.LVL58:
.LBB101:
.LBB102:
	.loc 1 812 0
	testl	%edi, %edi
	je	.L43
.LVL59:
.LBB103:
.LBB104:
	.loc 1 803 0
	cmpl	4(%ebx), %edi
	.loc 1 802 0
	movl	(%edi), %edx
	movl	%edx, (%ebx)
	.loc 1 803 0
	jne	.L43
	.loc 1 804 0
	movl	%edx, 4(%ebx)
.LVL60:
.L43:
.LBE104:
.LBE103:
.LBE102:
.LBE101:
	.loc 1 3295 0
	subl	$12, %esp
	movl	%edi, %esi
	pushl	%eax
	call	irq_unlock
.LVL61:
	.loc 1 3296 0
	addl	$16, %esp
	.loc 1 3298 0
	xorl	%eax, %eax
	.loc 1 3296 0
	testl	%edi, %edi
	je	.L44
.L45:
.LVL62:
	.loc 1 3301 0 discriminator 1
	testb	$1, 5(%esi)
	je	.L56
	.loc 1 3302 0 discriminator 3
	call	irq_lock
.LVL63:
	movl	(%ebx), %edx
.LBB105:
.LBB106:
	.loc 1 812 0 discriminator 3
	testl	%edx, %edx
	je	.L46
.LVL64:
.LBB107:
.LBB108:
	.loc 1 803 0
	cmpl	4(%ebx), %edx
	.loc 1 802 0
	movl	(%edx), %ecx
	movl	%ecx, (%ebx)
	.loc 1 803 0
	jne	.L46
	.loc 1 804 0
	movl	%ecx, 4(%ebx)
.LVL65:
.L46:
.LBE108:
.LBE107:
.LBE106:
.LBE105:
	.loc 1 3304 0
	subl	$12, %esp
	.loc 1 3303 0
	movl	%edx, (%esi)
	.loc 1 3304 0
	pushl	%eax
	call	irq_unlock
.LVL66:
	.loc 1 3306 0
	andb	$-2, 5(%esi)
	.loc 1 3301 0
	addl	$16, %esp
	movl	(%esi), %esi
.LVL67:
	jmp	.L45
.L56:
	.loc 1 3308 0
	movl	$0, (%esi)
	.loc 1 3311 0
	movl	%edi, %eax
.LVL68:
.L44:
	.loc 1 3312 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL69:
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE83:
	.size	net_buf_slist_get, .-net_buf_slist_get
	.section	.text.unlikely.net_buf_slist_get
.LCOLDE9:
	.section	.text.net_buf_slist_get
.LHOTE9:
	.section	.text.unlikely.net_buf_put,"ax",@progbits
.LCOLDB10:
	.section	.text.net_buf_put,"ax",@progbits
.LHOTB10:
	.globl	net_buf_put
	.type	net_buf_put, @function
net_buf_put:
.LFB84:
	.loc 1 3314 0
	.cfi_startproc
.LVL70:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 3314 0
	movl	12(%ebp), %edx
.LVL71:
	.loc 1 3318 0
	movl	%edx, %eax
.LVL72:
.L58:
	.loc 1 3318 0 is_stmt 0 discriminator 1
	movl	(%eax), %ecx
	testl	%ecx, %ecx
	je	.L61
	.loc 1 3319 0 is_stmt 1 discriminator 3
	orb	$1, 5(%eax)
.LVL73:
	movl	%ecx, %eax
	jmp	.L58
.LVL74:
.L61:
	.loc 1 3321 0
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	pushl	8(%ebp)
	call	k_queue_append_list
.LVL75:
	.loc 1 3322 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE84:
	.size	net_buf_put, .-net_buf_put
	.section	.text.unlikely.net_buf_put
.LCOLDE10:
	.section	.text.net_buf_put
.LHOTE10:
	.section	.text.unlikely.net_buf_unref,"ax",@progbits
.LCOLDB11:
	.section	.text.net_buf_unref,"ax",@progbits
.LHOTB11:
	.globl	net_buf_unref
	.type	net_buf_unref, @function
net_buf_unref:
.LFB85:
	.loc 1 3324 0
	.cfi_startproc
.LVL76:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	movl	8(%ebp), %eax
.LVL77:
.L63:
	.loc 1 3326 0
	testl	%eax, %eax
	je	.L62
.LBB116:
	.loc 1 3330 0
	movb	4(%eax), %cl
	.loc 1 3327 0
	movl	(%eax), %ebx
.LVL78:
	.loc 1 3330 0
	leal	-1(%ecx), %edx
	testb	%dl, %dl
	movb	%dl, 4(%eax)
	jne	.L62
.LBB117:
.LBB118:
	.loc 1 3167 0
	movzbl	6(%eax), %edx
.LBE118:
.LBE117:
	.loc 1 3333 0
	movl	$0, (%eax)
.LVL79:
.LBB120:
.LBB119:
	.loc 1 3167 0
	movl	net_buf_pool_list(,%edx,4), %edx
.LVL80:
.LBE119:
.LBE120:
	.loc 1 3337 0
	movl	20(%edx), %ecx
	testl	%ecx, %ecx
	je	.L65
	.loc 1 3338 0
	subl	$12, %esp
	pushl	%eax
	call	*%ecx
.LVL81:
	jmp	.L70
.LVL82:
.L65:
.LBB121:
.LBB122:
	.loc 1 1403 0
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	k_queue_prepend
.LVL83:
.L70:
	addl	$16, %esp
.LBE122:
.LBE121:
.LBE116:
	.loc 1 3324 0
	movl	%ebx, %eax
	jmp	.L63
.LVL84:
.L62:
	.loc 1 3344 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE85:
	.size	net_buf_unref, .-net_buf_unref
	.section	.text.unlikely.net_buf_unref
.LCOLDE11:
	.section	.text.net_buf_unref
.LHOTE11:
	.section	.text.unlikely.net_buf_ref,"ax",@progbits
.LCOLDB12:
	.section	.text.net_buf_ref,"ax",@progbits
.LHOTB12:
	.globl	net_buf_ref
	.type	net_buf_ref, @function
net_buf_ref:
.LFB86:
	.loc 1 3346 0
	.cfi_startproc
.LVL85:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3346 0
	movl	8(%ebp), %eax
	.loc 1 3349 0
	incb	4(%eax)
	.loc 1 3351 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE86:
	.size	net_buf_ref, .-net_buf_ref
	.section	.text.unlikely.net_buf_ref
.LCOLDE12:
	.section	.text.net_buf_ref
.LHOTE12:
	.section	.text.unlikely.net_buf_clone,"ax",@progbits
.LCOLDB13:
	.section	.text.net_buf_clone,"ax",@progbits
.LHOTB13:
	.globl	net_buf_clone
	.type	net_buf_clone, @function
net_buf_clone:
.LFB87:
	.loc 1 3353 0
	.cfi_startproc
.LVL86:
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
	.loc 1 3353 0
	movl	8(%ebp), %esi
	.loc 1 3358 0
	pushl	12(%ebp)
.LBB123:
.LBB124:
	.loc 1 3167 0
	movzbl	6(%esi), %eax
.LBE124:
.LBE123:
	.loc 1 3358 0
	pushl	net_buf_pool_list(,%eax,4)
	call	net_buf_alloc
.LVL87:
	.loc 1 3359 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L74
.LVL88:
.LBB125:
.LBB126:
	.loc 1 3273 0
	movl	8(%esi), %ebx
	movl	%eax, %edx
.LBE126:
.LBE125:
.LBB128:
.LBB129:
.LBB130:
.LBB131:
	.loc 1 1345 0
	movl	12(%eax), %edi
.LBE131:
.LBE130:
.LBE129:
.LBE128:
.LBB133:
.LBB127:
	.loc 1 3273 0
	subl	%esi, %edx
	addl	%edx, %ebx
	movl	%ebx, 8(%eax)
.LVL89:
.LBE127:
.LBE133:
	.loc 1 3365 0
	movzwl	12(%esi), %ecx
	movl	8(%esi), %esi
.LVL90:
.LBB134:
.LBB132:
	.loc 1 3415 0
	leal	(%ecx,%edi), %edx
	movw	%dx, 12(%eax)
.LVL91:
.LBE132:
.LBE134:
	.loc 1 3365 0
	movzwl	%di, %edx
	addl	%ebx, %edx
	movl	%edx, %edi
	rep movsb
.L74:
	.loc 1 3367 0
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
.LFE87:
	.size	net_buf_clone, .-net_buf_clone
	.section	.text.unlikely.net_buf_clone
.LCOLDE13:
	.section	.text.net_buf_clone
.LHOTE13:
	.section	.text.unlikely.net_buf_frag_last,"ax",@progbits
.LCOLDB14:
	.section	.text.net_buf_frag_last,"ax",@progbits
.LHOTB14:
	.globl	net_buf_frag_last
	.type	net_buf_frag_last, @function
net_buf_frag_last:
.LFB88:
	.loc 1 3369 0
	.cfi_startproc
.LVL92:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
.LVL93:
.L80:
	.loc 1 3371 0
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L83
	movl	%edx, %eax
.LVL94:
	jmp	.L80
.LVL95:
.L83:
	.loc 1 3375 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE88:
	.size	net_buf_frag_last, .-net_buf_frag_last
	.section	.text.unlikely.net_buf_frag_last
.LCOLDE14:
	.section	.text.net_buf_frag_last
.LHOTE14:
	.section	.text.unlikely.net_buf_frag_insert,"ax",@progbits
.LCOLDB15:
	.section	.text.net_buf_frag_insert,"ax",@progbits
.LHOTB15:
	.globl	net_buf_frag_insert
	.type	net_buf_frag_insert, @function
net_buf_frag_insert:
.LFB89:
	.loc 1 3377 0
	.cfi_startproc
.LVL96:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 3377 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	.loc 1 3380 0
	movl	(%edx), %ebx
	movl	%ecx, %eax
	testl	%ebx, %ebx
	je	.L85
.LVL97:
.L86:
.LBB135:
.LBB136:
	.loc 1 3371 0
	movl	(%eax), %esi
	testl	%esi, %esi
	je	.L92
	movl	%esi, %eax
.LVL98:
	jmp	.L86
.LVL99:
.L92:
.LBE136:
.LBE135:
	.loc 1 3381 0
	movl	%ebx, (%eax)
.L85:
	.loc 1 3383 0
	movl	%ecx, (%edx)
	.loc 1 3384 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE89:
	.size	net_buf_frag_insert, .-net_buf_frag_insert
	.section	.text.unlikely.net_buf_frag_insert
.LCOLDE15:
	.section	.text.net_buf_frag_insert
.LHOTE15:
	.section	.text.unlikely.net_buf_frag_add,"ax",@progbits
.LCOLDB16:
	.section	.text.net_buf_frag_add,"ax",@progbits
.LHOTB16:
	.globl	net_buf_frag_add
	.type	net_buf_frag_add, @function
net_buf_frag_add:
.LFB90:
	.loc 1 3386 0
	.cfi_startproc
.LVL100:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3386 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 3388 0
	testl	%ebx, %ebx
	movl	%ebx, %edx
	jne	.L98
.LVL101:
.LBB137:
.LBB138:
	.loc 1 3349 0
	incb	4(%eax)
.LVL102:
.LBE138:
.LBE137:
	.loc 1 3389 0
	jmp	.L95
.LVL103:
.L98:
.LBB139:
.LBB140:
	.loc 1 3371 0
	movl	(%edx), %ecx
	testl	%ecx, %ecx
	je	.L101
	movl	%ecx, %edx
.LVL104:
	jmp	.L98
.LVL105:
.L101:
.LBE140:
.LBE139:
	.loc 1 3391 0
	pushl	%eax
	pushl	%edx
	call	net_buf_frag_insert
.LVL106:
	.loc 1 3392 0
	popl	%eax
	popl	%edx
	movl	%ebx, %eax
.LVL107:
.L95:
	.loc 1 3393 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE90:
	.size	net_buf_frag_add, .-net_buf_frag_add
	.section	.text.unlikely.net_buf_frag_add
.LCOLDE16:
	.section	.text.net_buf_frag_add
.LHOTE16:
	.section	.text.unlikely.net_buf_frag_del,"ax",@progbits
.LCOLDB17:
	.section	.text.net_buf_frag_del,"ax",@progbits
.LHOTB17:
	.globl	net_buf_frag_del
	.type	net_buf_frag_del, @function
net_buf_frag_del:
.LFB91:
	.loc 1 3395 0
	.cfi_startproc
.LVL108:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 3395 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 3398 0
	testl	%eax, %eax
	je	.L103
	.loc 1 3401 0
	movl	(%edx), %ecx
	movl	%ecx, (%eax)
.L103:
	.loc 1 3403 0
	movl	(%edx), %ebx
.LVL109:
	.loc 1 3407 0
	subl	$12, %esp
	.loc 1 3404 0
	movl	$0, (%edx)
	.loc 1 3407 0
	pushl	%edx
	call	net_buf_unref
.LVL110:
	.loc 1 3409 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL111:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE91:
	.size	net_buf_frag_del, .-net_buf_frag_del
	.section	.text.unlikely.net_buf_frag_del
.LCOLDE17:
	.section	.text.net_buf_frag_del
.LHOTE17:
	.section	.text.unlikely.net_buf_simple_add,"ax",@progbits
.LCOLDB18:
	.section	.text.net_buf_simple_add,"ax",@progbits
.LHOTB18:
	.globl	net_buf_simple_add
	.type	net_buf_simple_add, @function
net_buf_simple_add:
.LFB92:
	.loc 1 3411 0
	.cfi_startproc
.LVL112:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3411 0
	movl	8(%ebp), %ecx
.LVL113:
.LBB141:
.LBB142:
	.loc 1 1345 0
	movzwl	4(%ecx), %eax
	movl	%eax, %edx
.LBE142:
.LBE141:
	.loc 1 3415 0
	addl	12(%ebp), %edx
.LBB144:
.LBB143:
	.loc 1 1345 0
	addl	(%ecx), %eax
.LVL114:
.LBE143:
.LBE144:
	.loc 1 3415 0
	movw	%dx, 4(%ecx)
	.loc 1 3417 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE92:
	.size	net_buf_simple_add, .-net_buf_simple_add
	.section	.text.unlikely.net_buf_simple_add
.LCOLDE18:
	.section	.text.net_buf_simple_add
.LHOTE18:
	.section	.text.unlikely.net_buf_simple_add_mem,"ax",@progbits
.LCOLDB19:
	.section	.text.net_buf_simple_add_mem,"ax",@progbits
.LHOTB19:
	.globl	net_buf_simple_add_mem
	.type	net_buf_simple_add_mem, @function
net_buf_simple_add_mem:
.LFB93:
	.loc 1 3420 0
	.cfi_startproc
.LVL115:
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
	.loc 1 3420 0
	movl	8(%ebp), %ebx
.LVL116:
	movl	16(%ebp), %ecx
.LVL117:
	movl	12(%ebp), %esi
.LBB145:
.LBB146:
.LBB147:
.LBB148:
	.loc 1 1345 0
	movzwl	4(%ebx), %eax
	movl	%eax, %edx
	addl	(%ebx), %eax
.LVL118:
.LBE148:
.LBE147:
	.loc 1 3415 0
	addl	%ecx, %edx
	movw	%dx, 4(%ebx)
.LVL119:
.LBE146:
.LBE145:
	.loc 1 3422 0
	movl	%eax, %edi
	rep movsb
	.loc 1 3423 0
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
.LFE93:
	.size	net_buf_simple_add_mem, .-net_buf_simple_add_mem
	.section	.text.unlikely.net_buf_simple_add_mem
.LCOLDE19:
	.section	.text.net_buf_simple_add_mem
.LHOTE19:
	.section	.text.unlikely.net_buf_simple_add_u8,"ax",@progbits
.LCOLDB20:
	.section	.text.net_buf_simple_add_u8,"ax",@progbits
.LHOTB20:
	.globl	net_buf_simple_add_u8
	.type	net_buf_simple_add_u8, @function
net_buf_simple_add_u8:
.LFB94:
	.loc 1 3425 0
	.cfi_startproc
.LVL120:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3425 0
	movl	8(%ebp), %ecx
.LVL121:
.LBB149:
.LBB150:
.LBB151:
.LBB152:
	.loc 1 1345 0
	movzwl	4(%ecx), %eax
	movl	%eax, %edx
	addl	(%ecx), %eax
.LVL122:
.LBE152:
.LBE151:
	.loc 1 3415 0
	incl	%edx
	movw	%dx, 4(%ecx)
.LVL123:
.LBE150:
.LBE149:
	.loc 1 3429 0
	movl	12(%ebp), %edx
	movb	%dl, (%eax)
	.loc 1 3431 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE94:
	.size	net_buf_simple_add_u8, .-net_buf_simple_add_u8
	.section	.text.unlikely.net_buf_simple_add_u8
.LCOLDE20:
	.section	.text.net_buf_simple_add_u8
.LHOTE20:
	.section	.text.unlikely.net_buf_simple_add_le16,"ax",@progbits
.LCOLDB21:
	.section	.text.net_buf_simple_add_le16,"ax",@progbits
.LHOTB21:
	.globl	net_buf_simple_add_le16
	.type	net_buf_simple_add_le16, @function
net_buf_simple_add_le16:
.LFB95:
	.loc 1 3433 0
	.cfi_startproc
.LVL124:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3433 0
	movl	8(%ebp), %ecx
.LVL125:
.LBB153:
.LBB154:
.LBB155:
.LBB156:
	.loc 1 1345 0
	movzwl	4(%ecx), %edx
	movl	%edx, %eax
	addl	(%ecx), %edx
.LVL126:
.LBE156:
.LBE155:
	.loc 1 3415 0
	addl	$2, %eax
	movw	%ax, 4(%ecx)
.LVL127:
.LBE154:
.LBE153:
	.loc 1 3436 0
	movl	12(%ebp), %eax
	movw	%ax, (%edx)
	.loc 1 3437 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE95:
	.size	net_buf_simple_add_le16, .-net_buf_simple_add_le16
	.section	.text.unlikely.net_buf_simple_add_le16
.LCOLDE21:
	.section	.text.net_buf_simple_add_le16
.LHOTE21:
	.section	.text.unlikely.net_buf_simple_add_be16,"ax",@progbits
.LCOLDB22:
	.section	.text.net_buf_simple_add_be16,"ax",@progbits
.LHOTB22:
	.globl	net_buf_simple_add_be16
	.type	net_buf_simple_add_be16, @function
net_buf_simple_add_be16:
.LFB96:
	.loc 1 3439 0
	.cfi_startproc
.LVL128:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL129:
	.loc 1 3439 0
	movl	8(%ebp), %ecx
.LVL130:
.LBB157:
.LBB158:
.LBB159:
.LBB160:
	.loc 1 1345 0
	movzwl	4(%ecx), %edx
	movl	%edx, %eax
	addl	(%ecx), %edx
.LVL131:
.LBE160:
.LBE159:
	.loc 1 3415 0
	addl	$2, %eax
	movw	%ax, 4(%ecx)
.LVL132:
.LBE158:
.LBE157:
	.loc 1 3442 0
	movl	12(%ebp), %eax
	xchgb	%ah, %al
	movw	%ax, (%edx)
	.loc 1 3443 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE96:
	.size	net_buf_simple_add_be16, .-net_buf_simple_add_be16
	.section	.text.unlikely.net_buf_simple_add_be16
.LCOLDE22:
	.section	.text.net_buf_simple_add_be16
.LHOTE22:
	.section	.text.unlikely.net_buf_simple_add_le32,"ax",@progbits
.LCOLDB23:
	.section	.text.net_buf_simple_add_le32,"ax",@progbits
.LHOTB23:
	.globl	net_buf_simple_add_le32
	.type	net_buf_simple_add_le32, @function
net_buf_simple_add_le32:
.LFB97:
	.loc 1 3445 0
	.cfi_startproc
.LVL133:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3445 0
	movl	8(%ebp), %ecx
.LVL134:
.LBB161:
.LBB162:
.LBB163:
.LBB164:
	.loc 1 1345 0
	movzwl	4(%ecx), %edx
	movl	%edx, %eax
	addl	(%ecx), %edx
.LVL135:
.LBE164:
.LBE163:
	.loc 1 3415 0
	addl	$4, %eax
	movw	%ax, 4(%ecx)
.LVL136:
.LBE162:
.LBE161:
	.loc 1 3448 0
	movl	12(%ebp), %eax
	movl	%eax, (%edx)
	.loc 1 3449 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE97:
	.size	net_buf_simple_add_le32, .-net_buf_simple_add_le32
	.section	.text.unlikely.net_buf_simple_add_le32
.LCOLDE23:
	.section	.text.net_buf_simple_add_le32
.LHOTE23:
	.section	.text.unlikely.net_buf_simple_add_be32,"ax",@progbits
.LCOLDB24:
	.section	.text.net_buf_simple_add_be32,"ax",@progbits
.LHOTB24:
	.globl	net_buf_simple_add_be32
	.type	net_buf_simple_add_be32, @function
net_buf_simple_add_be32:
.LFB98:
	.loc 1 3451 0
	.cfi_startproc
.LVL137:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3451 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %ecx
.LBB165:
.LBB166:
.LBB167:
.LBB168:
	.loc 1 1345 0
	movzwl	4(%ebx), %edx
	bswap	%ecx
.LVL138:
	movl	%edx, %eax
	addl	(%ebx), %edx
.LVL139:
.LBE168:
.LBE167:
	.loc 1 3415 0
	addl	$4, %eax
	movw	%ax, 4(%ebx)
.LVL140:
.LBE166:
.LBE165:
	.loc 1 3454 0
	movl	%ecx, (%edx)
	.loc 1 3455 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE98:
	.size	net_buf_simple_add_be32, .-net_buf_simple_add_be32
	.section	.text.unlikely.net_buf_simple_add_be32
.LCOLDE24:
	.section	.text.net_buf_simple_add_be32
.LHOTE24:
	.section	.text.unlikely.net_buf_simple_push,"ax",@progbits
.LCOLDB25:
	.section	.text.net_buf_simple_push,"ax",@progbits
.LHOTB25:
	.globl	net_buf_simple_push
	.type	net_buf_simple_push, @function
net_buf_simple_push:
.LFB99:
	.loc 1 3457 0
	.cfi_startproc
.LVL141:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3457 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %ecx
	.loc 1 3460 0
	movl	(%edx), %eax
	.loc 1 3461 0
	addw	%cx, 4(%edx)
	.loc 1 3460 0
	subl	%ecx, %eax
	movl	%eax, (%edx)
	.loc 1 3463 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE99:
	.size	net_buf_simple_push, .-net_buf_simple_push
	.section	.text.unlikely.net_buf_simple_push
.LCOLDE25:
	.section	.text.net_buf_simple_push
.LHOTE25:
	.section	.text.unlikely.net_buf_simple_push_le16,"ax",@progbits
.LCOLDB26:
	.section	.text.net_buf_simple_push_le16,"ax",@progbits
.LHOTB26:
	.globl	net_buf_simple_push_le16
	.type	net_buf_simple_push_le16, @function
net_buf_simple_push_le16:
.LFB100:
	.loc 1 3465 0
	.cfi_startproc
.LVL142:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3465 0
	movl	8(%ebp), %eax
.LVL143:
.LBB169:
.LBB170:
	.loc 1 3460 0
	movl	(%eax), %edx
	.loc 1 3461 0
	addw	$2, 4(%eax)
.LVL144:
	.loc 1 3460 0
	leal	-2(%edx), %ecx
	movl	%ecx, (%eax)
.LBE170:
.LBE169:
	.loc 1 3468 0
	movl	12(%ebp), %eax
	movw	%ax, -2(%edx)
	.loc 1 3469 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE100:
	.size	net_buf_simple_push_le16, .-net_buf_simple_push_le16
	.section	.text.unlikely.net_buf_simple_push_le16
.LCOLDE26:
	.section	.text.net_buf_simple_push_le16
.LHOTE26:
	.section	.text.unlikely.net_buf_simple_push_be16,"ax",@progbits
.LCOLDB27:
	.section	.text.net_buf_simple_push_be16,"ax",@progbits
.LHOTB27:
	.globl	net_buf_simple_push_be16
	.type	net_buf_simple_push_be16, @function
net_buf_simple_push_be16:
.LFB101:
	.loc 1 3471 0
	.cfi_startproc
.LVL145:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL146:
	.loc 1 3471 0
	movl	8(%ebp), %eax
.LVL147:
.LBB171:
.LBB172:
	.loc 1 3460 0
	movl	(%eax), %edx
	.loc 1 3461 0
	addw	$2, 4(%eax)
.LVL148:
	.loc 1 3460 0
	leal	-2(%edx), %ecx
	movl	%ecx, (%eax)
.LBE172:
.LBE171:
	.loc 1 3474 0
	movl	12(%ebp), %eax
	xchgb	%ah, %al
	movw	%ax, -2(%edx)
	.loc 1 3475 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE101:
	.size	net_buf_simple_push_be16, .-net_buf_simple_push_be16
	.section	.text.unlikely.net_buf_simple_push_be16
.LCOLDE27:
	.section	.text.net_buf_simple_push_be16
.LHOTE27:
	.section	.text.unlikely.net_buf_simple_push_u8,"ax",@progbits
.LCOLDB28:
	.section	.text.net_buf_simple_push_u8,"ax",@progbits
.LHOTB28:
	.globl	net_buf_simple_push_u8
	.type	net_buf_simple_push_u8, @function
net_buf_simple_push_u8:
.LFB102:
	.loc 1 3477 0
	.cfi_startproc
.LVL149:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3477 0
	movl	8(%ebp), %eax
.LVL150:
.LBB173:
.LBB174:
	.loc 1 3460 0
	movl	(%eax), %edx
	.loc 1 3461 0
	incw	4(%eax)
.LVL151:
	.loc 1 3460 0
	leal	-1(%edx), %ecx
	movl	%ecx, (%eax)
.LBE174:
.LBE173:
	.loc 1 3479 0
	movl	12(%ebp), %eax
	movb	%al, -1(%edx)
	.loc 1 3480 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE102:
	.size	net_buf_simple_push_u8, .-net_buf_simple_push_u8
	.section	.text.unlikely.net_buf_simple_push_u8
.LCOLDE28:
	.section	.text.net_buf_simple_push_u8
.LHOTE28:
	.section	.text.unlikely.net_buf_simple_pull,"ax",@progbits
.LCOLDB29:
	.section	.text.net_buf_simple_pull,"ax",@progbits
.LHOTB29:
	.globl	net_buf_simple_pull
	.type	net_buf_simple_pull, @function
net_buf_simple_pull:
.LFB103:
	.loc 1 3482 0
	.cfi_startproc
.LVL152:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3482 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	.loc 1 3485 0
	subw	%ax, 4(%edx)
	.loc 1 3486 0
	addl	(%edx), %eax
	movl	%eax, (%edx)
	.loc 1 3487 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE103:
	.size	net_buf_simple_pull, .-net_buf_simple_pull
	.section	.text.unlikely.net_buf_simple_pull
.LCOLDE29:
	.section	.text.net_buf_simple_pull
.LHOTE29:
	.section	.text.unlikely.net_buf_simple_pull_u8,"ax",@progbits
.LCOLDB30:
	.section	.text.net_buf_simple_pull_u8,"ax",@progbits
.LHOTB30:
	.globl	net_buf_simple_pull_u8
	.type	net_buf_simple_pull_u8, @function
net_buf_simple_pull_u8:
.LFB104:
	.loc 1 3489 0
	.cfi_startproc
.LVL153:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3489 0
	movl	8(%ebp), %eax
	.loc 1 3491 0
	movl	(%eax), %edx
	movb	(%edx), %cl
.LVL154:
	.loc 1 3492 0
	pushl	$1
	pushl	%eax
	call	net_buf_simple_pull
.LVL155:
	.loc 1 3494 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movb	%cl, %al
	ret
	.cfi_endproc
.LFE104:
	.size	net_buf_simple_pull_u8, .-net_buf_simple_pull_u8
	.section	.text.unlikely.net_buf_simple_pull_u8
.LCOLDE30:
	.section	.text.net_buf_simple_pull_u8
.LHOTE30:
	.section	.text.unlikely.net_buf_simple_pull_le16,"ax",@progbits
.LCOLDB31:
	.section	.text.net_buf_simple_pull_le16,"ax",@progbits
.LHOTB31:
	.globl	net_buf_simple_pull_le16
	.type	net_buf_simple_pull_le16, @function
net_buf_simple_pull_le16:
.LFB105:
	.loc 1 3496 0
	.cfi_startproc
.LVL156:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3496 0
	movl	8(%ebp), %eax
.LVL157:
.LBB175:
	.loc 1 3498 0
	movl	(%eax), %edx
	movw	(%edx), %cx
.LVL158:
.LBE175:
	.loc 1 3499 0
	pushl	$2
.LVL159:
	pushl	%eax
	call	net_buf_simple_pull
.LVL160:
	.loc 1 3501 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE105:
	.size	net_buf_simple_pull_le16, .-net_buf_simple_pull_le16
	.section	.text.unlikely.net_buf_simple_pull_le16
.LCOLDE31:
	.section	.text.net_buf_simple_pull_le16
.LHOTE31:
	.section	.text.unlikely.net_buf_simple_pull_be16,"ax",@progbits
.LCOLDB32:
	.section	.text.net_buf_simple_pull_be16,"ax",@progbits
.LHOTB32:
	.globl	net_buf_simple_pull_be16
	.type	net_buf_simple_pull_be16, @function
net_buf_simple_pull_be16:
.LFB106:
	.loc 1 3503 0
	.cfi_startproc
.LVL161:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3503 0
	movl	8(%ebp), %eax
.LVL162:
.LBB176:
	.loc 1 3505 0
	movl	(%eax), %edx
	movw	(%edx), %cx
.LVL163:
.LBE176:
	.loc 1 3506 0
	pushl	$2
.LVL164:
	pushl	%eax
	call	net_buf_simple_pull
.LVL165:
	.loc 1 3507 0
	movl	%ecx, %eax
	.loc 1 3508 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3507 0
	xchgb	%ah, %al
	.loc 1 3508 0
	ret
	.cfi_endproc
.LFE106:
	.size	net_buf_simple_pull_be16, .-net_buf_simple_pull_be16
	.section	.text.unlikely.net_buf_simple_pull_be16
.LCOLDE32:
	.section	.text.net_buf_simple_pull_be16
.LHOTE32:
	.section	.text.unlikely.net_buf_simple_pull_le32,"ax",@progbits
.LCOLDB33:
	.section	.text.net_buf_simple_pull_le32,"ax",@progbits
.LHOTB33:
	.globl	net_buf_simple_pull_le32
	.type	net_buf_simple_pull_le32, @function
net_buf_simple_pull_le32:
.LFB107:
	.loc 1 3510 0
	.cfi_startproc
.LVL166:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3510 0
	movl	8(%ebp), %eax
.LVL167:
.LBB177:
	.loc 1 3512 0
	movl	(%eax), %edx
	movl	(%edx), %ecx
.LVL168:
.LBE177:
	.loc 1 3513 0
	pushl	$4
.LVL169:
	pushl	%eax
	call	net_buf_simple_pull
.LVL170:
	.loc 1 3515 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE107:
	.size	net_buf_simple_pull_le32, .-net_buf_simple_pull_le32
	.section	.text.unlikely.net_buf_simple_pull_le32
.LCOLDE33:
	.section	.text.net_buf_simple_pull_le32
.LHOTE33:
	.section	.text.unlikely.net_buf_simple_pull_be32,"ax",@progbits
.LCOLDB34:
	.section	.text.net_buf_simple_pull_be32,"ax",@progbits
.LHOTB34:
	.globl	net_buf_simple_pull_be32
	.type	net_buf_simple_pull_be32, @function
net_buf_simple_pull_be32:
.LFB108:
	.loc 1 3517 0
	.cfi_startproc
.LVL171:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3517 0
	movl	8(%ebp), %eax
.LVL172:
	movl	(%eax), %edx
	movl	(%edx), %ecx
	.loc 1 3520 0
	pushl	$4
.LVL173:
	pushl	%eax
	bswap	%ecx
.LVL174:
	call	net_buf_simple_pull
.LVL175:
	.loc 1 3522 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	movl	%ecx, %eax
	ret
	.cfi_endproc
.LFE108:
	.size	net_buf_simple_pull_be32, .-net_buf_simple_pull_be32
	.section	.text.unlikely.net_buf_simple_pull_be32
.LCOLDE34:
	.section	.text.net_buf_simple_pull_be32
.LHOTE34:
	.section	.text.unlikely.net_buf_simple_headroom,"ax",@progbits
.LCOLDB35:
	.section	.text.net_buf_simple_headroom,"ax",@progbits
.LHOTB35:
	.globl	net_buf_simple_headroom
	.type	net_buf_simple_headroom, @function
net_buf_simple_headroom:
.LFB109:
	.loc 1 3524 0
	.cfi_startproc
.LVL176:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3524 0
	movl	8(%ebp), %eax
	.loc 1 3526 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3525 0
	leal	8(%eax), %edx
	movl	(%eax), %eax
	subl	%edx, %eax
	.loc 1 3526 0
	ret
	.cfi_endproc
.LFE109:
	.size	net_buf_simple_headroom, .-net_buf_simple_headroom
	.section	.text.unlikely.net_buf_simple_headroom
.LCOLDE35:
	.section	.text.net_buf_simple_headroom
.LHOTE35:
	.section	.text.unlikely.net_buf_simple_tailroom,"ax",@progbits
.LCOLDB36:
	.section	.text.net_buf_simple_tailroom,"ax",@progbits
.LHOTB36:
	.globl	net_buf_simple_tailroom
	.type	net_buf_simple_tailroom, @function
net_buf_simple_tailroom:
.LFB110:
	.loc 1 3528 0
	.cfi_startproc
.LVL177:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3528 0
	movl	8(%ebp), %edx
	.loc 1 3530 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3529 0
	movzwl	6(%edx), %eax
	movl	%edx, %ecx
	subl	(%edx), %ecx
	movzwl	4(%edx), %edx
	leal	8(%ecx,%eax), %eax
	subl	%edx, %eax
	.loc 1 3530 0
	ret
	.cfi_endproc
.LFE110:
	.size	net_buf_simple_tailroom, .-net_buf_simple_tailroom
	.section	.text.unlikely.net_buf_simple_tailroom
.LCOLDE36:
	.section	.text.net_buf_simple_tailroom
.LHOTE36:
	.section	.rodata.__func__.4661,"a",@progbits
	.align 4
	.type	__func__.4661, @object
	.size	__func__.4661, 8
__func__.4661:
	.string	"pool_id"
	.globl	net_buf_pool_list
	.section	.data.net_buf_pool_list,"aw",@progbits
	.align 4
	.type	net_buf_pool_list, @object
	.size	net_buf_pool_list, 12
net_buf_pool_list:
	.long	hci_cmd_pool
	.long	hci_rx_pool
	.long	acl_tx_pool
	.globl	acl_tx_pool
	.section	.data.acl_tx_pool,"aw",@progbits
	.align 4
	.type	acl_tx_pool, @object
	.size	acl_tx_pool, 28
acl_tx_pool:
	.long	0
	.zero	8
	.value	10
	.value	10
	.value	74
	.value	4
	.long	0
	.long	_net_buf_acl_tx_pool_name
	.globl	hci_rx_pool
	.section	.data.hci_rx_pool,"aw",@progbits
	.align 4
	.type	hci_rx_pool, @object
	.size	hci_rx_pool, 28
hci_rx_pool:
	.long	0
	.zero	8
	.value	10
	.value	10
	.value	77
	.value	4
	.long	0
	.long	_net_buf_hci_rx_pool_name
	.globl	hci_cmd_pool
	.section	.data.hci_cmd_pool,"aw",@progbits
	.align 4
	.type	hci_cmd_pool, @object
	.size	hci_cmd_pool, 28
hci_cmd_pool:
	.long	0
	.zero	8
	.value	2
	.value	2
	.value	77
	.value	8
	.long	0
	.long	_net_buf_hci_cmd_pool_name
	.section	.bss._net_buf_acl_tx_pool_name,"aw",@nobits
	.align 32
	.type	_net_buf_acl_tx_pool_name, @object
	.size	_net_buf_acl_tx_pool_name, 960
_net_buf_acl_tx_pool_name:
	.zero	960
	.section	.bss._net_buf_hci_rx_pool_name,"aw",@nobits
	.align 32
	.type	_net_buf_hci_rx_pool_name, @object
	.size	_net_buf_hci_rx_pool_name, 1000
_net_buf_hci_rx_pool_name:
	.zero	1000
	.section	.bss._net_buf_hci_cmd_pool_name,"aw",@nobits
	.align 32
	.type	_net_buf_hci_cmd_pool_name, @object
	.size	_net_buf_hci_cmd_pool_name, 208
_net_buf_hci_cmd_pool_name:
	.zero	208
	.text
.Letext0:
	.section	.text.unlikely.net_buf_pool_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x172b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF134
	.byte	0xc
	.long	.LASF135
	.long	.LASF136
	.long	.Ldebug_ranges0+0xc8
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
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x4
	.long	.LASF12
	.byte	0x1
	.byte	0x13
	.long	0x64
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.long	0x7d
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.value	0x27a
	.long	0x5d
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.value	0x27c
	.long	0x2c
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.value	0x27d
	.long	0x3a
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.value	0x27e
	.long	0x64
	.uleb128 0x8
	.long	.LASF18
	.byte	0x4
	.byte	0x1
	.value	0x2bf
	.long	0xdd
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.value	0x2c0
	.long	0xdd
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xc2
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.value	0x2c2
	.long	0xc2
	.uleb128 0x8
	.long	.LASF19
	.byte	0x8
	.byte	0x1
	.value	0x2c3
	.long	0x117
	.uleb128 0x9
	.long	.LASF21
	.byte	0x1
	.value	0x2c4
	.long	0x117
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.value	0x2c5
	.long	0x117
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xe3
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.value	0x2c7
	.long	0xef
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x358
	.long	0x14b
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x359
	.long	0x165
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.value	0x35a
	.long	0x165
	.byte	0
	.uleb128 0x8
	.long	.LASF24
	.byte	0x8
	.byte	0x1
	.value	0x357
	.long	0x165
	.uleb128 0xd
	.long	0x129
	.byte	0
	.uleb128 0xd
	.long	0x16b
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x14b
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x35c
	.long	0x18d
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x35d
	.long	0x165
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x35e
	.long	0x165
	.byte	0
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.value	0x361
	.long	0x14b
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.value	0x3e8
	.long	0x1b0
	.uleb128 0xf
	.string	"hdl"
	.byte	0x1
	.value	0x3e9
	.long	0x8b
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1
	.value	0x3ea
	.long	0x199
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1
	.value	0x3ee
	.long	0x1b0
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1
	.value	0x44e
	.long	0x1bc
	.uleb128 0x8
	.long	.LASF30
	.byte	0xc
	.byte	0x1
	.value	0x45d
	.long	0x1fc
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.value	0x45e
	.long	0x1fc
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.value	0x45f
	.long	0x18d
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1c8
	.uleb128 0x8
	.long	.LASF33
	.byte	0xc
	.byte	0x1
	.value	0x469
	.long	0x21d
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.value	0x46a
	.long	0x1d4
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF34
	.byte	0xc
	.byte	0x1
	.value	0x46c
	.long	0x238
	.uleb128 0x9
	.long	.LASF31
	.byte	0x1
	.value	0x46d
	.long	0x1d4
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x4e2
	.long	0x268
	.uleb128 0x11
	.long	.LASF35
	.byte	0
	.uleb128 0x11
	.long	.LASF36
	.byte	0x1
	.uleb128 0x11
	.long	.LASF37
	.byte	0x2
	.uleb128 0x11
	.long	.LASF38
	.byte	0x3
	.uleb128 0x11
	.long	.LASF39
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x4
	.long	0x64
	.byte	0x1
	.value	0x4e9
	.long	0x298
	.uleb128 0x11
	.long	.LASF42
	.byte	0
	.uleb128 0x11
	.long	.LASF43
	.byte	0x1
	.uleb128 0x11
	.long	.LASF44
	.byte	0x2
	.uleb128 0x11
	.long	.LASF45
	.byte	0x3
	.uleb128 0x11
	.long	.LASF46
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x21d
	.uleb128 0x8
	.long	.LASF47
	.byte	0x8
	.byte	0x1
	.value	0x51d
	.long	0x2e0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0x51e
	.long	0x2e0
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x51f
	.long	0xaa
	.byte	0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1
	.value	0x520
	.long	0xaa
	.byte	0x6
	.uleb128 0x9
	.long	.LASF50
	.byte	0x1
	.value	0x521
	.long	0x2e6
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x9e
	.uleb128 0x12
	.long	0x9e
	.long	0x2f5
	.uleb128 0x13
	.long	0x84
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x556
	.long	0x317
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1
	.value	0x557
	.long	0xe3
	.uleb128 0xc
	.long	.LASF52
	.byte	0x1
	.value	0x558
	.long	0x365
	.byte	0
	.uleb128 0x8
	.long	.LASF53
	.byte	0x10
	.byte	0x1
	.value	0x555
	.long	0x365
	.uleb128 0xd
	.long	0x2f5
	.byte	0
	.uleb128 0xf
	.string	"ref"
	.byte	0x1
	.value	0x55a
	.long	0x9e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF54
	.byte	0x1
	.value	0x55b
	.long	0x9e
	.byte	0x5
	.uleb128 0x9
	.long	.LASF55
	.byte	0x1
	.value	0x55c
	.long	0x9e
	.byte	0x6
	.uleb128 0xd
	.long	0x39c
	.byte	0x8
	.uleb128 0x9
	.long	.LASF50
	.byte	0x1
	.value	0x565
	.long	0x3b5
	.byte	0x10
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x317
	.uleb128 0xe
	.byte	0x8
	.byte	0x1
	.value	0x55e
	.long	0x39c
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0x55f
	.long	0x2e0
	.byte	0
	.uleb128 0xf
	.string	"len"
	.byte	0x1
	.value	0x560
	.long	0xaa
	.byte	0x4
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1
	.value	0x561
	.long	0xaa
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.byte	0x8
	.byte	0x1
	.value	0x55d
	.long	0x3b5
	.uleb128 0x14
	.long	0x36b
	.uleb128 0x15
	.string	"b"
	.byte	0x1
	.value	0x563
	.long	0x29e
	.byte	0
	.uleb128 0x12
	.long	0x9e
	.long	0x3c4
	.uleb128 0x13
	.long	0x84
	.byte	0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1c
	.byte	0x1
	.value	0x56b
	.long	0x42d
	.uleb128 0x9
	.long	.LASF57
	.byte	0x1
	.value	0x56c
	.long	0x202
	.byte	0
	.uleb128 0x9
	.long	.LASF58
	.byte	0x1
	.value	0x56d
	.long	0x42d
	.byte	0xc
	.uleb128 0x9
	.long	.LASF59
	.byte	0x1
	.value	0x56e
	.long	0xaa
	.byte	0xe
	.uleb128 0x9
	.long	.LASF60
	.byte	0x1
	.value	0x56f
	.long	0x42d
	.byte	0x10
	.uleb128 0x9
	.long	.LASF61
	.byte	0x1
	.value	0x570
	.long	0x42d
	.byte	0x12
	.uleb128 0x9
	.long	.LASF62
	.byte	0x1
	.value	0x571
	.long	0x443
	.byte	0x14
	.uleb128 0x9
	.long	.LASF63
	.byte	0x1
	.value	0x572
	.long	0x448
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	0xaa
	.uleb128 0x16
	.long	0x43d
	.uleb128 0x17
	.long	0x365
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x432
	.uleb128 0x6
	.long	0x43d
	.uleb128 0x6
	.long	0x365
	.uleb128 0x12
	.long	0x9e
	.long	0x45d
	.uleb128 0x18
	.long	0x84
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x29e
	.uleb128 0x12
	.long	0x9e
	.long	0x473
	.uleb128 0x18
	.long	0x84
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF64
	.uleb128 0xe
	.byte	0x68
	.byte	0x1
	.value	0xc1d
	.long	0x4aa
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.value	0xc1e
	.long	0x317
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0xc1f
	.long	0x4aa
	.byte	0x10
	.uleb128 0xf
	.string	"ud"
	.byte	0x1
	.value	0xc24
	.long	0x44d
	.byte	0x60
	.byte	0
	.uleb128 0x12
	.long	0x9e
	.long	0x4ba
	.uleb128 0x18
	.long	0x84
	.byte	0x4c
	.byte	0
	.uleb128 0xe
	.byte	0x64
	.byte	0x1
	.value	0xc2a
	.long	0x4ea
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.value	0xc2b
	.long	0x317
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0xc2c
	.long	0x4aa
	.byte	0x10
	.uleb128 0xf
	.string	"ud"
	.byte	0x1
	.value	0xc31
	.long	0x463
	.byte	0x60
	.byte	0
	.uleb128 0xe
	.byte	0x60
	.byte	0x1
	.value	0xc37
	.long	0x51a
	.uleb128 0xf
	.string	"buf"
	.byte	0x1
	.value	0xc38
	.long	0x317
	.byte	0
	.uleb128 0x9
	.long	.LASF48
	.byte	0x1
	.value	0xc39
	.long	0x51a
	.byte	0x10
	.uleb128 0xf
	.string	"ud"
	.byte	0x1
	.value	0xc3e
	.long	0x463
	.byte	0x5c
	.byte	0
	.uleb128 0x12
	.long	0x9e
	.long	0x52a
	.uleb128 0x18
	.long	0x84
	.byte	0x49
	.byte	0
	.uleb128 0x19
	.long	.LASF69
	.byte	0x1
	.value	0x2d3
	.long	0x473
	.byte	0x3
	.long	0x548
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x2d3
	.long	0x548
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x11d
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.value	0xc5d
	.long	0x56b
	.byte	0x1
	.long	0x56b
	.uleb128 0x1c
	.string	"id"
	.byte	0x1
	.value	0xc5d
	.long	0x5d
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x3c4
	.uleb128 0x1d
	.long	.LASF73
	.byte	0x1
	.value	0xc81
	.byte	0x1
	.long	0x58b
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xc81
	.long	0x365
	.byte	0
	.uleb128 0x1b
	.long	.LASF67
	.byte	0x1
	.value	0xd28
	.long	0x365
	.byte	0x1
	.long	0x5a9
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xd28
	.long	0x365
	.byte	0
	.uleb128 0x1b
	.long	.LASF68
	.byte	0x1
	.value	0xd11
	.long	0x365
	.byte	0x1
	.long	0x5c7
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xd11
	.long	0x365
	.byte	0
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.value	0x53f
	.long	0x2e0
	.byte	0x3
	.long	0x5e5
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x53f
	.long	0x45d
	.byte	0
	.uleb128 0x1b
	.long	.LASF71
	.byte	0x1
	.value	0xd52
	.long	0x8b
	.byte	0x1
	.long	0x61b
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xd52
	.long	0x45d
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0xd52
	.long	0x6b
	.uleb128 0x1e
	.long	.LASF22
	.byte	0x1
	.value	0xd54
	.long	0x2e0
	.byte	0
	.uleb128 0x1b
	.long	.LASF72
	.byte	0x1
	.value	0xd80
	.long	0x8b
	.byte	0x1
	.long	0x645
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xd80
	.long	0x45d
	.uleb128 0x1c
	.string	"len"
	.byte	0x1
	.value	0xd80
	.long	0x6b
	.byte	0
	.uleb128 0x1d
	.long	.LASF74
	.byte	0x1
	.value	0xcc4
	.byte	0x1
	.long	0x66b
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xcc4
	.long	0x365
	.uleb128 0x1a
	.long	.LASF75
	.byte	0x1
	.value	0xcc4
	.long	0x6b
	.byte	0
	.uleb128 0x1b
	.long	.LASF76
	.byte	0x1
	.value	0xdc3
	.long	0x6b
	.byte	0x1
	.long	0x689
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0xdc3
	.long	0x45d
	.byte	0
	.uleb128 0x1f
	.long	0x54e
	.long	.LFB74
	.long	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x6a5
	.uleb128 0x20
	.long	0x55f
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LASF83
	.byte	0x1
	.value	0xc71
	.long	0x5d
	.long	.LFB76
	.long	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x714
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xc71
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.value	0xc73
	.long	0x56b
	.uleb128 0x23
	.long	.LASF78
	.byte	0x1
	.value	0xc74
	.long	0x2e0
	.long	.LLST0
	.uleb128 0x24
	.long	.LASF79
	.byte	0x1
	.value	0xc75
	.long	0x2e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x25
	.long	0x54e
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.value	0xc73
	.uleb128 0x26
	.long	0x55f
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x571
	.long	.LFB78
	.long	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x730
	.uleb128 0x20
	.long	0x57e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x19
	.long	.LASF80
	.byte	0x1
	.value	0xc78
	.long	0x365
	.byte	0x3
	.long	0x766
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.value	0xc78
	.long	0x56b
	.uleb128 0x1a
	.long	.LASF59
	.byte	0x1
	.value	0xc79
	.long	0xaa
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xc7b
	.long	0x365
	.byte	0
	.uleb128 0x19
	.long	.LASF55
	.byte	0x1
	.value	0xc61
	.long	0x5d
	.byte	0x1
	.long	0x79d
	.uleb128 0x1a
	.long	.LASF77
	.byte	0x1
	.value	0xc61
	.long	0x56b
	.uleb128 0x1e
	.long	.LASF81
	.byte	0x1
	.value	0xc63
	.long	0x5d
	.uleb128 0x28
	.long	.LASF82
	.long	0x7ad
	.long	.LASF55
	.byte	0
	.uleb128 0x12
	.long	0x8d
	.long	0x7ad
	.uleb128 0x18
	.long	0x84
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.long	0x79d
	.uleb128 0x21
	.long	.LASF84
	.byte	0x1
	.value	0xc88
	.long	0x365
	.long	.LFB79
	.long	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x8f8
	.uleb128 0x29
	.long	.LASF77
	.byte	0x1
	.value	0xc88
	.long	0x56b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF85
	.byte	0x1
	.value	0xc88
	.long	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xc8a
	.long	0x365
	.long	.LLST2
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.value	0xc8b
	.long	0x64
	.long	.LLST3
	.uleb128 0x2b
	.long	.LASF137
	.byte	0x1
	.value	0xca5
	.long	.L10
	.uleb128 0x2c
	.long	.Ldebug_ranges0+0
	.long	0x8be
	.uleb128 0x23
	.long	.LASF59
	.byte	0x1
	.value	0xc90
	.long	0xaa
	.long	.LLST4
	.uleb128 0x2d
	.long	0x730
	.long	.LBB74
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xc9a
	.long	0x8a2
	.uleb128 0x26
	.long	0x74d
	.long	.LLST5
	.uleb128 0x26
	.long	0x741
	.long	.LLST6
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2f
	.long	0x759
	.long	.LLST7
	.uleb128 0x30
	.long	0x766
	.long	.LBB76
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xc7d
	.uleb128 0x26
	.long	0x777
	.long	.LLST8
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x2f
	.long	0x783
	.long	.LLST9
	.uleb128 0x31
	.long	0x78f
	.uleb128 0x5
	.byte	0x3
	.long	__func__.4661
	.uleb128 0x32
	.long	.LVL21
	.long	0x16e6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LVL11
	.long	0x16f2
	.uleb128 0x32
	.long	.LVL13
	.long	0x16fe
	.uleb128 0x32
	.long	.LVL16
	.long	0x16fe
	.byte	0
	.uleb128 0x2d
	.long	0x571
	.long	.LBB84
	.long	.Ldebug_ranges0+0x50
	.byte	0x1
	.value	0xcac
	.long	0x8dc
	.uleb128 0x26
	.long	0x57e
	.long	.LLST10
	.byte	0
	.uleb128 0x32
	.long	.LVL8
	.long	0x170a
	.uleb128 0x32
	.long	.LVL22
	.long	0x16fe
	.uleb128 0x32
	.long	.LVL23
	.long	0x16f2
	.byte	0
	.uleb128 0x21
	.long	.LASF86
	.byte	0x1
	.value	0xcaf
	.long	0x365
	.long	.LFB80
	.long	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x963
	.uleb128 0x29
	.long	.LASF87
	.byte	0x1
	.value	0xcaf
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF85
	.byte	0x1
	.value	0xcaf
	.long	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2a
	.string	"buf"
	.byte	0x1
	.value	0xcb1
	.long	0x365
	.long	.LLST11
	.uleb128 0x23
	.long	.LASF88
	.byte	0x1
	.value	0xcb1
	.long	0x365
	.long	.LLST12
	.uleb128 0x32
	.long	.LVL37
	.long	0x16f2
	.uleb128 0x32
	.long	.LVL40
	.long	0x16f2
	.byte	0
	.uleb128 0x1f
	.long	0x645
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x987
	.uleb128 0x20
	.long	0x652
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x65e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x33
	.long	.LASF94
	.byte	0x1
	.value	0x300
	.byte	0x3
	.long	0x9b9
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x300
	.long	0x548
	.uleb128 0x1a
	.long	.LASF21
	.byte	0x1
	.value	0x301
	.long	0x8b
	.uleb128 0x1a
	.long	.LASF22
	.byte	0x1
	.value	0x301
	.long	0x8b
	.byte	0
	.uleb128 0x34
	.long	.LASF92
	.byte	0x1
	.value	0xccb
	.long	.LFB82
	.long	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0xa50
	.uleb128 0x29
	.long	.LASF65
	.byte	0x1
	.value	0xccb
	.long	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xccb
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF22
	.byte	0x1
	.value	0xccd
	.long	0x365
	.long	.LLST13
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.value	0xcce
	.long	0x64
	.long	.LLST14
	.uleb128 0x35
	.long	0x987
	.long	.LBB91
	.long	.LBE91-.LBB91
	.byte	0x1
	.value	0xcd5
	.long	0xa3d
	.uleb128 0x26
	.long	0x9ac
	.long	.LLST15
	.uleb128 0x26
	.long	0x9a0
	.long	.LLST16
	.uleb128 0x26
	.long	0x994
	.long	.LLST17
	.byte	0
	.uleb128 0x32
	.long	.LVL52
	.long	0x170a
	.uleb128 0x36
	.long	.LVL55
	.long	0x16fe
	.byte	0
	.uleb128 0x19
	.long	.LASF89
	.byte	0x1
	.value	0x328
	.long	0x117
	.byte	0x3
	.long	0xa6e
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x328
	.long	0x548
	.byte	0
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.value	0x31f
	.long	0x117
	.byte	0x3
	.long	0xa98
	.uleb128 0x1a
	.long	.LASF65
	.byte	0x1
	.value	0x31f
	.long	0x548
	.uleb128 0x1e
	.long	.LASF51
	.byte	0x1
	.value	0x321
	.long	0x117
	.byte	0
	.uleb128 0x21
	.long	.LASF91
	.byte	0x1
	.value	0xcd8
	.long	0x365
	.long	.LFB83
	.long	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0xba8
	.uleb128 0x29
	.long	.LASF65
	.byte	0x1
	.value	0xcd8
	.long	0x548
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"buf"
	.byte	0x1
	.value	0xcda
	.long	0x365
	.uleb128 0x23
	.long	.LASF88
	.byte	0x1
	.value	0xcda
	.long	0x365
	.long	.LLST18
	.uleb128 0x2a
	.string	"key"
	.byte	0x1
	.value	0xcdb
	.long	0x64
	.long	.LLST19
	.uleb128 0x35
	.long	0xa50
	.long	.LBB101
	.long	.LBE101-.LBB101
	.byte	0x1
	.value	0xcde
	.long	0xb38
	.uleb128 0x26
	.long	0xa61
	.long	.LLST20
	.uleb128 0x25
	.long	0xa6e
	.long	.LBB103
	.long	.LBE103-.LBB103
	.byte	0x1
	.value	0x32c
	.uleb128 0x26
	.long	0xa7f
	.long	.LLST21
	.uleb128 0x37
	.long	.LBB104
	.long	.LBE104-.LBB104
	.uleb128 0x2f
	.long	0xa8b
	.long	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.long	0xa50
	.long	.LBB105
	.long	.LBE105-.LBB105
	.byte	0x1
	.value	0xce7
	.long	0xb83
	.uleb128 0x26
	.long	0xa61
	.long	.LLST23
	.uleb128 0x25
	.long	0xa6e
	.long	.LBB107
	.long	.LBE107-.LBB107
	.byte	0x1
	.value	0x32c
	.uleb128 0x26
	.long	0xa7f
	.long	.LLST24
	.uleb128 0x37
	.long	.LBB108
	.long	.LBE108-.LBB108
	.uleb128 0x2f
	.long	0xa8b
	.long	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LVL57
	.long	0x170a
	.uleb128 0x32
	.long	.LVL61
	.long	0x16fe
	.uleb128 0x32
	.long	.LVL63
	.long	0x170a
	.uleb128 0x32
	.long	.LVL66
	.long	0x16fe
	.byte	0
	.uleb128 0x34
	.long	.LASF93
	.byte	0x1
	.value	0xcf1
	.long	.LFB84
	.long	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0xbf6
	.uleb128 0x29
	.long	.LASF87
	.byte	0x1
	.value	0xcf1
	.long	0x298
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xcf1
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF22
	.byte	0x1
	.value	0xcf3
	.long	0x365
	.long	.LLST26
	.uleb128 0x32
	.long	.LVL75
	.long	0x1716
	.byte	0
	.uleb128 0x33
	.long	.LASF95
	.byte	0x1
	.value	0x578
	.byte	0x3
	.long	0xc1c
	.uleb128 0x1c
	.string	"buf"
	.byte	0x1
	.value	0x578
	.long	0x365
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.value	0x57a
	.long	0x56b
	.byte	0
	.uleb128 0x38
	.long	.LASF96
	.byte	0x1
	.value	0xcfb
	.long	.LFB85
	.long	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0xcb9
	.uleb128 0x39
	.string	"buf"
	.byte	0x1
	.value	0xcfb
	.long	0x365
	.long	.LLST27
	.uleb128 0x37
	.long	.LBB116
	.long	.LBE116-.LBB116
	.uleb128 0x23
	.long	.LASF52
	.byte	0x1
	.value	0xcff
	.long	0x365
	.long	.LLST28
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.value	0xd00
	.long	0x56b
	.uleb128 0x2d
	.long	0x54e
	.long	.LBB117
	.long	.Ldebug_ranges0+0x68
	.byte	0x1
	.value	0xd08
	.long	0xc85
	.uleb128 0x26
	.long	0x55f
	.long	.LLST29
	.byte	0
	.uleb128 0x25
	.long	0xbf6
	.long	.LBB121
	.long	.LBE121-.LBB121
	.byte	0x1
	.value	0xd0c
	.uleb128 0x26
	.long	0xc03
	.long	.LLST30
	.uleb128 0x37
	.long	.LBB122
	.long	.LBE122-.LBB122
	.uleb128 0x3a
	.long	0xc0f
	.uleb128 0x32
	.long	.LVL83
	.long	0x1722
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x5a9
	.long	.LFB86
	.long	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd5
	.uleb128 0x20
	.long	0x5ba
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LASF97
	.byte	0x1
	.value	0xd18
	.long	0x365
	.long	.LFB87
	.long	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0xdb6
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd18
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF85
	.byte	0x1
	.value	0xd18
	.long	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF77
	.byte	0x1
	.value	0xd1a
	.long	0x56b
	.uleb128 0x24
	.long	.LASF98
	.byte	0x1
	.value	0xd1b
	.long	0x365
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x35
	.long	0x54e
	.long	.LBB123
	.long	.LBE123-.LBB123
	.byte	0x1
	.value	0xd1d
	.long	0xd41
	.uleb128 0x3b
	.long	0x55f
	.byte	0
	.uleb128 0x2d
	.long	0x645
	.long	.LBB125
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.value	0xd24
	.long	0xd64
	.uleb128 0x3b
	.long	0x65e
	.uleb128 0x26
	.long	0x652
	.long	.LLST31
	.byte	0
	.uleb128 0x2d
	.long	0x5e5
	.long	.LBB128
	.long	.Ldebug_ranges0+0x98
	.byte	0x1
	.value	0xd25
	.long	0xdac
	.uleb128 0x26
	.long	0x602
	.long	.LLST32
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST33
	.uleb128 0x2e
	.long	.Ldebug_ranges0+0x98
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB130
	.long	.LBE130-.LBB130
	.byte	0x1
	.value	0xd54
	.uleb128 0x3b
	.long	0x5d8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LVL87
	.long	0x7b2
	.byte	0
	.uleb128 0x1f
	.long	0x58b
	.long	.LFB88
	.long	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd3
	.uleb128 0x26
	.long	0x59c
	.long	.LLST34
	.byte	0
	.uleb128 0x34
	.long	.LASF99
	.byte	0x1
	.value	0xd30
	.long	.LFB89
	.long	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0xe23
	.uleb128 0x29
	.long	.LASF100
	.byte	0x1
	.value	0xd30
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.long	.LASF88
	.byte	0x1
	.value	0xd30
	.long	0x365
	.long	.LLST35
	.uleb128 0x25
	.long	0x58b
	.long	.LBB135
	.long	.LBE135-.LBB135
	.byte	0x1
	.value	0xd35
	.uleb128 0x26
	.long	0x59c
	.long	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF101
	.byte	0x1
	.value	0xd39
	.long	0x365
	.long	.LFB90
	.long	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0xea2
	.uleb128 0x3c
	.long	.LASF21
	.byte	0x1
	.value	0xd39
	.long	0x365
	.long	.LLST37
	.uleb128 0x29
	.long	.LASF88
	.byte	0x1
	.value	0xd39
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	0x5a9
	.long	.LBB137
	.long	.LBE137-.LBB137
	.byte	0x1
	.value	0xd3d
	.long	0xe7a
	.uleb128 0x26
	.long	0x5ba
	.long	.LLST38
	.byte	0
	.uleb128 0x35
	.long	0x58b
	.long	.LBB139
	.long	.LBE139-.LBB139
	.byte	0x1
	.value	0xd3f
	.long	0xe98
	.uleb128 0x26
	.long	0x59c
	.long	.LLST39
	.byte	0
	.uleb128 0x32
	.long	.LVL106
	.long	0xdd3
	.byte	0
	.uleb128 0x21
	.long	.LASF102
	.byte	0x1
	.value	0xd42
	.long	0x365
	.long	.LFB91
	.long	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0xef4
	.uleb128 0x29
	.long	.LASF100
	.byte	0x1
	.value	0xd42
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.long	.LASF88
	.byte	0x1
	.value	0xd42
	.long	0x365
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF103
	.byte	0x1
	.value	0xd44
	.long	0x365
	.long	.LLST40
	.uleb128 0x32
	.long	.LVL110
	.long	0xc1c
	.byte	0
	.uleb128 0x1f
	.long	0x5e5
	.long	.LFB92
	.long	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0xf37
	.uleb128 0x20
	.long	0x5f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x30
	.long	0x5c7
	.long	.LBB141
	.long	.Ldebug_ranges0+0xb0
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST41
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF104
	.byte	0x1
	.value	0xd5a
	.long	0x8b
	.long	.LFB93
	.long	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0xfcb
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd5a
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"mem"
	.byte	0x1
	.value	0xd5a
	.long	0xfcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xd5b
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB145
	.long	.LBE145-.LBB145
	.byte	0x1
	.value	0xd5e
	.uleb128 0x26
	.long	0x602
	.long	.LLST42
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST43
	.uleb128 0x37
	.long	.LBB146
	.long	.LBE146-.LBB146
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB147
	.long	.LBE147-.LBB147
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0xfd1
	.uleb128 0x3d
	.uleb128 0x21
	.long	.LASF105
	.byte	0x1
	.value	0xd60
	.long	0x2e0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x1062
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd60
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0xd60
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.string	"u8"
	.byte	0x1
	.value	0xd62
	.long	0x2e0
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB149
	.long	.LBE149-.LBB149
	.byte	0x1
	.value	0xd64
	.uleb128 0x26
	.long	0x602
	.long	.LLST45
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST46
	.uleb128 0x37
	.long	.LBB150
	.long	.LBE150-.LBB150
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB151
	.long	.LBE151-.LBB151
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST47
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF106
	.byte	0x1
	.value	0xd68
	.long	.LFB95
	.long	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x10e3
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd68
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0xd68
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB153
	.long	.LBE153-.LBB153
	.byte	0x1
	.value	0xd6c
	.uleb128 0x26
	.long	0x602
	.long	.LLST48
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST49
	.uleb128 0x37
	.long	.LBB154
	.long	.LBE154-.LBB154
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB155
	.long	.LBE155-.LBB155
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST50
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF107
	.byte	0x1
	.value	0xd6e
	.long	.LFB96
	.long	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x1165
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd6e
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"val"
	.byte	0x1
	.value	0xd6e
	.long	0xaa
	.long	.LLST51
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB157
	.long	.LBE157-.LBB157
	.byte	0x1
	.value	0xd72
	.uleb128 0x26
	.long	0x602
	.long	.LLST52
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST53
	.uleb128 0x37
	.long	.LBB158
	.long	.LBE158-.LBB158
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB159
	.long	.LBE159-.LBB159
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST54
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF108
	.byte	0x1
	.value	0xd74
	.long	.LFB97
	.long	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x11e6
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd74
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0xd74
	.long	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB161
	.long	.LBE161-.LBB161
	.byte	0x1
	.value	0xd78
	.uleb128 0x26
	.long	0x602
	.long	.LLST55
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST56
	.uleb128 0x37
	.long	.LBB162
	.long	.LBE162-.LBB162
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB163
	.long	.LBE163-.LBB163
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST57
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF109
	.byte	0x1
	.value	0xd7a
	.long	.LFB98
	.long	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x1268
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd7a
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"val"
	.byte	0x1
	.value	0xd7a
	.long	0xb6
	.long	.LLST58
	.uleb128 0x25
	.long	0x5e5
	.long	.LBB165
	.long	.LBE165-.LBB165
	.byte	0x1
	.value	0xd7e
	.uleb128 0x26
	.long	0x602
	.long	.LLST59
	.uleb128 0x26
	.long	0x5f6
	.long	.LLST60
	.uleb128 0x37
	.long	.LBB166
	.long	.LBE166-.LBB166
	.uleb128 0x3a
	.long	0x60e
	.uleb128 0x25
	.long	0x5c7
	.long	.LBB167
	.long	.LBE167-.LBB167
	.byte	0x1
	.value	0xd54
	.uleb128 0x26
	.long	0x5d8
	.long	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x61b
	.long	.LFB99
	.long	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x128c
	.uleb128 0x20
	.long	0x62c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	0x638
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x34
	.long	.LASF110
	.byte	0x1
	.value	0xd88
	.long	.LFB100
	.long	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x12e4
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd88
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0xd88
	.long	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x25
	.long	0x61b
	.long	.LBB169
	.long	.LBE169-.LBB169
	.byte	0x1
	.value	0xd8c
	.uleb128 0x26
	.long	0x638
	.long	.LLST62
	.uleb128 0x26
	.long	0x62c
	.long	.LLST63
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF111
	.byte	0x1
	.value	0xd8e
	.long	.LFB101
	.long	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x133d
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd8e
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x39
	.string	"val"
	.byte	0x1
	.value	0xd8e
	.long	0xaa
	.long	.LLST64
	.uleb128 0x25
	.long	0x61b
	.long	.LBB171
	.long	.LBE171-.LBB171
	.byte	0x1
	.value	0xd92
	.uleb128 0x26
	.long	0x638
	.long	.LLST65
	.uleb128 0x26
	.long	0x62c
	.long	.LLST66
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF112
	.byte	0x1
	.value	0xd94
	.long	.LFB102
	.long	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x13a1
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd94
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"val"
	.byte	0x1
	.value	0xd94
	.long	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF48
	.byte	0x1
	.value	0xd96
	.long	0x2e0
	.uleb128 0x25
	.long	0x61b
	.long	.LBB173
	.long	.LBE173-.LBB173
	.byte	0x1
	.value	0xd96
	.uleb128 0x26
	.long	0x638
	.long	.LLST67
	.uleb128 0x26
	.long	0x62c
	.long	.LLST68
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	.LASF113
	.byte	0x1
	.value	0xd99
	.long	0x8b
	.long	.LFB103
	.long	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x13da
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xd99
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.string	"len"
	.byte	0x1
	.value	0xd99
	.long	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x21
	.long	.LASF114
	.byte	0x1
	.value	0xda0
	.long	0x9e
	.long	.LFB104
	.long	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x141d
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xda0
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0xda2
	.long	0x9e
	.long	.LLST69
	.uleb128 0x32
	.long	.LVL155
	.long	0x13a1
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.value	0xda7
	.long	0xaa
	.long	.LFB105
	.long	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x1495
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xda7
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0xda9
	.long	0xaa
	.long	.LLST70
	.uleb128 0x3e
	.long	.LBB175
	.long	.LBE175-.LBB175
	.long	0x148b
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.value	0xdaa
	.long	0x147a
	.uleb128 0xf
	.string	"__v"
	.byte	0x1
	.value	0xdaa
	.long	0xaa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"__p"
	.byte	0x1
	.value	0xdaa
	.long	0x1495
	.long	.LLST71
	.byte	0
	.uleb128 0x32
	.long	.LVL160
	.long	0x13a1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x1463
	.uleb128 0x21
	.long	.LASF116
	.byte	0x1
	.value	0xdae
	.long	0xaa
	.long	.LFB106
	.long	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.long	0x1513
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xdae
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0xdb0
	.long	0xaa
	.long	.LLST72
	.uleb128 0x3e
	.long	.LBB176
	.long	.LBE176-.LBB176
	.long	0x1509
	.uleb128 0xe
	.byte	0x2
	.byte	0x1
	.value	0xdb1
	.long	0x14f8
	.uleb128 0xf
	.string	"__v"
	.byte	0x1
	.value	0xdb1
	.long	0xaa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"__p"
	.byte	0x1
	.value	0xdb1
	.long	0x1513
	.long	.LLST73
	.byte	0
	.uleb128 0x32
	.long	.LVL165
	.long	0x13a1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x14e1
	.uleb128 0x21
	.long	.LASF117
	.byte	0x1
	.value	0xdb5
	.long	0xb6
	.long	.LFB107
	.long	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x1591
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xdb5
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2a
	.string	"val"
	.byte	0x1
	.value	0xdb7
	.long	0xb6
	.long	.LLST74
	.uleb128 0x3e
	.long	.LBB177
	.long	.LBE177-.LBB177
	.long	0x1587
	.uleb128 0xe
	.byte	0x4
	.byte	0x1
	.value	0xdb8
	.long	0x1576
	.uleb128 0xf
	.string	"__v"
	.byte	0x1
	.value	0xdb8
	.long	0xb6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.string	"__p"
	.byte	0x1
	.value	0xdb8
	.long	0x1591
	.long	.LLST75
	.byte	0
	.uleb128 0x32
	.long	.LVL170
	.long	0x13a1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.long	0x155f
	.uleb128 0x21
	.long	.LASF118
	.byte	0x1
	.value	0xdbc
	.long	0xb6
	.long	.LFB108
	.long	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x15d6
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xdbc
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"val"
	.byte	0x1
	.value	0xdbe
	.long	0xb6
	.uleb128 0x32
	.long	.LVL175
	.long	0x13a1
	.byte	0
	.uleb128 0x1f
	.long	0x66b
	.long	.LFB109
	.long	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x15f2
	.uleb128 0x20
	.long	0x67c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.long	.LASF119
	.byte	0x1
	.value	0xdc7
	.long	0x6b
	.long	.LFB110
	.long	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x161c
	.uleb128 0x22
	.string	"buf"
	.byte	0x1
	.value	0xdc7
	.long	0x45d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.long	0x47a
	.long	0x162c
	.uleb128 0x18
	.long	0x84
	.byte	0x1
	.byte	0
	.uleb128 0x24
	.long	.LASF120
	.byte	0x1
	.value	0xc29
	.long	0x161c
	.uleb128 0x5
	.byte	0x3
	.long	_net_buf_hci_cmd_pool_name
	.uleb128 0x12
	.long	0x4ba
	.long	0x164e
	.uleb128 0x18
	.long	0x84
	.byte	0x9
	.byte	0
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0xc36
	.long	0x163e
	.uleb128 0x5
	.byte	0x3
	.long	_net_buf_hci_rx_pool_name
	.uleb128 0x12
	.long	0x4ea
	.long	0x1670
	.uleb128 0x18
	.long	0x84
	.byte	0x9
	.byte	0
	.uleb128 0x24
	.long	.LASF122
	.byte	0x1
	.value	0xc43
	.long	0x1660
	.uleb128 0x5
	.byte	0x3
	.long	_net_buf_acl_tx_pool_name
	.uleb128 0x3f
	.long	.LASF123
	.byte	0x1
	.value	0x43b
	.long	0x64
	.uleb128 0x40
	.long	.LASF124
	.byte	0x1
	.value	0xc44
	.long	0x3c4
	.uleb128 0x5
	.byte	0x3
	.long	hci_cmd_pool
	.uleb128 0x40
	.long	.LASF125
	.byte	0x1
	.value	0xc4c
	.long	0x3c4
	.uleb128 0x5
	.byte	0x3
	.long	hci_rx_pool
	.uleb128 0x40
	.long	.LASF126
	.byte	0x1
	.value	0xc54
	.long	0x3c4
	.uleb128 0x5
	.byte	0x3
	.long	acl_tx_pool
	.uleb128 0x12
	.long	0x56b
	.long	0x16d4
	.uleb128 0x18
	.long	0x84
	.byte	0x2
	.byte	0
	.uleb128 0x40
	.long	.LASF127
	.byte	0x1
	.value	0xc5c
	.long	0x16c4
	.uleb128 0x5
	.byte	0x3
	.long	net_buf_pool_list
	.uleb128 0x41
	.long	.LASF128
	.long	.LASF128
	.byte	0x1
	.value	0x443
	.uleb128 0x41
	.long	.LASF129
	.long	.LASF129
	.byte	0x1
	.value	0x467
	.uleb128 0x41
	.long	.LASF130
	.long	.LASF130
	.byte	0x1
	.value	0x49c
	.uleb128 0x41
	.long	.LASF131
	.long	.LASF131
	.byte	0x1
	.value	0x49b
	.uleb128 0x41
	.long	.LASF132
	.long	.LASF132
	.byte	0x1
	.value	0x466
	.uleb128 0x41
	.long	.LASF133
	.long	.LASF133
	.byte	0x1
	.value	0x464
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x17
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
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1c
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x3d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x2
	.uleb128 0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x73
	.sleb128 24
	.long	.LVL5
	.long	.LFE76
	.value	0x15
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.long	net_buf_pool_list
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0xb
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL12
	.long	.LVL13-1
	.value	0x1
	.byte	0x50
	.long	.LVL13-1
	.long	.LVL14
	.value	0x1
	.byte	0x53
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	.LVL25
	.long	.LVL29
	.value	0x1
	.byte	0x53
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	.LVL10
	.long	.LVL11-1
	.value	0x1
	.byte	0x52
	.long	.LVL11-1
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	.LVL21
	.long	.LVL22-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST4:
	.long	.LVL15
	.long	.LVL21
	.value	0x1
	.byte	0x57
	.long	.LVL29
	.long	.LVL34
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL21
	.value	0x1
	.byte	0x57
	.long	.LVL29
	.long	.LVL33
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL21
	.value	0x1
	.byte	0x56
	.long	.LVL29
	.long	.LVL33
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST7:
	.long	.LVL17
	.long	.LVL21
	.value	0x1
	.byte	0x53
	.long	.LVL29
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL21
	.value	0x1
	.byte	0x56
	.long	.LVL29
	.long	.LVL32
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST9:
	.long	.LVL17
	.long	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL19
	.long	.LVL20
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL30
	.long	.LVL31
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL43
	.value	0x1
	.byte	0x56
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST12:
	.long	.LVL39
	.long	.LVL41
	.value	0x1
	.byte	0x53
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x50
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST13:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x57
	.long	.LVL49
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LVL51
	.value	0x1
	.byte	0x50
	.long	.LVL51
	.long	.LVL54
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL52
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST17:
	.long	.LVL52
	.long	.LVL53
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST18:
	.long	.LVL62
	.long	.LVL68
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST19:
	.long	.LVL57
	.long	.LVL61-1
	.value	0x1
	.byte	0x50
	.long	.LVL63
	.long	.LVL66-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST21:
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST22:
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST23:
	.long	.LVL63
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST24:
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST25:
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST26:
	.long	.LVL71
	.long	.LVL72
	.value	0x1
	.byte	0x52
	.long	.LVL72
	.long	.LVL73
	.value	0x1
	.byte	0x50
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x51
	.long	.LVL74
	.long	.LVL75-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL76
	.long	.LVL77
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL77
	.long	.LVL81-1
	.value	0x1
	.byte	0x50
	.long	.LVL82
	.long	.LVL83-1
	.value	0x1
	.byte	0x50
	.long	.LVL84
	.long	.LFE85
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST28:
	.long	.LVL78
	.long	.LVL84
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST29:
	.long	.LVL79
	.long	.LVL80
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST30:
	.long	.LVL82
	.long	.LVL83-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST31:
	.long	.LVL88
	.long	.LVL89
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL90
	.long	.LVL91
	.value	0x7
	.byte	0x71
	.sleb128 0
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL90
	.long	.LVL91
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL92
	.long	.LVL93
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL93
	.long	.LVL94
	.value	0x1
	.byte	0x50
	.long	.LVL95
	.long	.LFE88
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST35:
	.long	.LVL96
	.long	.LVL97
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL97
	.long	.LFE89
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST36:
	.long	.LVL97
	.long	.LVL98
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST37:
	.long	.LVL100
	.long	.LVL103
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL103
	.long	.LVL107
	.value	0x1
	.byte	0x53
	.long	.LVL107
	.long	.LFE90
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST38:
	.long	.LVL101
	.long	.LVL102
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST39:
	.long	.LVL103
	.long	.LVL104
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST40:
	.long	.LVL109
	.long	.LVL111
	.value	0x1
	.byte	0x53
	.long	.LVL111
	.long	.LFE91
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST41:
	.long	.LVL113
	.long	.LVL114
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST42:
	.long	.LVL117
	.long	.LVL119
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST43:
	.long	.LVL116
	.long	.LVL119
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST44:
	.long	.LVL117
	.long	.LVL118
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST45:
	.long	.LVL121
	.long	.LVL123
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL121
	.long	.LVL123
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST47:
	.long	.LVL121
	.long	.LVL122
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST48:
	.long	.LVL125
	.long	.LVL127
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LVL125
	.long	.LVL127
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST50:
	.long	.LVL125
	.long	.LVL126
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST51:
	.long	.LVL128
	.long	.LVL129
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL129
	.long	.LFE96
	.value	0x19
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x10
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
	.long	.LVL130
	.long	.LVL132
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST53:
	.long	.LVL130
	.long	.LVL132
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST54:
	.long	.LVL130
	.long	.LVL131
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST55:
	.long	.LVL134
	.long	.LVL136
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL134
	.long	.LVL136
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST57:
	.long	.LVL134
	.long	.LVL135
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST58:
	.long	.LVL137
	.long	.LVL138
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL138
	.long	.LFE98
	.value	0x20
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x38
	.byte	0x25
	.byte	0xa
	.value	0xff00
	.byte	0x1a
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x24
	.byte	0x21
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x48
	.byte	0x25
	.byte	0x21
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0xa
	.value	0xff00
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST59:
	.long	.LVL138
	.long	.LVL140
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST60:
	.long	.LVL138
	.long	.LVL140
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST61:
	.long	.LVL138
	.long	.LVL139
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST62:
	.long	.LVL143
	.long	.LVL144
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST63:
	.long	.LVL143
	.long	.LVL144
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST64:
	.long	.LVL145
	.long	.LVL146
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL146
	.long	.LFE101
	.value	0x19
	.byte	0x91
	.sleb128 4
	.byte	0x94
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.byte	0x14
	.byte	0x24
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x17
	.byte	0x16
	.byte	0xa
	.value	0xffff
	.byte	0x1a
	.byte	0x16
	.byte	0x1f
	.byte	0x23
	.uleb128 0x10
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.long	0
	.long	0
.LLST65:
	.long	.LVL147
	.long	.LVL148
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST66:
	.long	.LVL147
	.long	.LVL148
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST67:
	.long	.LVL150
	.long	.LVL151
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST68:
	.long	.LVL150
	.long	.LVL151
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST69:
	.long	.LVL154
	.long	.LVL155-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST70:
	.long	.LVL158
	.long	.LVL160-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST71:
	.long	.LVL157
	.long	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	.LVL159
	.long	.LVL160-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST72:
	.long	.LVL163
	.long	.LVL165-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST73:
	.long	.LVL162
	.long	.LVL164
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	.LVL164
	.long	.LVL165-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST74:
	.long	.LVL168
	.long	.LVL170-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST75:
	.long	.LVL167
	.long	.LVL169
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	.LVL169
	.long	.LVL170-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x12c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.long	.LFB76
	.long	.LFE76-.LFB76
	.long	.LFB78
	.long	.LFE78-.LFB78
	.long	.LFB79
	.long	.LFE79-.LFB79
	.long	.LFB80
	.long	.LFE80-.LFB80
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	.LFB82
	.long	.LFE82-.LFB82
	.long	.LFB83
	.long	.LFE83-.LFB83
	.long	.LFB84
	.long	.LFE84-.LFB84
	.long	.LFB85
	.long	.LFE85-.LFB85
	.long	.LFB86
	.long	.LFE86-.LFB86
	.long	.LFB87
	.long	.LFE87-.LFB87
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	.LFB101
	.long	.LFE101-.LFB101
	.long	.LFB102
	.long	.LFE102-.LFB102
	.long	.LFB103
	.long	.LFE103-.LFB103
	.long	.LFB104
	.long	.LFE104-.LFB104
	.long	.LFB105
	.long	.LFE105-.LFB105
	.long	.LFB106
	.long	.LFE106-.LFB106
	.long	.LFB107
	.long	.LFE107-.LFB107
	.long	.LFB108
	.long	.LFE108-.LFB108
	.long	.LFB109
	.long	.LFE109-.LFB109
	.long	.LFB110
	.long	.LFE110-.LFB110
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB73
	.long	.LBE73
	.long	.LBB88
	.long	.LBE88
	.long	0
	.long	0
	.long	.LBB74
	.long	.LBE74
	.long	.LBB83
	.long	.LBE83
	.long	0
	.long	0
	.long	.LBB76
	.long	.LBE76
	.long	.LBB80
	.long	.LBE80
	.long	.LBB81
	.long	.LBE81
	.long	0
	.long	0
	.long	.LBB84
	.long	.LBE84
	.long	.LBB87
	.long	.LBE87
	.long	0
	.long	0
	.long	.LBB117
	.long	.LBE117
	.long	.LBB120
	.long	.LBE120
	.long	0
	.long	0
	.long	.LBB125
	.long	.LBE125
	.long	.LBB133
	.long	.LBE133
	.long	0
	.long	0
	.long	.LBB128
	.long	.LBE128
	.long	.LBB134
	.long	.LBE134
	.long	0
	.long	0
	.long	.LBB141
	.long	.LBE141
	.long	.LBB144
	.long	.LBE144
	.long	0
	.long	0
	.long	.LFB74
	.long	.LFE74
	.long	.LFB76
	.long	.LFE76
	.long	.LFB78
	.long	.LFE78
	.long	.LFB79
	.long	.LFE79
	.long	.LFB80
	.long	.LFE80
	.long	.LFB81
	.long	.LFE81
	.long	.LFB82
	.long	.LFE82
	.long	.LFB83
	.long	.LFE83
	.long	.LFB84
	.long	.LFE84
	.long	.LFB85
	.long	.LFE85
	.long	.LFB86
	.long	.LFE86
	.long	.LFB87
	.long	.LFE87
	.long	.LFB88
	.long	.LFE88
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB100
	.long	.LFE100
	.long	.LFB101
	.long	.LFE101
	.long	.LFB102
	.long	.LFE102
	.long	.LFB103
	.long	.LFE103
	.long	.LFB104
	.long	.LFE104
	.long	.LFB105
	.long	.LFE105
	.long	.LFB106
	.long	.LFE106
	.long	.LFB107
	.long	.LFE107
	.long	.LFB108
	.long	.LFE108
	.long	.LFB109
	.long	.LFE109
	.long	.LFB110
	.long	.LFE110
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF129:
	.string	"k_queue_get"
.LASF12:
	.string	"size_t"
.LASF20:
	.string	"next"
.LASF84:
	.string	"net_buf_alloc"
.LASF91:
	.string	"net_buf_slist_get"
.LASF115:
	.string	"net_buf_simple_pull_le16"
.LASF25:
	.string	"prev"
.LASF83:
	.string	"net_buf_id"
.LASF28:
	.string	"aos_queue_t"
.LASF30:
	.string	"k_queue"
.LASF7:
	.string	"long long unsigned int"
.LASF102:
	.string	"net_buf_frag_del"
.LASF13:
	.string	"s32_t"
.LASF17:
	.string	"sys_snode_t"
.LASF40:
	.string	"_poll_types_bits"
.LASF121:
	.string	"_net_buf_hci_rx_pool_name"
.LASF42:
	.string	"_POLL_STATE_NOT_READY"
.LASF57:
	.string	"free"
.LASF114:
	.string	"net_buf_simple_pull_u8"
.LASF136:
	.string	"/home/stone/Documents/pca"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF116:
	.string	"net_buf_simple_pull_be16"
.LASF63:
	.string	"__bufs"
.LASF35:
	.string	"_POLL_TYPE_IGNORE"
.LASF127:
	.string	"net_buf_pool_list"
.LASF32:
	.string	"poll_events"
.LASF95:
	.string	"net_buf_destroy"
.LASF74:
	.string	"net_buf_reserve"
.LASF58:
	.string	"buf_count"
.LASF4:
	.string	"long int"
.LASF100:
	.string	"parent"
.LASF18:
	.string	"_snode"
.LASF31:
	.string	"_queue"
.LASF76:
	.string	"net_buf_simple_headroom"
.LASF70:
	.string	"net_buf_simple_tail"
.LASF73:
	.string	"net_buf_reset"
.LASF52:
	.string	"frags"
.LASF106:
	.string	"net_buf_simple_add_le16"
.LASF56:
	.string	"net_buf_pool"
.LASF36:
	.string	"_POLL_TYPE_SIGNAL"
.LASF89:
	.string	"sys_slist_get"
.LASF59:
	.string	"uninit_count"
.LASF96:
	.string	"net_buf_unref"
.LASF117:
	.string	"net_buf_simple_pull_le32"
.LASF123:
	.string	"aos_log_level"
.LASF8:
	.string	"unsigned int"
.LASF14:
	.string	"u8_t"
.LASF120:
	.string	"_net_buf_hci_cmd_pool_name"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"u32_t"
.LASF85:
	.string	"timeout"
.LASF107:
	.string	"net_buf_simple_add_be16"
.LASF135:
	.string	"src/buf.c"
.LASF131:
	.string	"irq_lock"
.LASF78:
	.string	"pool_start"
.LASF48:
	.string	"data"
.LASF104:
	.string	"net_buf_simple_add_mem"
.LASF98:
	.string	"clone"
.LASF39:
	.string	"_POLL_NUM_TYPES"
.LASF55:
	.string	"pool_id"
.LASF118:
	.string	"net_buf_simple_pull_be32"
.LASF72:
	.string	"net_buf_simple_push"
.LASF103:
	.string	"next_frag"
.LASF93:
	.string	"net_buf_put"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"_queue_t"
.LASF113:
	.string	"net_buf_simple_pull"
.LASF111:
	.string	"net_buf_simple_push_be16"
.LASF80:
	.string	"pool_get_uninit"
.LASF101:
	.string	"net_buf_frag_add"
.LASF22:
	.string	"tail"
.LASF11:
	.string	"sizetype"
.LASF43:
	.string	"_POLL_STATE_SIGNALED"
.LASF130:
	.string	"irq_unlock"
.LASF60:
	.string	"buf_size"
.LASF19:
	.string	"_slist"
.LASF108:
	.string	"net_buf_simple_add_le32"
.LASF62:
	.string	"destroy"
.LASF92:
	.string	"net_buf_slist_put"
.LASF71:
	.string	"net_buf_simple_add"
.LASF61:
	.string	"user_data_size"
.LASF126:
	.string	"acl_tx_pool"
.LASF27:
	.string	"aos_hdl_t"
.LASF34:
	.string	"k_fifo"
.LASF105:
	.string	"net_buf_simple_add_u8"
.LASF50:
	.string	"__buf"
.LASF41:
	.string	"_poll_states_bits"
.LASF88:
	.string	"frag"
.LASF109:
	.string	"net_buf_simple_add_be32"
.LASF97:
	.string	"net_buf_clone"
.LASF133:
	.string	"k_queue_prepend"
.LASF64:
	.string	"_Bool"
.LASF128:
	.string	"__assert_func"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"node"
.LASF66:
	.string	"net_buf_pool_get"
.LASF86:
	.string	"net_buf_get"
.LASF99:
	.string	"net_buf_frag_insert"
.LASF82:
	.string	"__func__"
.LASF26:
	.string	"sys_dlist_t"
.LASF45:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF21:
	.string	"head"
.LASF23:
	.string	"sys_slist_t"
.LASF134:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF69:
	.string	"sys_slist_is_empty"
.LASF9:
	.string	"long double"
.LASF10:
	.string	"char"
.LASF119:
	.string	"net_buf_simple_tailroom"
.LASF37:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF124:
	.string	"hci_cmd_pool"
.LASF81:
	.string	"index"
.LASF67:
	.string	"net_buf_frag_last"
.LASF94:
	.string	"sys_slist_append_list"
.LASF44:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF125:
	.string	"hci_rx_pool"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"_dnode"
.LASF15:
	.string	"u16_t"
.LASF79:
	.string	"buf_ptr"
.LASF53:
	.string	"net_buf"
.LASF46:
	.string	"_POLL_NUM_STATES"
.LASF75:
	.string	"reserve"
.LASF122:
	.string	"_net_buf_acl_tx_pool_name"
.LASF33:
	.string	"k_lifo"
.LASF77:
	.string	"pool"
.LASF87:
	.string	"fifo"
.LASF54:
	.string	"flags"
.LASF90:
	.string	"sys_slist_get_not_empty"
.LASF38:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF49:
	.string	"size"
.LASF68:
	.string	"net_buf_ref"
.LASF47:
	.string	"net_buf_simple"
.LASF132:
	.string	"k_queue_append_list"
.LASF65:
	.string	"list"
.LASF112:
	.string	"net_buf_simple_push_u8"
.LASF110:
	.string	"net_buf_simple_push_le16"
.LASF137:
	.string	"success"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
