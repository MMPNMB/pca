	.file	"ais_ota_port.c"
	.text
.Ltext0:
	.section	.text.unlikely.storage_clear,"ax",@progbits
.LCOLDB0:
	.section	.text.storage_clear,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.storage_clear
.Ltext_cold0:
	.section	.text.storage_clear
	.type	storage_clear, @function
storage_clear:
.LFB219:
	.file 1 "src/ais_ota_port.c"
	.loc 1 6231 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6232 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE219:
	.size	storage_clear, .-storage_clear
	.section	.text.unlikely.storage_clear
.LCOLDE0:
	.section	.text.storage_clear
.LHOTE0:
	.section	.text.unlikely.flash_event_handler_helper,"ax",@progbits
.LCOLDB1:
	.section	.text.flash_event_handler_helper,"ax",@progbits
.LHOTB1:
	.type	flash_event_handler_helper, @function
flash_event_handler_helper:
.LFB203:
	.loc 1 6080 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	flash_handler, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6080 0
	movl	8(%ebp), %edx
	.loc 1 6081 0
	movl	(%edx), %ecx
	cmpl	$2, %ecx
	jne	.L4
	.loc 1 6081 0 is_stmt 0 discriminator 1
	cmpl	$0, 4(%edx)
	jne	.L5
	.loc 1 6082 0 is_stmt 1
	testl	%eax, %eax
	je	.L3
	.loc 1 6082 0 is_stmt 0 discriminator 1
	movl	$0, 8(%ebp)
.LVL2:
	jmp	.L17
.L4:
	.loc 1 6083 0 is_stmt 1
	decl	%ecx
	jne	.L5
	.loc 1 6083 0 is_stmt 0 discriminator 1
	cmpl	$0, 4(%edx)
	jne	.L5
.LVL3:
.LBB8:
.LBB9:
	.loc 1 6084 0 is_stmt 1
	testl	%eax, %eax
	je	.L3
	movl	$2, 8(%ebp)
	jmp	.L17
.LVL4:
.L5:
.LBE9:
.LBE8:
	.loc 1 6086 0
	testl	%eax, %eax
	je	.L3
	.loc 1 6086 0 is_stmt 0 discriminator 1
	movl	$255, 8(%ebp)
.L17:
	.loc 1 6088 0 is_stmt 1 discriminator 1
	popl	%ebp
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6086 0 discriminator 1
	jmp	*%eax
.LVL5:
.L3:
	.cfi_restore_state
	.loc 1 6088 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE203:
	.size	flash_event_handler_helper, .-flash_event_handler_helper
	.section	.text.unlikely.flash_event_handler_helper
.LCOLDE1:
	.section	.text.flash_event_handler_helper
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"%s: no valid mac read\r\n"
.LC3:
	.string	"%s: valid mac read - 0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\r\n"
	.section	.text.unlikely.storage_read,"ax",@progbits
.LCOLDB4:
	.section	.text.storage_read,"ax",@progbits
.LHOTB4:
	.type	storage_read, @function
storage_read:
.LFB218:
	.loc 1 6213 0
	.cfi_startproc
.LVL6:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6215 0
	cmpw	$0, 12(%ebp)
	.loc 1 6213 0
	movl	16(%ebp), %eax
.LVL7:
	.loc 1 6215 0
	jne	.L24
	testl	%eax, %eax
	je	.L24
.LVL8:
.LBB12:
.LBB13:
	.loc 1 6217 0
	movb	s_dfu_settings+392, %dl
	cmpb	$-1, %dl
	jne	.L21
	cmpb	$-1, s_dfu_settings+393
	jne	.L22
	cmpb	$-1, s_dfu_settings+394
	jne	.L22
	cmpb	$-1, s_dfu_settings+395
	jne	.L22
	.loc 1 6218 0
	cmpb	$-1, s_dfu_settings+396
	jne	.L22
	cmpb	$-1, s_dfu_settings+397
	jmp	.L27
.L21:
	testb	%dl, %dl
	jne	.L22
	.loc 1 6219 0
	cmpb	$0, s_dfu_settings+393
	jne	.L22
	cmpb	$0, s_dfu_settings+394
	jne	.L22
	cmpb	$0, s_dfu_settings+395
	jne	.L22
	.loc 1 6220 0
	cmpb	$0, s_dfu_settings+396
	jne	.L22
	cmpb	$0, s_dfu_settings+397
.L27:
	jne	.L22
.LVL9:
	.loc 1 6221 0
	pushl	%eax
	pushl	%eax
	pushl	$__func__.7846
	pushl	$.LC2
	call	printf
.LVL10:
	addl	$16, %esp
	jmp	.L24
.LVL11:
.L22:
	.loc 1 6224 0
	movl	s_dfu_settings+392, %edx
	movl	%edx, 1(%eax)
	movl	s_dfu_settings+396, %edx
	movw	%dx, 5(%eax)
	.loc 1 6225 0
	movzbl	s_dfu_settings+397, %eax
.LVL12:
	pushl	%eax
	movzbl	s_dfu_settings+396, %eax
	pushl	%eax
	movzbl	s_dfu_settings+395, %eax
	pushl	%eax
	movzbl	s_dfu_settings+394, %eax
	pushl	%eax
	movzbl	s_dfu_settings+393, %eax
	pushl	%eax
	movzbl	s_dfu_settings+392, %eax
	pushl	%eax
	pushl	$__func__.7846
	pushl	$.LC3
	call	printf
.LVL13:
	addl	$32, %esp
	.loc 1 6227 0
	movl	$7, %eax
	jmp	.L20
.LVL14:
.L24:
.LBE13:
.LBE12:
	.loc 1 6215 0
	xorl	%eax, %eax
.L20:
	.loc 1 6229 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE218:
	.size	storage_read, .-storage_read
	.section	.text.unlikely.storage_read
.LCOLDE4:
	.section	.text.storage_read
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"Could not write the DFU settings page!"
.LC6:
	.string	"[%06d]<V> "
.LC7:
	.string	"\r\n"
	.section	.text.unlikely.ota_dfu_settings_write.part.4,"ax",@progbits
.LCOLDB8:
	.section	.text.ota_dfu_settings_write.part.4,"ax",@progbits
.LHOTB8:
	.type	ota_dfu_settings_write.part.4, @function
ota_dfu_settings_write.part.4:
.LFB227:
	.loc 1 6135 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.loc 1 6149 0
	leal	-412(%ebp), %edi
	.loc 1 6147 0
	movl	$s_dfu_settings, %esi
	.loc 1 6135 0
	subl	$416, %esp
	.loc 1 6135 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 6147 0
	call	nrf_dfu_settings_crc_get
.LVL15:
	.loc 1 6149 0
	movl	$100, %ecx
	.loc 1 6147 0
	movl	%eax, s_dfu_settings
	.loc 1 6150 0
	leal	-412(%ebp), %eax
	.loc 1 6149 0
	rep movsl
	.loc 1 6150 0
	pushl	$0
	pushl	$400
	pushl	%eax
	pushl	$1044480
	call	nrf_dfu_flash_store
.LVL16:
	.loc 1 6155 0
	addl	$16, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	je	.L29
	.loc 1 6157 0
	call	aos_now_ms
.LVL17:
	pushl	%edx
	pushl	$.LC5
	pushl	%eax
	pushl	$.LC6
	call	csp_printf
.LVL18:
	movl	$.LC5, (%esp)
	call	csp_printf
.LVL19:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL20:
	addl	$16, %esp
	.loc 1 6158 0
	movl	$3, %edx
.L29:
	.loc 1 6161 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
	je	.L30
	call	__stack_chk_fail
.LVL21:
.L30:
	leal	-8(%ebp), %esp
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE227:
	.size	ota_dfu_settings_write.part.4, .-ota_dfu_settings_write.part.4
	.section	.text.unlikely.ota_dfu_settings_write.part.4
.LCOLDE8:
	.section	.text.ota_dfu_settings_write.part.4
.LHOTE8:
	.section	.text.unlikely.ais_ota_get_setting_fw_offset,"ax",@progbits
.LCOLDB9:
	.section	.text.ais_ota_get_setting_fw_offset,"ax",@progbits
.LHOTB9:
	.globl	ais_ota_get_setting_fw_offset
	.type	ais_ota_get_setting_fw_offset, @function
ais_ota_get_setting_fw_offset:
.LFB200:
	.loc 1 6068 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6070 0
	movl	s_dfu_settings+116, %eax
	.loc 1 6068 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6070 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE200:
	.size	ais_ota_get_setting_fw_offset, .-ais_ota_get_setting_fw_offset
	.section	.text.unlikely.ais_ota_get_setting_fw_offset
.LCOLDE9:
	.section	.text.ais_ota_get_setting_fw_offset
.LHOTE9:
	.section	.text.unlikely.ais_ota_set_setting_fw_offset,"ax",@progbits
.LCOLDB10:
	.section	.text.ais_ota_set_setting_fw_offset,"ax",@progbits
.LHOTB10:
	.globl	ais_ota_set_setting_fw_offset
	.type	ais_ota_set_setting_fw_offset, @function
ais_ota_set_setting_fw_offset:
.LFB201:
	.loc 1 6072 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6073 0
	movl	8(%ebp), %eax
	.loc 1 6074 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6073 0
	movl	%eax, s_dfu_settings+116
	.loc 1 6074 0
	ret
	.cfi_endproc
.LFE201:
	.size	ais_ota_set_setting_fw_offset, .-ais_ota_set_setting_fw_offset
	.section	.text.unlikely.ais_ota_set_setting_fw_offset
.LCOLDE10:
	.section	.text.ais_ota_set_setting_fw_offset
.LHOTE10:
	.section	.text.unlikely.ais_ota_get_page_size,"ax",@progbits
.LCOLDB11:
	.section	.text.ais_ota_get_page_size,"ax",@progbits
.LHOTB11:
	.globl	ais_ota_get_page_size
	.type	ais_ota_get_page_size, @function
ais_ota_get_page_size:
.LFB202:
	.loc 1 6076 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6078 0
	movl	$4096, %eax
	.loc 1 6076 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6078 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE202:
	.size	ais_ota_get_page_size, .-ais_ota_get_page_size
	.section	.text.unlikely.ais_ota_get_page_size
.LCOLDE11:
	.section	.text.ais_ota_get_page_size
.LHOTE11:
	.section	.text.unlikely.ais_ota_flash_erase,"ax",@progbits
.LCOLDB12:
	.section	.text.ais_ota_flash_erase,"ax",@progbits
.LHOTB12:
	.globl	ais_ota_flash_erase
	.type	ais_ota_flash_erase, @function
ais_ota_flash_erase:
.LFB204:
	.loc 1 6090 0
	.cfi_startproc
.LVL23:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 6092 0
	movl	16(%ebp), %eax
	.loc 1 6093 0
	pushl	$flash_event_handler_helper
	pushl	12(%ebp)
	pushl	8(%ebp)
	.loc 1 6092 0
	movl	%eax, flash_handler
	.loc 1 6093 0
	call	nrf_dfu_flash_erase
.LVL24:
	.loc 1 6094 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL25:
	.loc 1 6095 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6094 0
	movzbl	%al, %eax
	.loc 1 6095 0
	ret
	.cfi_endproc
.LFE204:
	.size	ais_ota_flash_erase, .-ais_ota_flash_erase
	.section	.text.unlikely.ais_ota_flash_erase
.LCOLDE12:
	.section	.text.ais_ota_flash_erase
.LHOTE12:
	.section	.text.unlikely.ais_ota_flash_store,"ax",@progbits
.LCOLDB13:
	.section	.text.ais_ota_flash_store,"ax",@progbits
.LHOTB13:
	.globl	ais_ota_flash_store
	.type	ais_ota_flash_store, @function
ais_ota_flash_store:
.LFB205:
	.loc 1 6097 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6099 0
	movl	20(%ebp), %eax
	.loc 1 6100 0
	pushl	$flash_event_handler_helper
	.loc 1 6099 0
	movl	%eax, flash_handler
	.loc 1 6100 0
	movzwl	16(%ebp), %eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	nrf_dfu_flash_store
.LVL27:
	.loc 1 6101 0
	addl	$16, %esp
	testl	%eax, %eax
	setne	%al
.LVL28:
	.loc 1 6102 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6101 0
	movzbl	%al, %eax
	.loc 1 6102 0
	ret
	.cfi_endproc
.LFE205:
	.size	ais_ota_flash_store, .-ais_ota_flash_store
	.section	.text.unlikely.ais_ota_flash_store
.LCOLDE13:
	.section	.text.ais_ota_flash_store
.LHOTE13:
	.section	.text.unlikely.ais_ota_flash_init,"ax",@progbits
.LCOLDB14:
	.section	.text.ais_ota_flash_init,"ax",@progbits
.LHOTB14:
	.globl	ais_ota_flash_init
	.type	ais_ota_flash_init, @function
ais_ota_flash_init:
.LFB206:
	.loc 1 6104 0
	.cfi_startproc
	.loc 1 6106 0
	cmpb	$0, flash_inited.7797
	jne	.L49
	.loc 1 6104 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB16:
.LBB17:
	.loc 1 6107 0
	pushl	$0
	call	nrf_dfu_flash_init
.LVL29:
	.loc 1 6110 0
	movb	$1, flash_inited.7797
	addl	$16, %esp
.LBE17:
.LBE16:
	.loc 1 6112 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L49:
	ret
	.cfi_endproc
.LFE206:
	.size	ais_ota_flash_init, .-ais_ota_flash_init
	.section	.text.unlikely.ais_ota_flash_init
.LCOLDE14:
	.section	.text.ais_ota_flash_init
.LHOTE14:
	.section	.text.unlikely.ais_ota_settings_init,"ax",@progbits
.LCOLDB15:
	.section	.text.ais_ota_settings_init,"ax",@progbits
.LHOTB15:
	.globl	ais_ota_settings_init
	.type	ais_ota_settings_init, @function
ais_ota_settings_init:
.LFB207:
	.loc 1 6114 0
	.cfi_startproc
	.loc 1 6116 0
	cmpb	$0, settings_inited.7800
	jne	.L54
	.loc 1 6114 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
.LBB20:
.LBB21:
	.loc 1 6117 0
	pushl	$0
	call	nrf_dfu_settings_init
.LVL30:
	.loc 1 6120 0
	movb	$1, settings_inited.7800
	addl	$16, %esp
.LBE21:
.LBE20:
	.loc 1 6122 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
.L54:
	ret
	.cfi_endproc
.LFE207:
	.size	ais_ota_settings_init, .-ais_ota_settings_init
	.section	.text.unlikely.ais_ota_settings_init
.LCOLDE15:
	.section	.text.ais_ota_settings_init
.LHOTE15:
	.section	.text.unlikely.ais_ota_get_dst_addr,"ax",@progbits
.LCOLDB16:
	.section	.text.ais_ota_get_dst_addr,"ax",@progbits
.LHOTB16:
	.globl	ais_ota_get_dst_addr
	.type	ais_ota_get_dst_addr, @function
ais_ota_get_dst_addr:
.LFB208:
	.loc 1 6124 0
	.cfi_startproc
	.loc 1 6125 0
	movl	s_dfu_settings+36, %eax
	.loc 1 6124 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6125 0
	addl	$4095, %eax
	andl	$-4096, %eax
	addl	$69632, %eax
	.loc 1 6126 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE208:
	.size	ais_ota_get_dst_addr, .-ais_ota_get_dst_addr
	.section	.text.unlikely.ais_ota_get_dst_addr
.LCOLDE16:
	.section	.text.ais_ota_get_dst_addr
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"Writing settings..."
.LC18:
	.string	"Could not erase the settings page!"
	.section	.text.unlikely.ota_dfu_settings_write,"ax",@progbits
.LCOLDB19:
	.section	.text.ota_dfu_settings_write,"ax",@progbits
.LHOTB19:
	.globl	ota_dfu_settings_write
	.type	ota_dfu_settings_write, @function
ota_dfu_settings_write:
.LFB210:
	.loc 1 6136 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6138 0
	call	aos_now_ms
.LVL31:
	pushl	%edx
	pushl	$.LC17
	pushl	%eax
	pushl	$.LC6
	call	csp_printf
.LVL32:
	movl	$.LC17, (%esp)
	call	csp_printf
.LVL33:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL34:
	.loc 1 6139 0
	addl	$12, %esp
	pushl	$0
	pushl	$1
	pushl	$1044480
	call	nrf_dfu_flash_erase
.LVL35:
	.loc 1 6142 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L61
	.loc 1 6161 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	jmp	ota_dfu_settings_write.part.4
.LVL36:
.L61:
	.cfi_restore_state
	.loc 1 6144 0 discriminator 1
	call	aos_now_ms
.LVL37:
	pushl	%edx
	pushl	$.LC18
	pushl	%eax
	pushl	$.LC6
	call	csp_printf
.LVL38:
	movl	$.LC18, (%esp)
	call	csp_printf
.LVL39:
	movl	$.LC7, (%esp)
	call	csp_printf
.LVL40:
	.loc 1 6145 0 discriminator 1
	addl	$16, %esp
	.loc 1 6161 0 discriminator 1
	movl	$3, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE210:
	.size	ota_dfu_settings_write, .-ota_dfu_settings_write
	.section	.text.unlikely.ota_dfu_settings_write
.LCOLDE19:
	.section	.text.ota_dfu_settings_write
.LHOTE19:
	.section	.rodata.str1.1
.LC20:
	.string	"%s failed.\r\n"
	.section	.text.unlikely.storage_write,"ax",@progbits
.LCOLDB21:
	.section	.text.storage_write,"ax",@progbits
.LHOTB21:
	.type	storage_write, @function
storage_write:
.LFB217:
	.loc 1 6200 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6203 0
	movl	$s_dfu_settings+392, %eax
	.loc 1 6200 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.LVL42:
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 6203 0
	movl	%eax, %edi
	movl	16(%ebp), %ecx
	.loc 1 6200 0
	pushl	%esi
	.cfi_offset 6, -16
	.loc 1 6203 0
	leal	1(%ecx), %esi
	movl	$7, %ecx
	rep movsb
	.loc 1 6204 0
	call	ota_dfu_settings_write
.LVL43:
	.loc 1 6205 0
	testl	%eax, %eax
	movl	$7, %edx
	je	.L64
.LVL44:
.LVL45:
.LBB24:
.LBB25:
	.loc 1 6206 0
	pushl	%eax
	pushl	%eax
	pushl	$__func__.7838
	pushl	$.LC20
	call	printf
.LVL46:
	addl	$16, %esp
	xorl	%edx, %edx
.L64:
.LBE25:
.LBE24:
	.loc 1 6210 0
	leal	-8(%ebp), %esp
	movl	%edx, %eax
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE217:
	.size	storage_write, .-storage_write
	.section	.text.unlikely.storage_write
.LCOLDE21:
	.section	.text.storage_write
.LHOTE21:
	.section	.text.unlikely.ais_ota_settings_write,"ax",@progbits
.LCOLDB22:
	.section	.text.ais_ota_settings_write,"ax",@progbits
.LHOTB22:
	.globl	ais_ota_settings_write
	.type	ais_ota_settings_write, @function
ais_ota_settings_write:
.LFB211:
	.loc 1 6163 0
	.cfi_startproc
.LVL47:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6166 0
	call	ota_dfu_settings_write
.LVL48:
	.loc 1 6167 0
	testl	%eax, %eax
	.loc 1 6168 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6167 0
	setne	%al
.LVL49:
	movzbl	%al, %eax
	.loc 1 6168 0
	ret
	.cfi_endproc
.LFE211:
	.size	ais_ota_settings_write, .-ais_ota_settings_write
	.section	.text.unlikely.ais_ota_settings_write
.LCOLDE22:
	.section	.text.ais_ota_settings_write
.LHOTE22:
	.section	.text.unlikely.ais_ota_check_if_resume,"ax",@progbits
.LCOLDB23:
	.section	.text.ais_ota_check_if_resume,"ax",@progbits
.LHOTB23:
	.globl	ais_ota_check_if_resume
	.type	ais_ota_check_if_resume, @function
ais_ota_check_if_resume:
.LFB212:
	.loc 1 6171 0
	.cfi_startproc
.LVL50:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
	.loc 1 6172 0
	movzwl	12(%ebp), %eax
	pushl	%eax
	pushl	8(%ebp)
	pushl	$s_dfu_settings+129
	call	memcmp
.LVL51:
	addl	$16, %esp
	testl	%eax, %eax
	sete	%al
	.loc 1 6173 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE212:
	.size	ais_ota_check_if_resume, .-ais_ota_check_if_resume
	.section	.text.unlikely.ais_ota_check_if_resume
.LCOLDE23:
	.section	.text.ais_ota_check_if_resume
.LHOTE23:
	.section	.text.unlikely.ais_ota_update_fw_version,"ax",@progbits
.LCOLDB24:
	.section	.text.ais_ota_update_fw_version,"ax",@progbits
.LHOTB24:
	.globl	ais_ota_update_fw_version
	.type	ais_ota_update_fw_version, @function
ais_ota_update_fw_version:
.LFB213:
	.loc 1 6175 0
	.cfi_startproc
.LVL52:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6176 0
	movl	$s_dfu_settings+129, %eax
	.loc 1 6175 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 6176 0
	movl	%eax, %edi
	movzwl	12(%ebp), %ecx
	.loc 1 6175 0
	pushl	%esi
	.cfi_offset 6, -16
	.loc 1 6175 0
	movl	8(%ebp), %esi
	.loc 1 6176 0
	rep movsb
	.loc 1 6177 0
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE213:
	.size	ais_ota_update_fw_version, .-ais_ota_update_fw_version
	.section	.text.unlikely.ais_ota_update_fw_version
.LCOLDE24:
	.section	.text.ais_ota_update_fw_version
.LHOTE24:
	.section	.text.unlikely.ais_ota_check_if_update_finished,"ax",@progbits
.LCOLDB25:
	.section	.text.ais_ota_check_if_update_finished,"ax",@progbits
.LHOTB25:
	.globl	ais_ota_check_if_update_finished
	.type	ais_ota_check_if_update_finished, @function
ais_ota_check_if_update_finished:
.LFB214:
	.loc 1 6180 0
	.cfi_startproc
	.loc 1 6181 0
	cmpb	$-85, s_dfu_settings+128
	.loc 1 6180 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6182 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6181 0
	sete	%al
	.loc 1 6182 0
	ret
	.cfi_endproc
.LFE214:
	.size	ais_ota_check_if_update_finished, .-ais_ota_check_if_update_finished
	.section	.text.unlikely.ais_ota_check_if_update_finished
.LCOLDE25:
	.section	.text.ais_ota_check_if_update_finished
.LHOTE25:
	.section	.text.unlikely.ais_ota_update_settings_after_update_finished,"ax",@progbits
.LCOLDB26:
	.section	.text.ais_ota_update_settings_after_update_finished,"ax",@progbits
.LHOTB26:
	.globl	ais_ota_update_settings_after_update_finished
	.type	ais_ota_update_settings_after_update_finished, @function
ais_ota_update_settings_after_update_finished:
.LFB215:
	.loc 1 6184 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6186 0
	movl	$s_dfu_settings+129, %edx
	movl	$15, %ecx
	movb	$-1, %al
	.loc 1 6185 0
	movb	$-1, s_dfu_settings+128
	.loc 1 6187 0
	movl	$0, s_dfu_settings+116
	.loc 1 6184 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.cfi_offset 7, -12
	.loc 1 6186 0
	movl	%edx, %edi
	rep stosb
	.loc 1 6188 0
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE215:
	.size	ais_ota_update_settings_after_update_finished, .-ais_ota_update_settings_after_update_finished
	.section	.text.unlikely.ais_ota_update_settings_after_update_finished
.LCOLDE26:
	.section	.text.ais_ota_update_settings_after_update_finished
.LHOTE26:
	.section	.text.unlikely.ais_ota_update_setting_after_xfer_finished,"ax",@progbits
.LCOLDB27:
	.section	.text.ais_ota_update_setting_after_xfer_finished,"ax",@progbits
.LHOTB27:
	.globl	ais_ota_update_setting_after_xfer_finished
	.type	ais_ota_update_setting_after_xfer_finished, @function
ais_ota_update_setting_after_xfer_finished:
.LFB216:
	.loc 1 6190 0
	.cfi_startproc
.LVL53:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 6192 0
	movl	$1, s_dfu_settings+28
	.loc 1 6194 0
	movl	$1, s_dfu_settings+68
	.loc 1 6190 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6193 0
	movl	8(%ebp), %eax
	movl	%eax, s_dfu_settings+60
	.loc 1 6195 0
	movl	12(%ebp), %eax
	.loc 1 6197 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6195 0
	movl	%eax, s_dfu_settings+64
	.loc 1 6197 0
	ret
	.cfi_endproc
.LFE216:
	.size	ais_ota_update_setting_after_xfer_finished, .-ais_ota_update_setting_after_xfer_finished
	.section	.text.unlikely.ais_ota_update_setting_after_xfer_finished
.LCOLDE27:
	.section	.text.ais_ota_update_setting_after_xfer_finished
.LHOTE27:
	.section	.text.unlikely.ais_ota_bt_storage_init,"ax",@progbits
.LCOLDB28:
	.section	.text.ais_ota_bt_storage_init,"ax",@progbits
.LHOTB28:
	.globl	ais_ota_bt_storage_init
	.type	ais_ota_bt_storage_init, @function
ais_ota_bt_storage_init:
.LFB220:
	.loc 1 6234 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 6240 0
	call	ais_ota_flash_init
.LVL54:
	.loc 1 6241 0
	call	ais_ota_settings_init
.LVL55:
	.loc 1 6242 0
	subl	$12, %esp
	pushl	$storage.7853
	call	bt_storage_register
.LVL56:
	.loc 1 6244 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE220:
	.size	ais_ota_bt_storage_init, .-ais_ota_bt_storage_init
	.section	.text.unlikely.ais_ota_bt_storage_init
.LCOLDE28:
	.section	.text.ais_ota_bt_storage_init
.LHOTE28:
	.section	.rodata.str1.1
.LC29:
	.string	"Failed to get ble local address.\r"
	.section	.text.unlikely.ais_ota_get_local_addr,"ax",@progbits
.LCOLDB30:
	.section	.text.ais_ota_get_local_addr,"ax",@progbits
.LHOTB30:
	.globl	ais_ota_get_local_addr
	.type	ais_ota_get_local_addr, @function
ais_ota_get_local_addr:
.LFB221:
	.loc 1 6246 0
	.cfi_startproc
.LVL57:
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
	.loc 1 6246 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 6248 0
	testl	%ebx, %ebx
	je	.L83
	.loc 1 6249 0
	leal	-35(%ebp), %esi
	subl	$12, %esp
	pushl	%esi
	call	bt_le_oob_get_local
.LVL58:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L85
	.loc 1 6250 0
	subl	$12, %esp
	pushl	$.LC29
	call	puts
.LVL59:
	.loc 1 6251 0
	addl	$16, %esp
	orl	$-1, %eax
	jmp	.L83
.L85:
	.loc 1 6253 0
	movl	$7, %ecx
	movl	%ebx, %edi
	rep movsb
.L83:
	.loc 1 6255 0
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L87
	call	__stack_chk_fail
.LVL60:
.L87:
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
.LFE221:
	.size	ais_ota_get_local_addr, .-ais_ota_get_local_addr
	.section	.text.unlikely.ais_ota_get_local_addr
.LCOLDE30:
	.section	.text.ais_ota_get_local_addr
.LHOTE30:
	.section	.text.unlikely.ais_ota_check_if_bins_supported,"ax",@progbits
.LCOLDB31:
	.section	.text.ais_ota_check_if_bins_supported,"ax",@progbits
.LHOTB31:
	.globl	ais_ota_check_if_bins_supported
	.type	ais_ota_check_if_bins_supported, @function
ais_ota_check_if_bins_supported:
.LFB222:
	.loc 1 6258 0
	.cfi_startproc
	.loc 1 6259 0
	cmpl	$1, s_dfu_settings+4
	.loc 1 6258 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 6264 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 6259 0
	sete	%al
	.loc 1 6264 0
	ret
	.cfi_endproc
.LFE222:
	.size	ais_ota_check_if_bins_supported, .-ais_ota_check_if_bins_supported
	.section	.text.unlikely.ais_ota_check_if_bins_supported
.LCOLDE31:
	.section	.text.ais_ota_check_if_bins_supported
.LHOTE31:
	.section	.rodata.__func__.7846,"a",@progbits
	.align 4
	.type	__func__.7846, @object
	.size	__func__.7846, 13
__func__.7846:
	.string	"storage_read"
	.section	.rodata.__func__.7838,"a",@progbits
	.align 4
	.type	__func__.7838, @object
	.size	__func__.7838, 14
__func__.7838:
	.string	"storage_write"
	.section	.rodata.storage.7853,"a",@progbits
	.align 4
	.type	storage.7853, @object
	.size	storage.7853, 12
storage.7853:
	.long	storage_read
	.long	storage_write
	.long	storage_clear
	.section	.bss.settings_inited.7800,"aw",@nobits
	.type	settings_inited.7800, @object
	.size	settings_inited.7800, 1
settings_inited.7800:
	.zero	1
	.section	.bss.flash_inited.7797,"aw",@nobits
	.type	flash_inited.7797, @object
	.size	flash_inited.7797, 1
flash_inited.7797:
	.zero	1
	.section	.bss.flash_handler,"aw",@nobits
	.align 4
	.type	flash_handler, @object
	.size	flash_handler, 4
flash_handler:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.storage_clear
.Letext_cold0:
	.file 2 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xf39
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF159
	.byte	0xc
	.long	.LASF160
	.long	.LASF161
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF3
	.byte	0x1
	.byte	0x2
	.long	0x37
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF4
	.byte	0x1
	.byte	0x4
	.long	0x50
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x5
	.long	0x62
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.long	.LASF8
	.byte	0x1
	.byte	0x6
	.long	0x74
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x1
	.byte	0x14
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x16
	.long	0x45
	.uleb128 0x3
	.long	.LASF15
	.byte	0x1
	.byte	0x17
	.long	0x57
	.uleb128 0x3
	.long	.LASF16
	.byte	0x1
	.byte	0x18
	.long	0x69
	.uleb128 0x3
	.long	.LASF17
	.byte	0x1
	.byte	0x30
	.long	0x90
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF18
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0x4a
	.long	0x89
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF20
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x6
	.long	0xe9
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.value	0x156
	.long	0xd5
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.value	0x27b
	.long	0x37
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.value	0x27c
	.long	0x50
	.uleb128 0x8
	.long	.LASF30
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x4a2
	.long	0x149
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
	.byte	0
	.uleb128 0x8
	.long	.LASF31
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x4a9
	.long	0x179
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
	.byte	0
	.uleb128 0xa
	.byte	0x6
	.byte	0x1
	.value	0x556
	.long	0x190
	.uleb128 0xb
	.string	"val"
	.byte	0x1
	.value	0x557
	.long	0x190
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x101
	.long	0x1a0
	.uleb128 0xd
	.long	0xe0
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF37
	.byte	0x1
	.value	0x558
	.long	0x179
	.uleb128 0xa
	.byte	0x7
	.byte	0x1
	.value	0x559
	.long	0x1ce
	.uleb128 0xe
	.long	.LASF38
	.byte	0x1
	.value	0x55a
	.long	0x101
	.byte	0
	.uleb128 0xb
	.string	"a"
	.byte	0x1
	.value	0x55b
	.long	0x1a0
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF39
	.byte	0x1
	.value	0x55c
	.long	0x1ac
	.uleb128 0xf
	.byte	0x4
	.long	0x1e0
	.uleb128 0x6
	.long	0x1ce
	.uleb128 0x10
	.long	.LASF106
	.byte	0x7
	.byte	0x1
	.value	0xaeb
	.long	0x200
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0xaec
	.long	0x1ce
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF41
	.uleb128 0x11
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xb36
	.long	0x233
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
	.byte	0xff
	.byte	0
	.uleb128 0x7
	.long	.LASF47
	.byte	0x1
	.value	0xb3c
	.long	0x207
	.uleb128 0x11
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xb3d
	.long	0x259
	.uleb128 0x9
	.long	.LASF48
	.byte	0
	.uleb128 0x9
	.long	.LASF49
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF50
	.byte	0x1
	.value	0xb40
	.long	0x23f
	.uleb128 0x11
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xb41
	.long	0x27f
	.uleb128 0x9
	.long	.LASF51
	.byte	0
	.uleb128 0x9
	.long	.LASF52
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.long	.LASF53
	.byte	0x1
	.value	0xb44
	.long	0x265
	.uleb128 0x7
	.long	.LASF54
	.byte	0x1
	.value	0xb45
	.long	0x297
	.uleb128 0xf
	.byte	0x4
	.long	0x29d
	.uleb128 0x12
	.long	0x2a8
	.uleb128 0x13
	.long	0x233
	.byte	0
	.uleb128 0x7
	.long	.LASF55
	.byte	0x1
	.value	0xb46
	.long	0x297
	.uleb128 0x14
	.long	0xad
	.uleb128 0x7
	.long	.LASF56
	.byte	0x1
	.value	0x152b
	.long	0xb8
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.value	0x154e
	.long	0x2dc
	.uleb128 0xb
	.string	"crc"
	.byte	0x1
	.value	0x1550
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF57
	.byte	0x1
	.value	0x1551
	.long	0x2c5
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.value	0x1552
	.long	0x2ff
	.uleb128 0xb
	.string	"crc"
	.byte	0x1
	.value	0x1554
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF58
	.byte	0x1
	.value	0x1555
	.long	0x2e8
	.uleb128 0xa
	.byte	0xc
	.byte	0x1
	.value	0x1556
	.long	0x33c
	.uleb128 0xe
	.long	.LASF59
	.byte	0x1
	.value	0x1558
	.long	0xb8
	.byte	0
	.uleb128 0xe
	.long	.LASF60
	.byte	0x1
	.value	0x1559
	.long	0xb8
	.byte	0x4
	.uleb128 0xe
	.long	.LASF61
	.byte	0x1
	.value	0x155a
	.long	0xb8
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF62
	.byte	0x1
	.value	0x155b
	.long	0x30b
	.uleb128 0xa
	.byte	0x10
	.byte	0x1
	.value	0x1564
	.long	0x386
	.uleb128 0xe
	.long	.LASF63
	.byte	0x1
	.value	0x1566
	.long	0xb8
	.byte	0
	.uleb128 0xe
	.long	.LASF64
	.byte	0x1
	.value	0x1567
	.long	0xb8
	.byte	0x4
	.uleb128 0xe
	.long	.LASF65
	.byte	0x1
	.value	0x1568
	.long	0xb8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF66
	.byte	0x1
	.value	0x1569
	.long	0xb8
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.value	0x156b
	.long	0x39d
	.uleb128 0xe
	.long	.LASF67
	.byte	0x1
	.value	0x156d
	.long	0xb8
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x10
	.byte	0x1
	.value	0x1562
	.long	0x3b1
	.uleb128 0x16
	.long	0x348
	.uleb128 0x16
	.long	0x386
	.byte	0
	.uleb128 0xa
	.byte	0x20
	.byte	0x1
	.value	0x155c
	.long	0x3f5
	.uleb128 0xe
	.long	.LASF68
	.byte	0x1
	.value	0x155e
	.long	0xb8
	.byte	0
	.uleb128 0xe
	.long	.LASF69
	.byte	0x1
	.value	0x155f
	.long	0xb8
	.byte	0x4
	.uleb128 0xe
	.long	.LASF70
	.byte	0x1
	.value	0x1560
	.long	0xb8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF71
	.byte	0x1
	.value	0x1561
	.long	0xb8
	.byte	0xc
	.uleb128 0x17
	.long	0x39d
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0x1
	.value	0x1570
	.long	0x3b1
	.uleb128 0x18
	.value	0x190
	.byte	0x1
	.value	0x1571
	.long	0x520
	.uleb128 0xb
	.string	"crc"
	.byte	0x1
	.value	0x1573
	.long	0xb8
	.byte	0
	.uleb128 0xe
	.long	.LASF73
	.byte	0x1
	.value	0x1574
	.long	0xb8
	.byte	0x4
	.uleb128 0xe
	.long	.LASF74
	.byte	0x1
	.value	0x1575
	.long	0xb8
	.byte	0x8
	.uleb128 0xe
	.long	.LASF75
	.byte	0x1
	.value	0x1576
	.long	0xb8
	.byte	0xc
	.uleb128 0xe
	.long	.LASF76
	.byte	0x1
	.value	0x1577
	.long	0xb8
	.byte	0x10
	.uleb128 0xe
	.long	.LASF77
	.byte	0x1
	.value	0x1578
	.long	0xb8
	.byte	0x14
	.uleb128 0xe
	.long	.LASF78
	.byte	0x1
	.value	0x1579
	.long	0xb8
	.byte	0x18
	.uleb128 0xe
	.long	.LASF79
	.byte	0x1
	.value	0x157a
	.long	0xb8
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF80
	.byte	0x1
	.value	0x157b
	.long	0xb8
	.byte	0x20
	.uleb128 0xe
	.long	.LASF81
	.byte	0x1
	.value	0x157c
	.long	0x33c
	.byte	0x24
	.uleb128 0xe
	.long	.LASF82
	.byte	0x1
	.value	0x157d
	.long	0x33c
	.byte	0x30
	.uleb128 0xe
	.long	.LASF83
	.byte	0x1
	.value	0x157e
	.long	0x33c
	.byte	0x3c
	.uleb128 0xe
	.long	.LASF84
	.byte	0x1
	.value	0x157f
	.long	0x33c
	.byte	0x48
	.uleb128 0xe
	.long	.LASF85
	.byte	0x1
	.value	0x1580
	.long	0xb8
	.byte	0x54
	.uleb128 0xe
	.long	.LASF86
	.byte	0x1
	.value	0x1581
	.long	0xb8
	.byte	0x58
	.uleb128 0xe
	.long	.LASF87
	.byte	0x1
	.value	0x1582
	.long	0x3f5
	.byte	0x5c
	.uleb128 0xe
	.long	.LASF88
	.byte	0x1
	.value	0x1583
	.long	0xb8
	.byte	0x7c
	.uleb128 0xe
	.long	.LASF89
	.byte	0x1
	.value	0x1584
	.long	0x520
	.byte	0x80
	.uleb128 0x19
	.long	.LASF90
	.byte	0x1
	.value	0x1585
	.long	0x2dc
	.value	0x180
	.uleb128 0x19
	.long	.LASF91
	.byte	0x1
	.value	0x1586
	.long	0x2ff
	.value	0x184
	.uleb128 0x1a
	.string	"mac"
	.byte	0x1
	.value	0x1587
	.long	0x530
	.value	0x188
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x530
	.uleb128 0xd
	.long	0xe0
	.byte	0xff
	.byte	0
	.uleb128 0xc
	.long	0x97
	.long	0x540
	.uleb128 0xd
	.long	0xe0
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.long	.LASF92
	.byte	0x1
	.value	0x1588
	.long	0x401
	.uleb128 0x11
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x158a
	.long	0x56c
	.uleb128 0x9
	.long	.LASF93
	.byte	0
	.uleb128 0x9
	.long	.LASF94
	.byte	0x1
	.uleb128 0x9
	.long	.LASF95
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x1
	.value	0x158e
	.long	0x54c
	.uleb128 0xa
	.byte	0x14
	.byte	0x1
	.value	0x158f
	.long	0x5c2
	.uleb128 0xb
	.string	"id"
	.byte	0x1
	.value	0x1591
	.long	0x56c
	.byte	0
	.uleb128 0xe
	.long	.LASF97
	.byte	0x1
	.value	0x1592
	.long	0x2b9
	.byte	0x4
	.uleb128 0xe
	.long	.LASF40
	.byte	0x1
	.value	0x1593
	.long	0xb8
	.byte	0x8
	.uleb128 0xb
	.string	"len"
	.byte	0x1
	.value	0x1594
	.long	0xb8
	.byte	0xc
	.uleb128 0xe
	.long	.LASF98
	.byte	0x1
	.value	0x1595
	.long	0xe7
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.long	.LASF99
	.byte	0x1
	.value	0x1596
	.long	0x578
	.uleb128 0xf
	.byte	0x4
	.long	0x5d4
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0x4
	.long	0x97
	.uleb128 0x11
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0x1791
	.long	0x60d
	.uleb128 0x9
	.long	.LASF100
	.byte	0
	.uleb128 0x9
	.long	.LASF101
	.byte	0x1
	.uleb128 0x9
	.long	.LASF102
	.byte	0x2
	.uleb128 0x9
	.long	.LASF103
	.byte	0x3
	.uleb128 0x9
	.long	.LASF104
	.byte	0x4
	.uleb128 0x9
	.long	.LASF105
	.byte	0x5
	.byte	0
	.uleb128 0x10
	.long	.LASF107
	.byte	0xc
	.byte	0x1
	.value	0x17a4
	.long	0x642
	.uleb128 0xe
	.long	.LASF108
	.byte	0x1
	.value	0x17a5
	.long	0x660
	.byte	0
	.uleb128 0xe
	.long	.LASF109
	.byte	0x1
	.value	0x17a7
	.long	0x684
	.byte	0x4
	.uleb128 0xe
	.long	.LASF110
	.byte	0x1
	.value	0x17a9
	.long	0x699
	.byte	0x8
	.byte	0
	.uleb128 0x1c
	.long	0xf5
	.long	0x660
	.uleb128 0x13
	.long	0x1da
	.uleb128 0x13
	.long	0x10d
	.uleb128 0x13
	.long	0xe7
	.uleb128 0x13
	.long	0xc3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x642
	.uleb128 0x1c
	.long	0xf5
	.long	0x684
	.uleb128 0x13
	.long	0x1da
	.uleb128 0x13
	.long	0x10d
	.uleb128 0x13
	.long	0x5ce
	.uleb128 0x13
	.long	0xc3
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x666
	.uleb128 0x1c
	.long	0x89
	.long	0x699
	.uleb128 0x13
	.long	0x1da
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x68a
	.uleb128 0x1d
	.long	.LASF162
	.byte	0x1
	.value	0x17bf
	.byte	0x1
	.long	0x6b9
	.uleb128 0x1e
	.string	"evt"
	.byte	0x1
	.value	0x17bf
	.long	0x6c4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x6bf
	.uleb128 0x6
	.long	0x5c2
	.uleb128 0x6
	.long	0x6b9
	.uleb128 0x1f
	.long	.LASF118
	.byte	0x1
	.value	0x1843
	.long	0xf5
	.byte	0x1
	.long	0x724
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.value	0x1843
	.long	0x1da
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.value	0x1843
	.long	0x10d
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.value	0x1843
	.long	0xe7
	.uleb128 0x20
	.long	.LASF112
	.byte	0x1
	.value	0x1844
	.long	0xc3
	.uleb128 0x21
	.string	"mac"
	.byte	0x1
	.value	0x1846
	.long	0x5d5
	.uleb128 0x22
	.long	.LASF113
	.long	0x734
	.long	.LASF118
	.byte	0
	.uleb128 0xc
	.long	0xf0
	.long	0x734
	.uleb128 0xd
	.long	0xe0
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.long	0x724
	.uleb128 0x23
	.long	.LASF115
	.byte	0x1
	.value	0x17d7
	.byte	0x1
	.long	0x753
	.uleb128 0x24
	.long	.LASF114
	.byte	0x1
	.value	0x17d9
	.long	0x97
	.byte	0
	.uleb128 0x23
	.long	.LASF116
	.byte	0x1
	.value	0x17e1
	.byte	0x1
	.long	0x76d
	.uleb128 0x24
	.long	.LASF117
	.byte	0x1
	.value	0x17e3
	.long	0x97
	.byte	0
	.uleb128 0x1f
	.long	.LASF119
	.byte	0x1
	.value	0x17af
	.long	0xb8
	.byte	0x1
	.long	0x797
	.uleb128 0x1e
	.string	"val"
	.byte	0x1
	.value	0x17af
	.long	0xb8
	.uleb128 0x20
	.long	.LASF120
	.byte	0x1
	.value	0x17af
	.long	0xb8
	.byte	0
	.uleb128 0x25
	.long	.LASF163
	.byte	0x1
	.value	0x17bb
	.long	0xb8
	.byte	0x1
	.uleb128 0x26
	.long	.LASF164
	.byte	0x1
	.value	0x17f7
	.long	0x2b9
	.byte	0x1
	.long	0x7ce
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x17f9
	.long	0x2b9
	.uleb128 0x24
	.long	.LASF122
	.byte	0x1
	.value	0x1804
	.long	0x540
	.byte	0
	.uleb128 0x1f
	.long	.LASF123
	.byte	0x1
	.value	0x1836
	.long	0xf5
	.byte	0x1
	.long	0x835
	.uleb128 0x20
	.long	.LASF40
	.byte	0x1
	.value	0x1836
	.long	0x1da
	.uleb128 0x1e
	.string	"key"
	.byte	0x1
	.value	0x1836
	.long	0x10d
	.uleb128 0x20
	.long	.LASF111
	.byte	0x1
	.value	0x1837
	.long	0x5ce
	.uleb128 0x20
	.long	.LASF112
	.byte	0x1
	.value	0x1837
	.long	0xc3
	.uleb128 0x21
	.string	"mac"
	.byte	0x1
	.value	0x1839
	.long	0x5d5
	.uleb128 0x24
	.long	.LASF121
	.byte	0x1
	.value	0x183a
	.long	0xb8
	.uleb128 0x22
	.long	.LASF113
	.long	0x845
	.long	.LASF123
	.byte	0
	.uleb128 0xc
	.long	0xf0
	.long	0x845
	.uleb128 0xd
	.long	0xe0
	.byte	0xd
	.byte	0
	.uleb128 0x6
	.long	0x835
	.uleb128 0x27
	.long	.LASF165
	.byte	0x1
	.value	0x1856
	.long	0x89
	.long	.LFB219
	.long	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.long	0x874
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x1856
	.long	0x1da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	0x69f
	.long	.LFB203
	.long	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.long	0x8a4
	.uleb128 0x2a
	.long	0x6ac
	.long	.LLST0
	.uleb128 0x2b
	.long	.LBB8
	.long	.LBE8-.LBB8
	.uleb128 0x2a
	.long	0x6ac
	.long	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x6c9
	.long	.LFB218
	.long	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.long	0x942
	.uleb128 0x2d
	.long	0x6da
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	0x6e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	0x6f2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	0x6fe
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2e
	.long	0x70a
	.uleb128 0x2f
	.long	0x716
	.uleb128 0x5
	.byte	0x3
	.long	__func__.7846
	.uleb128 0x2b
	.long	.LBB12
	.long	.LBE12-.LBB12
	.uleb128 0x2a
	.long	0x6da
	.long	.LLST2
	.uleb128 0x2a
	.long	0x6e6
	.long	.LLST3
	.uleb128 0x2a
	.long	0x6fe
	.long	.LLST4
	.uleb128 0x2a
	.long	0x6f2
	.long	.LLST5
	.uleb128 0x2b
	.long	.LBB13
	.long	.LBE13-.LBB13
	.uleb128 0x2e
	.long	0x70a
	.uleb128 0x2f
	.long	0x716
	.uleb128 0x5
	.byte	0x3
	.long	__func__.7846
	.uleb128 0x30
	.long	.LVL10
	.long	0xea1
	.uleb128 0x30
	.long	.LVL13
	.long	0xea1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x7a4
	.long	.LFB227
	.long	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a7
	.uleb128 0x31
	.long	0x7b5
	.long	.LLST6
	.uleb128 0x2f
	.long	0x7c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -420
	.uleb128 0x30
	.long	.LVL15
	.long	0xead
	.uleb128 0x30
	.long	.LVL16
	.long	0xeb9
	.uleb128 0x30
	.long	.LVL17
	.long	0xec5
	.uleb128 0x30
	.long	.LVL18
	.long	0xed1
	.uleb128 0x30
	.long	.LVL19
	.long	0xed1
	.uleb128 0x30
	.long	.LVL20
	.long	0xed1
	.uleb128 0x30
	.long	.LVL21
	.long	0xedd
	.byte	0
	.uleb128 0x32
	.long	.LASF129
	.byte	0x1
	.value	0x17b3
	.long	0xb8
	.long	.LFB200
	.long	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF133
	.byte	0x1
	.value	0x17b7
	.long	.LFB201
	.long	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.long	0x9e3
	.uleb128 0x28
	.long	.LASF124
	.byte	0x1
	.value	0x17b7
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x34
	.long	0x797
	.long	.LFB202
	.long	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.long	.LASF126
	.byte	0x1
	.value	0x17c9
	.long	0x259
	.long	.LFB204
	.long	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.long	0xa52
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x17c9
	.long	0xa52
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF125
	.byte	0x1
	.value	0x17c9
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"cb"
	.byte	0x1
	.value	0x17c9
	.long	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x37
	.long	.LASF121
	.byte	0x1
	.value	0x17cb
	.long	0xb8
	.long	.LLST7
	.uleb128 0x30
	.long	.LVL24
	.long	0xee6
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0xa58
	.uleb128 0x6
	.long	0xb8
	.uleb128 0x35
	.long	.LASF127
	.byte	0x1
	.value	0x17d0
	.long	0x259
	.long	.LFB205
	.long	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.long	0xacc
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x17d0
	.long	0xa52
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF128
	.byte	0x1
	.value	0x17d0
	.long	0xa52
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x36
	.string	"len"
	.byte	0x1
	.value	0x17d0
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x36
	.string	"cb"
	.byte	0x1
	.value	0x17d0
	.long	0x28b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x37
	.long	.LASF121
	.byte	0x1
	.value	0x17d2
	.long	0xb8
	.long	.LLST8
	.uleb128 0x30
	.long	.LVL27
	.long	0xeb9
	.byte	0
	.uleb128 0x2c
	.long	0x739
	.long	.LFB206
	.long	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.long	0xb09
	.uleb128 0x2f
	.long	0x746
	.uleb128 0x5
	.byte	0x3
	.long	flash_inited.7797
	.uleb128 0x2b
	.long	.LBB17
	.long	.LBE17-.LBB17
	.uleb128 0x2f
	.long	0x746
	.uleb128 0x5
	.byte	0x3
	.long	flash_inited.7797
	.uleb128 0x30
	.long	.LVL29
	.long	0xef2
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0x753
	.long	.LFB207
	.long	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.long	0xb46
	.uleb128 0x2f
	.long	0x760
	.uleb128 0x5
	.byte	0x3
	.long	settings_inited.7800
	.uleb128 0x2b
	.long	.LBB21
	.long	.LBE21-.LBB21
	.uleb128 0x2f
	.long	0x760
	.uleb128 0x5
	.byte	0x3
	.long	settings_inited.7800
	.uleb128 0x30
	.long	.LVL30
	.long	0xefe
	.byte	0
	.byte	0
	.uleb128 0x32
	.long	.LASF130
	.byte	0x1
	.value	0x17eb
	.long	0xb8
	.long	.LFB208
	.long	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	0x7a4
	.long	.LFB210
	.long	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.long	0xbd8
	.uleb128 0x31
	.long	0x7b5
	.long	.LLST9
	.uleb128 0x2e
	.long	0x7c1
	.uleb128 0x30
	.long	.LVL31
	.long	0xec5
	.uleb128 0x30
	.long	.LVL32
	.long	0xed1
	.uleb128 0x30
	.long	.LVL33
	.long	0xed1
	.uleb128 0x30
	.long	.LVL34
	.long	0xed1
	.uleb128 0x30
	.long	.LVL35
	.long	0xee6
	.uleb128 0x38
	.long	.LVL36
	.long	0x942
	.uleb128 0x30
	.long	.LVL37
	.long	0xec5
	.uleb128 0x30
	.long	.LVL38
	.long	0xed1
	.uleb128 0x30
	.long	.LVL39
	.long	0xed1
	.uleb128 0x30
	.long	.LVL40
	.long	0xed1
	.byte	0
	.uleb128 0x2c
	.long	0x7ce
	.long	.LFB217
	.long	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.long	0xc8c
	.uleb128 0x2d
	.long	0x7df
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	0x7eb
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2d
	.long	0x7f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	0x803
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x31
	.long	0x80f
	.long	.LLST10
	.uleb128 0x31
	.long	0x81b
	.long	.LLST11
	.uleb128 0x2f
	.long	0x827
	.uleb128 0x5
	.byte	0x3
	.long	__func__.7838
	.uleb128 0x39
	.long	.LBB24
	.long	.LBE24-.LBB24
	.long	0xc82
	.uleb128 0x2a
	.long	0x7df
	.long	.LLST12
	.uleb128 0x2a
	.long	0x7eb
	.long	.LLST13
	.uleb128 0x2a
	.long	0x7f7
	.long	.LLST14
	.uleb128 0x2a
	.long	0x803
	.long	.LLST15
	.uleb128 0x2b
	.long	.LBB25
	.long	.LBE25-.LBB25
	.uleb128 0x2e
	.long	0x80f
	.uleb128 0x2e
	.long	0x81b
	.uleb128 0x2f
	.long	0x827
	.uleb128 0x5
	.byte	0x3
	.long	__func__.7838
	.uleb128 0x30
	.long	.LVL46
	.long	0xea1
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL43
	.long	0x7a4
	.byte	0
	.uleb128 0x35
	.long	.LASF131
	.byte	0x1
	.value	0x1812
	.long	0x27f
	.long	.LFB211
	.long	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.long	0xcce
	.uleb128 0x36
	.string	"cb"
	.byte	0x1
	.value	0x1812
	.long	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x37
	.long	.LASF121
	.byte	0x1
	.value	0x1814
	.long	0xb8
	.long	.LLST16
	.uleb128 0x30
	.long	.LVL48
	.long	0x7a4
	.byte	0
	.uleb128 0x35
	.long	.LASF132
	.byte	0x1
	.value	0x181a
	.long	0x200
	.long	.LFB212
	.long	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.long	0xd10
	.uleb128 0x28
	.long	.LASF128
	.byte	0x1
	.value	0x181a
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF112
	.byte	0x1
	.value	0x181a
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.long	.LVL51
	.long	0xf0a
	.byte	0
	.uleb128 0x33
	.long	.LASF134
	.byte	0x1
	.value	0x181e
	.long	.LFB213
	.long	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.long	0xd45
	.uleb128 0x28
	.long	.LASF128
	.byte	0x1
	.value	0x181e
	.long	0x5d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF112
	.byte	0x1
	.value	0x181e
	.long	0xa2
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x32
	.long	.LASF135
	.byte	0x1
	.value	0x1823
	.long	0x200
	.long	.LFB214
	.long	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.long	.LASF166
	.byte	0x1
	.value	0x1827
	.long	.LFB215
	.long	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.long	.LASF136
	.byte	0x1
	.value	0x182d
	.long	.LFB216
	.long	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.long	0xda2
	.uleb128 0x28
	.long	.LASF137
	.byte	0x1
	.value	0x182d
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.long	.LASF138
	.byte	0x1
	.value	0x182d
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x35
	.long	.LASF139
	.byte	0x1
	.value	0x1859
	.long	0x89
	.long	.LFB220
	.long	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.long	0xdea
	.uleb128 0x3b
	.long	.LASF140
	.byte	0x1
	.value	0x185b
	.long	0xdea
	.uleb128 0x5
	.byte	0x3
	.long	storage.7853
	.uleb128 0x30
	.long	.LVL54
	.long	0x739
	.uleb128 0x30
	.long	.LVL55
	.long	0x753
	.uleb128 0x30
	.long	.LVL56
	.long	0xf15
	.byte	0
	.uleb128 0x6
	.long	0x60d
	.uleb128 0x35
	.long	.LASF141
	.byte	0x1
	.value	0x1865
	.long	0x89
	.long	.LFB221
	.long	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.long	0xe43
	.uleb128 0x28
	.long	.LASF40
	.byte	0x1
	.value	0x1865
	.long	0xe43
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3c
	.string	"oob"
	.byte	0x1
	.value	0x1867
	.long	0x1e5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -43
	.uleb128 0x30
	.long	.LVL58
	.long	0xf21
	.uleb128 0x30
	.long	.LVL59
	.long	0xf2d
	.uleb128 0x30
	.long	.LVL60
	.long	0xedd
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.long	0x1ce
	.uleb128 0x32
	.long	.LASF142
	.byte	0x1
	.value	0x1871
	.long	0x200
	.long	.LFB222
	.long	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3b
	.long	.LASF143
	.byte	0x1
	.value	0x17ad
	.long	0x28b
	.uleb128 0x5
	.byte	0x3
	.long	flash_handler
	.uleb128 0x24
	.long	.LASF144
	.byte	0x1
	.value	0x17ae
	.long	0x2a8
	.uleb128 0x3d
	.long	.LASF145
	.byte	0x1
	.value	0x3fb
	.long	0x90
	.uleb128 0x3d
	.long	.LASF146
	.byte	0x1
	.value	0xf35
	.long	0x2b4
	.uleb128 0x3d
	.long	.LASF147
	.byte	0x1
	.value	0x15d4
	.long	0x540
	.uleb128 0x3e
	.long	.LASF148
	.long	.LASF148
	.byte	0x1
	.value	0x16c
	.uleb128 0x3e
	.long	.LASF149
	.long	.LASF149
	.byte	0x1
	.value	0x15e2
	.uleb128 0x3e
	.long	.LASF150
	.long	.LASF150
	.byte	0x1
	.value	0x15cf
	.uleb128 0x3e
	.long	.LASF151
	.long	.LASF151
	.byte	0x1
	.value	0x3ed
	.uleb128 0x3e
	.long	.LASF152
	.long	.LASF152
	.byte	0x1
	.value	0x3f2
	.uleb128 0x3f
	.long	.LASF167
	.long	.LASF167
	.uleb128 0x3e
	.long	.LASF153
	.long	.LASF153
	.byte	0x1
	.value	0x15d3
	.uleb128 0x3e
	.long	.LASF154
	.long	.LASF154
	.byte	0x1
	.value	0x15cc
	.uleb128 0x3e
	.long	.LASF155
	.long	.LASF155
	.byte	0x1
	.value	0x15d6
	.uleb128 0x40
	.long	.LASF156
	.long	.LASF156
	.byte	0x1
	.byte	0xe9
	.uleb128 0x3e
	.long	.LASF157
	.long	.LASF157
	.byte	0x1
	.value	0x17ab
	.uleb128 0x3e
	.long	.LASF158
	.long	.LASF158
	.byte	0x1
	.value	0xaee
	.uleb128 0x41
	.long	.LASF168
	.long	.LASF169
	.byte	0x2
	.byte	0
	.long	.LASF168
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x17
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
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL2
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL2
	.long	.LVL5-1
	.value	0x1
	.byte	0x52
	.long	.LVL5
	.long	.LFE203
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST2:
	.long	.LVL8
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LVL8
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL11
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	.LVL11
	.long	.LVL12
	.value	0x1
	.byte	0x50
	.long	.LVL12
	.long	.LVL14
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL24
	.long	.LVL25
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST8:
	.long	.LVL27
	.long	.LVL28
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST9:
	.long	.LVL35
	.long	.LVL36-1
	.value	0x1
	.byte	0x50
	.long	.LVL36
	.long	.LVL37-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST10:
	.long	.LVL42
	.long	.LVL43-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST11:
	.long	.LVL43
	.long	.LVL45
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL44
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL44
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST14:
	.long	.LVL44
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST15:
	.long	.LVL44
	.long	.LVL46
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST16:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xcc
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB219
	.long	.LFE219-.LFB219
	.long	.LFB203
	.long	.LFE203-.LFB203
	.long	.LFB218
	.long	.LFE218-.LFB218
	.long	.LFB227
	.long	.LFE227-.LFB227
	.long	.LFB200
	.long	.LFE200-.LFB200
	.long	.LFB201
	.long	.LFE201-.LFB201
	.long	.LFB202
	.long	.LFE202-.LFB202
	.long	.LFB204
	.long	.LFE204-.LFB204
	.long	.LFB205
	.long	.LFE205-.LFB205
	.long	.LFB206
	.long	.LFE206-.LFB206
	.long	.LFB207
	.long	.LFE207-.LFB207
	.long	.LFB208
	.long	.LFE208-.LFB208
	.long	.LFB210
	.long	.LFE210-.LFB210
	.long	.LFB217
	.long	.LFE217-.LFB217
	.long	.LFB211
	.long	.LFE211-.LFB211
	.long	.LFB212
	.long	.LFE212-.LFB212
	.long	.LFB213
	.long	.LFE213-.LFB213
	.long	.LFB214
	.long	.LFE214-.LFB214
	.long	.LFB215
	.long	.LFE215-.LFB215
	.long	.LFB216
	.long	.LFE216-.LFB216
	.long	.LFB220
	.long	.LFE220-.LFB220
	.long	.LFB221
	.long	.LFE221-.LFB221
	.long	.LFB222
	.long	.LFE222-.LFB222
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB219
	.long	.LFE219
	.long	.LFB203
	.long	.LFE203
	.long	.LFB218
	.long	.LFE218
	.long	.LFB227
	.long	.LFE227
	.long	.LFB200
	.long	.LFE200
	.long	.LFB201
	.long	.LFE201
	.long	.LFB202
	.long	.LFE202
	.long	.LFB204
	.long	.LFE204
	.long	.LFB205
	.long	.LFE205
	.long	.LFB206
	.long	.LFE206
	.long	.LFB207
	.long	.LFE207
	.long	.LFB208
	.long	.LFE208
	.long	.LFB210
	.long	.LFE210
	.long	.LFB217
	.long	.LFE217
	.long	.LFB211
	.long	.LFE211
	.long	.LFB212
	.long	.LFE212
	.long	.LFB213
	.long	.LFE213
	.long	.LFB214
	.long	.LFE214
	.long	.LFB215
	.long	.LFE215
	.long	.LFB216
	.long	.LFE216
	.long	.LFB220
	.long	.LFE220
	.long	.LFB221
	.long	.LFE221
	.long	.LFB222
	.long	.LFE222
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF72:
	.string	"dfu_progress_t"
.LASF86:
	.string	"sd_size"
.LASF141:
	.string	"ais_ota_get_local_addr"
.LASF133:
	.string	"ais_ota_set_setting_fw_offset"
.LASF17:
	.string	"size_t"
.LASF120:
	.string	"page_size"
.LASF147:
	.string	"s_dfu_settings"
.LASF3:
	.string	"__uint8_t"
.LASF165:
	.string	"storage_clear"
.LASF22:
	.string	"ssize_t"
.LASF38:
	.string	"type"
.LASF117:
	.string	"settings_inited"
.LASF7:
	.string	"long int"
.LASF6:
	.string	"__int32_t"
.LASF116:
	.string	"ais_ota_settings_init"
.LASF11:
	.string	"long long unsigned int"
.LASF40:
	.string	"addr"
.LASF84:
	.string	"bank_app_1"
.LASF58:
	.string	"nrf_dfu_adv_name_t"
.LASF146:
	.string	"ITM_RxBuffer"
.LASF138:
	.string	"img_crc"
.LASF60:
	.string	"image_crc"
.LASF158:
	.string	"bt_le_oob_get_local"
.LASF10:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF66:
	.string	"firmware_image_offset_last"
.LASF43:
	.string	"ALI_OTA_FLASH_ERASE_FAIL"
.LASF25:
	.string	"_POLL_TYPE_IGNORE"
.LASF148:
	.string	"printf"
.LASF122:
	.string	"temp_dfu_settings"
.LASF150:
	.string	"nrf_dfu_flash_store"
.LASF90:
	.string	"peer_data"
.LASF63:
	.string	"firmware_image_crc"
.LASF154:
	.string	"nrf_dfu_flash_init"
.LASF119:
	.string	"align_to_page"
.LASF139:
	.string	"ais_ota_bt_storage_init"
.LASF169:
	.string	"__builtin_puts"
.LASF93:
	.string	"NRF_FSTORAGE_EVT_READ_RESULT"
.LASF104:
	.string	"BT_STORAGE_LTK"
.LASF14:
	.string	"uint16_t"
.LASF44:
	.string	"ALI_OTA_FLASH_STORE_OK"
.LASF51:
	.string	"ALI_OTA_SETTINGS_CODE_SUCCESS"
.LASF73:
	.string	"bins_flag"
.LASF79:
	.string	"bank_current"
.LASF153:
	.string	"nrf_dfu_flash_erase"
.LASF161:
	.string	"/home/stone/Documents/pca"
.LASF26:
	.string	"_POLL_TYPE_SIGNAL"
.LASF102:
	.string	"BT_STORAGE_ADDRESSES"
.LASF8:
	.string	"__uint32_t"
.LASF152:
	.string	"csp_printf"
.LASF42:
	.string	"ALI_OTA_FLASH_ERASE_OK"
.LASF47:
	.string	"ali_ota_flash_evt_t"
.LASF145:
	.string	"aos_log_level"
.LASF126:
	.string	"ais_ota_flash_erase"
.LASF98:
	.string	"p_param"
.LASF127:
	.string	"ais_ota_flash_store"
.LASF130:
	.string	"ais_ota_get_dst_addr"
.LASF12:
	.string	"unsigned int"
.LASF85:
	.string	"write_offset"
.LASF129:
	.string	"ais_ota_get_setting_fw_offset"
.LASF9:
	.string	"long unsigned int"
.LASF69:
	.string	"command_offset"
.LASF19:
	.string	"_ssize_t"
.LASF101:
	.string	"BT_STORAGE_LOCAL_IRK"
.LASF55:
	.string	"settings_event_handler_t"
.LASF111:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF114:
	.string	"flash_inited"
.LASF29:
	.string	"_POLL_NUM_TYPES"
.LASF49:
	.string	"ALI_OTA_FLASH_CODE_ERROR"
.LASF107:
	.string	"bt_storage"
.LASF159:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF136:
	.string	"ais_ota_update_setting_after_xfer_finished"
.LASF76:
	.string	"bootloader_version"
.LASF2:
	.string	"short int"
.LASF160:
	.string	"src/ais_ota_port.c"
.LASF162:
	.string	"flash_event_handler_helper"
.LASF88:
	.string	"enter_buttonless_dfu"
.LASF109:
	.string	"write"
.LASF168:
	.string	"puts"
.LASF75:
	.string	"app_version"
.LASF56:
	.string	"ret_code_t"
.LASF23:
	.string	"u8_t"
.LASF62:
	.string	"nrf_dfu_bank_t"
.LASF105:
	.string	"BT_STORAGE_IRK"
.LASF33:
	.string	"_POLL_STATE_SIGNALED"
.LASF91:
	.string	"adv_name"
.LASF110:
	.string	"clear"
.LASF121:
	.string	"err_code"
.LASF81:
	.string	"bank_0"
.LASF83:
	.string	"bank_1"
.LASF96:
	.string	"nrf_fstorage_evt_id_t"
.LASF142:
	.string	"ais_ota_check_if_bins_supported"
.LASF37:
	.string	"bt_addr_t"
.LASF78:
	.string	"bank_layout"
.LASF100:
	.string	"BT_STORAGE_ID_ADDR"
.LASF149:
	.string	"nrf_dfu_settings_crc_get"
.LASF106:
	.string	"bt_le_oob"
.LASF82:
	.string	"bank_app_0"
.LASF31:
	.string	"_poll_states_bits"
.LASF77:
	.string	"kernel_version"
.LASF80:
	.string	"bank_app_current"
.LASF89:
	.string	"init_command"
.LASF125:
	.string	"num_pages"
.LASF41:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF87:
	.string	"progress"
.LASF30:
	.string	"_poll_types_bits"
.LASF99:
	.string	"nrf_fstorage_evt_t"
.LASF61:
	.string	"bank_code"
.LASF166:
	.string	"ais_ota_update_settings_after_update_finished"
.LASF48:
	.string	"ALI_OTA_FLASH_CODE_SUCCESS"
.LASF113:
	.string	"__func__"
.LASF137:
	.string	"img_size"
.LASF27:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF39:
	.string	"bt_addr_le_t"
.LASF167:
	.string	"__stack_chk_fail"
.LASF35:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF123:
	.string	"storage_write"
.LASF115:
	.string	"ais_ota_flash_init"
.LASF155:
	.string	"nrf_dfu_settings_init"
.LASF16:
	.string	"uint32_t"
.LASF67:
	.string	"sd_start_address"
.LASF54:
	.string	"flash_event_handler_t"
.LASF18:
	.string	"long double"
.LASF112:
	.string	"length"
.LASF21:
	.string	"char"
.LASF164:
	.string	"ota_dfu_settings_write"
.LASF57:
	.string	"nrf_dfu_peer_data_t"
.LASF4:
	.string	"__uint16_t"
.LASF34:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF13:
	.string	"uint8_t"
.LASF135:
	.string	"ais_ota_check_if_update_finished"
.LASF46:
	.string	"ALI_OTA_FLASH_ERROR"
.LASF156:
	.string	"memcmp"
.LASF70:
	.string	"command_crc"
.LASF124:
	.string	"offset"
.LASF157:
	.string	"bt_storage_register"
.LASF94:
	.string	"NRF_FSTORAGE_EVT_WRITE_RESULT"
.LASF92:
	.string	"nrf_dfu_settings_t"
.LASF143:
	.string	"flash_handler"
.LASF64:
	.string	"firmware_image_crc_last"
.LASF24:
	.string	"u16_t"
.LASF59:
	.string	"image_size"
.LASF134:
	.string	"ais_ota_update_fw_version"
.LASF36:
	.string	"_POLL_NUM_STATES"
.LASF65:
	.string	"firmware_image_offset"
.LASF140:
	.string	"storage"
.LASF163:
	.string	"ais_ota_get_page_size"
.LASF52:
	.string	"ALI_OTA_SETTINGS_CODE_ERROR"
.LASF151:
	.string	"aos_now_ms"
.LASF20:
	.string	"sizetype"
.LASF50:
	.string	"ali_ota_flash_err_t"
.LASF108:
	.string	"read"
.LASF28:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF132:
	.string	"ais_ota_check_if_resume"
.LASF45:
	.string	"ALI_OTA_FLASH_STORE_FAIL"
.LASF71:
	.string	"data_object_size"
.LASF128:
	.string	"p_data"
.LASF68:
	.string	"command_size"
.LASF118:
	.string	"storage_read"
.LASF95:
	.string	"NRF_FSTORAGE_EVT_ERASE_RESULT"
.LASF144:
	.string	"settings_handler"
.LASF53:
	.string	"ali_ota_settings_err_t"
.LASF74:
	.string	"settings_version"
.LASF97:
	.string	"result"
.LASF32:
	.string	"_POLL_STATE_NOT_READY"
.LASF103:
	.string	"BT_STORAGE_SLAVE_LTK"
.LASF131:
	.string	"ais_ota_settings_write"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
