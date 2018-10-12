	.file	"utils_list.c"
	.text
.Ltext0:
	.section	.text.unlikely.list_new,"ax",@progbits
.LCOLDB0:
	.section	.text.list_new,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.list_new
.Ltext_cold0:
	.section	.text.list_new
	.globl	list_new
	.type	list_new, @function
list_new:
.LFB18:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_list.c"
	.loc 1 32 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 34 0
	pushl	$20
	pushl	$34
	pushl	$__func__.3528
	call	LITE_malloc_internal
.LVL0:
	.loc 1 35 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L2
	.loc 1 38 0
	movl	$0, (%eax)
	.loc 1 39 0
	movl	$0, 4(%eax)
	.loc 1 40 0
	movl	$0, 12(%eax)
	.loc 1 41 0
	movl	$0, 16(%eax)
	.loc 1 42 0
	movl	$0, 8(%eax)
.L2:
	.loc 1 44 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	list_new, .-list_new
	.section	.text.unlikely.list_new
.LCOLDE0:
	.section	.text.list_new
.LHOTE0:
	.section	.text.unlikely.list_destroy,"ax",@progbits
.LCOLDB1:
	.section	.text.list_destroy,"ax",@progbits
.LHOTB1:
	.globl	list_destroy
	.type	list_destroy, @function
list_destroy:
.LFB19:
	.loc 1 50 0
	.cfi_startproc
.LVL1:
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
	.loc 1 50 0
	movl	8(%ebp), %ebx
.LVL2:
	.loc 1 53 0
	movl	(%ebx), %edi
.LVL3:
	.loc 1 55 0
	movl	8(%ebx), %esi
.LVL4:
.L9:
	testl	%esi, %esi
	je	.L16
	.loc 1 57 0
	movl	12(%ebx), %edx
	.loc 1 56 0
	movl	4(%edi), %eax
	.loc 1 57 0
	testl	%edx, %edx
	.loc 1 56 0
	movl	%eax, -28(%ebp)
.LVL5:
	.loc 1 57 0
	je	.L10
	.loc 1 58 0
	subl	$12, %esp
	pushl	8(%edi)
	call	*%edx
.LVL6:
	addl	$16, %esp
.L10:
	.loc 1 60 0
	subl	$12, %esp
	decl	%esi
.LVL7:
	pushl	%edi
	call	LITE_free_internal
.LVL8:
	addl	$16, %esp
	movl	-28(%ebp), %edi
	jmp	.L9
.LVL9:
.L16:
	.loc 1 64 0 discriminator 2
	movl	%ebx, 8(%ebp)
	.loc 1 65 0 discriminator 2
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL10:
	popl	%edi
	.cfi_restore 7
.LVL11:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 64 0 discriminator 2
	jmp	LITE_free_internal
.LVL12:
	.cfi_endproc
.LFE19:
	.size	list_destroy, .-list_destroy
	.section	.text.unlikely.list_destroy
.LCOLDE1:
	.section	.text.list_destroy
.LHOTE1:
	.section	.text.unlikely.list_rpush,"ax",@progbits
.LCOLDB2:
	.section	.text.list_rpush,"ax",@progbits
.LHOTB2:
	.globl	list_rpush
	.type	list_rpush, @function
list_rpush:
.LFB20:
	.loc 1 72 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 72 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	.loc 1 73 0
	testl	%edx, %edx
	je	.L18
	.loc 1 77 0
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	.L19
	.loc 1 78 0
	movl	4(%ecx), %ebx
	.loc 1 79 0
	movl	$0, 4(%edx)
	.loc 1 78 0
	movl	%ebx, (%edx)
	.loc 1 80 0
	movl	%edx, 4(%ebx)
	.loc 1 81 0
	movl	%edx, 4(%ecx)
	jmp	.L20
.LVL14:
.L19:
	.loc 1 83 0
	movl	%edx, 4(%ecx)
	movl	%edx, (%ecx)
	.loc 1 84 0
	movl	$0, 4(%edx)
	movl	$0, (%edx)
.LVL15:
.L20:
	.loc 1 87 0
	incl	%eax
	movl	%eax, 8(%ecx)
	.loc 1 88 0
	movl	%edx, %eax
.L18:
	.loc 1 89 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	list_rpush, .-list_rpush
	.section	.text.unlikely.list_rpush
.LCOLDE2:
	.section	.text.list_rpush
.LHOTE2:
	.section	.text.unlikely.list_rpop,"ax",@progbits
.LCOLDB3:
	.section	.text.list_rpop,"ax",@progbits
.LHOTB3:
	.globl	list_rpop
	.type	list_rpop, @function
list_rpop:
.LFB21:
	.loc 1 95 0
	.cfi_startproc
.LVL16:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 95 0
	movl	8(%ebp), %edx
	.loc 1 97 0
	movl	8(%edx), %ecx
	testl	%ecx, %ecx
	je	.L25
	.loc 1 103 0
	decl	%ecx
	.loc 1 101 0
	movl	4(%edx), %eax
.LVL17:
	.loc 1 103 0
	testl	%ecx, %ecx
	movl	%ecx, 8(%edx)
	je	.L26
	.loc 1 104 0
	movl	(%eax), %ecx
	movl	%ecx, 4(%edx)
	movl	$0, 4(%ecx)
	jmp	.L27
.L26:
	.loc 1 106 0
	movl	$0, (%edx)
	movl	$0, 4(%edx)
.LVL18:
.L27:
	.loc 1 109 0
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LVL19:
.L25:
	.loc 1 111 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	list_rpop, .-list_rpop
	.section	.text.unlikely.list_rpop
.LCOLDE3:
	.section	.text.list_rpop
.LHOTE3:
	.section	.text.unlikely.list_lpop,"ax",@progbits
.LCOLDB4:
	.section	.text.list_lpop,"ax",@progbits
.LHOTB4:
	.globl	list_lpop
	.type	list_lpop, @function
list_lpop:
.LFB22:
	.loc 1 117 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 117 0
	movl	8(%ebp), %edx
	.loc 1 119 0
	movl	8(%edx), %ecx
	testl	%ecx, %ecx
	je	.L32
	.loc 1 125 0
	decl	%ecx
	.loc 1 123 0
	movl	(%edx), %eax
.LVL21:
	.loc 1 125 0
	testl	%ecx, %ecx
	movl	%ecx, 8(%edx)
	je	.L33
	.loc 1 126 0
	movl	4(%eax), %ecx
	movl	%ecx, (%edx)
	movl	$0, (%ecx)
	jmp	.L34
.L33:
	.loc 1 128 0
	movl	$0, 4(%edx)
	movl	$0, (%edx)
.LVL22:
.L34:
	.loc 1 131 0
	movl	$0, (%eax)
	movl	$0, 4(%eax)
.LVL23:
.L32:
	.loc 1 133 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	list_lpop, .-list_lpop
	.section	.text.unlikely.list_lpop
.LCOLDE4:
	.section	.text.list_lpop
.LHOTE4:
	.section	.text.unlikely.list_lpush,"ax",@progbits
.LCOLDB5:
	.section	.text.list_lpush,"ax",@progbits
.LHOTB5:
	.globl	list_lpush
	.type	list_lpush, @function
list_lpush:
.LFB23:
	.loc 1 140 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 140 0
	movl	12(%ebp), %edx
	movl	8(%ebp), %ecx
	.loc 1 141 0
	testl	%edx, %edx
	je	.L39
	.loc 1 145 0
	movl	8(%ecx), %eax
	testl	%eax, %eax
	je	.L40
	.loc 1 146 0
	movl	(%ecx), %ebx
	.loc 1 147 0
	movl	$0, (%edx)
	.loc 1 146 0
	movl	%ebx, 4(%edx)
	.loc 1 148 0
	movl	%edx, (%ebx)
	.loc 1 149 0
	movl	%edx, (%ecx)
	jmp	.L41
.LVL25:
.L40:
	.loc 1 151 0
	movl	%edx, 4(%ecx)
	movl	%edx, (%ecx)
	.loc 1 152 0
	movl	$0, 4(%edx)
	movl	$0, (%edx)
.LVL26:
.L41:
	.loc 1 155 0
	incl	%eax
	movl	%eax, 8(%ecx)
	.loc 1 156 0
	movl	%edx, %eax
.L39:
	.loc 1 157 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	list_lpush, .-list_lpush
	.section	.text.unlikely.list_lpush
.LCOLDE5:
	.section	.text.list_lpush
.LHOTE5:
	.section	.text.unlikely.list_remove,"ax",@progbits
.LCOLDB6:
	.section	.text.list_remove,"ax",@progbits
.LHOTB6:
	.globl	list_remove
	.type	list_remove, @function
list_remove:
.LFB26:
	.loc 1 225 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 225 0
	movl	12(%ebp), %esi
	movl	8(%ebp), %ebx
	.loc 1 226 0
	movl	(%esi), %eax
	movl	4(%esi), %edx
	testl	%eax, %eax
	je	.L46
	.loc 1 226 0 is_stmt 0 discriminator 1
	movl	%edx, 4(%eax)
	jmp	.L47
.L46:
	.loc 1 226 0 discriminator 2
	movl	%edx, (%ebx)
.LVL28:
.L47:
	.loc 1 228 0 is_stmt 1
	movl	4(%esi), %edx
	testl	%edx, %edx
	je	.L48
	.loc 1 228 0 is_stmt 0 discriminator 1
	movl	%eax, (%edx)
	jmp	.L49
.L48:
	.loc 1 228 0 discriminator 2
	movl	%eax, 4(%ebx)
.L49:
	.loc 1 230 0 is_stmt 1
	movl	12(%ebx), %eax
	testl	%eax, %eax
	je	.L50
	.loc 1 231 0
	subl	$12, %esp
	pushl	8(%esi)
	call	*%eax
.LVL29:
	addl	$16, %esp
.L50:
	.loc 1 234 0
	subl	$12, %esp
	pushl	%esi
	call	LITE_free_internal
.LVL30:
	.loc 1 235 0
	decl	8(%ebx)
	.loc 1 236 0
	addl	$16, %esp
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL31:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	list_remove, .-list_remove
	.section	.text.unlikely.list_remove
.LCOLDE6:
	.section	.text.list_remove
.LHOTE6:
	.section	.text.unlikely.list_iterator_new_from_node,"ax",@progbits
.LCOLDB7:
	.section	.text.list_iterator_new_from_node,"ax",@progbits
.LHOTB7:
	.globl	list_iterator_new_from_node
	.type	list_iterator_new_from_node, @function
list_iterator_new_from_node:
.LFB28:
	.loc 1 253 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 255 0
	pushl	$8
	pushl	$255
	pushl	$__func__.3592
	call	LITE_malloc_internal
.LVL33:
	.loc 1 256 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L56
	.loc 1 259 0
	movl	8(%ebp), %edx
	movl	%edx, (%eax)
	.loc 1 260 0
	movl	12(%ebp), %edx
	movl	%edx, 4(%eax)
.L56:
	.loc 1 262 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE28:
	.size	list_iterator_new_from_node, .-list_iterator_new_from_node
	.section	.text.unlikely.list_iterator_new_from_node
.LCOLDE7:
	.section	.text.list_iterator_new_from_node
.LHOTE7:
	.section	.text.unlikely.list_iterator_new,"ax",@progbits
.LCOLDB8:
	.section	.text.list_iterator_new,"ax",@progbits
.LHOTB8:
	.globl	list_iterator_new
	.type	list_iterator_new, @function
list_iterator_new:
.LFB27:
	.loc 1 243 0
	.cfi_startproc
.LVL34:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 243 0
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx
	.loc 1 244 0
	movl	4(%ecx), %eax
	testl	%edx, %edx
	cmove	(%ecx), %eax
.LVL35:
	.loc 1 245 0
	movl	%eax, 8(%ebp)
.LVL36:
	.loc 1 246 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 245 0
	jmp	list_iterator_new_from_node
.LVL37:
	.cfi_endproc
.LFE27:
	.size	list_iterator_new, .-list_iterator_new
	.section	.text.unlikely.list_iterator_new
.LCOLDE8:
	.section	.text.list_iterator_new
.LHOTE8:
	.section	.text.unlikely.list_iterator_next,"ax",@progbits
.LCOLDB9:
	.section	.text.list_iterator_next,"ax",@progbits
.LHOTB9:
	.globl	list_iterator_next
	.type	list_iterator_next, @function
list_iterator_next:
.LFB29:
	.loc 1 269 0
	.cfi_startproc
.LVL38:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 269 0
	movl	8(%ebp), %edx
	.loc 1 270 0
	movl	(%edx), %eax
.LVL39:
	.loc 1 271 0
	testl	%eax, %eax
	je	.L65
	.loc 1 272 0
	cmpl	$0, 4(%edx)
	movl	4(%eax), %ecx
	cmovne	(%eax), %ecx
	movl	%ecx, (%edx)
.L65:
	.loc 1 275 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	list_iterator_next, .-list_iterator_next
	.section	.text.unlikely.list_iterator_next
.LCOLDE9:
	.section	.text.list_iterator_next
.LHOTE9:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC10:
	.string	"self"
.LC11:
	.string	"%s == NULL! LITE_free(%s) aborted."
	.section	.text.unlikely.list_iterator_destroy,"ax",@progbits
.LCOLDB12:
	.section	.text.list_iterator_destroy,"ax",@progbits
.LHOTB12:
	.globl	list_iterator_destroy
	.type	list_iterator_destroy, @function
list_iterator_destroy:
.LFB30:
	.loc 1 281 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 281 0
	movl	8(%ebp), %eax
	.loc 1 282 0
	testl	%eax, %eax
	jne	.L72
.LVL41:
.LBB4:
.LBB5:
	pushl	%eax
	pushl	%eax
	pushl	$.LC10
	pushl	$.LC10
	pushl	$.LC11
	pushl	$2
	pushl	$282
	pushl	$__FUNCTION__.3600
	call	LITE_syslog
.LVL42:
	addl	$32, %esp
.LBE5:
.LBE4:
	.loc 1 284 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL43:
.L72:
	.cfi_restore_state
	.loc 1 282 0 discriminator 2
	movl	%eax, 8(%ebp)
.LVL44:
	.loc 1 284 0 discriminator 2
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 282 0 discriminator 2
	jmp	LITE_free_internal
.LVL45:
	.cfi_endproc
.LFE30:
	.size	list_iterator_destroy, .-list_iterator_destroy
	.section	.text.unlikely.list_iterator_destroy
.LCOLDE12:
	.section	.text.list_iterator_destroy
.LHOTE12:
	.section	.text.unlikely.list_find,"ax",@progbits
.LCOLDB13:
	.section	.text.list_find,"ax",@progbits
.LHOTB13:
	.globl	list_find
	.type	list_find, @function
list_find:
.LFB24:
	.loc 1 163 0
	.cfi_startproc
.LVL46:
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
	.loc 1 163 0
	movl	12(%ebp), %edi
	.loc 1 167 0
	pushl	$0
	pushl	8(%ebp)
	call	list_iterator_new
.LVL47:
	movl	%eax, %esi
.LVL48:
	addl	$16, %esp
	.loc 1 168 0
	xorl	%eax, %eax
.LVL49:
	.loc 1 167 0
	testl	%esi, %esi
	je	.L77
.L80:
	.loc 1 183 0
	subl	$12, %esp
	pushl	%esi
	call	list_iterator_next
.LVL50:
	addl	$16, %esp
	.loc 1 171 0
	testl	%eax, %eax
	.loc 1 183 0
	movl	%eax, %ebx
.LVL51:
	.loc 1 171 0
	je	.L88
	.loc 1 172 0
	movl	8(%ebp), %eax
.LVL52:
	movl	16(%eax), %eax
	testl	%eax, %eax
	je	.L79
	.loc 1 173 0
	pushl	%edx
	pushl	%edx
	pushl	8(%ebx)
	pushl	%edi
	call	*%eax
.LVL53:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L80
	jmp	.L87
.L79:
	.loc 1 178 0
	cmpl	%edi, 8(%ebx)
	jne	.L80
.L87:
	.loc 1 179 0
	subl	$12, %esp
	pushl	%esi
	call	list_iterator_destroy
.LVL54:
	.loc 1 180 0
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L77
.LVL55:
.L88:
	.loc 1 186 0
	subl	$12, %esp
	pushl	%esi
	call	list_iterator_destroy
.LVL56:
	.loc 1 187 0
	addl	$16, %esp
	xorl	%eax, %eax
.LVL57:
.L77:
	.loc 1 188 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL58:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	list_find, .-list_find
	.section	.text.unlikely.list_find
.LCOLDE13:
	.section	.text.list_find
.LHOTE13:
	.section	.text.unlikely.list_at,"ax",@progbits
.LCOLDB14:
	.section	.text.list_at,"ax",@progbits
.LHOTB14:
	.globl	list_at
	.type	list_at, @function
list_at:
.LFB25:
	.loc 1 194 0
	.cfi_startproc
.LVL59:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%edx, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 194 0
	movl	12(%ebp), %ebx
	movl	8(%ebp), %eax
	.loc 1 197 0
	testl	%ebx, %ebx
	jns	.L90
.LVL60:
	.loc 1 199 0
	notl	%ebx
.LVL61:
	.loc 1 198 0
	movl	$1, %edx
.LVL62:
.L90:
	.loc 1 202 0
	cmpl	%ebx, 8(%eax)
	ja	.L91
.LVL63:
.L93:
	.loc 1 218 0
	xorl	%eax, %eax
	jmp	.L92
.LVL64:
.L91:
.LBB6:
	.loc 1 206 0
	pushl	%ecx
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	list_iterator_new
.LVL65:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %esi
.LVL66:
	je	.L93
.LVL67:
.L95:
	.loc 1 212 0
	subl	$12, %esp
	.loc 1 211 0
	decl	%ebx
.LVL68:
	.loc 1 212 0
	pushl	%esi
	call	list_iterator_next
.LVL69:
	addl	$16, %esp
.LVL70:
	.loc 1 211 0
	cmpl	$-1, %ebx
	jne	.L95
	.loc 1 214 0
	subl	$12, %esp
	movl	%eax, -12(%ebp)
	pushl	%esi
	call	list_iterator_destroy
.LVL71:
	.loc 1 215 0
	movl	-12(%ebp), %eax
	addl	$16, %esp
.LVL72:
.L92:
.LBE6:
	.loc 1 219 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL73:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	list_at, .-list_at
	.section	.text.unlikely.list_at
.LCOLDE14:
	.section	.text.list_at
.LHOTE14:
	.section	.text.unlikely.list_node_new,"ax",@progbits
.LCOLDB15:
	.section	.text.list_node_new,"ax",@progbits
.LHOTB15:
	.globl	list_node_new
	.type	list_node_new, @function
list_node_new:
.LFB31:
	.loc 1 290 0
	.cfi_startproc
.LVL74:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 292 0
	pushl	$12
	pushl	$292
	pushl	$__func__.3606
	call	LITE_malloc_internal
.LVL75:
	.loc 1 293 0
	addl	$16, %esp
	testl	%eax, %eax
	je	.L103
	.loc 1 299 0
	movl	8(%ebp), %edx
	.loc 1 297 0
	movl	$0, (%eax)
	.loc 1 298 0
	movl	$0, 4(%eax)
	.loc 1 299 0
	movl	%edx, 8(%eax)
.L103:
	.loc 1 301 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	list_node_new, .-list_node_new
	.section	.text.unlikely.list_node_new
.LCOLDE15:
	.section	.text.list_node_new
.LHOTE15:
	.section	.rodata.__func__.3606,"a",@progbits
	.align 4
	.type	__func__.3606, @object
	.size	__func__.3606, 14
__func__.3606:
	.string	"list_node_new"
	.section	.rodata.__FUNCTION__.3600,"a",@progbits
	.align 4
	.type	__FUNCTION__.3600, @object
	.size	__FUNCTION__.3600, 22
__FUNCTION__.3600:
	.string	"list_iterator_destroy"
	.section	.rodata.__func__.3592,"a",@progbits
	.align 4
	.type	__func__.3592, @object
	.size	__func__.3592, 28
__func__.3592:
	.string	"list_iterator_new_from_node"
	.section	.rodata.__func__.3528,"a",@progbits
	.align 4
	.type	__func__.3528, @object
	.size	__func__.3528, 9
__func__.3528:
	.string	"list_new"
	.text
.Letext0:
	.section	.text.unlikely.list_new
.Letext_cold0:
	.file 2 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_list.h"
	.file 3 "./framework/protocol/linkkit/iotkit/base/utils/LITE-utils/src/lite-utils.h"
	.file 4 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x70f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF54
	.byte	0xc
	.long	.LASF55
	.long	.LASF56
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.long	0x72
	.uleb128 0x6
	.long	.LASF57
	.byte	0x4
	.long	0x64
	.byte	0x4
	.byte	0x22
	.long	0xbc
	.uleb128 0x7
	.long	.LASF12
	.byte	0
	.uleb128 0x7
	.long	.LASF13
	.byte	0x1
	.uleb128 0x7
	.long	.LASF14
	.byte	0x2
	.uleb128 0x7
	.long	.LASF15
	.byte	0x3
	.uleb128 0x7
	.long	.LASF16
	.byte	0x4
	.uleb128 0x7
	.long	.LASF17
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.long	0x64
	.byte	0x2
	.byte	0x1c
	.long	0xd5
	.uleb128 0x7
	.long	.LASF18
	.byte	0
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x2
	.byte	0x1f
	.long	0xbc
	.uleb128 0xa
	.long	.LASF58
	.byte	0xc
	.byte	0x2
	.byte	0x24
	.long	0x111
	.uleb128 0xb
	.long	.LASF20
	.byte	0x2
	.byte	0x25
	.long	0x111
	.byte	0
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.byte	0x26
	.long	0x111
	.byte	0x4
	.uleb128 0xc
	.string	"val"
	.byte	0x2
	.byte	0x27
	.long	0x80
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0xe0
	.uleb128 0x9
	.long	.LASF23
	.byte	0x2
	.byte	0x28
	.long	0xe0
	.uleb128 0xe
	.byte	0x14
	.byte	0x2
	.byte	0x2d
	.long	0x167
	.uleb128 0xb
	.long	.LASF24
	.byte	0x2
	.byte	0x2e
	.long	0x167
	.byte	0
	.uleb128 0xb
	.long	.LASF25
	.byte	0x2
	.byte	0x2f
	.long	0x167
	.byte	0x4
	.uleb128 0xc
	.string	"len"
	.byte	0x2
	.byte	0x30
	.long	0x64
	.byte	0x8
	.uleb128 0xb
	.long	.LASF26
	.byte	0x2
	.byte	0x31
	.long	0x178
	.byte	0xc
	.uleb128 0xb
	.long	.LASF27
	.byte	0x2
	.byte	0x32
	.long	0x192
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x117
	.uleb128 0xf
	.long	0x178
	.uleb128 0x10
	.long	0x80
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x16d
	.uleb128 0x11
	.long	0x5d
	.long	0x192
	.uleb128 0x10
	.long	0x80
	.uleb128 0x10
	.long	0x80
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x17e
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0x33
	.long	0x122
	.uleb128 0xe
	.byte	0x8
	.byte	0x2
	.byte	0x38
	.long	0x1c4
	.uleb128 0xb
	.long	.LASF21
	.byte	0x2
	.byte	0x39
	.long	0x167
	.byte	0
	.uleb128 0xb
	.long	.LASF29
	.byte	0x2
	.byte	0x3a
	.long	0xd5
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF30
	.byte	0x2
	.byte	0x3b
	.long	0x1a3
	.uleb128 0x12
	.long	.LASF59
	.byte	0x1
	.value	0x118
	.byte	0x1
	.long	0x1f6
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.value	0x118
	.long	0x1f6
	.uleb128 0x14
	.long	.LASF31
	.long	0x20c
	.long	.LASF59
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x1c4
	.uleb128 0x15
	.long	0x82
	.long	0x20c
	.uleb128 0x16
	.long	0x79
	.byte	0x15
	.byte	0
	.uleb128 0x5
	.long	0x1fc
	.uleb128 0x17
	.long	.LASF35
	.byte	0x1
	.byte	0x1f
	.long	0x250
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x250
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0x21
	.long	0x250
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF32
	.long	0x266
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3528
	.uleb128 0x1a
	.long	.LVL0
	.long	0x6f1
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x198
	.uleb128 0x15
	.long	0x82
	.long	0x266
	.uleb128 0x16
	.long	0x79
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.long	0x256
	.uleb128 0x1b
	.long	.LASF41
	.byte	0x1
	.byte	0x31
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d7
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x1
	.byte	0x31
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"len"
	.byte	0x1
	.byte	0x33
	.long	0x64
	.long	.LLST0
	.uleb128 0x1e
	.long	.LASF21
	.byte	0x1
	.byte	0x34
	.long	0x167
	.long	.LLST1
	.uleb128 0x1e
	.long	.LASF34
	.byte	0x1
	.byte	0x35
	.long	0x167
	.long	.LLST2
	.uleb128 0x1f
	.long	.LASF31
	.long	0x2e7
	.uleb128 0x1a
	.long	.LVL8
	.long	0x6fc
	.uleb128 0x20
	.long	.LVL12
	.long	0x6fc
	.byte	0
	.uleb128 0x15
	.long	0x82
	.long	0x2e7
	.uleb128 0x16
	.long	0x79
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.long	0x2d7
	.uleb128 0x17
	.long	.LASF36
	.byte	0x1
	.byte	0x47
	.long	0x167
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x324
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x47
	.long	0x250
	.long	.LLST3
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.byte	0x47
	.long	0x167
	.long	.LLST4
	.byte	0
	.uleb128 0x17
	.long	.LASF38
	.byte	0x1
	.byte	0x5e
	.long	0x167
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x35c
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x5e
	.long	0x250
	.long	.LLST5
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0x60
	.long	0x167
	.long	.LLST6
	.byte	0
	.uleb128 0x17
	.long	.LASF39
	.byte	0x1
	.byte	0x74
	.long	0x167
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x394
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x74
	.long	0x250
	.long	.LLST7
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0x76
	.long	0x167
	.long	.LLST8
	.byte	0
	.uleb128 0x17
	.long	.LASF40
	.byte	0x1
	.byte	0x8b
	.long	0x167
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x3cc
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0x8b
	.long	0x250
	.long	.LLST9
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.byte	0x8b
	.long	0x167
	.long	.LLST10
	.byte	0
	.uleb128 0x1b
	.long	.LASF42
	.byte	0x1
	.byte	0xe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x412
	.uleb128 0x21
	.long	.LASF33
	.byte	0x1
	.byte	0xe0
	.long	0x250
	.long	.LLST11
	.uleb128 0x21
	.long	.LASF37
	.byte	0x1
	.byte	0xe0
	.long	0x167
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF31
	.long	0x422
	.uleb128 0x1a
	.long	.LVL30
	.long	0x6fc
	.byte	0
	.uleb128 0x15
	.long	0x82
	.long	0x422
	.uleb128 0x16
	.long	0x79
	.byte	0xb
	.byte	0
	.uleb128 0x5
	.long	0x412
	.uleb128 0x17
	.long	.LASF43
	.byte	0x1
	.byte	0xfc
	.long	0x1f6
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x482
	.uleb128 0x1c
	.long	.LASF37
	.byte	0x1
	.byte	0xfc
	.long	0x167
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x1
	.byte	0xfc
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.long	.LASF33
	.byte	0x1
	.byte	0xfe
	.long	0x1f6
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF32
	.long	0x492
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3592
	.uleb128 0x1a
	.long	.LVL33
	.long	0x6f1
	.byte	0
	.uleb128 0x15
	.long	0x82
	.long	0x492
	.uleb128 0x16
	.long	0x79
	.byte	0x1b
	.byte	0
	.uleb128 0x5
	.long	0x482
	.uleb128 0x17
	.long	.LASF44
	.byte	0x1
	.byte	0xf2
	.long	0x1f6
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef
	.uleb128 0x21
	.long	.LASF45
	.byte	0x1
	.byte	0xf2
	.long	0x250
	.long	.LLST13
	.uleb128 0x1c
	.long	.LASF29
	.byte	0x1
	.byte	0xf2
	.long	0xd5
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0xf4
	.long	0x167
	.long	.LLST14
	.uleb128 0x22
	.long	.LVL37
	.long	0x427
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF46
	.byte	0x1
	.value	0x10c
	.long	0x167
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x527
	.uleb128 0x25
	.long	.LASF33
	.byte	0x1
	.value	0x10c
	.long	0x1f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF34
	.byte	0x1
	.value	0x10e
	.long	0x167
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x27
	.long	0x1cf
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x58d
	.uleb128 0x28
	.long	0x1dc
	.long	.LLST15
	.uleb128 0x29
	.long	0x1e8
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3600
	.uleb128 0x2a
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x583
	.uleb128 0x28
	.long	0x1dc
	.long	.LLST16
	.uleb128 0x2b
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x29
	.long	0x1e8
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3600
	.uleb128 0x1a
	.long	.LVL42
	.long	0x707
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LVL45
	.long	0x6fc
	.byte	0
	.uleb128 0x2c
	.long	.LASF47
	.byte	0x1
	.byte	0xa2
	.long	0x167
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x604
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x1
	.byte	0xa2
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.string	"val"
	.byte	0x1
	.byte	0xa2
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"it"
	.byte	0x1
	.byte	0xa4
	.long	0x1f6
	.long	.LLST17
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0xa5
	.long	0x167
	.long	.LLST18
	.uleb128 0x1a
	.long	.LVL47
	.long	0x497
	.uleb128 0x1a
	.long	.LVL50
	.long	0x4ef
	.uleb128 0x1a
	.long	.LVL54
	.long	0x1cf
	.uleb128 0x1a
	.long	.LVL56
	.long	0x1cf
	.byte	0
	.uleb128 0x17
	.long	.LASF48
	.byte	0x1
	.byte	0xc1
	.long	0x167
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x68c
	.uleb128 0x1c
	.long	.LASF33
	.byte	0x1
	.byte	0xc1
	.long	0x250
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.long	.LASF49
	.byte	0x1
	.byte	0xc1
	.long	0x5d
	.long	.LLST19
	.uleb128 0x1e
	.long	.LASF29
	.byte	0x1
	.byte	0xc3
	.long	0xd5
	.long	.LLST20
	.uleb128 0x2b
	.long	.LBB6
	.long	.LBE6-.LBB6
	.uleb128 0x1d
	.string	"it"
	.byte	0x1
	.byte	0xcb
	.long	0x1f6
	.long	.LLST21
	.uleb128 0x1e
	.long	.LASF37
	.byte	0x1
	.byte	0xcc
	.long	0x167
	.long	.LLST22
	.uleb128 0x1a
	.long	.LVL65
	.long	0x497
	.uleb128 0x1a
	.long	.LVL69
	.long	0x4ef
	.uleb128 0x1a
	.long	.LVL71
	.long	0x1cf
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF50
	.byte	0x1
	.value	0x121
	.long	0x167
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x6dc
	.uleb128 0x2e
	.string	"val"
	.byte	0x1
	.value	0x121
	.long	0x80
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.long	.LASF33
	.byte	0x1
	.value	0x123
	.long	0x167
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x19
	.long	.LASF32
	.long	0x6ec
	.uleb128 0x5
	.byte	0x3
	.long	__func__.3606
	.uleb128 0x1a
	.long	.LVL75
	.long	0x6f1
	.byte	0
	.uleb128 0x15
	.long	0x82
	.long	0x6ec
	.uleb128 0x16
	.long	0x79
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.long	0x6dc
	.uleb128 0x2f
	.long	.LASF51
	.long	.LASF51
	.byte	0x3
	.byte	0x50
	.uleb128 0x2f
	.long	.LASF52
	.long	.LASF52
	.byte	0x3
	.byte	0x52
	.uleb128 0x2f
	.long	.LASF53
	.long	.LASF53
	.byte	0x4
	.byte	0x34
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xb
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2116
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.long	.LVL2
	.long	.LVL4
	.value	0x2
	.byte	0x73
	.sleb128 8
	.long	.LVL4
	.long	.LVL7
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	.LVL7
	.long	.LVL9
	.value	0x1
	.byte	0x56
	.long	.LVL9
	.long	.LVL10
	.value	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL6-1
	.long	.LVL9
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST2:
	.long	.LVL3
	.long	.LVL8
	.value	0x1
	.byte	0x57
	.long	.LVL8
	.long	.LVL9
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL9
	.long	.LVL11
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST3:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL15
	.long	.LFE20
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST4:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL14
	.long	.LFE20
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL16
	.long	.LVL18
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL18
	.long	.LFE21
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL20
	.long	.LVL22
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL22
	.long	.LFE22
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL21
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL24
	.long	.LVL26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL26
	.long	.LFE23
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL25
	.long	.LFE23
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL28
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL28
	.long	.LVL31
	.value	0x1
	.byte	0x53
	.long	.LVL31
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL30
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL30
	.long	.LFE26
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL34
	.long	.LVL36
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL40
	.long	.LVL44
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL41
	.long	.LVL43
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL58
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST18:
	.long	.LVL51
	.long	.LVL52
	.value	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	.LVL55
	.long	.LVL56-1
	.value	0x1
	.byte	0x50
	.long	.LVL56-1
	.long	.LVL57
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST19:
	.long	.LVL59
	.long	.LVL61
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL61
	.long	.LVL68
	.value	0x1
	.byte	0x53
	.long	.LVL68
	.long	.LVL70
	.value	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.long	.LVL70
	.long	.LVL73
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST20:
	.long	.LVL59
	.long	.LVL60
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL60
	.long	.LVL62
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL62
	.long	.LVL63
	.value	0x1
	.byte	0x52
	.long	.LVL64
	.long	.LVL65-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LVL72
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST22:
	.long	.LVL69
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	.LVL71-1
	.long	.LVL72
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x84
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
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB31
	.long	.LFE31-.LFB31
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
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	.LFB26
	.long	.LFE26
	.long	.LFB28
	.long	.LFE28
	.long	.LFB27
	.long	.LFE27
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB24
	.long	.LFE24
	.long	.LFB25
	.long	.LFE25
	.long	.LFB31
	.long	.LFE31
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"LOG_DEBUG_LEVEL"
.LASF15:
	.string	"LOG_WARNING_LEVEL"
.LASF20:
	.string	"prev"
.LASF29:
	.string	"direction"
.LASF7:
	.string	"long long unsigned int"
.LASF41:
	.string	"list_destroy"
.LASF21:
	.string	"next"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF43:
	.string	"list_iterator_new_from_node"
.LASF22:
	.string	"list_direction_t"
.LASF35:
	.string	"list_new"
.LASF4:
	.string	"long int"
.LASF39:
	.string	"list_lpop"
.LASF50:
	.string	"list_node_new"
.LASF56:
	.string	"/home/stone/Documents/pca"
.LASF33:
	.string	"self"
.LASF36:
	.string	"list_rpush"
.LASF13:
	.string	"LOG_CRIT_LEVEL"
.LASF8:
	.string	"unsigned int"
.LASF5:
	.string	"long unsigned int"
.LASF31:
	.string	"__FUNCTION__"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"LIST_HEAD"
.LASF53:
	.string	"LITE_syslog"
.LASF42:
	.string	"list_remove"
.LASF57:
	.string	"_LOGLEVEL"
.LASF52:
	.string	"LITE_free_internal"
.LASF25:
	.string	"tail"
.LASF11:
	.string	"sizetype"
.LASF40:
	.string	"list_lpush"
.LASF9:
	.string	"long double"
.LASF27:
	.string	"match"
.LASF38:
	.string	"list_rpop"
.LASF23:
	.string	"list_node_t"
.LASF12:
	.string	"LOG_EMERG_LEVEL"
.LASF44:
	.string	"list_iterator_new"
.LASF46:
	.string	"list_iterator_next"
.LASF48:
	.string	"list_at"
.LASF28:
	.string	"list_t"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"curr"
.LASF37:
	.string	"node"
.LASF2:
	.string	"short int"
.LASF32:
	.string	"__func__"
.LASF58:
	.string	"list_node"
.LASF14:
	.string	"LOG_ERR_LEVEL"
.LASF24:
	.string	"head"
.LASF54:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF16:
	.string	"LOG_INFO_LEVEL"
.LASF10:
	.string	"char"
.LASF49:
	.string	"index"
.LASF59:
	.string	"list_iterator_destroy"
.LASF55:
	.string	"src/utils_list.c"
.LASF30:
	.string	"list_iterator_t"
.LASF26:
	.string	"free"
.LASF45:
	.string	"list"
.LASF51:
	.string	"LITE_malloc_internal"
.LASF19:
	.string	"LIST_TAIL"
.LASF47:
	.string	"list_find"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
