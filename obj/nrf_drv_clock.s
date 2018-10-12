	.file	"nrf_drv_clock.c"
	.text
.Ltext0:
	.section	.text.unlikely.hfclk_stop,"ax",@progbits
.LCOLDB0:
	.section	.text.hfclk_stop,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.hfclk_stop
.Ltext_cold0:
	.section	.text.hfclk_stop
	.type	hfclk_stop, @function
hfclk_stop:
.LFB183:
	.file 1 "src/nrf_drv_clock.c"
	.loc 1 4443 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB30:
.LBB31:
	.loc 1 3417 0
	movl	$1, 1073741828
.LBE31:
.LBE30:
	.loc 1 4443 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L2:
.LVL1:
.LBB32:
.LBB33:
	.loc 1 3479 0 discriminator 1
	movl	1073742860, %eax
.LVL2:
.LBE33:
.LBE32:
	.loc 1 4445 0 discriminator 1
	andl	$65537, %eax
	cmpl	$65537, %eax
	je	.L2
	.loc 1 4447 0
	movb	$0, m_clock_cb+1
	.loc 1 4450 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE183:
	.size	hfclk_stop, .-hfclk_stop
	.section	.text.unlikely.hfclk_stop
.LCOLDE0:
	.section	.text.hfclk_stop
.LHOTE0:
	.section	.text.unlikely.clock_clk_started_notify,"ax",@progbits
.LCOLDB1:
	.section	.text.clock_clk_started_notify,"ax",@progbits
.LHOTB1:
	.type	clock_clk_started_notify, @function
clock_clk_started_notify:
.LFB198:
	.loc 1 4655 0
	.cfi_startproc
.LVL3:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4663 0
	testl	%eax, %eax
	movl	$m_clock_cb+8, %edx
	.loc 1 4655 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 4663 0
	movl	$m_clock_cb+16, %ebx
	.loc 1 4655 0
	movl	%eax, %esi
	.loc 1 4663 0
	cmove	%edx, %ebx
.LVL4:
.L10:
.LBB37:
.LBB38:
.LBB39:
	.loc 1 4516 0
	movl	(%ebx), %edx
.LVL5:
	.loc 1 4517 0
	testl	%edx, %edx
	je	.L7
	.loc 1 4519 0
	movl	(%edx), %eax
.LBE39:
.LBE38:
	.loc 1 4672 0
	subl	$12, %esp
.LBB41:
.LBB40:
	.loc 1 4519 0
	movl	%eax, (%ebx)
.LVL6:
.LBE40:
.LBE41:
	.loc 1 4672 0
	pushl	%esi
	call	*4(%edx)
.LVL7:
.LBE37:
	.loc 1 4673 0
	addl	$16, %esp
	jmp	.L10
.LVL8:
.L7:
	.loc 1 4674 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL9:
	popl	%esi
	.cfi_restore 6
.LVL10:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE198:
	.size	clock_clk_started_notify, .-clock_clk_started_notify
	.section	.text.unlikely.clock_clk_started_notify
.LCOLDE1:
	.section	.text.clock_clk_started_notify
.LHOTE1:
	.section	.text.unlikely.lfclk_stop,"ax",@progbits
.LCOLDB2:
	.section	.text.lfclk_stop,"ax",@progbits
.LHOTB2:
	.type	lfclk_stop, @function
lfclk_stop:
.LFB181:
	.loc 1 4428 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB46:
.LBB47:
	.loc 1 3417 0
	movl	$1, 1073741836
.LBE47:
.LBE46:
	.loc 1 4428 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
.L14:
.LBB48:
.LBB49:
	.loc 1 3461 0 discriminator 1
	movl	1073742872, %eax
.LBE49:
.LBE48:
	.loc 1 4430 0 discriminator 1
	testl	$65536, %eax
	jne	.L14
	.loc 1 4432 0
	movb	$0, m_clock_cb+2
	.loc 1 4435 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE181:
	.size	lfclk_stop, .-lfclk_stop
	.section	.text.unlikely.lfclk_stop
.LCOLDE2:
	.section	.text.lfclk_stop
.LHOTE2:
	.section	.text.unlikely.nrf_drv_clock_init_check,"ax",@progbits
.LCOLDB3:
	.section	.text.nrf_drv_clock_init_check,"ax",@progbits
.LHOTB3:
	.globl	nrf_drv_clock_init_check
	.type	nrf_drv_clock_init_check, @function
nrf_drv_clock_init_check:
.LFB184:
	.loc 1 4453 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4455 0
	movb	m_clock_cb, %al
	.loc 1 4453 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4455 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE184:
	.size	nrf_drv_clock_init_check, .-nrf_drv_clock_init_check
	.section	.text.unlikely.nrf_drv_clock_init_check
.LCOLDE3:
	.section	.text.nrf_drv_clock_init_check
.LHOTE3:
	.section	.text.unlikely.nrf_drv_clock_init,"ax",@progbits
.LCOLDB4:
	.section	.text.nrf_drv_clock_init,"ax",@progbits
.LHOTB4:
	.globl	nrf_drv_clock_init
	.type	nrf_drv_clock_init, @function
nrf_drv_clock_init:
.LFB185:
	.loc 1 4457 0
	.cfi_startproc
.LVL12:
	.loc 1 4459 0
	cmpb	$0, m_clock_cb
	jne	.L23
	.loc 1 4457 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4468 0
	movl	$0, m_clock_cb+4
	.loc 1 4472 0
	movl	$0, m_clock_cb+12
.LVL13:
.LBB56:
.LBB57:
.LBB58:
.LBB59:
	.loc 1 3521 0
	movl	-536813312, %eax
.LVL14:
.LBE59:
.LBE58:
.LBE57:
.LBE56:
	.loc 1 4465 0
	movl	$0, m_clock_cb+8
	.loc 1 4469 0
	movl	$0, m_clock_cb+16
.LBB61:
.LBB60:
	.loc 1 3543 0
	testb	$1, %al
	jne	.L21
	.loc 1 3545 0
	pushl	%eax
	pushl	%eax
	pushl	$7
	pushl	$0
	call	nrf_drv_common_irq_enable
.LVL15:
	addl	$16, %esp
.L21:
.LVL16:
.LBE60:
.LBE61:
.LBB62:
.LBB63:
	.loc 1 3439 0
	movl	$1, 1073743128
.LVL17:
.LBE63:
.LBE62:
	.loc 1 4458 0
	xorl	%eax, %eax
.LVL18:
	.loc 1 4477 0
	movb	$1, m_clock_cb
	.loc 1 4484 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
.LVL19:
.L23:
	movl	$133, %eax
	ret
	.cfi_endproc
.LFE185:
	.size	nrf_drv_clock_init, .-nrf_drv_clock_init
	.section	.text.unlikely.nrf_drv_clock_init
.LCOLDE4:
	.section	.text.nrf_drv_clock_init
.LHOTE4:
	.section	.text.unlikely.nrf_drv_clock_uninit,"ax",@progbits
.LCOLDB5:
	.section	.text.nrf_drv_clock_uninit,"ax",@progbits
.LHOTB5:
	.globl	nrf_drv_clock_uninit
	.type	nrf_drv_clock_uninit, @function
nrf_drv_clock_uninit:
.LFB186:
	.loc 1 4486 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4488 0
	call	nrf_drv_common_clock_irq_disable
.LVL20:
.LBB64:
.LBB65:
	.loc 1 3401 0
	movl	$-1, 1073742600
.LVL21:
.LBE65:
.LBE64:
	.loc 1 4490 0
	call	lfclk_stop
.LVL22:
	.loc 1 4491 0
	call	hfclk_stop
.LVL23:
	.loc 1 4492 0
	movb	$0, m_clock_cb
	.loc 1 4496 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE186:
	.size	nrf_drv_clock_uninit, .-nrf_drv_clock_uninit
	.section	.text.unlikely.nrf_drv_clock_uninit
.LCOLDE5:
	.section	.text.nrf_drv_clock_uninit
.LHOTE5:
	.section	.text.unlikely.nrf_drv_clock_lfclk_request,"ax",@progbits
.LCOLDB6:
	.section	.text.nrf_drv_clock_lfclk_request,"ax",@progbits
.LHOTB6:
	.globl	nrf_drv_clock_lfclk_request
	.type	nrf_drv_clock_lfclk_request, @function
nrf_drv_clock_lfclk_request:
.LFB189:
	.loc 1 4524 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 4526 0
	movb	m_clock_cb+2, %al
	.loc 1 4524 0
	movl	8(%ebp), %ebx
	.loc 1 4526 0
	testb	%al, %al
	je	.L29
	.loc 1 4528 0
	testl	%ebx, %ebx
	je	.L30
	.loc 1 4530 0
	subl	$12, %esp
	pushl	$1
	call	*4(%ebx)
.LVL25:
	addl	$16, %esp
.L30:
	.loc 1 4532 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL26:
	.loc 1 4535 0
	movl	m_clock_cb+12, %eax
	.loc 1 4536 0
	movl	$0, (%esp)
	.loc 1 4535 0
	incl	%eax
	movl	%eax, m_clock_cb+12
	jmp	.L43
.L29:
	.loc 1 4540 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL27:
	.loc 1 4543 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L32
.LVL28:
.LBB76:
.LBB77:
	.loc 1 4500 0
	movl	m_clock_cb+16, %edx
.LVL29:
	movl	%edx, %eax
.LVL30:
.L33:
	.loc 1 4501 0
	testl	%eax, %eax
	je	.L44
	.loc 1 4503 0
	cmpl	%eax, %ebx
	je	.L32
	.loc 1 4507 0
	movl	(%eax), %eax
.LVL31:
	jmp	.L33
.L44:
	.loc 1 4509 0
	movl	%edx, (%ebx)
	.loc 1 4512 0
	movl	%ebx, m_clock_cb+16
.LVL32:
.L32:
.LBE77:
.LBE76:
	.loc 1 4548 0
	movl	m_clock_cb+12, %eax
	testl	%eax, %eax
	jne	.L35
.LVL33:
.LBB78:
.LBB79:
.LBB80:
	.loc 1 3425 0
	movl	$0, 1073742084
	.loc 1 3426 0
	movl	1073742084, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3427 0
	movl	-12(%ebp), %eax
.LVL34:
.LBE80:
.LBE79:
.LBB81:
.LBB82:
	.loc 1 3397 0
	movl	$2, 1073742596
.LVL35:
.LBE82:
.LBE81:
.LBB83:
.LBB84:
	.loc 1 3417 0
	movl	$1, 1073741832
.LVL36:
.L35:
.LBE84:
.LBE83:
.LBE78:
	.loc 1 4552 0
	movl	m_clock_cb+12, %eax
	.loc 1 4553 0
	subl	$12, %esp
	pushl	$0
	.loc 1 4552 0
	incl	%eax
	movl	%eax, m_clock_cb+12
.L43:
	.loc 1 4553 0
	call	app_util_critical_region_exit
.LVL37:
	addl	$16, %esp
	.loc 1 4556 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE189:
	.size	nrf_drv_clock_lfclk_request, .-nrf_drv_clock_lfclk_request
	.section	.text.unlikely.nrf_drv_clock_lfclk_request
.LCOLDE6:
	.section	.text.nrf_drv_clock_lfclk_request
.LHOTE6:
	.section	.text.unlikely.nrf_drv_clock_lfclk_release,"ax",@progbits
.LCOLDB7:
	.section	.text.nrf_drv_clock_lfclk_release,"ax",@progbits
.LHOTB7:
	.globl	nrf_drv_clock_lfclk_release
	.type	nrf_drv_clock_lfclk_release, @function
nrf_drv_clock_lfclk_release:
.LFB190:
	.loc 1 4558 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 4561 0
	pushl	$0
	call	app_util_critical_region_enter
.LVL38:
	.loc 1 4564 0
	movl	m_clock_cb+12, %eax
	.loc 1 4565 0
	addl	$16, %esp
	.loc 1 4564 0
	decl	%eax
	movl	%eax, m_clock_cb+12
	.loc 1 4565 0
	movl	m_clock_cb+12, %eax
	testl	%eax, %eax
	jne	.L46
	.loc 1 4567 0
	call	lfclk_stop
.LVL39:
.L46:
	.loc 1 4569 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_exit
.LVL40:
	.loc 1 4570 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE190:
	.size	nrf_drv_clock_lfclk_release, .-nrf_drv_clock_lfclk_release
	.section	.text.unlikely.nrf_drv_clock_lfclk_release
.LCOLDE7:
	.section	.text.nrf_drv_clock_lfclk_release
.LHOTE7:
	.section	.text.unlikely.nrf_drv_clock_lfclk_is_running,"ax",@progbits
.LCOLDB8:
	.section	.text.nrf_drv_clock_lfclk_is_running,"ax",@progbits
.LHOTB8:
	.globl	nrf_drv_clock_lfclk_is_running
	.type	nrf_drv_clock_lfclk_is_running, @function
nrf_drv_clock_lfclk_is_running:
.LFB191:
	.loc 1 4573 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB87:
.LBB88:
	.loc 1 3461 0
	movl	1073742872, %eax
.LBE88:
.LBE87:
	.loc 1 4573 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4575 0
	shrl	$16, %eax
	andl	$1, %eax
	.loc 1 4576 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE191:
	.size	nrf_drv_clock_lfclk_is_running, .-nrf_drv_clock_lfclk_is_running
	.section	.text.unlikely.nrf_drv_clock_lfclk_is_running
.LCOLDE8:
	.section	.text.nrf_drv_clock_lfclk_is_running
.LHOTE8:
	.section	.text.unlikely.nrf_drv_clock_hfclk_request,"ax",@progbits
.LCOLDB9:
	.section	.text.nrf_drv_clock_hfclk_request,"ax",@progbits
.LHOTB9:
	.globl	nrf_drv_clock_hfclk_request
	.type	nrf_drv_clock_hfclk_request, @function
nrf_drv_clock_hfclk_request:
.LFB192:
	.loc 1 4578 0
	.cfi_startproc
.LVL41:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	.loc 1 4580 0
	movb	m_clock_cb+1, %al
	.loc 1 4578 0
	movl	8(%ebp), %ebx
	.loc 1 4580 0
	testb	%al, %al
	je	.L51
	.loc 1 4582 0
	testl	%ebx, %ebx
	je	.L52
	.loc 1 4584 0
	subl	$12, %esp
	pushl	$0
	call	*4(%ebx)
.LVL42:
	addl	$16, %esp
.L52:
	.loc 1 4586 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL43:
	.loc 1 4589 0
	movl	m_clock_cb+4, %eax
	.loc 1 4590 0
	movl	$0, (%esp)
	.loc 1 4589 0
	incl	%eax
	movl	%eax, m_clock_cb+4
	jmp	.L65
.L51:
	.loc 1 4594 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_enter
.LVL44:
	.loc 1 4597 0
	addl	$16, %esp
	testl	%ebx, %ebx
	je	.L54
.LVL45:
.LBB99:
.LBB100:
	.loc 1 4500 0
	movl	m_clock_cb+8, %edx
.LVL46:
	movl	%edx, %eax
.LVL47:
.L55:
	.loc 1 4501 0
	testl	%eax, %eax
	je	.L66
	.loc 1 4503 0
	cmpl	%eax, %ebx
	je	.L54
	.loc 1 4507 0
	movl	(%eax), %eax
.LVL48:
	jmp	.L55
.L66:
	.loc 1 4509 0
	movl	%edx, (%ebx)
	.loc 1 4512 0
	movl	%ebx, m_clock_cb+8
.LVL49:
.L54:
.LBE100:
.LBE99:
	.loc 1 4602 0
	movl	m_clock_cb+4, %eax
	testl	%eax, %eax
	jne	.L57
.LVL50:
.LBB101:
.LBB102:
.LBB103:
	.loc 1 3425 0
	movl	$0, 1073742080
	.loc 1 3426 0
	movl	1073742080, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3427 0
	movl	-12(%ebp), %eax
.LVL51:
.LBE103:
.LBE102:
.LBB104:
.LBB105:
	.loc 1 3397 0
	movl	$1, 1073742596
.LVL52:
.LBE105:
.LBE104:
.LBB106:
.LBB107:
	.loc 1 3417 0
	movl	$1, 1073741824
.LVL53:
.L57:
.LBE107:
.LBE106:
.LBE101:
	.loc 1 4606 0
	movl	m_clock_cb+4, %eax
	.loc 1 4607 0
	subl	$12, %esp
	pushl	$0
	.loc 1 4606 0
	incl	%eax
	movl	%eax, m_clock_cb+4
.L65:
	.loc 1 4607 0
	call	app_util_critical_region_exit
.LVL54:
	addl	$16, %esp
	.loc 1 4610 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE192:
	.size	nrf_drv_clock_hfclk_request, .-nrf_drv_clock_hfclk_request
	.section	.text.unlikely.nrf_drv_clock_hfclk_request
.LCOLDE9:
	.section	.text.nrf_drv_clock_hfclk_request
.LHOTE9:
	.section	.text.unlikely.nrf_drv_clock_hfclk_release,"ax",@progbits
.LCOLDB10:
	.section	.text.nrf_drv_clock_hfclk_release,"ax",@progbits
.LHOTB10:
	.globl	nrf_drv_clock_hfclk_release
	.type	nrf_drv_clock_hfclk_release, @function
nrf_drv_clock_hfclk_release:
.LFB193:
	.loc 1 4612 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 4615 0
	pushl	$0
	call	app_util_critical_region_enter
.LVL55:
	.loc 1 4618 0
	movl	m_clock_cb+4, %eax
	.loc 1 4619 0
	addl	$16, %esp
	.loc 1 4618 0
	decl	%eax
	movl	%eax, m_clock_cb+4
	.loc 1 4619 0
	movl	m_clock_cb+4, %eax
	testl	%eax, %eax
	jne	.L68
	.loc 1 4621 0
	call	hfclk_stop
.LVL56:
.L68:
	.loc 1 4623 0
	subl	$12, %esp
	pushl	$0
	call	app_util_critical_region_exit
.LVL57:
	.loc 1 4624 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE193:
	.size	nrf_drv_clock_hfclk_release, .-nrf_drv_clock_hfclk_release
	.section	.text.unlikely.nrf_drv_clock_hfclk_release
.LCOLDE10:
	.section	.text.nrf_drv_clock_hfclk_release
.LHOTE10:
	.section	.text.unlikely.nrf_drv_clock_hfclk_is_running,"ax",@progbits
.LCOLDB11:
	.section	.text.nrf_drv_clock_hfclk_is_running,"ax",@progbits
.LHOTB11:
	.globl	nrf_drv_clock_hfclk_is_running
	.type	nrf_drv_clock_hfclk_is_running, @function
nrf_drv_clock_hfclk_is_running:
.LFB194:
	.loc 1 4627 0
	.cfi_startproc
.LVL58:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
.LBB108:
.LBB109:
	.loc 1 3479 0
	movl	1073742860, %eax
.LVL59:
.LBE109:
.LBE108:
	.loc 1 4627 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4629 0
	andl	$65537, %eax
	cmpl	$65537, %eax
	sete	%al
	.loc 1 4630 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE194:
	.size	nrf_drv_clock_hfclk_is_running, .-nrf_drv_clock_hfclk_is_running
	.section	.text.unlikely.nrf_drv_clock_hfclk_is_running
.LCOLDE11:
	.section	.text.nrf_drv_clock_hfclk_is_running
.LHOTE11:
	.section	.text.unlikely.nrf_drv_clock_calibration_start,"ax",@progbits
.LCOLDB12:
	.section	.text.nrf_drv_clock_calibration_start,"ax",@progbits
.LHOTB12:
	.globl	nrf_drv_clock_calibration_start
	.type	nrf_drv_clock_calibration_start, @function
nrf_drv_clock_calibration_start:
.LFB195:
	.loc 1 4632 0
	.cfi_startproc
.LVL60:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4637 0
	movl	$15, %eax
	.loc 1 4632 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4637 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE195:
	.size	nrf_drv_clock_calibration_start, .-nrf_drv_clock_calibration_start
	.section	.text.unlikely.nrf_drv_clock_calibration_start
.LCOLDE12:
	.section	.text.nrf_drv_clock_calibration_start
.LHOTE12:
	.section	.text.unlikely.nrf_drv_clock_calibration_abort,"ax",@progbits
.LCOLDB13:
	.section	.text.nrf_drv_clock_calibration_abort,"ax",@progbits
.LHOTB13:
	.globl	nrf_drv_clock_calibration_abort
	.type	nrf_drv_clock_calibration_abort, @function
nrf_drv_clock_calibration_abort:
.LFB196:
	.loc 1 4639 0
	.cfi_startproc
.LVL61:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4644 0
	movl	$15, %eax
	.loc 1 4639 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4644 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE196:
	.size	nrf_drv_clock_calibration_abort, .-nrf_drv_clock_calibration_abort
	.section	.text.unlikely.nrf_drv_clock_calibration_abort
.LCOLDE13:
	.section	.text.nrf_drv_clock_calibration_abort
.LHOTE13:
	.section	.text.unlikely.nrf_drv_clock_is_calibrating,"ax",@progbits
.LCOLDB14:
	.section	.text.nrf_drv_clock_is_calibrating,"ax",@progbits
.LHOTB14:
	.globl	nrf_drv_clock_is_calibrating
	.type	nrf_drv_clock_is_calibrating, @function
nrf_drv_clock_is_calibrating:
.LFB197:
	.loc 1 4648 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 4653 0
	movl	$15, %eax
	.loc 1 4648 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 4653 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE197:
	.size	nrf_drv_clock_is_calibrating, .-nrf_drv_clock_is_calibrating
	.section	.text.unlikely.nrf_drv_clock_is_calibrating
.LCOLDE14:
	.section	.text.nrf_drv_clock_is_calibrating
.LHOTE14:
	.section	.text.unlikely.POWER_CLOCK_IRQHandler,"ax",@progbits
.LCOLDB15:
	.section	.text.POWER_CLOCK_IRQHandler,"ax",@progbits
.LHOTB15:
	.globl	POWER_CLOCK_IRQHandler
	.type	POWER_CLOCK_IRQHandler, @function
POWER_CLOCK_IRQHandler:
.LFB199:
	.loc 1 4676 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	.loc 1 4677 0
	call	krhino_intrpt_enter
.LVL63:
.LBB122:
.LBB123:
	.loc 1 3435 0
	movl	1073742080, %eax
.LVL64:
.LBE123:
.LBE122:
	.loc 1 4678 0
	testl	%eax, %eax
	je	.L79
.LVL65:
.LBB124:
.LBB125:
	.loc 1 3425 0
	movl	$0, 1073742080
	.loc 1 3426 0
	movl	1073742080, %eax
	movl	%eax, -16(%ebp)
	.loc 1 3427 0
	movl	-16(%ebp), %eax
.LVL66:
.LBE125:
.LBE124:
	.loc 1 4686 0
	xorl	%eax, %eax
.LBB126:
.LBB127:
	.loc 1 3401 0
	movl	$1, 1073742600
.LVL67:
.LBE127:
.LBE126:
	.loc 1 4683 0
	movb	$1, m_clock_cb+1
	.loc 1 4686 0
	call	clock_clk_started_notify
.LVL68:
.L79:
.LBB128:
.LBB129:
	.loc 1 3435 0
	movl	1073742084, %eax
.LVL69:
.LBE129:
.LBE128:
	.loc 1 4688 0
	testl	%eax, %eax
	je	.L80
.LVL70:
.LBB130:
.LBB131:
	.loc 1 3425 0
	movl	$0, 1073742084
	.loc 1 3426 0
	movl	1073742084, %eax
	movl	%eax, -12(%ebp)
	.loc 1 3427 0
	movl	-12(%ebp), %eax
.LVL71:
.LBE131:
.LBE130:
	.loc 1 4696 0
	movl	$1, %eax
.LBB132:
.LBB133:
	.loc 1 3401 0
	movl	$2, 1073742600
.LVL72:
.LBE133:
.LBE132:
	.loc 1 4693 0
	movb	$1, m_clock_cb+2
	.loc 1 4696 0
	call	clock_clk_started_notify
.LVL73:
.L80:
	.loc 1 4698 0
	call	krhino_intrpt_exit
.LVL74:
	.loc 1 4699 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE199:
	.size	POWER_CLOCK_IRQHandler, .-POWER_CLOCK_IRQHandler
	.section	.text.unlikely.POWER_CLOCK_IRQHandler
.LCOLDE15:
	.section	.text.POWER_CLOCK_IRQHandler
.LHOTE15:
	.section	.bss.m_clock_cb,"aw",@nobits
	.align 4
	.type	m_clock_cb, @object
	.size	m_clock_cb, 20
m_clock_cb:
	.zero	20
	.text
.Letext0:
	.section	.text.unlikely.hfclk_stop
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1138
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF216
	.byte	0xc
	.long	.LASF217
	.long	.LASF218
	.long	.Ldebug_ranges0+0x30
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF19
	.uleb128 0x5
	.long	0xd1
	.uleb128 0x6
	.long	.LASF20
	.byte	0x1
	.value	0x124
	.long	0xb8
	.uleb128 0x7
	.byte	0x4
	.long	0x89
	.byte	0x1
	.value	0x125
	.long	0x235
	.uleb128 0x8
	.long	.LASF21
	.sleb128 -15
	.uleb128 0x8
	.long	.LASF22
	.sleb128 -14
	.uleb128 0x8
	.long	.LASF23
	.sleb128 -13
	.uleb128 0x8
	.long	.LASF24
	.sleb128 -12
	.uleb128 0x8
	.long	.LASF25
	.sleb128 -11
	.uleb128 0x8
	.long	.LASF26
	.sleb128 -10
	.uleb128 0x8
	.long	.LASF27
	.sleb128 -5
	.uleb128 0x8
	.long	.LASF28
	.sleb128 -4
	.uleb128 0x8
	.long	.LASF29
	.sleb128 -2
	.uleb128 0x8
	.long	.LASF30
	.sleb128 -1
	.uleb128 0x9
	.long	.LASF31
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x1
	.uleb128 0x9
	.long	.LASF33
	.byte	0x2
	.uleb128 0x9
	.long	.LASF34
	.byte	0x3
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.uleb128 0x9
	.long	.LASF37
	.byte	0x6
	.uleb128 0x9
	.long	.LASF38
	.byte	0x7
	.uleb128 0x9
	.long	.LASF39
	.byte	0x8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x9
	.uleb128 0x9
	.long	.LASF41
	.byte	0xa
	.uleb128 0x9
	.long	.LASF42
	.byte	0xb
	.uleb128 0x9
	.long	.LASF43
	.byte	0xc
	.uleb128 0x9
	.long	.LASF44
	.byte	0xd
	.uleb128 0x9
	.long	.LASF45
	.byte	0xe
	.uleb128 0x9
	.long	.LASF46
	.byte	0xf
	.uleb128 0x9
	.long	.LASF47
	.byte	0x10
	.uleb128 0x9
	.long	.LASF48
	.byte	0x11
	.uleb128 0x9
	.long	.LASF49
	.byte	0x12
	.uleb128 0x9
	.long	.LASF50
	.byte	0x13
	.uleb128 0x9
	.long	.LASF51
	.byte	0x14
	.uleb128 0x9
	.long	.LASF52
	.byte	0x15
	.uleb128 0x9
	.long	.LASF53
	.byte	0x16
	.uleb128 0x9
	.long	.LASF54
	.byte	0x17
	.uleb128 0x9
	.long	.LASF55
	.byte	0x18
	.uleb128 0x9
	.long	.LASF56
	.byte	0x19
	.uleb128 0x9
	.long	.LASF57
	.byte	0x1a
	.uleb128 0x9
	.long	.LASF58
	.byte	0x1b
	.uleb128 0x9
	.long	.LASF59
	.byte	0x1c
	.uleb128 0x9
	.long	.LASF60
	.byte	0x1d
	.uleb128 0x9
	.long	.LASF61
	.byte	0x20
	.uleb128 0x9
	.long	.LASF62
	.byte	0x21
	.uleb128 0x9
	.long	.LASF63
	.byte	0x22
	.uleb128 0x9
	.long	.LASF64
	.byte	0x23
	.uleb128 0x9
	.long	.LASF65
	.byte	0x24
	.uleb128 0x9
	.long	.LASF66
	.byte	0x25
	.uleb128 0x9
	.long	.LASF67
	.byte	0x26
	.uleb128 0x9
	.long	.LASF68
	.byte	0x27
	.uleb128 0x9
	.long	.LASF69
	.byte	0x28
	.uleb128 0x9
	.long	.LASF70
	.byte	0x29
	.uleb128 0x9
	.long	.LASF71
	.byte	0x2a
	.uleb128 0x9
	.long	.LASF72
	.byte	0x2d
	.uleb128 0x9
	.long	.LASF73
	.byte	0x2f
	.byte	0
	.uleb128 0x6
	.long	.LASF74
	.byte	0x1
	.value	0x15b
	.long	0xe9
	.uleb128 0xa
	.value	0xe04
	.byte	0x1
	.value	0x3e6
	.long	0x2fd
	.uleb128 0xb
	.long	.LASF75
	.byte	0x1
	.value	0x3e8
	.long	0x312
	.byte	0
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.value	0x3e9
	.long	0x317
	.byte	0x20
	.uleb128 0xb
	.long	.LASF77
	.byte	0x1
	.value	0x3ea
	.long	0x327
	.byte	0x80
	.uleb128 0xb
	.long	.LASF78
	.byte	0x1
	.value	0x3eb
	.long	0x317
	.byte	0xa0
	.uleb128 0xc
	.long	.LASF79
	.byte	0x1
	.value	0x3ec
	.long	0x32c
	.value	0x100
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.value	0x3ed
	.long	0x317
	.value	0x120
	.uleb128 0xc
	.long	.LASF81
	.byte	0x1
	.value	0x3ee
	.long	0x331
	.value	0x180
	.uleb128 0xc
	.long	.LASF82
	.byte	0x1
	.value	0x3ef
	.long	0x317
	.value	0x1a0
	.uleb128 0xc
	.long	.LASF83
	.byte	0x1
	.value	0x3f0
	.long	0x336
	.value	0x200
	.uleb128 0xc
	.long	.LASF84
	.byte	0x1
	.value	0x3f1
	.long	0x33b
	.value	0x220
	.uleb128 0xd
	.string	"IP"
	.byte	0x1
	.value	0x3f2
	.long	0x360
	.value	0x300
	.uleb128 0xc
	.long	.LASF85
	.byte	0x1
	.value	0x3f3
	.long	0x365
	.value	0x3f0
	.uleb128 0xc
	.long	.LASF86
	.byte	0x1
	.value	0x3f4
	.long	0x30d
	.value	0xe00
	.byte	0
	.uleb128 0xe
	.long	0x30d
	.long	0x30d
	.uleb128 0xf
	.long	0xca
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.long	0xb8
	.uleb128 0x10
	.long	0x2fd
	.uleb128 0xe
	.long	0xb8
	.long	0x327
	.uleb128 0xf
	.long	0xca
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.long	0x2fd
	.uleb128 0x10
	.long	0x2fd
	.uleb128 0x10
	.long	0x2fd
	.uleb128 0x10
	.long	0x2fd
	.uleb128 0xe
	.long	0xb8
	.long	0x34b
	.uleb128 0xf
	.long	0xca
	.byte	0x37
	.byte	0
	.uleb128 0xe
	.long	0x35b
	.long	0x35b
	.uleb128 0xf
	.long	0xca
	.byte	0xef
	.byte	0
	.uleb128 0x10
	.long	0x97
	.uleb128 0x10
	.long	0x34b
	.uleb128 0xe
	.long	0xb8
	.long	0x376
	.uleb128 0x11
	.long	0xca
	.value	0x283
	.byte	0
	.uleb128 0x6
	.long	.LASF87
	.byte	0x1
	.value	0x3f5
	.long	0x241
	.uleb128 0x5
	.long	0x30d
	.uleb128 0xe
	.long	0x382
	.long	0x397
	.uleb128 0xf
	.long	0xca
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.long	0x382
	.long	0x3a7
	.uleb128 0xf
	.long	0xca
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	0x382
	.long	0x3b7
	.uleb128 0xf
	.long	0xca
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.long	0x382
	.long	0x3c7
	.uleb128 0xf
	.long	0xca
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.value	0x5b8
	.byte	0x1
	.value	0x6a2
	.long	0x5c2
	.uleb128 0xb
	.long	.LASF88
	.byte	0x1
	.value	0x6a3
	.long	0x30d
	.byte	0
	.uleb128 0xb
	.long	.LASF89
	.byte	0x1
	.value	0x6a4
	.long	0x30d
	.byte	0x4
	.uleb128 0xb
	.long	.LASF90
	.byte	0x1
	.value	0x6a5
	.long	0x30d
	.byte	0x8
	.uleb128 0xb
	.long	.LASF91
	.byte	0x1
	.value	0x6a6
	.long	0x30d
	.byte	0xc
	.uleb128 0xb
	.long	.LASF92
	.byte	0x1
	.value	0x6a7
	.long	0x30d
	.byte	0x10
	.uleb128 0xb
	.long	.LASF93
	.byte	0x1
	.value	0x6a8
	.long	0x30d
	.byte	0x14
	.uleb128 0xb
	.long	.LASF94
	.byte	0x1
	.value	0x6a9
	.long	0x30d
	.byte	0x18
	.uleb128 0xb
	.long	.LASF76
	.byte	0x1
	.value	0x6aa
	.long	0x5d7
	.byte	0x1c
	.uleb128 0xc
	.long	.LASF95
	.byte	0x1
	.value	0x6ab
	.long	0x30d
	.value	0x100
	.uleb128 0xc
	.long	.LASF96
	.byte	0x1
	.value	0x6ac
	.long	0x30d
	.value	0x104
	.uleb128 0xc
	.long	.LASF97
	.byte	0x1
	.value	0x6ad
	.long	0x382
	.value	0x108
	.uleb128 0xc
	.long	.LASF98
	.byte	0x1
	.value	0x6ae
	.long	0x30d
	.value	0x10c
	.uleb128 0xc
	.long	.LASF99
	.byte	0x1
	.value	0x6af
	.long	0x30d
	.value	0x110
	.uleb128 0xc
	.long	.LASF80
	.byte	0x1
	.value	0x6b0
	.long	0x5e1
	.value	0x114
	.uleb128 0xc
	.long	.LASF100
	.byte	0x1
	.value	0x6b1
	.long	0x30d
	.value	0x128
	.uleb128 0xc
	.long	.LASF101
	.byte	0x1
	.value	0x6b2
	.long	0x30d
	.value	0x12c
	.uleb128 0xc
	.long	.LASF82
	.byte	0x1
	.value	0x6b3
	.long	0x5fb
	.value	0x130
	.uleb128 0xc
	.long	.LASF102
	.byte	0x1
	.value	0x6b4
	.long	0x30d
	.value	0x304
	.uleb128 0xc
	.long	.LASF103
	.byte	0x1
	.value	0x6b5
	.long	0x30d
	.value	0x308
	.uleb128 0xc
	.long	.LASF84
	.byte	0x1
	.value	0x6b6
	.long	0x615
	.value	0x30c
	.uleb128 0xc
	.long	.LASF104
	.byte	0x1
	.value	0x6b7
	.long	0x382
	.value	0x408
	.uleb128 0xc
	.long	.LASF105
	.byte	0x1
	.value	0x6b8
	.long	0x382
	.value	0x40c
	.uleb128 0xc
	.long	.LASF85
	.byte	0x1
	.value	0x6b9
	.long	0x382
	.value	0x410
	.uleb128 0xc
	.long	.LASF106
	.byte	0x1
	.value	0x6ba
	.long	0x382
	.value	0x414
	.uleb128 0xc
	.long	.LASF107
	.byte	0x1
	.value	0x6bb
	.long	0x382
	.value	0x418
	.uleb128 0xc
	.long	.LASF108
	.byte	0x1
	.value	0x6bc
	.long	0x382
	.value	0x41c
	.uleb128 0xc
	.long	.LASF109
	.byte	0x1
	.value	0x6bd
	.long	0x62f
	.value	0x420
	.uleb128 0xc
	.long	.LASF110
	.byte	0x1
	.value	0x6be
	.long	0x30d
	.value	0x518
	.uleb128 0xc
	.long	.LASF111
	.byte	0x1
	.value	0x6bf
	.long	0x639
	.value	0x51c
	.uleb128 0xc
	.long	.LASF112
	.byte	0x1
	.value	0x6c0
	.long	0x30d
	.value	0x528
	.uleb128 0xc
	.long	.LASF113
	.byte	0x1
	.value	0x6c1
	.long	0x643
	.value	0x52c
	.uleb128 0xc
	.long	.LASF114
	.byte	0x1
	.value	0x6c2
	.long	0x30d
	.value	0x538
	.uleb128 0xc
	.long	.LASF115
	.byte	0x1
	.value	0x6c3
	.long	0x64d
	.value	0x53c
	.uleb128 0xc
	.long	.LASF116
	.byte	0x1
	.value	0x6c4
	.long	0x30d
	.value	0x55c
	.uleb128 0xc
	.long	.LASF117
	.byte	0x1
	.value	0x6c5
	.long	0x657
	.value	0x560
	.uleb128 0xc
	.long	.LASF118
	.byte	0x1
	.value	0x6c6
	.long	0x30d
	.value	0x5b4
	.byte	0
	.uleb128 0xe
	.long	0x382
	.long	0x5d2
	.uleb128 0xf
	.long	0xca
	.byte	0x38
	.byte	0
	.uleb128 0x10
	.long	0x5c2
	.uleb128 0x5
	.long	0x5d2
	.uleb128 0x10
	.long	0x387
	.uleb128 0x5
	.long	0x5dc
	.uleb128 0xe
	.long	0x382
	.long	0x5f6
	.uleb128 0xf
	.long	0xca
	.byte	0x74
	.byte	0
	.uleb128 0x10
	.long	0x5e6
	.uleb128 0x5
	.long	0x5f6
	.uleb128 0xe
	.long	0x382
	.long	0x610
	.uleb128 0xf
	.long	0xca
	.byte	0x3e
	.byte	0
	.uleb128 0x10
	.long	0x600
	.uleb128 0x5
	.long	0x610
	.uleb128 0xe
	.long	0x382
	.long	0x62a
	.uleb128 0xf
	.long	0xca
	.byte	0x3d
	.byte	0
	.uleb128 0x10
	.long	0x61a
	.uleb128 0x5
	.long	0x62a
	.uleb128 0x10
	.long	0x3b7
	.uleb128 0x5
	.long	0x634
	.uleb128 0x10
	.long	0x3b7
	.uleb128 0x5
	.long	0x63e
	.uleb128 0x10
	.long	0x397
	.uleb128 0x5
	.long	0x648
	.uleb128 0x10
	.long	0x3a7
	.uleb128 0x5
	.long	0x652
	.uleb128 0x6
	.long	.LASF119
	.byte	0x1
	.value	0x6c7
	.long	0x3c7
	.uleb128 0x10
	.long	0xad
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xcc2
	.long	0x68d
	.uleb128 0x9
	.long	.LASF120
	.byte	0
	.uleb128 0x9
	.long	.LASF121
	.byte	0x1
	.uleb128 0x9
	.long	.LASF122
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF123
	.byte	0x1
	.value	0xcc6
	.long	0x66d
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xcc8
	.long	0x6b3
	.uleb128 0x9
	.long	.LASF124
	.byte	0
	.uleb128 0x9
	.long	.LASF125
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.long	.LASF126
	.byte	0x1
	.value	0xccb
	.long	0x699
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xcd2
	.long	0x6e5
	.uleb128 0x9
	.long	.LASF127
	.byte	0x1
	.uleb128 0x9
	.long	.LASF128
	.byte	0x2
	.uleb128 0x9
	.long	.LASF129
	.byte	0x8
	.uleb128 0x9
	.long	.LASF130
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xcd9
	.long	0x71d
	.uleb128 0x9
	.long	.LASF131
	.byte	0
	.uleb128 0x9
	.long	.LASF132
	.byte	0x4
	.uleb128 0x9
	.long	.LASF133
	.byte	0x8
	.uleb128 0x9
	.long	.LASF134
	.byte	0xc
	.uleb128 0x9
	.long	.LASF135
	.byte	0x10
	.uleb128 0x9
	.long	.LASF136
	.byte	0x14
	.uleb128 0x9
	.long	.LASF137
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.long	.LASF138
	.byte	0x1
	.value	0xd0a
	.long	0x6e5
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xd0c
	.long	0x753
	.uleb128 0x12
	.long	.LASF139
	.value	0x100
	.uleb128 0x12
	.long	.LASF140
	.value	0x104
	.uleb128 0x12
	.long	.LASF141
	.value	0x10c
	.uleb128 0x12
	.long	.LASF142
	.value	0x110
	.byte	0
	.uleb128 0x6
	.long	.LASF143
	.byte	0x1
	.value	0xd28
	.long	0x729
	.uleb128 0x7
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xde6
	.long	0x785
	.uleb128 0x9
	.long	.LASF144
	.byte	0
	.uleb128 0x9
	.long	.LASF145
	.byte	0x1
	.uleb128 0x9
	.long	.LASF146
	.byte	0x2
	.uleb128 0x9
	.long	.LASF147
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.long	.LASF148
	.byte	0x1
	.value	0xdeb
	.long	0x75f
	.uleb128 0x6
	.long	.LASF149
	.byte	0x1
	.value	0xdec
	.long	0x79d
	.uleb128 0x13
	.byte	0x4
	.long	0x7a3
	.uleb128 0x14
	.long	0x7ae
	.uleb128 0x15
	.long	0x785
	.byte	0
	.uleb128 0x6
	.long	.LASF150
	.byte	0x1
	.value	0xded
	.long	0x7ba
	.uleb128 0x16
	.long	.LASF219
	.byte	0x8
	.byte	0x1
	.value	0xdee
	.long	0x7e2
	.uleb128 0xb
	.long	.LASF151
	.byte	0x1
	.value	0xdf0
	.long	0x7e2
	.byte	0
	.uleb128 0xb
	.long	.LASF152
	.byte	0x1
	.value	0xdf1
	.long	0x791
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.long	0x7ae
	.uleb128 0x17
	.byte	0x14
	.byte	0x1
	.value	0x1135
	.long	0x84d
	.uleb128 0xb
	.long	.LASF153
	.byte	0x1
	.value	0x1138
	.long	0x84d
	.byte	0
	.uleb128 0xb
	.long	.LASF154
	.byte	0x1
	.value	0x113b
	.long	0x854
	.byte	0x1
	.uleb128 0xb
	.long	.LASF155
	.byte	0x1
	.value	0x113e
	.long	0x854
	.byte	0x2
	.uleb128 0xb
	.long	.LASF156
	.byte	0x1
	.value	0x113f
	.long	0x30d
	.byte	0x4
	.uleb128 0xb
	.long	.LASF157
	.byte	0x1
	.value	0x1140
	.long	0x859
	.byte	0x8
	.uleb128 0xb
	.long	.LASF158
	.byte	0x1
	.value	0x1141
	.long	0x30d
	.byte	0xc
	.uleb128 0xb
	.long	.LASF159
	.byte	0x1
	.value	0x1142
	.long	0x859
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF160
	.uleb128 0x10
	.long	0x84d
	.uleb128 0x13
	.byte	0x4
	.long	0x85f
	.uleb128 0x10
	.long	0x7ae
	.uleb128 0x6
	.long	.LASF161
	.byte	0x1
	.value	0x1143
	.long	0x7e8
	.uleb128 0x18
	.long	.LASF162
	.byte	0x1
	.value	0xd57
	.byte	0x3
	.long	0x88a
	.uleb128 0x19
	.long	.LASF164
	.byte	0x1
	.value	0xd57
	.long	0x71d
	.byte	0
	.uleb128 0x18
	.long	.LASF163
	.byte	0x1
	.value	0xd43
	.byte	0x3
	.long	0x8a4
	.uleb128 0x19
	.long	.LASF165
	.byte	0x1
	.value	0xd43
	.long	0xb8
	.byte	0
	.uleb128 0x1a
	.long	.LASF170
	.byte	0x1
	.value	0xd95
	.long	0x84d
	.byte	0x3
	.long	0x8c2
	.uleb128 0x19
	.long	.LASF166
	.byte	0x1
	.value	0xd95
	.long	0x6b3
	.byte	0
	.uleb128 0x18
	.long	.LASF167
	.byte	0x1
	.value	0xd6d
	.byte	0x3
	.long	0x8dc
	.uleb128 0x19
	.long	.LASF168
	.byte	0x1
	.value	0xd6d
	.long	0x68d
	.byte	0
	.uleb128 0x18
	.long	.LASF169
	.byte	0x1
	.value	0xd47
	.byte	0x3
	.long	0x8f6
	.uleb128 0x19
	.long	.LASF165
	.byte	0x1
	.value	0xd47
	.long	0xb8
	.byte	0
	.uleb128 0x1a
	.long	.LASF171
	.byte	0x1
	.value	0xd67
	.long	0x84d
	.byte	0x3
	.long	0x914
	.uleb128 0x19
	.long	.LASF172
	.byte	0x1
	.value	0xd67
	.long	0x753
	.byte	0
	.uleb128 0x1a
	.long	.LASF173
	.byte	0x1
	.value	0xdbf
	.long	0x84d
	.byte	0x3
	.long	0x932
	.uleb128 0x19
	.long	.LASF174
	.byte	0x1
	.value	0xdbf
	.long	0x235
	.byte	0
	.uleb128 0x1b
	.long	.LASF177
	.byte	0x1
	.value	0x115a
	.long	.LFB183
	.long	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.long	0x97e
	.uleb128 0x1c
	.long	0x870
	.long	.LBB30
	.long	.LBE30-.LBB30
	.byte	0x1
	.value	0x115c
	.long	0x963
	.uleb128 0x1d
	.long	0x87d
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.long	0x8a4
	.long	.LBB32
	.long	.LBE32-.LBB32
	.byte	0x1
	.value	0x115d
	.uleb128 0x1f
	.long	0x8b5
	.long	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	.LASF175
	.byte	0x1
	.value	0x11a2
	.long	0x7e2
	.byte	0x1
	.long	0x9a8
	.uleb128 0x19
	.long	.LASF176
	.byte	0x1
	.value	0x11a2
	.long	0x9a8
	.uleb128 0x20
	.long	.LASF179
	.byte	0x1
	.value	0x11a4
	.long	0x7e2
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.long	0x7e2
	.uleb128 0x21
	.long	.LASF178
	.byte	0x1
	.value	0x122e
	.long	.LFB198
	.long	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.long	0xa26
	.uleb128 0x22
	.long	.LASF189
	.byte	0x1
	.value	0x122e
	.long	0x785
	.long	.LLST1
	.uleb128 0x23
	.long	.LASF176
	.byte	0x1
	.value	0x1230
	.long	0x9a8
	.long	.LLST2
	.uleb128 0x24
	.long	.LBB37
	.long	.LBE37-.LBB37
	.uleb128 0x25
	.long	.LASF179
	.byte	0x1
	.value	0x123b
	.long	0x7e2
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x26
	.long	0x97e
	.long	.LBB38
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0x123b
	.uleb128 0x1f
	.long	0x98f
	.long	.LLST3
	.uleb128 0x27
	.long	.Ldebug_ranges0+0
	.uleb128 0x28
	.long	0x99b
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LASF220
	.byte	0x1
	.value	0xd83
	.long	0x84d
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF180
	.byte	0x1
	.value	0x114b
	.long	.LFB181
	.long	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.long	0xa75
	.uleb128 0x1c
	.long	0x870
	.long	.LBB46
	.long	.LBE46-.LBB46
	.byte	0x1
	.value	0x114d
	.long	0xa64
	.uleb128 0x1d
	.long	0x87d
	.byte	0xc
	.byte	0
	.uleb128 0x2a
	.long	0xa26
	.long	.LBB48
	.long	.LBE48-.LBB48
	.byte	0x1
	.value	0x114e
	.byte	0
	.uleb128 0x2b
	.long	.LASF221
	.byte	0x1
	.value	0x1164
	.long	0x84d
	.long	.LFB184
	.long	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.long	.LASF183
	.byte	0x1
	.value	0xdd5
	.byte	0x3
	.uleb128 0x2d
	.long	.LASF192
	.byte	0x1
	.value	0x1168
	.long	0xdd
	.long	.LFB185
	.long	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.long	0xb1e
	.uleb128 0x23
	.long	.LASF181
	.byte	0x1
	.value	0x116a
	.long	0xdd
	.long	.LLST5
	.uleb128 0x2e
	.long	.LASF201
	.long	0xb2e
	.uleb128 0x2f
	.long	0xa8b
	.long	.LBB56
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1179
	.long	0xb03
	.uleb128 0x1c
	.long	0x914
	.long	.LBB58
	.long	.LBE58-.LBB58
	.byte	0x1
	.value	0xdd7
	.long	0xaf9
	.uleb128 0x1f
	.long	0x925
	.long	.LLST6
	.byte	0
	.uleb128 0x30
	.long	.LVL15
	.long	0x10f3
	.byte	0
	.uleb128 0x1e
	.long	0x8c2
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.value	0x117b
	.uleb128 0x1f
	.long	0x8cf
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0xd8
	.long	0xb2e
	.uleb128 0xf
	.long	0xca
	.byte	0x12
	.byte	0
	.uleb128 0x5
	.long	0xb1e
	.uleb128 0x31
	.long	.LASF187
	.byte	0x1
	.value	0x1185
	.long	.LFB186
	.long	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.long	0xb83
	.uleb128 0x1c
	.long	0x8dc
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.value	0x1189
	.long	0xb67
	.uleb128 0x1f
	.long	0x8e9
	.long	.LLST8
	.byte	0
	.uleb128 0x30
	.long	.LVL20
	.long	0x10ff
	.uleb128 0x30
	.long	.LVL22
	.long	0xa33
	.uleb128 0x30
	.long	.LVL23
	.long	0x932
	.byte	0
	.uleb128 0x18
	.long	.LASF182
	.byte	0x1
	.value	0x1191
	.byte	0x1
	.long	0xbb5
	.uleb128 0x19
	.long	.LASF176
	.byte	0x1
	.value	0x1191
	.long	0x9a8
	.uleb128 0x19
	.long	.LASF179
	.byte	0x1
	.value	0x1192
	.long	0x7e2
	.uleb128 0x20
	.long	.LASF151
	.byte	0x1
	.value	0x1194
	.long	0x7e2
	.byte	0
	.uleb128 0x2c
	.long	.LASF184
	.byte	0x1
	.value	0x1145
	.byte	0x1
	.uleb128 0x18
	.long	.LASF185
	.byte	0x1
	.value	0xd5f
	.byte	0x3
	.long	0xbe4
	.uleb128 0x19
	.long	.LASF172
	.byte	0x1
	.value	0xd5f
	.long	0x753
	.uleb128 0x20
	.long	.LASF186
	.byte	0x1
	.value	0xd62
	.long	0x30d
	.byte	0
	.uleb128 0x32
	.long	.LASF188
	.byte	0x1
	.value	0x11ab
	.long	.LFB189
	.long	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.long	0xcdc
	.uleb128 0x33
	.long	.LASF190
	.byte	0x1
	.value	0x11ab
	.long	0x7e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	0xb83
	.long	.LBB76
	.long	.LBE76-.LBB76
	.byte	0x1
	.value	0x11c1
	.long	0xc43
	.uleb128 0x1f
	.long	0xb9c
	.long	.LLST9
	.uleb128 0x1f
	.long	0xb90
	.long	.LLST10
	.uleb128 0x24
	.long	.LBB77
	.long	.LBE77-.LBB77
	.uleb128 0x28
	.long	0xba8
	.long	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xbb5
	.long	.LBB78
	.long	.LBE78-.LBB78
	.byte	0x1
	.value	0x11c6
	.long	0xcc0
	.uleb128 0x1c
	.long	0xbbe
	.long	.LBB79
	.long	.LBE79-.LBB79
	.byte	0x1
	.value	0x1147
	.long	0xc87
	.uleb128 0x1f
	.long	0xbcb
	.long	.LLST12
	.uleb128 0x24
	.long	.LBB80
	.long	.LBE80-.LBB80
	.uleb128 0x34
	.long	0xbd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x88a
	.long	.LBB81
	.long	.LBE81-.LBB81
	.byte	0x1
	.value	0x1148
	.long	0xca5
	.uleb128 0x1f
	.long	0x897
	.long	.LLST13
	.byte	0
	.uleb128 0x1e
	.long	0x870
	.long	.LBB83
	.long	.LBE83-.LBB83
	.byte	0x1
	.value	0x1149
	.uleb128 0x1f
	.long	0x87d
	.long	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL26
	.long	0x110b
	.uleb128 0x30
	.long	.LVL27
	.long	0x110b
	.uleb128 0x30
	.long	.LVL37
	.long	0x1117
	.byte	0
	.uleb128 0x31
	.long	.LASF191
	.byte	0x1
	.value	0x11cd
	.long	.LFB190
	.long	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.long	0xd0e
	.uleb128 0x30
	.long	.LVL38
	.long	0x110b
	.uleb128 0x30
	.long	.LVL39
	.long	0xa33
	.uleb128 0x30
	.long	.LVL40
	.long	0x1117
	.byte	0
	.uleb128 0x2d
	.long	.LASF193
	.byte	0x1
	.value	0x11dc
	.long	0x84d
	.long	.LFB191
	.long	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.long	0xd39
	.uleb128 0x2a
	.long	0xa26
	.long	.LBB87
	.long	.LBE87-.LBB87
	.byte	0x1
	.value	0x11df
	.byte	0
	.uleb128 0x2c
	.long	.LASF194
	.byte	0x1
	.value	0x1154
	.byte	0x1
	.uleb128 0x32
	.long	.LASF195
	.byte	0x1
	.value	0x11e1
	.long	.LFB192
	.long	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.long	0xe3a
	.uleb128 0x33
	.long	.LASF190
	.byte	0x1
	.value	0x11e1
	.long	0x7e2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1c
	.long	0xb83
	.long	.LBB99
	.long	.LBE99-.LBB99
	.byte	0x1
	.value	0x11f7
	.long	0xda1
	.uleb128 0x1f
	.long	0xb9c
	.long	.LLST15
	.uleb128 0x1f
	.long	0xb90
	.long	.LLST16
	.uleb128 0x24
	.long	.LBB100
	.long	.LBE100-.LBB100
	.uleb128 0x28
	.long	0xba8
	.long	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xd39
	.long	.LBB101
	.long	.LBE101-.LBB101
	.byte	0x1
	.value	0x11fc
	.long	0xe1e
	.uleb128 0x1c
	.long	0xbbe
	.long	.LBB102
	.long	.LBE102-.LBB102
	.byte	0x1
	.value	0x1156
	.long	0xde5
	.uleb128 0x1f
	.long	0xbcb
	.long	.LLST18
	.uleb128 0x24
	.long	.LBB103
	.long	.LBE103-.LBB103
	.uleb128 0x34
	.long	0xbd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x88a
	.long	.LBB104
	.long	.LBE104-.LBB104
	.byte	0x1
	.value	0x1157
	.long	0xe03
	.uleb128 0x1f
	.long	0x897
	.long	.LLST19
	.byte	0
	.uleb128 0x1e
	.long	0x870
	.long	.LBB106
	.long	.LBE106-.LBB106
	.byte	0x1
	.value	0x1158
	.uleb128 0x1f
	.long	0x87d
	.long	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LVL43
	.long	0x110b
	.uleb128 0x30
	.long	.LVL44
	.long	0x110b
	.uleb128 0x30
	.long	.LVL54
	.long	0x1117
	.byte	0
	.uleb128 0x31
	.long	.LASF196
	.byte	0x1
	.value	0x1203
	.long	.LFB193
	.long	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.long	0xe6c
	.uleb128 0x30
	.long	.LVL55
	.long	0x110b
	.uleb128 0x30
	.long	.LVL56
	.long	0x932
	.uleb128 0x30
	.long	.LVL57
	.long	0x1117
	.byte	0
	.uleb128 0x2d
	.long	.LASF197
	.byte	0x1
	.value	0x1212
	.long	0x84d
	.long	.LFB194
	.long	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.long	0xea1
	.uleb128 0x1e
	.long	0x8a4
	.long	.LBB108
	.long	.LBE108-.LBB108
	.byte	0x1
	.value	0x1215
	.uleb128 0x1f
	.long	0x8b5
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF198
	.byte	0x1
	.value	0x1217
	.long	0xdd
	.long	.LFB195
	.long	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.long	0xef0
	.uleb128 0x33
	.long	.LASF199
	.byte	0x1
	.value	0x1217
	.long	0x97
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.long	.LASF200
	.byte	0x1
	.value	0x1217
	.long	0x791
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x35
	.long	.LASF181
	.byte	0x1
	.value	0x1219
	.long	0xdd
	.byte	0xf
	.uleb128 0x2e
	.long	.LASF201
	.long	0xf00
	.byte	0
	.uleb128 0xe
	.long	0xd8
	.long	0xf00
	.uleb128 0xf
	.long	0xca
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	0xef0
	.uleb128 0x2d
	.long	.LASF202
	.byte	0x1
	.value	0x121e
	.long	0xdd
	.long	.LFB196
	.long	.LFE196-.LFB196
	.uleb128 0x1
	.byte	0x9c
	.long	0xf36
	.uleb128 0x35
	.long	.LASF181
	.byte	0x1
	.value	0x1220
	.long	0xdd
	.byte	0xf
	.uleb128 0x2e
	.long	.LASF201
	.long	0xf36
	.byte	0
	.uleb128 0x5
	.long	0xef0
	.uleb128 0x2d
	.long	.LASF203
	.byte	0x1
	.value	0x1225
	.long	0xdd
	.long	.LFB197
	.long	.LFE197-.LFB197
	.uleb128 0x1
	.byte	0x9c
	.long	0xf7b
	.uleb128 0x33
	.long	.LASF204
	.byte	0x1
	.value	0x1227
	.long	0xf7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x35
	.long	.LASF181
	.byte	0x1
	.value	0x1229
	.long	0xdd
	.byte	0xf
	.uleb128 0x2e
	.long	.LASF201
	.long	0xf91
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.long	0x84d
	.uleb128 0xe
	.long	0xd8
	.long	0xf91
	.uleb128 0xf
	.long	0xca
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.long	0xf81
	.uleb128 0x31
	.long	.LASF205
	.byte	0x1
	.value	0x1243
	.long	.LFB199
	.long	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.long	0x10bd
	.uleb128 0x1c
	.long	0x8f6
	.long	.LBB122
	.long	.LBE122-.LBB122
	.byte	0x1
	.value	0x1246
	.long	0xfca
	.uleb128 0x1f
	.long	0x907
	.long	.LLST22
	.byte	0
	.uleb128 0x1c
	.long	0xbbe
	.long	.LBB124
	.long	.LBE124-.LBB124
	.byte	0x1
	.value	0x1248
	.long	0xffa
	.uleb128 0x1f
	.long	0xbcb
	.long	.LLST23
	.uleb128 0x24
	.long	.LBB125
	.long	.LBE125-.LBB125
	.uleb128 0x34
	.long	0xbd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x8dc
	.long	.LBB126
	.long	.LBE126-.LBB126
	.byte	0x1
	.value	0x124a
	.long	0x1018
	.uleb128 0x1f
	.long	0x8e9
	.long	.LLST24
	.byte	0
	.uleb128 0x1c
	.long	0x8f6
	.long	.LBB128
	.long	.LBE128-.LBB128
	.byte	0x1
	.value	0x1250
	.long	0x1036
	.uleb128 0x1f
	.long	0x907
	.long	.LLST25
	.byte	0
	.uleb128 0x1c
	.long	0xbbe
	.long	.LBB130
	.long	.LBE130-.LBB130
	.byte	0x1
	.value	0x1252
	.long	0x1066
	.uleb128 0x1f
	.long	0xbcb
	.long	.LLST26
	.uleb128 0x24
	.long	.LBB131
	.long	.LBE131-.LBB131
	.uleb128 0x34
	.long	0xbd7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0x8dc
	.long	.LBB132
	.long	.LBE132-.LBB132
	.byte	0x1
	.value	0x1254
	.long	0x1084
	.uleb128 0x1f
	.long	0x8e9
	.long	.LLST27
	.byte	0
	.uleb128 0x30
	.long	.LVL63
	.long	0x1123
	.uleb128 0x36
	.long	.LVL68
	.long	0x9ae
	.long	0x10a0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x36
	.long	.LVL73
	.long	0x9ae
	.long	0x10b3
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.long	.LVL74
	.long	0x112f
	.byte	0
	.uleb128 0x25
	.long	.LASF206
	.byte	0x1
	.value	0x1144
	.long	0x864
	.uleb128 0x5
	.byte	0x3
	.long	m_clock_cb
	.uleb128 0x38
	.long	.LASF207
	.byte	0x1
	.value	0x4fe
	.long	0x668
	.uleb128 0x38
	.long	.LASF208
	.byte	0x1
	.value	0xac0
	.long	0xb8
	.uleb128 0x38
	.long	.LASF209
	.byte	0x1
	.value	0xac1
	.long	0xb8
	.uleb128 0x39
	.long	.LASF210
	.long	.LASF210
	.byte	0x1
	.value	0xdb0
	.uleb128 0x39
	.long	.LASF211
	.long	.LASF211
	.byte	0x1
	.value	0xdb1
	.uleb128 0x39
	.long	.LASF212
	.long	.LASF212
	.byte	0x1
	.value	0xe1c
	.uleb128 0x39
	.long	.LASF213
	.long	.LASF213
	.byte	0x1
	.value	0xe1d
	.uleb128 0x39
	.long	.LASF214
	.long	.LASF214
	.byte	0x1
	.value	0xe76
	.uleb128 0x39
	.long	.LASF215
	.long	.LASF215
	.byte	0x1
	.value	0xe77
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x22
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
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
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
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LVL10
	.value	0x1
	.byte	0x56
	.long	.LVL10
	.long	.LFE198
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10
	.value	0x14
	.byte	0x3
	.long	m_clock_cb+8
	.byte	0x3
	.long	m_clock_cb+16
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL10
	.long	.LFE198
	.value	0x15
	.byte	0x3
	.long	m_clock_cb+8
	.byte	0x3
	.long	m_clock_cb+16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.value	0x1
	.byte	0x53
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x53
	.long	.LVL9
	.long	.LVL10
	.value	0x14
	.byte	0x3
	.long	m_clock_cb+8
	.byte	0x3
	.long	m_clock_cb+16
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	.LVL10
	.long	.LFE198
	.value	0x15
	.byte	0x3
	.long	m_clock_cb+8
	.byte	0x3
	.long	m_clock_cb+16
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL5
	.long	.LVL6
	.value	0x1
	.byte	0x52
	.long	.LVL8
	.long	.LFE198
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL18
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	.LVL19
	.long	.LFE185
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL17
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL20
	.long	.LVL21
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL28
	.long	.LVL32
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST10:
	.long	.LVL28
	.long	.LVL32
	.value	0x6
	.byte	0x3
	.long	m_clock_cb+16
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x52
	.long	.LVL30
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL33
	.long	.LVL34
	.value	0x4
	.byte	0xa
	.value	0x104
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL35
	.long	.LVL36
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL45
	.long	.LVL49
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL45
	.long	.LVL49
	.value	0x6
	.byte	0x3
	.long	m_clock_cb+8
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x52
	.long	.LVL47
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL50
	.long	.LVL51
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL51
	.long	.LVL52
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL58
	.long	.LVL59
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL63
	.long	.LVL64
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL65
	.long	.LVL66
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL66
	.long	.LVL67
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL68
	.long	.LVL69
	.value	0x4
	.byte	0xa
	.value	0x104
	.byte	0x9f
	.long	0
	.long	0
.LLST26:
	.long	.LVL70
	.long	.LVL71
	.value	0x4
	.byte	0xa
	.value	0x104
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL71
	.long	.LVL72
	.value	0x2
	.byte	0x32
	.byte	0x9f
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
	.long	.LFB183
	.long	.LFE183-.LFB183
	.long	.LFB198
	.long	.LFE198-.LFB198
	.long	.LFB181
	.long	.LFE181-.LFB181
	.long	.LFB184
	.long	.LFE184-.LFB184
	.long	.LFB185
	.long	.LFE185-.LFB185
	.long	.LFB186
	.long	.LFE186-.LFB186
	.long	.LFB189
	.long	.LFE189-.LFB189
	.long	.LFB190
	.long	.LFE190-.LFB190
	.long	.LFB191
	.long	.LFE191-.LFB191
	.long	.LFB192
	.long	.LFE192-.LFB192
	.long	.LFB193
	.long	.LFE193-.LFB193
	.long	.LFB194
	.long	.LFE194-.LFB194
	.long	.LFB195
	.long	.LFE195-.LFB195
	.long	.LFB196
	.long	.LFE196-.LFB196
	.long	.LFB197
	.long	.LFE197-.LFB197
	.long	.LFB199
	.long	.LFE199-.LFB199
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB38
	.long	.LBE38
	.long	.LBB41
	.long	.LBE41
	.long	0
	.long	0
	.long	.LBB56
	.long	.LBE56
	.long	.LBB61
	.long	.LBE61
	.long	0
	.long	0
	.long	.LFB183
	.long	.LFE183
	.long	.LFB198
	.long	.LFE198
	.long	.LFB181
	.long	.LFE181
	.long	.LFB184
	.long	.LFE184
	.long	.LFB185
	.long	.LFE185
	.long	.LFB186
	.long	.LFE186
	.long	.LFB189
	.long	.LFE189
	.long	.LFB190
	.long	.LFE190
	.long	.LFB191
	.long	.LFE191
	.long	.LFB192
	.long	.LFE192
	.long	.LFB193
	.long	.LFE193
	.long	.LFB194
	.long	.LFE194
	.long	.LFB195
	.long	.LFE195
	.long	.LFB196
	.long	.LFE196
	.long	.LFB197
	.long	.LFE197
	.long	.LFB199
	.long	.LFE199
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF124:
	.string	"NRF_CLOCK_HFCLK_LOW_ACCURACY"
.LASF81:
	.string	"ICPR"
.LASF179:
	.string	"p_item"
.LASF78:
	.string	"RSERVED1"
.LASF197:
	.string	"nrf_drv_clock_hfclk_is_running"
.LASF217:
	.string	"src/nrf_drv_clock.c"
.LASF189:
	.string	"evt_type"
.LASF71:
	.string	"CRYPTOCELL_IRQn"
.LASF135:
	.string	"NRF_CLOCK_TASK_CAL"
.LASF41:
	.string	"TIMER2_IRQn"
.LASF61:
	.string	"MWU_IRQn"
.LASF206:
	.string	"m_clock_cb"
.LASF3:
	.string	"__uint8_t"
.LASF50:
	.string	"COMP_LPCOMP_IRQn"
.LASF69:
	.string	"UARTE1_IRQn"
.LASF86:
	.string	"STIR"
.LASF131:
	.string	"NRF_CLOCK_TASK_HFCLKSTART"
.LASF214:
	.string	"krhino_intrpt_enter"
.LASF133:
	.string	"NRF_CLOCK_TASK_LFCLKSTART"
.LASF175:
	.string	"item_dequeue"
.LASF65:
	.string	"RTC2_IRQn"
.LASF49:
	.string	"QDEC_IRQn"
.LASF39:
	.string	"TIMER0_IRQn"
.LASF55:
	.string	"SWI4_EGU4_IRQn"
.LASF79:
	.string	"ISPR"
.LASF33:
	.string	"UARTE0_UART0_IRQn"
.LASF35:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF129:
	.string	"NRF_CLOCK_INT_DONE_MASK"
.LASF21:
	.string	"Reset_IRQn"
.LASF218:
	.string	"/home/stone/Documents/pca"
.LASF145:
	.string	"NRF_DRV_CLOCK_EVT_LFCLK_STARTED"
.LASF0:
	.string	"signed char"
.LASF128:
	.string	"NRF_CLOCK_INT_LF_STARTED_MASK"
.LASF60:
	.string	"PDM_IRQn"
.LASF70:
	.string	"QSPI_IRQn"
.LASF11:
	.string	"long long unsigned int"
.LASF31:
	.string	"POWER_CLOCK_IRQn"
.LASF102:
	.string	"INTENSET"
.LASF149:
	.string	"nrf_drv_clock_event_handler_t"
.LASF73:
	.string	"SPIM3_IRQn"
.LASF58:
	.string	"TIMER4_IRQn"
.LASF211:
	.string	"nrf_drv_common_clock_irq_disable"
.LASF7:
	.string	"long int"
.LASF193:
	.string	"nrf_drv_clock_lfclk_is_running"
.LASF165:
	.string	"int_mask"
.LASF116:
	.string	"TRACECONFIG"
.LASF62:
	.string	"PWM1_IRQn"
.LASF122:
	.string	"NRF_CLOCK_LFCLK_Synth"
.LASF94:
	.string	"TASKS_CTSTOP"
.LASF32:
	.string	"RADIO_IRQn"
.LASF95:
	.string	"EVENTS_HFCLKSTARTED"
.LASF166:
	.string	"clk_src"
.LASF51:
	.string	"SWI0_EGU0_IRQn"
.LASF14:
	.string	"uint16_t"
.LASF192:
	.string	"nrf_drv_clock_init"
.LASF120:
	.string	"NRF_CLOCK_LFCLK_RC"
.LASF25:
	.string	"BusFault_IRQn"
.LASF169:
	.string	"nrf_clock_int_disable"
.LASF167:
	.string	"nrf_clock_lf_src_set"
.LASF29:
	.string	"PendSV_IRQn"
.LASF221:
	.string	"nrf_drv_clock_init_check"
.LASF23:
	.string	"HardFault_IRQn"
.LASF159:
	.string	"p_lf_head"
.LASF110:
	.string	"LFCLKSRC"
.LASF176:
	.string	"p_head"
.LASF216:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF186:
	.string	"dummy"
.LASF194:
	.string	"hfclk_start"
.LASF153:
	.string	"module_initialized"
.LASF10:
	.string	"long long int"
.LASF195:
	.string	"nrf_drv_clock_hfclk_request"
.LASF162:
	.string	"nrf_clock_task_trigger"
.LASF12:
	.string	"unsigned int"
.LASF68:
	.string	"USBD_IRQn"
.LASF24:
	.string	"MemoryManagement_IRQn"
.LASF56:
	.string	"SWI5_EGU5_IRQn"
.LASF132:
	.string	"NRF_CLOCK_TASK_HFCLKSTOP"
.LASF147:
	.string	"NRF_DRV_CLOCK_EVT_CAL_ABORTED"
.LASF220:
	.string	"nrf_clock_lf_is_running"
.LASF91:
	.string	"TASKS_LFCLKSTOP"
.LASF209:
	.string	"__StackLimit"
.LASF118:
	.string	"LFRCMODE"
.LASF199:
	.string	"interval"
.LASF172:
	.string	"event"
.LASF27:
	.string	"SVCall_IRQn"
.LASF5:
	.string	"short unsigned int"
.LASF139:
	.string	"NRF_CLOCK_EVENT_HFCLKSTARTED"
.LASF184:
	.string	"lfclk_start"
.LASF198:
	.string	"nrf_drv_clock_calibration_start"
.LASF45:
	.string	"ECB_IRQn"
.LASF37:
	.string	"GPIOTE_IRQn"
.LASF107:
	.string	"LFCLKSTAT"
.LASF137:
	.string	"NRF_CLOCK_TASK_CTSTOP"
.LASF2:
	.string	"short int"
.LASF125:
	.string	"NRF_CLOCK_HFCLK_HIGH_ACCURACY"
.LASF43:
	.string	"TEMP_IRQn"
.LASF30:
	.string	"SysTick_IRQn"
.LASF26:
	.string	"UsageFault_IRQn"
.LASF200:
	.string	"handler"
.LASF104:
	.string	"HFCLKRUN"
.LASF148:
	.string	"nrf_drv_clock_evt_type_t"
.LASF204:
	.string	"p_is_calibrating"
.LASF174:
	.string	"IRQn"
.LASF219:
	.string	"nrf_drv_clock_handler_item_s"
.LASF150:
	.string	"nrf_drv_clock_handler_item_t"
.LASF20:
	.string	"ret_code_t"
.LASF168:
	.string	"source"
.LASF18:
	.string	"sizetype"
.LASF152:
	.string	"event_handler"
.LASF52:
	.string	"SWI1_EGU1_IRQn"
.LASF181:
	.string	"err_code"
.LASF40:
	.string	"TIMER1_IRQn"
.LASF83:
	.string	"IABR"
.LASF117:
	.string	"RESERVED10"
.LASF136:
	.string	"NRF_CLOCK_TASK_CTSTART"
.LASF88:
	.string	"TASKS_HFCLKSTART"
.LASF98:
	.string	"EVENTS_DONE"
.LASF202:
	.string	"nrf_drv_clock_calibration_abort"
.LASF54:
	.string	"SWI3_EGU3_IRQn"
.LASF146:
	.string	"NRF_DRV_CLOCK_EVT_CAL_DONE"
.LASF215:
	.string	"krhino_intrpt_exit"
.LASF127:
	.string	"NRF_CLOCK_INT_HF_STARTED_MASK"
.LASF99:
	.string	"EVENTS_CTTO"
.LASF77:
	.string	"ICER"
.LASF106:
	.string	"LFCLKRUN"
.LASF171:
	.string	"nrf_clock_event_check"
.LASF38:
	.string	"SAADC_IRQn"
.LASF183:
	.string	"nrf_drv_common_power_clock_irq_init"
.LASF36:
	.string	"NFCT_IRQn"
.LASF100:
	.string	"EVENTS_CTSTARTED"
.LASF188:
	.string	"nrf_drv_clock_lfclk_request"
.LASF173:
	.string	"nrf_drv_common_irq_enable_check"
.LASF182:
	.string	"item_enqueue"
.LASF187:
	.string	"nrf_drv_clock_uninit"
.LASF80:
	.string	"RESERVED2"
.LASF82:
	.string	"RESERVED3"
.LASF63:
	.string	"PWM2_IRQn"
.LASF85:
	.string	"RESERVED5"
.LASF119:
	.string	"NRF_CLOCK_Type"
.LASF111:
	.string	"RESERVED7"
.LASF113:
	.string	"RESERVED8"
.LASF115:
	.string	"RESERVED9"
.LASF208:
	.string	"__StackTop"
.LASF203:
	.string	"nrf_drv_clock_is_calibrating"
.LASF160:
	.string	"_Bool"
.LASF15:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF67:
	.string	"FPU_IRQn"
.LASF207:
	.string	"ITM_RxBuffer"
.LASF44:
	.string	"RNG_IRQn"
.LASF75:
	.string	"ISER"
.LASF87:
	.string	"NVIC_Type"
.LASF53:
	.string	"SWI2_EGU2_IRQn"
.LASF156:
	.string	"hfclk_requests"
.LASF114:
	.string	"CTIV"
.LASF151:
	.string	"p_next"
.LASF96:
	.string	"EVENTS_LFCLKSTARTED"
.LASF121:
	.string	"NRF_CLOCK_LFCLK_Xtal"
.LASF201:
	.string	"__func__"
.LASF177:
	.string	"hfclk_stop"
.LASF138:
	.string	"nrf_clock_task_t"
.LASF210:
	.string	"nrf_drv_common_irq_enable"
.LASF97:
	.string	"RESERVED1"
.LASF180:
	.string	"lfclk_stop"
.LASF74:
	.string	"IRQn_Type"
.LASF109:
	.string	"RESERVED6"
.LASF16:
	.string	"uint32_t"
.LASF213:
	.string	"app_util_critical_region_exit"
.LASF154:
	.string	"hfclk_on"
.LASF66:
	.string	"I2S_IRQn"
.LASF161:
	.string	"nrf_drv_clock_cb_t"
.LASF17:
	.string	"long double"
.LASF64:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF19:
	.string	"char"
.LASF72:
	.string	"PWM3_IRQn"
.LASF158:
	.string	"lfclk_requests"
.LASF57:
	.string	"TIMER3_IRQn"
.LASF170:
	.string	"nrf_clock_hf_is_running"
.LASF4:
	.string	"__uint16_t"
.LASF141:
	.string	"NRF_CLOCK_EVENT_DONE"
.LASF22:
	.string	"NonMaskableInt_IRQn"
.LASF6:
	.string	"__int32_t"
.LASF8:
	.string	"__uint32_t"
.LASF47:
	.string	"WDT_IRQn"
.LASF142:
	.string	"NRF_CLOCK_EVENT_CTTO"
.LASF76:
	.string	"RESERVED0"
.LASF164:
	.string	"task"
.LASF155:
	.string	"lfclk_on"
.LASF84:
	.string	"RESERVED4"
.LASF178:
	.string	"clock_clk_started_notify"
.LASF196:
	.string	"nrf_drv_clock_hfclk_release"
.LASF112:
	.string	"HFXODEBOUNCE"
.LASF42:
	.string	"RTC0_IRQn"
.LASF190:
	.string	"p_handler_item"
.LASF140:
	.string	"NRF_CLOCK_EVENT_LFCLKSTARTED"
.LASF92:
	.string	"TASKS_CAL"
.LASF34:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF144:
	.string	"NRF_DRV_CLOCK_EVT_HFCLK_STARTED"
.LASF185:
	.string	"nrf_clock_event_clear"
.LASF13:
	.string	"uint8_t"
.LASF212:
	.string	"app_util_critical_region_enter"
.LASF46:
	.string	"CCM_AAR_IRQn"
.LASF191:
	.string	"nrf_drv_clock_lfclk_release"
.LASF157:
	.string	"p_hf_head"
.LASF59:
	.string	"PWM0_IRQn"
.LASF105:
	.string	"HFCLKSTAT"
.LASF126:
	.string	"nrf_clock_hfclk_t"
.LASF90:
	.string	"TASKS_LFCLKSTART"
.LASF108:
	.string	"LFCLKSRCCOPY"
.LASF28:
	.string	"DebugMonitor_IRQn"
.LASF134:
	.string	"NRF_CLOCK_TASK_LFCLKSTOP"
.LASF89:
	.string	"TASKS_HFCLKSTOP"
.LASF143:
	.string	"nrf_clock_event_t"
.LASF163:
	.string	"nrf_clock_int_enable"
.LASF9:
	.string	"long unsigned int"
.LASF93:
	.string	"TASKS_CTSTART"
.LASF48:
	.string	"RTC1_IRQn"
.LASF130:
	.string	"NRF_CLOCK_INT_CTTO_MASK"
.LASF103:
	.string	"INTENCLR"
.LASF101:
	.string	"EVENTS_CTSTOPPED"
.LASF205:
	.string	"POWER_CLOCK_IRQHandler"
.LASF123:
	.string	"nrf_clock_lfclk_t"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
