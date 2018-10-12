	.file	"cli.c"
	.text
.Ltext0:
	.section	.text.unlikely.exit_cmd,"ax",@progbits
.LCOLDB0:
	.section	.text.exit_cmd,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.exit_cmd
.Ltext_cold0:
	.section	.text.exit_cmd
	.type	exit_cmd, @function
exit_cmd:
.LFB27:
	.file 1 "tools/cli/cli.c"
	.loc 1 574 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 575 0
	movl	$1, cliexit
	.loc 1 574 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 577 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE27:
	.size	exit_cmd, .-exit_cmd
	.section	.text.unlikely.exit_cmd
.LCOLDE0:
	.section	.text.exit_cmd
.LHOTE0:
	.section	.text.unlikely.tftp_ota_thread,"ax",@progbits
.LCOLDB1:
	.section	.text.tftp_ota_thread,"ax",@progbits
.LHOTB1:
	.globl	tftp_ota_thread
	.type	tftp_ota_thread, @function
tftp_ota_thread:
.LFB31:
	.loc 1 598 0
	.cfi_startproc
.LVL1:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 599 0
	movl	$0, 8(%ebp)
.LVL2:
	.loc 1 600 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 599 0
	jmp	aos_task_exit
.LVL3:
	.cfi_endproc
.LFE31:
	.size	tftp_ota_thread, .-tftp_ota_thread
	.section	.text.unlikely.tftp_ota_thread
.LCOLDE1:
	.section	.text.tftp_ota_thread
.LHOTE1:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC2:
	.string	"LOCAL OTA"
	.section	.text.unlikely.ota_cmd,"ax",@progbits
.LCOLDB3:
	.section	.text.ota_cmd,"ax",@progbits
.LHOTB3:
	.type	ota_cmd, @function
ota_cmd:
.LFB32:
	.loc 1 603 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 604 0
	movl	$4096, 20(%ebp)
.LVL5:
	movl	$0, 16(%ebp)
.LVL6:
	movl	$tftp_ota_thread, 12(%ebp)
.LVL7:
	movl	$.LC2, 8(%ebp)
.LVL8:
	.loc 1 605 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 604 0
	jmp	aos_task_new
.LVL9:
	.cfi_endproc
.LFE32:
	.size	ota_cmd, .-ota_cmd
	.section	.text.unlikely.ota_cmd
.LCOLDE3:
	.section	.text.ota_cmd
.LHOTE3:
	.section	.text.unlikely.aos_cli_register_command,"ax",@progbits
.LCOLDB4:
	.section	.text.aos_cli_register_command,"ax",@progbits
.LHOTB4:
	.globl	aos_cli_register_command
	.type	aos_cli_register_command, @function
aos_cli_register_command:
.LFB33:
	.loc 1 610 0
	.cfi_startproc
.LVL10:
	.loc 1 613 0
	movl	cli, %edx
	.loc 1 610 0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 614 0
	movl	$1, %eax
	.loc 1 610 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 613 0
	testl	%edx, %edx
	.loc 1 610 0
	movl	8(%ebp), %ecx
	.loc 1 613 0
	je	.L8
	.loc 1 617 0
	cmpl	$0, (%ecx)
	.loc 1 618 0
	movl	$-22, %eax
	.loc 1 617 0
	je	.L8
	.loc 1 617 0 is_stmt 0 discriminator 1
	cmpl	$0, 8(%ecx)
	je	.L8
	.loc 1 621 0 is_stmt 1
	movl	264(%edx), %ebx
	.loc 1 634 0
	movl	$-12, %eax
	.loc 1 621 0
	cmpl	$63, %ebx
	ja	.L8
	xorl	%eax, %eax
.L9:
.LVL11:
	.loc 1 625 0 discriminator 1
	cmpl	%ebx, %eax
	je	.L18
	.loc 1 626 0
	cmpl	8(%edx,%eax,4), %ecx
	je	.L15
	.loc 1 625 0 discriminator 2
	incl	%eax
.LVL12:
	jmp	.L9
.LVL13:
.L18:
	.loc 1 630 0
	leal	1(%eax), %ebx
	movl	%ebx, 264(%edx)
	movl	%ecx, 8(%edx,%eax,4)
.L15:
	.loc 1 627 0
	xorl	%eax, %eax
.LVL14:
.L8:
	.loc 1 635 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE33:
	.size	aos_cli_register_command, .-aos_cli_register_command
	.section	.text.unlikely.aos_cli_register_command
.LCOLDE4:
	.section	.text.aos_cli_register_command
.LHOTE4:
	.section	.text.unlikely.aos_cli_unregister_command,"ax",@progbits
.LCOLDB5:
	.section	.text.aos_cli_unregister_command,"ax",@progbits
.LHOTB5:
	.globl	aos_cli_unregister_command
	.type	aos_cli_unregister_command, @function
aos_cli_unregister_command:
.LFB34:
	.loc 1 638 0
	.cfi_startproc
.LVL15:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 641 0
	movl	$-22, %eax
	.loc 1 638 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
	.loc 1 638 0
	movl	8(%ebp), %ecx
	.loc 1 640 0
	cmpl	$0, (%ecx)
	je	.L20
	.loc 1 640 0 is_stmt 0 discriminator 1
	cmpl	$0, 8(%ecx)
	je	.L20
	.loc 1 644 0 is_stmt 1
	movl	cli, %ebx
	xorl	%edx, %edx
	movl	264(%ebx), %eax
.L21:
.LVL16:
	.loc 1 644 0 is_stmt 0 discriminator 1
	cmpl	%eax, %edx
	je	.L28
	.loc 1 645 0 is_stmt 1
	cmpl	8(%ebx,%edx,4), %ecx
	jne	.L22
.LBB2:
	.loc 1 646 0
	decl	%eax
	movl	%eax, 264(%ebx)
	.loc 1 647 0
	subl	%edx, %eax
.LVL17:
	.loc 1 648 0
	testl	%eax, %eax
	jle	.L23
	.loc 1 649 0
	sall	$2, %eax
.LVL18:
	pushl	%ecx
.LVL19:
	pushl	%eax
	leal	12(%ebx,%edx,4), %eax
	pushl	%eax
	leal	8(%ebx,%edx,4), %eax
	pushl	%eax
	call	memmove
.LVL20:
	addl	$16, %esp
.L23:
	.loc 1 652 0
	movl	264(%ebx), %eax
	movl	$0, 8(%ebx,%eax,4)
	.loc 1 653 0
	xorl	%eax, %eax
	jmp	.L20
.LVL21:
.L22:
.LBE2:
	.loc 1 644 0 discriminator 2
	incl	%edx
.LVL22:
	jmp	.L21
.L28:
	.loc 1 657 0
	movl	$-12, %eax
.LVL23:
.L20:
	.loc 1 658 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE34:
	.size	aos_cli_unregister_command, .-aos_cli_unregister_command
	.section	.text.unlikely.aos_cli_unregister_command
.LCOLDE5:
	.section	.text.aos_cli_unregister_command
.LHOTE5:
	.section	.text.unlikely.aos_cli_register_commands,"ax",@progbits
.LCOLDB6:
	.section	.text.aos_cli_register_commands,"ax",@progbits
.LHOTB6:
	.globl	aos_cli_register_commands
	.type	aos_cli_register_commands, @function
aos_cli_register_commands:
.LFB35:
	.loc 1 661 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 665 0
	movl	$1, %eax
	.loc 1 661 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	xorl	%ebx, %ebx
	.loc 1 664 0
	cmpl	$0, cli
	.loc 1 661 0
	movl	8(%ebp), %edx
	.loc 1 664 0
	je	.L30
.LVL25:
.L31:
	.loc 1 667 0 discriminator 1
	cmpl	12(%ebp), %ebx
	jge	.L36
	.loc 1 668 0
	pushl	%edx
	leal	12(%edx), %esi
.LVL26:
	call	aos_cli_register_command
.LVL27:
	testl	%eax, %eax
	popl	%edx
	jne	.L30
	.loc 1 667 0 discriminator 2
	incl	%ebx
.LVL28:
	.loc 1 668 0 discriminator 2
	movl	%esi, %edx
	jmp	.L31
.LVL29:
.L36:
	.loc 1 673 0
	xorl	%eax, %eax
.LVL30:
.L30:
	.loc 1 674 0
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
	.size	aos_cli_register_commands, .-aos_cli_register_commands
	.section	.text.unlikely.aos_cli_register_commands
.LCOLDE6:
	.section	.text.aos_cli_register_commands
.LHOTE6:
	.section	.text.unlikely.aos_cli_unregister_commands,"ax",@progbits
.LCOLDB7:
	.section	.text.aos_cli_unregister_commands,"ax",@progbits
.LHOTB7:
	.globl	aos_cli_unregister_commands
	.type	aos_cli_unregister_commands, @function
aos_cli_unregister_commands:
.LFB36:
	.loc 1 677 0
	.cfi_startproc
.LVL31:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 677 0
	movl	8(%ebp), %eax
	.loc 1 680 0
	xorl	%ebx, %ebx
.LVL32:
.L38:
	.loc 1 680 0 is_stmt 0 discriminator 1
	cmpl	12(%ebp), %ebx
	jge	.L43
	.loc 1 681 0 is_stmt 1
	subl	$12, %esp
	leal	12(%eax), %esi
.LVL33:
	pushl	%eax
	call	aos_cli_unregister_command
.LVL34:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L39
	.loc 1 680 0 discriminator 2
	incl	%ebx
.LVL35:
	.loc 1 681 0 discriminator 2
	movl	%esi, %eax
.LVL36:
	jmp	.L38
.LVL37:
.L43:
	.loc 1 686 0
	xorl	%eax, %eax
.LVL38:
.L39:
	.loc 1 687 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL39:
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE36:
	.size	aos_cli_unregister_commands, .-aos_cli_unregister_commands
	.section	.text.unlikely.aos_cli_unregister_commands
.LCOLDE7:
	.section	.text.aos_cli_unregister_commands
.LHOTE7:
	.section	.text.unlikely.aos_cli_stop,"ax",@progbits
.LCOLDB8:
	.section	.text.aos_cli_stop,"ax",@progbits
.LHOTB8:
	.globl	aos_cli_stop
	.type	aos_cli_stop, @function
aos_cli_stop:
.LFB37:
	.loc 1 690 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 694 0
	xorl	%eax, %eax
	.loc 1 691 0
	movl	$1, cliexit
	.loc 1 690 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 694 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE37:
	.size	aos_cli_stop, .-aos_cli_stop
	.section	.text.unlikely.aos_cli_stop
.LCOLDE8:
	.section	.text.aos_cli_stop
.LHOTE8:
	.section	.text.unlikely.aos_cli_get_tag,"ax",@progbits
.LCOLDB9:
	.section	.text.aos_cli_get_tag,"ax",@progbits
.LHOTB9:
	.globl	aos_cli_get_tag
	.type	aos_cli_get_tag, @function
aos_cli_get_tag:
.LFB39:
	.loc 1 746 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 748 0
	movl	$esc_tag, %eax
	.loc 1 746 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 748 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE39:
	.size	aos_cli_get_tag, .-aos_cli_get_tag
	.section	.text.unlikely.aos_cli_get_tag
.LCOLDE9:
	.section	.text.aos_cli_get_tag
.LHOTE9:
	.section	.text.unlikely.cli_putstr,"ax",@progbits
.LCOLDB10:
	.section	.text.cli_putstr,"ax",@progbits
.LHOTB10:
	.globl	cli_putstr
	.type	cli_putstr, @function
cli_putstr:
.LFB41:
	.loc 1 783 0
	.cfi_startproc
.LVL40:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 786 0
	movl	$8, %ecx
	.loc 1 783 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.loc 1 786 0
	leal	-44(%ebp), %edx
	.loc 1 783 0
	subl	$48, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 783 0
	movl	8(%ebp), %ebx
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 786 0
	movl	%edx, %edi
	.loc 1 789 0
	cmpb	$0, (%ebx)
	.loc 1 786 0
	rep stosl
	.loc 1 789 0
	je	.L49
	.loc 1 790 0
	orl	$-1, %ecx
	movl	%ebx, %edi
	repnz scasb
.LVL41:
	pushl	$-1
	notl	%ecx
	decl	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	%edx
	call	hal_uart_send
.LVL42:
	addl	$16, %esp
.L49:
	.loc 1 794 0
	xorl	%eax, %eax
	movl	-12(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L50
	call	__stack_chk_fail
.LVL43:
.L50:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE41:
	.size	cli_putstr, .-cli_putstr
	.section	.text.unlikely.cli_putstr
.LCOLDE10:
	.section	.text.cli_putstr
.LHOTE10:
	.section	.text.unlikely.aos_cli_printf,"ax",@progbits
.LCOLDB11:
	.section	.text.aos_cli_printf,"ax",@progbits
.LHOTB11:
	.globl	aos_cli_printf
	.type	aos_cli_printf, @function
aos_cli_printf:
.LFB40:
	.loc 1 752 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 759 0
	movl	$64, %ecx
	.loc 1 752 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 759 0
	leal	-284(%ebp), %ebx
	.loc 1 752 0
	subl	$284, %esp
	.loc 1 759 0
	movl	%ebx, %edi
	.loc 1 752 0
	movl	8(%ebp), %esi
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 762 0
	cmpb	$0, esc_tag_len
	.loc 1 759 0
	rep stosl
.LVL45:
	.loc 1 762 0
	je	.L53
	.loc 1 763 0
	pushl	%eax
	pushl	%eax
	.loc 1 764 0
	movl	$esc_tag, %edi
	.loc 1 763 0
	pushl	$esc_tag
	pushl	%ebx
	call	strcpy
.LVL46:
	.loc 1 764 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	addl	$16, %esp
	repnz scasb
	notl	%ecx
	decl	%ecx
.LVL47:
.L53:
	.loc 1 768 0
	leal	12(%ebp), %eax
.LVL48:
	.loc 1 769 0
	pushl	%eax
	movl	$256, %eax
.LVL49:
	pushl	%esi
.LVL50:
	subl	%ecx, %eax
	addl	%ebx, %ecx
.LVL51:
	pushl	%eax
.LVL52:
	pushl	%ecx
.LVL53:
	call	vsnprintf
.LVL54:
	.loc 1 772 0
	addl	$16, %esp
	testl	%eax, %eax
	jle	.L54
	.loc 1 776 0
	subl	$12, %esp
	pushl	%ebx
	call	cli_putstr
.LVL55:
	.loc 1 778 0
	addl	$16, %esp
.L54:
.LVL56:
	.loc 1 779 0
	xorl	%eax, %eax
	movl	-28(%ebp), %edx
	xorl	%gs:20, %edx
	je	.L55
	call	__stack_chk_fail
.LVL57:
.L55:
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
	.size	aos_cli_printf, .-aos_cli_printf
	.section	.text.unlikely.aos_cli_printf
.LCOLDE11:
	.section	.text.aos_cli_printf
.LHOTE11:
	.section	.rodata.str1.1
.LC12:
	.string	"cli"
.LC13:
	.string	"Error: Failed to create cli thread: %d\r\n"
	.section	.text.unlikely.aos_cli_init,"ax",@progbits
.LCOLDB14:
	.section	.text.aos_cli_init,"ax",@progbits
.LHOTB14:
	.globl	aos_cli_init
	.type	aos_cli_init, @function
aos_cli_init:
.LFB38:
	.loc 1 701 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	subl	$28, %esp
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 705 0
	pushl	$3864
	.loc 1 701 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
	.loc 1 705 0
	call	aos_malloc
.LVL58:
	movl	%eax, %edx
	.loc 1 706 0
	addl	$16, %esp
	.loc 1 705 0
	movl	%eax, cli
	.loc 1 706 0
	testl	%edx, %edx
	.loc 1 707 0
	movl	$-12, %eax
	.loc 1 706 0
	je	.L59
	.loc 1 710 0
	xorl	%eax, %eax
	movl	%edx, %edi
	movl	$966, %ecx
	rep stosl
	.loc 1 713 0
	pushl	%ecx
	pushl	%ecx
	pushl	$8
	pushl	$built_ins
	call	aos_cli_register_commands
.LVL59:
	addl	$16, %esp
	testl	%eax, %eax
	movl	%eax, %ebx
.LVL60:
	jne	.L60
	.loc 1 718 0
	leal	-16(%ebp), %eax
.LVL61:
	pushl	%edx
	pushl	%edx
	pushl	$33
	pushl	$2048
	pushl	$0
	pushl	$cli_main
	pushl	$.LC12
	pushl	%eax
	call	aos_task_new_ext
.LVL62:
	.loc 1 719 0
	addl	$32, %esp
	testl	%eax, %eax
	.loc 1 718 0
	movl	%eax, %ebx
.LVL63:
	.loc 1 719 0
	je	.L61
.LVL64:
	.loc 1 720 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	$.LC13
	call	aos_cli_printf
.LVL65:
	.loc 1 722 0
	addl	$16, %esp
	jmp	.L60
.LVL66:
.L61:
	.loc 1 725 0
	movl	cli, %eax
.LVL67:
	movl	$1, (%eax)
	.loc 1 726 0
	movl	$0, 4(%eax)
	.loc 1 729 0
	call	board_cli_init
.LVL68:
	.loc 1 732 0
	call	log_cli_init
.LVL69:
	.loc 1 734 0
	xorl	%eax, %eax
	jmp	.L59
.L60:
	.loc 1 737 0
	movl	cli, %edx
	.loc 1 742 0
	movl	%ebx, %eax
	.loc 1 737 0
	testl	%edx, %edx
	je	.L59
.LVL70:
	.loc 1 738 0
	subl	$12, %esp
	pushl	%edx
	call	aos_free
.LVL71:
	.loc 1 739 0
	movl	$0, cli
	addl	$16, %esp
	.loc 1 742 0
	movl	%ebx, %eax
.LVL72:
.L59:
	.loc 1 743 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	je	.L62
	call	__stack_chk_fail
.LVL73:
.L62:
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE38:
	.size	aos_cli_init, .-aos_cli_init
	.section	.text.unlikely.aos_cli_init
.LCOLDE14:
	.section	.text.aos_cli_init
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"UP time %ld ms\r\n"
	.section	.text.unlikely.uptime_cmd,"ax",@progbits
.LCOLDB16:
	.section	.text.uptime_cmd,"ax",@progbits
.LHOTB16:
	.type	uptime_cmd, @function
uptime_cmd:
.LFB30:
	.loc 1 593 0
	.cfi_startproc
.LVL74:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 594 0
	call	aos_now_ms
.LVL75:
	movl	$.LC15, 8(%ebp)
	movl	%eax, 12(%ebp)
	.loc 1 595 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 594 0
	jmp	aos_cli_printf
.LVL76:
	.cfi_endproc
.LFE30:
	.size	uptime_cmd, .-uptime_cmd
	.section	.text.unlikely.uptime_cmd
.LCOLDE16:
	.section	.text.uptime_cmd
.LHOTE16:
	.section	.rodata.str1.1
.LC17:
	.string	"reboot\r\n"
	.section	.text.unlikely.reboot_cmd,"ax",@progbits
.LCOLDB18:
	.section	.text.reboot_cmd,"ax",@progbits
.LHOTB18:
	.type	reboot_cmd, @function
reboot_cmd:
.LFB29:
	.loc 1 586 0
	.cfi_startproc
.LVL77:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 587 0
	pushl	$.LC17
	call	aos_cli_printf
.LVL78:
	.loc 1 589 0
	addl	$16, %esp
	.loc 1 590 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 589 0
	jmp	hal_reboot
.LVL79:
	.cfi_endproc
.LFE29:
	.size	reboot_cmd, .-reboot_cmd
	.section	.text.unlikely.reboot_cmd
.LCOLDE18:
	.section	.text.reboot_cmd
.LHOTE18:
	.section	.rodata.str1.1
.LC19:
	.string	"kernel version :%d\r\n"
	.section	.text.unlikely.version_cmd,"ax",@progbits
.LCOLDB20:
	.section	.text.version_cmd,"ax",@progbits
.LHOTB20:
	.type	version_cmd, @function
version_cmd:
.LFB25:
	.loc 1 548 0
	.cfi_startproc
.LVL80:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 550 0
	call	krhino_version_get
.LVL81:
	movl	$.LC19, 8(%ebp)
	movl	%eax, 12(%ebp)
	.loc 1 554 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 550 0
	jmp	aos_cli_printf
.LVL82:
	.cfi_endproc
.LFE25:
	.size	version_cmd, .-version_cmd
	.section	.text.unlikely.version_cmd
.LCOLDE20:
	.section	.text.version_cmd
.LHOTE20:
	.section	.rodata.str1.1
.LC21:
	.string	"MK3060"
.LC22:
	.string	"device name: %s\r\n"
	.section	.text.unlikely.devname_cmd,"ax",@progbits
.LCOLDB23:
	.section	.text.devname_cmd,"ax",@progbits
.LHOTB23:
	.type	devname_cmd, @function
devname_cmd:
.LFB28:
	.loc 1 580 0
	.cfi_startproc
.LVL83:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 581 0
	movl	$.LC21, 12(%ebp)
.LVL84:
	movl	$.LC22, 8(%ebp)
.LVL85:
	.loc 1 582 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 581 0
	jmp	aos_cli_printf
.LVL86:
	.cfi_endproc
.LFE28:
	.size	devname_cmd, .-devname_cmd
	.section	.text.unlikely.devname_cmd
.LCOLDE23:
	.section	.text.devname_cmd
.LHOTE23:
	.section	.rodata.str1.1
.LC24:
	.string	"Disabled"
.LC25:
	.string	"Enabled"
.LC26:
	.string	"Usage: echo on/off. Echo is currently %s\r\n"
.LC27:
	.string	"on"
.LC28:
	.string	"Enable echo\r\n"
.LC29:
	.string	"off"
.LC30:
	.string	"Disable echo\r\n"
	.section	.text.unlikely.echo_cmd,"ax",@progbits
.LCOLDB31:
	.section	.text.echo_cmd,"ax",@progbits
.LHOTB31:
	.type	echo_cmd, @function
echo_cmd:
.LFB26:
	.loc 1 557 0
	.cfi_startproc
.LVL87:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%ecx
	.cfi_offset 3, -12
	.loc 1 558 0
	cmpl	$1, 16(%ebp)
	.loc 1 557 0
	movl	20(%ebp), %eax
	.loc 1 558 0
	jne	.L75
	.loc 1 560 0
	movl	cli, %eax
	.loc 1 559 0
	movl	$.LC25, %edx
	.loc 1 571 0
	movl	-4(%ebp), %ebx
	.loc 1 559 0
	cmpl	$0, 4(%eax)
	movl	$.LC24, %eax
	movl	$.LC26, 8(%ebp)
.LVL88:
	cmove	%edx, %eax
	movl	%eax, 12(%ebp)
.LVL89:
	.loc 1 571 0
	leave
	.cfi_remember_state
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 559 0
	jmp	aos_cli_printf
.LVL90:
.L75:
	.cfi_restore_state
	.loc 1 564 0
	movl	4(%eax), %ebx
	pushl	%edx
	pushl	%edx
	pushl	$.LC27
	pushl	%ebx
	call	strcmp
.LVL91:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L77
.LVL92:
.LBB5:
.LBB6:
	.loc 1 565 0
	subl	$12, %esp
	pushl	$.LC28
	call	aos_cli_printf
.LVL93:
	.loc 1 566 0
	movl	cli, %eax
	movl	$0, 4(%eax)
	jmp	.L81
.LVL94:
.L77:
.LBE6:
.LBE5:
	.loc 1 567 0
	pushl	%eax
	pushl	%eax
	pushl	$.LC29
	pushl	%ebx
	call	strcmp
.LVL95:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L74
	.loc 1 568 0
	subl	$12, %esp
	pushl	$.LC30
	call	aos_cli_printf
.LVL96:
	.loc 1 569 0
	movl	cli, %eax
	movl	$1, 4(%eax)
.L81:
	addl	$16, %esp
.L74:
	.loc 1 571 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	echo_cmd, .-echo_cmd
	.section	.text.unlikely.echo_cmd
.LCOLDE31:
	.section	.text.echo_cmd
.LHOTE31:
	.section	.rodata.str1.1
.LC32:
	.string	""
.LC33:
	.string	"====Build-in Commands====\r\n"
.LC34:
	.string	"====Support six cmds once, seperate by ; ====\r\n"
.LC35:
	.string	"%s: %s\r\n"
.LC36:
	.string	"\r\n"
.LC37:
	.string	"====User Commands====\r\n"
	.section	.text.unlikely.help_cmd,"ax",@progbits
.LCOLDB38:
	.section	.text.help_cmd,"ax",@progbits
.LHOTB38:
	.type	help_cmd, @function
help_cmd:
.LFB24:
	.loc 1 520 0
	.cfi_startproc
.LVL97:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 531 0
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	.loc 1 528 0
	subl	$12, %esp
	pushl	$.LC33
	call	aos_cli_printf
.LVL98:
	.loc 1 529 0
	movl	$.LC34, (%esp)
	call	aos_cli_printf
.LVL99:
	addl	$16, %esp
.LVL100:
.L83:
	.loc 1 531 0 discriminator 3
	movl	cli, %eax
	cmpl	%ebx, 264(%eax)
	jbe	.L82
	.loc 1 532 0
	movl	8(%eax,%esi,4), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L84
	.loc 1 534 0
	movl	4(%eax), %eax
	.loc 1 533 0
	movl	$.LC32, %ecx
	testl	%eax, %eax
	cmove	%ecx, %eax
	pushl	%ecx
	.loc 1 536 0
	incl	%ebx
.LVL101:
	.loc 1 533 0
	pushl	%eax
	pushl	%edx
	pushl	$.LC35
	call	aos_cli_printf
.LVL102:
	.loc 1 537 0
	addl	$16, %esp
	cmpl	$8, %ebx
	jne	.L84
	.loc 1 538 0
	subl	$12, %esp
	pushl	$.LC36
	call	aos_cli_printf
.LVL103:
	.loc 1 539 0
	movl	$.LC37, (%esp)
	call	aos_cli_printf
.LVL104:
	addl	$16, %esp
.L84:
	.loc 1 531 0 discriminator 2
	incl	%esi
.LVL105:
	cmpl	$64, %esi
	jne	.L83
.L82:
	.loc 1 544 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL106:
	popl	%esi
	.cfi_restore 6
.LVL107:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE24:
	.size	help_cmd, .-help_cmd
	.section	.text.unlikely.help_cmd
.LCOLDE38:
	.section	.text.help_cmd
.LHOTE38:
	.section	.text.unlikely.cli_getchar,"ax",@progbits
.LCOLDB39:
	.section	.text.cli_getchar,"ax",@progbits
.LHOTB39:
	.globl	cli_getchar
	.type	cli_getchar, @function
cli_getchar:
.LFB42:
	.loc 1 797 0
	.cfi_startproc
.LVL108:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 802 0
	movl	$8, %ecx
	.loc 1 797 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	.loc 1 802 0
	leal	-44(%ebp), %edx
	.loc 1 797 0
	subl	$64, %esp
	.cfi_offset 7, -12
	.loc 1 799 0
	movl	$0, -48(%ebp)
	.loc 1 797 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL109:
	.loc 1 802 0
	movl	%edx, %edi
	rep stosl
	.loc 1 805 0
	leal	-48(%ebp), %eax
	pushl	$-1
	pushl	%eax
	pushl	$1
	pushl	8(%ebp)
	pushl	%edx
	call	hal_uart_recv_II
.LVL110:
	.loc 1 807 0
	addl	$32, %esp
	xorl	%edx, %edx
	testl	%eax, %eax
	jne	.L95
	.loc 1 808 0 discriminator 1
	xorl	%edx, %edx
	cmpl	$1, -48(%ebp)
	sete	%dl
.L95:
	.loc 1 812 0
	movl	-12(%ebp), %ecx
	xorl	%gs:20, %ecx
	movl	%edx, %eax
.LVL111:
	je	.L96
	call	__stack_chk_fail
.LVL112:
.L96:
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE42:
	.size	cli_getchar, .-cli_getchar
	.section	.text.unlikely.cli_getchar
.LCOLDE39:
	.section	.text.cli_getchar
.LHOTE39:
	.section	.rodata.str1.1
.LC40:
	.string	"inbuf_null\r\n"
.LC41:
	.string	"\033%c"
.LC42:
	.string	"\033%c%c"
.LC43:
	.string	"\r\n# %s"
.LC44:
	.string	"Error: esc_tag buffer overflow\r\n"
.LC45:
	.string	"%s"
.LC46:
	.string	"%c %c"
.LC47:
	.string	"%s %s "
.LC48:
	.string	"%s "
.LC49:
	.string	"# "
.LC50:
	.string	"%s%s"
.LC51:
	.string	"%c"
.LC52:
	.string	"Error: input buffer overflow\r\n"
.LC53:
	.string	"command '%s' not found\r\n"
.LC54:
	.string	"syntax error\r\n"
.LC55:
	.string	"CLI exited\r\n"
	.section	.text.unlikely.cli_main,"ax",@progbits
.LCOLDB56:
	.section	.text.cli_main,"ax",@progbits
.LHOTB56:
	.type	cli_main, @function
cli_main:
.LFB23:
	.loc 1 452 0
	.cfi_startproc
.LVL113:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$92, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 452 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.L128:
	.loc 1 453 0
	cmpl	$0, cliexit
	jne	.L262
.LVL114:
.LBB22:
	.loc 1 457 0
	movl	cli, %ebx
.LVL115:
.LBB23:
.LBB24:
	.loc 1 285 0
	movl	%ebx, %eax
	addl	$272, %eax
.LVL116:
	movl	%eax, -60(%ebp)
	jne	.L102
	.loc 1 286 0
	subl	$12, %esp
	pushl	$.LC40
	jmp	.L258
.L102:
	.loc 1 290 0
	movl	2580(%ebx), %eax
.LVL117:
	movl	$5, %ecx
	.loc 1 284 0
	movl	$-1, -68(%ebp)
	movl	$-1, -72(%ebp)
	.loc 1 290 0
	addl	$4, %eax
	cltd
	idivl	%ecx
	movl	%edx, 2576(%ebx)
.LVL118:
.L250:
	.loc 1 346 0
	movl	$0, -64(%ebp)
.LVL119:
.L104:
	.loc 1 291 0
	leal	-56(%ebp), %eax
	subl	$12, %esp
	pushl	%eax
	call	cli_getchar
.LVL120:
	addl	$16, %esp
	decl	%eax
	jne	.L128
	.loc 1 292 0
	movb	-56(%ebp), %al
	cmpb	$10, %al
	je	.L173
	cmpb	$13, %al
	jne	.L105
.L173:
	.loc 1 293 0
	movl	268(%ebx), %eax
	movb	$0, 272(%ebx,%eax)
	.loc 1 294 0
	movl	$0, 268(%ebx)
.LVL121:
.LBE24:
.LBE23:
	.loc 1 458 0
	movl	cli, %ebx
	.loc 1 464 0
	cmpb	$0, 272(%ebx)
	.loc 1 458 0
	leal	272(%ebx), %eax
	movl	%eax, -60(%ebp)
.LVL122:
	.loc 1 464 0
	je	.L129
	.loc 1 465 0
	pushl	%edi
	pushl	$256
	movl	2580(%ebx), %eax
.LVL123:
	pushl	-60(%ebp)
	sall	$8, %eax
	leal	2584(%ebx,%eax), %eax
	pushl	%eax
	call	strncpy
.LVL124:
	.loc 1 466 0
	movl	2580(%ebx), %eax
	movl	$5, %ecx
	addl	$16, %esp
	incl	%eax
	cltd
	idivl	%ecx
	movl	%edx, 2580(%ebx)
	jmp	.L129
.LVL125:
.L105:
.LBB32:
.LBB31:
	.loc 1 298 0
	cmpb	$27, %al
	je	.L164
	.loc 1 305 0
	cmpl	$0, -64(%ebp)
	je	.L108
	.loc 1 306 0
	cmpl	$0, -72(%ebp)
	jns	.L109
	.loc 1 307 0
	movsbl	%al, %edi
	.loc 1 308 0
	movl	$1, -64(%ebp)
.LVL126:
	cmpl	$91, %edi
	.loc 1 307 0
	movl	%edi, -72(%ebp)
.LVL127:
	.loc 1 308 0
	je	.L104
	.loc 1 310 0
	movl	268(%ebx), %edx
	movl	-60(%ebp), %edi
.LVL128:
	.loc 1 318 0
	movl	$0, -64(%ebp)
	.loc 1 310 0
	movb	$27, (%edi,%edx)
	.loc 1 311 0
	movl	268(%ebx), %edx
	leal	1(%edx), %ecx
	movl	%ecx, 268(%ebx)
	.loc 1 312 0
	movb	%al, 1(%edi,%edx)
	.loc 1 314 0
	movl	cli, %eax
	.loc 1 313 0
	incl	268(%ebx)
	.loc 1 314 0
	cmpl	$0, 4(%eax)
	jne	.L104
	.loc 1 315 0
	pushl	%edi
	pushl	%edi
	pushl	-72(%ebp)
	pushl	$.LC41
	jmp	.L261
.LVL129:
.L109:
	.loc 1 323 0
	cmpl	$0, -68(%ebp)
	jns	.L110
	.loc 1 324 0
	movsbl	%al, %esi
	.loc 1 325 0
	cmpl	$116, %esi
	.loc 1 324 0
	movl	%esi, -68(%ebp)
.LVL130:
	.loc 1 325 0
	jne	.L110
	.loc 1 327 0
	movb	-72(%ebp), %dl
	.loc 1 326 0
	movb	$27, esc_tag
	.loc 1 328 0
	movb	$2, esc_tag_len
	.loc 1 327 0
	movb	%dl, esc_tag+1
.LVL131:
.L110:
	.loc 1 332 0
	movl	-68(%ebp), %esi
	leal	-65(%esi), %edx
	cmpl	$1, %edx
	jbe	.L111
	cmpl	$116, %esi
	je	.L111
	.loc 1 334 0
	movl	268(%ebx), %eax
	movl	-60(%ebp), %esi
	movb	$27, (%esi,%eax)
	.loc 1 335 0
	movl	268(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, 268(%ebx)
	.loc 1 336 0
	movb	-72(%ebp), %dl
	movb	%dl, 1(%esi,%eax)
	.loc 1 337 0
	movl	268(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, 268(%ebx)
	.loc 1 338 0
	movb	-68(%ebp), %dl
	movb	%dl, 1(%esi,%eax)
	.loc 1 340 0
	movl	cli, %eax
	.loc 1 339 0
	incl	268(%ebx)
	.loc 1 340 0
	cmpl	$0, 4(%eax)
	jne	.L112
	.loc 1 341 0
	pushl	%ecx
	pushl	-68(%ebp)
	pushl	-72(%ebp)
	pushl	$.LC42
	call	csp_printf
.LVL132:
	.loc 1 342 0
	movl	_impure_ptr, %eax
	.loc 1 342 0
	popl	%esi
	pushl	8(%eax)
	call	fflush
.LVL133:
	addl	$16, %esp
.L112:
	.loc 1 344 0
	movb	$0, esc_tag
	.loc 1 345 0
	movb	$0, esc_tag_len
	jmp	.L250
.LVL134:
.L111:
	.loc 1 350 0
	cmpl	$65, -68(%ebp)
	jne	.L113
.LBB25:
	.loc 1 351 0
	movl	cli, %esi
.LVL135:
	movl	2576(%esi), %ecx
.LVL136:
	.loc 1 352 0
	leal	4(%ecx), %eax
	jmp	.L259
.LVL137:
.L113:
.LBE25:
	.loc 1 362 0
	cmpl	$66, -68(%ebp)
	jne	.L114
.LBB26:
	.loc 1 363 0
	movl	cli, %esi
	movl	2576(%esi), %ecx
.LVL138:
	.loc 1 364 0
	leal	1(%ecx), %eax
.LVL139:
.L259:
	movl	$5, %edi
	cltd
	.loc 1 365 0
	sall	$8, %ecx
	.loc 1 364 0
	idivl	%edi
	.loc 1 365 0
	leal	2584(%esi,%ecx), %eax
	.loc 1 364 0
	movl	%edx, 2576(%esi)
	.loc 1 365 0
	pushl	%edi
	pushl	$256
	pushl	%eax
	pushl	-60(%ebp)
	call	strncpy
.LVL140:
	.loc 1 366 0
	popl	%eax
	popl	%edx
	pushl	-60(%ebp)
	pushl	$.LC43
	call	csp_printf
.LVL141:
	.loc 1 367 0
	movl	-60(%ebp), %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
	repnz scasb
	.loc 1 368 0
	movb	$0, esc_tag
	.loc 1 369 0
	movb	$0, esc_tag_len
	.loc 1 367 0
	movl	%ecx, %esi
	notl	%esi
	movl	%esi, %ecx
	decl	%ecx
	movl	%ecx, 268(%ebx)
.LVL142:
.L260:
	.loc 1 369 0
	addl	$16, %esp
	jmp	.L250
.LVL143:
.L114:
.LBE26:
	.loc 1 376 0
	movb	esc_tag_len, %dl
	cmpb	$63, %dl
	jbe	.L115
	.loc 1 380 0
	subl	$12, %esp
	.loc 1 377 0
	movb	$0, esc_tag
	.loc 1 378 0
	movb	$0, esc_tag_len
.LVL144:
	.loc 1 380 0
	pushl	$.LC44
	call	csp_printf
.LVL145:
	.loc 1 381 0
	movl	_impure_ptr, %eax
	.loc 1 381 0
	popl	%edx
	pushl	8(%eax)
	call	fflush
.LVL146:
	jmp	.L260
.LVL147:
.L115:
	.loc 1 384 0
	leal	1(%edx), %ecx
	movzbl	%dl, %esi
	.loc 1 385 0
	cmpb	$109, %al
	.loc 1 384 0
	movb	%al, esc_tag(%esi)
	.loc 1 385 0
	movl	$1, -64(%ebp)
.LVL148:
	.loc 1 384 0
	movb	%cl, esc_tag_len
	.loc 1 385 0
	jne	.L104
	.loc 1 387 0
	movl	cli, %eax
	.loc 1 386 0
	movzbl	%cl, %ecx
	addl	$2, %edx
	movb	$0, esc_tag(%ecx)
	movb	%dl, esc_tag_len
	.loc 1 391 0
	movl	$0, -64(%ebp)
	.loc 1 387 0
	cmpl	$0, 4(%eax)
	jne	.L104
	.loc 1 388 0
	pushl	%eax
	pushl	%eax
	pushl	$esc_tag
	pushl	$.LC45
	jmp	.L261
.LVL149:
.L108:
	.loc 1 396 0
	movl	268(%ebx), %edx
	movl	-60(%ebp), %edi
	movb	%al, (%edi,%edx)
	.loc 1 397 0
	movsbl	-56(%ebp), %eax
	cmpb	$8, %al
	je	.L174
	cmpb	$127, %al
	jne	.L116
.L174:
	.loc 1 399 0
	movl	268(%ebx), %eax
	testl	%eax, %eax
	je	.L104
	.loc 1 400 0
	decl	%eax
	movl	%eax, 268(%ebx)
	.loc 1 401 0
	movl	cli, %eax
	cmpl	$0, 4(%eax)
	jne	.L104
	.loc 1 402 0
	pushl	%eax
	pushl	$8
	pushl	$8
	pushl	$.LC46
.LVL150:
.L261:
	call	csp_printf
.LVL151:
	.loc 1 403 0
	popl	%eax
	.loc 1 403 0
	movl	_impure_ptr, %eax
	.loc 1 403 0
	pushl	8(%eax)
	call	fflush
.LVL152:
	jmp	.L251
.LVL153:
.L116:
	.loc 1 409 0
	cmpb	$9, %al
	jne	.L118
	.loc 1 410 0
	movl	268(%ebx), %eax
	movl	-60(%ebp), %esi
.LBB27:
.LBB28:
	.loc 1 241 0
	subl	$12, %esp
	.loc 1 244 0
	xorl	%edi, %edi
.LBE28:
.LBE27:
	.loc 1 410 0
	movb	$0, (%esi,%eax)
.LVL154:
.LBB30:
.LBB29:
	.loc 1 241 0
	pushl	$.LC36
	.loc 1 239 0
	xorl	%esi, %esi
.LVL155:
	.loc 1 241 0
	call	aos_cli_printf
.LVL156:
	addl	$16, %esp
	.loc 1 244 0
	movl	$0, -80(%ebp)
	movl	$0, -76(%ebp)
.LVL157:
.L119:
	movl	cli, %eax
	movl	-80(%ebp), %ecx
	cmpl	%ecx, 264(%eax)
	jbe	.L123
	.loc 1 246 0
	movl	8(%eax,%edi,4), %eax
	movl	(%eax), %edx
	testl	%edx, %edx
	je	.L120
	.loc 1 247 0
	pushl	%eax
	pushl	268(%ebx)
	pushl	%edx
	pushl	-60(%ebp)
	movl	%edx, -84(%ebp)
	call	strncmp
.LVL158:
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L121
	.loc 1 248 0
	incl	-76(%ebp)
.LVL159:
	.loc 1 249 0
	movl	-84(%ebp), %edx
	cmpl	$1, -76(%ebp)
	je	.L169
	.loc 1 251 0
	cmpl	$2, -76(%ebp)
	jne	.L122
	.loc 1 252 0
	pushl	%eax
	pushl	%edx
	pushl	%esi
	pushl	$.LC47
	jmp	.L249
.L122:
	.loc 1 255 0
	pushl	%eax
	pushl	%eax
	pushl	%edx
	pushl	$.LC48
.L249:
	call	aos_cli_printf
.LVL160:
	addl	$16, %esp
	jmp	.L121
.L169:
	.loc 1 249 0
	movl	%edx, %esi
.LVL161:
.L121:
	.loc 1 258 0
	incl	-80(%ebp)
.LVL162:
.L120:
	.loc 1 245 0
	incl	%edi
.LVL163:
	.loc 1 244 0
	cmpl	$64, %edi
	jne	.L119
.L123:
	.loc 1 263 0
	cmpl	$1, -76(%ebp)
	jne	.L125
	testl	%esi, %esi
	je	.L125
	.loc 1 264 0
	xorl	%eax, %eax
	orl	$-1, %ecx
	movl	%esi, %edi
.LVL164:
	repnz scasb
.LVL165:
	movl	%ecx, %edx
	notl	%edx
	leal	-1(%edx), %edx
.LVL166:
	.loc 1 265 0
	cmpl	$255, %edx
	ja	.L125
	.loc 1 264 0
	movl	268(%ebx), %ecx
	.loc 1 266 0
	movl	-60(%ebp), %eax
	.loc 1 264 0
	subl	%ecx, %edx
.LVL167:
	.loc 1 266 0
	addl	%ecx, %eax
	addl	%ecx, %esi
	movl	%eax, %edi
	movl	%edx, %ecx
	rep movsb
	.loc 1 269 0
	movl	-60(%ebp), %edi
	.loc 1 267 0
	addl	268(%ebx), %edx
	.loc 1 268 0
	leal	1(%edx), %eax
	movl	%eax, 268(%ebx)
	movl	-60(%ebp), %eax
	movb	$32, (%eax,%edx)
	.loc 1 269 0
	movl	268(%ebx), %eax
	movb	$0, (%edi,%eax)
.L125:
	.loc 1 274 0
	pushl	%esi
	pushl	-60(%ebp)
	pushl	$.LC49
	pushl	$.LC50
	call	aos_cli_printf
.LVL168:
.L251:
	addl	$16, %esp
	jmp	.L104
.LVL169:
.L118:
.LBE29:
.LBE30:
	.loc 1 415 0
	movl	cli, %edx
	cmpl	$0, 4(%edx)
	jne	.L126
	.loc 1 416 0
	pushl	%edx
	pushl	%edx
	pushl	%eax
	pushl	$.LC51
	call	csp_printf
.LVL170:
	.loc 1 417 0
	movl	_impure_ptr, %eax
	.loc 1 417 0
	popl	%ecx
	pushl	8(%eax)
	call	fflush
.LVL171:
	addl	$16, %esp
.L126:
	.loc 1 420 0
	movl	268(%ebx), %eax
	incl	%eax
	.loc 1 421 0
	cmpl	$255, %eax
	.loc 1 420 0
	movl	%eax, 268(%ebx)
	.loc 1 421 0
	jbe	.L104
	.loc 1 422 0
	subl	$12, %esp
	pushl	$.LC52
	call	aos_cli_printf
.LVL172:
	.loc 1 423 0
	movl	$.LC49, (%esp)
	call	aos_cli_printf
.LVL173:
	.loc 1 424 0
	movl	$0, 268(%ebx)
	jmp	.L257
.L164:
	.loc 1 301 0
	movl	$-1, -68(%ebp)
.LVL174:
	.loc 1 300 0
	movl	$-1, -72(%ebp)
.LVL175:
	.loc 1 299 0
	movl	$1, -64(%ebp)
.LVL176:
	jmp	.L104
.LVL177:
.L129:
.LBE31:
.LBE32:
.LBB33:
.LBB34:
	.loc 1 136 0
	movl	$argvall.5264, %edx
	xorl	%eax, %eax
	movl	$96, %ecx
	movl	%edx, %edi
	.loc 1 132 0
	leal	-52(%ebp), %ebx
.LVL178:
	.loc 1 138 0
	movl	$0, -56(%ebp)
	.loc 1 136 0
	rep stosl
	.loc 1 137 0
	leal	-52(%ebp), %edi
	movl	$6, %ecx
	.loc 1 131 0
	movl	$0, -64(%ebp)
	.loc 1 137 0
	rep stosl
.LVL179:
.L147:
	.loc 1 141 0
	movl	-60(%ebp), %eax
	leal	(%eax,%ecx), %esi
	movb	-56(%ebp), %al
	movb	(%esi), %dl
	cmpb	$32, %dl
	je	.L131
	jg	.L132
	testb	%dl, %dl
	je	.L133
	jmp	.L130
.L132:
	cmpb	$34, %dl
	movb	%al, -68(%ebp)
	je	.L134
	cmpb	$59, %dl
	je	.L135
	jmp	.L130
.L133:
	.loc 1 143 0
	testb	$2, %al
	jne	.L221
	.loc 1 146 0
	orl	$4, %eax
	movb	%al, -56(%ebp)
	jmp	.L138
.L134:
	.loc 1 150 0
	testl	%ecx, %ecx
	je	.L139
	movl	-60(%ebp), %edi
	leal	-1(%ecx), %edx
	addl	%edx, %edi
	cmpb	$92, (%edi)
	movl	%edi, -72(%ebp)
	jne	.L139
	testb	$1, %al
	jne	.L252
.L139:
	.loc 1 155 0
	movb	-68(%ebp), %al
	andl	$3, %eax
	cmpb	$1, %al
	je	.L138
	.loc 1 158 0
	cmpb	$2, %al
	je	.L221
	.loc 1 162 0
	testb	%al, %al
	jne	.L141
	.loc 1 164 0
	movb	-68(%ebp), %al
	.loc 1 166 0
	movl	-60(%ebp), %esi
	.loc 1 164 0
	orl	$3, %eax
	movb	%al, -56(%ebp)
	.loc 1 165 0
	movl	(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, (%ebx)
	.loc 1 166 0
	movl	-64(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	leal	1(%esi,%ecx), %edx
	movl	%edx, argvall.5264(,%eax,4)
	jmp	.L138
.L141:
	.loc 1 167 0
	cmpb	$3, %al
	jne	.L138
	.loc 1 169 0
	movb	-68(%ebp), %al
	andl	$-4, %eax
	jmp	.L253
.L131:
	.loc 1 175 0
	testl	%ecx, %ecx
	je	.L142
	movl	-60(%ebp), %edi
	leal	-1(%ecx), %edx
	addl	%edx, %edi
	cmpb	$92, (%edi)
	movl	%edi, -68(%ebp)
	jne	.L142
	testb	$1, %al
	je	.L142
	.loc 1 177 0
	movl	%esi, %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
.LVL180:
	repnz scasb
	.loc 1 176 0
	movl	-68(%ebp), %edi
	.loc 1 177 0
	notl	%ecx
	jmp	.L254
.LVL181:
.L142:
	.loc 1 181 0
	movb	%al, %dl
	andl	$3, %edx
	decb	%dl
	jne	.L138
	.loc 1 182 0
	andl	$-2, %eax
.L253:
	movb	%al, -56(%ebp)
	.loc 1 183 0
	movb	$0, (%esi)
	jmp	.L138
.L135:
	.loc 1 188 0
	testl	%ecx, %ecx
	je	.L143
	movl	-60(%ebp), %edi
	leal	-1(%ecx), %edx
	addl	%edx, %edi
	cmpb	$92, (%edi)
	movl	%edi, -72(%ebp)
	jne	.L143
	testb	$1, %al
	je	.L143
.L252:
	.loc 1 190 0
	movl	%esi, %edi
	xorl	%eax, %eax
	orl	$-1, %ecx
.LVL182:
	repnz scasb
	.loc 1 189 0
	movl	-72(%ebp), %edi
	.loc 1 190 0
	notl	%ecx
.L254:
	.loc 1 189 0
	rep movsb
	.loc 1 191 0
	movl	%edx, %ecx
	jmp	.L138
.LVL183:
.L143:
	.loc 1 194 0
	testb	$2, -68(%ebp)
	jne	.L221
	.loc 1 197 0
	movb	-68(%ebp), %al
	andl	$3, %eax
	decb	%al
	jne	.L138
	.loc 1 198 0
	movb	-68(%ebp), %al
	andl	$-2, %eax
	.loc 1 201 0
	cmpl	$0, (%ebx)
	.loc 1 198 0
	movb	%al, -56(%ebp)
	.loc 1 199 0
	movb	$0, (%esi)
	.loc 1 201 0
	je	.L138
	.loc 1 202 0
	incl	-64(%ebp)
.LVL184:
	.loc 1 203 0
	movl	-64(%ebp), %eax
	.loc 1 202 0
	cmpl	$5, -64(%ebp)
	.loc 1 203 0
	leal	-52(%ebp,%eax,4), %eax
	cmovle	%eax, %ebx
.LVL185:
	jmp	.L138
.LVL186:
.L130:
	.loc 1 211 0
	testb	$1, %al
	jne	.L138
	.loc 1 212 0
	orl	$1, %eax
	movb	%al, -56(%ebp)
	.loc 1 213 0
	movl	(%ebx), %eax
	leal	1(%eax), %edx
	movl	%edx, (%ebx)
	.loc 1 214 0
	movl	-64(%ebp), %edx
	sall	$4, %edx
	addl	%edx, %eax
	movl	%esi, argvall.5264(,%eax,4)
.LVL187:
.L138:
	.loc 1 218 0
	movb	-56(%ebp), %al
	testb	$4, %al
	je	.L144
.L146:
	.loc 1 220 0
	testb	$2, %al
	jne	.L221
	movl	$argvall.5264, %ebx
.LVL188:
	movl	$0, -76(%ebp)
	movl	$0, -68(%ebp)
	jmp	.L148
.LVL189:
.L144:
	.loc 1 218 0
	incl	%ecx
.LVL190:
	cmpl	$255, %ecx
	jg	.L146
	cmpl	$5, -64(%ebp)
	jg	.L146
	cmpl	$15, (%ebx)
	jle	.L147
	jmp	.L146
.LVL191:
.L264:
	.loc 1 224 0
	cmpl	$5, %esi
	jg	.L175
.LVL192:
	.loc 1 226 0
	movl	-68(%ebp), %eax
	movl	-52(%ebp,%eax,4), %eax
	movl	%eax, -84(%ebp)
.LVL193:
.LBB35:
.LBB36:
	.loc 1 80 0
	xorl	%eax, %eax
.LVL194:
	.loc 1 79 0
	cmpl	$0, -84(%ebp)
	jg	.L263
.LVL195:
.L149:
.LBE36:
.LBE35:
	.loc 1 226 0
	orl	%eax, -76(%ebp)
.LVL196:
	.loc 1 224 0
	incl	-68(%ebp)
.LVL197:
	addl	$64, %ebx
.L148:
.LVL198:
	movl	-68(%ebp), %esi
	cmpl	%esi, -64(%ebp)
	jge	.L264
	jmp	.L175
.LVL199:
.L263:
.LBB45:
.LBB43:
	.loc 1 83 0
	movl	cli, %eax
	cmpl	$0, 4(%eax)
	jne	.L150
	.loc 1 84 0
	subl	$12, %esp
	pushl	$.LC36
	call	csp_printf
.LVL200:
	.loc 1 85 0
	movl	_impure_ptr, %eax
	.loc 1 85 0
	popl	%esi
	pushl	8(%eax)
	call	fflush
.LVL201:
	addl	$16, %esp
.L150:
	.loc 1 92 0
	movl	(%ebx), %esi
	.loc 1 92 0
	pushl	%ecx
	pushl	%ecx
	pushl	$46
	pushl	%esi
	call	strchr
.LVL202:
.LBB37:
.LBB38:
	.loc 1 45 0
	movl	cli, %edi
.LBE38:
.LBE37:
	.loc 1 92 0
	movl	%eax, %edx
	addl	$16, %esp
.LVL203:
	subl	%esi, %edx
	testl	%eax, %eax
	movl	$0, %eax
.LVL204:
	cmovne	%edx, %eax
.LBB41:
.LBB39:
	.loc 1 45 0
	movl	$1, -72(%ebp)
	.loc 1 43 0
	movl	$0, -80(%ebp)
.LBE39:
.LBE41:
	.loc 1 92 0
	movl	%eax, -88(%ebp)
.LVL205:
.LBB42:
.LBB40:
	.loc 1 45 0
	movl	264(%edi), %eax
.LVL206:
	movl	%eax, -96(%ebp)
.LVL207:
.L152:
	movl	-80(%ebp), %ecx
	cmpl	%ecx, -96(%ebp)
	jbe	.L172
	.loc 1 46 0
	movl	-72(%ebp), %eax
	movl	4(%edi,%eax,4), %eax
	movl	%eax, -92(%ebp)
	movl	(%eax), %eax
	testl	%eax, %eax
	je	.L153
	.loc 1 51 0
	cmpl	$0, -88(%ebp)
	je	.L154
	.loc 1 52 0
	pushl	%edx
	pushl	-88(%ebp)
	pushl	%esi
	pushl	%eax
	call	strncmp
.LVL208:
	jmp	.L255
.LVL209:
.L154:
.LVL210:
	.loc 1 56 0
	pushl	%ecx
	pushl	%ecx
	pushl	%esi
	pushl	%eax
	call	strcmp
.LVL211:
.L255:
	addl	$16, %esp
	testl	%eax, %eax
	je	.L155
.LVL212:
	.loc 1 62 0
	incl	-80(%ebp)
.LVL213:
.L153:
	incl	-72(%ebp)
	.loc 1 45 0
	cmpl	$65, -72(%ebp)
	jne	.L152
.L172:
.LBE40:
.LBE42:
	.loc 1 96 0
	movl	$1, %eax
	jmp	.L149
.LVL214:
.L175:
.LBE43:
.LBE45:
.LBE34:
.LBE33:
	.loc 1 470 0
	cmpl	$1, -76(%ebp)
	jne	.L160
.LVL215:
.LBB48:
.LBB49:
	.loc 1 438 0
	cmpl	$0, -60(%ebp)
	je	.L161
	.loc 1 439 0
	pushl	%edx
	pushl	%edx
	pushl	-60(%ebp)
	pushl	$.LC53
	jmp	.L256
.LVL216:
.L160:
.LBE49:
.LBE48:
	.loc 1 472 0
	cmpl	$2, -76(%ebp)
	jne	.L161
.L221:
	.loc 1 473 0
	subl	$12, %esp
	pushl	$.LC54
.L256:
	call	aos_cli_printf
.LVL217:
	addl	$16, %esp
.L161:
	.loc 1 476 0
	subl	$12, %esp
	pushl	$.LC36
	call	aos_cli_printf
.LVL218:
	.loc 1 477 0
	movb	$0, esc_tag
	.loc 1 478 0
	movb	$0, esc_tag_len
	.loc 1 479 0
	movl	$.LC49, (%esp)
.LVL219:
.L258:
	call	aos_cli_printf
.LVL220:
.L257:
	addl	$16, %esp
	jmp	.L128
.L262:
.LBE22:
	.loc 1 483 0
	subl	$12, %esp
	pushl	$.LC55
	call	aos_cli_printf
.LVL221:
	.loc 1 484 0
	popl	%eax
	pushl	cli
	call	aos_free
.LVL222:
	.loc 1 485 0
	movl	$0, cli
	.loc 1 487 0
	movl	$0, (%esp)
	call	aos_task_exit
.LVL223:
	.loc 1 488 0
	movl	-28(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L163
	call	__stack_chk_fail
.LVL224:
.L155:
.LBB51:
.LBB50:
.LBB47:
.LBB46:
.LBB44:
	.loc 1 99 0
	leal	528(%edi), %edx
	xorl	%eax, %eax
	movl	$512, %ecx
	movl	%edx, %edi
	rep stosl
	.loc 1 101 0
	movl	-92(%ebp), %eax
	pushl	%ebx
	pushl	-84(%ebp)
	pushl	$2048
	pushl	%edx
	call	*8(%eax)
.LVL225:
	.loc 1 102 0
	movl	cli, %eax
	addl	$528, %eax
	movl	%eax, (%esp)
	call	cli_putstr
.LVL226:
	addl	$16, %esp
	.loc 1 103 0
	xorl	%eax, %eax
	jmp	.L149
.LVL227:
.L163:
.LBE44:
.LBE46:
.LBE47:
.LBE50:
.LBE51:
	.loc 1 488 0
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
	.size	cli_main, .-cli_main
	.section	.text.unlikely.cli_main
.LCOLDE56:
	.section	.text.cli_main
.LHOTE56:
	.section	.bss.argvall.5264,"aw",@nobits
	.align 32
	.type	argvall.5264, @object
	.size	argvall.5264, 384
argvall.5264:
	.zero	384
	.section	.rodata.str1.1
.LC57:
	.string	"help"
.LC58:
	.string	"echo"
.LC59:
	.string	"exit"
.LC60:
	.string	"CLI exit"
.LC61:
	.string	"devname"
.LC62:
	.string	"print device name"
.LC63:
	.string	"sysver"
.LC64:
	.string	"reboot"
.LC65:
	.string	"reboot system"
.LC66:
	.string	"time"
.LC67:
	.string	"system time"
.LC68:
	.string	"ota"
.LC69:
	.string	"system ota"
	.section	.rodata.built_ins,"a",@progbits
	.align 32
	.type	built_ins, @object
	.size	built_ins, 96
built_ins:
	.long	.LC57
	.long	0
	.long	help_cmd
	.long	.LC58
	.long	0
	.long	echo_cmd
	.long	.LC59
	.long	.LC60
	.long	exit_cmd
	.long	.LC61
	.long	.LC62
	.long	devname_cmd
	.long	.LC63
	.long	0
	.long	version_cmd
	.long	.LC64
	.long	.LC65
	.long	reboot_cmd
	.long	.LC66
	.long	.LC67
	.long	uptime_cmd
	.long	.LC68
	.long	.LC69
	.long	ota_cmd
	.section	.bss.esc_tag_len,"aw",@nobits
	.type	esc_tag_len, @object
	.size	esc_tag_len, 1
esc_tag_len:
	.zero	1
	.globl	esc_tag
	.section	.bss.esc_tag,"aw",@nobits
	.align 32
	.type	esc_tag, @object
	.size	esc_tag, 64
esc_tag:
	.zero	64
	.section	.bss.cliexit,"aw",@nobits
	.align 4
	.type	cliexit, @object
	.size	cliexit, 4
cliexit:
	.zero	4
	.section	.bss.cli,"aw",@nobits
	.align 4
	.type	cli, @object
	.size	cli, 4
cli:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.exit_cmd
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h"
	.file 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h"
	.file 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h"
	.file 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h"
	.file 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 10 "./include/aos/cli.h"
	.file 11 "./include/aos/kernel.h"
	.file 12 "./include/hal/soc/uart.h"
	.file 13 "./include/hal/sensor.h"
	.file 14 "./include/aos/log.h"
	.file 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h"
	.file 16 "./include/aos/internal/log_impl.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x1a69
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF263
	.byte	0xc
	.long	.LASF264
	.long	.LASF265
	.long	.Ldebug_ranges0+0xa0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF8
	.byte	0x2
	.byte	0x1d
	.long	0x53
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF9
	.byte	0x2
	.byte	0x41
	.long	0x7a
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x4
	.long	.LASF12
	.byte	0x3
	.byte	0x7
	.long	0x2c
	.uleb128 0x4
	.long	.LASF13
	.byte	0x4
	.byte	0x2c
	.long	0x68
	.uleb128 0x4
	.long	.LASF14
	.byte	0x4
	.byte	0x72
	.long	0x68
	.uleb128 0x5
	.long	.LASF15
	.byte	0x5
	.value	0x165
	.long	0x25
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa6
	.long	0xd4
	.uleb128 0x7
	.long	.LASF16
	.byte	0x4
	.byte	0xa8
	.long	0xa9
	.uleb128 0x7
	.long	.LASF17
	.byte	0x4
	.byte	0xa9
	.long	0xd4
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0xe4
	.uleb128 0x9
	.long	0xe4
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF18
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa3
	.long	0x10c
	.uleb128 0xb
	.long	.LASF19
	.byte	0x4
	.byte	0xa5
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.long	.LASF20
	.byte	0x4
	.byte	0xaa
	.long	0xb5
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF21
	.byte	0x4
	.byte	0xab
	.long	0xeb
	.uleb128 0x4
	.long	.LASF22
	.byte	0x4
	.byte	0xaf
	.long	0x88
	.uleb128 0xc
	.byte	0x4
	.uleb128 0xd
	.byte	0x4
	.long	0x12a
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF23
	.uleb128 0x4
	.long	.LASF24
	.byte	0x6
	.byte	0x16
	.long	0x7a
	.uleb128 0xe
	.long	.LASF29
	.byte	0x18
	.byte	0x6
	.byte	0x2f
	.long	0x18f
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x31
	.long	0x18f
	.byte	0
	.uleb128 0xf
	.string	"_k"
	.byte	0x6
	.byte	0x32
	.long	0x2c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF26
	.byte	0x6
	.byte	0x32
	.long	0x2c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF27
	.byte	0x6
	.byte	0x32
	.long	0x2c
	.byte	0xc
	.uleb128 0xb
	.long	.LASF28
	.byte	0x6
	.byte	0x32
	.long	0x2c
	.byte	0x10
	.uleb128 0xf
	.string	"_x"
	.byte	0x6
	.byte	0x33
	.long	0x195
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x13c
	.uleb128 0x8
	.long	0x131
	.long	0x1a5
	.uleb128 0x9
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF30
	.byte	0x24
	.byte	0x6
	.byte	0x37
	.long	0x21e
	.uleb128 0xb
	.long	.LASF31
	.byte	0x6
	.byte	0x39
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.long	.LASF32
	.byte	0x6
	.byte	0x3a
	.long	0x2c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF33
	.byte	0x6
	.byte	0x3b
	.long	0x2c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF34
	.byte	0x6
	.byte	0x3c
	.long	0x2c
	.byte	0xc
	.uleb128 0xb
	.long	.LASF35
	.byte	0x6
	.byte	0x3d
	.long	0x2c
	.byte	0x10
	.uleb128 0xb
	.long	.LASF36
	.byte	0x6
	.byte	0x3e
	.long	0x2c
	.byte	0x14
	.uleb128 0xb
	.long	.LASF37
	.byte	0x6
	.byte	0x3f
	.long	0x2c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF38
	.byte	0x6
	.byte	0x40
	.long	0x2c
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF39
	.byte	0x6
	.byte	0x41
	.long	0x2c
	.byte	0x20
	.byte	0
	.uleb128 0x10
	.long	.LASF40
	.value	0x108
	.byte	0x6
	.byte	0x4a
	.long	0x25e
	.uleb128 0xb
	.long	.LASF41
	.byte	0x6
	.byte	0x4b
	.long	0x25e
	.byte	0
	.uleb128 0xb
	.long	.LASF42
	.byte	0x6
	.byte	0x4c
	.long	0x25e
	.byte	0x80
	.uleb128 0x11
	.long	.LASF43
	.byte	0x6
	.byte	0x4e
	.long	0x131
	.value	0x100
	.uleb128 0x11
	.long	.LASF44
	.byte	0x6
	.byte	0x51
	.long	0x131
	.value	0x104
	.byte	0
	.uleb128 0x8
	.long	0x122
	.long	0x26e
	.uleb128 0x9
	.long	0xe4
	.byte	0x1f
	.byte	0
	.uleb128 0x10
	.long	.LASF45
	.value	0x190
	.byte	0x6
	.byte	0x5d
	.long	0x2ac
	.uleb128 0xb
	.long	.LASF25
	.byte	0x6
	.byte	0x5e
	.long	0x2ac
	.byte	0
	.uleb128 0xb
	.long	.LASF46
	.byte	0x6
	.byte	0x5f
	.long	0x2c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF47
	.byte	0x6
	.byte	0x61
	.long	0x2b2
	.byte	0x8
	.uleb128 0xb
	.long	.LASF40
	.byte	0x6
	.byte	0x62
	.long	0x21e
	.byte	0x88
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x26e
	.uleb128 0x8
	.long	0x2c2
	.long	0x2c2
	.uleb128 0x9
	.long	0xe4
	.byte	0x1f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2c8
	.uleb128 0x12
	.uleb128 0xe
	.long	.LASF48
	.byte	0x8
	.byte	0x6
	.byte	0x75
	.long	0x2ee
	.uleb128 0xb
	.long	.LASF49
	.byte	0x6
	.byte	0x76
	.long	0x2ee
	.byte	0
	.uleb128 0xb
	.long	.LASF50
	.byte	0x6
	.byte	0x77
	.long	0x2c
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x53
	.uleb128 0xe
	.long	.LASF51
	.byte	0x68
	.byte	0x6
	.byte	0xb5
	.long	0x41e
	.uleb128 0xf
	.string	"_p"
	.byte	0x6
	.byte	0xb6
	.long	0x2ee
	.byte	0
	.uleb128 0xf
	.string	"_r"
	.byte	0x6
	.byte	0xb7
	.long	0x2c
	.byte	0x4
	.uleb128 0xf
	.string	"_w"
	.byte	0x6
	.byte	0xb8
	.long	0x2c
	.byte	0x8
	.uleb128 0xb
	.long	.LASF52
	.byte	0x6
	.byte	0xb9
	.long	0x5a
	.byte	0xc
	.uleb128 0xb
	.long	.LASF53
	.byte	0x6
	.byte	0xba
	.long	0x5a
	.byte	0xe
	.uleb128 0xf
	.string	"_bf"
	.byte	0x6
	.byte	0xbb
	.long	0x2c9
	.byte	0x10
	.uleb128 0xb
	.long	.LASF54
	.byte	0x6
	.byte	0xbc
	.long	0x2c
	.byte	0x18
	.uleb128 0xb
	.long	.LASF55
	.byte	0x6
	.byte	0xc3
	.long	0x122
	.byte	0x1c
	.uleb128 0xb
	.long	.LASF56
	.byte	0x6
	.byte	0xc5
	.long	0x574
	.byte	0x20
	.uleb128 0xb
	.long	.LASF57
	.byte	0x6
	.byte	0xc7
	.long	0x5a3
	.byte	0x24
	.uleb128 0xb
	.long	.LASF58
	.byte	0x6
	.byte	0xca
	.long	0x5c7
	.byte	0x28
	.uleb128 0xb
	.long	.LASF59
	.byte	0x6
	.byte	0xcb
	.long	0x5e1
	.byte	0x2c
	.uleb128 0xf
	.string	"_ub"
	.byte	0x6
	.byte	0xce
	.long	0x2c9
	.byte	0x30
	.uleb128 0xf
	.string	"_up"
	.byte	0x6
	.byte	0xcf
	.long	0x2ee
	.byte	0x38
	.uleb128 0xf
	.string	"_ur"
	.byte	0x6
	.byte	0xd0
	.long	0x2c
	.byte	0x3c
	.uleb128 0xb
	.long	.LASF60
	.byte	0x6
	.byte	0xd3
	.long	0x5e7
	.byte	0x40
	.uleb128 0xb
	.long	.LASF61
	.byte	0x6
	.byte	0xd4
	.long	0x5f7
	.byte	0x43
	.uleb128 0xf
	.string	"_lb"
	.byte	0x6
	.byte	0xd7
	.long	0x2c9
	.byte	0x44
	.uleb128 0xb
	.long	.LASF62
	.byte	0x6
	.byte	0xda
	.long	0x2c
	.byte	0x4c
	.uleb128 0xb
	.long	.LASF63
	.byte	0x6
	.byte	0xdb
	.long	0x93
	.byte	0x50
	.uleb128 0xb
	.long	.LASF64
	.byte	0x6
	.byte	0xde
	.long	0x43c
	.byte	0x54
	.uleb128 0xb
	.long	.LASF65
	.byte	0x6
	.byte	0xe2
	.long	0x117
	.byte	0x58
	.uleb128 0xb
	.long	.LASF66
	.byte	0x6
	.byte	0xe4
	.long	0x10c
	.byte	0x5c
	.uleb128 0xb
	.long	.LASF67
	.byte	0x6
	.byte	0xe5
	.long	0x2c
	.byte	0x64
	.byte	0
	.uleb128 0x13
	.long	0x2c
	.long	0x43c
	.uleb128 0x14
	.long	0x43c
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x124
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x442
	.uleb128 0x15
	.long	.LASF68
	.value	0x424
	.byte	0x6
	.value	0x239
	.long	0x574
	.uleb128 0x16
	.long	.LASF69
	.byte	0x6
	.value	0x23b
	.long	0x2c
	.byte	0
	.uleb128 0x16
	.long	.LASF70
	.byte	0x6
	.value	0x240
	.long	0x64e
	.byte	0x4
	.uleb128 0x16
	.long	.LASF71
	.byte	0x6
	.value	0x240
	.long	0x64e
	.byte	0x8
	.uleb128 0x16
	.long	.LASF72
	.byte	0x6
	.value	0x240
	.long	0x64e
	.byte	0xc
	.uleb128 0x16
	.long	.LASF73
	.byte	0x6
	.value	0x242
	.long	0x2c
	.byte	0x10
	.uleb128 0x16
	.long	.LASF74
	.byte	0x6
	.value	0x243
	.long	0x830
	.byte	0x14
	.uleb128 0x16
	.long	.LASF75
	.byte	0x6
	.value	0x246
	.long	0x2c
	.byte	0x30
	.uleb128 0x16
	.long	.LASF76
	.byte	0x6
	.value	0x247
	.long	0x845
	.byte	0x34
	.uleb128 0x16
	.long	.LASF77
	.byte	0x6
	.value	0x249
	.long	0x2c
	.byte	0x38
	.uleb128 0x16
	.long	.LASF78
	.byte	0x6
	.value	0x24b
	.long	0x856
	.byte	0x3c
	.uleb128 0x16
	.long	.LASF79
	.byte	0x6
	.value	0x24e
	.long	0x18f
	.byte	0x40
	.uleb128 0x16
	.long	.LASF80
	.byte	0x6
	.value	0x24f
	.long	0x2c
	.byte	0x44
	.uleb128 0x16
	.long	.LASF81
	.byte	0x6
	.value	0x250
	.long	0x18f
	.byte	0x48
	.uleb128 0x16
	.long	.LASF82
	.byte	0x6
	.value	0x251
	.long	0x85c
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF83
	.byte	0x6
	.value	0x254
	.long	0x2c
	.byte	0x50
	.uleb128 0x16
	.long	.LASF84
	.byte	0x6
	.value	0x255
	.long	0x124
	.byte	0x54
	.uleb128 0x16
	.long	.LASF85
	.byte	0x6
	.value	0x278
	.long	0x80e
	.byte	0x58
	.uleb128 0x17
	.long	.LASF45
	.byte	0x6
	.value	0x27c
	.long	0x2ac
	.value	0x148
	.uleb128 0x17
	.long	.LASF86
	.byte	0x6
	.value	0x27d
	.long	0x26e
	.value	0x14c
	.uleb128 0x17
	.long	.LASF87
	.byte	0x6
	.value	0x281
	.long	0x86d
	.value	0x2dc
	.uleb128 0x17
	.long	.LASF88
	.byte	0x6
	.value	0x286
	.long	0x613
	.value	0x2e0
	.uleb128 0x17
	.long	.LASF89
	.byte	0x6
	.value	0x287
	.long	0x879
	.value	0x2ec
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x41e
	.uleb128 0x13
	.long	0x2c
	.long	0x598
	.uleb128 0x14
	.long	0x43c
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x598
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x59e
	.uleb128 0x18
	.long	0x12a
	.uleb128 0xd
	.byte	0x4
	.long	0x57a
	.uleb128 0x13
	.long	0x9e
	.long	0x5c7
	.uleb128 0x14
	.long	0x43c
	.uleb128 0x14
	.long	0x122
	.uleb128 0x14
	.long	0x9e
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5a9
	.uleb128 0x13
	.long	0x2c
	.long	0x5e1
	.uleb128 0x14
	.long	0x43c
	.uleb128 0x14
	.long	0x122
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x5cd
	.uleb128 0x8
	.long	0x53
	.long	0x5f7
	.uleb128 0x9
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	0x53
	.long	0x607
	.uleb128 0x9
	.long	0xe4
	.byte	0
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0x6
	.value	0x11f
	.long	0x2f4
	.uleb128 0x19
	.long	.LASF91
	.byte	0xc
	.byte	0x6
	.value	0x123
	.long	0x648
	.uleb128 0x16
	.long	.LASF25
	.byte	0x6
	.value	0x125
	.long	0x648
	.byte	0
	.uleb128 0x16
	.long	.LASF92
	.byte	0x6
	.value	0x126
	.long	0x2c
	.byte	0x4
	.uleb128 0x16
	.long	.LASF93
	.byte	0x6
	.value	0x127
	.long	0x64e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x613
	.uleb128 0xd
	.byte	0x4
	.long	0x607
	.uleb128 0x19
	.long	.LASF94
	.byte	0xe
	.byte	0x6
	.value	0x13f
	.long	0x689
	.uleb128 0x16
	.long	.LASF95
	.byte	0x6
	.value	0x140
	.long	0x689
	.byte	0
	.uleb128 0x16
	.long	.LASF96
	.byte	0x6
	.value	0x141
	.long	0x689
	.byte	0x6
	.uleb128 0x16
	.long	.LASF97
	.byte	0x6
	.value	0x142
	.long	0x61
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x61
	.long	0x699
	.uleb128 0x9
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x1a
	.byte	0xcc
	.byte	0x6
	.value	0x259
	.long	0x79a
	.uleb128 0x16
	.long	.LASF98
	.byte	0x6
	.value	0x25b
	.long	0x25
	.byte	0
	.uleb128 0x16
	.long	.LASF99
	.byte	0x6
	.value	0x25c
	.long	0x124
	.byte	0x4
	.uleb128 0x16
	.long	.LASF100
	.byte	0x6
	.value	0x25d
	.long	0x79a
	.byte	0x8
	.uleb128 0x16
	.long	.LASF101
	.byte	0x6
	.value	0x25e
	.long	0x1a5
	.byte	0x24
	.uleb128 0x16
	.long	.LASF102
	.byte	0x6
	.value	0x25f
	.long	0x2c
	.byte	0x48
	.uleb128 0x16
	.long	.LASF103
	.byte	0x6
	.value	0x260
	.long	0x81
	.byte	0x4c
	.uleb128 0x16
	.long	.LASF104
	.byte	0x6
	.value	0x261
	.long	0x654
	.byte	0x54
	.uleb128 0x16
	.long	.LASF105
	.byte	0x6
	.value	0x262
	.long	0x10c
	.byte	0x64
	.uleb128 0x16
	.long	.LASF106
	.byte	0x6
	.value	0x263
	.long	0x10c
	.byte	0x6c
	.uleb128 0x16
	.long	.LASF107
	.byte	0x6
	.value	0x264
	.long	0x10c
	.byte	0x74
	.uleb128 0x16
	.long	.LASF108
	.byte	0x6
	.value	0x265
	.long	0x7aa
	.byte	0x7c
	.uleb128 0x16
	.long	.LASF109
	.byte	0x6
	.value	0x266
	.long	0x7ba
	.byte	0x84
	.uleb128 0x16
	.long	.LASF110
	.byte	0x6
	.value	0x267
	.long	0x2c
	.byte	0x9c
	.uleb128 0x16
	.long	.LASF111
	.byte	0x6
	.value	0x268
	.long	0x10c
	.byte	0xa0
	.uleb128 0x16
	.long	.LASF112
	.byte	0x6
	.value	0x269
	.long	0x10c
	.byte	0xa8
	.uleb128 0x16
	.long	.LASF113
	.byte	0x6
	.value	0x26a
	.long	0x10c
	.byte	0xb0
	.uleb128 0x16
	.long	.LASF114
	.byte	0x6
	.value	0x26b
	.long	0x10c
	.byte	0xb8
	.uleb128 0x16
	.long	.LASF115
	.byte	0x6
	.value	0x26c
	.long	0x10c
	.byte	0xc0
	.uleb128 0x16
	.long	.LASF116
	.byte	0x6
	.value	0x26d
	.long	0x2c
	.byte	0xc8
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x7aa
	.uleb128 0x9
	.long	0xe4
	.byte	0x19
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x7ba
	.uleb128 0x9
	.long	0xe4
	.byte	0x7
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x7ca
	.uleb128 0x9
	.long	0xe4
	.byte	0x17
	.byte	0
	.uleb128 0x1a
	.byte	0xf0
	.byte	0x6
	.value	0x272
	.long	0x7ee
	.uleb128 0x16
	.long	.LASF117
	.byte	0x6
	.value	0x275
	.long	0x7ee
	.byte	0
	.uleb128 0x16
	.long	.LASF118
	.byte	0x6
	.value	0x276
	.long	0x7fe
	.byte	0x78
	.byte	0
	.uleb128 0x8
	.long	0x2ee
	.long	0x7fe
	.uleb128 0x9
	.long	0xe4
	.byte	0x1d
	.byte	0
	.uleb128 0x8
	.long	0x25
	.long	0x80e
	.uleb128 0x9
	.long	0xe4
	.byte	0x1d
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x6
	.value	0x257
	.long	0x830
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x6
	.value	0x26e
	.long	0x699
	.uleb128 0x1c
	.long	.LASF119
	.byte	0x6
	.value	0x277
	.long	0x7ca
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x840
	.uleb128 0x9
	.long	0xe4
	.byte	0x18
	.byte	0
	.uleb128 0x1d
	.long	.LASF266
	.uleb128 0xd
	.byte	0x4
	.long	0x840
	.uleb128 0x1e
	.long	0x856
	.uleb128 0x14
	.long	0x43c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x84b
	.uleb128 0xd
	.byte	0x4
	.long	0x18f
	.uleb128 0x1e
	.long	0x86d
	.uleb128 0x14
	.long	0x2c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x873
	.uleb128 0xd
	.byte	0x4
	.long	0x862
	.uleb128 0x8
	.long	0x607
	.long	0x889
	.uleb128 0x9
	.long	0xe4
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF120
	.byte	0x7
	.byte	0x28
	.long	0x894
	.uleb128 0x1f
	.byte	0x4
	.long	.LASF267
	.long	0x12a
	.uleb128 0x4
	.long	.LASF121
	.byte	0x8
	.byte	0x2e
	.long	0x889
	.uleb128 0x4
	.long	.LASF122
	.byte	0x9
	.byte	0x18
	.long	0x48
	.uleb128 0x4
	.long	.LASF123
	.byte	0x9
	.byte	0x30
	.long	0x6f
	.uleb128 0xe
	.long	.LASF124
	.byte	0xc
	.byte	0xa
	.byte	0x16
	.long	0x8f0
	.uleb128 0xb
	.long	.LASF125
	.byte	0xa
	.byte	0x17
	.long	0x598
	.byte	0
	.uleb128 0xb
	.long	.LASF126
	.byte	0xa
	.byte	0x18
	.long	0x598
	.byte	0x4
	.uleb128 0xb
	.long	.LASF127
	.byte	0xa
	.byte	0x1a
	.long	0x910
	.byte	0x8
	.byte	0
	.uleb128 0x1e
	.long	0x90a
	.uleb128 0x14
	.long	0x124
	.uleb128 0x14
	.long	0x2c
	.uleb128 0x14
	.long	0x2c
	.uleb128 0x14
	.long	0x90a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x124
	.uleb128 0xd
	.byte	0x4
	.long	0x8f0
	.uleb128 0x10
	.long	.LASF128
	.value	0xf18
	.byte	0xa
	.byte	0x1d
	.long	0x9a2
	.uleb128 0xb
	.long	.LASF129
	.byte	0xa
	.byte	0x1e
	.long	0x2c
	.byte	0
	.uleb128 0xb
	.long	.LASF130
	.byte	0xa
	.byte	0x1f
	.long	0x2c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF131
	.byte	0xa
	.byte	0x21
	.long	0x9a2
	.byte	0x8
	.uleb128 0x11
	.long	.LASF132
	.byte	0xa
	.byte	0x23
	.long	0x25
	.value	0x108
	.uleb128 0x20
	.string	"bp"
	.byte	0xa
	.byte	0x24
	.long	0x25
	.value	0x10c
	.uleb128 0x11
	.long	.LASF133
	.byte	0xa
	.byte	0x26
	.long	0x9bd
	.value	0x110
	.uleb128 0x11
	.long	.LASF134
	.byte	0xa
	.byte	0x27
	.long	0x9cd
	.value	0x210
	.uleb128 0x11
	.long	.LASF135
	.byte	0xa
	.byte	0x29
	.long	0x2c
	.value	0xa10
	.uleb128 0x11
	.long	.LASF136
	.byte	0xa
	.byte	0x2a
	.long	0x2c
	.value	0xa14
	.uleb128 0x11
	.long	.LASF137
	.byte	0xa
	.byte	0x2b
	.long	0x9de
	.value	0xa18
	.byte	0
	.uleb128 0x8
	.long	0x9b2
	.long	0x9b2
	.uleb128 0x9
	.long	0xe4
	.byte	0x3f
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x9b8
	.uleb128 0x18
	.long	0x8bf
	.uleb128 0x8
	.long	0x12a
	.long	0x9cd
	.uleb128 0x9
	.long	0xe4
	.byte	0xff
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x9de
	.uleb128 0x21
	.long	0xe4
	.value	0x7ff
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0x9f4
	.uleb128 0x9
	.long	0xe4
	.byte	0x4
	.uleb128 0x9
	.long	0xe4
	.byte	0xff
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0xb
	.byte	0x13
	.long	0xa09
	.uleb128 0xf
	.string	"hdl"
	.byte	0xb
	.byte	0x14
	.long	0x122
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	.LASF138
	.byte	0xb
	.byte	0x15
	.long	0x9f4
	.uleb128 0x4
	.long	.LASF139
	.byte	0xb
	.byte	0x17
	.long	0xa09
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF140
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF141
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xc
	.byte	0xb
	.long	0xa58
	.uleb128 0x23
	.long	.LASF142
	.byte	0
	.uleb128 0x23
	.long	.LASF143
	.byte	0x1
	.uleb128 0x23
	.long	.LASF144
	.byte	0x2
	.uleb128 0x23
	.long	.LASF145
	.byte	0x3
	.uleb128 0x23
	.long	.LASF146
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.long	.LASF147
	.byte	0xc
	.byte	0x11
	.long	0xa2d
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xc
	.byte	0x16
	.long	0xa7c
	.uleb128 0x23
	.long	.LASF148
	.byte	0
	.uleb128 0x23
	.long	.LASF149
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.long	.LASF150
	.byte	0xc
	.byte	0x19
	.long	0xa63
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xc
	.byte	0x1e
	.long	0xaac
	.uleb128 0x23
	.long	.LASF151
	.byte	0
	.uleb128 0x23
	.long	.LASF152
	.byte	0x1
	.uleb128 0x23
	.long	.LASF153
	.byte	0x2
	.uleb128 0x23
	.long	.LASF154
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.long	.LASF155
	.byte	0xc
	.byte	0x23
	.long	0xa87
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xc
	.byte	0x28
	.long	0xad6
	.uleb128 0x23
	.long	.LASF156
	.byte	0
	.uleb128 0x23
	.long	.LASF157
	.byte	0x1
	.uleb128 0x23
	.long	.LASF158
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF159
	.byte	0xc
	.byte	0x2c
	.long	0xab7
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xc
	.byte	0x31
	.long	0xb00
	.uleb128 0x23
	.long	.LASF160
	.byte	0
	.uleb128 0x23
	.long	.LASF161
	.byte	0x1
	.uleb128 0x23
	.long	.LASF162
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.long	.LASF163
	.byte	0xc
	.byte	0x35
	.long	0xae1
	.uleb128 0xa
	.byte	0x18
	.byte	0xc
	.byte	0x3a
	.long	0xb5c
	.uleb128 0xb
	.long	.LASF164
	.byte	0xc
	.byte	0x3b
	.long	0x8b4
	.byte	0
	.uleb128 0xb
	.long	.LASF165
	.byte	0xc
	.byte	0x3c
	.long	0xa58
	.byte	0x4
	.uleb128 0xb
	.long	.LASF166
	.byte	0xc
	.byte	0x3d
	.long	0xad6
	.byte	0x8
	.uleb128 0xb
	.long	.LASF167
	.byte	0xc
	.byte	0x3e
	.long	0xa7c
	.byte	0xc
	.uleb128 0xb
	.long	.LASF168
	.byte	0xc
	.byte	0x3f
	.long	0xaac
	.byte	0x10
	.uleb128 0xb
	.long	.LASF169
	.byte	0xc
	.byte	0x40
	.long	0xb00
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.long	.LASF170
	.byte	0xc
	.byte	0x41
	.long	0xb0b
	.uleb128 0xa
	.byte	0x20
	.byte	0xc
	.byte	0x43
	.long	0xb94
	.uleb128 0xb
	.long	.LASF171
	.byte	0xc
	.byte	0x44
	.long	0x8a9
	.byte	0
	.uleb128 0xb
	.long	.LASF172
	.byte	0xc
	.byte	0x45
	.long	0xb5c
	.byte	0x4
	.uleb128 0xb
	.long	.LASF173
	.byte	0xc
	.byte	0x46
	.long	0x122
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.long	.LASF174
	.byte	0xc
	.byte	0x47
	.long	0xb67
	.uleb128 0x22
	.byte	0x4
	.long	0x25
	.byte	0xd
	.byte	0x48
	.long	0xbfa
	.uleb128 0x23
	.long	.LASF175
	.byte	0
	.uleb128 0x23
	.long	.LASF176
	.byte	0x1
	.uleb128 0x23
	.long	.LASF177
	.byte	0x2
	.uleb128 0x23
	.long	.LASF178
	.byte	0x3
	.uleb128 0x23
	.long	.LASF179
	.byte	0x4
	.uleb128 0x23
	.long	.LASF180
	.byte	0x5
	.uleb128 0x23
	.long	.LASF181
	.byte	0x6
	.uleb128 0x23
	.long	.LASF182
	.byte	0x7
	.uleb128 0x23
	.long	.LASF183
	.byte	0x8
	.uleb128 0x23
	.long	.LASF184
	.byte	0x9
	.uleb128 0x23
	.long	.LASF185
	.byte	0xa
	.uleb128 0x23
	.long	.LASF186
	.byte	0xb
	.uleb128 0x23
	.long	.LASF187
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.long	0x12a
	.long	0xc0a
	.uleb128 0x9
	.long	0xe4
	.byte	0x3f
	.byte	0
	.uleb128 0x24
	.long	.LASF217
	.byte	0x1
	.value	0x22c
	.byte	0x1
	.long	0xc48
	.uleb128 0x25
	.string	"buf"
	.byte	0x1
	.value	0x22c
	.long	0x124
	.uleb128 0x25
	.string	"len"
	.byte	0x1
	.value	0x22c
	.long	0x2c
	.uleb128 0x26
	.long	.LASF188
	.byte	0x1
	.value	0x22c
	.long	0x2c
	.uleb128 0x26
	.long	.LASF189
	.byte	0x1
	.value	0x22c
	.long	0x90a
	.byte	0
	.uleb128 0x27
	.long	.LASF190
	.byte	0x1
	.value	0x23d
	.long	.LFB27
	.long	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0xc9b
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x23d
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x23d
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x23d
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x23d
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.byte	0
	.uleb128 0x2a
	.long	.LASF268
	.byte	0x1
	.value	0x255
	.long	.LFB31
	.long	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0xcd2
	.uleb128 0x2b
	.string	"arg"
	.byte	0x1
	.value	0x255
	.long	0x122
	.long	.LLST0
	.uleb128 0x2c
	.long	.LVL3
	.long	0x1978
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF191
	.byte	0x1
	.value	0x25a
	.long	.LFB32
	.long	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0xd55
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x25a
	.long	0x124
	.long	.LLST1
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x25a
	.long	0x2c
	.long	.LLST2
	.uleb128 0x2e
	.long	.LASF188
	.byte	0x1
	.value	0x25a
	.long	0x2c
	.long	.LLST3
	.uleb128 0x2e
	.long	.LASF189
	.byte	0x1
	.value	0x25a
	.long	0x90a
	.long	.LLST4
	.uleb128 0x2c
	.long	.LVL9
	.long	0x1983
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	.LC2
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	tftp_ota_thread
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3
	.byte	0xa
	.value	0x1000
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF192
	.byte	0x1
	.value	0x261
	.long	0x2c
	.long	.LFB33
	.long	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0xd8e
	.uleb128 0x2b
	.string	"cmd"
	.byte	0x1
	.value	0x261
	.long	0x9b2
	.long	.LLST5
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x263
	.long	0x2c
	.long	.LLST6
	.byte	0
	.uleb128 0x2f
	.long	.LASF193
	.byte	0x1
	.value	0x27d
	.long	0x2c
	.long	.LFB34
	.long	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0xde9
	.uleb128 0x28
	.string	"cmd"
	.byte	0x1
	.value	0x27d
	.long	0x9b2
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x27f
	.long	0x2c
	.long	.LLST7
	.uleb128 0x31
	.long	.LBB2
	.long	.LBE2-.LBB2
	.uleb128 0x32
	.long	.LASF194
	.byte	0x1
	.value	0x287
	.long	0x2c
	.long	.LLST8
	.uleb128 0x33
	.long	.LVL20
	.long	0x198e
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	.LASF195
	.byte	0x1
	.value	0x294
	.long	0x2c
	.long	.LFB35
	.long	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0xe4a
	.uleb128 0x2e
	.long	.LASF196
	.byte	0x1
	.value	0x294
	.long	0x9b2
	.long	.LLST9
	.uleb128 0x29
	.long	.LASF197
	.byte	0x1
	.value	0x294
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x296
	.long	0x2c
	.long	.LLST10
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.value	0x297
	.long	0x2c
	.long	.LLST11
	.uleb128 0x33
	.long	.LVL27
	.long	0xd55
	.byte	0
	.uleb128 0x2f
	.long	.LASF198
	.byte	0x1
	.value	0x2a4
	.long	0x2c
	.long	.LFB36
	.long	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0xeab
	.uleb128 0x2e
	.long	.LASF196
	.byte	0x1
	.value	0x2a4
	.long	0x9b2
	.long	.LLST12
	.uleb128 0x29
	.long	.LASF197
	.byte	0x1
	.value	0x2a4
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x2a6
	.long	0x2c
	.long	.LLST13
	.uleb128 0x30
	.string	"err"
	.byte	0x1
	.value	0x2a7
	.long	0x2c
	.long	.LLST14
	.uleb128 0x33
	.long	.LVL34
	.long	0xd8e
	.byte	0
	.uleb128 0x34
	.long	.LASF199
	.byte	0x1
	.value	0x2b1
	.long	0x2c
	.long	.LFB37
	.long	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.long	.LASF200
	.byte	0x1
	.value	0x2e9
	.long	0x598
	.long	.LFB39
	.long	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.long	.LASF201
	.byte	0x1
	.value	0x30e
	.long	0x2c
	.long	.LFB41
	.long	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0xf23
	.uleb128 0x2b
	.string	"msg"
	.byte	0x1
	.value	0x30e
	.long	0x124
	.long	.LLST15
	.uleb128 0x35
	.long	.LASF202
	.byte	0x1
	.value	0x310
	.long	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LVL42
	.long	0x1999
	.uleb128 0x33
	.long	.LVL43
	.long	0x19a4
	.byte	0
	.uleb128 0x2f
	.long	.LASF203
	.byte	0x1
	.value	0x2ef
	.long	0x2c
	.long	.LFB40
	.long	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0xfc0
	.uleb128 0x28
	.string	"msg"
	.byte	0x1
	.value	0x2ef
	.long	0x598
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.uleb128 0x30
	.string	"ap"
	.byte	0x1
	.value	0x2f1
	.long	0x89e
	.long	.LLST16
	.uleb128 0x30
	.string	"pos"
	.byte	0x1
	.value	0x2f3
	.long	0x124
	.long	.LLST17
	.uleb128 0x35
	.long	.LASF204
	.byte	0x1
	.value	0x2f3
	.long	0x9bd
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x30
	.string	"sz"
	.byte	0x1
	.value	0x2f4
	.long	0x2c
	.long	.LLST18
	.uleb128 0x30
	.string	"len"
	.byte	0x1
	.value	0x2f5
	.long	0x2c
	.long	.LLST19
	.uleb128 0x33
	.long	.LVL46
	.long	0x19ad
	.uleb128 0x33
	.long	.LVL54
	.long	0x19b8
	.uleb128 0x33
	.long	.LVL55
	.long	0xed7
	.uleb128 0x33
	.long	.LVL57
	.long	0x19a4
	.byte	0
	.uleb128 0x2f
	.long	.LASF205
	.byte	0x1
	.value	0x2bc
	.long	0x2c
	.long	.LFB38
	.long	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x104e
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x2be
	.long	0x2c
	.long	.LLST20
	.uleb128 0x35
	.long	.LASF206
	.byte	0x1
	.value	0x2bf
	.long	0xa14
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x37
	.long	.LASF269
	.byte	0x1
	.value	0x2e0
	.long	.L60
	.uleb128 0x33
	.long	.LVL58
	.long	0x19c4
	.uleb128 0x33
	.long	.LVL59
	.long	0xde9
	.uleb128 0x33
	.long	.LVL62
	.long	0x19d0
	.uleb128 0x33
	.long	.LVL65
	.long	0xf23
	.uleb128 0x33
	.long	.LVL68
	.long	0x19db
	.uleb128 0x33
	.long	.LVL69
	.long	0x19e6
	.uleb128 0x33
	.long	.LVL71
	.long	0x19f1
	.uleb128 0x33
	.long	.LVL73
	.long	0x19a4
	.byte	0
	.uleb128 0x27
	.long	.LASF207
	.byte	0x1
	.value	0x250
	.long	.LFB30
	.long	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x10b3
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x250
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x250
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x250
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x250
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LVL75
	.long	0x19fd
	.uleb128 0x38
	.long	.LVL76
	.long	0xf23
	.byte	0
	.uleb128 0x27
	.long	.LASF208
	.byte	0x1
	.value	0x249
	.long	.LFB29
	.long	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x1118
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x249
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x249
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x249
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x249
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LVL78
	.long	0xf23
	.uleb128 0x38
	.long	.LVL79
	.long	0x1a09
	.byte	0
	.uleb128 0x27
	.long	.LASF209
	.byte	0x1
	.value	0x223
	.long	.LFB25
	.long	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x117d
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x223
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x223
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x223
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x223
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x33
	.long	.LVL81
	.long	0x1a14
	.uleb128 0x38
	.long	.LVL82
	.long	0xf23
	.byte	0
	.uleb128 0x27
	.long	.LASF210
	.byte	0x1
	.value	0x243
	.long	.LFB28
	.long	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x11f0
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.value	0x243
	.long	0x124
	.long	.LLST21
	.uleb128 0x2b
	.string	"len"
	.byte	0x1
	.value	0x243
	.long	0x2c
	.long	.LLST22
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x243
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x243
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x2c
	.long	.LVL86
	.long	0xf23
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	.LC22
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	.LC21
	.byte	0
	.byte	0
	.uleb128 0x39
	.long	0xc0a
	.long	.LFB26
	.long	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x1285
	.uleb128 0x3a
	.long	0xc17
	.long	.LLST23
	.uleb128 0x3a
	.long	0xc23
	.long	.LLST24
	.uleb128 0x3b
	.long	0xc2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x3b
	.long	0xc3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x3c
	.long	.LBB5
	.long	.LBE5-.LBB5
	.long	0x1260
	.uleb128 0x3a
	.long	0xc17
	.long	.LLST25
	.uleb128 0x3a
	.long	0xc23
	.long	.LLST26
	.uleb128 0x3a
	.long	0xc2f
	.long	.LLST27
	.uleb128 0x3a
	.long	0xc3b
	.long	.LLST28
	.uleb128 0x33
	.long	.LVL93
	.long	0xf23
	.byte	0
	.uleb128 0x38
	.long	.LVL90
	.long	0xf23
	.uleb128 0x33
	.long	.LVL91
	.long	0x1a1f
	.uleb128 0x33
	.long	.LVL95
	.long	0x1a1f
	.uleb128 0x33
	.long	.LVL96
	.long	0xf23
	.byte	0
	.uleb128 0x27
	.long	.LASF211
	.byte	0x1
	.value	0x207
	.long	.LFB24
	.long	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x132e
	.uleb128 0x28
	.string	"buf"
	.byte	0x1
	.value	0x207
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"len"
	.byte	0x1
	.value	0x207
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.long	.LASF188
	.byte	0x1
	.value	0x207
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x29
	.long	.LASF189
	.byte	0x1
	.value	0x207
	.long	0x90a
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0x30
	.string	"i"
	.byte	0x1
	.value	0x209
	.long	0x2c
	.long	.LLST29
	.uleb128 0x30
	.string	"n"
	.byte	0x1
	.value	0x209
	.long	0x2c
	.long	.LLST30
	.uleb128 0x3d
	.long	.LASF212
	.byte	0x1
	.value	0x20a
	.long	0x8b4
	.byte	0x8
	.uleb128 0x33
	.long	.LVL98
	.long	0xf23
	.uleb128 0x33
	.long	.LVL99
	.long	0xf23
	.uleb128 0x33
	.long	.LVL102
	.long	0xf23
	.uleb128 0x33
	.long	.LVL103
	.long	0xf23
	.uleb128 0x33
	.long	.LVL104
	.long	0xf23
	.byte	0
	.uleb128 0x2f
	.long	.LASF213
	.byte	0x1
	.value	0x31c
	.long	0x2c
	.long	.LFB42
	.long	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x1398
	.uleb128 0x29
	.long	.LASF133
	.byte	0x1
	.value	0x31c
	.long	0x124
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x30
	.string	"ret"
	.byte	0x1
	.value	0x31e
	.long	0x2c
	.long	.LLST31
	.uleb128 0x35
	.long	.LASF214
	.byte	0x1
	.value	0x31f
	.long	0x8b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x35
	.long	.LASF202
	.byte	0x1
	.value	0x320
	.long	0xb94
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.long	.LVL110
	.long	0x1a2a
	.uleb128 0x33
	.long	.LVL112
	.long	0x19a4
	.byte	0
	.uleb128 0x3e
	.long	.LASF219
	.byte	0x1
	.value	0x119
	.long	0x2c
	.byte	0x1
	.long	0x140f
	.uleb128 0x26
	.long	.LASF133
	.byte	0x1
	.value	0x119
	.long	0x124
	.uleb128 0x25
	.string	"bp"
	.byte	0x1
	.value	0x119
	.long	0x140f
	.uleb128 0x3f
	.string	"c"
	.byte	0x1
	.value	0x11b
	.long	0x12a
	.uleb128 0x3f
	.string	"esc"
	.byte	0x1
	.value	0x11c
	.long	0x2c
	.uleb128 0x40
	.long	.LASF215
	.byte	0x1
	.value	0x11c
	.long	0x2c
	.uleb128 0x40
	.long	.LASF216
	.byte	0x1
	.value	0x11c
	.long	0x2c
	.uleb128 0x41
	.long	0x1400
	.uleb128 0x3f
	.string	"cmd"
	.byte	0x1
	.value	0x15f
	.long	0x124
	.byte	0
	.uleb128 0x42
	.uleb128 0x3f
	.string	"cmd"
	.byte	0x1
	.value	0x16b
	.long	0x124
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x25
	.uleb128 0x43
	.long	.LASF218
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.long	0x145c
	.uleb128 0x44
	.long	.LASF133
	.byte	0x1
	.byte	0xec
	.long	0x124
	.uleb128 0x45
	.string	"bp"
	.byte	0x1
	.byte	0xec
	.long	0x140f
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.byte	0xee
	.long	0x2c
	.uleb128 0x46
	.string	"n"
	.byte	0x1
	.byte	0xee
	.long	0x2c
	.uleb128 0x46
	.string	"m"
	.byte	0x1
	.byte	0xee
	.long	0x2c
	.uleb128 0x46
	.string	"fm"
	.byte	0x1
	.byte	0xef
	.long	0x598
	.byte	0
	.uleb128 0x47
	.long	.LASF220
	.byte	0x1
	.byte	0x77
	.long	0x2c
	.byte	0x1
	.long	0x14f9
	.uleb128 0x44
	.long	.LASF133
	.byte	0x1
	.byte	0x77
	.long	0x124
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x79
	.long	0x14ad
	.uleb128 0x48
	.long	.LASF221
	.byte	0x1
	.byte	0x7a
	.long	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x48
	.long	.LASF222
	.byte	0x1
	.byte	0x7b
	.long	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x48
	.long	.LASF223
	.byte	0x1
	.byte	0x7c
	.long	0x25
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.byte	0
	.uleb128 0x49
	.long	.LASF224
	.byte	0x1
	.byte	0x7d
	.long	0x1477
	.uleb128 0x49
	.long	.LASF225
	.byte	0x1
	.byte	0x7e
	.long	0x14f9
	.uleb128 0x49
	.long	.LASF226
	.byte	0x1
	.byte	0x7f
	.long	0x150f
	.uleb128 0x49
	.long	.LASF227
	.byte	0x1
	.byte	0x83
	.long	0x2c
	.uleb128 0x49
	.long	.LASF228
	.byte	0x1
	.byte	0x84
	.long	0x151f
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.byte	0x85
	.long	0x2c
	.uleb128 0x46
	.string	"ret"
	.byte	0x1
	.byte	0x86
	.long	0x2c
	.byte	0
	.uleb128 0x8
	.long	0x124
	.long	0x150f
	.uleb128 0x9
	.long	0xe4
	.byte	0x5
	.uleb128 0x9
	.long	0xe4
	.byte	0xf
	.byte	0
	.uleb128 0x8
	.long	0x2c
	.long	0x151f
	.uleb128 0x9
	.long	0xe4
	.byte	0x5
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.long	0x2c
	.uleb128 0x47
	.long	.LASF229
	.byte	0x1
	.byte	0x49
	.long	0x2c
	.byte	0x1
	.long	0x1569
	.uleb128 0x44
	.long	.LASF188
	.byte	0x1
	.byte	0x49
	.long	0x2c
	.uleb128 0x44
	.long	.LASF189
	.byte	0x1
	.byte	0x49
	.long	0x90a
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.byte	0x4b
	.long	0x2c
	.uleb128 0x46
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.long	0x598
	.uleb128 0x49
	.long	.LASF230
	.byte	0x1
	.byte	0x4d
	.long	0x9b2
	.byte	0
	.uleb128 0x47
	.long	.LASF231
	.byte	0x1
	.byte	0x28
	.long	0x9b2
	.byte	0x1
	.long	0x15a2
	.uleb128 0x44
	.long	.LASF125
	.byte	0x1
	.byte	0x28
	.long	0x124
	.uleb128 0x45
	.string	"len"
	.byte	0x1
	.byte	0x28
	.long	0x2c
	.uleb128 0x46
	.string	"i"
	.byte	0x1
	.byte	0x2a
	.long	0x2c
	.uleb128 0x46
	.string	"n"
	.byte	0x1
	.byte	0x2b
	.long	0x2c
	.byte	0
	.uleb128 0x24
	.long	.LASF232
	.byte	0x1
	.value	0x1b4
	.byte	0x1
	.long	0x15bc
	.uleb128 0x26
	.long	.LASF233
	.byte	0x1
	.value	0x1b4
	.long	0x124
	.byte	0
	.uleb128 0x4a
	.long	.LASF234
	.byte	0x1
	.value	0x1c3
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x18f0
	.uleb128 0x29
	.long	.LASF235
	.byte	0x1
	.value	0x1c3
	.long	0x122
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x4b
	.long	.Ldebug_ranges0+0
	.long	0x18cb
	.uleb128 0x3f
	.string	"ret"
	.byte	0x1
	.value	0x1c6
	.long	0x2c
	.uleb128 0x30
	.string	"msg"
	.byte	0x1
	.value	0x1c7
	.long	0x124
	.long	.LLST32
	.uleb128 0x4c
	.long	0x1398
	.long	.LBB23
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0x1c9
	.long	0x176e
	.uleb128 0x3a
	.long	0x13b5
	.long	.LLST33
	.uleb128 0x3a
	.long	0x13a9
	.long	.LLST34
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x4e
	.long	0x13c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4f
	.long	0x13ca
	.long	.LLST35
	.uleb128 0x4f
	.long	0x13d6
	.long	.LLST36
	.uleb128 0x4f
	.long	0x13e2
	.long	.LLST37
	.uleb128 0x3c
	.long	.LBB25
	.long	.LBE25-.LBB25
	.long	0x166b
	.uleb128 0x4f
	.long	0x13f3
	.long	.LLST38
	.byte	0
	.uleb128 0x3c
	.long	.LBB26
	.long	.LBE26-.LBB26
	.long	0x1694
	.uleb128 0x4f
	.long	0x1401
	.long	.LLST39
	.uleb128 0x33
	.long	.LVL140
	.long	0x1a35
	.uleb128 0x33
	.long	.LVL141
	.long	0x1a40
	.byte	0
	.uleb128 0x4c
	.long	0x1415
	.long	.LBB27
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0x19b
	.long	0x1709
	.uleb128 0x3a
	.long	0x142c
	.long	.LLST40
	.uleb128 0x3a
	.long	0x1421
	.long	.LLST41
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x4f
	.long	0x1436
	.long	.LLST42
	.uleb128 0x4f
	.long	0x143f
	.long	.LLST43
	.uleb128 0x4f
	.long	0x1448
	.long	.LLST44
	.uleb128 0x4f
	.long	0x1451
	.long	.LLST45
	.uleb128 0x33
	.long	.LVL156
	.long	0xf23
	.uleb128 0x33
	.long	.LVL158
	.long	0x1a4b
	.uleb128 0x33
	.long	.LVL160
	.long	0xf23
	.uleb128 0x33
	.long	.LVL168
	.long	0xf23
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LVL120
	.long	0x132e
	.uleb128 0x33
	.long	.LVL132
	.long	0x1a40
	.uleb128 0x33
	.long	.LVL133
	.long	0x1a56
	.uleb128 0x33
	.long	.LVL145
	.long	0x1a40
	.uleb128 0x33
	.long	.LVL146
	.long	0x1a56
	.uleb128 0x33
	.long	.LVL151
	.long	0x1a40
	.uleb128 0x33
	.long	.LVL152
	.long	0x1a56
	.uleb128 0x33
	.long	.LVL170
	.long	0x1a40
	.uleb128 0x33
	.long	.LVL171
	.long	0x1a56
	.uleb128 0x33
	.long	.LVL172
	.long	0xf23
	.uleb128 0x33
	.long	.LVL173
	.long	0xf23
	.byte	0
	.byte	0
	.uleb128 0x4c
	.long	0x145c
	.long	.LBB33
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0x1d5
	.long	0x1888
	.uleb128 0x3a
	.long	0x146c
	.long	.LLST46
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x4e
	.long	0x14ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4e
	.long	0x14c3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x4f
	.long	0x14ce
	.long	.LLST47
	.uleb128 0x4f
	.long	0x14d9
	.long	.LLST48
	.uleb128 0x4f
	.long	0x14e4
	.long	.LLST49
	.uleb128 0x4f
	.long	0x14ed
	.long	.LLST50
	.uleb128 0x4e
	.long	0x14b8
	.uleb128 0x5
	.byte	0x3
	.long	argvall.5264
	.uleb128 0x50
	.long	0x1525
	.long	.LBB35
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xe2
	.uleb128 0x3a
	.long	0x1540
	.long	.LLST51
	.uleb128 0x3a
	.long	0x1535
	.long	.LLST52
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x60
	.uleb128 0x4f
	.long	0x154b
	.long	.LLST53
	.uleb128 0x4f
	.long	0x1554
	.long	.LLST54
	.uleb128 0x4f
	.long	0x155d
	.long	.LLST55
	.uleb128 0x51
	.long	0x1569
	.long	.LBB37
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x5e
	.long	0x1860
	.uleb128 0x3a
	.long	0x1584
	.long	.LLST56
	.uleb128 0x3a
	.long	0x1579
	.long	.LLST57
	.uleb128 0x4d
	.long	.Ldebug_ranges0+0x80
	.uleb128 0x4f
	.long	0x158f
	.long	.LLST58
	.uleb128 0x4f
	.long	0x1598
	.long	.LLST59
	.uleb128 0x33
	.long	.LVL208
	.long	0x1a4b
	.uleb128 0x33
	.long	.LVL211
	.long	0x1a1f
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LVL200
	.long	0x1a40
	.uleb128 0x33
	.long	.LVL201
	.long	0x1a56
	.uleb128 0x33
	.long	.LVL202
	.long	0x1a61
	.uleb128 0x33
	.long	.LVL226
	.long	0xed7
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x52
	.long	0x15a2
	.long	.LBB48
	.long	.LBE48-.LBB48
	.byte	0x1
	.value	0x1d7
	.long	0x18a6
	.uleb128 0x3a
	.long	0x15af
	.long	.LLST60
	.byte	0
	.uleb128 0x33
	.long	.LVL124
	.long	0x1a35
	.uleb128 0x33
	.long	.LVL217
	.long	0xf23
	.uleb128 0x33
	.long	.LVL218
	.long	0xf23
	.uleb128 0x33
	.long	.LVL220
	.long	0xf23
	.byte	0
	.uleb128 0x33
	.long	.LVL221
	.long	0xf23
	.uleb128 0x33
	.long	.LVL222
	.long	0x19f1
	.uleb128 0x33
	.long	.LVL223
	.long	0x1978
	.uleb128 0x33
	.long	.LVL224
	.long	0x19a4
	.byte	0
	.uleb128 0x53
	.string	"cli"
	.byte	0x1
	.byte	0x12
	.long	0x1901
	.uleb128 0x5
	.byte	0x3
	.long	cli
	.uleb128 0xd
	.byte	0x4
	.long	0x916
	.uleb128 0x54
	.long	.LASF236
	.byte	0x1
	.byte	0x13
	.long	0x2c
	.uleb128 0x5
	.byte	0x3
	.long	cliexit
	.uleb128 0x54
	.long	.LASF237
	.byte	0x1
	.byte	0x15
	.long	0x8a9
	.uleb128 0x5
	.byte	0x3
	.long	esc_tag_len
	.uleb128 0x8
	.long	0x9b8
	.long	0x1939
	.uleb128 0x9
	.long	0xe4
	.byte	0x7
	.byte	0
	.uleb128 0x35
	.long	.LASF238
	.byte	0x1
	.value	0x1f3
	.long	0x194b
	.uleb128 0x5
	.byte	0x3
	.long	built_ins
	.uleb128 0x18
	.long	0x1929
	.uleb128 0x55
	.long	.LASF239
	.byte	0x6
	.value	0x2fe
	.long	0x43c
	.uleb128 0x56
	.long	.LASF240
	.byte	0xe
	.byte	0x17
	.long	0x25
	.uleb128 0x57
	.long	.LASF241
	.byte	0x1
	.byte	0x14
	.long	0xbfa
	.uleb128 0x5
	.byte	0x3
	.long	esc_tag
	.uleb128 0x58
	.long	.LASF242
	.long	.LASF242
	.byte	0xb
	.byte	0x5a
	.uleb128 0x58
	.long	.LASF243
	.long	.LASF243
	.byte	0xb
	.byte	0x43
	.uleb128 0x58
	.long	.LASF244
	.long	.LASF244
	.byte	0xf
	.byte	0x1c
	.uleb128 0x58
	.long	.LASF245
	.long	.LASF245
	.byte	0xc
	.byte	0x5e
	.uleb128 0x59
	.long	.LASF270
	.long	.LASF270
	.uleb128 0x58
	.long	.LASF246
	.long	.LASF246
	.byte	0xf
	.byte	0x22
	.uleb128 0x5a
	.long	.LASF247
	.long	.LASF247
	.byte	0x8
	.value	0x10c
	.uleb128 0x5a
	.long	.LASF248
	.long	.LASF248
	.byte	0xb
	.value	0x1e8
	.uleb128 0x58
	.long	.LASF249
	.long	.LASF249
	.byte	0xb
	.byte	0x52
	.uleb128 0x58
	.long	.LASF250
	.long	.LASF250
	.byte	0x1
	.byte	0x1a
	.uleb128 0x58
	.long	.LASF251
	.long	.LASF251
	.byte	0x1
	.byte	0x17
	.uleb128 0x5a
	.long	.LASF252
	.long	.LASF252
	.byte	0xb
	.value	0x200
	.uleb128 0x5a
	.long	.LASF253
	.long	.LASF253
	.byte	0xb
	.value	0x20e
	.uleb128 0x58
	.long	.LASF254
	.long	.LASF254
	.byte	0x1
	.byte	0x16
	.uleb128 0x58
	.long	.LASF255
	.long	.LASF255
	.byte	0x1
	.byte	0x1e
	.uleb128 0x58
	.long	.LASF256
	.long	.LASF256
	.byte	0xf
	.byte	0x20
	.uleb128 0x58
	.long	.LASF257
	.long	.LASF257
	.byte	0xc
	.byte	0x79
	.uleb128 0x58
	.long	.LASF258
	.long	.LASF258
	.byte	0xf
	.byte	0x28
	.uleb128 0x58
	.long	.LASF259
	.long	.LASF259
	.byte	0x10
	.byte	0x50
	.uleb128 0x58
	.long	.LASF260
	.long	.LASF260
	.byte	0xf
	.byte	0x27
	.uleb128 0x58
	.long	.LASF261
	.long	.LASF261
	.byte	0x8
	.byte	0xc0
	.uleb128 0x58
	.long	.LASF262
	.long	.LASF262
	.byte	0xf
	.byte	0x1f
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3c
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
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
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x4a
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
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
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
	.uleb128 0x4d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.byte	0
	.byte	0
	.uleb128 0x51
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
	.uleb128 0x52
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
	.uleb128 0x53
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
	.uleb128 0x54
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
	.uleb128 0x55
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
	.uleb128 0x56
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
	.uleb128 0x57
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x58
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
	.uleb128 0x59
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
	.uleb128 0x5a
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
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL8
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL7
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LVL4
	.long	.LVL6
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL5
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST5:
	.long	.LVL10
	.long	.LVL13
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL13
	.long	.LFE33
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST6:
	.long	.LVL11
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL16
	.long	.LVL20-1
	.value	0x1
	.byte	0x52
	.long	.LVL21
	.long	.LVL23
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST8:
	.long	.LVL17
	.long	.LVL18
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19
	.value	0x8
	.byte	0x73
	.sleb128 264
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL25
	.long	.LVL26
	.value	0x1
	.byte	0x52
	.long	.LVL26
	.long	.LVL29
	.value	0x1
	.byte	0x56
	.long	.LVL29
	.long	.LVL30
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST10:
	.long	.LVL25
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST11:
	.long	.LVL27
	.long	.LVL29
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	.LVL37
	.long	.LVL38
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST13:
	.long	.LVL31
	.long	.LVL32
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LVL39
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST14:
	.long	.LVL34
	.long	.LVL36
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST15:
	.long	.LVL40
	.long	.LVL41
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST16:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL49
	.long	.LVL50
	.value	0x2
	.byte	0x74
	.sleb128 0
	.long	.LVL50
	.long	.LVL52
	.value	0x2
	.byte	0x74
	.sleb128 4
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x74
	.sleb128 8
	.long	.LVL53
	.long	.LVL54-1
	.value	0x2
	.byte	0x74
	.sleb128 12
	.long	.LVL54-1
	.long	.LVL56
	.value	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL47
	.long	.LVL51
	.value	0xa
	.byte	0x91
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0xa
	.value	0x124
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL45
	.long	.LVL47
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL47
	.long	.LVL51
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST19:
	.long	.LVL54
	.long	.LVL55-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL60
	.long	.LVL61
	.value	0x1
	.byte	0x50
	.long	.LVL61
	.long	.LVL63
	.value	0x1
	.byte	0x53
	.long	.LVL63
	.long	.LVL64
	.value	0x1
	.byte	0x50
	.long	.LVL64
	.long	.LVL66
	.value	0x1
	.byte	0x53
	.long	.LVL66
	.long	.LVL67
	.value	0x1
	.byte	0x50
	.long	.LVL67
	.long	.LVL70
	.value	0x1
	.byte	0x53
	.long	.LVL70
	.long	.LVL71-1
	.value	0x1
	.byte	0x50
	.long	.LVL71-1
	.long	.LVL72
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST21:
	.long	.LVL83
	.long	.LVL85
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL83
	.long	.LVL84
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST23:
	.long	.LVL87
	.long	.LVL88
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	.LVL90
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST24:
	.long	.LVL87
	.long	.LVL89
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	.LVL90
	.long	.LFE26
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST25:
	.long	.LVL92
	.long	.LVL94
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL92
	.long	.LVL94
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST27:
	.long	.LVL92
	.long	.LVL94
	.value	0x2
	.byte	0x91
	.sleb128 8
	.long	0
	.long	0
.LLST28:
	.long	.LVL92
	.long	.LVL94
	.value	0x2
	.byte	0x91
	.sleb128 12
	.long	0
	.long	0
.LLST29:
	.long	.LVL99
	.long	.LVL100
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL100
	.long	.LVL107
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST30:
	.long	.LVL99
	.long	.LVL100
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL100
	.long	.LVL101
	.value	0x1
	.byte	0x53
	.long	.LVL101
	.long	.LVL102
	.value	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.long	.LVL102
	.long	.LVL106
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST31:
	.long	.LVL109
	.long	.LVL110
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL110
	.long	.LVL111
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST32:
	.long	.LVL114
	.long	.LVL122
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL122
	.long	.LVL123
	.value	0x1
	.byte	0x50
	.long	.LVL123
	.long	.LVL125
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL125
	.long	.LVL177
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL177
	.long	.LVL219
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST33:
	.long	.LVL115
	.long	.LVL121
	.value	0x4
	.byte	0x73
	.sleb128 268
	.byte	0x9f
	.long	.LVL125
	.long	.LVL177
	.value	0x4
	.byte	0x73
	.sleb128 268
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL115
	.long	.LVL116
	.value	0x4
	.byte	0x73
	.sleb128 272
	.byte	0x9f
	.long	.LVL116
	.long	.LVL117
	.value	0x1
	.byte	0x50
	.long	.LVL117
	.long	.LVL121
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL125
	.long	.LVL177
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST35:
	.long	.LVL115
	.long	.LVL119
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL119
	.long	.LVL121
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL125
	.long	.LVL126
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL129
	.long	.LVL142
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL142
	.long	.LVL143
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL143
	.long	.LVL144
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL144
	.long	.LVL147
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL147
	.long	.LVL148
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL149
	.long	.LVL150
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL153
	.long	.LVL168
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL169
	.long	.LVL176
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST36:
	.long	.LVL115
	.long	.LVL118
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL119
	.long	.LVL121
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	.LVL125
	.long	.LVL127
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	.LVL127
	.long	.LVL128
	.value	0x1
	.byte	0x57
	.long	.LVL128
	.long	.LVL175
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0
	.long	0
.LLST37:
	.long	.LVL115
	.long	.LVL118
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL119
	.long	.LVL121
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL125
	.long	.LVL130
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL130
	.long	.LVL131
	.value	0x1
	.byte	0x56
	.long	.LVL131
	.long	.LVL134
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL134
	.long	.LVL135
	.value	0x1
	.byte	0x56
	.long	.LVL135
	.long	.LVL174
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	0
	.long	0
.LLST38:
	.long	.LVL136
	.long	.LVL137
	.value	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa18
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL138
	.long	.LVL139
	.value	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa18
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL154
	.long	.LVL168
	.value	0x4
	.byte	0x73
	.sleb128 268
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL154
	.long	.LVL155
	.value	0x1
	.byte	0x56
	.long	.LVL155
	.long	.LVL168
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST42:
	.long	.LVL156
	.long	.LVL157
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL164
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST43:
	.long	.LVL156
	.long	.LVL157
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL166
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL166
	.long	.LVL167
	.value	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x73
	.sleb128 268
	.byte	0x6
	.byte	0x1c
	.byte	0x9f
	.long	0
	.long	0
.LLST44:
	.long	.LVL156
	.long	.LVL157
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL159
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL161
	.long	.LVL168
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST45:
	.long	.LVL154
	.long	.LVL157
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL157
	.long	.LVL165
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST46:
	.long	.LVL177
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
.LLST47:
	.long	.LVL177
	.long	.LVL179
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL179
	.long	.LVL184
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL186
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	0
	.long	0
.LLST48:
	.long	.LVL177
	.long	.LVL178
	.value	0x3
	.byte	0x91
	.sleb128 -60
	.byte	0x9f
	.long	.LVL178
	.long	.LVL185
	.value	0x1
	.byte	0x53
	.long	.LVL186
	.long	.LVL188
	.value	0x1
	.byte	0x53
	.long	.LVL189
	.long	.LVL191
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST49:
	.long	.LVL177
	.long	.LVL179
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL179
	.long	.LVL180
	.value	0x1
	.byte	0x51
	.long	.LVL180
	.long	.LVL181
	.value	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.long	.LVL181
	.long	.LVL182
	.value	0x1
	.byte	0x51
	.long	.LVL183
	.long	.LVL191
	.value	0x1
	.byte	0x51
	.long	.LVL191
	.long	.LVL192
	.value	0x1
	.byte	0x56
	.long	.LVL192
	.long	.LVL197
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL198
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -76
	.long	0
	.long	0
.LLST50:
	.long	.LVL177
	.long	.LVL191
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL191
	.long	.LVL196
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL198
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -84
	.long	0
	.long	0
.LLST51:
	.long	.LVL193
	.long	.LVL195
	.value	0x1
	.byte	0x53
	.long	.LVL199
	.long	.LVL214
	.value	0x1
	.byte	0x53
	.long	.LVL224
	.long	.LVL227
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST52:
	.long	.LVL193
	.long	.LVL194
	.value	0x1
	.byte	0x50
	.long	.LVL194
	.long	.LVL195
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	.LVL199
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -92
	.long	0
	.long	0
.LLST53:
	.long	.LVL193
	.long	.LVL195
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL199
	.long	.LVL205
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL205
	.long	.LVL206
	.value	0x1
	.byte	0x50
	.long	.LVL206
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	.LVL224
	.long	.LVL227
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0
	.long	0
.LLST54:
	.long	.LVL203
	.long	.LVL204
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST55:
	.long	.LVL193
	.long	.LVL195
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL199
	.long	.LVL214
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST56:
	.long	.LVL205
	.long	.LVL206
	.value	0x1
	.byte	0x50
	.long	.LVL206
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -96
	.long	0
	.long	0
.LLST57:
	.long	.LVL205
	.long	.LVL214
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST58:
	.long	.LVL205
	.long	.LVL207
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL207
	.long	.LVL212
	.value	0x7
	.byte	0x91
	.sleb128 -80
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.long	.LVL212
	.long	.LVL213
	.value	0x3
	.byte	0x91
	.sleb128 -80
	.long	0
	.long	0
.LLST59:
	.long	.LVL205
	.long	.LVL207
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL207
	.long	.LVL209
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	.LVL209
	.long	.LVL210
	.value	0x1
	.byte	0x51
	.long	.LVL210
	.long	.LVL214
	.value	0x3
	.byte	0x91
	.sleb128 -88
	.long	0
	.long	0
.LLST60:
	.long	.LVL215
	.long	.LVL216
	.value	0x3
	.byte	0x91
	.sleb128 -68
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0xb4
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB27
	.long	.LFE27-.LFB27
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
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB41
	.long	.LFE41-.LFB41
	.long	.LFB40
	.long	.LFE40-.LFB40
	.long	.LFB38
	.long	.LFE38-.LFB38
	.long	.LFB30
	.long	.LFE30-.LFB30
	.long	.LFB29
	.long	.LFE29-.LFB29
	.long	.LFB25
	.long	.LFE25-.LFB25
	.long	.LFB28
	.long	.LFE28-.LFB28
	.long	.LFB26
	.long	.LFE26-.LFB26
	.long	.LFB24
	.long	.LFE24-.LFB24
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB22
	.long	.LBE22
	.long	.LBB51
	.long	.LBE51
	.long	0
	.long	0
	.long	.LBB23
	.long	.LBE23
	.long	.LBB32
	.long	.LBE32
	.long	0
	.long	0
	.long	.LBB27
	.long	.LBE27
	.long	.LBB30
	.long	.LBE30
	.long	0
	.long	0
	.long	.LBB33
	.long	.LBE33
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LBB35
	.long	.LBE35
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB37
	.long	.LBE37
	.long	.LBB41
	.long	.LBE41
	.long	.LBB42
	.long	.LBE42
	.long	0
	.long	0
	.long	.LFB27
	.long	.LFE27
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
	.long	.LFB39
	.long	.LFE39
	.long	.LFB41
	.long	.LFE41
	.long	.LFB40
	.long	.LFE40
	.long	.LFB38
	.long	.LFE38
	.long	.LFB30
	.long	.LFE30
	.long	.LFB29
	.long	.LFE29
	.long	.LFB25
	.long	.LFE25
	.long	.LFB28
	.long	.LFE28
	.long	.LFB26
	.long	.LFE26
	.long	.LFB24
	.long	.LFE24
	.long	.LFB42
	.long	.LFE42
	.long	.LFB23
	.long	.LFE23
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF212:
	.string	"build_in_count"
.LASF18:
	.string	"sizetype"
.LASF266:
	.string	"__locale_t"
.LASF20:
	.string	"__value"
.LASF89:
	.string	"__sf"
.LASF56:
	.string	"_read"
.LASF57:
	.string	"_write"
.LASF163:
	.string	"hal_uart_mode_t"
.LASF268:
	.string	"tftp_ota_thread"
.LASF100:
	.string	"_asctime_buf"
.LASF83:
	.string	"_cvtlen"
.LASF119:
	.string	"_unused"
.LASF30:
	.string	"__tm"
.LASF115:
	.string	"_wcsrtombs_state"
.LASF61:
	.string	"_nbuf"
.LASF31:
	.string	"__tm_sec"
.LASF108:
	.string	"_l64a_buf"
.LASF199:
	.string	"aos_cli_stop"
.LASF172:
	.string	"config"
.LASF132:
	.string	"num_commands"
.LASF65:
	.string	"_lock"
.LASF155:
	.string	"hal_uart_flow_control_t"
.LASF96:
	.string	"_mult"
.LASF231:
	.string	"lookup_command"
.LASF254:
	.string	"hal_reboot"
.LASF173:
	.string	"priv"
.LASF214:
	.string	"recv_size"
.LASF16:
	.string	"__wch"
.LASF8:
	.string	"__uint8_t"
.LASF237:
	.string	"esc_tag_len"
.LASF53:
	.string	"_file"
.LASF40:
	.string	"_on_exit_args"
.LASF111:
	.string	"_mbrlen_state"
.LASF7:
	.string	"long int"
.LASF239:
	.string	"_impure_ptr"
.LASF129:
	.string	"initialized"
.LASF80:
	.string	"_result_k"
.LASF242:
	.string	"aos_task_exit"
.LASF50:
	.string	"_size"
.LASF101:
	.string	"_localtime_buf"
.LASF137:
	.string	"history"
.LASF191:
	.string	"ota_cmd"
.LASF225:
	.string	"argvall"
.LASF35:
	.string	"__tm_mon"
.LASF98:
	.string	"_unused_rand"
.LASF3:
	.string	"signed char"
.LASF192:
	.string	"aos_cli_register_command"
.LASF122:
	.string	"uint8_t"
.LASF251:
	.string	"log_cli_init"
.LASF257:
	.string	"hal_uart_recv_II"
.LASF181:
	.string	"TAG_DEV_TEMP"
.LASF157:
	.string	"ODD_PARITY"
.LASF4:
	.string	"unsigned char"
.LASF253:
	.string	"aos_now_ms"
.LASF210:
	.string	"devname_cmd"
.LASF245:
	.string	"hal_uart_send"
.LASF158:
	.string	"EVEN_PARITY"
.LASF75:
	.string	"_unspecified_locale_info"
.LASF136:
	.string	"his_cur"
.LASF68:
	.string	"_reent"
.LASF267:
	.string	"__builtin_va_list"
.LASF265:
	.string	"/home/stone/Documents/pca"
.LASF120:
	.string	"__gnuc_va_list"
.LASF140:
	.string	"_Bool"
.LASF195:
	.string	"aos_cli_register_commands"
.LASF207:
	.string	"uptime_cmd"
.LASF23:
	.string	"char"
.LASF47:
	.string	"_fns"
.LASF59:
	.string	"_close"
.LASF175:
	.string	"TAG_DEV_ACC"
.LASF70:
	.string	"_stdin"
.LASF184:
	.string	"TAG_DEV_HALL"
.LASF256:
	.string	"strcmp"
.LASF209:
	.string	"version_cmd"
.LASF269:
	.string	"init_general_err"
.LASF252:
	.string	"aos_free"
.LASF227:
	.string	"cmdnum"
.LASF206:
	.string	"task"
.LASF255:
	.string	"krhino_version_get"
.LASF159:
	.string	"hal_uart_parity_t"
.LASF167:
	.string	"stop_bits"
.LASF55:
	.string	"_cookie"
.LASF232:
	.string	"print_bad_command"
.LASF28:
	.string	"_wds"
.LASF196:
	.string	"cmds"
.LASF87:
	.string	"_sig_func"
.LASF63:
	.string	"_offset"
.LASF84:
	.string	"_cvtbuf"
.LASF127:
	.string	"function"
.LASF165:
	.string	"data_width"
.LASF211:
	.string	"help_cmd"
.LASF183:
	.string	"TAG_DEV_HUMI"
.LASF81:
	.string	"_p5s"
.LASF10:
	.string	"long unsigned int"
.LASF246:
	.string	"strcpy"
.LASF51:
	.string	"__sFILE"
.LASF77:
	.string	"__sdidinit"
.LASF67:
	.string	"_flags2"
.LASF12:
	.string	"_LOCK_RECURSIVE_T"
.LASF217:
	.string	"echo_cmd"
.LASF69:
	.string	"_errno"
.LASF134:
	.string	"outbuf"
.LASF264:
	.string	"src/cli.c"
.LASF142:
	.string	"DATA_WIDTH_5BIT"
.LASF109:
	.string	"_signal_buf"
.LASF147:
	.string	"hal_uart_data_width_t"
.LASF144:
	.string	"DATA_WIDTH_7BIT"
.LASF215:
	.string	"key1"
.LASF216:
	.string	"key2"
.LASF188:
	.string	"argc"
.LASF29:
	.string	"_Bigint"
.LASF146:
	.string	"DATA_WIDTH_9BIT"
.LASF26:
	.string	"_maxwds"
.LASF189:
	.string	"argv"
.LASF78:
	.string	"__cleanup"
.LASF86:
	.string	"_atexit0"
.LASF224:
	.string	"stat"
.LASF180:
	.string	"TAG_DEV_BARO"
.LASF9:
	.string	"__uint32_t"
.LASF74:
	.string	"_emergency"
.LASF270:
	.string	"__stack_chk_fail"
.LASF138:
	.string	"aos_hdl_t"
.LASF1:
	.string	"long long int"
.LASF121:
	.string	"va_list"
.LASF92:
	.string	"_niobs"
.LASF133:
	.string	"inbuf"
.LASF187:
	.string	"TAG_DEV_SENSOR_NUM_MAX"
.LASF229:
	.string	"proc_onecmd"
.LASF88:
	.string	"__sglue"
.LASF118:
	.string	"_nmalloc"
.LASF102:
	.string	"_gamma_signgam"
.LASF82:
	.string	"_freelist"
.LASF93:
	.string	"_iobs"
.LASF203:
	.string	"aos_cli_printf"
.LASF91:
	.string	"_glue"
.LASF27:
	.string	"_sign"
.LASF166:
	.string	"parity"
.LASF244:
	.string	"memmove"
.LASF141:
	.string	"float"
.LASF126:
	.string	"help"
.LASF0:
	.string	"unsigned int"
.LASF182:
	.string	"TAG_DEV_UV"
.LASF201:
	.string	"cli_putstr"
.LASF116:
	.string	"_h_errno"
.LASF234:
	.string	"cli_main"
.LASF226:
	.string	"argcall"
.LASF236:
	.string	"cliexit"
.LASF114:
	.string	"_wcrtomb_state"
.LASF178:
	.string	"TAG_DEV_ALS"
.LASF34:
	.string	"__tm_mday"
.LASF218:
	.string	"tab_complete"
.LASF85:
	.string	"_new"
.LASF60:
	.string	"_ubuf"
.LASF72:
	.string	"_stderr"
.LASF243:
	.string	"aos_task_new"
.LASF107:
	.string	"_wctomb_state"
.LASF66:
	.string	"_mbstate"
.LASF194:
	.string	"remaining_cmds"
.LASF103:
	.string	"_rand_next"
.LASF52:
	.string	"_flags"
.LASF223:
	.string	"done"
.LASF219:
	.string	"get_input"
.LASF45:
	.string	"_atexit"
.LASF130:
	.string	"echo_disabled"
.LASF205:
	.string	"aos_cli_init"
.LASF228:
	.string	"pargc"
.LASF19:
	.string	"__count"
.LASF148:
	.string	"STOP_BITS_1"
.LASF149:
	.string	"STOP_BITS_2"
.LASF176:
	.string	"TAG_DEV_MAG"
.LASF37:
	.string	"__tm_wday"
.LASF213:
	.string	"cli_getchar"
.LASF2:
	.string	"long double"
.LASF260:
	.string	"strncmp"
.LASF38:
	.string	"__tm_yday"
.LASF193:
	.string	"aos_cli_unregister_command"
.LASF95:
	.string	"_seed"
.LASF58:
	.string	"_seek"
.LASF197:
	.string	"num_cmds"
.LASF14:
	.string	"_fpos_t"
.LASF17:
	.string	"__wchb"
.LASF154:
	.string	"FLOW_CONTROL_CTS_RTS"
.LASF139:
	.string	"aos_task_t"
.LASF106:
	.string	"_mbtowc_state"
.LASF11:
	.string	"long long unsigned int"
.LASF230:
	.string	"command"
.LASF185:
	.string	"TAG_DEV_HR"
.LASF233:
	.string	"cmd_string"
.LASF42:
	.string	"_dso_handle"
.LASF152:
	.string	"FLOW_CONTROL_CTS"
.LASF162:
	.string	"MODE_TX_RX"
.LASF94:
	.string	"_rand48"
.LASF71:
	.string	"_stdout"
.LASF124:
	.string	"cli_command"
.LASF62:
	.string	"_blksize"
.LASF220:
	.string	"handle_input"
.LASF49:
	.string	"_base"
.LASF153:
	.string	"FLOW_CONTROL_RTS"
.LASF99:
	.string	"_strtok_last"
.LASF151:
	.string	"FLOW_CONTROL_DISABLED"
.LASF112:
	.string	"_mbrtowc_state"
.LASF22:
	.string	"_flock_t"
.LASF131:
	.string	"commands"
.LASF90:
	.string	"__FILE"
.LASF170:
	.string	"uart_config_t"
.LASF258:
	.string	"strncpy"
.LASF21:
	.string	"_mbstate_t"
.LASF104:
	.string	"_r48"
.LASF221:
	.string	"inArg"
.LASF15:
	.string	"wint_t"
.LASF25:
	.string	"_next"
.LASF64:
	.string	"_data"
.LASF222:
	.string	"inQuote"
.LASF240:
	.string	"aos_log_level"
.LASF262:
	.string	"strchr"
.LASF259:
	.string	"csp_printf"
.LASF198:
	.string	"aos_cli_unregister_commands"
.LASF168:
	.string	"flow_control"
.LASF125:
	.string	"name"
.LASF208:
	.string	"reboot_cmd"
.LASF171:
	.string	"port"
.LASF105:
	.string	"_mblen_state"
.LASF5:
	.string	"short int"
.LASF169:
	.string	"mode"
.LASF202:
	.string	"uart_stdio"
.LASF161:
	.string	"MODE_RX"
.LASF238:
	.string	"built_ins"
.LASF43:
	.string	"_fntypes"
.LASF177:
	.string	"TAG_DEV_GYRO"
.LASF36:
	.string	"__tm_year"
.LASF54:
	.string	"_lbfsize"
.LASF73:
	.string	"_inc"
.LASF46:
	.string	"_ind"
.LASF174:
	.string	"uart_dev_t"
.LASF200:
	.string	"aos_cli_get_tag"
.LASF48:
	.string	"__sbuf"
.LASF44:
	.string	"_is_cxa"
.LASF117:
	.string	"_nextf"
.LASF249:
	.string	"aos_task_new_ext"
.LASF135:
	.string	"his_idx"
.LASF160:
	.string	"MODE_TX"
.LASF76:
	.string	"_locale"
.LASF24:
	.string	"__ULong"
.LASF123:
	.string	"uint32_t"
.LASF248:
	.string	"aos_malloc"
.LASF79:
	.string	"_result"
.LASF179:
	.string	"TAG_DEV_PS"
.LASF263:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF164:
	.string	"baud_rate"
.LASF13:
	.string	"_off_t"
.LASF186:
	.string	"TAG_DEV_GPS"
.LASF97:
	.string	"_add"
.LASF6:
	.string	"short unsigned int"
.LASF33:
	.string	"__tm_hour"
.LASF128:
	.string	"cli_st"
.LASF204:
	.string	"message"
.LASF113:
	.string	"_mbsrtowcs_state"
.LASF143:
	.string	"DATA_WIDTH_6BIT"
.LASF247:
	.string	"vsnprintf"
.LASF145:
	.string	"DATA_WIDTH_8BIT"
.LASF41:
	.string	"_fnargs"
.LASF39:
	.string	"__tm_isdst"
.LASF190:
	.string	"exit_cmd"
.LASF235:
	.string	"data"
.LASF261:
	.string	"fflush"
.LASF156:
	.string	"NO_PARITY"
.LASF32:
	.string	"__tm_min"
.LASF110:
	.string	"_getdate_err"
.LASF150:
	.string	"hal_uart_stop_bits_t"
.LASF241:
	.string	"esc_tag"
.LASF250:
	.string	"board_cli_init"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
