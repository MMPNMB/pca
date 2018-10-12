	.file	"ota_util.c"
	.text
.Ltext0:
	.section	.text.unlikely.ota_status_init,"ax",@progbits
.LCOLDB0:
	.section	.text.ota_status_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.ota_status_init
.Ltext_cold0:
	.section	.text.ota_status_init
	.globl	ota_status_init
	.type	ota_status_init, @function
ota_status_init:
.LFB17:
	.file 1 "framework/fota/ota_util.c"
	.loc 1 28 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 29 0
	movl	$0, g_ota_info_storage
	.loc 1 30 0
	call	ota_mutex_init
.LVL0:
	movl	%eax, g_ota_info_storage+16
	.loc 1 31 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	ota_status_init, .-ota_status_init
	.section	.text.unlikely.ota_status_init
.LCOLDE0:
	.section	.text.ota_status_init
.LHOTE0:
	.section	.text.unlikely.ota_status_deinit,"ax",@progbits
.LCOLDB1:
	.section	.text.ota_status_deinit,"ax",@progbits
.LHOTB1:
	.globl	ota_status_deinit
	.type	ota_status_deinit, @function
ota_status_deinit:
.LFB18:
	.loc 1 34 0
	.cfi_startproc
	.loc 1 35 0
	movl	g_ota_info_storage+16, %eax
	testl	%eax, %eax
	je	.L10
	.loc 1 34 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 36 0
	pushl	%eax
	call	ota_mutex_destroy
.LVL1:
	.loc 1 37 0
	movl	$0, g_ota_info_storage+16
	addl	$16, %esp
	.loc 1 39 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L10:
	ret
	.cfi_endproc
.LFE18:
	.size	ota_status_deinit, .-ota_status_deinit
	.section	.text.unlikely.ota_status_deinit
.LCOLDE1:
	.section	.text.ota_status_deinit
.LHOTE1:
	.section	.text.unlikely.ota_get_update_type,"ax",@progbits
.LCOLDB2:
	.section	.text.ota_get_update_type,"ax",@progbits
.LHOTB2:
	.globl	ota_get_update_type
	.type	ota_get_update_type, @function
ota_get_update_type:
.LFB19:
	.loc 1 42 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 44 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL2:
	.loc 1 46 0
	popl	%eax
	.loc 1 45 0
	movl	g_ota_info_storage+8, %ebx
.LVL3:
	.loc 1 46 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL4:
	.loc 1 48 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL5:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	ota_get_update_type, .-ota_get_update_type
	.section	.text.unlikely.ota_get_update_type
.LCOLDE2:
	.section	.text.ota_get_update_type
.LHOTE2:
	.section	.text.unlikely.ota_set_update_type,"ax",@progbits
.LCOLDB3:
	.section	.text.ota_set_update_type,"ax",@progbits
.LHOTB3:
	.globl	ota_set_update_type
	.type	ota_set_update_type, @function
ota_set_update_type:
.LFB20:
	.loc 1 51 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 52 0
	pushl	g_ota_info_storage+16
	.loc 1 51 0
	movl	8(%ebp), %ebx
	.loc 1 52 0
	call	ota_mutex_lock
.LVL7:
	.loc 1 54 0
	movl	g_ota_info_storage+16, %eax
	.loc 1 53 0
	movl	%ebx, g_ota_info_storage+8
	.loc 1 54 0
	addl	$16, %esp
	.loc 1 55 0
	movl	-4(%ebp), %ebx
	.loc 1 54 0
	movl	%eax, 8(%ebp)
	.loc 1 55 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 54 0
	jmp	ota_mutex_unlock
.LVL8:
	.cfi_endproc
.LFE20:
	.size	ota_set_update_type, .-ota_set_update_type
	.section	.text.unlikely.ota_set_update_type
.LCOLDE3:
	.section	.text.ota_set_update_type
.LHOTE3:
	.section	.text.unlikely.ota_get_firmware_type,"ax",@progbits
.LCOLDB4:
	.section	.text.ota_get_firmware_type,"ax",@progbits
.LHOTB4:
	.globl	ota_get_firmware_type
	.type	ota_get_firmware_type, @function
ota_get_firmware_type:
.LFB21:
	.loc 1 58 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 60 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL9:
	.loc 1 62 0
	popl	%eax
	.loc 1 61 0
	movl	g_ota_info_storage+12, %ebx
.LVL10:
	.loc 1 62 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL11:
	.loc 1 64 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL12:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	ota_get_firmware_type, .-ota_get_firmware_type
	.section	.text.unlikely.ota_get_firmware_type
.LCOLDE4:
	.section	.text.ota_get_firmware_type
.LHOTE4:
	.section	.text.unlikely.ota_set_firmware_type,"ax",@progbits
.LCOLDB5:
	.section	.text.ota_set_firmware_type,"ax",@progbits
.LHOTB5:
	.globl	ota_set_firmware_type
	.type	ota_set_firmware_type, @function
ota_set_firmware_type:
.LFB22:
	.loc 1 67 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 68 0
	pushl	g_ota_info_storage+16
	.loc 1 67 0
	movl	8(%ebp), %ebx
	.loc 1 68 0
	call	ota_mutex_lock
.LVL14:
	.loc 1 70 0
	movl	g_ota_info_storage+16, %eax
	.loc 1 69 0
	movl	%ebx, g_ota_info_storage+12
	.loc 1 70 0
	addl	$16, %esp
	.loc 1 71 0
	movl	-4(%ebp), %ebx
	.loc 1 70 0
	movl	%eax, 8(%ebp)
	.loc 1 71 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 70 0
	jmp	ota_mutex_unlock
.LVL15:
	.cfi_endproc
.LFE22:
	.size	ota_set_firmware_type, .-ota_set_firmware_type
	.section	.text.unlikely.ota_set_firmware_type
.LCOLDE5:
	.section	.text.ota_set_firmware_type
.LHOTE5:
	.section	.text.unlikely.ota_get_status,"ax",@progbits
.LCOLDB6:
	.section	.text.ota_get_status,"ax",@progbits
.LHOTB6:
	.globl	ota_get_status
	.type	ota_get_status, @function
ota_get_status:
.LFB23:
	.loc 1 75 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 77 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL16:
	.loc 1 79 0
	popl	%eax
	.loc 1 78 0
	movl	g_ota_info_storage, %ebx
.LVL17:
	.loc 1 79 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL18:
	.loc 1 81 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL19:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	ota_get_status, .-ota_get_status
	.section	.text.unlikely.ota_get_status
.LCOLDE6:
	.section	.text.ota_get_status
.LHOTE6:
	.section	.text.unlikely.ota_set_status,"ax",@progbits
.LCOLDB7:
	.section	.text.ota_set_status,"ax",@progbits
.LHOTB7:
	.globl	ota_set_status
	.type	ota_set_status, @function
ota_set_status:
.LFB24:
	.loc 1 84 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 85 0
	pushl	g_ota_info_storage+16
	.loc 1 84 0
	movl	8(%ebp), %ebx
	.loc 1 85 0
	call	ota_mutex_lock
.LVL21:
	.loc 1 87 0
	movl	g_ota_info_storage+16, %eax
	.loc 1 86 0
	movl	%ebx, g_ota_info_storage
	.loc 1 87 0
	addl	$16, %esp
	.loc 1 88 0
	movl	-4(%ebp), %ebx
	.loc 1 87 0
	movl	%eax, 8(%ebp)
	.loc 1 88 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 87 0
	jmp	ota_mutex_unlock
.LVL22:
	.cfi_endproc
.LFE24:
	.size	ota_set_status, .-ota_set_status
	.section	.text.unlikely.ota_set_status
.LCOLDE7:
	.section	.text.ota_set_status
.LHOTE7:
	.section	.text.unlikely.ota_status_post,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_status_post,"ax",@progbits
.LHOTB8:
	.globl	ota_status_post
	.type	ota_status_post, @function
ota_status_post:
.LFB25:
	.loc 1 91 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	.loc 1 92 0
	pushl	8(%ebp)
	pushl	g_ota_info_storage
	call	platform_ota_status_post
.LVL24:
	.loc 1 93 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE25:
	.size	ota_status_post, .-ota_status_post
	.section	.text.unlikely.ota_status_post
.LCOLDE8:
	.section	.text.ota_status_post
.LHOTE8:
	.section	.text.unlikely.ota_result_post,"ax",@progbits
.LCOLDB9:
	.section	.text.ota_result_post,"ax",@progbits
.LHOTB9:
	.globl	ota_result_post
	.type	ota_result_post, @function
ota_result_post:
.LFB26:
	.loc 1 96 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 98 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 97 0
	jmp	platform_ota_result_post
.LVL25:
	.cfi_endproc
.LFE26:
	.size	ota_result_post, .-ota_result_post
	.section	.text.unlikely.ota_result_post
.LCOLDE9:
	.section	.text.ota_result_post
.LHOTE9:
	.section	.text.unlikely.ota_get_version,"ax",@progbits
.LCOLDB10:
	.section	.text.ota_get_version,"ax",@progbits
.LHOTB10:
	.globl	ota_get_version
	.type	ota_get_version, @function
ota_get_version:
.LFB27:
	.loc 1 101 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 103 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL27:
	.loc 1 104 0
	call	ota_get_ota_version
.LVL28:
	movl	%eax, %ebx
.LVL29:
	.loc 1 105 0
	popl	%eax
.LVL30:
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL31:
	.loc 1 107 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL32:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	ota_get_version, .-ota_get_version
	.section	.text.unlikely.ota_get_version
.LCOLDE10:
	.section	.text.ota_get_version
.LHOTE10:
	.section	.text.unlikely.ota_set_version,"ax",@progbits
.LCOLDB11:
	.section	.text.ota_set_version,"ax",@progbits
.LHOTB11:
	.globl	ota_set_version
	.type	ota_set_version, @function
ota_set_version:
.LFB28:
	.loc 1 110 0
	.cfi_startproc
.LVL33:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 110 0
	movl	8(%ebp), %ebx
	.loc 1 111 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL34:
	.loc 1 112 0
	movl	%ebx, (%esp)
	call	ota_set_ota_version
.LVL35:
	.loc 1 113 0
	movl	g_ota_info_storage+16, %eax
	addl	$16, %esp
	.loc 1 114 0
	movl	-4(%ebp), %ebx
	.loc 1 113 0
	movl	%eax, 8(%ebp)
	.loc 1 114 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 113 0
	jmp	ota_mutex_unlock
.LVL36:
	.cfi_endproc
.LFE28:
	.size	ota_set_version, .-ota_set_version
	.section	.text.unlikely.ota_set_version
.LCOLDE11:
	.section	.text.ota_set_version
.LHOTE11:
	.section	.text.unlikely.ota_get_diff_version,"ax",@progbits
.LCOLDB12:
	.section	.text.ota_get_diff_version,"ax",@progbits
.LHOTB12:
	.globl	ota_get_diff_version
	.type	ota_get_diff_version, @function
ota_get_diff_version:
.LFB29:
	.loc 1 117 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 119 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL37:
	.loc 1 121 0
	popl	%eax
	.loc 1 120 0
	movb	g_ota_info_storage+24, %bl
.LVL38:
	.loc 1 121 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL39:
	.loc 1 123 0
	movb	%bl, %al
	movl	-4(%ebp), %ebx
.LVL40:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE29:
	.size	ota_get_diff_version, .-ota_get_diff_version
	.section	.text.unlikely.ota_get_diff_version
.LCOLDE12:
	.section	.text.ota_get_diff_version
.LHOTE12:
	.section	.text.unlikely.ota_set_diff_version,"ax",@progbits
.LCOLDB13:
	.section	.text.ota_set_diff_version,"ax",@progbits
.LHOTB13:
	.globl	ota_set_diff_version
	.type	ota_set_diff_version, @function
ota_set_diff_version:
.LFB30:
	.loc 1 126 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 127 0
	pushl	g_ota_info_storage+16
	.loc 1 126 0
	movl	8(%ebp), %ebx
	.loc 1 127 0
	call	ota_mutex_lock
.LVL42:
	.loc 1 129 0
	movl	g_ota_info_storage+16, %eax
	.loc 1 128 0
	movb	%bl, g_ota_info_storage+24
	.loc 1 129 0
	addl	$16, %esp
	.loc 1 130 0
	movl	-4(%ebp), %ebx
	.loc 1 129 0
	movl	%eax, 8(%ebp)
	.loc 1 130 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 129 0
	jmp	ota_mutex_unlock
.LVL43:
	.cfi_endproc
.LFE30:
	.size	ota_set_diff_version, .-ota_set_diff_version
	.section	.text.unlikely.ota_set_diff_version
.LCOLDE13:
	.section	.text.ota_set_diff_version
.LHOTE13:
	.section	.text.unlikely.ota_get_splict_size,"ax",@progbits
.LCOLDB14:
	.section	.text.ota_get_splict_size,"ax",@progbits
.LHOTB14:
	.globl	ota_get_splict_size
	.type	ota_get_splict_size, @function
ota_get_splict_size:
.LFB31:
	.loc 1 133 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 135 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_lock
.LVL44:
	.loc 1 137 0
	popl	%eax
	.loc 1 136 0
	movl	g_ota_info_storage+20, %ebx
.LVL45:
	.loc 1 137 0
	pushl	g_ota_info_storage+16
	call	ota_mutex_unlock
.LVL46:
	.loc 1 139 0
	movl	%ebx, %eax
	movl	-4(%ebp), %ebx
.LVL47:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE31:
	.size	ota_get_splict_size, .-ota_get_splict_size
	.section	.text.unlikely.ota_get_splict_size
.LCOLDE14:
	.section	.text.ota_get_splict_size
.LHOTE14:
	.section	.text.unlikely.ota_set_splict_size,"ax",@progbits
.LCOLDB15:
	.section	.text.ota_set_splict_size,"ax",@progbits
.LHOTB15:
	.globl	ota_set_splict_size
	.type	ota_set_splict_size, @function
ota_set_splict_size:
.LFB32:
	.loc 1 142 0
	.cfi_startproc
.LVL48:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 3, -12
	.loc 1 143 0
	pushl	g_ota_info_storage+16
	.loc 1 142 0
	movl	8(%ebp), %ebx
	.loc 1 143 0
	call	ota_mutex_lock
.LVL49:
	.loc 1 145 0
	movl	g_ota_info_storage+16, %eax
	.loc 1 144 0
	movl	%ebx, g_ota_info_storage+20
	.loc 1 145 0
	addl	$16, %esp
	.loc 1 146 0
	movl	-4(%ebp), %ebx
	.loc 1 145 0
	movl	%eax, 8(%ebp)
	.loc 1 146 0
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 145 0
	jmp	ota_mutex_unlock
.LVL50:
	.cfi_endproc
.LFE32:
	.size	ota_set_splict_size, .-ota_set_splict_size
	.section	.text.unlikely.ota_set_splict_size
.LCOLDE15:
	.section	.text.ota_set_splict_size
.LHOTE15:
	.section	.data.g_ota_info_storage,"aw",@progbits
	.align 4
	.type	g_ota_info_storage, @object
	.size	g_ota_info_storage, 28
g_ota_info_storage:
	.zero	4
	.long	2
	.long	2
	.long	0
	.long	0
	.long	0
	.byte	0
	.zero	3
	.text
.Letext0:
	.section	.text.unlikely.ota_status_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./include/hal/ota.h"
	.file 5 "framework/fota/ota_util.h"
	.file 6 "./framework/fota/./platform/ota_platform_os.h"
	.file 7 "./framework/fota/./platform/ota_transport.h"
	.file 8 "framework/fota/ota_version.h"
	.file 9 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x60c
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF87
	.byte	0xc
	.long	.LASF88
	.long	.LASF89
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x2
	.byte	0x1b
	.long	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x2
	.byte	0x1d
	.long	0x42
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0x41
	.long	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF14
	.uleb128 0x2
	.long	.LASF15
	.byte	0x3
	.byte	0x14
	.long	0x25
	.uleb128 0x2
	.long	.LASF16
	.byte	0x3
	.byte	0x18
	.long	0x37
	.uleb128 0x2
	.long	.LASF17
	.byte	0x3
	.byte	0x30
	.long	0x5e
	.uleb128 0x6
	.byte	0x4
	.long	0xca
	.uleb128 0x7
	.long	0x9c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF18
	.uleb128 0x8
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x13
	.long	0xf5
	.uleb128 0x9
	.long	.LASF19
	.byte	0
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.long	.LASF22
	.byte	0x4
	.byte	0x17
	.long	0xd6
	.uleb128 0x8
	.byte	0x4
	.long	0x85
	.byte	0x4
	.byte	0x27
	.long	0x119
	.uleb128 0x9
	.long	.LASF23
	.byte	0
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0
	.uleb128 0x2
	.long	.LASF25
	.byte	0x4
	.byte	0x2a
	.long	0x100
	.uleb128 0x8
	.byte	0x4
	.long	0x7e
	.byte	0x5
	.byte	0x11
	.long	0x18b
	.uleb128 0xa
	.long	.LASF26
	.sleb128 -6
	.uleb128 0xa
	.long	.LASF27
	.sleb128 -5
	.uleb128 0xa
	.long	.LASF28
	.sleb128 -4
	.uleb128 0xa
	.long	.LASF29
	.sleb128 -3
	.uleb128 0xa
	.long	.LASF30
	.sleb128 -2
	.uleb128 0xa
	.long	.LASF31
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF32
	.byte	0
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.uleb128 0x9
	.long	.LASF34
	.byte	0x2
	.uleb128 0x9
	.long	.LASF35
	.byte	0x3
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.uleb128 0x9
	.long	.LASF38
	.byte	0x6
	.uleb128 0x9
	.long	.LASF39
	.byte	0x7
	.uleb128 0x9
	.long	.LASF40
	.byte	0x8
	.byte	0
	.uleb128 0x2
	.long	.LASF41
	.byte	0x5
	.byte	0x21
	.long	0x124
	.uleb128 0x8
	.byte	0x4
	.long	0x85
	.byte	0x5
	.byte	0x2f
	.long	0x1c1
	.uleb128 0x9
	.long	.LASF42
	.byte	0
	.uleb128 0x9
	.long	.LASF43
	.byte	0x1
	.uleb128 0x9
	.long	.LASF44
	.byte	0x2
	.uleb128 0x9
	.long	.LASF45
	.byte	0x3
	.uleb128 0x9
	.long	.LASF46
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.long	.LASF47
	.byte	0x5
	.byte	0x35
	.long	0x196
	.uleb128 0xb
	.byte	0x1c
	.byte	0x5
	.byte	0x37
	.long	0x229
	.uleb128 0xc
	.long	.LASF48
	.byte	0x5
	.byte	0x38
	.long	0x18b
	.byte	0
	.uleb128 0xc
	.long	.LASF49
	.byte	0x5
	.byte	0x39
	.long	0x1c1
	.byte	0x4
	.uleb128 0xc
	.long	.LASF50
	.byte	0x5
	.byte	0x3a
	.long	0xf5
	.byte	0x8
	.uleb128 0xc
	.long	.LASF51
	.byte	0x5
	.byte	0x3b
	.long	0x119
	.byte	0xc
	.uleb128 0xc
	.long	.LASF52
	.byte	0x5
	.byte	0x3c
	.long	0x9a
	.byte	0x10
	.uleb128 0xc
	.long	.LASF53
	.byte	0x5
	.byte	0x3d
	.long	0xb9
	.byte	0x14
	.uleb128 0xc
	.long	.LASF54
	.byte	0x5
	.byte	0x3e
	.long	0xae
	.byte	0x18
	.byte	0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x5
	.byte	0x40
	.long	0x1cc
	.uleb128 0xd
	.long	.LASF56
	.byte	0x1
	.byte	0x1b
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x253
	.uleb128 0xe
	.long	.LVL0
	.long	0x5b7
	.byte	0
	.uleb128 0xd
	.long	.LASF57
	.byte	0x1
	.byte	0x21
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x272
	.uleb128 0xe
	.long	.LVL1
	.long	0x5c2
	.byte	0
	.uleb128 0xf
	.long	.LASF59
	.byte	0x1
	.byte	0x29
	.long	0xf5
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x2b
	.long	0xf5
	.long	.LLST0
	.uleb128 0xe
	.long	.LVL2
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL4
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF58
	.byte	0x1
	.byte	0x32
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e3
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x32
	.long	0xf5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL7
	.long	0x5cd
	.uleb128 0x12
	.long	.LVL8
	.long	0x5d8
	.byte	0
	.uleb128 0xf
	.long	.LASF60
	.byte	0x1
	.byte	0x39
	.long	0x119
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x31e
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1
	.byte	0x3b
	.long	0x119
	.long	.LLST1
	.uleb128 0xe
	.long	.LVL9
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL11
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF62
	.byte	0x1
	.byte	0x42
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x354
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.byte	0x42
	.long	0x119
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL14
	.long	0x5cd
	.uleb128 0x12
	.long	.LVL15
	.long	0x5d8
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x1
	.byte	0x4a
	.long	0x18b
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x38f
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.byte	0x4c
	.long	0x18b
	.long	.LLST2
	.uleb128 0xe
	.long	.LVL16
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL18
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF64
	.byte	0x1
	.byte	0x53
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c5
	.uleb128 0x11
	.long	.LASF48
	.byte	0x1
	.byte	0x53
	.long	0x18b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL21
	.long	0x5cd
	.uleb128 0x12
	.long	.LVL22
	.long	0x5d8
	.byte	0
	.uleb128 0xf
	.long	.LASF65
	.byte	0x1
	.byte	0x5a
	.long	0xa3
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f6
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.byte	0x5a
	.long	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL24
	.long	0x5e3
	.byte	0
	.uleb128 0xf
	.long	.LASF67
	.byte	0x1
	.byte	0x5f
	.long	0xa3
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x419
	.uleb128 0x12
	.long	.LVL25
	.long	0x5ee
	.byte	0
	.uleb128 0xf
	.long	.LASF68
	.byte	0x1
	.byte	0x64
	.long	0xc4
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x45d
	.uleb128 0x10
	.long	.LASF69
	.byte	0x1
	.byte	0x66
	.long	0xc4
	.long	.LLST3
	.uleb128 0xe
	.long	.LVL27
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL28
	.long	0x5f9
	.uleb128 0xe
	.long	.LVL31
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF70
	.byte	0x1
	.byte	0x6d
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x49c
	.uleb128 0x11
	.long	.LASF71
	.byte	0x1
	.byte	0x6d
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL34
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL35
	.long	0x604
	.uleb128 0x12
	.long	.LVL36
	.long	0x5d8
	.byte	0
	.uleb128 0xf
	.long	.LASF72
	.byte	0x1
	.byte	0x74
	.long	0xae
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d7
	.uleb128 0x13
	.string	"ver"
	.byte	0x1
	.byte	0x76
	.long	0xae
	.long	.LLST4
	.uleb128 0xe
	.long	.LVL37
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL39
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF73
	.byte	0x1
	.byte	0x7d
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x50d
	.uleb128 0x14
	.string	"ver"
	.byte	0x1
	.byte	0x7d
	.long	0xae
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL42
	.long	0x5cd
	.uleb128 0x12
	.long	.LVL43
	.long	0x5d8
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x1
	.byte	0x84
	.long	0xb9
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x548
	.uleb128 0x10
	.long	.LASF75
	.byte	0x1
	.byte	0x86
	.long	0xb9
	.long	.LLST5
	.uleb128 0xe
	.long	.LVL44
	.long	0x5cd
	.uleb128 0xe
	.long	.LVL46
	.long	0x5d8
	.byte	0
	.uleb128 0xd
	.long	.LASF76
	.byte	0x1
	.byte	0x8d
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x57e
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.byte	0x8d
	.long	0xb9
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.long	.LVL49
	.long	0x5cd
	.uleb128 0x12
	.long	.LVL50
	.long	0x5d8
	.byte	0
	.uleb128 0x15
	.long	.LASF77
	.byte	0x1
	.byte	0x10
	.long	0x229
	.uleb128 0x5
	.byte	0x3
	.long	g_ota_info_storage
	.uleb128 0x15
	.long	.LASF78
	.byte	0x1
	.byte	0x19
	.long	0x5a7
	.uleb128 0x6
	.byte	0x3
	.long	g_ota_info_storage
	.byte	0x9f
	.uleb128 0x6
	.byte	0x4
	.long	0x229
	.uleb128 0x7
	.long	0x5a1
	.uleb128 0x16
	.long	.LASF90
	.byte	0x9
	.byte	0x17
	.long	0x85
	.uleb128 0x17
	.long	.LASF79
	.long	.LASF79
	.byte	0x6
	.byte	0xd
	.uleb128 0x17
	.long	.LASF80
	.long	.LASF80
	.byte	0x6
	.byte	0x13
	.uleb128 0x17
	.long	.LASF81
	.long	.LASF81
	.byte	0x6
	.byte	0xf
	.uleb128 0x17
	.long	.LASF82
	.long	.LASF82
	.byte	0x6
	.byte	0x11
	.uleb128 0x17
	.long	.LASF83
	.long	.LASF83
	.byte	0x7
	.byte	0x2f
	.uleb128 0x17
	.long	.LASF84
	.long	.LASF84
	.byte	0x7
	.byte	0x31
	.uleb128 0x17
	.long	.LASF85
	.long	.LASF85
	.byte	0x8
	.byte	0x19
	.uleb128 0x17
	.long	.LASF86
	.long	.LASF86
	.byte	0x8
	.byte	0x1b
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.long	.LVL3
	.long	.LVL5
	.value	0x1
	.byte	0x53
	.long	.LVL5
	.long	.LFE19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL10
	.long	.LVL12
	.value	0x1
	.byte	0x53
	.long	.LVL12
	.long	.LFE21
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL17
	.long	.LVL19
	.value	0x1
	.byte	0x53
	.long	.LVL19
	.long	.LFE23
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL26
	.long	.LVL29
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x50
	.long	.LVL30
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	.LVL32
	.long	.LFE27
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL38
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LFE29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL45
	.long	.LVL47
	.value	0x1
	.byte	0x53
	.long	.LVL47
	.long	.LFE31
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x94
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
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB27
	.long	.LFE27-.LFB27
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
	.long	.LFB26
	.long	.LFE26
	.long	.LFB27
	.long	.LFE27
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"OTA_MAX"
.LASF65:
	.string	"ota_status_post"
.LASF57:
	.string	"ota_status_deinit"
.LASF66:
	.string	"percent"
.LASF19:
	.string	"OTA_KERNEL"
.LASF69:
	.string	"version"
.LASF58:
	.string	"ota_set_update_type"
.LASF79:
	.string	"ota_mutex_init"
.LASF43:
	.string	"OTA_INTERACTION"
.LASF64:
	.string	"ota_set_status"
.LASF15:
	.string	"int8_t"
.LASF33:
	.string	"OTA_DOWNLOAD"
.LASF76:
	.string	"ota_set_splict_size"
.LASF4:
	.string	"short int"
.LASF49:
	.string	"update_way"
.LASF13:
	.string	"sizetype"
.LASF70:
	.string	"ota_set_version"
.LASF80:
	.string	"ota_mutex_destroy"
.LASF47:
	.string	"OTA_ENUM_UPDATE_WAY"
.LASF81:
	.string	"ota_mutex_lock"
.LASF71:
	.string	"ota_version"
.LASF72:
	.string	"ota_get_diff_version"
.LASF78:
	.string	"g_ota_info"
.LASF83:
	.string	"platform_ota_status_post"
.LASF41:
	.string	"OTA_STATUS_T"
.LASF16:
	.string	"uint8_t"
.LASF44:
	.string	"OTA_SILENT"
.LASF68:
	.string	"ota_get_version"
.LASF35:
	.string	"OTA_CHECK"
.LASF22:
	.string	"OTA_ENUM_UPDATE_TYPE"
.LASF9:
	.string	"long long int"
.LASF53:
	.string	"splict_size"
.LASF85:
	.string	"ota_get_ota_version"
.LASF20:
	.string	"OTA_APP"
.LASF6:
	.string	"long int"
.LASF39:
	.string	"OTA_CANCEL"
.LASF84:
	.string	"platform_ota_result_post"
.LASF26:
	.string	"OTA_REBOOT_FAILED"
.LASF1:
	.string	"__uint8_t"
.LASF90:
	.string	"aos_log_level"
.LASF23:
	.string	"OTA_RAW"
.LASF77:
	.string	"g_ota_info_storage"
.LASF0:
	.string	"__int8_t"
.LASF38:
	.string	"OTA_REBOOT_SUCCESS"
.LASF12:
	.string	"long double"
.LASF32:
	.string	"OTA_INIT"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"ota_get_status"
.LASF88:
	.string	"src/ota_util.c"
.LASF60:
	.string	"ota_get_firmware_type"
.LASF34:
	.string	"OTA_DECOMPRESS"
.LASF74:
	.string	"ota_get_splict_size"
.LASF10:
	.string	"long long unsigned int"
.LASF17:
	.string	"uint32_t"
.LASF62:
	.string	"ota_set_firmware_type"
.LASF11:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"OTA_ENUM_FIRMWARE_TYPE"
.LASF82:
	.string	"ota_mutex_unlock"
.LASF52:
	.string	"mutex"
.LASF5:
	.string	"short unsigned int"
.LASF48:
	.string	"status"
.LASF55:
	.string	"ota_info_t"
.LASF45:
	.string	"OTA_FORCE"
.LASF14:
	.string	"char"
.LASF56:
	.string	"ota_status_init"
.LASF42:
	.string	"OTA_UPDATE_WAY_BEGIN"
.LASF51:
	.string	"firmware_type"
.LASF86:
	.string	"ota_set_ota_version"
.LASF50:
	.string	"update_type"
.LASF67:
	.string	"ota_result_post"
.LASF36:
	.string	"OTA_UPGRADE"
.LASF18:
	.string	"_Bool"
.LASF46:
	.string	"OTA_UPDATE_WAY_END"
.LASF31:
	.string	"OTA_INIT_FAILED"
.LASF30:
	.string	"OTA_DOWNLOAD_FAILED"
.LASF73:
	.string	"ota_set_diff_version"
.LASF61:
	.string	"type"
.LASF21:
	.string	"OTA_ALL"
.LASF7:
	.string	"__uint32_t"
.LASF75:
	.string	"size"
.LASF87:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF2:
	.string	"signed char"
.LASF59:
	.string	"ota_get_update_type"
.LASF54:
	.string	"diff_version"
.LASF37:
	.string	"OTA_REBOOT"
.LASF89:
	.string	"/home/stone/Documents/pca"
.LASF24:
	.string	"OTA_DIFF"
.LASF29:
	.string	"OTA_DECOMPRESS_FAILED"
.LASF28:
	.string	"OTA_CHECK_FAILED"
.LASF27:
	.string	"OTA_UPGRADE_FAILED"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
