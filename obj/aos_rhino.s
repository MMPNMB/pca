	.file	"aos_rhino.c"
	.text
.Ltext0:
	.section	.text.unlikely.aos_reboot,"ax",@progbits
.LCOLDB0:
	.section	.text.aos_reboot,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.aos_reboot
.Ltext_cold0:
	.section	.text.aos_reboot
	.globl	aos_reboot
	.type	aos_reboot, @function
aos_reboot:
.LFB28:
	.file 1 "kernel/vcall/aos/aos_rhino.c"
	.loc 1 20 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 22 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 21 0
	jmp	hal_reboot
.LVL0:
	.cfi_endproc
.LFE28:
	.size	aos_reboot, .-aos_reboot
	.section	.text.unlikely.aos_reboot
.LCOLDE0:
	.section	.text.aos_reboot
.LHOTE0:
	.section	.text.unlikely.aos_get_hz,"ax",@progbits
.LCOLDB1:
	.section	.text.aos_get_hz,"ax",@progbits
.LHOTB1:
	.globl	aos_get_hz
	.type	aos_get_hz, @function
aos_get_hz:
.LFB29:
	.loc 1 25 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 27 0
	movl	$500, %eax
	.loc 1 25 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 27 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	aos_get_hz, .-aos_get_hz
	.section	.text.unlikely.aos_get_hz
.LCOLDE1:
	.section	.text.aos_get_hz
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"AOS-R-1.3.1"
	.section	.text.unlikely.aos_version_get,"ax",@progbits
.LCOLDB3:
	.section	.text.aos_version_get,"ax",@progbits
.LHOTB3:
	.globl	aos_version_get
	.type	aos_version_get, @function
aos_version_get:
.LFB30:
	.loc 1 30 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 32 0
	movl	$.LC2, %eax
	.loc 1 30 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 32 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE30:
	.size	aos_version_get, .-aos_version_get
	.section	.text.unlikely.aos_version_get
.LCOLDE3:
	.section	.text.aos_version_get
.LHOTE3:
	.section	.text.unlikely.aos_task_new,"ax",@progbits
.LCOLDB4:
	.section	.text.aos_task_new,"ax",@progbits
.LHOTB4:
	.globl	aos_task_new
	.type	aos_task_new, @function
aos_task_new:
.LFB31:
	.loc 1 37 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$36, %esp
	.loc 1 37 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 42 0
	movl	20(%ebp), %eax
	pushl	$1
	pushl	12(%ebp)
	.loc 1 40 0
	movl	$0, -16(%ebp)
	.loc 1 42 0
	shrl	$2, %eax
	pushl	%eax
	leal	-16(%ebp), %eax
	pushl	$0
	pushl	$0
	pushl	$32
	pushl	16(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	call	krhino_task_dyn_create
.LVL2:
	movl	%eax, %edx
.LVL3:
	.loc 1 44 0
	addl	$48, %esp
	.loc 1 45 0
	xorl	%eax, %eax
.LVL4:
	.loc 1 44 0
	testl	%edx, %edx
	je	.L8
	.loc 1 48 0
	cmpl	$305, %edx
	je	.L10
	ja	.L11
	cmpl	$101, %edx
	ja	.L12
	cmpl	$100, %edx
	jnb	.L10
	cmpl	$8, %edx
	ja	.L13
	cmpl	$7, %edx
	jnb	.L10
	cmpl	$5, %edx
	je	.L10
	ja	.L25
	cmpl	$2, %edx
	je	.L25
	jmp	.L9
.L13:
	cmpl	$9, %edx
	je	.L9
	.loc 1 48 0
	movl	$-11, %eax
	.loc 1 48 0
	cmpl	$11, %edx
	jmp	.L88
.L12:
	cmpl	$202, %edx
	ja	.L16
	cmpl	$200, %edx
	jnb	.L9
	cmpl	$102, %edx
	je	.L25
	.loc 1 48 0
	movl	$-12, %eax
	.loc 1 48 0
	cmpl	$105, %edx
.L88:
	je	.L8
	jmp	.L9
.L16:
	cmpl	$300, %edx
	je	.L10
	ja	.L9
	cmpl	$203, %edx
	jne	.L9
	jmp	.L10
.L11:
	cmpl	$800, %edx
	je	.L10
	ja	.L18
	cmpl	$701, %edx
	ja	.L19
	cmpl	$700, %edx
	jnb	.L10
	jmp	.L9
.L19:
	cmpl	$702, %edx
	je	.L9
	cmpl	$705, %edx
	ja	.L9
	jmp	.L10
.L18:
	cmpl	$1001, %edx
	je	.L20
	ja	.L21
	jmp	.L9
.L21:
	cmpl	$1103, %edx
	je	.L20
	ja	.L9
	cmpl	$1100, %edx
	jb	.L9
.L10:
	.loc 1 48 0
	movl	$-22, %eax
	jmp	.L8
.L20:
	.loc 1 48 0 discriminator 7
	movl	$-11, %eax
	jmp	.L8
.L9:
	.loc 1 48 0 discriminator 1
	orl	$-1, %eax
	jmp	.L8
.L25:
	.loc 1 48 0
	movl	$-14, %eax
.L8:
	.loc 1 49 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L23
	call	__stack_chk_fail
.LVL5:
.L23:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	aos_task_new, .-aos_task_new
	.section	.text.unlikely.aos_task_new
.LCOLDE4:
	.section	.text.aos_task_new
.LHOTE4:
	.section	.text.unlikely.aos_task_new_ext,"ax",@progbits
.LCOLDB5:
	.section	.text.aos_task_new_ext,"ax",@progbits
.LHOTB5:
	.globl	aos_task_new_ext
	.type	aos_task_new_ext, @function
aos_task_new_ext:
.LFB32:
	.loc 1 53 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 55 0
	movl	24(%ebp), %eax
	pushl	$1
	pushl	16(%ebp)
	shrl	$2, %eax
	pushl	%eax
	movzbl	28(%ebp), %eax
	pushl	$0
	pushl	$0
	pushl	%eax
	pushl	20(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	krhino_task_dyn_create
.LVL7:
	movl	%eax, %edx
.LVL8:
	.loc 1 57 0
	addl	$48, %esp
	.loc 1 58 0
	xorl	%eax, %eax
.LVL9:
	.loc 1 57 0
	testl	%edx, %edx
	je	.L91
	.loc 1 61 0
	cmpl	$305, %edx
	je	.L93
	ja	.L94
	cmpl	$101, %edx
	ja	.L95
	cmpl	$100, %edx
	jnb	.L93
	cmpl	$8, %edx
	ja	.L96
	cmpl	$7, %edx
	jnb	.L93
	cmpl	$5, %edx
	je	.L93
	ja	.L107
	cmpl	$2, %edx
	je	.L107
	jmp	.L92
.L96:
	cmpl	$9, %edx
	je	.L92
	.loc 1 61 0
	movl	$-11, %eax
	.loc 1 61 0
	cmpl	$11, %edx
	jmp	.L170
.L95:
	cmpl	$202, %edx
	ja	.L99
	cmpl	$200, %edx
	jnb	.L92
	cmpl	$102, %edx
	je	.L107
	.loc 1 61 0
	movl	$-12, %eax
	.loc 1 61 0
	cmpl	$105, %edx
.L170:
	je	.L91
	jmp	.L92
.L99:
	cmpl	$300, %edx
	je	.L93
	ja	.L92
	cmpl	$203, %edx
	jne	.L92
	jmp	.L93
.L94:
	cmpl	$800, %edx
	je	.L93
	ja	.L101
	cmpl	$701, %edx
	ja	.L102
	cmpl	$700, %edx
	jnb	.L93
	jmp	.L92
.L102:
	cmpl	$702, %edx
	je	.L92
	cmpl	$705, %edx
	ja	.L92
	jmp	.L93
.L101:
	cmpl	$1001, %edx
	je	.L103
	ja	.L104
	jmp	.L92
.L104:
	cmpl	$1103, %edx
	je	.L103
	ja	.L92
	cmpl	$1100, %edx
	jb	.L92
.L93:
	.loc 1 61 0
	movl	$-22, %eax
	jmp	.L91
.L103:
	.loc 1 61 0 discriminator 7
	movl	$-11, %eax
	jmp	.L91
.L92:
	.loc 1 61 0 discriminator 1
	orl	$-1, %eax
	jmp	.L91
.L107:
	.loc 1 61 0
	movl	$-14, %eax
.L91:
	.loc 1 62 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE32:
	.size	aos_task_new_ext, .-aos_task_new_ext
	.section	.text.unlikely.aos_task_new_ext
.LCOLDE5:
	.section	.text.aos_task_new_ext
.LHOTE5:
	.section	.text.unlikely.aos_task_exit,"ax",@progbits
.LCOLDB6:
	.section	.text.aos_task_exit,"ax",@progbits
.LHOTB6:
	.globl	aos_task_exit
	.type	aos_task_exit, @function
aos_task_exit:
.LFB33:
	.loc 1 65 0
	.cfi_startproc
.LVL10:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 68 0
	movl	$0, 8(%ebp)
.LVL11:
	.loc 1 69 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 68 0
	jmp	krhino_task_dyn_del
.LVL12:
	.cfi_endproc
.LFE33:
	.size	aos_task_exit, .-aos_task_exit
	.section	.text.unlikely.aos_task_exit
.LCOLDE6:
	.section	.text.aos_task_exit
.LHOTE6:
	.section	.text.unlikely.aos_task_name,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_task_name,"ax",@progbits
.LHOTB7:
	.globl	aos_task_name
	.type	aos_task_name, @function
aos_task_name:
.LFB34:
	.loc 1 73 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 74 0
	call	krhino_cur_task_get
.LVL13:
	movl	4(%eax), %eax
	.loc 1 75 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	aos_task_name, .-aos_task_name
	.section	.text.unlikely.aos_task_name
.LCOLDE7:
	.section	.text.aos_task_name
.LHOTE7:
	.section	.text.unlikely.aos_task_key_create,"ax",@progbits
.LCOLDB8:
	.section	.text.aos_task_key_create,"ax",@progbits
.LHOTB8:
	.globl	aos_task_key_create
	.type	aos_task_key_create, @function
aos_task_key_create:
.LFB35:
	.loc 1 78 0
	.cfi_startproc
.LVL14:
	.loc 1 82 0
	movl	used_bitmap, %edx
	.loc 1 78 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 82 0
	testb	$2, %dl
	je	.L178
.LVL15:
	testb	$1, %dl
	.loc 1 90 0
	movl	$-22, %eax
	.loc 1 82 0
	jne	.L177
	movl	$1, %eax
	.loc 1 81 0
	xorl	%ecx, %ecx
	jmp	.L176
.LVL16:
.L178:
	.loc 1 82 0
	movl	$2, %eax
	.loc 1 81 0
	movl	$1, %ecx
.LVL17:
.L176:
	.loc 1 83 0
	orl	%edx, %eax
	movl	%eax, used_bitmap
	.loc 1 84 0
	movl	8(%ebp), %eax
	movl	%ecx, (%eax)
	.loc 1 86 0
	xorl	%eax, %eax
.L177:
	.loc 1 91 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE35:
	.size	aos_task_key_create, .-aos_task_key_create
	.section	.text.unlikely.aos_task_key_create
.LCOLDE8:
	.section	.text.aos_task_key_create
.LHOTE8:
	.section	.text.unlikely.aos_task_key_delete,"ax",@progbits
.LCOLDB9:
	.section	.text.aos_task_key_delete,"ax",@progbits
.LHOTB9:
	.globl	aos_task_key_delete
	.type	aos_task_key_delete, @function
aos_task_key_delete:
.LFB36:
	.loc 1 94 0
	.cfi_startproc
.LVL18:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 94 0
	movl	8(%ebp), %ecx
	.loc 1 95 0
	cmpl	$1, %ecx
	ja	.L181
	.loc 1 99 0
	movl	$-2, %eax
	roll	%cl, %eax
	andl	%eax, used_bitmap
.L181:
	.loc 1 100 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	aos_task_key_delete, .-aos_task_key_delete
	.section	.text.unlikely.aos_task_key_delete
.LCOLDE9:
	.section	.text.aos_task_key_delete
.LHOTE9:
	.section	.text.unlikely.aos_task_setspecific,"ax",@progbits
.LCOLDB10:
	.section	.text.aos_task_setspecific,"ax",@progbits
.LHOTB10:
	.globl	aos_task_setspecific
	.type	aos_task_setspecific, @function
aos_task_setspecific:
.LFB37:
	.loc 1 104 0
	.cfi_startproc
.LVL19:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 106 0
	call	krhino_cur_task_get
.LVL20:
	pushl	%edx
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	%eax
	call	krhino_task_info_set
.LVL21:
	movl	%eax, %edx
.LVL22:
	.loc 1 107 0
	addl	$16, %esp
	.loc 1 108 0
	xorl	%eax, %eax
.LVL23:
	.loc 1 107 0
	testl	%edx, %edx
	je	.L185
	.loc 1 111 0
	cmpl	$305, %edx
	je	.L187
	ja	.L188
	cmpl	$101, %edx
	ja	.L189
	cmpl	$100, %edx
	jnb	.L187
	cmpl	$8, %edx
	ja	.L190
	cmpl	$7, %edx
	jnb	.L187
	cmpl	$5, %edx
	je	.L187
	ja	.L201
	cmpl	$2, %edx
	je	.L201
	jmp	.L186
.L190:
	cmpl	$9, %edx
	je	.L186
	.loc 1 111 0
	movl	$-11, %eax
	.loc 1 111 0
	cmpl	$11, %edx
	jmp	.L264
.L189:
	cmpl	$202, %edx
	ja	.L193
	cmpl	$200, %edx
	jnb	.L186
	cmpl	$102, %edx
	je	.L201
	.loc 1 111 0
	movl	$-12, %eax
	.loc 1 111 0
	cmpl	$105, %edx
.L264:
	je	.L185
	jmp	.L186
.L193:
	cmpl	$300, %edx
	je	.L187
	ja	.L186
	cmpl	$203, %edx
	jne	.L186
	jmp	.L187
.L188:
	cmpl	$800, %edx
	je	.L187
	ja	.L195
	cmpl	$701, %edx
	ja	.L196
	cmpl	$700, %edx
	jnb	.L187
	jmp	.L186
.L196:
	cmpl	$702, %edx
	je	.L186
	cmpl	$705, %edx
	ja	.L186
	jmp	.L187
.L195:
	cmpl	$1001, %edx
	je	.L197
	ja	.L198
	jmp	.L186
.L198:
	cmpl	$1103, %edx
	je	.L197
	ja	.L186
	cmpl	$1100, %edx
	jb	.L186
.L187:
	.loc 1 111 0
	movl	$-22, %eax
	jmp	.L185
.L197:
	.loc 1 111 0 discriminator 7
	movl	$-11, %eax
	jmp	.L185
.L186:
	.loc 1 111 0 discriminator 1
	orl	$-1, %eax
	jmp	.L185
.L201:
	.loc 1 111 0
	movl	$-14, %eax
.L185:
	.loc 1 112 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	aos_task_setspecific, .-aos_task_setspecific
	.section	.text.unlikely.aos_task_setspecific
.LCOLDE10:
	.section	.text.aos_task_setspecific
.LHOTE10:
	.section	.text.unlikely.aos_task_getspecific,"ax",@progbits
.LCOLDB11:
	.section	.text.aos_task_getspecific,"ax",@progbits
.LHOTB11:
	.globl	aos_task_getspecific
	.type	aos_task_getspecific, @function
aos_task_getspecific:
.LFB38:
	.loc 1 115 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 115 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 116 0
	movl	$0, -16(%ebp)
	.loc 1 118 0
	call	krhino_cur_task_get
.LVL25:
	pushl	%edx
	leal	-16(%ebp), %edx
	pushl	%edx
	pushl	8(%ebp)
	pushl	%eax
	call	krhino_task_info_get
.LVL26:
	.loc 1 121 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	-16(%ebp), %eax
	je	.L266
	call	__stack_chk_fail
.LVL27:
.L266:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	aos_task_getspecific, .-aos_task_getspecific
	.section	.text.unlikely.aos_task_getspecific
.LCOLDE11:
	.section	.text.aos_task_getspecific
.LHOTE11:
	.section	.text.unlikely.aos_mutex_lock,"ax",@progbits
.LCOLDB12:
	.section	.text.aos_mutex_lock,"ax",@progbits
.LHOTB12:
	.globl	aos_mutex_lock
	.type	aos_mutex_lock, @function
aos_mutex_lock:
.LFB41:
	.loc 1 164 0
	.cfi_startproc
.LVL28:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 168 0
	movl	$-22, %edx
	.loc 1 164 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 164 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 167 0
	testl	%ebx, %ebx
	je	.L269
	.loc 1 171 0
	cmpl	$-1, %eax
	jne	.L270
	.loc 1 172 0
	pushl	%ecx
	pushl	$-1
	pushl	$-1
	jmp	.L346
.L270:
	.loc 1 174 0
	pushl	%edx
	pushl	%edx
	xorl	%edx, %edx
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL29:
	addl	$12, %esp
	pushl	%edx
	pushl	%eax
.L346:
	pushl	(%ebx)
	call	krhino_mutex_lock
.LVL30:
	addl	$16, %esp
	.loc 1 182 0
	testl	%eax, %eax
	je	.L287
	cmpl	$901, %eax
	je	.L287
	.loc 1 186 0
	cmpl	$305, %eax
	je	.L273
	ja	.L274
	cmpl	$101, %eax
	ja	.L275
	cmpl	$100, %eax
	jnb	.L273
	cmpl	$8, %eax
	ja	.L276
	cmpl	$7, %eax
	jnb	.L273
	cmpl	$5, %eax
	je	.L273
	ja	.L288
	cmpl	$2, %eax
	je	.L288
	jmp	.L272
.L276:
	cmpl	$9, %eax
	je	.L272
	.loc 1 186 0
	movl	$-11, %edx
	.loc 1 186 0
	cmpl	$11, %eax
	jmp	.L351
.L275:
	cmpl	$202, %eax
	ja	.L279
	cmpl	$200, %eax
	jnb	.L272
	cmpl	$102, %eax
	je	.L288
	.loc 1 186 0
	movl	$-12, %edx
	.loc 1 186 0
	cmpl	$105, %eax
.L351:
	je	.L269
	jmp	.L272
.L279:
	cmpl	$300, %eax
	je	.L273
	ja	.L272
	cmpl	$203, %eax
	jne	.L272
	jmp	.L273
.L274:
	cmpl	$800, %eax
	je	.L273
	ja	.L281
	cmpl	$701, %eax
	ja	.L282
	cmpl	$700, %eax
	jnb	.L273
	jmp	.L272
.L282:
	cmpl	$702, %eax
	je	.L272
	cmpl	$705, %eax
	ja	.L272
	jmp	.L273
.L281:
	cmpl	$1001, %eax
	je	.L283
	ja	.L284
	jmp	.L272
.L284:
	cmpl	$1103, %eax
	je	.L283
	ja	.L272
	cmpl	$1100, %eax
	jb	.L272
.L273:
	.loc 1 186 0
	movl	$-22, %edx
	jmp	.L269
.L283:
	.loc 1 186 0 discriminator 7
	movl	$-11, %edx
	jmp	.L269
.L272:
	.loc 1 186 0 discriminator 1
	orl	$-1, %edx
	jmp	.L269
.L287:
	.loc 1 183 0
	xorl	%edx, %edx
	jmp	.L269
.L288:
	.loc 1 186 0
	movl	$-14, %edx
.LVL31:
.L269:
	.loc 1 187 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	aos_mutex_lock, .-aos_mutex_lock
	.section	.text.unlikely.aos_mutex_lock
.LCOLDE12:
	.section	.text.aos_mutex_lock
.LHOTE12:
	.section	.text.unlikely.aos_mutex_unlock,"ax",@progbits
.LCOLDB13:
	.section	.text.aos_mutex_unlock,"ax",@progbits
.LHOTB13:
	.globl	aos_mutex_unlock
	.type	aos_mutex_unlock, @function
aos_mutex_unlock:
.LFB42:
	.loc 1 190 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 194 0
	movl	$-22, %eax
	.loc 1 190 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 190 0
	movl	8(%ebp), %edx
	.loc 1 193 0
	testl	%edx, %edx
	je	.L353
	.loc 1 197 0
	subl	$12, %esp
	pushl	(%edx)
	call	krhino_mutex_unlock
.LVL33:
	.loc 1 203 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 197 0
	movl	%eax, %edx
.LVL34:
	.loc 1 203 0
	je	.L369
	cmpl	$901, %eax
	je	.L369
	.loc 1 207 0
	cmpl	$305, %eax
	je	.L355
	ja	.L356
	cmpl	$101, %eax
	ja	.L357
	cmpl	$100, %eax
	jnb	.L355
	cmpl	$8, %eax
	ja	.L358
	cmpl	$7, %eax
	jnb	.L355
	cmpl	$5, %eax
	je	.L355
	ja	.L370
	cmpl	$2, %eax
	je	.L370
	jmp	.L354
.L358:
	cmpl	$9, %eax
	je	.L354
	.loc 1 207 0
	movl	$-11, %eax
.LVL35:
	.loc 1 207 0
	cmpl	$11, %edx
	jmp	.L432
.LVL36:
.L357:
	cmpl	$202, %eax
	ja	.L361
	cmpl	$200, %eax
	jnb	.L354
	cmpl	$102, %eax
	je	.L370
	.loc 1 207 0
	movl	$-12, %eax
.LVL37:
	.loc 1 207 0
	cmpl	$105, %edx
.L432:
	je	.L353
	jmp	.L354
.LVL38:
.L361:
	cmpl	$300, %eax
	je	.L355
	ja	.L354
	cmpl	$203, %eax
	jne	.L354
	jmp	.L355
.L356:
	cmpl	$800, %eax
	je	.L355
	ja	.L363
	cmpl	$701, %eax
	ja	.L364
	cmpl	$700, %eax
	jnb	.L355
	jmp	.L354
.L364:
	cmpl	$702, %eax
	je	.L354
	cmpl	$705, %eax
	ja	.L354
	jmp	.L355
.L363:
	cmpl	$1001, %eax
	je	.L365
	ja	.L366
	jmp	.L354
.L366:
	cmpl	$1103, %eax
	je	.L365
	ja	.L354
	cmpl	$1100, %eax
	jb	.L354
.L355:
	.loc 1 207 0
	movl	$-22, %eax
.LVL39:
	jmp	.L353
.LVL40:
.L365:
	.loc 1 207 0 discriminator 7
	movl	$-11, %eax
.LVL41:
	jmp	.L353
.L354:
	.loc 1 207 0 discriminator 1
	orl	$-1, %eax
	jmp	.L353
.LVL42:
.L369:
	.loc 1 204 0
	xorl	%eax, %eax
.LVL43:
	jmp	.L353
.LVL44:
.L370:
	.loc 1 207 0
	movl	$-14, %eax
.LVL45:
.L353:
	.loc 1 208 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	aos_mutex_unlock, .-aos_mutex_unlock
	.section	.text.unlikely.aos_mutex_unlock
.LCOLDE13:
	.section	.text.aos_mutex_unlock
.LHOTE13:
	.section	.text.unlikely.aos_sem_wait,"ax",@progbits
.LCOLDB14:
	.section	.text.aos_sem_wait,"ax",@progbits
.LHOTB14:
	.globl	aos_sem_wait
	.type	aos_sem_wait, @function
aos_sem_wait:
.LFB46:
	.loc 1 268 0
	.cfi_startproc
.LVL46:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 272 0
	movl	$-22, %edx
	.loc 1 268 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 268 0
	movl	8(%ebp), %ebx
	movl	12(%ebp), %eax
	.loc 1 271 0
	testl	%ebx, %ebx
	je	.L434
	.loc 1 275 0
	cmpl	$-1, %eax
	jne	.L435
	.loc 1 276 0
	pushl	%ecx
	pushl	$-1
	pushl	$-1
	jmp	.L512
.L435:
	.loc 1 278 0
	pushl	%edx
	pushl	%edx
	xorl	%edx, %edx
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL47:
	addl	$12, %esp
	pushl	%edx
	pushl	%eax
.L512:
	pushl	(%ebx)
	call	krhino_sem_take
.LVL48:
	addl	$16, %esp
	.loc 1 282 0
	xorl	%edx, %edx
	.loc 1 281 0
	testl	%eax, %eax
	je	.L434
	.loc 1 285 0
	cmpl	$305, %eax
	je	.L438
	ja	.L439
	cmpl	$101, %eax
	ja	.L440
	cmpl	$100, %eax
	jnb	.L438
	cmpl	$8, %eax
	ja	.L441
	cmpl	$7, %eax
	jnb	.L438
	cmpl	$5, %eax
	je	.L438
	ja	.L453
	cmpl	$2, %eax
	je	.L453
	jmp	.L437
.L441:
	cmpl	$9, %eax
	je	.L437
	.loc 1 285 0
	movl	$-11, %edx
	.loc 1 285 0
	cmpl	$11, %eax
	jmp	.L517
.L440:
	cmpl	$202, %eax
	ja	.L444
	cmpl	$200, %eax
	jnb	.L437
	cmpl	$102, %eax
	je	.L453
	.loc 1 285 0
	movl	$-12, %edx
	.loc 1 285 0
	cmpl	$105, %eax
.L517:
	je	.L434
	jmp	.L437
.L444:
	cmpl	$300, %eax
	je	.L438
	ja	.L437
	cmpl	$203, %eax
	jne	.L437
	jmp	.L438
.L439:
	cmpl	$800, %eax
	je	.L438
	ja	.L446
	cmpl	$701, %eax
	ja	.L447
	cmpl	$700, %eax
	jnb	.L438
	jmp	.L437
.L447:
	cmpl	$702, %eax
	je	.L437
	cmpl	$705, %eax
	ja	.L437
	jmp	.L438
.L446:
	cmpl	$1001, %eax
	je	.L448
	ja	.L449
	jmp	.L437
.L449:
	cmpl	$1103, %eax
	je	.L448
	ja	.L437
	cmpl	$1100, %eax
	jb	.L437
.L438:
	.loc 1 285 0
	movl	$-22, %edx
	jmp	.L434
.L448:
	.loc 1 285 0 discriminator 7
	movl	$-11, %edx
	jmp	.L434
.L437:
	.loc 1 285 0 discriminator 1
	orl	$-1, %edx
	jmp	.L434
.L453:
	.loc 1 285 0
	movl	$-14, %edx
.LVL49:
.L434:
	.loc 1 286 0
	movl	%edx, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE46:
	.size	aos_sem_wait, .-aos_sem_wait
	.section	.text.unlikely.aos_sem_wait
.LCOLDE14:
	.section	.text.aos_sem_wait
.LHOTE14:
	.section	.text.unlikely.aos_sem_signal,"ax",@progbits
.LCOLDB15:
	.section	.text.aos_sem_signal,"ax",@progbits
.LHOTB15:
	.globl	aos_sem_signal
	.type	aos_sem_signal, @function
aos_sem_signal:
.LFB47:
	.loc 1 289 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 289 0
	movl	8(%ebp), %eax
	.loc 1 290 0
	testl	%eax, %eax
	je	.L518
	.loc 1 294 0
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL51:
	.loc 1 295 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 294 0
	jmp	krhino_sem_give
.LVL52:
.L518:
	.cfi_restore_state
	.loc 1 295 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE47:
	.size	aos_sem_signal, .-aos_sem_signal
	.section	.text.unlikely.aos_sem_signal
.LCOLDE15:
	.section	.text.aos_sem_signal
.LHOTE15:
	.section	.text.unlikely.aos_sem_signal_all,"ax",@progbits
.LCOLDB16:
	.section	.text.aos_sem_signal_all,"ax",@progbits
.LHOTB16:
	.globl	aos_sem_signal_all
	.type	aos_sem_signal_all, @function
aos_sem_signal_all:
.LFB49:
	.loc 1 315 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 315 0
	movl	8(%ebp), %eax
	.loc 1 316 0
	testl	%eax, %eax
	je	.L521
	.loc 1 320 0
	movl	(%eax), %eax
	movl	%eax, 8(%ebp)
.LVL54:
	.loc 1 321 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 320 0
	jmp	krhino_sem_give_all
.LVL55:
.L521:
	.cfi_restore_state
	.loc 1 321 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE49:
	.size	aos_sem_signal_all, .-aos_sem_signal_all
	.section	.text.unlikely.aos_sem_signal_all
.LCOLDE16:
	.section	.text.aos_sem_signal_all
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"AOS"
	.section	.text.unlikely.aos_event_new,"ax",@progbits
.LCOLDB18:
	.section	.text.aos_event_new,"ax",@progbits
.LHOTB18:
	.globl	aos_event_new
	.type	aos_event_new, @function
aos_event_new:
.LFB50:
	.loc 1 328 0
	.cfi_startproc
.LVL56:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 330 0
	pushl	12(%ebp)
	pushl	$.LC17
	pushl	8(%ebp)
	call	krhino_event_dyn_create
.LVL57:
	movl	%eax, %edx
.LVL58:
	.loc 1 331 0
	addl	$16, %esp
	.loc 1 332 0
	xorl	%eax, %eax
.LVL59:
	.loc 1 331 0
	testl	%edx, %edx
	je	.L525
	.loc 1 335 0
	cmpl	$305, %edx
	je	.L527
	ja	.L528
	cmpl	$101, %edx
	ja	.L529
	cmpl	$100, %edx
	jnb	.L527
	cmpl	$8, %edx
	ja	.L530
	cmpl	$7, %edx
	jnb	.L527
	cmpl	$5, %edx
	je	.L527
	ja	.L541
	cmpl	$2, %edx
	je	.L541
	jmp	.L526
.L530:
	cmpl	$9, %edx
	je	.L526
	.loc 1 335 0
	movl	$-11, %eax
	.loc 1 335 0
	cmpl	$11, %edx
	jmp	.L604
.L529:
	cmpl	$202, %edx
	ja	.L533
	cmpl	$200, %edx
	jnb	.L526
	cmpl	$102, %edx
	je	.L541
	.loc 1 335 0
	movl	$-12, %eax
	.loc 1 335 0
	cmpl	$105, %edx
.L604:
	je	.L525
	jmp	.L526
.L533:
	cmpl	$300, %edx
	je	.L527
	ja	.L526
	cmpl	$203, %edx
	jne	.L526
	jmp	.L527
.L528:
	cmpl	$800, %edx
	je	.L527
	ja	.L535
	cmpl	$701, %edx
	ja	.L536
	cmpl	$700, %edx
	jnb	.L527
	jmp	.L526
.L536:
	cmpl	$702, %edx
	je	.L526
	cmpl	$705, %edx
	ja	.L526
	jmp	.L527
.L535:
	cmpl	$1001, %edx
	je	.L537
	ja	.L538
	jmp	.L526
.L538:
	cmpl	$1103, %edx
	je	.L537
	ja	.L526
	cmpl	$1100, %edx
	jb	.L526
.L527:
	.loc 1 335 0
	movl	$-22, %eax
	jmp	.L525
.L537:
	.loc 1 335 0 discriminator 7
	movl	$-11, %eax
	jmp	.L525
.L526:
	.loc 1 335 0 discriminator 1
	orl	$-1, %eax
	jmp	.L525
.L541:
	.loc 1 335 0
	movl	$-14, %eax
.L525:
	.loc 1 336 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE50:
	.size	aos_event_new, .-aos_event_new
	.section	.text.unlikely.aos_event_new
.LCOLDE18:
	.section	.text.aos_event_new
.LHOTE18:
	.section	.text.unlikely.aos_event_free,"ax",@progbits
.LCOLDB19:
	.section	.text.aos_event_free,"ax",@progbits
.LHOTB19:
	.globl	aos_event_free
	.type	aos_event_free, @function
aos_event_free:
.LFB51:
	.loc 1 339 0
	.cfi_startproc
.LVL60:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 339 0
	movl	8(%ebp), %ebx
	.loc 1 340 0
	testl	%ebx, %ebx
	je	.L605
	.loc 1 344 0
	subl	$12, %esp
	pushl	(%ebx)
	call	krhino_event_dyn_del
.LVL61:
	.loc 1 346 0
	movl	$0, (%ebx)
	addl	$16, %esp
.L605:
	.loc 1 347 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE51:
	.size	aos_event_free, .-aos_event_free
	.section	.text.unlikely.aos_event_free
.LCOLDE19:
	.section	.text.aos_event_free
.LHOTE19:
	.section	.text.unlikely.aos_event_get,"ax",@progbits
.LCOLDB20:
	.section	.text.aos_event_get,"ax",@progbits
.LHOTB20:
	.globl	aos_event_get
	.type	aos_event_get, @function
aos_event_get:
.LFB52:
	.loc 1 357 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 361 0
	movl	$-22, %edx
	.loc 1 357 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 357 0
	movl	8(%ebp), %edi
	movl	16(%ebp), %ecx
	movl	20(%ebp), %esi
	movl	24(%ebp), %eax
	.loc 1 360 0
	testl	%edi, %edi
	je	.L612
	.loc 1 364 0
	cmpl	$-1, %eax
	movzbl	%cl, %ebx
	jne	.L613
	.loc 1 365 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$-1
	jmp	.L690
.L613:
	.loc 1 367 0
	pushl	%edx
	pushl	%edx
	xorl	%edx, %edx
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL63:
	popl	%ecx
	popl	%ecx
	pushl	%edx
	pushl	%eax
.L690:
	pushl	%esi
	pushl	%ebx
	pushl	12(%ebp)
	pushl	(%edi)
	call	krhino_event_get
.LVL64:
	addl	$32, %esp
	.loc 1 371 0
	xorl	%edx, %edx
	.loc 1 370 0
	testl	%eax, %eax
	je	.L612
	.loc 1 374 0
	cmpl	$305, %eax
	je	.L616
	ja	.L617
	cmpl	$101, %eax
	ja	.L618
	cmpl	$100, %eax
	jnb	.L616
	cmpl	$8, %eax
	ja	.L619
	cmpl	$7, %eax
	jnb	.L616
	cmpl	$5, %eax
	je	.L616
	ja	.L631
	cmpl	$2, %eax
	je	.L631
	jmp	.L615
.L619:
	cmpl	$9, %eax
	je	.L615
	.loc 1 374 0
	movl	$-11, %edx
	.loc 1 374 0
	cmpl	$11, %eax
	jmp	.L695
.L618:
	cmpl	$202, %eax
	ja	.L622
	cmpl	$200, %eax
	jnb	.L615
	cmpl	$102, %eax
	je	.L631
	.loc 1 374 0
	movl	$-12, %edx
	.loc 1 374 0
	cmpl	$105, %eax
.L695:
	je	.L612
	jmp	.L615
.L622:
	cmpl	$300, %eax
	je	.L616
	ja	.L615
	cmpl	$203, %eax
	jne	.L615
	jmp	.L616
.L617:
	cmpl	$800, %eax
	je	.L616
	ja	.L624
	cmpl	$701, %eax
	ja	.L625
	cmpl	$700, %eax
	jnb	.L616
	jmp	.L615
.L625:
	cmpl	$702, %eax
	je	.L615
	cmpl	$705, %eax
	ja	.L615
	jmp	.L616
.L624:
	cmpl	$1001, %eax
	je	.L626
	ja	.L627
	jmp	.L615
.L627:
	cmpl	$1103, %eax
	je	.L626
	ja	.L615
	cmpl	$1100, %eax
	jb	.L615
.L616:
	.loc 1 374 0
	movl	$-22, %edx
	jmp	.L612
.L626:
	.loc 1 374 0 discriminator 7
	movl	$-11, %edx
	jmp	.L612
.L615:
	.loc 1 374 0 discriminator 1
	orl	$-1, %edx
	jmp	.L612
.L631:
	.loc 1 374 0
	movl	$-14, %edx
.LVL65:
.L612:
	.loc 1 375 0
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
.LFE52:
	.size	aos_event_get, .-aos_event_get
	.section	.text.unlikely.aos_event_get
.LCOLDE20:
	.section	.text.aos_event_get
.LHOTE20:
	.section	.text.unlikely.aos_event_set,"ax",@progbits
.LCOLDB21:
	.section	.text.aos_event_set,"ax",@progbits
.LHOTB21:
	.globl	aos_event_set
	.type	aos_event_set, @function
aos_event_set:
.LFB53:
	.loc 1 378 0
	.cfi_startproc
.LVL66:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 382 0
	movl	$-22, %eax
	.loc 1 378 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 378 0
	movl	8(%ebp), %ecx
	movl	16(%ebp), %edx
	.loc 1 381 0
	testl	%ecx, %ecx
	je	.L697
	.loc 1 385 0
	pushl	%eax
	movzbl	%dl, %eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	(%ecx)
	call	krhino_event_set
.LVL67:
	movl	%eax, %edx
.LVL68:
	.loc 1 387 0
	addl	$16, %esp
	.loc 1 388 0
	xorl	%eax, %eax
.LVL69:
	.loc 1 387 0
	testl	%edx, %edx
	je	.L697
	.loc 1 391 0
	cmpl	$305, %edx
	je	.L699
	ja	.L700
	cmpl	$101, %edx
	ja	.L701
	cmpl	$100, %edx
	jnb	.L699
	cmpl	$8, %edx
	ja	.L702
	cmpl	$7, %edx
	jnb	.L699
	cmpl	$5, %edx
	je	.L699
	ja	.L714
	cmpl	$2, %edx
	je	.L714
	jmp	.L698
.L702:
	cmpl	$9, %edx
	je	.L698
	.loc 1 391 0
	movl	$-11, %eax
	.loc 1 391 0
	cmpl	$11, %edx
	jmp	.L777
.L701:
	cmpl	$202, %edx
	ja	.L705
	cmpl	$200, %edx
	jnb	.L698
	cmpl	$102, %edx
	je	.L714
	.loc 1 391 0
	movl	$-12, %eax
	.loc 1 391 0
	cmpl	$105, %edx
.L777:
	je	.L697
	jmp	.L698
.L705:
	cmpl	$300, %edx
	je	.L699
	ja	.L698
	cmpl	$203, %edx
	jne	.L698
	jmp	.L699
.L700:
	cmpl	$800, %edx
	je	.L699
	ja	.L707
	cmpl	$701, %edx
	ja	.L708
	cmpl	$700, %edx
	jnb	.L699
	jmp	.L698
.L708:
	cmpl	$702, %edx
	je	.L698
	cmpl	$705, %edx
	ja	.L698
	jmp	.L699
.L707:
	cmpl	$1001, %edx
	je	.L709
	ja	.L710
	jmp	.L698
.L710:
	cmpl	$1103, %edx
	je	.L709
	ja	.L698
	cmpl	$1100, %edx
	jb	.L698
.L699:
	.loc 1 391 0
	movl	$-22, %eax
	jmp	.L697
.L709:
	.loc 1 391 0 discriminator 7
	movl	$-11, %eax
	jmp	.L697
.L698:
	.loc 1 391 0 discriminator 1
	orl	$-1, %eax
	jmp	.L697
.L714:
	.loc 1 391 0
	movl	$-14, %eax
.LVL70:
.L697:
	.loc 1 392 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE53:
	.size	aos_event_set, .-aos_event_set
	.section	.text.unlikely.aos_event_set
.LCOLDE21:
	.section	.text.aos_event_set
.LHOTE21:
	.section	.text.unlikely.aos_queue_send,"ax",@progbits
.LCOLDB22:
	.section	.text.aos_queue_send,"ax",@progbits
.LHOTB22:
	.globl	aos_queue_send
	.type	aos_queue_send, @function
aos_queue_send:
.LFB56:
	.loc 1 436 0
	.cfi_startproc
.LVL71:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 436 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 439 0
	testl	%eax, %eax
	je	.L794
	testl	%edx, %edx
	je	.L794
	.loc 1 443 0
	pushl	%ecx
	pushl	16(%ebp)
	pushl	%edx
	pushl	(%eax)
	call	krhino_buf_queue_send
.LVL72:
	movl	%eax, %edx
.LVL73:
	.loc 1 444 0
	addl	$16, %esp
	.loc 1 445 0
	xorl	%eax, %eax
.LVL74:
	.loc 1 444 0
	testl	%edx, %edx
	je	.L779
	.loc 1 448 0
	cmpl	$305, %edx
	je	.L794
	ja	.L782
	cmpl	$101, %edx
	ja	.L783
	cmpl	$100, %edx
	jnb	.L794
	cmpl	$8, %edx
	ja	.L784
	cmpl	$7, %edx
	jnb	.L794
	cmpl	$5, %edx
	je	.L794
	ja	.L796
	cmpl	$2, %edx
	je	.L796
	jmp	.L780
.L784:
	cmpl	$9, %edx
	je	.L780
	.loc 1 448 0
	movl	$-11, %eax
	.loc 1 448 0
	cmpl	$11, %edx
	jmp	.L859
.L783:
	cmpl	$202, %edx
	ja	.L787
	cmpl	$200, %edx
	jnb	.L780
	cmpl	$102, %edx
	je	.L796
	.loc 1 448 0
	movl	$-12, %eax
	.loc 1 448 0
	cmpl	$105, %edx
.L859:
	je	.L779
	jmp	.L780
.L787:
	cmpl	$300, %edx
	je	.L794
	ja	.L780
	cmpl	$203, %edx
	jne	.L780
	jmp	.L794
.L782:
	cmpl	$800, %edx
	je	.L794
	ja	.L789
	cmpl	$701, %edx
	ja	.L790
	cmpl	$700, %edx
	jnb	.L794
	jmp	.L780
.L790:
	cmpl	$702, %edx
	je	.L780
	cmpl	$705, %edx
	ja	.L780
	jmp	.L794
.L789:
	cmpl	$1001, %edx
	je	.L791
	ja	.L792
	jmp	.L780
.L792:
	cmpl	$1103, %edx
	je	.L791
	ja	.L780
	cmpl	$1100, %edx
	jnb	.L794
	jmp	.L780
.L791:
	.loc 1 448 0 discriminator 7
	movl	$-11, %eax
	jmp	.L779
.L780:
	.loc 1 448 0 discriminator 1
	orl	$-1, %eax
	jmp	.L779
.LVL75:
.L794:
	.loc 1 440 0
	movl	$-22, %eax
	jmp	.L779
.LVL76:
.L796:
	.loc 1 448 0
	movl	$-14, %eax
.LVL77:
.L779:
	.loc 1 449 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE56:
	.size	aos_queue_send, .-aos_queue_send
	.section	.text.unlikely.aos_queue_send
.LCOLDE22:
	.section	.text.aos_queue_send
.LHOTE22:
	.section	.text.unlikely.aos_queue_recv,"ax",@progbits
.LCOLDB23:
	.section	.text.aos_queue_recv,"ax",@progbits
.LHOTB23:
	.globl	aos_queue_recv
	.type	aos_queue_recv, @function
aos_queue_recv:
.LFB57:
	.loc 1 453 0
	.cfi_startproc
.LVL78:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 457 0
	movl	$-22, %eax
	.loc 1 453 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 453 0
	movl	8(%ebp), %ebx
	.loc 1 456 0
	testl	%ebx, %ebx
	je	.L861
	.loc 1 460 0
	pushl	%eax
	pushl	%eax
	xorl	%edx, %edx
	movl	12(%ebp), %eax
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL79:
	popl	%ecx
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	%edx
	pushl	%eax
	pushl	(%ebx)
	call	krhino_buf_queue_recv
.LVL80:
	movl	%eax, %edx
.LVL81:
	.loc 1 461 0
	addl	$32, %esp
	.loc 1 462 0
	xorl	%eax, %eax
.LVL82:
	.loc 1 461 0
	testl	%edx, %edx
	je	.L861
	.loc 1 465 0
	cmpl	$305, %edx
	je	.L863
	ja	.L864
	cmpl	$101, %edx
	ja	.L865
	cmpl	$100, %edx
	jnb	.L863
	cmpl	$8, %edx
	ja	.L866
	cmpl	$7, %edx
	jnb	.L863
	cmpl	$5, %edx
	je	.L863
	ja	.L878
	cmpl	$2, %edx
	je	.L878
	jmp	.L862
.L866:
	cmpl	$9, %edx
	je	.L862
	.loc 1 465 0
	movl	$-11, %eax
	.loc 1 465 0
	cmpl	$11, %edx
	jmp	.L941
.L865:
	cmpl	$202, %edx
	ja	.L869
	cmpl	$200, %edx
	jnb	.L862
	cmpl	$102, %edx
	je	.L878
	.loc 1 465 0
	movl	$-12, %eax
	.loc 1 465 0
	cmpl	$105, %edx
.L941:
	je	.L861
	jmp	.L862
.L869:
	cmpl	$300, %edx
	je	.L863
	ja	.L862
	cmpl	$203, %edx
	jne	.L862
	jmp	.L863
.L864:
	cmpl	$800, %edx
	je	.L863
	ja	.L871
	cmpl	$701, %edx
	ja	.L872
	cmpl	$700, %edx
	jnb	.L863
	jmp	.L862
.L872:
	cmpl	$702, %edx
	je	.L862
	cmpl	$705, %edx
	ja	.L862
	jmp	.L863
.L871:
	cmpl	$1001, %edx
	je	.L873
	ja	.L874
	jmp	.L862
.L874:
	cmpl	$1103, %edx
	je	.L873
	ja	.L862
	cmpl	$1100, %edx
	jb	.L862
.L863:
	.loc 1 465 0
	movl	$-22, %eax
	jmp	.L861
.L873:
	.loc 1 465 0 discriminator 7
	movl	$-11, %eax
	jmp	.L861
.L862:
	.loc 1 465 0 discriminator 1
	orl	$-1, %eax
	jmp	.L861
.L878:
	.loc 1 465 0
	movl	$-14, %eax
.LVL83:
.L861:
	.loc 1 466 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE57:
	.size	aos_queue_recv, .-aos_queue_recv
	.section	.text.unlikely.aos_queue_recv
.LCOLDE23:
	.section	.text.aos_queue_recv
.LHOTE23:
	.section	.text.unlikely.aos_queue_is_valid,"ax",@progbits
.LCOLDB24:
	.section	.text.aos_queue_is_valid,"ax",@progbits
.LHOTB24:
	.globl	aos_queue_is_valid
	.type	aos_queue_is_valid, @function
aos_queue_is_valid:
.LFB58:
	.loc 1 469 0
	.cfi_startproc
.LVL84:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 469 0
	movl	8(%ebp), %edx
	.loc 1 472 0
	testl	%edx, %edx
	je	.L943
.LVL85:
	.loc 1 473 0
	xorl	%eax, %eax
	cmpl	$0, (%edx)
	setne	%al
.LVL86:
.L943:
	.loc 1 483 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE58:
	.size	aos_queue_is_valid, .-aos_queue_is_valid
	.section	.text.unlikely.aos_queue_is_valid
.LCOLDE24:
	.section	.text.aos_queue_is_valid
.LHOTE24:
	.section	.text.unlikely.aos_sem_is_valid,"ax",@progbits
.LCOLDB25:
	.section	.text.aos_sem_is_valid,"ax",@progbits
.LHOTB25:
	.globl	aos_sem_is_valid
	.type	aos_sem_is_valid, @function
aos_sem_is_valid:
.LFB84:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	aos_queue_is_valid
	.cfi_endproc
.LFE84:
	.size	aos_sem_is_valid, .-aos_sem_is_valid
	.section	.text.unlikely.aos_sem_is_valid
.LCOLDE25:
	.section	.text.aos_sem_is_valid
.LHOTE25:
	.section	.text.unlikely.aos_mutex_is_valid,"ax",@progbits
.LCOLDB26:
	.section	.text.aos_mutex_is_valid,"ax",@progbits
.LHOTB26:
	.globl	aos_mutex_is_valid
	.type	aos_mutex_is_valid, @function
aos_mutex_is_valid:
.LFB86:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	aos_queue_is_valid
	.cfi_endproc
.LFE86:
	.size	aos_mutex_is_valid, .-aos_mutex_is_valid
	.section	.text.unlikely.aos_mutex_is_valid
.LCOLDE26:
	.section	.text.aos_mutex_is_valid
.LHOTE26:
	.section	.text.unlikely.aos_queue_buf_ptr,"ax",@progbits
.LCOLDB27:
	.section	.text.aos_queue_buf_ptr,"ax",@progbits
.LHOTB27:
	.globl	aos_queue_buf_ptr
	.type	aos_queue_buf_ptr, @function
aos_queue_buf_ptr:
.LFB59:
	.loc 1 486 0
	.cfi_startproc
.LVL87:
	.loc 1 486 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 486 0
	movl	8(%ebp), %ecx
	.loc 1 487 0
	pushl	%ecx
	call	aos_queue_is_valid
.LVL88:
	popl	%edx
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L952
	.loc 1 491 0
	movl	(%ecx), %eax
	movl	20(%eax), %edx
.L952:
	.loc 1 492 0
	movl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE59:
	.size	aos_queue_buf_ptr, .-aos_queue_buf_ptr
	.section	.text.unlikely.aos_queue_buf_ptr
.LCOLDE27:
	.section	.text.aos_queue_buf_ptr
.LHOTE27:
	.section	.text.unlikely.aos_timer_new,"ax",@progbits
.LCOLDB28:
	.section	.text.aos_timer_new,"ax",@progbits
.LHOTB28:
	.globl	aos_timer_new
	.type	aos_timer_new, @function
aos_timer_new:
.LFB60:
	.loc 1 498 0
	.cfi_startproc
.LVL89:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 502 0
	movl	$-22, %edx
	.loc 1 498 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 498 0
	movl	8(%ebp), %ebx
	movl	20(%ebp), %esi
	.loc 1 501 0
	testl	%ebx, %ebx
	je	.L957
	.loc 1 505 0
	cmpl	$0, 24(%ebp)
	jne	.L958
	.loc 1 506 0
	pushl	%edi
	pushl	%edi
	movl	%esi, %edi
	sarl	$31, %edi
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL90:
	movl	$1, (%esp)
	pushl	16(%ebp)
	pushl	$0
	pushl	$0
	jmp	.L1035
.L958:
	.loc 1 508 0
	movl	%esi, %edi
	pushl	%eax
	pushl	%eax
	sarl	$31, %edi
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL91:
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	popl	%edx
	popl	%ecx
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL92:
	movl	$1, (%esp)
	pushl	16(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
.L1035:
	pushl	%edx
	pushl	%eax
	pushl	12(%ebp)
	pushl	$.LC17
	pushl	%ebx
	call	krhino_timer_dyn_create
.LVL93:
	addl	$48, %esp
	.loc 1 516 0
	xorl	%edx, %edx
	.loc 1 512 0
	testl	%eax, %eax
	je	.L957
	.loc 1 513 0
	cmpl	$305, %eax
	je	.L961
	ja	.L962
	cmpl	$101, %eax
	ja	.L963
	cmpl	$100, %eax
	jnb	.L961
	cmpl	$8, %eax
	ja	.L964
	cmpl	$7, %eax
	jnb	.L961
	cmpl	$5, %eax
	je	.L961
	ja	.L976
	cmpl	$2, %eax
	je	.L976
	jmp	.L960
.L964:
	cmpl	$9, %eax
	je	.L960
	.loc 1 513 0
	movl	$-11, %edx
	.loc 1 513 0
	cmpl	$11, %eax
	jmp	.L1040
.L963:
	cmpl	$202, %eax
	ja	.L967
	cmpl	$200, %eax
	jnb	.L960
	cmpl	$102, %eax
	je	.L976
	.loc 1 513 0
	movl	$-12, %edx
	.loc 1 513 0
	cmpl	$105, %eax
.L1040:
	je	.L957
	jmp	.L960
.L967:
	cmpl	$300, %eax
	je	.L961
	ja	.L960
	cmpl	$203, %eax
	jne	.L960
	jmp	.L961
.L962:
	cmpl	$800, %eax
	je	.L961
	ja	.L969
	cmpl	$701, %eax
	ja	.L970
	cmpl	$700, %eax
	jnb	.L961
	jmp	.L960
.L970:
	cmpl	$702, %eax
	je	.L960
	cmpl	$705, %eax
	ja	.L960
	jmp	.L961
.L969:
	cmpl	$1001, %eax
	je	.L971
	ja	.L972
	jmp	.L960
.L972:
	cmpl	$1103, %eax
	je	.L971
	ja	.L960
	cmpl	$1100, %eax
	jb	.L960
.L961:
	.loc 1 513 0
	movl	$-22, %edx
	jmp	.L957
.L971:
	.loc 1 513 0 discriminator 7
	movl	$-11, %edx
	jmp	.L957
.L960:
	.loc 1 513 0 discriminator 1
	orl	$-1, %edx
	jmp	.L957
.L976:
	.loc 1 513 0
	movl	$-14, %edx
.LVL94:
.L957:
	.loc 1 517 0
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
.LFE60:
	.size	aos_timer_new, .-aos_timer_new
	.section	.text.unlikely.aos_timer_new
.LCOLDE28:
	.section	.text.aos_timer_new
.LHOTE28:
	.section	.text.unlikely.aos_timer_new_ext,"ax",@progbits
.LCOLDB29:
	.section	.text.aos_timer_new_ext,"ax",@progbits
.LHOTB29:
	.globl	aos_timer_new_ext
	.type	aos_timer_new_ext, @function
aos_timer_new_ext:
.LFB61:
	.loc 1 521 0
	.cfi_startproc
.LVL95:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 525 0
	movl	$-22, %edx
	.loc 1 521 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 524 0
	cmpl	$0, 8(%ebp)
	.loc 1 521 0
	movl	20(%ebp), %esi
	movl	28(%ebp), %ebx
	.loc 1 524 0
	je	.L1042
	.loc 1 528 0
	cmpl	$0, 24(%ebp)
	movzbl	%bl, %ebx
	jne	.L1043
	.loc 1 529 0
	pushl	%edi
	pushl	%edi
	movl	%esi, %edi
	sarl	$31, %edi
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL96:
	movl	%ebx, (%esp)
	pushl	16(%ebp)
	pushl	$0
	pushl	$0
	jmp	.L1120
.L1043:
	.loc 1 531 0
	movl	%esi, %edi
	pushl	%eax
	pushl	%eax
	sarl	$31, %edi
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL97:
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	popl	%edx
	popl	%ecx
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL98:
	movl	%ebx, (%esp)
	pushl	16(%ebp)
	pushl	-28(%ebp)
	pushl	-32(%ebp)
.L1120:
	pushl	%edx
	pushl	%eax
	pushl	12(%ebp)
	pushl	$.LC17
	pushl	8(%ebp)
	call	krhino_timer_dyn_create
.LVL99:
	addl	$48, %esp
	.loc 1 539 0
	xorl	%edx, %edx
	.loc 1 535 0
	testl	%eax, %eax
	je	.L1042
	.loc 1 536 0
	cmpl	$305, %eax
	je	.L1046
	ja	.L1047
	cmpl	$101, %eax
	ja	.L1048
	cmpl	$100, %eax
	jnb	.L1046
	cmpl	$8, %eax
	ja	.L1049
	cmpl	$7, %eax
	jnb	.L1046
	cmpl	$5, %eax
	je	.L1046
	ja	.L1061
	cmpl	$2, %eax
	je	.L1061
	jmp	.L1045
.L1049:
	cmpl	$9, %eax
	je	.L1045
	.loc 1 536 0
	movl	$-11, %edx
	.loc 1 536 0
	cmpl	$11, %eax
	jmp	.L1125
.L1048:
	cmpl	$202, %eax
	ja	.L1052
	cmpl	$200, %eax
	jnb	.L1045
	cmpl	$102, %eax
	je	.L1061
	.loc 1 536 0
	movl	$-12, %edx
	.loc 1 536 0
	cmpl	$105, %eax
.L1125:
	je	.L1042
	jmp	.L1045
.L1052:
	cmpl	$300, %eax
	je	.L1046
	ja	.L1045
	cmpl	$203, %eax
	jne	.L1045
	jmp	.L1046
.L1047:
	cmpl	$800, %eax
	je	.L1046
	ja	.L1054
	cmpl	$701, %eax
	ja	.L1055
	cmpl	$700, %eax
	jnb	.L1046
	jmp	.L1045
.L1055:
	cmpl	$702, %eax
	je	.L1045
	cmpl	$705, %eax
	ja	.L1045
	jmp	.L1046
.L1054:
	cmpl	$1001, %eax
	je	.L1056
	ja	.L1057
	jmp	.L1045
.L1057:
	cmpl	$1103, %eax
	je	.L1056
	ja	.L1045
	cmpl	$1100, %eax
	jb	.L1045
.L1046:
	.loc 1 536 0
	movl	$-22, %edx
	jmp	.L1042
.L1056:
	.loc 1 536 0 discriminator 7
	movl	$-11, %edx
	jmp	.L1042
.L1045:
	.loc 1 536 0 discriminator 1
	orl	$-1, %edx
	jmp	.L1042
.L1061:
	.loc 1 536 0
	movl	$-14, %edx
.LVL100:
.L1042:
	.loc 1 540 0
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
.LFE61:
	.size	aos_timer_new_ext, .-aos_timer_new_ext
	.section	.text.unlikely.aos_timer_new_ext
.LCOLDE29:
	.section	.text.aos_timer_new_ext
.LHOTE29:
	.section	.text.unlikely.aos_timer_free,"ax",@progbits
.LCOLDB30:
	.section	.text.aos_timer_free,"ax",@progbits
.LHOTB30:
	.globl	aos_timer_free
	.type	aos_timer_free, @function
aos_timer_free:
.LFB62:
	.loc 1 543 0
	.cfi_startproc
.LVL101:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 543 0
	movl	8(%ebp), %ebx
	.loc 1 544 0
	testl	%ebx, %ebx
	je	.L1126
	.loc 1 548 0
	subl	$12, %esp
	pushl	(%ebx)
	call	krhino_timer_dyn_del
.LVL102:
	.loc 1 549 0
	movl	$0, (%ebx)
	addl	$16, %esp
.L1126:
	.loc 1 550 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	aos_timer_free, .-aos_timer_free
	.section	.text.unlikely.aos_timer_free
.LCOLDE30:
	.section	.text.aos_timer_free
.LHOTE30:
	.section	.text.unlikely.aos_timer_start,"ax",@progbits
.LCOLDB31:
	.section	.text.aos_timer_start,"ax",@progbits
.LHOTB31:
	.globl	aos_timer_start
	.type	aos_timer_start, @function
aos_timer_start:
.LFB63:
	.loc 1 553 0
	.cfi_startproc
.LVL103:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 557 0
	movl	$-22, %eax
	.loc 1 553 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 553 0
	movl	8(%ebp), %edx
	.loc 1 556 0
	testl	%edx, %edx
	je	.L1133
	.loc 1 560 0
	subl	$12, %esp
	pushl	(%edx)
	call	krhino_timer_start
.LVL104:
	movl	%eax, %edx
.LVL105:
	.loc 1 561 0
	addl	$16, %esp
	.loc 1 562 0
	xorl	%eax, %eax
.LVL106:
	.loc 1 561 0
	testl	%edx, %edx
	je	.L1133
	.loc 1 565 0
	cmpl	$305, %edx
	je	.L1135
	ja	.L1136
	cmpl	$101, %edx
	ja	.L1137
	cmpl	$100, %edx
	jnb	.L1135
	cmpl	$8, %edx
	ja	.L1138
	cmpl	$7, %edx
	jnb	.L1135
	cmpl	$5, %edx
	je	.L1135
	ja	.L1150
	cmpl	$2, %edx
	je	.L1150
	jmp	.L1134
.L1138:
	cmpl	$9, %edx
	je	.L1134
	.loc 1 565 0
	movl	$-11, %eax
	.loc 1 565 0
	cmpl	$11, %edx
	jmp	.L1213
.L1137:
	cmpl	$202, %edx
	ja	.L1141
	cmpl	$200, %edx
	jnb	.L1134
	cmpl	$102, %edx
	je	.L1150
	.loc 1 565 0
	movl	$-12, %eax
	.loc 1 565 0
	cmpl	$105, %edx
.L1213:
	je	.L1133
	jmp	.L1134
.L1141:
	cmpl	$300, %edx
	je	.L1135
	ja	.L1134
	cmpl	$203, %edx
	jne	.L1134
	jmp	.L1135
.L1136:
	cmpl	$800, %edx
	je	.L1135
	ja	.L1143
	cmpl	$701, %edx
	ja	.L1144
	cmpl	$700, %edx
	jnb	.L1135
	jmp	.L1134
.L1144:
	cmpl	$702, %edx
	je	.L1134
	cmpl	$705, %edx
	ja	.L1134
	jmp	.L1135
.L1143:
	cmpl	$1001, %edx
	je	.L1145
	ja	.L1146
	jmp	.L1134
.L1146:
	cmpl	$1103, %edx
	je	.L1145
	ja	.L1134
	cmpl	$1100, %edx
	jb	.L1134
.L1135:
	.loc 1 565 0
	movl	$-22, %eax
	jmp	.L1133
.L1145:
	.loc 1 565 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1133
.L1134:
	.loc 1 565 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1133
.L1150:
	.loc 1 565 0
	movl	$-14, %eax
.LVL107:
.L1133:
	.loc 1 566 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	aos_timer_start, .-aos_timer_start
	.section	.text.unlikely.aos_timer_start
.LCOLDE31:
	.section	.text.aos_timer_start
.LHOTE31:
	.section	.text.unlikely.aos_timer_stop,"ax",@progbits
.LCOLDB32:
	.section	.text.aos_timer_stop,"ax",@progbits
.LHOTB32:
	.globl	aos_timer_stop
	.type	aos_timer_stop, @function
aos_timer_stop:
.LFB64:
	.loc 1 569 0
	.cfi_startproc
.LVL108:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 573 0
	movl	$-22, %eax
	.loc 1 569 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 569 0
	movl	8(%ebp), %edx
	.loc 1 572 0
	testl	%edx, %edx
	je	.L1215
	.loc 1 576 0
	subl	$12, %esp
	pushl	(%edx)
	call	krhino_timer_stop
.LVL109:
	movl	%eax, %edx
.LVL110:
	.loc 1 577 0
	addl	$16, %esp
	.loc 1 578 0
	xorl	%eax, %eax
.LVL111:
	.loc 1 577 0
	testl	%edx, %edx
	je	.L1215
	.loc 1 581 0
	cmpl	$305, %edx
	je	.L1217
	ja	.L1218
	cmpl	$101, %edx
	ja	.L1219
	cmpl	$100, %edx
	jnb	.L1217
	cmpl	$8, %edx
	ja	.L1220
	cmpl	$7, %edx
	jnb	.L1217
	cmpl	$5, %edx
	je	.L1217
	ja	.L1232
	cmpl	$2, %edx
	je	.L1232
	jmp	.L1216
.L1220:
	cmpl	$9, %edx
	je	.L1216
	.loc 1 581 0
	movl	$-11, %eax
	.loc 1 581 0
	cmpl	$11, %edx
	jmp	.L1295
.L1219:
	cmpl	$202, %edx
	ja	.L1223
	cmpl	$200, %edx
	jnb	.L1216
	cmpl	$102, %edx
	je	.L1232
	.loc 1 581 0
	movl	$-12, %eax
	.loc 1 581 0
	cmpl	$105, %edx
.L1295:
	je	.L1215
	jmp	.L1216
.L1223:
	cmpl	$300, %edx
	je	.L1217
	ja	.L1216
	cmpl	$203, %edx
	jne	.L1216
	jmp	.L1217
.L1218:
	cmpl	$800, %edx
	je	.L1217
	ja	.L1225
	cmpl	$701, %edx
	ja	.L1226
	cmpl	$700, %edx
	jnb	.L1217
	jmp	.L1216
.L1226:
	cmpl	$702, %edx
	je	.L1216
	cmpl	$705, %edx
	ja	.L1216
	jmp	.L1217
.L1225:
	cmpl	$1001, %edx
	je	.L1227
	ja	.L1228
	jmp	.L1216
.L1228:
	cmpl	$1103, %edx
	je	.L1227
	ja	.L1216
	cmpl	$1100, %edx
	jb	.L1216
.L1217:
	.loc 1 581 0
	movl	$-22, %eax
	jmp	.L1215
.L1227:
	.loc 1 581 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1215
.L1216:
	.loc 1 581 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1215
.L1232:
	.loc 1 581 0
	movl	$-14, %eax
.LVL112:
.L1215:
	.loc 1 582 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE64:
	.size	aos_timer_stop, .-aos_timer_stop
	.section	.text.unlikely.aos_timer_stop
.LCOLDE32:
	.section	.text.aos_timer_stop
.LHOTE32:
	.section	.text.unlikely.aos_timer_change,"ax",@progbits
.LCOLDB33:
	.section	.text.aos_timer_change,"ax",@progbits
.LHOTB33:
	.globl	aos_timer_change
	.type	aos_timer_change, @function
aos_timer_change:
.LFB65:
	.loc 1 585 0
	.cfi_startproc
.LVL113:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 589 0
	movl	$-22, %eax
	.loc 1 585 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 585 0
	movl	8(%ebp), %ebx
	.loc 1 588 0
	testl	%ebx, %ebx
	je	.L1297
	.loc 1 592 0
	movl	12(%ebp), %esi
	pushl	%eax
	pushl	%eax
	movl	%esi, %edi
	sarl	$31, %edi
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL114:
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	popl	%edx
	popl	%ecx
	pushl	%edi
	pushl	%esi
	call	krhino_ms_to_ticks
.LVL115:
	popl	%esi
	pushl	-28(%ebp)
	pushl	-32(%ebp)
	pushl	%edx
	pushl	%eax
	pushl	(%ebx)
	call	krhino_timer_change
.LVL116:
	movl	%eax, %edx
.LVL117:
	.loc 1 593 0
	addl	$32, %esp
	.loc 1 594 0
	xorl	%eax, %eax
.LVL118:
	.loc 1 593 0
	testl	%edx, %edx
	je	.L1297
	.loc 1 597 0
	cmpl	$305, %edx
	je	.L1299
	ja	.L1300
	cmpl	$101, %edx
	ja	.L1301
	cmpl	$100, %edx
	jnb	.L1299
	cmpl	$8, %edx
	ja	.L1302
	cmpl	$7, %edx
	jnb	.L1299
	cmpl	$5, %edx
	je	.L1299
	ja	.L1314
	cmpl	$2, %edx
	je	.L1314
	jmp	.L1298
.L1302:
	cmpl	$9, %edx
	je	.L1298
	.loc 1 597 0
	movl	$-11, %eax
	.loc 1 597 0
	cmpl	$11, %edx
	jmp	.L1377
.L1301:
	cmpl	$202, %edx
	ja	.L1305
	cmpl	$200, %edx
	jnb	.L1298
	cmpl	$102, %edx
	je	.L1314
	.loc 1 597 0
	movl	$-12, %eax
	.loc 1 597 0
	cmpl	$105, %edx
.L1377:
	je	.L1297
	jmp	.L1298
.L1305:
	cmpl	$300, %edx
	je	.L1299
	ja	.L1298
	cmpl	$203, %edx
	jne	.L1298
	jmp	.L1299
.L1300:
	cmpl	$800, %edx
	je	.L1299
	ja	.L1307
	cmpl	$701, %edx
	ja	.L1308
	cmpl	$700, %edx
	jnb	.L1299
	jmp	.L1298
.L1308:
	cmpl	$702, %edx
	je	.L1298
	cmpl	$705, %edx
	ja	.L1298
	jmp	.L1299
.L1307:
	cmpl	$1001, %edx
	je	.L1309
	ja	.L1310
	jmp	.L1298
.L1310:
	cmpl	$1103, %edx
	je	.L1309
	ja	.L1298
	cmpl	$1100, %edx
	jb	.L1298
.L1299:
	.loc 1 597 0
	movl	$-22, %eax
	jmp	.L1297
.L1309:
	.loc 1 597 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1297
.L1298:
	.loc 1 597 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1297
.L1314:
	.loc 1 597 0
	movl	$-14, %eax
.LVL119:
.L1297:
	.loc 1 598 0
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
.LFE65:
	.size	aos_timer_change, .-aos_timer_change
	.section	.text.unlikely.aos_timer_change
.LCOLDE33:
	.section	.text.aos_timer_change
.LHOTE33:
	.section	.text.unlikely.aos_work_run,"ax",@progbits
.LCOLDB34:
	.section	.text.aos_work_run,"ax",@progbits
.LHOTB34:
	.globl	aos_work_run
	.type	aos_work_run, @function
aos_work_run:
.LFB69:
	.loc 1 687 0
	.cfi_startproc
.LVL120:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 687 0
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	.loc 1 690 0
	testl	%eax, %eax
	je	.L1394
	testl	%edx, %edx
	je	.L1394
	.loc 1 694 0
	pushl	%ecx
	pushl	%ecx
	pushl	(%edx)
	pushl	(%eax)
	call	krhino_work_run
.LVL121:
	movl	%eax, %edx
.LVL122:
	.loc 1 695 0
	addl	$16, %esp
	.loc 1 696 0
	xorl	%eax, %eax
.LVL123:
	.loc 1 695 0
	testl	%edx, %edx
	je	.L1379
	.loc 1 699 0
	cmpl	$305, %edx
	je	.L1394
	ja	.L1382
	cmpl	$101, %edx
	ja	.L1383
	cmpl	$100, %edx
	jnb	.L1394
	cmpl	$8, %edx
	ja	.L1384
	cmpl	$7, %edx
	jnb	.L1394
	cmpl	$5, %edx
	je	.L1394
	ja	.L1396
	cmpl	$2, %edx
	je	.L1396
	jmp	.L1380
.L1384:
	cmpl	$9, %edx
	je	.L1380
	.loc 1 699 0
	movl	$-11, %eax
	.loc 1 699 0
	cmpl	$11, %edx
	jmp	.L1459
.L1383:
	cmpl	$202, %edx
	ja	.L1387
	cmpl	$200, %edx
	jnb	.L1380
	cmpl	$102, %edx
	je	.L1396
	.loc 1 699 0
	movl	$-12, %eax
	.loc 1 699 0
	cmpl	$105, %edx
.L1459:
	je	.L1379
	jmp	.L1380
.L1387:
	cmpl	$300, %edx
	je	.L1394
	ja	.L1380
	cmpl	$203, %edx
	jne	.L1380
	jmp	.L1394
.L1382:
	cmpl	$800, %edx
	je	.L1394
	ja	.L1389
	cmpl	$701, %edx
	ja	.L1390
	cmpl	$700, %edx
	jnb	.L1394
	jmp	.L1380
.L1390:
	cmpl	$702, %edx
	je	.L1380
	cmpl	$705, %edx
	ja	.L1380
	jmp	.L1394
.L1389:
	cmpl	$1001, %edx
	je	.L1391
	ja	.L1392
	jmp	.L1380
.L1392:
	cmpl	$1103, %edx
	je	.L1391
	ja	.L1380
	cmpl	$1100, %edx
	jnb	.L1394
	jmp	.L1380
.L1391:
	.loc 1 699 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1379
.L1380:
	.loc 1 699 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1379
.LVL124:
.L1394:
	.loc 1 691 0
	movl	$-22, %eax
	jmp	.L1379
.LVL125:
.L1396:
	.loc 1 699 0
	movl	$-14, %eax
.LVL126:
.L1379:
	.loc 1 700 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	aos_work_run, .-aos_work_run
	.section	.text.unlikely.aos_work_run
.LCOLDE34:
	.section	.text.aos_work_run
.LHOTE34:
	.section	.text.unlikely.aos_work_sched,"ax",@progbits
.LCOLDB35:
	.section	.text.aos_work_sched,"ax",@progbits
.LHOTB35:
	.globl	aos_work_sched
	.type	aos_work_sched, @function
aos_work_sched:
.LFB70:
	.loc 1 703 0
	.cfi_startproc
.LVL127:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 707 0
	movl	$-22, %eax
	.loc 1 703 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 703 0
	movl	8(%ebp), %edx
	.loc 1 706 0
	testl	%edx, %edx
	je	.L1461
	.loc 1 710 0
	subl	$12, %esp
	pushl	(%edx)
	call	krhino_work_sched
.LVL128:
	movl	%eax, %edx
.LVL129:
	.loc 1 711 0
	addl	$16, %esp
	.loc 1 712 0
	xorl	%eax, %eax
.LVL130:
	.loc 1 711 0
	testl	%edx, %edx
	je	.L1461
	.loc 1 715 0
	cmpl	$305, %edx
	je	.L1463
	ja	.L1464
	cmpl	$101, %edx
	ja	.L1465
	cmpl	$100, %edx
	jnb	.L1463
	cmpl	$8, %edx
	ja	.L1466
	cmpl	$7, %edx
	jnb	.L1463
	cmpl	$5, %edx
	je	.L1463
	ja	.L1478
	cmpl	$2, %edx
	je	.L1478
	jmp	.L1462
.L1466:
	cmpl	$9, %edx
	je	.L1462
	.loc 1 715 0
	movl	$-11, %eax
	.loc 1 715 0
	cmpl	$11, %edx
	jmp	.L1541
.L1465:
	cmpl	$202, %edx
	ja	.L1469
	cmpl	$200, %edx
	jnb	.L1462
	cmpl	$102, %edx
	je	.L1478
	.loc 1 715 0
	movl	$-12, %eax
	.loc 1 715 0
	cmpl	$105, %edx
.L1541:
	je	.L1461
	jmp	.L1462
.L1469:
	cmpl	$300, %edx
	je	.L1463
	ja	.L1462
	cmpl	$203, %edx
	jne	.L1462
	jmp	.L1463
.L1464:
	cmpl	$800, %edx
	je	.L1463
	ja	.L1471
	cmpl	$701, %edx
	ja	.L1472
	cmpl	$700, %edx
	jnb	.L1463
	jmp	.L1462
.L1472:
	cmpl	$702, %edx
	je	.L1462
	cmpl	$705, %edx
	ja	.L1462
	jmp	.L1463
.L1471:
	cmpl	$1001, %edx
	je	.L1473
	ja	.L1474
	jmp	.L1462
.L1474:
	cmpl	$1103, %edx
	je	.L1473
	ja	.L1462
	cmpl	$1100, %edx
	jb	.L1462
.L1463:
	.loc 1 715 0
	movl	$-22, %eax
	jmp	.L1461
.L1473:
	.loc 1 715 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1461
.L1462:
	.loc 1 715 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1461
.L1478:
	.loc 1 715 0
	movl	$-14, %eax
.LVL131:
.L1461:
	.loc 1 716 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE70:
	.size	aos_work_sched, .-aos_work_sched
	.section	.text.unlikely.aos_work_sched
.LCOLDE35:
	.section	.text.aos_work_sched
.LHOTE35:
	.section	.text.unlikely.aos_work_cancel,"ax",@progbits
.LCOLDB36:
	.section	.text.aos_work_cancel,"ax",@progbits
.LHOTB36:
	.globl	aos_work_cancel
	.type	aos_work_cancel, @function
aos_work_cancel:
.LFB71:
	.loc 1 719 0
	.cfi_startproc
.LVL132:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$-22, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 719 0
	movl	8(%ebp), %edx
	.loc 1 722 0
	testl	%edx, %edx
	je	.L1543
	.loc 1 726 0
	subl	$12, %esp
	pushl	(%edx)
	call	krhino_work_cancel
.LVL133:
	.loc 1 727 0
	addl	$16, %esp
	.loc 1 731 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
.LVL134:
	notl	%eax
	andl	$-16, %eax
.L1543:
	.loc 1 732 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE71:
	.size	aos_work_cancel, .-aos_work_cancel
	.section	.text.unlikely.aos_work_cancel
.LCOLDE36:
	.section	.text.aos_work_cancel
.LHOTE36:
	.section	.text.unlikely.aos_zalloc,"ax",@progbits
.LCOLDB37:
	.section	.text.aos_zalloc,"ax",@progbits
.LHOTB37:
	.globl	aos_zalloc
	.type	aos_zalloc, @function
aos_zalloc:
.LFB72:
	.loc 1 737 0
	.cfi_startproc
.LVL135:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 740 0
	xorl	%eax, %eax
	.loc 1 737 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 737 0
	movl	8(%ebp), %esi
	.loc 1 739 0
	testl	%esi, %esi
	je	.L1549
	.loc 1 744 0
	js	.L1550
	.loc 1 745 0
	movl	%esi, %eax
	subl	$12, %esp
	orl	$-2147483648, %eax
	pushl	%eax
	call	krhino_mm_alloc
.LVL136:
	.loc 1 751 0
	addl	$12, %esp
	pushl	4(%ebp)
	.loc 1 745 0
	movl	%eax, %ebx
.LVL137:
	.loc 1 751 0
	pushl	%eax
	pushl	g_kmm_head
	call	krhino_owner_attach
.LVL138:
	jmp	.L1555
.LVL139:
.L1550:
	.loc 1 755 0
	subl	$12, %esp
	pushl	%esi
	call	krhino_mm_alloc
.LVL140:
	movl	%eax, %ebx
.LVL141:
.L1555:
	addl	$16, %esp
	xorl	%eax, %eax
	.loc 1 762 0
	testl	%ebx, %ebx
	je	.L1549
	.loc 1 763 0
	movl	%ebx, %edi
	movl	%esi, %ecx
	rep stosb
	movl	%ebx, %eax
.LVL142:
.L1549:
	.loc 1 767 0
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
.LFE72:
	.size	aos_zalloc, .-aos_zalloc
	.section	.text.unlikely.aos_zalloc
.LCOLDE37:
	.section	.text.aos_zalloc
.LHOTE37:
	.section	.text.unlikely.aos_malloc,"ax",@progbits
.LCOLDB38:
	.section	.text.aos_malloc,"ax",@progbits
.LHOTB38:
	.globl	aos_malloc
	.type	aos_malloc, @function
aos_malloc:
.LFB73:
	.loc 1 770 0
	.cfi_startproc
.LVL143:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 770 0
	movl	8(%ebp), %eax
	.loc 1 773 0
	testl	%eax, %eax
	je	.L1559
	.loc 1 778 0
	js	.L1558
.LVL144:
.LBB4:
.LBB5:
	.loc 1 779 0
	subl	$12, %esp
	orl	$-2147483648, %eax
.LVL145:
	pushl	%eax
	call	krhino_mm_alloc
.LVL146:
	.loc 1 785 0
	addl	$12, %esp
	pushl	4(%ebp)
	.loc 1 779 0
	movl	%eax, %ebx
.LVL147:
	.loc 1 785 0
	pushl	%eax
	pushl	g_kmm_head
	call	krhino_owner_attach
.LVL148:
	addl	$16, %esp
	movl	%ebx, %eax
	jmp	.L1557
.L1558:
.LBE5:
.LBE4:
	.loc 1 789 0
	movl	%eax, 8(%ebp)
.LVL149:
	.loc 1 797 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 789 0
	jmp	krhino_mm_alloc
.LVL150:
.L1559:
	.cfi_restore_state
	.loc 1 774 0
	xorl	%eax, %eax
.L1557:
	.loc 1 797 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE73:
	.size	aos_malloc, .-aos_malloc
	.section	.text.unlikely.aos_malloc
.LCOLDE38:
	.section	.text.aos_malloc
.LHOTE38:
	.section	.text.unlikely.aos_realloc,"ax",@progbits
.LCOLDB39:
	.section	.text.aos_realloc,"ax",@progbits
.LHOTB39:
	.globl	aos_realloc
	.type	aos_realloc, @function
aos_realloc:
.LFB74:
	.loc 1 800 0
	.cfi_startproc
.LVL151:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 800 0
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	.loc 1 804 0
	testl	%eax, %eax
	jns	.L1565
	.loc 1 823 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 815 0
	jmp	krhino_mm_realloc
.LVL152:
.L1565:
	.cfi_restore_state
	.loc 1 805 0
	orl	$-2147483648, %eax
	pushl	%ecx
	pushl	%ecx
	pushl	%eax
	pushl	%edx
	call	krhino_mm_realloc
.LVL153:
	.loc 1 811 0
	addl	$12, %esp
	pushl	4(%ebp)
	movl	%eax, -12(%ebp)
	pushl	%eax
	pushl	g_kmm_head
	call	krhino_owner_attach
.LVL154:
	movl	-12(%ebp), %eax
.LVL155:
	addl	$16, %esp
	.loc 1 823 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE74:
	.size	aos_realloc, .-aos_realloc
	.section	.text.unlikely.aos_realloc
.LCOLDE39:
	.section	.text.aos_realloc
.LHOTE39:
	.section	.text.unlikely.aos_alloc_trace,"ax",@progbits
.LCOLDB40:
	.section	.text.aos_alloc_trace,"ax",@progbits
.LHOTB40:
	.globl	aos_alloc_trace
	.type	aos_alloc_trace, @function
aos_alloc_trace:
.LFB75:
	.loc 1 826 0
	.cfi_startproc
.LVL156:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 828 0
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	g_kmm_head
	call	krhino_owner_attach
.LVL157:
	.loc 1 830 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE75:
	.size	aos_alloc_trace, .-aos_alloc_trace
	.section	.text.unlikely.aos_alloc_trace
.LCOLDE40:
	.section	.text.aos_alloc_trace
.LHOTE40:
	.section	.text.unlikely.aos_free,"ax",@progbits
.LCOLDB41:
	.section	.text.aos_free,"ax",@progbits
.LHOTB41:
	.globl	aos_free
	.type	aos_free, @function
aos_free:
.LFB76:
	.loc 1 833 0
	.cfi_startproc
.LVL158:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 833 0
	movl	8(%ebp), %eax
	.loc 1 834 0
	testl	%eax, %eax
	je	.L1569
	.loc 1 839 0
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 838 0
	jmp	krhino_mm_free
.LVL159:
.L1569:
	.cfi_restore_state
	.loc 1 839 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE76:
	.size	aos_free, .-aos_free
	.section	.text.unlikely.aos_free
.LCOLDE41:
	.section	.text.aos_free
.LHOTE41:
	.section	.text.unlikely.aos_mutex_new,"ax",@progbits
.LCOLDB42:
	.section	.text.aos_mutex_new,"ax",@progbits
.LHOTB42:
	.globl	aos_mutex_new
	.type	aos_mutex_new, @function
aos_mutex_new:
.LFB39:
	.loc 1 126 0
	.cfi_startproc
.LVL160:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 131 0
	movl	$-22, %eax
	.loc 1 126 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 126 0
	movl	8(%ebp), %esi
	.loc 1 130 0
	testl	%esi, %esi
	je	.L1573
	.loc 1 134 0
	subl	$12, %esp
	pushl	$44
	call	aos_malloc
.LVL161:
	movl	%eax, %edi
.LVL162:
	.loc 1 135 0
	addl	$16, %esp
	.loc 1 136 0
	movl	$-12, %eax
.LVL163:
	.loc 1 135 0
	testl	%edi, %edi
	je	.L1573
	.loc 1 139 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC17
	pushl	%edi
	call	krhino_mutex_create
.LVL164:
	.loc 1 140 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 139 0
	movl	%eax, %ebx
.LVL165:
	.loc 1 140 0
	je	.L1574
	.loc 1 141 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL166:
	.loc 1 142 0
	addl	$16, %esp
	cmpl	$305, %ebx
	je	.L1576
	ja	.L1577
	cmpl	$101, %ebx
	ja	.L1578
	cmpl	$100, %ebx
	jnb	.L1576
	cmpl	$8, %ebx
	ja	.L1579
	cmpl	$7, %ebx
	jnb	.L1576
	cmpl	$5, %ebx
	je	.L1576
	ja	.L1591
	cmpl	$2, %ebx
	je	.L1591
	jmp	.L1575
.L1579:
	cmpl	$9, %ebx
	je	.L1575
	.loc 1 142 0
	movl	$-11, %eax
	.loc 1 142 0
	cmpl	$11, %ebx
	jmp	.L1653
.L1578:
	cmpl	$202, %ebx
	ja	.L1582
	cmpl	$200, %ebx
	jnb	.L1575
	cmpl	$102, %ebx
	je	.L1591
	.loc 1 142 0
	movl	$-12, %eax
	.loc 1 142 0
	cmpl	$105, %ebx
.L1653:
	je	.L1573
	jmp	.L1575
.L1582:
	cmpl	$300, %ebx
	je	.L1576
	ja	.L1575
	cmpl	$203, %ebx
	jne	.L1575
	jmp	.L1576
.L1577:
	cmpl	$800, %ebx
	je	.L1576
	ja	.L1584
	cmpl	$701, %ebx
	ja	.L1585
	cmpl	$700, %ebx
	jnb	.L1576
	jmp	.L1575
.L1585:
	cmpl	$702, %ebx
	je	.L1575
	cmpl	$705, %ebx
	ja	.L1575
	jmp	.L1576
.L1584:
	cmpl	$1001, %ebx
	je	.L1586
	ja	.L1587
	jmp	.L1575
.L1587:
	cmpl	$1103, %ebx
	je	.L1586
	ja	.L1575
	cmpl	$1100, %ebx
	jb	.L1575
.L1576:
	.loc 1 142 0
	movl	$-22, %eax
	jmp	.L1573
.L1586:
	.loc 1 142 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1573
.L1575:
	.loc 1 142 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1573
.LVL167:
.L1574:
	.loc 1 145 0
	movl	%edi, (%esi)
	.loc 1 147 0
	xorl	%eax, %eax
.LVL168:
	jmp	.L1573
.L1591:
	.loc 1 142 0
	movl	$-14, %eax
.LVL169:
.L1573:
	.loc 1 148 0
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
	.size	aos_mutex_new, .-aos_mutex_new
	.section	.text.unlikely.aos_mutex_new
.LCOLDE42:
	.section	.text.aos_mutex_new
.LHOTE42:
	.section	.text.unlikely.aos_mutex_free,"ax",@progbits
.LCOLDB43:
	.section	.text.aos_mutex_free,"ax",@progbits
.LHOTB43:
	.globl	aos_mutex_free
	.type	aos_mutex_free, @function
aos_mutex_free:
.LFB40:
	.loc 1 151 0
	.cfi_startproc
.LVL170:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 151 0
	movl	8(%ebp), %ebx
	.loc 1 152 0
	testl	%ebx, %ebx
	je	.L1654
	.loc 1 156 0
	subl	$12, %esp
	pushl	(%ebx)
	call	krhino_mutex_del
.LVL171:
	.loc 1 158 0
	popl	%eax
	pushl	(%ebx)
	call	aos_free
.LVL172:
	.loc 1 160 0
	movl	$0, (%ebx)
	addl	$16, %esp
.L1654:
	.loc 1 161 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE40:
	.size	aos_mutex_free, .-aos_mutex_free
	.section	.text.unlikely.aos_mutex_free
.LCOLDE43:
	.section	.text.aos_mutex_free
.LHOTE43:
	.section	.text.unlikely.aos_sem_new,"ax",@progbits
.LCOLDB44:
	.section	.text.aos_sem_new,"ax",@progbits
.LHOTB44:
	.globl	aos_sem_new
	.type	aos_sem_new, @function
aos_sem_new:
.LFB44:
	.loc 1 230 0
	.cfi_startproc
.LVL173:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 235 0
	movl	$-22, %eax
	.loc 1 230 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 230 0
	movl	8(%ebp), %esi
	.loc 1 234 0
	testl	%esi, %esi
	je	.L1661
	.loc 1 238 0
	subl	$12, %esp
	pushl	$40
	call	aos_malloc
.LVL174:
	movl	%eax, %edi
.LVL175:
	.loc 1 239 0
	addl	$16, %esp
	.loc 1 240 0
	movl	$-12, %eax
.LVL176:
	.loc 1 239 0
	testl	%edi, %edi
	je	.L1661
	.loc 1 243 0
	pushl	%eax
	pushl	12(%ebp)
	pushl	$.LC17
	pushl	%edi
	call	krhino_sem_create
.LVL177:
	.loc 1 244 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 243 0
	movl	%eax, %ebx
.LVL178:
	.loc 1 244 0
	je	.L1662
	.loc 1 245 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL179:
	.loc 1 246 0
	addl	$16, %esp
	cmpl	$305, %ebx
	je	.L1664
	ja	.L1665
	cmpl	$101, %ebx
	ja	.L1666
	cmpl	$100, %ebx
	jnb	.L1664
	cmpl	$8, %ebx
	ja	.L1667
	cmpl	$7, %ebx
	jnb	.L1664
	cmpl	$5, %ebx
	je	.L1664
	ja	.L1679
	cmpl	$2, %ebx
	je	.L1679
	jmp	.L1663
.L1667:
	cmpl	$9, %ebx
	je	.L1663
	.loc 1 246 0
	movl	$-11, %eax
	.loc 1 246 0
	cmpl	$11, %ebx
	jmp	.L1741
.L1666:
	cmpl	$202, %ebx
	ja	.L1670
	cmpl	$200, %ebx
	jnb	.L1663
	cmpl	$102, %ebx
	je	.L1679
	.loc 1 246 0
	movl	$-12, %eax
	.loc 1 246 0
	cmpl	$105, %ebx
.L1741:
	je	.L1661
	jmp	.L1663
.L1670:
	cmpl	$300, %ebx
	je	.L1664
	ja	.L1663
	cmpl	$203, %ebx
	jne	.L1663
	jmp	.L1664
.L1665:
	cmpl	$800, %ebx
	je	.L1664
	ja	.L1672
	cmpl	$701, %ebx
	ja	.L1673
	cmpl	$700, %ebx
	jnb	.L1664
	jmp	.L1663
.L1673:
	cmpl	$702, %ebx
	je	.L1663
	cmpl	$705, %ebx
	ja	.L1663
	jmp	.L1664
.L1672:
	cmpl	$1001, %ebx
	je	.L1674
	ja	.L1675
	jmp	.L1663
.L1675:
	cmpl	$1103, %ebx
	je	.L1674
	ja	.L1663
	cmpl	$1100, %ebx
	jb	.L1663
.L1664:
	.loc 1 246 0
	movl	$-22, %eax
	jmp	.L1661
.L1674:
	.loc 1 246 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1661
.L1663:
	.loc 1 246 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1661
.LVL180:
.L1662:
	.loc 1 249 0
	movl	%edi, (%esi)
	.loc 1 251 0
	xorl	%eax, %eax
.LVL181:
	jmp	.L1661
.L1679:
	.loc 1 246 0
	movl	$-14, %eax
.LVL182:
.L1661:
	.loc 1 252 0
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
	.size	aos_sem_new, .-aos_sem_new
	.section	.text.unlikely.aos_sem_new
.LCOLDE44:
	.section	.text.aos_sem_new
.LHOTE44:
	.section	.text.unlikely.aos_sem_free,"ax",@progbits
.LCOLDB45:
	.section	.text.aos_sem_free,"ax",@progbits
.LHOTB45:
	.globl	aos_sem_free
	.type	aos_sem_free, @function
aos_sem_free:
.LFB45:
	.loc 1 255 0
	.cfi_startproc
.LVL183:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 255 0
	movl	8(%ebp), %ebx
	.loc 1 256 0
	testl	%ebx, %ebx
	je	.L1742
	.loc 1 260 0
	subl	$12, %esp
	pushl	(%ebx)
	call	krhino_sem_del
.LVL184:
	.loc 1 262 0
	popl	%eax
	pushl	(%ebx)
	call	aos_free
.LVL185:
	.loc 1 264 0
	movl	$0, (%ebx)
	addl	$16, %esp
.L1742:
	.loc 1 265 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE45:
	.size	aos_sem_free, .-aos_sem_free
	.section	.text.unlikely.aos_sem_free
.LCOLDE45:
	.section	.text.aos_sem_free
.LHOTE45:
	.section	.text.unlikely.aos_queue_new,"ax",@progbits
.LCOLDB46:
	.section	.text.aos_queue_new,"ax",@progbits
.LHOTB46:
	.globl	aos_queue_new
	.type	aos_queue_new, @function
aos_queue_new:
.LFB54:
	.loc 1 398 0
	.cfi_startproc
.LVL186:
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
	.loc 1 398 0
	movl	8(%ebp), %esi
	movl	12(%ebp), %ebx
	.loc 1 402 0
	testl	%esi, %esi
	je	.L1765
	testl	%ebx, %ebx
	je	.L1765
	.loc 1 406 0
	subl	$12, %esp
	pushl	$80
	call	aos_malloc
.LVL187:
	movl	%eax, %edi
.LVL188:
	.loc 1 407 0
	addl	$16, %esp
	.loc 1 408 0
	movl	$-12, %eax
.LVL189:
	.loc 1 407 0
	testl	%edi, %edi
	je	.L1749
	.loc 1 411 0
	subl	$12, %esp
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	%ebx
	pushl	$.LC17
	pushl	%edi
	call	krhino_buf_queue_create
.LVL190:
	.loc 1 412 0
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 411 0
	movl	%eax, %ebx
.LVL191:
	.loc 1 412 0
	je	.L1750
	.loc 1 413 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL192:
	.loc 1 414 0
	addl	$16, %esp
	cmpl	$305, %ebx
	je	.L1765
	ja	.L1753
	cmpl	$101, %ebx
	ja	.L1754
	cmpl	$100, %ebx
	jnb	.L1765
	cmpl	$8, %ebx
	ja	.L1755
	cmpl	$7, %ebx
	jnb	.L1765
	cmpl	$5, %ebx
	je	.L1765
	ja	.L1767
	cmpl	$2, %ebx
	je	.L1767
	jmp	.L1751
.L1755:
	cmpl	$9, %ebx
	je	.L1751
	.loc 1 414 0
	movl	$-11, %eax
	.loc 1 414 0
	cmpl	$11, %ebx
	jmp	.L1829
.L1754:
	cmpl	$202, %ebx
	ja	.L1758
	cmpl	$200, %ebx
	jnb	.L1751
	cmpl	$102, %ebx
	je	.L1767
	.loc 1 414 0
	movl	$-12, %eax
	.loc 1 414 0
	cmpl	$105, %ebx
.L1829:
	je	.L1749
	jmp	.L1751
.L1758:
	cmpl	$300, %ebx
	je	.L1765
	ja	.L1751
	cmpl	$203, %ebx
	jne	.L1751
	jmp	.L1765
.L1753:
	cmpl	$800, %ebx
	je	.L1765
	ja	.L1760
	cmpl	$701, %ebx
	ja	.L1761
	cmpl	$700, %ebx
	jnb	.L1765
	jmp	.L1751
.L1761:
	cmpl	$702, %ebx
	je	.L1751
	cmpl	$705, %ebx
	ja	.L1751
	jmp	.L1765
.L1760:
	cmpl	$1001, %ebx
	je	.L1762
	ja	.L1763
	jmp	.L1751
.L1763:
	cmpl	$1103, %ebx
	je	.L1762
	ja	.L1751
	cmpl	$1100, %ebx
	jnb	.L1765
	jmp	.L1751
.L1762:
	.loc 1 414 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1749
.L1751:
	.loc 1 414 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1749
.LVL193:
.L1750:
	.loc 1 417 0
	movl	%edi, (%esi)
	.loc 1 419 0
	xorl	%eax, %eax
.LVL194:
	jmp	.L1749
.LVL195:
.L1765:
	.loc 1 403 0
	movl	$-22, %eax
	jmp	.L1749
.LVL196:
.L1767:
	.loc 1 414 0
	movl	$-14, %eax
.LVL197:
.L1749:
	.loc 1 420 0
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
.LFE54:
	.size	aos_queue_new, .-aos_queue_new
	.section	.text.unlikely.aos_queue_new
.LCOLDE46:
	.section	.text.aos_queue_new
.LHOTE46:
	.section	.text.unlikely.aos_queue_free,"ax",@progbits
.LCOLDB47:
	.section	.text.aos_queue_free,"ax",@progbits
.LHOTB47:
	.globl	aos_queue_free
	.type	aos_queue_free, @function
aos_queue_free:
.LFB55:
	.loc 1 423 0
	.cfi_startproc
.LVL198:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 423 0
	movl	8(%ebp), %ebx
	.loc 1 424 0
	testl	%ebx, %ebx
	je	.L1830
	.loc 1 428 0
	subl	$12, %esp
	pushl	(%ebx)
	call	krhino_buf_queue_del
.LVL199:
	.loc 1 430 0
	popl	%eax
	pushl	(%ebx)
	call	aos_free
.LVL200:
	.loc 1 432 0
	movl	$0, (%ebx)
	addl	$16, %esp
.L1830:
	.loc 1 433 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE55:
	.size	aos_queue_free, .-aos_queue_free
	.section	.text.unlikely.aos_queue_free
.LCOLDE47:
	.section	.text.aos_queue_free
.LHOTE47:
	.section	.text.unlikely.aos_workqueue_create,"ax",@progbits
.LCOLDB48:
	.section	.text.aos_workqueue_create,"ax",@progbits
.LHOTB48:
	.globl	aos_workqueue_create
	.type	aos_workqueue_create, @function
aos_workqueue_create:
.LFB66:
	.loc 1 603 0
	.cfi_startproc
.LVL201:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 610 0
	movl	$-22, %eax
	.loc 1 603 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 603 0
	movl	8(%ebp), %esi
	movl	16(%ebp), %ebx
	.loc 1 609 0
	testl	%esi, %esi
	je	.L1837
	.loc 1 613 0
	cmpl	$3, %ebx
	jbe	.L1837
	.loc 1 617 0
	subl	$12, %esp
	pushl	%ebx
	call	aos_malloc
.LVL202:
	movl	%eax, %edi
.LVL203:
	.loc 1 618 0
	addl	$16, %esp
	.loc 1 619 0
	movl	$-12, %eax
.LVL204:
	.loc 1 618 0
	testl	%edi, %edi
	je	.L1837
	.loc 1 622 0
	subl	$12, %esp
	pushl	$188
	call	aos_malloc
.LVL205:
	.loc 1 623 0
	addl	$16, %esp
	testl	%eax, %eax
	.loc 1 622 0
	movl	%eax, %edx
.LVL206:
	.loc 1 623 0
	jne	.L1838
	.loc 1 624 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL207:
	.loc 1 625 0
	addl	$16, %esp
	movl	$-12, %eax
	jmp	.L1837
.LVL208:
.L1838:
	.loc 1 628 0
	movzbl	12(%ebp), %eax
.LVL209:
	subl	$12, %esp
	shrl	$2, %ebx
	pushl	%ebx
	pushl	%edi
	movl	%edx, -28(%ebp)
	pushl	%eax
	pushl	$.LC17
	pushl	%edx
	call	krhino_workqueue_create
.LVL210:
	.loc 1 630 0
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 628 0
	movl	%eax, %ebx
.LVL211:
	.loc 1 630 0
	movl	-28(%ebp), %edx
	je	.L1839
	.loc 1 631 0
	subl	$12, %esp
	pushl	%edx
	call	aos_free
.LVL212:
	.loc 1 632 0
	movl	%edi, (%esp)
	call	aos_free
.LVL213:
	.loc 1 633 0
	addl	$16, %esp
	cmpl	$305, %ebx
	je	.L1841
	ja	.L1842
	cmpl	$101, %ebx
	ja	.L1843
	cmpl	$100, %ebx
	jnb	.L1841
	cmpl	$8, %ebx
	ja	.L1844
	cmpl	$7, %ebx
	jnb	.L1841
	cmpl	$5, %ebx
	je	.L1841
	ja	.L1857
	cmpl	$2, %ebx
	je	.L1857
	jmp	.L1840
.L1844:
	cmpl	$9, %ebx
	je	.L1840
	.loc 1 633 0
	movl	$-11, %eax
	.loc 1 633 0
	cmpl	$11, %ebx
	jmp	.L1919
.L1843:
	cmpl	$202, %ebx
	ja	.L1847
	cmpl	$200, %ebx
	jnb	.L1840
	cmpl	$102, %ebx
	je	.L1857
	.loc 1 633 0
	movl	$-12, %eax
	.loc 1 633 0
	cmpl	$105, %ebx
.L1919:
	je	.L1837
	jmp	.L1840
.L1847:
	cmpl	$300, %ebx
	je	.L1841
	ja	.L1840
	cmpl	$203, %ebx
	jne	.L1840
	jmp	.L1841
.L1842:
	cmpl	$800, %ebx
	je	.L1841
	ja	.L1849
	cmpl	$701, %ebx
	ja	.L1850
	cmpl	$700, %ebx
	jnb	.L1841
	jmp	.L1840
.L1850:
	cmpl	$702, %ebx
	je	.L1840
	cmpl	$705, %ebx
	ja	.L1840
	jmp	.L1841
.L1849:
	cmpl	$1001, %ebx
	je	.L1851
	ja	.L1852
	jmp	.L1840
.L1852:
	cmpl	$1103, %ebx
	je	.L1851
	ja	.L1840
	cmpl	$1100, %ebx
	jb	.L1840
.L1841:
	.loc 1 633 0
	movl	$-22, %eax
	jmp	.L1837
.L1851:
	.loc 1 633 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1837
.L1840:
	.loc 1 633 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1837
.LVL214:
.L1839:
	.loc 1 636 0
	movl	%edx, (%esi)
	.loc 1 637 0
	movl	%edi, 4(%esi)
	.loc 1 639 0
	xorl	%eax, %eax
.LVL215:
	jmp	.L1837
.L1857:
	.loc 1 633 0
	movl	$-14, %eax
.LVL216:
.L1837:
	.loc 1 640 0
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
.LFE66:
	.size	aos_workqueue_create, .-aos_workqueue_create
	.section	.text.unlikely.aos_workqueue_create
.LCOLDE48:
	.section	.text.aos_workqueue_create
.LHOTE48:
	.section	.text.unlikely.aos_work_init,"ax",@progbits
.LCOLDB49:
	.section	.text.aos_work_init,"ax",@progbits
.LHOTB49:
	.globl	aos_work_init
	.type	aos_work_init, @function
aos_work_init:
.LFB67:
	.loc 1 643 0
	.cfi_startproc
.LVL217:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 648 0
	movl	$-22, %eax
	.loc 1 643 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 643 0
	movl	8(%ebp), %esi
	.loc 1 647 0
	testl	%esi, %esi
	je	.L1921
	.loc 1 651 0
	subl	$12, %esp
	pushl	$36
	call	aos_malloc
.LVL218:
	movl	%eax, %edi
.LVL219:
	.loc 1 652 0
	addl	$16, %esp
	.loc 1 653 0
	movl	$-12, %eax
.LVL220:
	.loc 1 652 0
	testl	%edi, %edi
	je	.L1921
	.loc 1 656 0
	pushl	%eax
	pushl	%eax
	movl	20(%ebp), %eax
	cltd
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL221:
	movl	%edx, (%esp)
	pushl	%eax
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	%edi
	call	krhino_work_init
.LVL222:
	.loc 1 657 0
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 656 0
	movl	%eax, %ebx
.LVL223:
	.loc 1 657 0
	je	.L1922
	.loc 1 658 0
	subl	$12, %esp
	pushl	%edi
	call	aos_free
.LVL224:
	.loc 1 659 0
	addl	$16, %esp
	cmpl	$305, %ebx
	je	.L1924
	ja	.L1925
	cmpl	$101, %ebx
	ja	.L1926
	cmpl	$100, %ebx
	jnb	.L1924
	cmpl	$8, %ebx
	ja	.L1927
	cmpl	$7, %ebx
	jnb	.L1924
	cmpl	$5, %ebx
	je	.L1924
	ja	.L1939
	cmpl	$2, %ebx
	je	.L1939
	jmp	.L1923
.L1927:
	cmpl	$9, %ebx
	je	.L1923
	.loc 1 659 0
	movl	$-11, %eax
	.loc 1 659 0
	cmpl	$11, %ebx
	jmp	.L2001
.L1926:
	cmpl	$202, %ebx
	ja	.L1930
	cmpl	$200, %ebx
	jnb	.L1923
	cmpl	$102, %ebx
	je	.L1939
	.loc 1 659 0
	movl	$-12, %eax
	.loc 1 659 0
	cmpl	$105, %ebx
.L2001:
	je	.L1921
	jmp	.L1923
.L1930:
	cmpl	$300, %ebx
	je	.L1924
	ja	.L1923
	cmpl	$203, %ebx
	jne	.L1923
	jmp	.L1924
.L1925:
	cmpl	$800, %ebx
	je	.L1924
	ja	.L1932
	cmpl	$701, %ebx
	ja	.L1933
	cmpl	$700, %ebx
	jnb	.L1924
	jmp	.L1923
.L1933:
	cmpl	$702, %ebx
	je	.L1923
	cmpl	$705, %ebx
	ja	.L1923
	jmp	.L1924
.L1932:
	cmpl	$1001, %ebx
	je	.L1934
	ja	.L1935
	jmp	.L1923
.L1935:
	cmpl	$1103, %ebx
	je	.L1934
	ja	.L1923
	cmpl	$1100, %ebx
	jb	.L1923
.L1924:
	.loc 1 659 0
	movl	$-22, %eax
	jmp	.L1921
.L1934:
	.loc 1 659 0 discriminator 7
	movl	$-11, %eax
	jmp	.L1921
.L1923:
	.loc 1 659 0 discriminator 1
	orl	$-1, %eax
	jmp	.L1921
.LVL225:
.L1922:
	.loc 1 662 0
	movl	%edi, (%esi)
	.loc 1 664 0
	xorl	%eax, %eax
.LVL226:
	jmp	.L1921
.L1939:
	.loc 1 659 0
	movl	$-14, %eax
.LVL227:
.L1921:
	.loc 1 665 0
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
.LFE67:
	.size	aos_work_init, .-aos_work_init
	.section	.text.unlikely.aos_work_init
.LCOLDE49:
	.section	.text.aos_work_init
.LHOTE49:
	.section	.text.unlikely.aos_work_destroy,"ax",@progbits
.LCOLDB50:
	.section	.text.aos_work_destroy,"ax",@progbits
.LHOTB50:
	.globl	aos_work_destroy
	.type	aos_work_destroy, @function
aos_work_destroy:
.LFB68:
	.loc 1 668 0
	.cfi_startproc
.LVL228:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 668 0
	movl	8(%ebp), %ebx
	.loc 1 671 0
	testl	%ebx, %ebx
	je	.L2002
	.loc 1 675 0
	movl	(%ebx), %esi
.LVL229:
	.loc 1 677 0
	movl	24(%esi), %eax
	testl	%eax, %eax
	je	.L2004
	.loc 1 678 0
	subl	$12, %esp
	pushl	%eax
	call	krhino_timer_stop
.LVL230:
	.loc 1 679 0
	popl	%eax
	pushl	24(%esi)
	call	krhino_timer_dyn_del
.LVL231:
	addl	$16, %esp
.L2004:
	.loc 1 682 0
	subl	$12, %esp
	pushl	(%ebx)
	call	aos_free
.LVL232:
	.loc 1 683 0
	movl	$0, (%ebx)
	addl	$16, %esp
.LVL233:
.L2002:
	.loc 1 684 0
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
.LFE68:
	.size	aos_work_destroy, .-aos_work_destroy
	.section	.text.unlikely.aos_work_destroy
.LCOLDE50:
	.section	.text.aos_work_destroy
.LHOTE50:
	.section	.text.unlikely.aos_now,"ax",@progbits
.LCOLDB51:
	.section	.text.aos_now,"ax",@progbits
.LHOTB51:
	.globl	aos_now
	.type	aos_now, @function
aos_now:
.LFB77:
	.loc 1 843 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%eax
	.cfi_offset 3, -12
	.loc 1 844 0
	call	krhino_sys_time_get
.LVL234:
	movl	%eax, %ecx
	movl	$1000000, %eax
	imull	$1000000, %edx, %ebx
	mull	%ecx
	.loc 1 845 0
	popl	%ecx
	.loc 1 844 0
	addl	%ebx, %edx
	.loc 1 845 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE77:
	.size	aos_now, .-aos_now
	.section	.text.unlikely.aos_now
.LCOLDE51:
	.section	.text.aos_now
.LHOTE51:
	.section	.text.unlikely.aos_now_ms,"ax",@progbits
.LCOLDB52:
	.section	.text.aos_now_ms,"ax",@progbits
.LHOTB52:
	.globl	aos_now_ms
	.type	aos_now_ms, @function
aos_now_ms:
.LFB78:
	.loc 1 848 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 850 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 849 0
	jmp	krhino_sys_time_get
.LVL235:
	.cfi_endproc
.LFE78:
	.size	aos_now_ms, .-aos_now_ms
	.section	.text.unlikely.aos_now_ms
.LCOLDE52:
	.section	.text.aos_now_ms
.LHOTE52:
	.section	.text.unlikely.aos_msleep,"ax",@progbits
.LCOLDB53:
	.section	.text.aos_msleep,"ax",@progbits
.LHOTB53:
	.globl	aos_msleep
	.type	aos_msleep, @function
aos_msleep:
.LFB79:
	.loc 1 853 0
	.cfi_startproc
.LVL236:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 854 0
	movl	8(%ebp), %eax
	cltd
	pushl	%edx
	pushl	%eax
	call	krhino_ms_to_ticks
.LVL237:
	popl	%ecx
	popl	%ecx
	pushl	%edx
	pushl	%eax
	call	krhino_task_sleep
.LVL238:
	.loc 1 855 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE79:
	.size	aos_msleep, .-aos_msleep
	.section	.text.unlikely.aos_msleep
.LCOLDE53:
	.section	.text.aos_msleep
.LHOTE53:
	.section	.text.unlikely.aos_init,"ax",@progbits
.LCOLDB54:
	.section	.text.aos_init,"ax",@progbits
.LHOTB54:
	.globl	aos_init
	.type	aos_init, @function
aos_init:
.LFB80:
	.loc 1 858 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 860 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 859 0
	jmp	krhino_init
.LVL239:
	.cfi_endproc
.LFE80:
	.size	aos_init, .-aos_init
	.section	.text.unlikely.aos_init
.LCOLDE54:
	.section	.text.aos_init
.LHOTE54:
	.section	.text.unlikely.aos_start,"ax",@progbits
.LCOLDB55:
	.section	.text.aos_start,"ax",@progbits
.LHOTB55:
	.globl	aos_start
	.type	aos_start, @function
aos_start:
.LFB81:
	.loc 1 863 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 865 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 864 0
	jmp	krhino_start
.LVL240:
	.cfi_endproc
.LFE81:
	.size	aos_start, .-aos_start
	.section	.text.unlikely.aos_start
.LCOLDE55:
	.section	.text.aos_start
.LHOTE55:
	.section	.bss.used_bitmap,"aw",@nobits
	.align 4
	.type	used_bitmap, @object
	.size	used_bitmap, 4
used_bitmap:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.aos_reboot
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 6 "./kernel/rhino/core/include/k_err.h"
	.file 7 "./kernel/rhino/core/include/k_spin_lock.h"
	.file 8 "./kernel/rhino/core/include/k_sys.h"
	.file 9 "./kernel/rhino/core/include/k_list.h"
	.file 10 "./kernel/rhino/core/include/k_obj.h"
	.file 11 "./kernel/rhino/core/include/k_task.h"
	.file 12 "./kernel/rhino/core/include/k_mutex.h"
	.file 13 "./kernel/rhino/core/include/k_sem.h"
	.file 14 "./kernel/rhino/core/include/k_ringbuf.h"
	.file 15 "./kernel/rhino/core/include/k_buf_queue.h"
	.file 16 "./kernel/rhino/core/include/k_timer.h"
	.file 17 "./kernel/rhino/core/include/k_event.h"
	.file 18 "./kernel/rhino/core/include/k_mm.h"
	.file 19 "./kernel/rhino/core/include/k_workqueue.h"
	.file 20 "./include/aos/kernel.h"
	.file 21 "./kernel/rhino/core/include/k_internal.h"
	.file 22 "./include/aos/log.h"
	.file 23 "./kernel/rhino/core/include/k_time.h"
	.file 24 "./kernel/rhino/core/include/k_mm_debug.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1e3e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF350
	.byte	0xc
	.long	.LASF351
	.long	.LASF352
	.long	.Ldebug_ranges0+0
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
	.uleb128 0x3
	.long	.LASF10
	.byte	0x3
	.byte	0x41
	.long	0x85
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.long	.LASF12
	.byte	0x3
	.byte	0x5b
	.long	0x97
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x4
	.byte	0x30
	.long	0x7a
	.uleb128 0x3
	.long	.LASF16
	.byte	0x4
	.byte	0x3c
	.long	0x8c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x6
	.byte	0x4
	.long	0xd5
	.uleb128 0x7
	.long	0xc8
	.uleb128 0x3
	.long	.LASF19
	.byte	0x5
	.byte	0xe
	.long	0xc8
	.uleb128 0x3
	.long	.LASF20
	.byte	0x5
	.byte	0xf
	.long	0xa9
	.uleb128 0x3
	.long	.LASF21
	.byte	0x5
	.byte	0x10
	.long	0xa9
	.uleb128 0x3
	.long	.LASF22
	.byte	0x5
	.byte	0x13
	.long	0xa9
	.uleb128 0x3
	.long	.LASF23
	.byte	0x5
	.byte	0x14
	.long	0x9e
	.uleb128 0x3
	.long	.LASF24
	.byte	0x5
	.byte	0x16
	.long	0xa9
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0x6
	.byte	0x8
	.long	0x2c8
	.uleb128 0x9
	.long	.LASF25
	.byte	0
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.uleb128 0x9
	.long	.LASF27
	.byte	0x2
	.uleb128 0x9
	.long	.LASF28
	.byte	0x3
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.uleb128 0x9
	.long	.LASF31
	.byte	0x6
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.uleb128 0x9
	.long	.LASF33
	.byte	0x8
	.uleb128 0x9
	.long	.LASF34
	.byte	0x9
	.uleb128 0x9
	.long	.LASF35
	.byte	0xa
	.uleb128 0x9
	.long	.LASF36
	.byte	0xb
	.uleb128 0x9
	.long	.LASF37
	.byte	0xc
	.uleb128 0x9
	.long	.LASF38
	.byte	0xd
	.uleb128 0x9
	.long	.LASF39
	.byte	0x64
	.uleb128 0x9
	.long	.LASF40
	.byte	0x65
	.uleb128 0x9
	.long	.LASF41
	.byte	0x66
	.uleb128 0x9
	.long	.LASF42
	.byte	0x67
	.uleb128 0x9
	.long	.LASF43
	.byte	0x68
	.uleb128 0x9
	.long	.LASF44
	.byte	0x69
	.uleb128 0x9
	.long	.LASF45
	.byte	0x6a
	.uleb128 0x9
	.long	.LASF46
	.byte	0x6b
	.uleb128 0x9
	.long	.LASF47
	.byte	0xc8
	.uleb128 0x9
	.long	.LASF48
	.byte	0xc9
	.uleb128 0x9
	.long	.LASF49
	.byte	0xca
	.uleb128 0x9
	.long	.LASF50
	.byte	0xcb
	.uleb128 0xa
	.long	.LASF51
	.value	0x12c
	.uleb128 0xa
	.long	.LASF52
	.value	0x12d
	.uleb128 0xa
	.long	.LASF53
	.value	0x12e
	.uleb128 0xa
	.long	.LASF54
	.value	0x12f
	.uleb128 0xa
	.long	.LASF55
	.value	0x130
	.uleb128 0xa
	.long	.LASF56
	.value	0x131
	.uleb128 0xa
	.long	.LASF57
	.value	0x132
	.uleb128 0xa
	.long	.LASF58
	.value	0x133
	.uleb128 0xa
	.long	.LASF59
	.value	0x134
	.uleb128 0xa
	.long	.LASF60
	.value	0x190
	.uleb128 0xa
	.long	.LASF61
	.value	0x191
	.uleb128 0xa
	.long	.LASF62
	.value	0x192
	.uleb128 0xa
	.long	.LASF63
	.value	0x193
	.uleb128 0xa
	.long	.LASF64
	.value	0x194
	.uleb128 0xa
	.long	.LASF65
	.value	0x195
	.uleb128 0xa
	.long	.LASF66
	.value	0x1f4
	.uleb128 0xa
	.long	.LASF67
	.value	0x258
	.uleb128 0xa
	.long	.LASF68
	.value	0x2bc
	.uleb128 0xa
	.long	.LASF69
	.value	0x2bd
	.uleb128 0xa
	.long	.LASF70
	.value	0x2be
	.uleb128 0xa
	.long	.LASF71
	.value	0x2bf
	.uleb128 0xa
	.long	.LASF72
	.value	0x2c0
	.uleb128 0xa
	.long	.LASF73
	.value	0x2c1
	.uleb128 0xa
	.long	.LASF74
	.value	0x320
	.uleb128 0xa
	.long	.LASF75
	.value	0x321
	.uleb128 0xa
	.long	.LASF76
	.value	0x384
	.uleb128 0xa
	.long	.LASF77
	.value	0x385
	.uleb128 0xa
	.long	.LASF78
	.value	0x386
	.uleb128 0xa
	.long	.LASF79
	.value	0x3e8
	.uleb128 0xa
	.long	.LASF80
	.value	0x3e9
	.uleb128 0xa
	.long	.LASF81
	.value	0x44c
	.uleb128 0xa
	.long	.LASF82
	.value	0x44d
	.uleb128 0xa
	.long	.LASF83
	.value	0x44e
	.uleb128 0xa
	.long	.LASF84
	.value	0x44f
	.uleb128 0xa
	.long	.LASF85
	.value	0x450
	.uleb128 0xa
	.long	.LASF86
	.value	0x4b0
	.uleb128 0xa
	.long	.LASF87
	.value	0x4b1
	.byte	0
	.uleb128 0x3
	.long	.LASF88
	.byte	0x6
	.byte	0x54
	.long	0x11c
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.long	0x2e8
	.uleb128 0xc
	.long	.LASF92
	.byte	0x7
	.byte	0xc
	.long	0x111
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF89
	.byte	0x7
	.byte	0xd
	.long	0x2d3
	.uleb128 0x3
	.long	.LASF90
	.byte	0x8
	.byte	0x12
	.long	0xb4
	.uleb128 0x3
	.long	.LASF91
	.byte	0x8
	.byte	0x15
	.long	0xb4
	.uleb128 0xd
	.long	.LASF114
	.byte	0x8
	.byte	0x9
	.byte	0x8
	.long	0x32e
	.uleb128 0xc
	.long	.LASF93
	.byte	0x9
	.byte	0x9
	.long	0x32e
	.byte	0
	.uleb128 0xc
	.long	.LASF94
	.byte	0x9
	.byte	0xa
	.long	0x32e
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x309
	.uleb128 0x3
	.long	.LASF95
	.byte	0x9
	.byte	0xb
	.long	0x309
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x8
	.long	0x358
	.uleb128 0x9
	.long	.LASF96
	.byte	0
	.uleb128 0x9
	.long	.LASF97
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.long	.LASF98
	.byte	0xa
	.byte	0xb
	.long	0x33f
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0xd
	.long	0x38e
	.uleb128 0x9
	.long	.LASF99
	.byte	0
	.uleb128 0x9
	.long	.LASF100
	.byte	0x1
	.uleb128 0x9
	.long	.LASF101
	.byte	0x2
	.uleb128 0x9
	.long	.LASF102
	.byte	0x3
	.uleb128 0x9
	.long	.LASF103
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF104
	.byte	0xa
	.byte	0x13
	.long	0x363
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0xa
	.byte	0x15
	.long	0x3d6
	.uleb128 0x9
	.long	.LASF105
	.byte	0
	.uleb128 0x9
	.long	.LASF106
	.byte	0x1
	.uleb128 0x9
	.long	.LASF107
	.byte	0x2
	.uleb128 0x9
	.long	.LASF108
	.byte	0x3
	.uleb128 0x9
	.long	.LASF109
	.byte	0x4
	.uleb128 0x9
	.long	.LASF110
	.byte	0x5
	.uleb128 0x9
	.long	.LASF111
	.byte	0x6
	.uleb128 0x9
	.long	.LASF112
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF113
	.byte	0xa
	.byte	0x1e
	.long	0x399
	.uleb128 0xd
	.long	.LASF115
	.byte	0x14
	.byte	0xa
	.byte	0x20
	.long	0x41e
	.uleb128 0xc
	.long	.LASF116
	.byte	0xa
	.byte	0x21
	.long	0x334
	.byte	0
	.uleb128 0xc
	.long	.LASF117
	.byte	0xa
	.byte	0x22
	.long	0x41e
	.byte	0x8
	.uleb128 0xc
	.long	.LASF118
	.byte	0xa
	.byte	0x23
	.long	0x358
	.byte	0xc
	.uleb128 0xc
	.long	.LASF119
	.byte	0xa
	.byte	0x24
	.long	0x3d6
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x424
	.uleb128 0x7
	.long	0xda
	.uleb128 0x3
	.long	.LASF120
	.byte	0xa
	.byte	0x25
	.long	0x3e1
	.uleb128 0x6
	.byte	0x4
	.long	0x334
	.uleb128 0x8
	.byte	0x4
	.long	0x37
	.byte	0xb
	.byte	0x8
	.long	0x477
	.uleb128 0x9
	.long	.LASF121
	.byte	0
	.uleb128 0x9
	.long	.LASF122
	.byte	0x1
	.uleb128 0x9
	.long	.LASF123
	.byte	0x2
	.uleb128 0x9
	.long	.LASF124
	.byte	0x3
	.uleb128 0x9
	.long	.LASF125
	.byte	0x4
	.uleb128 0x9
	.long	.LASF126
	.byte	0x5
	.uleb128 0x9
	.long	.LASF127
	.byte	0x6
	.uleb128 0x9
	.long	.LASF128
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.long	.LASF129
	.byte	0xb
	.byte	0x11
	.long	0x43a
	.uleb128 0xb
	.byte	0x7c
	.byte	0xb
	.byte	0x15
	.long	0x5e7
	.uleb128 0xc
	.long	.LASF130
	.byte	0xb
	.byte	0x18
	.long	0xc6
	.byte	0
	.uleb128 0xc
	.long	.LASF131
	.byte	0xb
	.byte	0x1a
	.long	0x41e
	.byte	0x4
	.uleb128 0xc
	.long	.LASF132
	.byte	0xb
	.byte	0x1d
	.long	0x5e7
	.byte	0x8
	.uleb128 0xc
	.long	.LASF133
	.byte	0xb
	.byte	0x20
	.long	0x5f7
	.byte	0x10
	.uleb128 0xc
	.long	.LASF134
	.byte	0xb
	.byte	0x21
	.long	0xa9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF135
	.byte	0xb
	.byte	0x22
	.long	0x334
	.byte	0x18
	.uleb128 0xc
	.long	.LASF136
	.byte	0xb
	.byte	0x25
	.long	0x106
	.byte	0x20
	.uleb128 0xc
	.long	.LASF137
	.byte	0xb
	.byte	0x28
	.long	0x652
	.byte	0x24
	.uleb128 0xc
	.long	.LASF138
	.byte	0xb
	.byte	0x2b
	.long	0x334
	.byte	0x28
	.uleb128 0xc
	.long	.LASF139
	.byte	0xb
	.byte	0x2e
	.long	0x334
	.byte	0x30
	.uleb128 0xc
	.long	.LASF140
	.byte	0xb
	.byte	0x2f
	.long	0x2fe
	.byte	0x38
	.uleb128 0xc
	.long	.LASF141
	.byte	0xb
	.byte	0x30
	.long	0x2fe
	.byte	0x40
	.uleb128 0xc
	.long	.LASF142
	.byte	0xb
	.byte	0x31
	.long	0x434
	.byte	0x48
	.uleb128 0xe
	.string	"msg"
	.byte	0xb
	.byte	0x33
	.long	0xc6
	.byte	0x4c
	.uleb128 0xc
	.long	.LASF143
	.byte	0xb
	.byte	0x36
	.long	0x2c
	.byte	0x50
	.uleb128 0xc
	.long	.LASF144
	.byte	0xb
	.byte	0x39
	.long	0x477
	.byte	0x54
	.uleb128 0xc
	.long	.LASF145
	.byte	0xb
	.byte	0x3a
	.long	0x38e
	.byte	0x58
	.uleb128 0xc
	.long	.LASF115
	.byte	0xb
	.byte	0x3d
	.long	0x658
	.byte	0x5c
	.uleb128 0xc
	.long	.LASF146
	.byte	0xb
	.byte	0x40
	.long	0x6a7
	.byte	0x60
	.uleb128 0xc
	.long	.LASF147
	.byte	0xb
	.byte	0x56
	.long	0xa9
	.byte	0x64
	.uleb128 0xc
	.long	.LASF148
	.byte	0xb
	.byte	0x57
	.long	0xa9
	.byte	0x68
	.uleb128 0xc
	.long	.LASF149
	.byte	0xb
	.byte	0x5b
	.long	0xa9
	.byte	0x6c
	.uleb128 0xc
	.long	.LASF150
	.byte	0xb
	.byte	0x5c
	.long	0xc6
	.byte	0x70
	.uleb128 0xc
	.long	.LASF151
	.byte	0xb
	.byte	0x5d
	.long	0x9e
	.byte	0x74
	.uleb128 0xc
	.long	.LASF152
	.byte	0xb
	.byte	0x61
	.long	0x9e
	.byte	0x75
	.uleb128 0xc
	.long	.LASF153
	.byte	0xb
	.byte	0x64
	.long	0x9e
	.byte	0x76
	.uleb128 0xc
	.long	.LASF154
	.byte	0xb
	.byte	0x6c
	.long	0x9e
	.byte	0x77
	.uleb128 0xc
	.long	.LASF155
	.byte	0xb
	.byte	0x6e
	.long	0x9e
	.byte	0x78
	.uleb128 0xc
	.long	.LASF156
	.byte	0xb
	.byte	0x6f
	.long	0x9e
	.byte	0x79
	.byte	0
	.uleb128 0xf
	.long	0xc6
	.long	0x5f7
	.uleb128 0x10
	.long	0xbf
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xf0
	.uleb128 0xd
	.long	.LASF157
	.byte	0x2c
	.byte	0xc
	.byte	0x8
	.long	0x652
	.uleb128 0xc
	.long	.LASF115
	.byte	0xc
	.byte	0x9
	.long	0x429
	.byte	0
	.uleb128 0xc
	.long	.LASF158
	.byte	0xc
	.byte	0xa
	.long	0x7c2
	.byte	0x14
	.uleb128 0xc
	.long	.LASF137
	.byte	0xc
	.byte	0xb
	.long	0x652
	.byte	0x18
	.uleb128 0xc
	.long	.LASF159
	.byte	0xc
	.byte	0xc
	.long	0xfb
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF160
	.byte	0xc
	.byte	0xf
	.long	0x334
	.byte	0x20
	.uleb128 0xc
	.long	.LASF156
	.byte	0xc
	.byte	0x12
	.long	0x9e
	.byte	0x28
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x5fd
	.uleb128 0x6
	.byte	0x4
	.long	0x429
	.uleb128 0xd
	.long	.LASF161
	.byte	0x28
	.byte	0xd
	.byte	0xb
	.long	0x6a7
	.uleb128 0xc
	.long	.LASF115
	.byte	0xd
	.byte	0xc
	.long	0x429
	.byte	0
	.uleb128 0xc
	.long	.LASF162
	.byte	0xd
	.byte	0xd
	.long	0xe5
	.byte	0x14
	.uleb128 0xc
	.long	.LASF163
	.byte	0xd
	.byte	0xe
	.long	0xe5
	.byte	0x18
	.uleb128 0xc
	.long	.LASF164
	.byte	0xd
	.byte	0x10
	.long	0x334
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF156
	.byte	0xd
	.byte	0x12
	.long	0x9e
	.byte	0x24
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x65e
	.uleb128 0x3
	.long	.LASF165
	.byte	0xb
	.byte	0x70
	.long	0x482
	.uleb128 0x6
	.byte	0x4
	.long	0x6be
	.uleb128 0x11
	.long	0x6c9
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xb
	.byte	0x1c
	.byte	0xe
	.byte	0x21
	.long	0x726
	.uleb128 0xe
	.string	"buf"
	.byte	0xe
	.byte	0x22
	.long	0x726
	.byte	0
	.uleb128 0xe
	.string	"end"
	.byte	0xe
	.byte	0x23
	.long	0x726
	.byte	0x4
	.uleb128 0xc
	.long	.LASF166
	.byte	0xe
	.byte	0x24
	.long	0x726
	.byte	0x8
	.uleb128 0xc
	.long	.LASF167
	.byte	0xe
	.byte	0x25
	.long	0x726
	.byte	0xc
	.uleb128 0xc
	.long	.LASF168
	.byte	0xe
	.byte	0x26
	.long	0x2c
	.byte	0x10
	.uleb128 0xc
	.long	.LASF169
	.byte	0xe
	.byte	0x27
	.long	0x2c
	.byte	0x14
	.uleb128 0xc
	.long	.LASF170
	.byte	0xe
	.byte	0x28
	.long	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9e
	.uleb128 0x3
	.long	.LASF171
	.byte	0xe
	.byte	0x29
	.long	0x6c9
	.uleb128 0xb
	.byte	0x50
	.byte	0xf
	.byte	0x8
	.long	0x7ac
	.uleb128 0xc
	.long	.LASF115
	.byte	0xf
	.byte	0x9
	.long	0x429
	.byte	0
	.uleb128 0xe
	.string	"buf"
	.byte	0xf
	.byte	0xa
	.long	0xc6
	.byte	0x14
	.uleb128 0xc
	.long	.LASF172
	.byte	0xf
	.byte	0xb
	.long	0x72c
	.byte	0x18
	.uleb128 0xc
	.long	.LASF173
	.byte	0xf
	.byte	0xc
	.long	0x2c
	.byte	0x34
	.uleb128 0xc
	.long	.LASF174
	.byte	0xf
	.byte	0xd
	.long	0x2c
	.byte	0x38
	.uleb128 0xc
	.long	.LASF175
	.byte	0xf
	.byte	0xe
	.long	0x2c
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF176
	.byte	0xf
	.byte	0xf
	.long	0x2c
	.byte	0x40
	.uleb128 0xc
	.long	.LASF177
	.byte	0xf
	.byte	0x11
	.long	0x334
	.byte	0x44
	.uleb128 0xc
	.long	.LASF156
	.byte	0xf
	.byte	0x13
	.long	0x9e
	.byte	0x4c
	.byte	0
	.uleb128 0x3
	.long	.LASF178
	.byte	0xf
	.byte	0x14
	.long	0x737
	.uleb128 0x3
	.long	.LASF179
	.byte	0xd
	.byte	0x13
	.long	0x65e
	.uleb128 0x6
	.byte	0x4
	.long	0x6ad
	.uleb128 0x3
	.long	.LASF180
	.byte	0xc
	.byte	0x13
	.long	0x5fd
	.uleb128 0x3
	.long	.LASF181
	.byte	0x10
	.byte	0x13
	.long	0x7de
	.uleb128 0x6
	.byte	0x4
	.long	0x7e4
	.uleb128 0x11
	.long	0x7f4
	.uleb128 0x12
	.long	0xc6
	.uleb128 0x12
	.long	0xc6
	.byte	0
	.uleb128 0xb
	.byte	0x44
	.byte	0x10
	.byte	0x15
	.long	0x898
	.uleb128 0xc
	.long	.LASF182
	.byte	0x10
	.byte	0x16
	.long	0x334
	.byte	0
	.uleb128 0xc
	.long	.LASF183
	.byte	0x10
	.byte	0x17
	.long	0x434
	.byte	0x8
	.uleb128 0xc
	.long	.LASF117
	.byte	0x10
	.byte	0x18
	.long	0x41e
	.byte	0xc
	.uleb128 0xe
	.string	"cb"
	.byte	0x10
	.byte	0x19
	.long	0x7d3
	.byte	0x10
	.uleb128 0xc
	.long	.LASF184
	.byte	0x10
	.byte	0x1a
	.long	0xc6
	.byte	0x14
	.uleb128 0xc
	.long	.LASF185
	.byte	0x10
	.byte	0x1b
	.long	0x2f3
	.byte	0x18
	.uleb128 0xc
	.long	.LASF186
	.byte	0x10
	.byte	0x1c
	.long	0x2f3
	.byte	0x20
	.uleb128 0xc
	.long	.LASF187
	.byte	0x10
	.byte	0x1d
	.long	0x2f3
	.byte	0x28
	.uleb128 0xc
	.long	.LASF188
	.byte	0x10
	.byte	0x1e
	.long	0x2f3
	.byte	0x30
	.uleb128 0xc
	.long	.LASF189
	.byte	0x10
	.byte	0x1f
	.long	0xc6
	.byte	0x38
	.uleb128 0xc
	.long	.LASF119
	.byte	0x10
	.byte	0x20
	.long	0x3d6
	.byte	0x3c
	.uleb128 0xc
	.long	.LASF190
	.byte	0x10
	.byte	0x21
	.long	0x9e
	.byte	0x40
	.uleb128 0xc
	.long	.LASF156
	.byte	0x10
	.byte	0x22
	.long	0x9e
	.byte	0x41
	.byte	0
	.uleb128 0x3
	.long	.LASF191
	.byte	0x10
	.byte	0x23
	.long	0x7f4
	.uleb128 0x6
	.byte	0x4
	.long	0x898
	.uleb128 0xb
	.byte	0x24
	.byte	0x11
	.byte	0x8
	.long	0x8e2
	.uleb128 0xc
	.long	.LASF115
	.byte	0x11
	.byte	0x9
	.long	0x429
	.byte	0
	.uleb128 0xc
	.long	.LASF192
	.byte	0x11
	.byte	0xa
	.long	0xa9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF193
	.byte	0x11
	.byte	0xd
	.long	0x334
	.byte	0x18
	.uleb128 0xc
	.long	.LASF156
	.byte	0x11
	.byte	0x10
	.long	0x9e
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF194
	.byte	0x11
	.byte	0x11
	.long	0x8a9
	.uleb128 0xd
	.long	.LASF195
	.byte	0x8
	.byte	0x12
	.byte	0x4e
	.long	0x912
	.uleb128 0xc
	.long	.LASF94
	.byte	0x12
	.byte	0x4f
	.long	0x95b
	.byte	0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x12
	.byte	0x50
	.long	0x95b
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF196
	.byte	0x18
	.byte	0x12
	.byte	0x53
	.long	0x95b
	.uleb128 0xe
	.string	"dye"
	.byte	0x12
	.byte	0x55
	.long	0x2c
	.byte	0
	.uleb128 0xc
	.long	.LASF197
	.byte	0x12
	.byte	0x56
	.long	0x2c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF94
	.byte	0x12
	.byte	0x58
	.long	0x95b
	.byte	0x8
	.uleb128 0xc
	.long	.LASF198
	.byte	0x12
	.byte	0x5b
	.long	0x2c
	.byte	0xc
	.uleb128 0xc
	.long	.LASF199
	.byte	0x12
	.byte	0x5f
	.long	0x961
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x912
	.uleb128 0x13
	.byte	0x8
	.byte	0x12
	.byte	0x5c
	.long	0x980
	.uleb128 0x14
	.long	.LASF200
	.byte	0x12
	.byte	0x5d
	.long	0x8ed
	.uleb128 0x14
	.long	.LASF201
	.byte	0x12
	.byte	0x5e
	.long	0x980
	.byte	0
	.uleb128 0xf
	.long	0x9e
	.long	0x990
	.uleb128 0x10
	.long	0xbf
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF202
	.byte	0x12
	.byte	0x60
	.long	0x912
	.uleb128 0xd
	.long	.LASF203
	.byte	0x8
	.byte	0x12
	.byte	0x62
	.long	0x9c0
	.uleb128 0xe
	.string	"end"
	.byte	0x12
	.byte	0x63
	.long	0x9c0
	.byte	0
	.uleb128 0xc
	.long	.LASF93
	.byte	0x12
	.byte	0x64
	.long	0x9c6
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x990
	.uleb128 0x6
	.byte	0x4
	.long	0x99b
	.uleb128 0x3
	.long	.LASF204
	.byte	0x12
	.byte	0x65
	.long	0x99b
	.uleb128 0xb
	.byte	0x94
	.byte	0x12
	.byte	0x68
	.long	0xa4c
	.uleb128 0xc
	.long	.LASF205
	.byte	0x12
	.byte	0x6c
	.long	0x2e8
	.byte	0
	.uleb128 0xc
	.long	.LASF206
	.byte	0x12
	.byte	0x6e
	.long	0xa4c
	.byte	0x4
	.uleb128 0xc
	.long	.LASF207
	.byte	0x12
	.byte	0x70
	.long	0xc6
	.byte	0x8
	.uleb128 0xc
	.long	.LASF208
	.byte	0x12
	.byte	0x73
	.long	0x2c
	.byte	0xc
	.uleb128 0xc
	.long	.LASF209
	.byte	0x12
	.byte	0x74
	.long	0x2c
	.byte	0x10
	.uleb128 0xc
	.long	.LASF210
	.byte	0x12
	.byte	0x75
	.long	0x2c
	.byte	0x14
	.uleb128 0xc
	.long	.LASF211
	.byte	0x12
	.byte	0x77
	.long	0xa52
	.byte	0x18
	.uleb128 0xc
	.long	.LASF212
	.byte	0x12
	.byte	0x7a
	.long	0xa9
	.byte	0x54
	.uleb128 0xc
	.long	.LASF213
	.byte	0x12
	.byte	0x7d
	.long	0xa62
	.byte	0x58
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x9cc
	.uleb128 0xf
	.long	0x2c
	.long	0xa62
	.uleb128 0x10
	.long	0xbf
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.long	0x9c0
	.long	0xa72
	.uleb128 0x10
	.long	0xbf
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.long	.LASF214
	.byte	0x12
	.byte	0x7e
	.long	0x9d7
	.uleb128 0x3
	.long	.LASF215
	.byte	0x13
	.byte	0xb
	.long	0x6b8
	.uleb128 0xb
	.byte	0x24
	.byte	0x13
	.byte	0xd
	.long	0xae4
	.uleb128 0xc
	.long	.LASF216
	.byte	0x13
	.byte	0xe
	.long	0x334
	.byte	0
	.uleb128 0xc
	.long	.LASF217
	.byte	0x13
	.byte	0xf
	.long	0xa7d
	.byte	0x8
	.uleb128 0xe
	.string	"arg"
	.byte	0x13
	.byte	0x10
	.long	0xc6
	.byte	0xc
	.uleb128 0xe
	.string	"dly"
	.byte	0x13
	.byte	0x11
	.long	0x2fe
	.byte	0x10
	.uleb128 0xc
	.long	.LASF218
	.byte	0x13
	.byte	0x12
	.long	0x8a3
	.byte	0x18
	.uleb128 0xe
	.string	"wq"
	.byte	0x13
	.byte	0x13
	.long	0xc6
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF219
	.byte	0x13
	.byte	0x14
	.long	0x9e
	.byte	0x20
	.byte	0
	.uleb128 0x3
	.long	.LASF220
	.byte	0x13
	.byte	0x15
	.long	0xa88
	.uleb128 0xb
	.byte	0xbc
	.byte	0x13
	.byte	0x17
	.long	0xb40
	.uleb128 0xc
	.long	.LASF221
	.byte	0x13
	.byte	0x18
	.long	0x334
	.byte	0
	.uleb128 0xc
	.long	.LASF222
	.byte	0x13
	.byte	0x19
	.long	0x334
	.byte	0x8
	.uleb128 0xc
	.long	.LASF223
	.byte	0x13
	.byte	0x1a
	.long	0xb40
	.byte	0x10
	.uleb128 0xc
	.long	.LASF117
	.byte	0x13
	.byte	0x1b
	.long	0x41e
	.byte	0x14
	.uleb128 0xc
	.long	.LASF224
	.byte	0x13
	.byte	0x1c
	.long	0x6ad
	.byte	0x18
	.uleb128 0xe
	.string	"sem"
	.byte	0x13
	.byte	0x1d
	.long	0x7b7
	.byte	0x94
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xae4
	.uleb128 0x3
	.long	.LASF225
	.byte	0x13
	.byte	0x1e
	.long	0xaef
	.uleb128 0xb
	.byte	0x4
	.byte	0x14
	.byte	0x13
	.long	0xb66
	.uleb128 0xe
	.string	"hdl"
	.byte	0x14
	.byte	0x14
	.long	0xc6
	.byte	0
	.byte	0
	.uleb128 0x3
	.long	.LASF226
	.byte	0x14
	.byte	0x15
	.long	0xb51
	.uleb128 0x3
	.long	.LASF227
	.byte	0x14
	.byte	0x17
	.long	0xb66
	.uleb128 0x3
	.long	.LASF228
	.byte	0x14
	.byte	0x18
	.long	0xb66
	.uleb128 0x3
	.long	.LASF229
	.byte	0x14
	.byte	0x19
	.long	0xb66
	.uleb128 0x3
	.long	.LASF230
	.byte	0x14
	.byte	0x1a
	.long	0xb66
	.uleb128 0x3
	.long	.LASF231
	.byte	0x14
	.byte	0x1b
	.long	0xb66
	.uleb128 0x3
	.long	.LASF232
	.byte	0x14
	.byte	0x1c
	.long	0xb66
	.uleb128 0x3
	.long	.LASF233
	.byte	0x14
	.byte	0x1d
	.long	0xb66
	.uleb128 0xb
	.byte	0x8
	.byte	0x14
	.byte	0x1f
	.long	0xbdf
	.uleb128 0xe
	.string	"hdl"
	.byte	0x14
	.byte	0x20
	.long	0xc6
	.byte	0
	.uleb128 0xe
	.string	"stk"
	.byte	0x14
	.byte	0x21
	.long	0xc6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.long	.LASF234
	.byte	0x14
	.byte	0x22
	.long	0xbbe
	.uleb128 0x3
	.long	.LASF235
	.byte	0x14
	.byte	0x24
	.long	0x37
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.long	.LASF236
	.uleb128 0x15
	.long	.LASF353
	.byte	0x1
	.value	0x301
	.long	0xc6
	.byte	0x1
	.long	0xc26
	.uleb128 0x16
	.long	.LASF266
	.byte	0x1
	.value	0x301
	.long	0x37
	.uleb128 0x17
	.string	"tmp"
	.byte	0x1
	.value	0x303
	.long	0xc6
	.byte	0
	.uleb128 0x18
	.long	.LASF243
	.byte	0x1
	.byte	0x13
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0xc45
	.uleb128 0x19
	.long	.LVL0
	.long	0x1c68
	.byte	0
	.uleb128 0x1a
	.long	.LASF237
	.byte	0x1
	.byte	0x18
	.long	0x25
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1a
	.long	.LASF238
	.byte	0x1
	.byte	0x1d
	.long	0xcf
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.long	.LASF240
	.byte	0x1
	.byte	0x23
	.long	0x25
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xcef
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.byte	0x23
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"fn"
	.byte	0x1
	.byte	0x23
	.long	0x6b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x23
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x1
	.byte	0x24
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x26
	.long	0x25
	.long	.LLST0
	.uleb128 0x1f
	.long	.LASF239
	.byte	0x1
	.byte	0x28
	.long	0x7c2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LVL2
	.long	0x1c73
	.uleb128 0x20
	.long	.LVL5
	.long	0x1c7e
	.byte	0
	.uleb128 0x1b
	.long	.LASF241
	.byte	0x1
	.byte	0x33
	.long	0x25
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xd74
	.uleb128 0x1c
	.long	.LASF242
	.byte	0x1
	.byte	0x33
	.long	0xd74
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF117
	.byte	0x1
	.byte	0x33
	.long	0xcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.string	"fn"
	.byte	0x1
	.byte	0x33
	.long	0x6b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x33
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x1c
	.long	.LASF134
	.byte	0x1
	.byte	0x34
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1c
	.long	.LASF154
	.byte	0x1
	.byte	0x34
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x36
	.long	0x25
	.long	.LLST1
	.uleb128 0x20
	.long	.LVL7
	.long	0x1c73
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb71
	.uleb128 0x18
	.long	.LASF244
	.byte	0x1
	.byte	0x40
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xdaf
	.uleb128 0x21
	.long	.LASF245
	.byte	0x1
	.byte	0x40
	.long	0x25
	.long	.LLST2
	.uleb128 0x22
	.long	.LVL12
	.long	0x1c87
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF246
	.byte	0x1
	.byte	0x48
	.long	0xcf
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xdd2
	.uleb128 0x20
	.long	.LVL13
	.long	0x1c92
	.byte	0
	.uleb128 0x1b
	.long	.LASF247
	.byte	0x1
	.byte	0x4d
	.long	0x25
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xe07
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x4d
	.long	0xe07
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"i"
	.byte	0x1
	.byte	0x4f
	.long	0x25
	.long	.LLST3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbea
	.uleb128 0x18
	.long	.LASF248
	.byte	0x1
	.byte	0x5d
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xe31
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x5d
	.long	0xbea
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.long	.LASF249
	.byte	0x1
	.byte	0x67
	.long	0x25
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0xe87
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x67
	.long	0xbea
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1d
	.string	"vp"
	.byte	0x1
	.byte	0x67
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.long	0x25
	.long	.LLST4
	.uleb128 0x20
	.long	.LVL20
	.long	0x1c92
	.uleb128 0x20
	.long	.LVL21
	.long	0x1c9d
	.byte	0
	.uleb128 0x1b
	.long	.LASF250
	.byte	0x1
	.byte	0x72
	.long	0xc6
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0xed7
	.uleb128 0x1d
	.string	"key"
	.byte	0x1
	.byte	0x72
	.long	0xbea
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x24
	.string	"vp"
	.byte	0x1
	.byte	0x74
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x20
	.long	.LVL25
	.long	0x1c92
	.uleb128 0x20
	.long	.LVL26
	.long	0x1ca9
	.uleb128 0x20
	.long	.LVL27
	.long	0x1c7e
	.byte	0
	.uleb128 0x1b
	.long	.LASF251
	.byte	0x1
	.byte	0xa3
	.long	0x25
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xf2e
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x1
	.byte	0xa3
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF253
	.byte	0x1
	.byte	0xa3
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xa5
	.long	0x2c8
	.long	.LLST5
	.uleb128 0x20
	.long	.LVL29
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL30
	.long	0x1cc0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb7c
	.uleb128 0x1b
	.long	.LASF254
	.byte	0x1
	.byte	0xbd
	.long	0x25
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0xf74
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x1
	.byte	0xbd
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xbf
	.long	0x2c8
	.long	.LLST6
	.uleb128 0x20
	.long	.LVL33
	.long	0x1ccb
	.byte	0
	.uleb128 0x25
	.long	.LASF255
	.byte	0x1
	.value	0x10b
	.long	0x25
	.long	.LFB46
	.long	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0xfcf
	.uleb128 0x26
	.string	"sem"
	.byte	0x1
	.value	0x10b
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF253
	.byte	0x1
	.value	0x10b
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x10d
	.long	0x2c8
	.long	.LLST7
	.uleb128 0x20
	.long	.LVL47
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL48
	.long	0x1cd6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb87
	.uleb128 0x29
	.long	.LASF256
	.byte	0x1
	.value	0x120
	.long	.LFB47
	.long	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x1005
	.uleb128 0x2a
	.string	"sem"
	.byte	0x1
	.value	0x120
	.long	0xfcf
	.long	.LLST8
	.uleb128 0x19
	.long	.LVL52
	.long	0x1ce1
	.byte	0
	.uleb128 0x29
	.long	.LASF257
	.byte	0x1
	.value	0x13a
	.long	.LFB49
	.long	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x1035
	.uleb128 0x2a
	.string	"sem"
	.byte	0x1
	.value	0x13a
	.long	0xfcf
	.long	.LLST9
	.uleb128 0x19
	.long	.LVL55
	.long	0x1cec
	.byte	0
	.uleb128 0x25
	.long	.LASF258
	.byte	0x1
	.value	0x147
	.long	0x25
	.long	.LFB50
	.long	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x1087
	.uleb128 0x27
	.long	.LASF259
	.byte	0x1
	.value	0x147
	.long	0x1087
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF192
	.byte	0x1
	.value	0x147
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x149
	.long	0x25
	.long	.LLST10
	.uleb128 0x20
	.long	.LVL57
	.long	0x1cf7
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbb3
	.uleb128 0x29
	.long	.LASF260
	.byte	0x1
	.value	0x152
	.long	.LFB51
	.long	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x10bc
	.uleb128 0x27
	.long	.LASF259
	.byte	0x1
	.value	0x152
	.long	0x1087
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL61
	.long	0x1d02
	.byte	0
	.uleb128 0x25
	.long	.LASF261
	.byte	0x1
	.value	0x15d
	.long	0x25
	.long	.LFB52
	.long	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x1144
	.uleb128 0x27
	.long	.LASF259
	.byte	0x1
	.value	0x15f
	.long	0x1087
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF192
	.byte	0x1
	.value	0x160
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"opt"
	.byte	0x1
	.value	0x161
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF262
	.byte	0x1
	.value	0x162
	.long	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF253
	.byte	0x1
	.value	0x163
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x166
	.long	0x2c8
	.long	.LLST11
	.uleb128 0x20
	.long	.LVL63
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL64
	.long	0x1d0d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x37
	.uleb128 0x25
	.long	.LASF263
	.byte	0x1
	.value	0x179
	.long	0x25
	.long	.LFB53
	.long	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x11ab
	.uleb128 0x27
	.long	.LASF259
	.byte	0x1
	.value	0x179
	.long	0x1087
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF192
	.byte	0x1
	.value	0x179
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"opt"
	.byte	0x1
	.value	0x179
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x17b
	.long	0x2c8
	.long	.LLST12
	.uleb128 0x20
	.long	.LVL67
	.long	0x1d18
	.byte	0
	.uleb128 0x25
	.long	.LASF264
	.byte	0x1
	.value	0x1b3
	.long	0x25
	.long	.LFB56
	.long	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x120c
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x1b3
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"msg"
	.byte	0x1
	.value	0x1b3
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x1b3
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x1b5
	.long	0x25
	.long	.LLST13
	.uleb128 0x20
	.long	.LVL72
	.long	0x1d23
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb92
	.uleb128 0x25
	.long	.LASF267
	.byte	0x1
	.value	0x1c3
	.long	0x25
	.long	.LFB57
	.long	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x128a
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x1c3
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.value	0x1c3
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"msg"
	.byte	0x1
	.value	0x1c3
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x1c4
	.long	0x1144
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x1c6
	.long	0x25
	.long	.LLST14
	.uleb128 0x20
	.long	.LVL79
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL80
	.long	0x1d2e
	.byte	0
	.uleb128 0x25
	.long	.LASF268
	.byte	0x1
	.value	0x1d4
	.long	0x25
	.long	.LFB58
	.long	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x12c4
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x1d4
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF269
	.byte	0x1
	.value	0x1d6
	.long	0x12c4
	.long	.LLST15
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7ac
	.uleb128 0x25
	.long	.LASF270
	.byte	0x1
	.value	0x1e5
	.long	0xc6
	.long	.LFB59
	.long	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x12fd
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x1e5
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL88
	.long	0x128a
	.byte	0
	.uleb128 0x25
	.long	.LASF271
	.byte	0x1
	.value	0x1f0
	.long	0x25
	.long	.LFB60
	.long	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x1395
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x1f0
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"fn"
	.byte	0x1
	.value	0x1f0
	.long	0x7de
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x1f1
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.value	0x1f1
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF272
	.byte	0x1
	.value	0x1f1
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x1f3
	.long	0x2c8
	.long	.LLST16
	.uleb128 0x20
	.long	.LVL90
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL91
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL92
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL93
	.long	0x1d39
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb9d
	.uleb128 0x25
	.long	.LASF273
	.byte	0x1
	.value	0x207
	.long	0x25
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x1442
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x207
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"fn"
	.byte	0x1
	.value	0x207
	.long	0x7de
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x208
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.value	0x208
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x27
	.long	.LASF272
	.byte	0x1
	.value	0x208
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x27
	.long	.LASF274
	.byte	0x1
	.value	0x208
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x20a
	.long	0x2c8
	.long	.LLST17
	.uleb128 0x20
	.long	.LVL96
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL97
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL98
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL99
	.long	0x1d39
	.byte	0
	.uleb128 0x29
	.long	.LASF275
	.byte	0x1
	.value	0x21e
	.long	.LFB62
	.long	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x1471
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x21e
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL102
	.long	0x1d44
	.byte	0
	.uleb128 0x25
	.long	.LASF276
	.byte	0x1
	.value	0x228
	.long	0x25
	.long	.LFB63
	.long	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b4
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x228
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x22a
	.long	0x25
	.long	.LLST18
	.uleb128 0x20
	.long	.LVL104
	.long	0x1d4f
	.byte	0
	.uleb128 0x25
	.long	.LASF277
	.byte	0x1
	.value	0x238
	.long	0x25
	.long	.LFB64
	.long	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x14f7
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x238
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x23a
	.long	0x25
	.long	.LLST19
	.uleb128 0x20
	.long	.LVL109
	.long	0x1d5a
	.byte	0
	.uleb128 0x25
	.long	.LASF278
	.byte	0x1
	.value	0x248
	.long	0x25
	.long	.LFB65
	.long	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x155a
	.uleb128 0x27
	.long	.LASF218
	.byte	0x1
	.value	0x248
	.long	0x1395
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.value	0x248
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x24a
	.long	0x25
	.long	.LLST20
	.uleb128 0x20
	.long	.LVL114
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL115
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL116
	.long	0x1d65
	.byte	0
	.uleb128 0x25
	.long	.LASF279
	.byte	0x1
	.value	0x2ae
	.long	0x25
	.long	.LFB69
	.long	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x15ac
	.uleb128 0x27
	.long	.LASF280
	.byte	0x1
	.value	0x2ae
	.long	0x15ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF281
	.byte	0x1
	.value	0x2ae
	.long	0x15b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2b0
	.long	0x25
	.long	.LLST21
	.uleb128 0x20
	.long	.LVL121
	.long	0x1d70
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xbdf
	.uleb128 0x6
	.byte	0x4
	.long	0xba8
	.uleb128 0x25
	.long	.LASF282
	.byte	0x1
	.value	0x2be
	.long	0x25
	.long	.LFB70
	.long	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x15fb
	.uleb128 0x27
	.long	.LASF281
	.byte	0x1
	.value	0x2be
	.long	0x15b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2c0
	.long	0x25
	.long	.LLST22
	.uleb128 0x20
	.long	.LVL128
	.long	0x1d7b
	.byte	0
	.uleb128 0x25
	.long	.LASF283
	.byte	0x1
	.value	0x2ce
	.long	0x25
	.long	.LFB71
	.long	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x163e
	.uleb128 0x27
	.long	.LASF281
	.byte	0x1
	.value	0x2ce
	.long	0x15b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x2d0
	.long	0x25
	.long	.LLST23
	.uleb128 0x20
	.long	.LVL133
	.long	0x1d86
	.byte	0
	.uleb128 0x25
	.long	.LASF284
	.byte	0x1
	.value	0x2e0
	.long	0xc6
	.long	.LFB72
	.long	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x1693
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x2e0
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x2e2
	.long	0xc6
	.long	.LLST24
	.uleb128 0x20
	.long	.LVL136
	.long	0x1d91
	.uleb128 0x20
	.long	.LVL138
	.long	0x1d9c
	.uleb128 0x20
	.long	.LVL140
	.long	0x1d91
	.byte	0
	.uleb128 0x2c
	.long	0xbfc
	.long	.LFB73
	.long	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x16fb
	.uleb128 0x2d
	.long	0xc0d
	.long	.LLST25
	.uleb128 0x2e
	.long	0xc19
	.byte	0
	.uleb128 0x2f
	.long	.LBB4
	.long	.LBE4-.LBB4
	.long	0x16f1
	.uleb128 0x2d
	.long	0xc0d
	.long	.LLST26
	.uleb128 0x30
	.long	.LBB5
	.long	.LBE5-.LBB5
	.uleb128 0x31
	.long	0xc19
	.long	.LLST27
	.uleb128 0x20
	.long	.LVL146
	.long	0x1d91
	.uleb128 0x20
	.long	.LVL148
	.long	0x1d9c
	.byte	0
	.byte	0
	.uleb128 0x19
	.long	.LVL150
	.long	0x1d91
	.byte	0
	.uleb128 0x25
	.long	.LASF285
	.byte	0x1
	.value	0x31f
	.long	0xc6
	.long	.LFB74
	.long	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x175f
	.uleb128 0x26
	.string	"mem"
	.byte	0x1
	.value	0x31f
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x31f
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"tmp"
	.byte	0x1
	.value	0x321
	.long	0xc6
	.long	.LLST28
	.uleb128 0x19
	.long	.LVL152
	.long	0x1da7
	.uleb128 0x20
	.long	.LVL153
	.long	0x1da7
	.uleb128 0x20
	.long	.LVL154
	.long	0x1d9c
	.byte	0
	.uleb128 0x29
	.long	.LASF286
	.byte	0x1
	.value	0x339
	.long	.LFB75
	.long	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x179d
	.uleb128 0x27
	.long	.LASF287
	.byte	0x1
	.value	0x339
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF288
	.byte	0x1
	.value	0x339
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x20
	.long	.LVL157
	.long	0x1d9c
	.byte	0
	.uleb128 0x29
	.long	.LASF289
	.byte	0x1
	.value	0x340
	.long	.LFB76
	.long	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x17d6
	.uleb128 0x2a
	.string	"mem"
	.byte	0x1
	.value	0x340
	.long	0xc6
	.long	.LLST29
	.uleb128 0x22
	.long	.LVL159
	.long	0x1db2
	.uleb128 0x23
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LASF290
	.byte	0x1
	.byte	0x7d
	.long	0x25
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x1835
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x1
	.byte	0x7d
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x7f
	.long	0x2c8
	.long	.LLST30
	.uleb128 0x1e
	.string	"m"
	.byte	0x1
	.byte	0x80
	.long	0x1835
	.long	.LLST31
	.uleb128 0x20
	.long	.LVL161
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL164
	.long	0x1dbd
	.uleb128 0x20
	.long	.LVL166
	.long	0x179d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7c8
	.uleb128 0x18
	.long	.LASF291
	.byte	0x1
	.byte	0x96
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x1871
	.uleb128 0x1c
	.long	.LASF252
	.byte	0x1
	.byte	0x96
	.long	0xf2e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL171
	.long	0x1dc8
	.uleb128 0x20
	.long	.LVL172
	.long	0x179d
	.byte	0
	.uleb128 0x1b
	.long	.LASF292
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.long	.LFB44
	.long	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x18de
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0xe5
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	.LASF162
	.byte	0x1
	.byte	0xe5
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.long	0x2c8
	.long	.LLST32
	.uleb128 0x1e
	.string	"s"
	.byte	0x1
	.byte	0xe8
	.long	0x18de
	.long	.LLST33
	.uleb128 0x20
	.long	.LVL174
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL177
	.long	0x1dd3
	.uleb128 0x20
	.long	.LVL179
	.long	0x179d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x7b7
	.uleb128 0x18
	.long	.LASF293
	.byte	0x1
	.byte	0xfe
	.long	.LFB45
	.long	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x191a
	.uleb128 0x1d
	.string	"sem"
	.byte	0x1
	.byte	0xfe
	.long	0xfcf
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL184
	.long	0x1dde
	.uleb128 0x20
	.long	.LVL185
	.long	0x179d
	.byte	0
	.uleb128 0x25
	.long	.LASF294
	.byte	0x1
	.value	0x18d
	.long	0x25
	.long	.LFB54
	.long	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x19aa
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x18d
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"buf"
	.byte	0x1
	.value	0x18d
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF266
	.byte	0x1
	.value	0x18d
	.long	0x37
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.long	.LASF295
	.byte	0x1
	.value	0x18d
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x18f
	.long	0x2c8
	.long	.LLST34
	.uleb128 0x28
	.string	"q"
	.byte	0x1
	.value	0x190
	.long	0x12c4
	.long	.LLST35
	.uleb128 0x20
	.long	.LVL187
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL190
	.long	0x1de9
	.uleb128 0x20
	.long	.LVL192
	.long	0x179d
	.byte	0
	.uleb128 0x29
	.long	.LASF296
	.byte	0x1
	.value	0x1a6
	.long	.LFB55
	.long	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e2
	.uleb128 0x27
	.long	.LASF265
	.byte	0x1
	.value	0x1a6
	.long	0x120c
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL199
	.long	0x1df4
	.uleb128 0x20
	.long	.LVL200
	.long	0x179d
	.byte	0
	.uleb128 0x25
	.long	.LASF297
	.byte	0x1
	.value	0x25a
	.long	0x25
	.long	.LFB66
	.long	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a8f
	.uleb128 0x27
	.long	.LASF280
	.byte	0x1
	.value	0x25a
	.long	0x15ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"pri"
	.byte	0x1
	.value	0x25a
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.long	.LASF134
	.byte	0x1
	.value	0x25a
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x25c
	.long	0x2c8
	.long	.LLST36
	.uleb128 0x28
	.string	"stk"
	.byte	0x1
	.value	0x25e
	.long	0x5f7
	.long	.LLST37
	.uleb128 0x28
	.string	"wq"
	.byte	0x1
	.value	0x25f
	.long	0x1a8f
	.long	.LLST38
	.uleb128 0x20
	.long	.LVL202
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL205
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL207
	.long	0x179d
	.uleb128 0x20
	.long	.LVL210
	.long	0x1dff
	.uleb128 0x20
	.long	.LVL212
	.long	0x179d
	.uleb128 0x20
	.long	.LVL213
	.long	0x179d
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xb46
	.uleb128 0x25
	.long	.LASF298
	.byte	0x1
	.value	0x282
	.long	0x25
	.long	.LFB67
	.long	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2d
	.uleb128 0x27
	.long	.LASF281
	.byte	0x1
	.value	0x282
	.long	0x15b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.string	"fn"
	.byte	0x1
	.value	0x282
	.long	0x6b8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.string	"arg"
	.byte	0x1
	.value	0x282
	.long	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x26
	.string	"dly"
	.byte	0x1
	.value	0x282
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x28
	.string	"ret"
	.byte	0x1
	.value	0x284
	.long	0x2c8
	.long	.LLST39
	.uleb128 0x28
	.string	"w"
	.byte	0x1
	.value	0x285
	.long	0xb40
	.long	.LLST40
	.uleb128 0x20
	.long	.LVL218
	.long	0xbfc
	.uleb128 0x20
	.long	.LVL221
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL222
	.long	0x1e0a
	.uleb128 0x20
	.long	.LVL224
	.long	0x179d
	.byte	0
	.uleb128 0x29
	.long	.LASF299
	.byte	0x1
	.value	0x29b
	.long	.LFB68
	.long	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b7c
	.uleb128 0x27
	.long	.LASF281
	.byte	0x1
	.value	0x29b
	.long	0x15b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"w"
	.byte	0x1
	.value	0x29d
	.long	0xb40
	.long	.LLST41
	.uleb128 0x20
	.long	.LVL230
	.long	0x1d5a
	.uleb128 0x20
	.long	.LVL231
	.long	0x1d44
	.uleb128 0x20
	.long	.LVL232
	.long	0x179d
	.byte	0
	.uleb128 0x25
	.long	.LASF300
	.byte	0x1
	.value	0x34a
	.long	0x3e
	.long	.LFB77
	.long	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ba0
	.uleb128 0x20
	.long	.LVL234
	.long	0x1e15
	.byte	0
	.uleb128 0x25
	.long	.LASF301
	.byte	0x1
	.value	0x34f
	.long	0x3e
	.long	.LFB78
	.long	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bc4
	.uleb128 0x19
	.long	.LVL235
	.long	0x1e15
	.byte	0
	.uleb128 0x29
	.long	.LASF302
	.byte	0x1
	.value	0x354
	.long	.LFB79
	.long	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bfb
	.uleb128 0x26
	.string	"ms"
	.byte	0x1
	.value	0x354
	.long	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x20
	.long	.LVL237
	.long	0x1cb5
	.uleb128 0x20
	.long	.LVL238
	.long	0x1e20
	.byte	0
	.uleb128 0x29
	.long	.LASF303
	.byte	0x1
	.value	0x359
	.long	.LFB80
	.long	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c1b
	.uleb128 0x19
	.long	.LVL239
	.long	0x1e2b
	.byte	0
	.uleb128 0x29
	.long	.LASF304
	.byte	0x1
	.value	0x35e
	.long	.LFB81
	.long	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c3b
	.uleb128 0x19
	.long	.LVL240
	.long	0x1e36
	.byte	0
	.uleb128 0x1f
	.long	.LASF305
	.byte	0x1
	.byte	0x10
	.long	0x37
	.uleb128 0x5
	.byte	0x3
	.long	used_bitmap
	.uleb128 0x32
	.long	.LASF306
	.byte	0x15
	.byte	0x58
	.long	0x1c57
	.uleb128 0x6
	.byte	0x4
	.long	0xa72
	.uleb128 0x32
	.long	.LASF307
	.byte	0x16
	.byte	0x17
	.long	0x37
	.uleb128 0x33
	.long	.LASF308
	.long	.LASF308
	.byte	0x1
	.byte	0x12
	.uleb128 0x33
	.long	.LASF309
	.long	.LASF309
	.byte	0xb
	.byte	0x9d
	.uleb128 0x34
	.long	.LASF354
	.long	.LASF354
	.uleb128 0x33
	.long	.LASF310
	.long	.LASF310
	.byte	0xb
	.byte	0xb6
	.uleb128 0x33
	.long	.LASF311
	.long	.LASF311
	.byte	0xb
	.byte	0xcc
	.uleb128 0x35
	.long	.LASF312
	.long	.LASF312
	.byte	0xb
	.value	0x122
	.uleb128 0x35
	.long	.LASF313
	.long	.LASF313
	.byte	0xb
	.value	0x12a
	.uleb128 0x33
	.long	.LASF314
	.long	.LASF314
	.byte	0x17
	.byte	0x1f
	.uleb128 0x33
	.long	.LASF315
	.long	.LASF315
	.byte	0xc
	.byte	0x3b
	.uleb128 0x33
	.long	.LASF316
	.long	.LASF316
	.byte	0xc
	.byte	0x42
	.uleb128 0x33
	.long	.LASF317
	.long	.LASF317
	.byte	0xd
	.byte	0x4c
	.uleb128 0x33
	.long	.LASF318
	.long	.LASF318
	.byte	0xd
	.byte	0x3d
	.uleb128 0x33
	.long	.LASF319
	.long	.LASF319
	.byte	0xd
	.byte	0x44
	.uleb128 0x33
	.long	.LASF320
	.long	.LASF320
	.byte	0x11
	.byte	0x33
	.uleb128 0x33
	.long	.LASF321
	.long	.LASF321
	.byte	0x11
	.byte	0x3b
	.uleb128 0x33
	.long	.LASF322
	.long	.LASF322
	.byte	0x11
	.byte	0x47
	.uleb128 0x33
	.long	.LASF323
	.long	.LASF323
	.byte	0x11
	.byte	0x51
	.uleb128 0x33
	.long	.LASF324
	.long	.LASF324
	.byte	0xf
	.byte	0x5a
	.uleb128 0x33
	.long	.LASF325
	.long	.LASF325
	.byte	0xf
	.byte	0x65
	.uleb128 0x33
	.long	.LASF326
	.long	.LASF326
	.byte	0x10
	.byte	0x55
	.uleb128 0x33
	.long	.LASF327
	.long	.LASF327
	.byte	0x10
	.byte	0x5d
	.uleb128 0x33
	.long	.LASF328
	.long	.LASF328
	.byte	0x10
	.byte	0x65
	.uleb128 0x33
	.long	.LASF329
	.long	.LASF329
	.byte	0x10
	.byte	0x6c
	.uleb128 0x33
	.long	.LASF330
	.long	.LASF330
	.byte	0x10
	.byte	0x75
	.uleb128 0x33
	.long	.LASF331
	.long	.LASF331
	.byte	0x13
	.byte	0x3d
	.uleb128 0x33
	.long	.LASF332
	.long	.LASF332
	.byte	0x13
	.byte	0x44
	.uleb128 0x33
	.long	.LASF333
	.long	.LASF333
	.byte	0x13
	.byte	0x4b
	.uleb128 0x33
	.long	.LASF334
	.long	.LASF334
	.byte	0x12
	.byte	0x8d
	.uleb128 0x33
	.long	.LASF335
	.long	.LASF335
	.byte	0x18
	.byte	0x17
	.uleb128 0x33
	.long	.LASF336
	.long	.LASF336
	.byte	0x12
	.byte	0x9b
	.uleb128 0x33
	.long	.LASF337
	.long	.LASF337
	.byte	0x12
	.byte	0x93
	.uleb128 0x33
	.long	.LASF338
	.long	.LASF338
	.byte	0xc
	.byte	0x1b
	.uleb128 0x33
	.long	.LASF339
	.long	.LASF339
	.byte	0xc
	.byte	0x22
	.uleb128 0x33
	.long	.LASF340
	.long	.LASF340
	.byte	0xd
	.byte	0x1c
	.uleb128 0x33
	.long	.LASF341
	.long	.LASF341
	.byte	0xd
	.byte	0x23
	.uleb128 0x33
	.long	.LASF342
	.long	.LASF342
	.byte	0xf
	.byte	0x28
	.uleb128 0x33
	.long	.LASF343
	.long	.LASF343
	.byte	0xf
	.byte	0x3d
	.uleb128 0x33
	.long	.LASF344
	.long	.LASF344
	.byte	0x13
	.byte	0x29
	.uleb128 0x33
	.long	.LASF345
	.long	.LASF345
	.byte	0x13
	.byte	0x34
	.uleb128 0x33
	.long	.LASF346
	.long	.LASF346
	.byte	0x17
	.byte	0x12
	.uleb128 0x33
	.long	.LASF347
	.long	.LASF347
	.byte	0xb
	.byte	0xc0
	.uleb128 0x33
	.long	.LASF348
	.long	.LASF348
	.byte	0x8
	.byte	0x24
	.uleb128 0x33
	.long	.LASF349
	.long	.LASF349
	.byte	0x8
	.byte	0x2a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1e
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL5-1
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LFE31
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LFE32
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL10
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL14
	.long	.LVL15
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL15
	.long	.LVL16
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL22
	.long	.LVL23
	.value	0x1
	.byte	0x50
	.long	.LVL23
	.long	.LFE37
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL34
	.long	.LVL35
	.value	0x1
	.byte	0x50
	.long	.LVL35
	.long	.LVL36
	.value	0x1
	.byte	0x52
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x52
	.long	.LVL38
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x52
	.long	.LVL40
	.long	.LVL41
	.value	0x1
	.byte	0x50
	.long	.LVL41
	.long	.LVL42
	.value	0x1
	.byte	0x52
	.long	.LVL42
	.long	.LVL43
	.value	0x1
	.byte	0x50
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x52
	.long	.LVL44
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL50
	.long	.LVL51
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL52
	.long	.LFE47
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL53
	.long	.LVL54
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL55
	.long	.LFE49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x50
	.long	.LVL59
	.long	.LFE50
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST11:
	.long	.LVL64
	.long	.LVL65
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL68
	.long	.LVL69
	.value	0x1
	.byte	0x50
	.long	.LVL69
	.long	.LVL70
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST13:
	.long	.LVL73
	.long	.LVL74
	.value	0x1
	.byte	0x50
	.long	.LVL74
	.long	.LVL75
	.value	0x1
	.byte	0x52
	.long	.LVL76
	.long	.LVL77
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST14:
	.long	.LVL81
	.long	.LVL82
	.value	0x1
	.byte	0x50
	.long	.LVL82
	.long	.LVL83
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST15:
	.long	.LVL85
	.long	.LVL86
	.value	0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.long	0
	.long	0
.LLST16:
	.long	.LVL93
	.long	.LVL94
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL99
	.long	.LVL100
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL105
	.long	.LVL106
	.value	0x1
	.byte	0x50
	.long	.LVL106
	.long	.LVL107
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST19:
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x50
	.long	.LVL111
	.long	.LVL112
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST20:
	.long	.LVL117
	.long	.LVL118
	.value	0x1
	.byte	0x50
	.long	.LVL118
	.long	.LVL119
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST21:
	.long	.LVL122
	.long	.LVL123
	.value	0x1
	.byte	0x50
	.long	.LVL123
	.long	.LVL124
	.value	0x1
	.byte	0x52
	.long	.LVL125
	.long	.LVL126
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST22:
	.long	.LVL129
	.long	.LVL130
	.value	0x1
	.byte	0x50
	.long	.LVL130
	.long	.LVL131
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST23:
	.long	.LVL133
	.long	.LVL134
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST24:
	.long	.LVL135
	.long	.LVL137
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL137
	.long	.LVL138-1
	.value	0x1
	.byte	0x50
	.long	.LVL138-1
	.long	.LVL139
	.value	0x1
	.byte	0x53
	.long	.LVL139
	.long	.LVL141
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL141
	.long	.LVL142
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST25:
	.long	.LVL143
	.long	.LVL149
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL150
	.long	.LFE73
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL144
	.long	.LVL145
	.value	0x1
	.byte	0x50
	.long	.LVL145
	.long	.LVL148
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST27:
	.long	.LVL147
	.long	.LVL148-1
	.value	0x1
	.byte	0x50
	.long	.LVL148-1
	.long	.LVL148
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST28:
	.long	.LVL151
	.long	.LVL153
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL153
	.long	.LVL154-1
	.value	0x1
	.byte	0x50
	.long	.LVL154-1
	.long	.LVL155
	.value	0x2
	.byte	0x91
	.sleb128 -20
	.long	.LVL155
	.long	.LFE74
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST29:
	.long	.LVL158
	.long	.LVL159
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL159
	.long	.LFE76
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST30:
	.long	.LVL165
	.long	.LVL166-1
	.value	0x1
	.byte	0x50
	.long	.LVL166-1
	.long	.LVL167
	.value	0x1
	.byte	0x53
	.long	.LVL167
	.long	.LVL168
	.value	0x1
	.byte	0x50
	.long	.LVL168
	.long	.LVL169
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL162
	.long	.LVL163
	.value	0x1
	.byte	0x50
	.long	.LVL163
	.long	.LVL169
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST32:
	.long	.LVL178
	.long	.LVL179-1
	.value	0x1
	.byte	0x50
	.long	.LVL179-1
	.long	.LVL180
	.value	0x1
	.byte	0x53
	.long	.LVL180
	.long	.LVL181
	.value	0x1
	.byte	0x50
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST33:
	.long	.LVL175
	.long	.LVL176
	.value	0x1
	.byte	0x50
	.long	.LVL176
	.long	.LVL182
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST34:
	.long	.LVL191
	.long	.LVL192-1
	.value	0x1
	.byte	0x50
	.long	.LVL192-1
	.long	.LVL193
	.value	0x1
	.byte	0x53
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x50
	.long	.LVL194
	.long	.LVL195
	.value	0x1
	.byte	0x53
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST35:
	.long	.LVL188
	.long	.LVL189
	.value	0x1
	.byte	0x50
	.long	.LVL189
	.long	.LVL195
	.value	0x1
	.byte	0x57
	.long	.LVL196
	.long	.LVL197
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST36:
	.long	.LVL211
	.long	.LVL212-1
	.value	0x1
	.byte	0x50
	.long	.LVL212-1
	.long	.LVL214
	.value	0x1
	.byte	0x53
	.long	.LVL214
	.long	.LVL215
	.value	0x1
	.byte	0x50
	.long	.LVL215
	.long	.LVL216
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST37:
	.long	.LVL203
	.long	.LVL204
	.value	0x1
	.byte	0x50
	.long	.LVL204
	.long	.LVL216
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST38:
	.long	.LVL206
	.long	.LVL207-1
	.value	0x1
	.byte	0x50
	.long	.LVL208
	.long	.LVL209
	.value	0x1
	.byte	0x50
	.long	.LVL209
	.long	.LVL210-1
	.value	0x1
	.byte	0x52
	.long	.LVL210-1
	.long	.LVL216
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST39:
	.long	.LVL223
	.long	.LVL224-1
	.value	0x1
	.byte	0x50
	.long	.LVL224-1
	.long	.LVL225
	.value	0x1
	.byte	0x53
	.long	.LVL225
	.long	.LVL226
	.value	0x1
	.byte	0x50
	.long	.LVL226
	.long	.LVL227
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST40:
	.long	.LVL219
	.long	.LVL220
	.value	0x1
	.byte	0x50
	.long	.LVL220
	.long	.LVL227
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST41:
	.long	.LVL229
	.long	.LVL233
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x1b4
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB31
	.long	.LFE31-.LFB31
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB33
	.long	.LFE33-.LFB33
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB35
	.long	.LFE35-.LFB35
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB37
	.long	.LFE37-.LFB37
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB47
	.long	.LFE47-.LFB47
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB50
	.long	.LFE50-.LFB50
	.long	.LFB51
	.long	.LFE51-.LFB51
	.long	.LFB52
	.long	.LFE52-.LFB52
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB56
	.long	.LFE56-.LFB56
	.long	.LFB57
	.long	.LFE57-.LFB57
	.long	.LFB58
	.long	.LFE58-.LFB58
	.long	.LFB59
	.long	.LFE59-.LFB59
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	.LFB71
	.long	.LFE71-.LFB71
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB73
	.long	.LFE73-.LFB73
	.long	.LFB74
	.long	.LFE74-.LFB74
	.long	.LFB75
	.long	.LFE75-.LFB75
	.long	.LFB76
	.long	.LFE76-.LFB76
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB44
	.long	.LFE44-.LFB44
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB67
	.long	.LFE67-.LFB67
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB77
	.long	.LFE77-.LFB77
	.long	.LFB78
	.long	.LFE78-.LFB78
	.long	.LFB79
	.long	.LFE79-.LFB79
	.long	.LFB80
	.long	.LFE80-.LFB80
	.long	.LFB81
	.long	.LFE81-.LFB81
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB28
	.long	.LFE28
	.long	.LFB29
	.long	.LFE29
	.long	.LFB30
	.long	.LFE30
	.long	.LFB31
	.long	.LFE31
	.long	.LFB32
	.long	.LFE32
	.long	.LFB33
	.long	.LFE33
	.long	.LFB34
	.long	.LFE34
	.long	.LFB35
	.long	.LFE35
	.long	.LFB36
	.long	.LFE36
	.long	.LFB37
	.long	.LFE37
	.long	.LFB38
	.long	.LFE38
	.long	.LFB41
	.long	.LFE41
	.long	.LFB42
	.long	.LFE42
	.long	.LFB46
	.long	.LFE46
	.long	.LFB47
	.long	.LFE47
	.long	.LFB49
	.long	.LFE49
	.long	.LFB50
	.long	.LFE50
	.long	.LFB51
	.long	.LFE51
	.long	.LFB52
	.long	.LFE52
	.long	.LFB53
	.long	.LFE53
	.long	.LFB56
	.long	.LFE56
	.long	.LFB57
	.long	.LFE57
	.long	.LFB58
	.long	.LFE58
	.long	.LFB59
	.long	.LFE59
	.long	.LFB60
	.long	.LFE60
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB65
	.long	.LFE65
	.long	.LFB69
	.long	.LFE69
	.long	.LFB70
	.long	.LFE70
	.long	.LFB71
	.long	.LFE71
	.long	.LFB72
	.long	.LFE72
	.long	.LFB73
	.long	.LFE73
	.long	.LFB74
	.long	.LFE74
	.long	.LFB75
	.long	.LFE75
	.long	.LFB76
	.long	.LFE76
	.long	.LFB39
	.long	.LFE39
	.long	.LFB40
	.long	.LFE40
	.long	.LFB44
	.long	.LFE44
	.long	.LFB45
	.long	.LFE45
	.long	.LFB54
	.long	.LFE54
	.long	.LFB55
	.long	.LFE55
	.long	.LFB66
	.long	.LFE66
	.long	.LFB67
	.long	.LFE67
	.long	.LFB68
	.long	.LFE68
	.long	.LFB77
	.long	.LFE77
	.long	.LFB78
	.long	.LFE78
	.long	.LFB79
	.long	.LFE79
	.long	.LFB80
	.long	.LFE80
	.long	.LFB81
	.long	.LFE81
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"RHINO_SYS_FATAL_ERR"
.LASF298:
	.string	"aos_work_init"
.LASF99:
	.string	"BLK_FINISH"
.LASF4:
	.string	"size_t"
.LASF17:
	.string	"sizetype"
.LASF136:
	.string	"suspend_count"
.LASF158:
	.string	"mutex_task"
.LASF80:
	.string	"RHINO_TRY_AGAIN"
.LASF208:
	.string	"used_size"
.LASF197:
	.string	"owner"
.LASF194:
	.string	"kevent_t"
.LASF251:
	.string	"aos_mutex_lock"
.LASF167:
	.string	"tail"
.LASF272:
	.string	"repeat"
.LASF293:
	.string	"aos_sem_free"
.LASF38:
	.string	"RHINO_NOTIFY_FUNC_EXIST"
.LASF248:
	.string	"aos_task_key_delete"
.LASF89:
	.string	"kspinlock_t"
.LASF87:
	.string	"RHINO_INTRPT_STACK_OVF"
.LASF47:
	.string	"RHINO_SCHED_DISABLE"
.LASF297:
	.string	"aos_workqueue_create"
.LASF52:
	.string	"RHINO_TASK_NOT_SUSPENDED"
.LASF238:
	.string	"aos_version_get"
.LASF81:
	.string	"RHINO_WORKQUEUE_EXIST"
.LASF41:
	.string	"RHINO_MM_FREE_ADDR_ERR"
.LASF130:
	.string	"task_stack"
.LASF78:
	.string	"RHINO_MUTEX_NESTED_OVF"
.LASF230:
	.string	"aos_queue_t"
.LASF210:
	.string	"free_size"
.LASF269:
	.string	"k_queue"
.LASF295:
	.string	"max_msg"
.LASF20:
	.string	"sem_count_t"
.LASF318:
	.string	"krhino_sem_give"
.LASF169:
	.string	"type"
.LASF274:
	.string	"auto_run"
.LASF283:
	.string	"aos_work_cancel"
.LASF98:
	.string	"blk_policy_t"
.LASF257:
	.string	"aos_sem_signal_all"
.LASF316:
	.string	"krhino_mutex_unlock"
.LASF273:
	.string	"aos_timer_new_ext"
.LASF328:
	.string	"krhino_timer_start"
.LASF337:
	.string	"krhino_mm_free"
.LASF299:
	.string	"aos_work_destroy"
.LASF154:
	.string	"prio"
.LASF171:
	.string	"k_ringbuf_t"
.LASF308:
	.string	"hal_reboot"
.LASF108:
	.string	"RHINO_QUEUE_OBJ_TYPE"
.LASF189:
	.string	"priv"
.LASF270:
	.string	"aos_queue_buf_ptr"
.LASF79:
	.string	"RHINO_NOT_CALLED_BY_INTRPT"
.LASF260:
	.string	"aos_event_free"
.LASF161:
	.string	"sem_s"
.LASF320:
	.string	"krhino_event_dyn_create"
.LASF5:
	.string	"__uint8_t"
.LASF336:
	.string	"krhino_mm_realloc"
.LASF209:
	.string	"maxused_size"
.LASF324:
	.string	"krhino_buf_queue_send"
.LASF151:
	.string	"pend_option"
.LASF115:
	.string	"blk_obj"
.LASF237:
	.string	"aos_get_hz"
.LASF278:
	.string	"aos_timer_change"
.LASF9:
	.string	"long int"
.LASF261:
	.string	"aos_event_get"
.LASF244:
	.string	"aos_task_exit"
.LASF222:
	.string	"work_list"
.LASF280:
	.string	"workqueue"
.LASF82:
	.string	"RHINO_WORKQUEUE_NOT_EXIST"
.LASF232:
	.string	"aos_work_t"
.LASF142:
	.string	"tick_head"
.LASF166:
	.string	"head"
.LASF64:
	.string	"RHINO_BLK_INV_STATE"
.LASF306:
	.string	"g_kmm_head"
.LASF236:
	.string	"_Bool"
.LASF246:
	.string	"aos_task_name"
.LASF29:
	.string	"RHINO_STOPPED"
.LASF202:
	.string	"k_mm_list_t"
.LASF284:
	.string	"aos_zalloc"
.LASF3:
	.string	"signed char"
.LASF14:
	.string	"uint8_t"
.LASF199:
	.string	"mbinfo"
.LASF27:
	.string	"RHINO_SYS_SP_ERR"
.LASF239:
	.string	"task_handle"
.LASF310:
	.string	"krhino_task_dyn_del"
.LASF75:
	.string	"RHINO_SEM_TASK_WAITING"
.LASF91:
	.string	"tick_t"
.LASF335:
	.string	"krhino_owner_attach"
.LASF42:
	.string	"RHINO_MM_CORRUPT_ERR"
.LASF344:
	.string	"krhino_workqueue_create"
.LASF340:
	.string	"krhino_sem_create"
.LASF296:
	.string	"aos_queue_free"
.LASF6:
	.string	"unsigned char"
.LASF63:
	.string	"RHINO_BLK_DEL"
.LASF301:
	.string	"aos_now_ms"
.LASF36:
	.string	"RHINO_KOBJ_BLK"
.LASF196:
	.string	"k_mm_list_struct"
.LASF182:
	.string	"timer_list"
.LASF334:
	.string	"krhino_mm_alloc"
.LASF114:
	.string	"klist_s"
.LASF95:
	.string	"klist_t"
.LASF309:
	.string	"krhino_task_dyn_create"
.LASF163:
	.string	"peak_count"
.LASF35:
	.string	"RHINO_KOBJ_DOCKER_EXIST"
.LASF149:
	.string	"pend_flags"
.LASF352:
	.string	"/home/stone/Documents/pca"
.LASF243:
	.string	"aos_reboot"
.LASF314:
	.string	"krhino_ms_to_ticks"
.LASF233:
	.string	"aos_event_t"
.LASF300:
	.string	"aos_now"
.LASF119:
	.string	"obj_type"
.LASF256:
	.string	"aos_sem_signal"
.LASF279:
	.string	"aos_work_run"
.LASF18:
	.string	"char"
.LASF168:
	.string	"freesize"
.LASF125:
	.string	"K_PEND_SUSPENDED"
.LASF304:
	.string	"aos_start"
.LASF117:
	.string	"name"
.LASF102:
	.string	"BLK_DEL"
.LASF191:
	.string	"ktimer_t"
.LASF348:
	.string	"krhino_init"
.LASF143:
	.string	"bq_msg_size"
.LASF193:
	.string	"event_item"
.LASF249:
	.string	"aos_task_setspecific"
.LASF228:
	.string	"aos_mutex_t"
.LASF218:
	.string	"timer"
.LASF77:
	.string	"RHINO_MUTEX_OWNER_NESTED"
.LASF192:
	.string	"flags"
.LASF103:
	.string	"BLK_INVALID"
.LASF341:
	.string	"krhino_sem_del"
.LASF342:
	.string	"krhino_buf_queue_create"
.LASF135:
	.string	"task_list"
.LASF203:
	.string	"k_mm_region_info_struct"
.LASF303:
	.string	"aos_init"
.LASF173:
	.string	"max_msg_size"
.LASF219:
	.string	"work_exit"
.LASF329:
	.string	"krhino_timer_stop"
.LASF71:
	.string	"RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW"
.LASF255:
	.string	"aos_sem_wait"
.LASF175:
	.string	"peak_num"
.LASF50:
	.string	"RHINO_INV_SCHED_WAY"
.LASF332:
	.string	"krhino_work_sched"
.LASF289:
	.string	"aos_free"
.LASF25:
	.string	"RHINO_SUCCESS"
.LASF242:
	.string	"task"
.LASF345:
	.string	"krhino_work_init"
.LASF185:
	.string	"match"
.LASF292:
	.string	"aos_sem_new"
.LASF201:
	.string	"buffer"
.LASF347:
	.string	"krhino_task_sleep"
.LASF155:
	.string	"b_prio"
.LASF170:
	.string	"blk_size"
.LASF286:
	.string	"aos_alloc_trace"
.LASF262:
	.string	"actl_flags"
.LASF30:
	.string	"RHINO_INV_PARAM"
.LASF302:
	.string	"aos_msleep"
.LASF111:
	.string	"RHINO_EVENT_OBJ_TYPE"
.LASF200:
	.string	"free_ptr"
.LASF333:
	.string	"krhino_work_cancel"
.LASF88:
	.string	"kstat_t"
.LASF12:
	.string	"__uint64_t"
.LASF11:
	.string	"long unsigned int"
.LASF315:
	.string	"krhino_mutex_lock"
.LASF104:
	.string	"blk_state_t"
.LASF198:
	.string	"buf_size"
.LASF177:
	.string	"buf_queue_item"
.LASF65:
	.string	"RHINO_BLK_POOL_SIZE_ERR"
.LASF62:
	.string	"RHINO_BLK_TIMEOUT"
.LASF48:
	.string	"RHINO_SCHED_ALREADY_ENABLED"
.LASF213:
	.string	"freelist"
.LASF234:
	.string	"aos_workqueue_t"
.LASF72:
	.string	"RHINO_QUEUE_FULL"
.LASF96:
	.string	"BLK_POLICY_PRI"
.LASF264:
	.string	"aos_queue_send"
.LASF61:
	.string	"RHINO_BLK_ABORT"
.LASF330:
	.string	"krhino_timer_change"
.LASF92:
	.string	"cpsr"
.LASF174:
	.string	"cur_num"
.LASF123:
	.string	"K_PEND"
.LASF148:
	.string	"time_total"
.LASF211:
	.string	"alloc_times"
.LASF271:
	.string	"aos_timer_new"
.LASF212:
	.string	"free_bitmap"
.LASF140:
	.string	"tick_match"
.LASF10:
	.string	"__uint32_t"
.LASF354:
	.string	"__stack_chk_fail"
.LASF226:
	.string	"aos_hdl_t"
.LASF1:
	.string	"long long int"
.LASF40:
	.string	"RHINO_MM_ALLOC_SIZE_ERR"
.LASF106:
	.string	"RHINO_SEM_OBJ_TYPE"
.LASF322:
	.string	"krhino_event_get"
.LASF131:
	.string	"task_name"
.LASF339:
	.string	"krhino_mutex_del"
.LASF235:
	.string	"aos_task_key_t"
.LASF58:
	.string	"RHINO_INV_TASK_STATE"
.LASF21:
	.string	"cpu_stack_t"
.LASF84:
	.string	"RHINO_WORKQUEUE_BUSY"
.LASF90:
	.string	"sys_time_t"
.LASF127:
	.string	"K_SLEEP_SUSPENDED"
.LASF164:
	.string	"sem_item"
.LASF46:
	.string	"RHINO_RINGBUF_EMPTY"
.LASF51:
	.string	"RHINO_TASK_INV_STACK_SIZE"
.LASF204:
	.string	"k_mm_region_info_t"
.LASF252:
	.string	"mutex"
.LASF141:
	.string	"tick_remain"
.LASF181:
	.string	"timer_cb_t"
.LASF253:
	.string	"timeout"
.LASF162:
	.string	"count"
.LASF259:
	.string	"event"
.LASF287:
	.string	"addr"
.LASF214:
	.string	"k_mm_head"
.LASF0:
	.string	"unsigned int"
.LASF109:
	.string	"RHINO_BUF_QUEUE_OBJ_TYPE"
.LASF258:
	.string	"aos_event_new"
.LASF343:
	.string	"krhino_buf_queue_del"
.LASF263:
	.string	"aos_event_set"
.LASF73:
	.string	"RHINO_QUEUE_NOT_FULL"
.LASF60:
	.string	"RHINO_NO_PEND_WAIT"
.LASF129:
	.string	"task_stat_t"
.LASF22:
	.string	"mutex_nested_t"
.LASF74:
	.string	"RHINO_SEM_OVF"
.LASF120:
	.string	"blk_obj_t"
.LASF134:
	.string	"stack_size"
.LASF137:
	.string	"mutex_list"
.LASF66:
	.string	"RHINO_TIMER_STATE_INV"
.LASF76:
	.string	"RHINO_MUTEX_NOT_RELEASED_BY_OWNER"
.LASF139:
	.string	"tick_list"
.LASF321:
	.string	"krhino_event_dyn_del"
.LASF267:
	.string	"aos_queue_recv"
.LASF221:
	.string	"workqueue_node"
.LASF116:
	.string	"blk_list"
.LASF240:
	.string	"aos_task_new"
.LASF144:
	.string	"task_state"
.LASF275:
	.string	"aos_timer_free"
.LASF68:
	.string	"RHINO_BUF_QUEUE_INV_SIZE"
.LASF325:
	.string	"krhino_buf_queue_recv"
.LASF112:
	.string	"RHINO_MM_OBJ_TYPE"
.LASF33:
	.string	"RHINO_KOBJ_TYPE_ERR"
.LASF132:
	.string	"user_info"
.LASF290:
	.string	"aos_mutex_new"
.LASF32:
	.string	"RHINO_INV_ALIGN"
.LASF2:
	.string	"long double"
.LASF110:
	.string	"RHINO_TIMER_OBJ_TYPE"
.LASF266:
	.string	"size"
.LASF285:
	.string	"aos_realloc"
.LASF338:
	.string	"krhino_mutex_create"
.LASF305:
	.string	"used_bitmap"
.LASF281:
	.string	"work"
.LASF291:
	.string	"aos_mutex_free"
.LASF118:
	.string	"blk_policy"
.LASF217:
	.string	"handle"
.LASF31:
	.string	"RHINO_NULL_PTR"
.LASF172:
	.string	"ringbuf"
.LASF227:
	.string	"aos_task_t"
.LASF250:
	.string	"aos_task_getspecific"
.LASF317:
	.string	"krhino_sem_take"
.LASF187:
	.string	"init_count"
.LASF312:
	.string	"krhino_task_info_set"
.LASF100:
	.string	"BLK_ABORT"
.LASF13:
	.string	"long long unsigned int"
.LASF268:
	.string	"aos_queue_is_valid"
.LASF121:
	.string	"K_SEED"
.LASF45:
	.string	"RHINO_RINGBUF_FULL"
.LASF83:
	.string	"RHINO_WORKQUEUE_WORK_EXIST"
.LASF69:
	.string	"RHINO_BUF_QUEUE_SIZE_ZERO"
.LASF207:
	.string	"fix_pool"
.LASF265:
	.string	"queue"
.LASF55:
	.string	"RHINO_SUSPENDED_COUNT_OVF"
.LASF276:
	.string	"aos_timer_start"
.LASF220:
	.string	"kwork_t"
.LASF122:
	.string	"K_RDY"
.LASF126:
	.string	"K_SLEEP"
.LASF180:
	.string	"kmutex_t"
.LASF247:
	.string	"aos_task_key_create"
.LASF307:
	.string	"aos_log_level"
.LASF331:
	.string	"krhino_work_run"
.LASF43:
	.string	"RHINO_DYN_MEM_PROC_ERR"
.LASF351:
	.string	"src/aos_rhino.c"
.LASF254:
	.string	"aos_mutex_unlock"
.LASF229:
	.string	"aos_sem_t"
.LASF176:
	.string	"min_free_buf_size"
.LASF184:
	.string	"timer_cb_arg"
.LASF245:
	.string	"code"
.LASF206:
	.string	"regioninfo"
.LASF288:
	.string	"allocator"
.LASF224:
	.string	"worker"
.LASF294:
	.string	"aos_queue_new"
.LASF152:
	.string	"sched_policy"
.LASF28:
	.string	"RHINO_RUNNING"
.LASF188:
	.string	"round_ticks"
.LASF67:
	.string	"RHINO_NO_THIS_EVENT_OPT"
.LASF319:
	.string	"krhino_sem_give_all"
.LASF346:
	.string	"krhino_sys_time_get"
.LASF24:
	.string	"cpu_cpsr_t"
.LASF44:
	.string	"RHINO_NO_MEM"
.LASF311:
	.string	"krhino_cur_task_get"
.LASF7:
	.string	"short int"
.LASF86:
	.string	"RHINO_TASK_STACK_OVF"
.LASF16:
	.string	"uint64_t"
.LASF178:
	.string	"kbuf_queue_t"
.LASF37:
	.string	"RHINO_KOBJ_SET_FULL"
.LASF150:
	.string	"pend_info"
.LASF160:
	.string	"mutex_item"
.LASF215:
	.string	"work_handle_t"
.LASF231:
	.string	"aos_timer_t"
.LASF225:
	.string	"kworkqueue_t"
.LASF327:
	.string	"krhino_timer_dyn_del"
.LASF57:
	.string	"RHINO_PRI_CHG_NOT_ALLOWED"
.LASF105:
	.string	"RHINO_OBJ_TYPE_NONE"
.LASF128:
	.string	"K_DELETED"
.LASF195:
	.string	"free_ptr_struct"
.LASF153:
	.string	"cpu_num"
.LASF59:
	.string	"RHINO_IDLE_TASK_EXIST"
.LASF70:
	.string	"RHINO_BUF_QUEUE_FULL"
.LASF56:
	.string	"RHINO_BEYOND_MAX_PRI"
.LASF34:
	.string	"RHINO_KOBJ_DEL_ERR"
.LASF159:
	.string	"owner_nested"
.LASF349:
	.string	"krhino_start"
.LASF101:
	.string	"BLK_TIMEOUT"
.LASF216:
	.string	"work_node"
.LASF157:
	.string	"mutex_s"
.LASF54:
	.string	"RHINO_TASK_SUSPEND_NOT_ALLOWED"
.LASF326:
	.string	"krhino_timer_dyn_create"
.LASF183:
	.string	"to_head"
.LASF241:
	.string	"aos_task_new_ext"
.LASF179:
	.string	"ksem_t"
.LASF15:
	.string	"uint32_t"
.LASF353:
	.string	"aos_malloc"
.LASF85:
	.string	"RHINO_WORKQUEUE_WORK_RUNNING"
.LASF350:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF323:
	.string	"krhino_event_set"
.LASF39:
	.string	"RHINO_MM_POOL_SIZE_ERR"
.LASF23:
	.string	"suspend_nested_t"
.LASF277:
	.string	"aos_timer_stop"
.LASF145:
	.string	"blk_state"
.LASF8:
	.string	"short unsigned int"
.LASF165:
	.string	"ktask_t"
.LASF113:
	.string	"kobj_type_t"
.LASF146:
	.string	"task_sem_obj"
.LASF124:
	.string	"K_SUSPENDED"
.LASF282:
	.string	"aos_work_sched"
.LASF19:
	.string	"name_t"
.LASF190:
	.string	"timer_state"
.LASF147:
	.string	"time_slice"
.LASF49:
	.string	"RHINO_SCHED_LOCK_COUNT_OVF"
.LASF138:
	.string	"task_stats_item"
.LASF205:
	.string	"mm_lock"
.LASF186:
	.string	"remain"
.LASF53:
	.string	"RHINO_TASK_DEL_NOT_ALLOWED"
.LASF93:
	.string	"next"
.LASF223:
	.string	"work_current"
.LASF156:
	.string	"mm_alloc_flag"
.LASF94:
	.string	"prev"
.LASF133:
	.string	"task_stack_base"
.LASF97:
	.string	"BLK_POLICY_FIFO"
.LASF313:
	.string	"krhino_task_info_get"
.LASF107:
	.string	"RHINO_MUTEX_OBJ_TYPE"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
