	.file	"port_c.c"
	.text
.Ltext0:
	.section	.text.unlikely.cpu_task_stack_init,"ax",@progbits
.LCOLDB0:
	.section	.text.cpu_task_stack_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.cpu_task_stack_init
.Ltext_cold0:
	.section	.text.cpu_task_stack_init
	.globl	cpu_task_stack_init
	.type	cpu_task_stack_init, @function
cpu_task_stack_init:
.LFB12:
	.file 1 "platform/arch/arm/armv5/gcc/port_c.c"
	.loc 1 8 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 10 0
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	leal	(%edx,%eax,4), %eax
.LVL1:
	.loc 1 16 0
	movl	20(%ebp), %edx
	.loc 1 14 0
	andl	$-8, %eax
.LVL2:
	.loc 1 16 0
	movl	%edx, -4(%eax)
.LVL3:
	.loc 1 30 0
	movl	16(%ebp), %edx
	.loc 1 31 0
	subl	$64, %eax
.LVL4:
	.loc 1 17 0
	movl	$krhino_task_deathbed, 56(%eax)
.LVL5:
	.loc 1 18 0
	movl	$0, 52(%eax)
	.loc 1 19 0
	movl	$0, 48(%eax)
	.loc 1 20 0
	movl	$0, 44(%eax)
	.loc 1 21 0
	movl	$0, 40(%eax)
	.loc 1 22 0
	movl	$0, 36(%eax)
	.loc 1 23 0
	movl	$0, 32(%eax)
	.loc 1 24 0
	movl	$0, 28(%eax)
	.loc 1 25 0
	movl	$0, 24(%eax)
	.loc 1 26 0
	movl	$0, 20(%eax)
	.loc 1 27 0
	movl	$0, 16(%eax)
	.loc 1 28 0
	movl	$0, 12(%eax)
	.loc 1 29 0
	movl	$0, 8(%eax)
	.loc 1 30 0
	movl	%edx, 4(%eax)
	.loc 1 31 0
	movl	$19, (%eax)
	.loc 1 34 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE12:
	.size	cpu_task_stack_init, .-cpu_task_stack_init
	.section	.text.unlikely.cpu_task_stack_init
.LCOLDE0:
	.section	.text.cpu_task_stack_init
.LHOTE0:
	.section	.text.unlikely.fiq_pre_proc,"ax",@progbits
.LCOLDB1:
	.section	.text.fiq_pre_proc,"ax",@progbits
.LHOTB1:
	.globl	fiq_pre_proc
	.type	fiq_pre_proc, @function
fiq_pre_proc:
.LFB13:
	.loc 1 37 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 38 0
	incb	g_intrpt_nested_level
	.loc 1 37 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 39 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE13:
	.size	fiq_pre_proc, .-fiq_pre_proc
	.section	.text.unlikely.fiq_pre_proc
.LCOLDE1:
	.section	.text.fiq_pre_proc
.LHOTE1:
	.section	.text.unlikely.fiq_end_proc,"ax",@progbits
.LCOLDB2:
	.section	.text.fiq_end_proc,"ax",@progbits
.LHOTB2:
	.globl	fiq_end_proc
	.type	fiq_end_proc, @function
fiq_end_proc:
.LFB14:
	.loc 1 42 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 43 0
	decb	g_intrpt_nested_level
	.loc 1 42 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 44 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE14:
	.size	fiq_end_proc, .-fiq_end_proc
	.section	.text.unlikely.fiq_end_proc
.LCOLDE2:
	.section	.text.fiq_end_proc
.LHOTE2:
	.section	.text.unlikely.platform_is_in_irq_enable,"ax",@progbits
.LCOLDB3:
	.section	.text.platform_is_in_irq_enable,"ax",@progbits
.LHOTB3:
	.globl	platform_is_in_irq_enable
	.type	platform_is_in_irq_enable, @function
platform_is_in_irq_enable:
.LFB15:
	.loc 1 49 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 55 0
#APP
# 55 "platform/arch/arm/armv5/gcc/port_c.c" 1
	MRS %eax,CPSR
AND %eax,%eax,#0xC0

# 0 "" 2
.LVL6:
	.loc 1 63 0
#NO_APP
	shrl	$7, %eax
.LVL7:
	xorl	$1, %eax
	andl	$1, %eax
	.loc 1 64 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE15:
	.size	platform_is_in_irq_enable, .-platform_is_in_irq_enable
	.section	.text.unlikely.platform_is_in_irq_enable
.LCOLDE3:
	.section	.text.platform_is_in_irq_enable
.LHOTE3:
	.section	.text.unlikely.platform_is_in_fiq_enable,"ax",@progbits
.LCOLDB4:
	.section	.text.platform_is_in_fiq_enable,"ax",@progbits
.LHOTB4:
	.globl	platform_is_in_fiq_enable
	.type	platform_is_in_fiq_enable, @function
platform_is_in_fiq_enable:
.LFB16:
	.loc 1 68 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 74 0
#APP
# 74 "platform/arch/arm/armv5/gcc/port_c.c" 1
	MRS %eax,CPSR
AND %eax,%eax,#0xC0

# 0 "" 2
.LVL8:
	.loc 1 82 0
#NO_APP
	shrl	$6, %eax
.LVL9:
	xorl	$1, %eax
	andl	$1, %eax
	.loc 1 83 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE16:
	.size	platform_is_in_fiq_enable, .-platform_is_in_fiq_enable
	.section	.text.unlikely.platform_is_in_fiq_enable
.LCOLDE4:
	.section	.text.platform_is_in_fiq_enable
.LHOTE4:
	.section	.text.unlikely.platform_is_in_irq_context,"ax",@progbits
.LCOLDB5:
	.section	.text.platform_is_in_irq_context,"ax",@progbits
.LHOTB5:
	.globl	platform_is_in_irq_context
	.type	platform_is_in_irq_context, @function
platform_is_in_irq_context:
.LFB17:
	.loc 1 88 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 93 0
#APP
# 93 "platform/arch/arm/armv5/gcc/port_c.c" 1
	MRS %eax,CPSR
AND %eax,%eax,#0x1f

# 0 "" 2
.LVL10:
	.loc 1 101 0
#NO_APP
	cmpl	$18, %eax
	sete	%al
.LVL11:
	movzbl	%al, %eax
	.loc 1 102 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE17:
	.size	platform_is_in_irq_context, .-platform_is_in_irq_context
	.section	.text.unlikely.platform_is_in_irq_context
.LCOLDE5:
	.section	.text.platform_is_in_irq_context
.LHOTE5:
	.section	.text.unlikely.platform_is_in_fiq_context,"ax",@progbits
.LCOLDB6:
	.section	.text.platform_is_in_fiq_context,"ax",@progbits
.LHOTB6:
	.globl	platform_is_in_fiq_context
	.type	platform_is_in_fiq_context, @function
platform_is_in_fiq_context:
.LFB18:
	.loc 1 106 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 111 0
#APP
# 111 "platform/arch/arm/armv5/gcc/port_c.c" 1
	MRS %eax,CPSR
AND %eax,%eax,#0x1f

# 0 "" 2
.LVL12:
	.loc 1 119 0
#NO_APP
	cmpl	$17, %eax
	sete	%al
.LVL13:
	movzbl	%al, %eax
	.loc 1 120 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE18:
	.size	platform_is_in_fiq_context, .-platform_is_in_fiq_context
	.section	.text.unlikely.platform_is_in_fiq_context
.LCOLDE6:
	.section	.text.platform_is_in_fiq_context
.LHOTE6:
	.section	.text.unlikely.platform_is_in_interrupt_context,"ax",@progbits
.LCOLDB7:
	.section	.text.platform_is_in_interrupt_context,"ax",@progbits
.LHOTB7:
	.globl	platform_is_in_interrupt_context
	.type	platform_is_in_interrupt_context, @function
platform_is_in_interrupt_context:
.LFB19:
	.loc 1 124 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 125 0
	call	platform_is_in_fiq_context
.LVL14:
	.loc 1 126 0
	testl	%eax, %eax
	movl	$1, %edx
	jne	.L16
	.loc 1 126 0 is_stmt 0 discriminator 2
	call	platform_is_in_irq_context
.LVL15:
	xorl	%edx, %edx
	testl	%eax, %eax
	setne	%dl
.L16:
	.loc 1 127 0 is_stmt 1
	movl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE19:
	.size	platform_is_in_interrupt_context, .-platform_is_in_interrupt_context
	.section	.text.unlikely.platform_is_in_interrupt_context
.LCOLDE7:
	.section	.text.platform_is_in_interrupt_context
.LHOTE7:
	.section	.text.unlikely.portDISABLE_FIQ,"ax",@progbits
.LCOLDB8:
	.section	.text.portDISABLE_FIQ,"ax",@progbits
.LHOTB8:
	.globl	portDISABLE_FIQ
	.type	portDISABLE_FIQ, @function
portDISABLE_FIQ:
.LFB20:
	.loc 1 131 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 135 0
#APP
# 135 "platform/arch/arm/armv5/gcc/port_c.c" 1
	mrs	%eax, cpsr		@ local_irq_disable
orr	%edx, %eax, #0x40
msr	cpsr_c, %edx
# 0 "" 2
.LVL16:
	.loc 1 143 0
#NO_APP
	shrl	$6, %eax
.LVL17:
	andl	$1, %eax
	.loc 1 144 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE20:
	.size	portDISABLE_FIQ, .-portDISABLE_FIQ
	.section	.text.unlikely.portDISABLE_FIQ
.LCOLDE8:
	.section	.text.portDISABLE_FIQ
.LHOTE8:
	.section	.text.unlikely.portDISABLE_IRQ,"ax",@progbits
.LCOLDB9:
	.section	.text.portDISABLE_IRQ,"ax",@progbits
.LHOTB9:
	.globl	portDISABLE_IRQ
	.type	portDISABLE_IRQ, @function
portDISABLE_IRQ:
.LFB21:
	.loc 1 147 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 151 0
#APP
# 151 "platform/arch/arm/armv5/gcc/port_c.c" 1
	mrs	%eax, cpsr		@ local_irq_disable
orr	%edx, %eax, #0x80
msr	cpsr_c, %edx
# 0 "" 2
.LVL18:
	.loc 1 159 0
#NO_APP
	shrl	$7, %eax
.LVL19:
	andl	$1, %eax
	.loc 1 160 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE21:
	.size	portDISABLE_IRQ, .-portDISABLE_IRQ
	.section	.text.unlikely.portDISABLE_IRQ
.LCOLDE9:
	.section	.text.portDISABLE_IRQ
.LHOTE9:
	.section	.text.unlikely.portENABLE_IRQ,"ax",@progbits
.LCOLDB10:
	.section	.text.portENABLE_IRQ,"ax",@progbits
.LHOTB10:
	.globl	portENABLE_IRQ
	.type	portENABLE_IRQ, @function
portENABLE_IRQ:
.LFB22:
	.loc 1 163 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 165 0
#APP
# 165 "platform/arch/arm/armv5/gcc/port_c.c" 1
	mrs	%eax, cpsr		@ local_irq_enable
bic	%eax, %eax, #0x80
msr	cpsr_c, %eax
# 0 "" 2
.LVL20:
	.loc 1 172 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE22:
	.size	portENABLE_IRQ, .-portENABLE_IRQ
	.section	.text.unlikely.portENABLE_IRQ
.LCOLDE10:
	.section	.text.portENABLE_IRQ
.LHOTE10:
	.section	.text.unlikely.portENABLE_FIQ,"ax",@progbits
.LCOLDB11:
	.section	.text.portENABLE_FIQ,"ax",@progbits
.LHOTB11:
	.globl	portENABLE_FIQ
	.type	portENABLE_FIQ, @function
portENABLE_FIQ:
.LFB23:
	.loc 1 175 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 177 0
#APP
# 177 "platform/arch/arm/armv5/gcc/port_c.c" 1
	mrs	%eax, cpsr		@ local_irq_enable
bic	%eax, %eax, #0x40
msr	cpsr_c, %eax
# 0 "" 2
.LVL21:
	.loc 1 184 0
#NO_APP
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE23:
	.size	portENABLE_FIQ, .-portENABLE_FIQ
	.section	.text.unlikely.portENABLE_FIQ
.LCOLDE11:
	.section	.text.portENABLE_FIQ
.LHOTE11:
	.text
.Letext0:
	.section	.text.unlikely.cpu_task_stack_init
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "././platform/arch/arm/armv5/./gcc/k_types.h"
	.file 6 "./kernel/rhino/core/include/k_task.h"
	.file 7 "././platform/arch/arm/armv5/./gcc/port.h"
	.file 8 "./kernel/rhino/core/include/k_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x316
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF38
	.byte	0xc
	.long	.LASF39
	.long	.LASF40
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
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x18
	.long	0x53
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x30
	.long	0x7a
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.long	.LASF15
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.long	.LASF16
	.uleb128 0x3
	.long	.LASF17
	.byte	0x5
	.byte	0x10
	.long	0x9e
	.uleb128 0x6
	.byte	0x4
	.long	0xb9
	.uleb128 0x3
	.long	.LASF18
	.byte	0x6
	.byte	0x72
	.long	0xd5
	.uleb128 0x6
	.byte	0x4
	.long	0xdb
	.uleb128 0x7
	.long	0xe6
	.uleb128 0x8
	.long	0xb0
	.byte	0
	.uleb128 0x9
	.long	0x93
	.long	0xf6
	.uleb128 0xa
	.long	0xa9
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	.LASF41
	.byte	0x7
	.byte	0xf
	.long	0x93
	.byte	0x3
	.uleb128 0xc
	.long	.LASF25
	.byte	0x1
	.byte	0x7
	.long	0xb0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x172
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1
	.byte	0x7
	.long	0xc4
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1
	.byte	0x7
	.long	0x2c
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0xe
	.string	"arg"
	.byte	0x1
	.byte	0x7
	.long	0xb0
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.long	.LASF21
	.byte	0x1
	.byte	0x7
	.long	0xca
	.uleb128 0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xf
	.string	"stk"
	.byte	0x1
	.byte	0x9
	.long	0xc4
	.long	.LLST0
	.uleb128 0x10
	.long	.LASF22
	.byte	0x1
	.byte	0xa
	.long	0x9e
	.long	.LLST1
	.byte	0
	.uleb128 0x11
	.long	.LASF23
	.byte	0x1
	.byte	0x24
	.long	.LFB13
	.long	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.long	.LASF24
	.byte	0x1
	.byte	0x29
	.long	.LFB14
	.long	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF26
	.byte	0x1
	.byte	0x30
	.long	0x9e
	.long	.LFB15
	.long	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bd
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x35
	.long	0x9e
	.long	.LLST2
	.byte	0
	.uleb128 0xc
	.long	.LASF28
	.byte	0x1
	.byte	0x43
	.long	0x9e
	.long	.LFB16
	.long	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e6
	.uleb128 0x10
	.long	.LASF27
	.byte	0x1
	.byte	0x48
	.long	0x9e
	.long	.LLST3
	.byte	0
	.uleb128 0xc
	.long	.LASF29
	.byte	0x1
	.byte	0x57
	.long	0x9e
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x20f
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x5b
	.long	0x9e
	.long	.LLST4
	.byte	0
	.uleb128 0xc
	.long	.LASF31
	.byte	0x1
	.byte	0x69
	.long	0x9e
	.long	.LFB18
	.long	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x238
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x6d
	.long	0x9e
	.long	.LLST5
	.byte	0
	.uleb128 0xc
	.long	.LASF32
	.byte	0x1
	.byte	0x7b
	.long	0x9e
	.long	.LFB19
	.long	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x264
	.uleb128 0x12
	.long	.LVL14
	.long	0x20f
	.uleb128 0x12
	.long	.LVL15
	.long	0x1e6
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.byte	0x82
	.long	0x25
	.long	.LFB20
	.long	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x298
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x84
	.long	0x85
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x85
	.long	0x85
	.long	.LLST6
	.byte	0
	.uleb128 0xc
	.long	.LASF35
	.byte	0x1
	.byte	0x92
	.long	0x25
	.long	.LFB21
	.long	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x2cc
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0x94
	.long	0x85
	.uleb128 0x10
	.long	.LASF34
	.byte	0x1
	.byte	0x95
	.long	0x85
	.long	.LLST7
	.byte	0
	.uleb128 0x14
	.long	.LASF36
	.byte	0x1
	.byte	0xa2
	.long	.LFB22
	.long	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ed
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0xa4
	.long	0x85
	.byte	0
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xae
	.long	.LFB23
	.long	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x30e
	.uleb128 0x13
	.long	.LASF22
	.byte	0x1
	.byte	0xb0
	.long	0x85
	.byte	0
	.uleb128 0x15
	.long	.LASF42
	.byte	0x8
	.byte	0xf
	.long	0xe6
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.long	.LVL2
	.long	.LVL3
	.value	0x3
	.byte	0x70
	.sleb128 -4
	.byte	0x9f
	.long	.LVL3
	.long	.LVL4
	.value	0x3
	.byte	0x70
	.sleb128 -8
	.byte	0x9f
	.long	.LVL4
	.long	.LVL5
	.value	0x3
	.byte	0x70
	.sleb128 56
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.value	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x1a
	.byte	0x9f
	.long	.LVL2
	.long	.LVL4
	.value	0x1
	.byte	0x50
	.long	.LVL4
	.long	.LFE12
	.value	0x4
	.byte	0x70
	.sleb128 64
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL6
	.long	.LVL7
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST3:
	.long	.LVL8
	.long	.LVL9
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL10
	.long	.LVL11
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST5:
	.long	.LVL12
	.long	.LVL13
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST6:
	.long	.LVL16
	.long	.LVL17
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST7:
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x74
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
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
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.string	"src/port_c.c"
.LASF5:
	.string	"__uint8_t"
.LASF25:
	.string	"cpu_task_stack_init"
.LASF38:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF35:
	.string	"portDISABLE_IRQ"
.LASF34:
	.string	"mask"
.LASF17:
	.string	"cpu_stack_t"
.LASF13:
	.string	"uint8_t"
.LASF41:
	.string	"cpu_cur_get"
.LASF32:
	.string	"platform_is_in_interrupt_context"
.LASF24:
	.string	"fiq_end_proc"
.LASF27:
	.string	"interrupt"
.LASF33:
	.string	"portDISABLE_FIQ"
.LASF18:
	.string	"task_entry_t"
.LASF19:
	.string	"base"
.LASF22:
	.string	"temp"
.LASF8:
	.string	"short unsigned int"
.LASF4:
	.string	"size_t"
.LASF28:
	.string	"platform_is_in_fiq_enable"
.LASF6:
	.string	"unsigned char"
.LASF11:
	.string	"long unsigned int"
.LASF10:
	.string	"__uint32_t"
.LASF36:
	.string	"portENABLE_IRQ"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF31:
	.string	"platform_is_in_fiq_context"
.LASF30:
	.string	"mode"
.LASF42:
	.string	"g_intrpt_nested_level"
.LASF26:
	.string	"platform_is_in_irq_enable"
.LASF15:
	.string	"sizetype"
.LASF1:
	.string	"long long int"
.LASF16:
	.string	"char"
.LASF40:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"short int"
.LASF37:
	.string	"portENABLE_FIQ"
.LASF23:
	.string	"fiq_pre_proc"
.LASF29:
	.string	"platform_is_in_irq_context"
.LASF14:
	.string	"uint32_t"
.LASF9:
	.string	"long int"
.LASF2:
	.string	"long double"
.LASF3:
	.string	"signed char"
.LASF20:
	.string	"size"
.LASF21:
	.string	"entry"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
