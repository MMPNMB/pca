	.file	"boards.c"
	.text
.Ltext0:
	.section	.text.unlikely.bsp_board_led_state_get,"ax",@progbits
.LCOLDB0:
	.section	.text.bsp_board_led_state_get,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.bsp_board_led_state_get
.Ltext_cold0:
	.section	.text.bsp_board_led_state_get
	.globl	bsp_board_led_state_get
	.type	bsp_board_led_state_get, @function
bsp_board_led_state_get:
.LFB157:
	.file 1 "src/boards.c"
	.loc 1 3529 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3532 0
	movl	8(%ebp), %eax
	movzbl	m_board_led_list(%eax), %ecx
.LVL1:
	movl	$1342177280, %eax
.LBB22:
.LBB23:
.LBB24:
.LBB25:
	.loc 1 3280 0
	cmpl	$31, %ecx
	jbe	.L2
	.loc 1 3286 0
	andl	$31, %ecx
.LVL2:
	.loc 1 3287 0
	movl	$1342178048, %eax
.L2:
.LVL3:
.LBE25:
.LBE24:
.LBB26:
.LBB27:
	.loc 1 3465 0
	movl	1284(%eax), %eax
.LVL4:
.LBE27:
.LBE26:
.LBE23:
.LBE22:
	.loc 1 3542 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3537 0
	shrl	%cl, %eax
	andl	$1, %eax
	xorl	$1, %eax
	andl	$1, %eax
	.loc 1 3542 0
	ret
	.cfi_endproc
.LFE157:
	.size	bsp_board_led_state_get, .-bsp_board_led_state_get
	.section	.text.unlikely.bsp_board_led_state_get
.LCOLDE0:
	.section	.text.bsp_board_led_state_get
.LHOTE0:
	.section	.text.unlikely.bsp_board_led_on,"ax",@progbits
.LCOLDB1:
	.section	.text.bsp_board_led_on,"ax",@progbits
.LHOTB1:
	.globl	bsp_board_led_on
	.type	bsp_board_led_on, @function
bsp_board_led_on:
.LFB158:
	.loc 1 3544 0
	.cfi_startproc
.LVL5:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1342177280, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3546 0
	movl	8(%ebp), %eax
	movzbl	m_board_led_list(%eax), %ecx
.LVL6:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 3280 0
	cmpl	$31, %ecx
	jbe	.L8
	.loc 1 3286 0
	andl	$31, %ecx
.LVL7:
	.loc 1 3287 0
	movl	$1342178048, %edx
.L8:
.LVL8:
.LBE40:
.LBE39:
	.loc 1 3407 0
	movl	$1, %eax
	sall	%cl, %eax
.LVL9:
.LBB41:
.LBB42:
	.loc 1 3477 0
	movl	%eax, 1292(%edx)
.LVL10:
.LBE42:
.LBE41:
.LBE38:
.LBE37:
.LBE36:
	.loc 1 3547 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE158:
	.size	bsp_board_led_on, .-bsp_board_led_on
	.section	.text.unlikely.bsp_board_led_on
.LCOLDE1:
	.section	.text.bsp_board_led_on
.LHOTE1:
	.section	.text.unlikely.bsp_board_led_off,"ax",@progbits
.LCOLDB2:
	.section	.text.bsp_board_led_off,"ax",@progbits
.LHOTB2:
	.globl	bsp_board_led_off
	.type	bsp_board_led_off, @function
bsp_board_led_off:
.LFB159:
	.loc 1 3549 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1342177280, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3551 0
	movl	8(%ebp), %eax
	movzbl	m_board_led_list(%eax), %ecx
.LVL12:
.LBB51:
.LBB52:
.LBB53:
.LBB54:
.LBB55:
	.loc 1 3280 0
	cmpl	$31, %ecx
	jbe	.L13
	.loc 1 3286 0
	andl	$31, %ecx
.LVL13:
	.loc 1 3287 0
	movl	$1342178048, %edx
.L13:
.LVL14:
.LBE55:
.LBE54:
	.loc 1 3402 0
	movl	$1, %eax
	sall	%cl, %eax
.LVL15:
.LBB56:
.LBB57:
	.loc 1 3473 0
	movl	%eax, 1288(%edx)
.LVL16:
.LBE57:
.LBE56:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 3552 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE159:
	.size	bsp_board_led_off, .-bsp_board_led_off
	.section	.text.unlikely.bsp_board_led_off
.LCOLDE2:
	.section	.text.bsp_board_led_off
.LHOTE2:
	.section	.text.unlikely.bsp_board_leds_off,"ax",@progbits
.LCOLDB3:
	.section	.text.bsp_board_leds_off,"ax",@progbits
.LHOTB3:
	.globl	bsp_board_leds_off
	.type	bsp_board_leds_off, @function
bsp_board_leds_off:
.LFB160:
	.loc 1 3554 0
	.cfi_startproc
.LVL17:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3558 0
	pushl	$0
	call	bsp_board_led_off
.LVL18:
	pushl	$1
	call	bsp_board_led_off
.LVL19:
	pushl	$2
	call	bsp_board_led_off
.LVL20:
	pushl	$3
	call	bsp_board_led_off
.LVL21:
	.loc 1 3560 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE160:
	.size	bsp_board_leds_off, .-bsp_board_leds_off
	.section	.text.unlikely.bsp_board_leds_off
.LCOLDE3:
	.section	.text.bsp_board_leds_off
.LHOTE3:
	.section	.text.unlikely.bsp_board_leds_on,"ax",@progbits
.LCOLDB4:
	.section	.text.bsp_board_leds_on,"ax",@progbits
.LHOTB4:
	.globl	bsp_board_leds_on
	.type	bsp_board_leds_on, @function
bsp_board_leds_on:
.LFB161:
	.loc 1 3562 0
	.cfi_startproc
.LVL22:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3566 0
	pushl	$0
	call	bsp_board_led_on
.LVL23:
	pushl	$1
	call	bsp_board_led_on
.LVL24:
	pushl	$2
	call	bsp_board_led_on
.LVL25:
	pushl	$3
	call	bsp_board_led_on
.LVL26:
	.loc 1 3568 0
	addl	$16, %esp
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE161:
	.size	bsp_board_leds_on, .-bsp_board_leds_on
	.section	.text.unlikely.bsp_board_leds_on
.LCOLDE4:
	.section	.text.bsp_board_leds_on
.LHOTE4:
	.section	.text.unlikely.bsp_board_led_invert,"ax",@progbits
.LCOLDB5:
	.section	.text.bsp_board_led_invert,"ax",@progbits
.LHOTB5:
	.globl	bsp_board_led_invert
	.type	bsp_board_led_invert, @function
bsp_board_led_invert:
.LFB162:
	.loc 1 3570 0
	.cfi_startproc
.LVL27:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	$1342177280, %edx
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	.loc 1 3572 0
	movl	8(%ebp), %eax
	movzbl	m_board_led_list(%eax), %ecx
.LVL28:
.LBB62:
.LBB63:
.LBB64:
.LBB65:
	.loc 1 3280 0
	cmpl	$31, %ecx
	jbe	.L22
	.loc 1 3286 0
	andl	$31, %ecx
.LVL29:
	.loc 1 3287 0
	movl	$1342178048, %edx
.L22:
.LVL30:
.LBE65:
.LBE64:
	.loc 1 3412 0
	movl	1284(%edx), %ebx
.LVL31:
	.loc 1 3413 0
	movl	$1, %eax
	sall	%cl, %eax
	movl	%ebx, %ecx
.LVL32:
	notl	%ecx
	andl	%eax, %ecx
	.loc 1 3414 0
	andl	%ebx, %eax
	.loc 1 3413 0
	movl	%ecx, 1288(%edx)
	.loc 1 3414 0
	movl	%eax, 1292(%edx)
.LVL33:
.LBE63:
.LBE62:
	.loc 1 3573 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE162:
	.size	bsp_board_led_invert, .-bsp_board_led_invert
	.section	.text.unlikely.bsp_board_led_invert
.LCOLDE5:
	.section	.text.bsp_board_led_invert
.LHOTE5:
	.section	.text.unlikely.bsp_board_leds_init,"ax",@progbits
.LCOLDB6:
	.section	.text.bsp_board_leds_init,"ax",@progbits
.LHOTB6:
	.globl	bsp_board_leds_init
	.type	bsp_board_leds_init, @function
bsp_board_leds_init:
.LFB163:
	.loc 1 3575 0
	.cfi_startproc
.LVL34:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3577 0
	xorl	%edx, %edx
	.loc 1 3575 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LVL35:
.L28:
	.loc 1 3579 0 discriminator 3
	movzbl	m_board_led_list(%edx), %eax
.LVL36:
.LBB72:
.LBB73:
.LBB74:
.LBB75:
.LBB76:
	.loc 1 3282 0 discriminator 3
	movl	$1342177280, %ecx
	.loc 1 3280 0 discriminator 3
	cmpl	$31, %eax
	jbe	.L27
	.loc 1 3286 0
	andl	$31, %eax
.LVL37:
	.loc 1 3287 0
	movl	$1342178048, %ecx
.L27:
.LVL38:
.LBE76:
.LBE75:
.LBE74:
.LBE73:
.LBE72:
	.loc 1 3577 0
	incl	%edx
.LVL39:
.LBB81:
.LBB79:
.LBB77:
	.loc 1 3315 0
	addl	$448, %eax
.LVL40:
.LBE77:
.LBE79:
.LBE81:
	.loc 1 3577 0
	cmpl	$4, %edx
.LBB82:
.LBB80:
.LBB78:
	.loc 1 3315 0
	movl	$3, (%ecx,%eax,4)
.LVL41:
.LBE78:
.LBE80:
.LBE82:
	.loc 1 3577 0
	jne	.L28
	.loc 1 3582 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3581 0
	jmp	bsp_board_leds_off
.LVL42:
	.cfi_endproc
.LFE163:
	.size	bsp_board_leds_init, .-bsp_board_leds_init
	.section	.text.unlikely.bsp_board_leds_init
.LCOLDE6:
	.section	.text.bsp_board_leds_init
.LHOTE6:
	.section	.text.unlikely.bsp_board_led_idx_to_pin,"ax",@progbits
.LCOLDB7:
	.section	.text.bsp_board_led_idx_to_pin,"ax",@progbits
.LHOTB7:
	.globl	bsp_board_led_idx_to_pin
	.type	bsp_board_led_idx_to_pin, @function
bsp_board_led_idx_to_pin:
.LFB164:
	.loc 1 3584 0
	.cfi_startproc
.LVL43:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3586 0
	movl	8(%ebp), %eax
	.loc 1 3587 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3586 0
	movzbl	m_board_led_list(%eax), %eax
	.loc 1 3587 0
	ret
	.cfi_endproc
.LFE164:
	.size	bsp_board_led_idx_to_pin, .-bsp_board_led_idx_to_pin
	.section	.text.unlikely.bsp_board_led_idx_to_pin
.LCOLDE7:
	.section	.text.bsp_board_led_idx_to_pin
.LHOTE7:
	.section	.text.unlikely.bsp_board_pin_to_led_idx,"ax",@progbits
.LCOLDB8:
	.section	.text.bsp_board_pin_to_led_idx,"ax",@progbits
.LHOTB8:
	.globl	bsp_board_pin_to_led_idx
	.type	bsp_board_pin_to_led_idx, @function
bsp_board_pin_to_led_idx:
.LFB165:
	.loc 1 3589 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3592 0
	xorl	%eax, %eax
	.loc 1 3589 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3589 0
	movl	8(%ebp), %edx
	.loc 1 3594 0
	cmpl	$13, %edx
	je	.L35
.LVL45:
	cmpl	$14, %edx
	.loc 1 3592 0
	movl	$1, %eax
	.loc 1 3594 0
	je	.L35
.LVL46:
	cmpl	$15, %edx
	.loc 1 3592 0
	movl	$2, %eax
	.loc 1 3594 0
	je	.L35
.LVL47:
	.loc 1 3590 0
	xorl	%eax, %eax
	cmpl	$16, %edx
	sete	%al
	leal	-1(,%eax,4), %eax
.LVL48:
.L35:
	.loc 1 3601 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE165:
	.size	bsp_board_pin_to_led_idx, .-bsp_board_pin_to_led_idx
	.section	.text.unlikely.bsp_board_pin_to_led_idx
.LCOLDE8:
	.section	.text.bsp_board_pin_to_led_idx
.LHOTE8:
	.section	.text.unlikely.bsp_board_button_state_get,"ax",@progbits
.LCOLDB9:
	.section	.text.bsp_board_button_state_get,"ax",@progbits
.LHOTB9:
	.globl	bsp_board_button_state_get
	.type	bsp_board_button_state_get, @function
bsp_board_button_state_get:
.LFB166:
	.loc 1 3604 0
	.cfi_startproc
.LVL49:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3607 0
	movl	8(%ebp), %eax
	movzbl	m_board_btn_list(%eax), %ecx
.LVL50:
	movl	$1342177280, %eax
.LBB89:
.LBB90:
.LBB91:
.LBB92:
	.loc 1 3280 0
	cmpl	$31, %ecx
	jbe	.L42
	.loc 1 3286 0
	andl	$31, %ecx
.LVL51:
	.loc 1 3287 0
	movl	$1342178048, %eax
.L42:
.LVL52:
.LBE92:
.LBE91:
.LBB93:
.LBB94:
	.loc 1 3461 0
	movl	1296(%eax), %eax
.LVL53:
.LBE94:
.LBE93:
.LBE90:
.LBE89:
	.loc 1 3617 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3612 0
	shrl	%cl, %eax
	andl	$1, %eax
	xorl	$1, %eax
	andl	$1, %eax
	.loc 1 3617 0
	ret
	.cfi_endproc
.LFE166:
	.size	bsp_board_button_state_get, .-bsp_board_button_state_get
	.section	.text.unlikely.bsp_board_button_state_get
.LCOLDE9:
	.section	.text.bsp_board_button_state_get
.LHOTE9:
	.section	.text.unlikely.bsp_board_buttons_init,"ax",@progbits
.LCOLDB10:
	.section	.text.bsp_board_buttons_init,"ax",@progbits
.LHOTB10:
	.globl	bsp_board_buttons_init
	.type	bsp_board_buttons_init, @function
bsp_board_buttons_init:
.LFB167:
	.loc 1 3619 0
	.cfi_startproc
.LVL54:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3621 0
	xorl	%edx, %edx
	.loc 1 3619 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
.LVL55:
.L48:
	.loc 1 3623 0 discriminator 3
	movzbl	m_board_btn_list(%edx), %eax
.LVL56:
.LBB101:
.LBB102:
.LBB103:
.LBB104:
.LBB105:
	.loc 1 3282 0 discriminator 3
	movl	$1342177280, %ecx
	.loc 1 3280 0 discriminator 3
	cmpl	$31, %eax
	jbe	.L47
	.loc 1 3286 0
	andl	$31, %eax
.LVL57:
	.loc 1 3287 0
	movl	$1342178048, %ecx
.L47:
.LVL58:
.LBE105:
.LBE104:
.LBE103:
.LBE102:
.LBE101:
	.loc 1 3621 0
	incl	%edx
.LVL59:
.LBB110:
.LBB108:
.LBB106:
	.loc 1 3315 0
	addl	$448, %eax
.LVL60:
.LBE106:
.LBE108:
.LBE110:
	.loc 1 3621 0
	cmpl	$4, %edx
.LBB111:
.LBB109:
.LBB107:
	.loc 1 3315 0
	movl	$12, (%ecx,%eax,4)
.LVL61:
.LBE107:
.LBE109:
.LBE111:
	.loc 1 3621 0
	jne	.L48
	.loc 1 3625 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE167:
	.size	bsp_board_buttons_init, .-bsp_board_buttons_init
	.section	.text.unlikely.bsp_board_buttons_init
.LCOLDE10:
	.section	.text.bsp_board_buttons_init
.LHOTE10:
	.section	.text.unlikely.bsp_board_pin_to_button_idx,"ax",@progbits
.LCOLDB11:
	.section	.text.bsp_board_pin_to_button_idx,"ax",@progbits
.LHOTB11:
	.globl	bsp_board_pin_to_button_idx
	.type	bsp_board_pin_to_button_idx, @function
bsp_board_pin_to_button_idx:
.LFB168:
	.loc 1 3627 0
	.cfi_startproc
.LVL62:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 3630 0
	xorl	%eax, %eax
	.loc 1 3627 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3627 0
	movl	8(%ebp), %edx
	.loc 1 3632 0
	cmpl	$11, %edx
	je	.L53
.LVL63:
	cmpl	$12, %edx
	.loc 1 3630 0
	movl	$1, %eax
	.loc 1 3632 0
	je	.L53
.LVL64:
	cmpl	$24, %edx
	.loc 1 3630 0
	movl	$2, %eax
	.loc 1 3632 0
	je	.L53
.LVL65:
	.loc 1 3629 0
	xorl	%eax, %eax
	cmpl	$25, %edx
	sete	%al
	leal	-1(,%eax,4), %eax
.LVL66:
.L53:
	.loc 1 3639 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE168:
	.size	bsp_board_pin_to_button_idx, .-bsp_board_pin_to_button_idx
	.section	.text.unlikely.bsp_board_pin_to_button_idx
.LCOLDE11:
	.section	.text.bsp_board_pin_to_button_idx
.LHOTE11:
	.section	.text.unlikely.bsp_board_button_idx_to_pin,"ax",@progbits
.LCOLDB12:
	.section	.text.bsp_board_button_idx_to_pin,"ax",@progbits
.LHOTB12:
	.globl	bsp_board_button_idx_to_pin
	.type	bsp_board_button_idx_to_pin, @function
bsp_board_button_idx_to_pin:
.LFB169:
	.loc 1 3641 0
	.cfi_startproc
.LVL67:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 3643 0
	movl	8(%ebp), %eax
	.loc 1 3644 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 3643 0
	movzbl	m_board_btn_list(%eax), %eax
	.loc 1 3644 0
	ret
	.cfi_endproc
.LFE169:
	.size	bsp_board_button_idx_to_pin, .-bsp_board_button_idx_to_pin
	.section	.text.unlikely.bsp_board_button_idx_to_pin
.LCOLDE12:
	.section	.text.bsp_board_button_idx_to_pin
.LHOTE12:
	.section	.rodata.m_board_btn_list,"a",@progbits
	.align 4
	.type	m_board_btn_list, @object
	.size	m_board_btn_list, 4
m_board_btn_list:
	.byte	11
	.byte	12
	.byte	24
	.byte	25
	.section	.rodata.m_board_led_list,"a",@progbits
	.align 4
	.type	m_board_led_list, @object
	.size	m_board_led_list, 4
m_board_led_list:
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.text
.Letext0:
	.section	.text.unlikely.bsp_board_led_state_get
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xb5e
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF98
	.byte	0xc
	.long	.LASF99
	.long	.LASF100
	.long	.Ldebug_ranges0+0x40
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x4
	.long	.LASF3
	.byte	0x1
	.byte	0x39
	.long	0x3e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF2
	.uleb128 0x4
	.long	.LASF4
	.byte	0x1
	.byte	0x3b
	.long	0x57
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x4
	.long	.LASF6
	.byte	0x1
	.byte	0x3c
	.long	0x69
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0x3d
	.long	0x7b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x4b
	.long	0x33
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x4d
	.long	0x4c
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x4e
	.long	0x5e
	.uleb128 0x4
	.long	.LASF16
	.byte	0x1
	.byte	0x4f
	.long	0x70
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF17
	.uleb128 0x5
	.long	0xb8
	.uleb128 0x6
	.long	0xca
	.uleb128 0x7
	.long	0xca
	.long	0xe4
	.uleb128 0x8
	.long	0xc3
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.long	0xad
	.uleb128 0x9
	.value	0x780
	.byte	0x1
	.value	0x9b8
	.long	0x19a
	.uleb128 0xa
	.long	.LASF18
	.byte	0x1
	.value	0x9b9
	.long	0x1b0
	.byte	0
	.uleb128 0xb
	.string	"OUT"
	.byte	0x1
	.value	0x9ba
	.long	0xca
	.value	0x504
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1
	.value	0x9bb
	.long	0xca
	.value	0x508
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1
	.value	0x9bc
	.long	0xca
	.value	0x50c
	.uleb128 0xb
	.string	"IN"
	.byte	0x1
	.value	0x9bd
	.long	0xcf
	.value	0x510
	.uleb128 0xb
	.string	"DIR"
	.byte	0x1
	.value	0x9be
	.long	0xca
	.value	0x514
	.uleb128 0xc
	.long	.LASF21
	.byte	0x1
	.value	0x9bf
	.long	0xca
	.value	0x518
	.uleb128 0xc
	.long	.LASF22
	.byte	0x1
	.value	0x9c0
	.long	0xca
	.value	0x51c
	.uleb128 0xc
	.long	.LASF23
	.byte	0x1
	.value	0x9c1
	.long	0xca
	.value	0x520
	.uleb128 0xc
	.long	.LASF24
	.byte	0x1
	.value	0x9c2
	.long	0xca
	.value	0x524
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.value	0x9c3
	.long	0x1ca
	.value	0x528
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.value	0x9c4
	.long	0x1cf
	.value	0x700
	.byte	0
	.uleb128 0x7
	.long	0xcf
	.long	0x1ab
	.uleb128 0xd
	.long	0xc3
	.value	0x140
	.byte	0
	.uleb128 0x5
	.long	0x19a
	.uleb128 0x6
	.long	0x1ab
	.uleb128 0x7
	.long	0xcf
	.long	0x1c5
	.uleb128 0x8
	.long	0xc3
	.byte	0x75
	.byte	0
	.uleb128 0x5
	.long	0x1b5
	.uleb128 0x6
	.long	0x1c5
	.uleb128 0x5
	.long	0xd4
	.uleb128 0xe
	.long	.LASF27
	.byte	0x1
	.value	0x9c5
	.long	0xe9
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF28
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF29
	.uleb128 0x6
	.long	0x97
	.uleb128 0xf
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xc83
	.long	0x20d
	.uleb128 0x10
	.long	.LASF30
	.byte	0
	.uleb128 0x10
	.long	.LASF31
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF32
	.byte	0x1
	.value	0xc86
	.long	0x1f3
	.uleb128 0xf
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xc88
	.long	0x233
	.uleb128 0x10
	.long	.LASF33
	.byte	0
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0
	.uleb128 0xe
	.long	.LASF35
	.byte	0x1
	.value	0xc8b
	.long	0x219
	.uleb128 0xf
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xc8d
	.long	0x25f
	.uleb128 0x10
	.long	.LASF36
	.byte	0
	.uleb128 0x10
	.long	.LASF37
	.byte	0x1
	.uleb128 0x10
	.long	.LASF38
	.byte	0x3
	.byte	0
	.uleb128 0xe
	.long	.LASF39
	.byte	0x1
	.value	0xc91
	.long	0x23f
	.uleb128 0xf
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xc93
	.long	0x2a9
	.uleb128 0x10
	.long	.LASF40
	.byte	0
	.uleb128 0x10
	.long	.LASF41
	.byte	0x1
	.uleb128 0x10
	.long	.LASF42
	.byte	0x2
	.uleb128 0x10
	.long	.LASF43
	.byte	0x3
	.uleb128 0x10
	.long	.LASF44
	.byte	0x4
	.uleb128 0x10
	.long	.LASF45
	.byte	0x5
	.uleb128 0x10
	.long	.LASF46
	.byte	0x6
	.uleb128 0x10
	.long	.LASF47
	.byte	0x7
	.byte	0
	.uleb128 0xe
	.long	.LASF48
	.byte	0x1
	.value	0xc9c
	.long	0x26b
	.uleb128 0xf
	.byte	0x4
	.long	0x90
	.byte	0x1
	.value	0xc9e
	.long	0x2d5
	.uleb128 0x10
	.long	.LASF49
	.byte	0
	.uleb128 0x10
	.long	.LASF50
	.byte	0x3
	.uleb128 0x10
	.long	.LASF51
	.byte	0x2
	.byte	0
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.value	0xca2
	.long	0x2b5
	.uleb128 0x11
	.long	.LASF61
	.byte	0x1
	.value	0xcea
	.byte	0x3
	.long	0x343
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xceb
	.long	0xb8
	.uleb128 0x13
	.string	"dir"
	.byte	0x1
	.value	0xcec
	.long	0x20d
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.value	0xced
	.long	0x233
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.value	0xcee
	.long	0x25f
	.uleb128 0x12
	.long	.LASF56
	.byte	0x1
	.value	0xcef
	.long	0x2a9
	.uleb128 0x12
	.long	.LASF57
	.byte	0x1
	.value	0xcf0
	.long	0x2d5
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xcf2
	.long	0x343
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0x1d4
	.uleb128 0x16
	.long	.LASF59
	.byte	0x1
	.value	0xd83
	.long	0xb8
	.byte	0x3
	.long	0x367
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.value	0xd83
	.long	0x367
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0x36d
	.uleb128 0x6
	.long	0x1d4
	.uleb128 0x16
	.long	.LASF60
	.byte	0x1
	.value	0xd87
	.long	0xb8
	.byte	0x3
	.long	0x390
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.value	0xd87
	.long	0x367
	.byte	0
	.uleb128 0x11
	.long	.LASF62
	.byte	0x1
	.value	0xd8f
	.byte	0x3
	.long	0x3b6
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.value	0xd8f
	.long	0x343
	.uleb128 0x12
	.long	.LASF63
	.byte	0x1
	.value	0xd8f
	.long	0xb8
	.byte	0
	.uleb128 0x11
	.long	.LASF64
	.byte	0x1
	.value	0xd93
	.byte	0x3
	.long	0x3dc
	.uleb128 0x12
	.long	.LASF58
	.byte	0x1
	.value	0xd93
	.long	0x343
	.uleb128 0x12
	.long	.LASF65
	.byte	0x1
	.value	0xd93
	.long	0xb8
	.byte	0
	.uleb128 0x11
	.long	.LASF66
	.byte	0x1
	.value	0xd58
	.byte	0x3
	.long	0x402
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd58
	.long	0xb8
	.uleb128 0x12
	.long	.LASF67
	.byte	0x1
	.value	0xd58
	.long	0xb8
	.byte	0
	.uleb128 0x11
	.long	.LASF68
	.byte	0x1
	.value	0xd03
	.byte	0x3
	.long	0x428
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd03
	.long	0xb8
	.uleb128 0x12
	.long	.LASF69
	.byte	0x1
	.value	0xd03
	.long	0x25f
	.byte	0
	.uleb128 0x16
	.long	.LASF70
	.byte	0x1
	.value	0xd68
	.long	0xb8
	.byte	0x3
	.long	0x452
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd68
	.long	0xb8
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xd6a
	.long	0x343
	.byte	0
	.uleb128 0x16
	.long	.LASF71
	.byte	0x1
	.value	0xccd
	.long	0x343
	.byte	0x3
	.long	0x470
	.uleb128 0x12
	.long	.LASF72
	.byte	0x1
	.value	0xccd
	.long	0x470
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.long	0xb8
	.uleb128 0x17
	.long	.LASF87
	.byte	0x1
	.value	0xdc8
	.long	0x509
	.long	.LFB157
	.long	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x509
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xdc8
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.value	0xdcc
	.long	0x509
	.uleb128 0x1a
	.long	0x428
	.long	.LBB22
	.long	.LBE22-.LBB22
	.byte	0x1
	.value	0xdcc
	.uleb128 0x1b
	.long	0x439
	.long	.LLST0
	.uleb128 0x1c
	.long	.LBB23
	.long	.LBE23-.LBB23
	.uleb128 0x1d
	.long	0x445
	.uleb128 0x1e
	.long	0x452
	.long	.LBB24
	.long	.LBE24-.LBB24
	.byte	0x1
	.value	0xd6a
	.long	0x4f0
	.uleb128 0x1b
	.long	0x463
	.long	.LLST1
	.byte	0
	.uleb128 0x1a
	.long	0x372
	.long	.LBB26
	.long	.LBE26-.LBB26
	.byte	0x1
	.value	0xd6b
	.uleb128 0x1f
	.long	0x383
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF74
	.uleb128 0x11
	.long	.LASF75
	.byte	0x1
	.value	0xd4c
	.byte	0x3
	.long	0x536
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd4c
	.long	0xb8
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xd4e
	.long	0x343
	.byte	0
	.uleb128 0x20
	.long	.LASF78
	.byte	0x1
	.value	0xdd7
	.long	.LFB158
	.long	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e5
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xdd7
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x3dc
	.long	.LBB36
	.long	.LBE36-.LBB36
	.byte	0x1
	.value	0xdda
	.uleb128 0x1b
	.long	0x3f5
	.long	.LLST2
	.uleb128 0x1b
	.long	0x3e9
	.long	.LLST3
	.uleb128 0x1a
	.long	0x510
	.long	.LBB37
	.long	.LBE37-.LBB37
	.byte	0x1
	.value	0xd5c
	.uleb128 0x1b
	.long	0x51d
	.long	.LLST4
	.uleb128 0x1c
	.long	.LBB38
	.long	.LBE38-.LBB38
	.uleb128 0x1d
	.long	0x529
	.uleb128 0x1e
	.long	0x452
	.long	.LBB39
	.long	.LBE39-.LBB39
	.byte	0x1
	.value	0xd4e
	.long	0x5c2
	.uleb128 0x1b
	.long	0x463
	.long	.LLST5
	.byte	0
	.uleb128 0x1a
	.long	0x3b6
	.long	.LBB41
	.long	.LBE41-.LBB41
	.byte	0x1
	.value	0xd4f
	.uleb128 0x1b
	.long	0x3cf
	.long	.LLST6
	.uleb128 0x1f
	.long	0x3c3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF77
	.byte	0x1
	.value	0xd47
	.byte	0x3
	.long	0x60b
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd47
	.long	0xb8
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xd49
	.long	0x343
	.byte	0
	.uleb128 0x20
	.long	.LASF79
	.byte	0x1
	.value	0xddc
	.long	.LFB159
	.long	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ba
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xddc
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x3dc
	.long	.LBB51
	.long	.LBE51-.LBB51
	.byte	0x1
	.value	0xddf
	.uleb128 0x1b
	.long	0x3f5
	.long	.LLST7
	.uleb128 0x1b
	.long	0x3e9
	.long	.LLST8
	.uleb128 0x1a
	.long	0x5e5
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x1
	.value	0xd60
	.uleb128 0x1b
	.long	0x5f2
	.long	.LLST9
	.uleb128 0x1c
	.long	.LBB53
	.long	.LBE53-.LBB53
	.uleb128 0x1d
	.long	0x5fe
	.uleb128 0x1e
	.long	0x452
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.value	0xd49
	.long	0x697
	.uleb128 0x1b
	.long	0x463
	.long	.LLST10
	.byte	0
	.uleb128 0x1a
	.long	0x390
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x1
	.value	0xd4a
	.uleb128 0x1b
	.long	0x3a9
	.long	.LLST11
	.uleb128 0x1f
	.long	0x39d
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF80
	.byte	0x1
	.value	0xde1
	.long	.LFB160
	.long	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x703
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xde3
	.long	0xb8
	.long	.LLST12
	.uleb128 0x22
	.long	.LVL18
	.long	0x60b
	.uleb128 0x22
	.long	.LVL19
	.long	0x60b
	.uleb128 0x22
	.long	.LVL20
	.long	0x60b
	.uleb128 0x22
	.long	.LVL21
	.long	0x60b
	.byte	0
	.uleb128 0x20
	.long	.LASF81
	.byte	0x1
	.value	0xde9
	.long	.LFB161
	.long	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x74c
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xdeb
	.long	0xb8
	.long	.LLST13
	.uleb128 0x22
	.long	.LVL23
	.long	0x536
	.uleb128 0x22
	.long	.LVL24
	.long	0x536
	.uleb128 0x22
	.long	.LVL25
	.long	0x536
	.uleb128 0x22
	.long	.LVL26
	.long	0x536
	.byte	0
	.uleb128 0x11
	.long	.LASF82
	.byte	0x1
	.value	0xd51
	.byte	0x3
	.long	0x77e
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd51
	.long	0xb8
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xd53
	.long	0x343
	.uleb128 0x19
	.long	.LASF83
	.byte	0x1
	.value	0xd54
	.long	0xb8
	.byte	0
	.uleb128 0x20
	.long	.LASF84
	.byte	0x1
	.value	0xdf1
	.long	.LFB162
	.long	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x7f0
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xdf1
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1a
	.long	0x74c
	.long	.LBB62
	.long	.LBE62-.LBB62
	.byte	0x1
	.value	0xdf4
	.uleb128 0x1b
	.long	0x759
	.long	.LLST14
	.uleb128 0x1c
	.long	.LBB63
	.long	.LBE63-.LBB63
	.uleb128 0x1d
	.long	0x765
	.uleb128 0x23
	.long	0x771
	.long	.LLST15
	.uleb128 0x1a
	.long	0x452
	.long	.LBB64
	.long	.LBE64-.LBB64
	.byte	0x1
	.value	0xd53
	.uleb128 0x1b
	.long	0x463
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF85
	.byte	0x1
	.value	0xcf9
	.byte	0x3
	.long	0x80a
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xcf9
	.long	0xb8
	.byte	0
	.uleb128 0x20
	.long	.LASF86
	.byte	0x1
	.value	0xdf6
	.long	.LFB163
	.long	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x8c2
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xdf8
	.long	0xb8
	.long	.LLST17
	.uleb128 0x24
	.long	0x7f0
	.long	.LBB72
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xdfb
	.long	0x8b8
	.uleb128 0x1b
	.long	0x7fd
	.long	.LLST18
	.uleb128 0x25
	.long	0x2e1
	.long	.LBB73
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xcfb
	.uleb128 0x1b
	.long	0x32a
	.long	.LLST19
	.uleb128 0x1b
	.long	0x31e
	.long	.LLST19
	.uleb128 0x1b
	.long	0x312
	.long	.LLST19
	.uleb128 0x1b
	.long	0x306
	.long	.LLST22
	.uleb128 0x1b
	.long	0x2fa
	.long	.LLST22
	.uleb128 0x1b
	.long	0x2ee
	.long	.LLST24
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.uleb128 0x1d
	.long	0x336
	.uleb128 0x1a
	.long	0x452
	.long	.LBB75
	.long	.LBE75-.LBB75
	.byte	0x1
	.value	0xcf2
	.uleb128 0x1b
	.long	0x463
	.long	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LVL42
	.long	0x6ba
	.byte	0
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.value	0xdff
	.long	0xb8
	.long	.LFB164
	.long	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x8ec
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xdff
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.value	0xe04
	.long	0xb8
	.long	.LFB165
	.long	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x934
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.value	0xe04
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.value	0xe06
	.long	0xb8
	.long	.LLST26
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xe07
	.long	0xb8
	.long	.LLST27
	.byte	0
	.uleb128 0x16
	.long	.LASF90
	.byte	0x1
	.value	0xd63
	.long	0xb8
	.byte	0x3
	.long	0x95e
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.value	0xd63
	.long	0xb8
	.uleb128 0x14
	.string	"reg"
	.byte	0x1
	.value	0xd65
	.long	0x343
	.byte	0
	.uleb128 0x17
	.long	.LASF91
	.byte	0x1
	.value	0xe13
	.long	0x509
	.long	.LFB166
	.long	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x9f1
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0xe13
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x19
	.long	.LASF73
	.byte	0x1
	.value	0xe17
	.long	0x509
	.uleb128 0x1a
	.long	0x934
	.long	.LBB89
	.long	.LBE89-.LBB89
	.byte	0x1
	.value	0xe17
	.uleb128 0x1b
	.long	0x945
	.long	.LLST28
	.uleb128 0x1c
	.long	.LBB90
	.long	.LBE90-.LBB90
	.uleb128 0x1d
	.long	0x951
	.uleb128 0x1e
	.long	0x452
	.long	.LBB91
	.long	.LBE91-.LBB91
	.byte	0x1
	.value	0xd65
	.long	0x9d8
	.uleb128 0x1b
	.long	0x463
	.long	.LLST29
	.byte	0
	.uleb128 0x1a
	.long	0x349
	.long	.LBB93
	.long	.LBE93-.LBB93
	.byte	0x1
	.value	0xd66
	.uleb128 0x1f
	.long	0x35a
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF93
	.byte	0x1
	.value	0xe22
	.long	.LFB167
	.long	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0xaa5
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xe24
	.long	0xb8
	.long	.LLST30
	.uleb128 0x25
	.long	0x402
	.long	.LBB101
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0xe27
	.uleb128 0x1b
	.long	0x41b
	.long	.LLST31
	.uleb128 0x1b
	.long	0x40f
	.long	.LLST32
	.uleb128 0x25
	.long	0x2e1
	.long	.LBB102
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.value	0xd05
	.uleb128 0x1b
	.long	0x2fa
	.long	.LLST33
	.uleb128 0x1b
	.long	0x306
	.long	.LLST33
	.uleb128 0x1b
	.long	0x312
	.long	.LLST31
	.uleb128 0x1b
	.long	0x31e
	.long	.LLST33
	.uleb128 0x1b
	.long	0x32a
	.long	.LLST33
	.uleb128 0x1b
	.long	0x2ee
	.long	.LLST38
	.uleb128 0x26
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x1d
	.long	0x336
	.uleb128 0x1a
	.long	0x452
	.long	.LBB104
	.long	.LBE104-.LBB104
	.byte	0x1
	.value	0xcf2
	.uleb128 0x1b
	.long	0x463
	.long	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF94
	.byte	0x1
	.value	0xe2a
	.long	0xb8
	.long	.LFB168
	.long	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.long	0xaed
	.uleb128 0x18
	.long	.LASF53
	.byte	0x1
	.value	0xe2a
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x21
	.string	"i"
	.byte	0x1
	.value	0xe2c
	.long	0xb8
	.long	.LLST40
	.uleb128 0x21
	.string	"ret"
	.byte	0x1
	.value	0xe2d
	.long	0xb8
	.long	.LLST41
	.byte	0
	.uleb128 0x17
	.long	.LASF95
	.byte	0x1
	.value	0xe38
	.long	0xb8
	.long	.LFB169
	.long	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0xb17
	.uleb128 0x18
	.long	.LASF92
	.byte	0x1
	.value	0xe38
	.long	0xb8
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x7
	.long	0x1ee
	.long	0xb27
	.uleb128 0x8
	.long	0xc3
	.byte	0x3
	.byte	0
	.uleb128 0x28
	.long	.LASF96
	.byte	0x1
	.value	0xdc5
	.long	0xb39
	.uleb128 0x5
	.byte	0x3
	.long	m_board_led_list
	.uleb128 0x6
	.long	0xb17
	.uleb128 0x28
	.long	.LASF97
	.byte	0x1
	.value	0xdc6
	.long	0xb50
	.uleb128 0x5
	.byte	0x3
	.long	m_board_btn_list
	.uleb128 0x6
	.long	0xb17
	.uleb128 0x29
	.long	.LASF101
	.byte	0x1
	.value	0x408
	.long	0xe4
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x18
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL1
	.long	.LVL4
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL3
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1211
	.sleb128 0
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL10
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x51
	.long	.LVL7
	.long	.LVL10
	.value	0xf
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x3
	.long	m_board_led_list
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL10
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL8
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1421
	.sleb128 0
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL12
	.long	.LVL16
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x51
	.long	.LVL13
	.long	.LVL16
	.value	0xf
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x3
	.long	m_board_led_list
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL16
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST10:
	.long	.LVL12
	.long	.LVL14
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1634
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL16
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST12:
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
	.long	.LVL21
	.long	.LFE160
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL24
	.long	.LVL25
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL25
	.long	.LVL26
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	.LVL26
	.long	.LFE161
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL28
	.long	.LVL32
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST15:
	.long	.LVL31
	.long	.LVL33
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST16:
	.long	.LVL28
	.long	.LVL30
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1971
	.sleb128 0
	.long	0
	.long	0
.LLST17:
	.long	.LVL34
	.long	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL39
	.value	0x1
	.byte	0x52
	.long	.LVL39
	.long	.LVL41
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.long	.LVL41
	.long	.LVL42-1
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST18:
	.long	.LVL36
	.long	.LVL37
	.value	0x1
	.byte	0x50
	.long	.LVL37
	.long	.LVL39
	.value	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	m_board_led_list
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL39
	.long	.LVL41
	.value	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	m_board_led_list-1
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL36
	.long	.LVL41
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL36
	.long	.LVL41
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LVL36
	.long	.LVL40
	.value	0x1
	.byte	0x50
	.long	.LVL40
	.long	.LVL41
	.value	0x4
	.byte	0x70
	.sleb128 -448
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL36
	.long	.LVL38
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2184
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL44
	.long	.LVL48
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL48
	.long	.LFE165
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST27:
	.long	.LVL44
	.long	.LVL45
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL45
	.long	.LVL46
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL46
	.long	.LVL47
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL47
	.long	.LVL48
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL50
	.long	.LVL53
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST29:
	.long	.LVL50
	.long	.LVL52
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2467
	.sleb128 0
	.long	0
	.long	0
.LLST30:
	.long	.LVL54
	.long	.LVL55
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL55
	.long	.LVL59
	.value	0x1
	.byte	0x52
	.long	.LVL59
	.long	.LVL61
	.value	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.long	.LVL61
	.long	.LFE167
	.value	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST31:
	.long	.LVL56
	.long	.LVL61
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL56
	.long	.LVL57
	.value	0x1
	.byte	0x50
	.long	.LVL57
	.long	.LVL59
	.value	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	m_board_btn_list
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	.LVL59
	.long	.LVL61
	.value	0xe
	.byte	0x72
	.sleb128 0
	.byte	0x3
	.long	m_board_btn_list-1
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST33:
	.long	.LVL56
	.long	.LVL61
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST38:
	.long	.LVL56
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	.LVL60
	.long	.LVL61
	.value	0x4
	.byte	0x70
	.sleb128 -448
	.byte	0x9f
	.long	0
	.long	0
.LLST39:
	.long	.LVL56
	.long	.LVL58
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2676
	.sleb128 0
	.long	0
	.long	0
.LLST40:
	.long	.LVL62
	.long	.LVL63
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL63
	.long	.LVL64
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL64
	.long	.LVL65
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL65
	.long	.LVL66
	.value	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LVL62
	.long	.LVL66
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL66
	.long	.LFE168
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB157
	.long	.LFE157-.LFB157
	.long	.LFB158
	.long	.LFE158-.LFB158
	.long	.LFB159
	.long	.LFE159-.LFB159
	.long	.LFB160
	.long	.LFE160-.LFB160
	.long	.LFB161
	.long	.LFE161-.LFB161
	.long	.LFB162
	.long	.LFE162-.LFB162
	.long	.LFB163
	.long	.LFE163-.LFB163
	.long	.LFB164
	.long	.LFE164-.LFB164
	.long	.LFB165
	.long	.LFE165-.LFB165
	.long	.LFB166
	.long	.LFE166-.LFB166
	.long	.LFB167
	.long	.LFE167-.LFB167
	.long	.LFB168
	.long	.LFE168-.LFB168
	.long	.LFB169
	.long	.LFE169-.LFB169
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB72
	.long	.LBE72
	.long	.LBB81
	.long	.LBE81
	.long	.LBB82
	.long	.LBE82
	.long	0
	.long	0
	.long	.LBB101
	.long	.LBE101
	.long	.LBB110
	.long	.LBE110
	.long	.LBB111
	.long	.LBE111
	.long	0
	.long	0
	.long	.LFB157
	.long	.LFE157
	.long	.LFB158
	.long	.LFE158
	.long	.LFB159
	.long	.LFE159
	.long	.LFB160
	.long	.LFE160
	.long	.LFB161
	.long	.LFE161
	.long	.LFB162
	.long	.LFE162
	.long	.LFB163
	.long	.LFE163
	.long	.LFB164
	.long	.LFE164
	.long	.LFB165
	.long	.LFE165
	.long	.LFB166
	.long	.LFE166
	.long	.LFB167
	.long	.LFE167
	.long	.LFB168
	.long	.LFE168
	.long	.LFB169
	.long	.LFE169
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF62:
	.string	"nrf_gpio_port_out_set"
.LASF79:
	.string	"bsp_board_led_off"
.LASF19:
	.string	"OUTSET"
.LASF68:
	.string	"nrf_gpio_cfg_input"
.LASF64:
	.string	"nrf_gpio_port_out_clear"
.LASF71:
	.string	"nrf_gpio_pin_port_decode"
.LASF39:
	.string	"nrf_gpio_pin_pull_t"
.LASF92:
	.string	"button_idx"
.LASF48:
	.string	"nrf_gpio_pin_drive_t"
.LASF31:
	.string	"NRF_GPIO_PIN_DIR_OUTPUT"
.LASF61:
	.string	"nrf_gpio_cfg"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"input"
.LASF17:
	.string	"sizetype"
.LASF82:
	.string	"nrf_gpio_pin_toggle"
.LASF58:
	.string	"p_reg"
.LASF76:
	.string	"led_idx"
.LASF51:
	.string	"NRF_GPIO_PIN_SENSE_HIGH"
.LASF28:
	.string	"long double"
.LASF8:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF70:
	.string	"nrf_gpio_pin_out_read"
.LASF67:
	.string	"value"
.LASF13:
	.string	"uint8_t"
.LASF90:
	.string	"nrf_gpio_pin_read"
.LASF66:
	.string	"nrf_gpio_pin_write"
.LASF78:
	.string	"bsp_board_led_on"
.LASF69:
	.string	"pull_config"
.LASF91:
	.string	"bsp_board_button_state_get"
.LASF89:
	.string	"bsp_board_pin_to_led_idx"
.LASF95:
	.string	"bsp_board_button_idx_to_pin"
.LASF52:
	.string	"nrf_gpio_pin_sense_t"
.LASF20:
	.string	"OUTCLR"
.LASF98:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF86:
	.string	"bsp_board_leds_init"
.LASF34:
	.string	"NRF_GPIO_PIN_INPUT_DISCONNECT"
.LASF85:
	.string	"nrf_gpio_cfg_output"
.LASF10:
	.string	"long long int"
.LASF7:
	.string	"long int"
.LASF96:
	.string	"m_board_led_list"
.LASF49:
	.string	"NRF_GPIO_PIN_NOSENSE"
.LASF3:
	.string	"__uint8_t"
.LASF87:
	.string	"bsp_board_led_state_get"
.LASF46:
	.string	"NRF_GPIO_PIN_S0D1"
.LASF40:
	.string	"NRF_GPIO_PIN_S0S1"
.LASF57:
	.string	"sense"
.LASF53:
	.string	"pin_number"
.LASF72:
	.string	"p_pin"
.LASF81:
	.string	"bsp_board_leds_on"
.LASF42:
	.string	"NRF_GPIO_PIN_S0H1"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"drive"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"long long unsigned int"
.LASF44:
	.string	"NRF_GPIO_PIN_D0S1"
.LASF16:
	.string	"uint32_t"
.LASF97:
	.string	"m_board_btn_list"
.LASF12:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF22:
	.string	"DIRCLR"
.LASF47:
	.string	"NRF_GPIO_PIN_H0D1"
.LASF41:
	.string	"NRF_GPIO_PIN_H0S1"
.LASF24:
	.string	"DETECTMODE"
.LASF37:
	.string	"NRF_GPIO_PIN_PULLDOWN"
.LASF45:
	.string	"NRF_GPIO_PIN_D0H1"
.LASF75:
	.string	"nrf_gpio_pin_clear"
.LASF43:
	.string	"NRF_GPIO_PIN_H0H1"
.LASF29:
	.string	"char"
.LASF15:
	.string	"int32_t"
.LASF99:
	.string	"src/boards.c"
.LASF63:
	.string	"set_mask"
.LASF5:
	.string	"short unsigned int"
.LASF36:
	.string	"NRF_GPIO_PIN_NOPULL"
.LASF74:
	.string	"_Bool"
.LASF83:
	.string	"pins_state"
.LASF38:
	.string	"NRF_GPIO_PIN_PULLUP"
.LASF50:
	.string	"NRF_GPIO_PIN_SENSE_LOW"
.LASF94:
	.string	"bsp_board_pin_to_button_idx"
.LASF18:
	.string	"RESERVED0"
.LASF25:
	.string	"RESERVED1"
.LASF26:
	.string	"PIN_CNF"
.LASF9:
	.string	"long unsigned int"
.LASF35:
	.string	"nrf_gpio_pin_input_t"
.LASF101:
	.string	"ITM_RxBuffer"
.LASF33:
	.string	"NRF_GPIO_PIN_INPUT_CONNECT"
.LASF60:
	.string	"nrf_gpio_port_out_read"
.LASF6:
	.string	"__int32_t"
.LASF59:
	.string	"nrf_gpio_port_in_read"
.LASF21:
	.string	"DIRSET"
.LASF73:
	.string	"pin_set"
.LASF100:
	.string	"/home/stone/Documents/pca"
.LASF27:
	.string	"NRF_GPIO_Type"
.LASF93:
	.string	"bsp_board_buttons_init"
.LASF84:
	.string	"bsp_board_led_invert"
.LASF32:
	.string	"nrf_gpio_pin_dir_t"
.LASF88:
	.string	"bsp_board_led_idx_to_pin"
.LASF55:
	.string	"pull"
.LASF77:
	.string	"nrf_gpio_pin_set"
.LASF30:
	.string	"NRF_GPIO_PIN_DIR_INPUT"
.LASF80:
	.string	"bsp_board_leds_off"
.LASF65:
	.string	"clr_mask"
.LASF23:
	.string	"LATCH"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
