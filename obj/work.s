	.file	"work.c"
	.text
.Ltext0:
	.section	.text.unlikely.k_work_submit_to_queue,"ax",@progbits
.LCOLDB0:
	.section	.text.k_work_submit_to_queue,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.k_work_submit_to_queue
.Ltext_cold0:
	.section	.text.k_work_submit_to_queue
	.type	k_work_submit_to_queue, @function
k_work_submit_to_queue:
.LFB60:
	.file 1 "src/work.c"
	.loc 1 2867 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	.cfi_offset 6, -12
	movl	%eax, %esi
	.loc 1 2868 0
	leal	8(%edx), %eax
.LVL1:
	.loc 1 2867 0
	pushl	%ebx
	.cfi_offset 3, -16
.LBB4:
.LBB5:
	.loc 1 864 0
	pushl	%ecx
	pushl	%ecx
	pushl	$1
.LBE5:
.LBE4:
	.loc 1 2867 0
	movl	%edx, %ebx
.LBB7:
.LBB6:
	.loc 1 864 0
	pushl	%eax
	call	atomic_or
.LVL2:
.LBE6:
.LBE7:
	.loc 1 2868 0
	addl	$16, %esp
	testb	$1, %al
	jne	.L1
	.loc 1 2869 0
	pushl	%eax
	pushl	%eax
	pushl	%ebx
	pushl	%esi
	call	k_queue_append
.LVL3:
	addl	$16, %esp
.L1:
	.loc 1 2871 0
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL4:
	popl	%esi
	.cfi_restore 6
.LVL5:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE60:
	.size	k_work_submit_to_queue, .-k_work_submit_to_queue
	.section	.text.unlikely.k_work_submit_to_queue
.LCOLDE0:
	.section	.text.k_work_submit_to_queue
.LHOTE0:
	.section	.text.unlikely.work_timeout,"ax",@progbits
.LCOLDB1:
	.section	.text.work_timeout,"ax",@progbits
.LHOTB1:
	.type	work_timeout, @function
work_timeout:
.LFB65:
	.loc 1 2909 0
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
	.loc 1 2909 0
	movl	12(%ebp), %ebx
.LVL7:
	.loc 1 2911 0
	leal	16(%ebx), %eax
	pushl	%eax
	call	k_timer_stop
.LVL8:
	.loc 1 2912 0
	movl	12(%ebx), %eax
	movl	%ebx, %edx
	call	k_work_submit_to_queue
.LVL9:
	.loc 1 2913 0
	movl	$0, 12(%ebx)
	.loc 1 2916 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
.LVL10:
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE65:
	.size	work_timeout, .-work_timeout
	.section	.text.unlikely.work_timeout
.LCOLDE1:
	.section	.text.work_timeout
.LHOTE1:
	.section	.text.unlikely.work_queue_thread,"ax",@progbits
.LCOLDB2:
	.section	.text.work_queue_thread,"ax",@progbits
.LHOTB2:
	.type	work_queue_thread, @function
work_queue_thread:
.LFB61:
	.loc 1 2873 0
	.cfi_startproc
.LVL11:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	.cfi_offset 3, -12
	pushl	%ebx
.L9:
	.loc 1 2877 0
	pushl	%eax
	pushl	%eax
	pushl	$-1
	pushl	$g_work_queue_main
	call	k_queue_get
.LVL12:
.LBB10:
.LBB11:
	.loc 1 857 0
	popl	%edx
	popl	%ecx
.LBE11:
.LBE10:
	.loc 1 2877 0
	movl	%eax, %ebx
.LVL13:
	.loc 1 2878 0
	addl	$8, %eax
.LVL14:
.LBB13:
.LBB12:
	.loc 1 857 0
	pushl	$-2
	pushl	%eax
	call	atomic_and
.LVL15:
.LBE12:
.LBE13:
	.loc 1 2878 0
	addl	$16, %esp
	testb	$1, %al
	je	.L8
	.loc 1 2879 0
	subl	$12, %esp
	pushl	%ebx
	call	*4(%ebx)
.LVL16:
	addl	$16, %esp
.L8:
	.loc 1 2881 0
	call	k_yield
.LVL17:
	.loc 1 2882 0
	jmp	.L9
	.cfi_endproc
.LFE61:
	.size	work_queue_thread, .-work_queue_thread
	.section	.text.unlikely.work_queue_thread
.LCOLDE2:
	.section	.text.work_queue_thread
.LHOTE2:
	.section	.text.unlikely.k_work_q_start,"ax",@progbits
.LCOLDB3:
	.section	.text.k_work_q_start,"ax",@progbits
.LHOTB3:
	.globl	k_work_q_start
	.type	k_work_q_start, @function
k_work_q_start:
.LFB62:
	.loc 1 2885 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$20, %esp
	.loc 1 2886 0
	pushl	$g_work_queue_main
	call	k_queue_init
.LVL18:
	.loc 1 2887 0
	popl	%eax
	popl	%edx
	pushl	$0
	pushl	$0
	pushl	$41
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$work_queue_thread
	pushl	$2048
	pushl	$work_q_stack
	pushl	$work_q_thread
	call	k_thread_create
.LVL19:
	.loc 1 2896 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE62:
	.size	k_work_q_start, .-k_work_q_start
	.section	.text.unlikely.k_work_q_start
.LCOLDE3:
	.section	.text.k_work_q_start
.LHOTE3:
	.section	.text.unlikely.k_work_init,"ax",@progbits
.LCOLDB4:
	.section	.text.k_work_init,"ax",@progbits
.LHOTB4:
	.globl	k_work_init
	.type	k_work_init, @function
k_work_init:
.LFB63:
	.loc 1 2898 0
	.cfi_startproc
.LVL20:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 2898 0
	movl	8(%ebp), %ebx
.LVL21:
.LBB16:
.LBB17:
	.loc 1 870 0
	pushl	$-2
.LBE17:
.LBE16:
	.loc 1 2900 0
	leal	8(%ebx), %eax
.LVL22:
.LBB19:
.LBB18:
	.loc 1 870 0
	pushl	%eax
	call	atomic_and
.LVL23:
.LBE18:
.LBE19:
	.loc 1 2901 0
	movl	12(%ebp), %eax
	movl	%eax, 4(%ebx)
	.loc 1 2903 0
	xorl	%eax, %eax
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE63:
	.size	k_work_init, .-k_work_init
	.section	.text.unlikely.k_work_init
.LCOLDE4:
	.section	.text.k_work_init
.LHOTE4:
	.section	.text.unlikely.k_work_submit,"ax",@progbits
.LCOLDB5:
	.section	.text.k_work_submit,"ax",@progbits
.LHOTB5:
	.globl	k_work_submit
	.type	k_work_submit, @function
k_work_submit:
.LFB64:
	.loc 1 2905 0
	.cfi_startproc
.LVL24:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 2906 0
	movl	$g_work_queue_main, %eax
	.loc 1 2905 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 2906 0
	movl	8(%ebp), %edx
	.loc 1 2907 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 2906 0
	jmp	k_work_submit_to_queue
.LVL25:
	.cfi_endproc
.LFE64:
	.size	k_work_submit, .-k_work_submit
	.section	.text.unlikely.k_work_submit
.LCOLDE5:
	.section	.text.k_work_submit
.LHOTE5:
	.section	.text.unlikely.k_delayed_work_init,"ax",@progbits
.LCOLDB6:
	.section	.text.k_delayed_work_init,"ax",@progbits
.LHOTB6:
	.globl	k_delayed_work_init
	.type	k_delayed_work_init, @function
k_delayed_work_init:
.LFB66:
	.loc 1 2918 0
	.cfi_startproc
.LVL26:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$12, %esp
	.cfi_offset 3, -12
	.loc 1 2918 0
	movl	8(%ebp), %ebx
	.loc 1 2920 0
	pushl	12(%ebp)
	pushl	%ebx
	call	k_work_init
.LVL27:
	.loc 1 2921 0
	leal	16(%ebx), %eax
	addl	$12, %esp
	pushl	%ebx
	pushl	$work_timeout
	pushl	%eax
	call	k_timer_init
.LVL28:
	.loc 1 2922 0
	movl	$0, 12(%ebx)
	.loc 1 2925 0
	addl	$16, %esp
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE66:
	.size	k_delayed_work_init, .-k_delayed_work_init
	.section	.text.unlikely.k_delayed_work_init
.LCOLDE6:
	.section	.text.k_delayed_work_init
.LHOTE6:
	.section	.text.unlikely.k_delayed_work_cancel,"ax",@progbits
.LCOLDB7:
	.section	.text.k_delayed_work_cancel,"ax",@progbits
.LHOTB7:
	.globl	k_delayed_work_cancel
	.type	k_delayed_work_cancel, @function
k_delayed_work_cancel:
.LFB69:
	.loc 1 2961 0
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
	.loc 1 2965 0
	movl	$-68, %esi
	.loc 1 2961 0
	subl	$12, %esp
	.loc 1 2961 0
	movl	8(%ebp), %ebx
	.loc 1 2963 0
	call	irq_lock
.LVL30:
	movl	%eax, %edi
.LVL31:
.LBB22:
.LBB23:
	.loc 1 850 0
	subl	$12, %esp
.LBE23:
.LBE22:
	.loc 1 2964 0
	leal	8(%ebx), %eax
.LVL32:
.LBB25:
.LBB24:
	.loc 1 850 0
	pushl	%eax
	call	atomic_get
.LVL33:
.LBE24:
.LBE25:
	.loc 1 2964 0
	addl	$16, %esp
	testb	$1, %al
	jne	.L23
	.loc 1 2968 0
	cmpl	$0, 12(%ebx)
	.loc 1 2969 0
	movl	$-22, %esi
	.loc 1 2968 0
	je	.L23
	.loc 1 2972 0
	leal	16(%ebx), %eax
	subl	$12, %esp
	.loc 1 2962 0
	xorl	%esi, %esi
	.loc 1 2972 0
	pushl	%eax
	call	k_timer_stop
.LVL34:
	.loc 1 2973 0
	movl	$0, 12(%ebx)
	addl	$16, %esp
.L23:
.LVL35:
	.loc 1 2977 0
	subl	$12, %esp
	pushl	%edi
	call	irq_unlock
.LVL36:
	.loc 1 2979 0
	leal	-12(%ebp), %esp
	movl	%esi, %eax
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL37:
	popl	%edi
	.cfi_restore 7
.LVL38:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE69:
	.size	k_delayed_work_cancel, .-k_delayed_work_cancel
	.section	.text.unlikely.k_delayed_work_cancel
.LCOLDE7:
	.section	.text.k_delayed_work_cancel
.LHOTE7:
	.section	.text.unlikely.k_delayed_work_submit,"ax",@progbits
.LCOLDB8:
	.section	.text.k_delayed_work_submit,"ax",@progbits
.LHOTB8:
	.globl	k_delayed_work_submit
	.type	k_delayed_work_submit, @function
k_delayed_work_submit:
.LFB68:
	.loc 1 2957 0
	.cfi_startproc
.LVL39:
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
	.loc 1 2957 0
	movl	8(%ebp), %ebx
.LVL40:
	movl	12(%ebp), %edi
.LVL41:
.LBB28:
.LBB29:
	.loc 1 2930 0
	call	irq_lock
.LVL42:
	movl	%eax, %esi
.LVL43:
	.loc 1 2932 0
	movl	12(%ebx), %edx
	testl	%edx, %edx
	jne	.L28
.LVL44:
.L32:
	.loc 1 2943 0
	testl	%edi, %edi
	.loc 1 2942 0
	movl	$g_work_queue_main, 12(%ebx)
	.loc 1 2943 0
	jne	.L34
	.loc 1 2944 0
	movl	%ebx, %edx
	movl	$g_work_queue_main, %eax
	call	k_work_submit_to_queue
.LVL45:
	.loc 1 2945 0
	movl	$0, 12(%ebx)
	jmp	.L36
.LVL46:
.L28:
	.loc 1 2932 0
	cmpl	$g_work_queue_main, %edx
	.loc 1 2933 0
	movl	$-48, %eax
.LVL47:
	.loc 1 2932 0
	jne	.L31
	.loc 1 2937 0
	subl	$12, %esp
	pushl	%ebx
	call	k_delayed_work_cancel
.LVL48:
	.loc 1 2938 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L32
	jmp	.L31
.LVL49:
.L34:
	.loc 1 2949 0
	addl	$16, %ebx
.LVL50:
	pushl	%eax
	pushl	%eax
	pushl	%edi
	pushl	%ebx
	call	k_timer_start
.LVL51:
	addl	$16, %esp
.L36:
	.loc 1 2951 0
	xorl	%eax, %eax
.L31:
	.loc 1 2953 0
	subl	$12, %esp
	movl	%eax, -28(%ebp)
.LVL52:
	pushl	%esi
	call	irq_unlock
.LVL53:
.LBE29:
.LBE28:
	.loc 1 2959 0
	movl	-28(%ebp), %eax
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL54:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE68:
	.size	k_delayed_work_submit, .-k_delayed_work_submit
	.section	.text.unlikely.k_delayed_work_submit
.LCOLDE8:
	.section	.text.k_delayed_work_submit
.LHOTE8:
	.section	.text.unlikely.k_delayed_work_remaining_get,"ax",@progbits
.LCOLDB9:
	.section	.text.k_delayed_work_remaining_get,"ax",@progbits
.LHOTB9:
	.globl	k_delayed_work_remaining_get
	.type	k_delayed_work_remaining_get, @function
k_delayed_work_remaining_get:
.LFB70:
	.loc 1 2981 0
	.cfi_startproc
.LVL55:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	xorl	%eax, %eax
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	.loc 1 2981 0
	movl	8(%ebp), %edx
	.loc 1 2984 0
	testl	%edx, %edx
	je	.L38
.LVL56:
	.loc 1 2990 0
	movl	28(%edx), %esi
	movl	32(%edx), %ebx
	call	aos_now_ms
.LVL57:
	leal	(%esi,%ebx), %edx
	subl	%eax, %edx
.LVL58:
	movl	%edx, %eax
	movl	$0, %edx
.LVL59:
	cmovs	%edx, %eax
.LVL60:
.L38:
	.loc 1 2995 0
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE70:
	.size	k_delayed_work_remaining_get, .-k_delayed_work_remaining_get
	.section	.text.unlikely.k_delayed_work_remaining_get
.LCOLDE9:
	.section	.text.k_delayed_work_remaining_get
.LHOTE9:
	.section	.bss.g_work_queue_main,"aw",@nobits
	.align 4
	.type	g_work_queue_main, @object
	.size	g_work_queue_main, 12
g_work_queue_main:
	.zero	12
	.section	.bss.work_q_stack,"aw",@nobits
	.align 32
	.type	work_q_stack, @object
	.size	work_q_stack, 2048
work_q_stack:
	.zero	2048
	.section	.bss.work_q_thread,"aw",@nobits
	.align 4
	.type	work_q_thread, @object
	.size	work_q_thread, 4
work_q_thread:
	.zero	4
	.text
.Letext0:
	.section	.text.unlikely.k_work_submit_to_queue
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xaa0
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF104
	.byte	0xc
	.long	.LASF105
	.long	.LASF106
	.long	.Ldebug_ranges0+0x60
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x1
	.byte	0x5
	.long	0x4c
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF4
	.uleb128 0x3
	.long	.LASF6
	.byte	0x1
	.byte	0x6
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x1
	.byte	0x17
	.long	0x41
	.uleb128 0x3
	.long	.LASF12
	.byte	0x1
	.byte	0x18
	.long	0x53
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.long	.LASF14
	.byte	0x1
	.byte	0x38
	.long	0x73
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0xd7
	.long	0xc8
	.uleb128 0x6
	.long	.LASF15
	.byte	0x1
	.byte	0xd8
	.long	0xe1
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0xd9
	.long	0xe1
	.byte	0
	.uleb128 0x7
	.long	.LASF30
	.byte	0x8
	.byte	0x1
	.byte	0xd6
	.long	0xe1
	.uleb128 0x8
	.long	0xa9
	.byte	0
	.uleb128 0x8
	.long	0xe7
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0xc8
	.uleb128 0x5
	.byte	0x4
	.byte	0x1
	.byte	0xdb
	.long	0x106
	.uleb128 0x6
	.long	.LASF17
	.byte	0x1
	.byte	0xdc
	.long	0xe1
	.uleb128 0x6
	.long	.LASF18
	.byte	0x1
	.byte	0xdd
	.long	0xe1
	.byte	0
	.uleb128 0x3
	.long	.LASF19
	.byte	0x1
	.byte	0xe0
	.long	0xc8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF20
	.uleb128 0xa
	.byte	0x4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0xb
	.byte	0x4
	.byte	0x1
	.value	0x1cf
	.long	0x138
	.uleb128 0xc
	.string	"hdl"
	.byte	0x1
	.value	0x1d0
	.long	0x118
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF22
	.byte	0x1
	.value	0x1d1
	.long	0x121
	.uleb128 0xd
	.long	.LASF23
	.byte	0x1
	.value	0x1d2
	.long	0x138
	.uleb128 0xd
	.long	.LASF24
	.byte	0x1
	.value	0x1d5
	.long	0x138
	.uleb128 0xd
	.long	.LASF25
	.byte	0x1
	.value	0x1d6
	.long	0x138
	.uleb128 0xd
	.long	.LASF26
	.byte	0x1
	.value	0x2eb
	.long	0x8c
	.uleb128 0xd
	.long	.LASF27
	.byte	0x1
	.value	0x2f2
	.long	0x150
	.uleb128 0xd
	.long	.LASF28
	.byte	0x1
	.value	0x2f4
	.long	0x144
	.uleb128 0xd
	.long	.LASF29
	.byte	0x1
	.value	0x2f5
	.long	0x168
	.uleb128 0xe
	.long	.LASF31
	.byte	0xc
	.byte	0x1
	.value	0x301
	.long	0x1c0
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.value	0x302
	.long	0x1c0
	.byte	0
	.uleb128 0xf
	.long	.LASF33
	.byte	0x1
	.value	0x303
	.long	0x106
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x174
	.uleb128 0xe
	.long	.LASF34
	.byte	0xc
	.byte	0x1
	.value	0x310
	.long	0x1e1
	.uleb128 0xf
	.long	.LASF32
	.byte	0x1
	.value	0x311
	.long	0x198
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF35
	.byte	0x1
	.value	0x320
	.long	0x1ed
	.uleb128 0x9
	.byte	0x4
	.long	0x1f3
	.uleb128 0x10
	.long	0x203
	.uleb128 0x11
	.long	0x118
	.uleb128 0x11
	.long	0x118
	.byte	0
	.uleb128 0xe
	.long	.LASF36
	.byte	0x14
	.byte	0x1
	.value	0x321
	.long	0x252
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.value	0x322
	.long	0x15c
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.value	0x323
	.long	0x1e1
	.byte	0x4
	.uleb128 0xf
	.long	.LASF39
	.byte	0x1
	.value	0x324
	.long	0x118
	.byte	0x8
	.uleb128 0xf
	.long	.LASF40
	.byte	0x1
	.value	0x325
	.long	0x8c
	.byte	0xc
	.uleb128 0xf
	.long	.LASF41
	.byte	0x1
	.value	0x326
	.long	0x8c
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	.LASF42
	.byte	0x1
	.value	0x327
	.long	0x203
	.uleb128 0xe
	.long	.LASF43
	.byte	0x4
	.byte	0x1
	.value	0x330
	.long	0x279
	.uleb128 0xf
	.long	.LASF44
	.byte	0x1
	.value	0x331
	.long	0x180
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF45
	.byte	0x1
	.value	0x341
	.long	0x73
	.uleb128 0xd
	.long	.LASF46
	.byte	0x1
	.value	0x342
	.long	0x279
	.uleb128 0xe
	.long	.LASF47
	.byte	0xc
	.byte	0x1
	.value	0x36d
	.long	0x2ac
	.uleb128 0xf
	.long	.LASF48
	.byte	0x1
	.value	0x36e
	.long	0x1c6
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0x371
	.long	0x2c0
	.uleb128 0x13
	.long	.LASF56
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF49
	.byte	0x1
	.value	0x375
	.long	0x2cc
	.uleb128 0x9
	.byte	0x4
	.long	0x2d2
	.uleb128 0x10
	.long	0x2dd
	.uleb128 0x11
	.long	0x2dd
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x2e3
	.uleb128 0xe
	.long	.LASF50
	.byte	0xc
	.byte	0x1
	.value	0x376
	.long	0x318
	.uleb128 0xf
	.long	.LASF51
	.byte	0x1
	.value	0x377
	.long	0x118
	.byte	0
	.uleb128 0xf
	.long	.LASF38
	.byte	0x1
	.value	0x378
	.long	0x2c0
	.byte	0x4
	.uleb128 0xf
	.long	.LASF52
	.byte	0x1
	.value	0x379
	.long	0x318
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.long	0x279
	.long	0x328
	.uleb128 0x15
	.long	0x111
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF53
	.byte	0x24
	.byte	0x1
	.value	0x37d
	.long	0x35d
	.uleb128 0xf
	.long	.LASF54
	.byte	0x1
	.value	0x37e
	.long	0x2e3
	.byte	0
	.uleb128 0xf
	.long	.LASF55
	.byte	0x1
	.value	0x37f
	.long	0x35d
	.byte	0xc
	.uleb128 0xf
	.long	.LASF37
	.byte	0x1
	.value	0x380
	.long	0x252
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x291
	.uleb128 0x16
	.long	.LASF62
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0x386
	.long	0x393
	.uleb128 0x13
	.long	.LASF57
	.byte	0
	.uleb128 0x13
	.long	.LASF58
	.byte	0x1
	.uleb128 0x13
	.long	.LASF59
	.byte	0x2
	.uleb128 0x13
	.long	.LASF60
	.byte	0x3
	.uleb128 0x13
	.long	.LASF61
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.long	.LASF63
	.byte	0x4
	.long	0x7a
	.byte	0x1
	.value	0x38d
	.long	0x3c3
	.uleb128 0x13
	.long	.LASF64
	.byte	0
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.uleb128 0x13
	.long	.LASF66
	.byte	0x2
	.uleb128 0x13
	.long	.LASF67
	.byte	0x3
	.uleb128 0x13
	.long	.LASF68
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF69
	.uleb128 0x17
	.long	.LASF71
	.byte	0x1
	.value	0x350
	.long	0x73
	.byte	0x3
	.long	0x400
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x350
	.long	0x400
	.uleb128 0x19
	.string	"bit"
	.byte	0x1
	.value	0x350
	.long	0x73
	.uleb128 0x1a
	.string	"val"
	.byte	0x1
	.value	0x352
	.long	0x285
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x406
	.uleb128 0x1b
	.long	0x279
	.uleb128 0x17
	.long	.LASF72
	.byte	0x1
	.value	0x355
	.long	0x73
	.byte	0x3
	.long	0x44d
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x355
	.long	0x44d
	.uleb128 0x19
	.string	"bit"
	.byte	0x1
	.value	0x355
	.long	0x73
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.value	0x357
	.long	0x285
	.uleb128 0x1a
	.string	"old"
	.byte	0x1
	.value	0x358
	.long	0x285
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x279
	.uleb128 0x17
	.long	.LASF74
	.byte	0x1
	.value	0x35c
	.long	0x73
	.byte	0x3
	.long	0x495
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x35c
	.long	0x44d
	.uleb128 0x19
	.string	"bit"
	.byte	0x1
	.value	0x35c
	.long	0x73
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.value	0x35e
	.long	0x285
	.uleb128 0x1a
	.string	"old"
	.byte	0x1
	.value	0x35f
	.long	0x285
	.byte	0
	.uleb128 0x1d
	.long	.LASF107
	.byte	0x1
	.value	0x363
	.byte	0x3
	.long	0x4c7
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.value	0x363
	.long	0x44d
	.uleb128 0x19
	.string	"bit"
	.byte	0x1
	.value	0x363
	.long	0x73
	.uleb128 0x1c
	.long	.LASF73
	.byte	0x1
	.value	0x365
	.long	0x285
	.byte	0
	.uleb128 0x17
	.long	.LASF75
	.byte	0x1
	.value	0xb6e
	.long	0x73
	.byte	0x1
	.long	0x51d
	.uleb128 0x18
	.long	.LASF55
	.byte	0x1
	.value	0xb6e
	.long	0x35d
	.uleb128 0x18
	.long	.LASF54
	.byte	0x1
	.value	0xb6f
	.long	0x51d
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.value	0xb70
	.long	0x8c
	.uleb128 0x1a
	.string	"key"
	.byte	0x1
	.value	0xb72
	.long	0x73
	.uleb128 0x1a
	.string	"err"
	.byte	0x1
	.value	0xb73
	.long	0x73
	.uleb128 0x1e
	.long	.LASF108
	.byte	0x1
	.value	0xb88
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x328
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x1
	.value	0xb31
	.long	.LFB60
	.long	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x5a9
	.uleb128 0x20
	.long	.LASF55
	.byte	0x1
	.value	0xb31
	.long	0x35d
	.long	.LLST0
	.uleb128 0x20
	.long	.LASF54
	.byte	0x1
	.value	0xb32
	.long	0x2dd
	.long	.LLST1
	.uleb128 0x21
	.long	0x453
	.long	.LBB4
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.value	0xb34
	.long	0x59f
	.uleb128 0x22
	.long	0x470
	.long	.LLST2
	.uleb128 0x22
	.long	0x464
	.long	.LLST3
	.uleb128 0x23
	.long	.Ldebug_ranges0+0
	.uleb128 0x24
	.long	0x47c
	.long	.LLST4
	.uleb128 0x25
	.long	0x488
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LVL2
	.long	0x9fb
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LVL3
	.long	0xa07
	.byte	0
	.uleb128 0x1f
	.long	.LASF78
	.byte	0x1
	.value	0xb5c
	.long	.LFB65
	.long	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x605
	.uleb128 0x27
	.long	.LASF37
	.byte	0x1
	.value	0xb5c
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF39
	.byte	0x1
	.value	0xb5c
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x28
	.string	"w"
	.byte	0x1
	.value	0xb5e
	.long	0x51d
	.long	.LLST5
	.uleb128 0x26
	.long	.LVL8
	.long	0xa13
	.uleb128 0x29
	.long	.LVL9
	.long	0x523
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	.LASF109
	.byte	0x1
	.value	0xb38
	.long	.LFB61
	.long	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x6ae
	.uleb128 0x2c
	.string	"p1"
	.byte	0x1
	.value	0xb38
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2c
	.string	"p2"
	.byte	0x1
	.value	0xb38
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2c
	.string	"p3"
	.byte	0x1
	.value	0xb38
	.long	0x118
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x2d
	.long	.LASF54
	.byte	0x1
	.value	0xb3a
	.long	0x2dd
	.long	.LLST6
	.uleb128 0x21
	.long	0x40b
	.long	.LBB10
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.value	0xb3e
	.long	0x69b
	.uleb128 0x22
	.long	0x428
	.long	.LLST7
	.uleb128 0x22
	.long	0x41c
	.long	.LLST8
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.long	0x434
	.long	.LLST9
	.uleb128 0x25
	.long	0x440
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LVL15
	.long	0xa1f
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LVL12
	.long	0xa2b
	.uleb128 0x26
	.long	.LVL17
	.long	0xa37
	.byte	0
	.uleb128 0x2e
	.long	.LASF79
	.byte	0x1
	.value	0xb44
	.long	0x73
	.long	.LFB62
	.long	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x6db
	.uleb128 0x26
	.long	.LVL18
	.long	0xa43
	.uleb128 0x26
	.long	.LVL19
	.long	0xa4f
	.byte	0
	.uleb128 0x2e
	.long	.LASF80
	.byte	0x1
	.value	0xb51
	.long	0x73
	.long	.LFB63
	.long	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x74f
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xb51
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF38
	.byte	0x1
	.value	0xb51
	.long	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x2f
	.long	0x495
	.long	.LBB16
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.value	0xb54
	.uleb128 0x22
	.long	0x4ae
	.long	.LLST10
	.uleb128 0x22
	.long	0x4a2
	.long	.LLST11
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x24
	.long	0x4ba
	.long	.LLST12
	.uleb128 0x26
	.long	.LVL23
	.long	0xa1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF81
	.byte	0x1
	.value	0xb58
	.long	.LFB64
	.long	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x78f
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xb58
	.long	0x2dd
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	.LVL25
	.long	0x523
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	g_work_queue_main
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x30
	.long	.LASF82
	.byte	0x1
	.value	0xb65
	.long	.LFB66
	.long	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d6
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xb65
	.long	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF38
	.byte	0x1
	.value	0xb65
	.long	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.long	.LVL27
	.long	0x6db
	.uleb128 0x26
	.long	.LVL28
	.long	0xa5b
	.byte	0
	.uleb128 0x2e
	.long	.LASF83
	.byte	0x1
	.value	0xb90
	.long	0x73
	.long	.LFB69
	.long	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x884
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xb90
	.long	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x28
	.string	"err"
	.byte	0x1
	.value	0xb92
	.long	0x73
	.long	.LLST13
	.uleb128 0x28
	.string	"key"
	.byte	0x1
	.value	0xb93
	.long	0x73
	.long	.LLST14
	.uleb128 0x32
	.long	.LASF110
	.byte	0x1
	.value	0xba0
	.long	.L23
	.uleb128 0x21
	.long	0x3ca
	.long	.LBB22
	.long	.Ldebug_ranges0+0x48
	.byte	0x1
	.value	0xb94
	.long	0x868
	.uleb128 0x22
	.long	0x3e7
	.long	.LLST15
	.uleb128 0x22
	.long	0x3db
	.long	.LLST16
	.uleb128 0x23
	.long	.Ldebug_ranges0+0x48
	.uleb128 0x25
	.long	0x3f3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x26
	.long	.LVL33
	.long	0xa67
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LVL30
	.long	0xa73
	.uleb128 0x26
	.long	.LVL34
	.long	0xa13
	.uleb128 0x26
	.long	.LVL36
	.long	0xa7f
	.byte	0
	.uleb128 0x2e
	.long	.LASF84
	.byte	0x1
	.value	0xb8c
	.long	0x73
	.long	.LFB68
	.long	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x94f
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xb8c
	.long	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.long	.LASF76
	.byte	0x1
	.value	0xb8c
	.long	0x8c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x33
	.long	0x4c7
	.long	.LBB28
	.long	.LBE28-.LBB28
	.byte	0x1
	.value	0xb8e
	.uleb128 0x22
	.long	0x4d8
	.long	.LLST17
	.uleb128 0x22
	.long	0x4f0
	.long	.LLST18
	.uleb128 0x22
	.long	0x4e4
	.long	.LLST19
	.uleb128 0x34
	.long	.LBB29
	.long	.LBE29-.LBB29
	.uleb128 0x24
	.long	0x4fc
	.long	.LLST20
	.uleb128 0x24
	.long	0x508
	.long	.LLST21
	.uleb128 0x35
	.long	0x514
	.long	.L31
	.uleb128 0x26
	.long	.LVL42
	.long	0xa73
	.uleb128 0x36
	.long	.LVL45
	.long	0x523
	.long	0x931
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.long	g_work_queue_main
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.long	.LVL48
	.long	0x7d6
	.uleb128 0x26
	.long	.LVL51
	.long	0xa8b
	.uleb128 0x26
	.long	.LVL53
	.long	0xa7f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.long	.LASF85
	.byte	0x1
	.value	0xba4
	.long	0x9e
	.long	.LFB70
	.long	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x9a2
	.uleb128 0x27
	.long	.LASF54
	.byte	0x1
	.value	0xba4
	.long	0x51d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x1
	.value	0xba6
	.long	0x81
	.long	.LLST22
	.uleb128 0x2d
	.long	.LASF37
	.byte	0x1
	.value	0xba7
	.long	0x9a2
	.long	.LLST23
	.uleb128 0x26
	.long	.LVL57
	.long	0xa97
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.long	0x252
	.uleb128 0x37
	.long	.LASF87
	.byte	0x1
	.value	0xb2e
	.long	0x25e
	.uleb128 0x5
	.byte	0x3
	.long	work_q_thread
	.uleb128 0x14
	.long	0x18c
	.long	0x9cb
	.uleb128 0x38
	.long	0x111
	.value	0x1ff
	.byte	0
	.uleb128 0x37
	.long	.LASF88
	.byte	0x1
	.value	0xb2f
	.long	0x9ba
	.uleb128 0x5
	.byte	0x3
	.long	work_q_stack
	.uleb128 0x37
	.long	.LASF89
	.byte	0x1
	.value	0xb30
	.long	0x291
	.uleb128 0x5
	.byte	0x3
	.long	g_work_queue_main
	.uleb128 0x39
	.long	.LASF111
	.byte	0x1
	.value	0x222
	.long	0x7a
	.uleb128 0x3a
	.long	.LASF90
	.long	.LASF90
	.byte	0x1
	.value	0x34c
	.uleb128 0x3a
	.long	.LASF91
	.long	.LASF91
	.byte	0x1
	.value	0x307
	.uleb128 0x3a
	.long	.LASF92
	.long	.LASF92
	.byte	0x1
	.value	0x32a
	.uleb128 0x3a
	.long	.LASF93
	.long	.LASF93
	.byte	0x1
	.value	0x34e
	.uleb128 0x3a
	.long	.LASF94
	.long	.LASF94
	.byte	0x1
	.value	0x30b
	.uleb128 0x3a
	.long	.LASF95
	.long	.LASF95
	.byte	0x1
	.value	0x33e
	.uleb128 0x3a
	.long	.LASF96
	.long	.LASF96
	.byte	0x1
	.value	0x305
	.uleb128 0x3a
	.long	.LASF97
	.long	.LASF97
	.byte	0x1
	.value	0x33a
	.uleb128 0x3a
	.long	.LASF98
	.long	.LASF98
	.byte	0x1
	.value	0x328
	.uleb128 0x3a
	.long	.LASF99
	.long	.LASF99
	.byte	0x1
	.value	0x349
	.uleb128 0x3a
	.long	.LASF100
	.long	.LASF100
	.byte	0x1
	.value	0x33f
	.uleb128 0x3a
	.long	.LASF101
	.long	.LASF101
	.byte	0x1
	.value	0x340
	.uleb128 0x3a
	.long	.LASF102
	.long	.LASF102
	.byte	0x1
	.value	0x329
	.uleb128 0x3a
	.long	.LASF103
	.long	.LASF103
	.byte	0x1
	.value	0x214
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x87
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xa
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
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
	.uleb128 0x38
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.long	.LVL0
	.long	.LVL1
	.value	0x1
	.byte	0x50
	.long	.LVL1
	.long	.LVL5
	.value	0x1
	.byte	0x56
	.long	.LVL5
	.long	.LFE60
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL2-1
	.value	0x1
	.byte	0x52
	.long	.LVL2-1
	.long	.LVL4
	.value	0x1
	.byte	0x53
	.long	.LVL4
	.long	.LFE60
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL0
	.long	.LVL1
	.value	0x3
	.byte	0x72
	.sleb128 8
	.byte	0x9f
	.long	.LVL1
	.long	.LVL2-1
	.value	0x1
	.byte	0x50
	.long	.LVL2-1
	.long	.LVL2
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL0
	.long	.LVL2
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL7
	.long	.LVL10
	.value	0x1
	.byte	0x53
	.long	.LVL10
	.long	.LFE65
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST6:
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL14
	.long	.LFE61
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST7:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL13
	.long	.LVL14
	.value	0x3
	.byte	0x70
	.sleb128 8
	.byte	0x9f
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL15-1
	.long	.LVL15
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL13
	.long	.LVL15
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL21
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL21
	.long	.LVL22
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23-1
	.value	0x1
	.byte	0x50
	.long	.LVL23-1
	.long	.LVL23
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL21
	.long	.LVL23
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL29
	.long	.LVL35
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL35
	.long	.LVL37
	.value	0x1
	.byte	0x56
	.long	.LVL37
	.long	.LFE69
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL31
	.long	.LVL32
	.value	0x1
	.byte	0x50
	.long	.LVL32
	.long	.LVL38
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST15:
	.long	.LVL31
	.long	.LVL33
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL31
	.long	.LVL32
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	.LVL32
	.long	.LVL33-1
	.value	0x1
	.byte	0x50
	.long	.LVL33-1
	.long	.LVL33
	.value	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL41
	.long	.LVL53
	.value	0x6
	.byte	0x3
	.long	g_work_queue_main
	.byte	0x9f
	.long	0
	.long	0
.LLST18:
	.long	.LVL41
	.long	.LVL53
	.value	0x1
	.byte	0x57
	.long	0
	.long	0
.LLST19:
	.long	.LVL40
	.long	.LVL50
	.value	0x1
	.byte	0x53
	.long	.LVL50
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST20:
	.long	.LVL43
	.long	.LVL44
	.value	0x1
	.byte	0x50
	.long	.LVL44
	.long	.LVL46
	.value	0x1
	.byte	0x56
	.long	.LVL46
	.long	.LVL47
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL54
	.value	0x1
	.byte	0x56
	.long	0
	.long	0
.LLST21:
	.long	.LVL48
	.long	.LVL49
	.value	0x1
	.byte	0x50
	.long	.LVL52
	.long	.LVL53-1
	.value	0x1
	.byte	0x50
	.long	.LVL53-1
	.long	.LVL53
	.value	0x2
	.byte	0x91
	.sleb128 -36
	.long	0
	.long	0
.LLST22:
	.long	.LVL57
	.long	.LVL58
	.value	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.long	.LVL58
	.long	.LVL59
	.value	0x1
	.byte	0x52
	.long	.LVL59
	.long	.LVL60
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST23:
	.long	.LVL56
	.long	.LVL60
	.value	0x6
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB65
	.long	.LFE65-.LFB65
	.long	.LFB61
	.long	.LFE61-.LFB61
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB63
	.long	.LFE63-.LFB63
	.long	.LFB64
	.long	.LFE64-.LFB64
	.long	.LFB66
	.long	.LFE66-.LFB66
	.long	.LFB69
	.long	.LFE69-.LFB69
	.long	.LFB68
	.long	.LFE68-.LFB68
	.long	.LFB70
	.long	.LFE70-.LFB70
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB4
	.long	.LBE4
	.long	.LBB7
	.long	.LBE7
	.long	0
	.long	0
	.long	.LBB10
	.long	.LBE10
	.long	.LBB13
	.long	.LBE13
	.long	0
	.long	0
	.long	.LBB16
	.long	.LBE16
	.long	.LBB19
	.long	.LBE19
	.long	0
	.long	0
	.long	.LBB22
	.long	.LBE22
	.long	.LBB25
	.long	.LBE25
	.long	0
	.long	0
	.long	.LFB60
	.long	.LFE60
	.long	.LFB65
	.long	.LFE65
	.long	.LFB61
	.long	.LFE61
	.long	.LFB62
	.long	.LFE62
	.long	.LFB63
	.long	.LFE63
	.long	.LFB64
	.long	.LFE64
	.long	.LFB66
	.long	.LFE66
	.long	.LFB69
	.long	.LFE69
	.long	.LFB68
	.long	.LFE68
	.long	.LFB70
	.long	.LFE70
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF31:
	.string	"k_queue"
.LASF64:
	.string	"_POLL_STATE_NOT_READY"
.LASF61:
	.string	"_POLL_NUM_TYPES"
.LASF24:
	.string	"aos_queue_t"
.LASF54:
	.string	"work"
.LASF51:
	.string	"_reserved"
.LASF41:
	.string	"start_ms"
.LASF88:
	.string	"work_q_stack"
.LASF70:
	.string	"target"
.LASF45:
	.string	"atomic_t"
.LASF2:
	.string	"short int"
.LASF109:
	.string	"work_queue_thread"
.LASF35:
	.string	"k_timer_handler_t"
.LASF20:
	.string	"sizetype"
.LASF26:
	.string	"cpu_stack_t"
.LASF14:
	.string	"s32_t"
.LASF44:
	.string	"task"
.LASF9:
	.string	"long long unsigned int"
.LASF96:
	.string	"k_queue_init"
.LASF100:
	.string	"irq_lock"
.LASF6:
	.string	"__uint32_t"
.LASF76:
	.string	"delay"
.LASF38:
	.string	"handler"
.LASF22:
	.string	"aos_hdl_t"
.LASF23:
	.string	"aos_task_t"
.LASF15:
	.string	"head"
.LASF37:
	.string	"timer"
.LASF83:
	.string	"k_delayed_work_cancel"
.LASF43:
	.string	"k_thread"
.LASF99:
	.string	"atomic_get"
.LASF94:
	.string	"k_queue_get"
.LASF102:
	.string	"k_timer_start"
.LASF101:
	.string	"irq_unlock"
.LASF93:
	.string	"atomic_and"
.LASF29:
	.string	"_stack_element_t"
.LASF98:
	.string	"k_timer_init"
.LASF103:
	.string	"aos_now_ms"
.LASF71:
	.string	"atomic_test_bit"
.LASF8:
	.string	"long long int"
.LASF82:
	.string	"k_delayed_work_init"
.LASF42:
	.string	"k_timer_t"
.LASF66:
	.string	"_POLL_STATE_SEM_AVAILABLE"
.LASF4:
	.string	"long int"
.LASF78:
	.string	"work_timeout"
.LASF92:
	.string	"k_timer_stop"
.LASF46:
	.string	"atomic_val_t"
.LASF33:
	.string	"poll_events"
.LASF111:
	.string	"aos_log_level"
.LASF39:
	.string	"args"
.LASF58:
	.string	"_POLL_TYPE_SIGNAL"
.LASF110:
	.string	"exit"
.LASF19:
	.string	"sys_dlist_t"
.LASF81:
	.string	"k_work_submit"
.LASF13:
	.string	"long double"
.LASF17:
	.string	"tail"
.LASF74:
	.string	"atomic_test_and_set_bit"
.LASF1:
	.string	"unsigned char"
.LASF59:
	.string	"_POLL_TYPE_SEM_AVAILABLE"
.LASF30:
	.string	"_dnode"
.LASF108:
	.string	"done"
.LASF57:
	.string	"_POLL_TYPE_IGNORE"
.LASF0:
	.string	"signed char"
.LASF52:
	.string	"flags"
.LASF85:
	.string	"k_delayed_work_remaining_get"
.LASF12:
	.string	"uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF53:
	.string	"k_delayed_work"
.LASF32:
	.string	"_queue"
.LASF67:
	.string	"_POLL_STATE_DATA_AVAILABLE"
.LASF107:
	.string	"atomic_clear_bit"
.LASF47:
	.string	"k_work_q"
.LASF36:
	.string	"k_timer"
.LASF95:
	.string	"k_yield"
.LASF3:
	.string	"short unsigned int"
.LASF48:
	.string	"fifo"
.LASF21:
	.string	"char"
.LASF84:
	.string	"k_delayed_work_submit"
.LASF91:
	.string	"k_queue_append"
.LASF11:
	.string	"int32_t"
.LASF77:
	.string	"k_work_submit_to_queue"
.LASF89:
	.string	"g_work_queue_main"
.LASF69:
	.string	"_Bool"
.LASF79:
	.string	"k_work_q_start"
.LASF27:
	.string	"_queue_t"
.LASF49:
	.string	"k_work_handler_t"
.LASF7:
	.string	"long unsigned int"
.LASF50:
	.string	"k_work"
.LASF87:
	.string	"work_q_thread"
.LASF72:
	.string	"atomic_test_and_clear_bit"
.LASF65:
	.string	"_POLL_STATE_SIGNALED"
.LASF80:
	.string	"k_work_init"
.LASF97:
	.string	"k_thread_create"
.LASF62:
	.string	"_poll_types_bits"
.LASF73:
	.string	"mask"
.LASF90:
	.string	"atomic_or"
.LASF5:
	.string	"__int32_t"
.LASF104:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF34:
	.string	"k_fifo"
.LASF63:
	.string	"_poll_states_bits"
.LASF25:
	.string	"aos_timer_t"
.LASF75:
	.string	"k_delayed_work_submit_to_queue"
.LASF55:
	.string	"work_q"
.LASF106:
	.string	"/home/stone/Documents/pca"
.LASF56:
	.string	"K_WORK_STATE_PENDING"
.LASF68:
	.string	"_POLL_NUM_STATES"
.LASF28:
	.string	"_task_t"
.LASF18:
	.string	"prev"
.LASF86:
	.string	"remain"
.LASF60:
	.string	"_POLL_TYPE_DATA_AVAILABLE"
.LASF40:
	.string	"timeout"
.LASF16:
	.string	"next"
.LASF105:
	.string	"src/work.c"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
