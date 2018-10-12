	.file	"nrf5_power_clock.c"
	.text
.Ltext0:
	.section	.text.unlikely._clock_control_init,"ax",@progbits
.LCOLDB0:
	.section	.text._clock_control_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._clock_control_init
.Ltext_cold0:
	.section	.text._clock_control_init
	.type	_clock_control_init, @function
_clock_control_init:
.LFB156:
	.file 1 "src/nrf5_power_clock.c"
	.loc 1 4342 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$12, %esp
.LBB40:
	.loc 1 4343 0
	pushl	$0
	pushl	$_power_clock_isr
	pushl	$0
	call	os_hwi_set_handler
.LVL1:
	addl	$12, %esp
	pushl	$0
	pushl	$5
	pushl	$0
	call	_irq_priority_set
.LVL2:
.LBE40:
	.loc 1 4345 0
	movl	$0, (%esp)
	call	_arch_irq_enable
.LVL3:
	.loc 1 4347 0
	xorl	%eax, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE156:
	.size	_clock_control_init, .-_clock_control_init
	.section	.text.unlikely._clock_control_init
.LCOLDE0:
	.section	.text._clock_control_init
.LHOTE0:
	.section	.text.unlikely._m16src_stop,"ax",@progbits
.LCOLDB1:
	.section	.text._m16src_stop,"ax",@progbits
.LHOTB1:
	.type	_m16src_stop, @function
_m16src_stop:
.LFB153:
	.loc 1 4211 0
	.cfi_startproc
.LVL4:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4214 0
	call	irq_lock
.LVL5:
	.loc 1 4215 0
	movb	m16src_ref, %dl
	testb	%dl, %dl
	jne	.L4
	.loc 1 4216 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL6:
	.loc 1 4217 0
	addl	$16, %esp
	movl	$-69, %eax
	jmp	.L5
.LVL7:
.L4:
	.loc 1 4219 0
	leal	-1(%edx), %ecx
	testb	%cl, %cl
	movb	%cl, m16src_ref
	je	.L6
	.loc 1 4220 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL8:
	jmp	.L9
.LVL9:
.L6:
	.loc 1 4223 0
	cmpb	$0, m16src_grd
	je	.L7
	.loc 1 4225 0
	subl	$12, %esp
	.loc 1 4224 0
	movb	%dl, m16src_ref
	.loc 1 4225 0
	pushl	%eax
	call	irq_unlock
.LVL10:
	.loc 1 4226 0
	addl	$16, %esp
	movl	$-11, %eax
	jmp	.L5
.LVL11:
.L7:
	.loc 1 4229 0
	subl	$12, %esp
	.loc 1 4228 0
	movb	$1, m16src_grd
	.loc 1 4229 0
	pushl	%eax
	call	irq_unlock
.LVL12:
	.loc 1 4230 0
	movl	$1, 1073741828
	.loc 1 4231 0
	movb	$0, m16src_grd
.L9:
	.loc 1 4232 0
	addl	$16, %esp
	xorl	%eax, %eax
.L5:
	.loc 1 4233 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE153:
	.size	_m16src_stop, .-_m16src_stop
	.section	.text.unlikely._m16src_stop
.LCOLDE1:
	.section	.text._m16src_stop
.LHOTE1:
	.section	.text.unlikely._m16src_start,"ax",@progbits
.LCOLDB2:
	.section	.text._m16src_start,"ax",@progbits
.LHOTB2:
	.type	_m16src_start, @function
_m16src_start:
.LFB152:
	.loc 1 4162 0
	.cfi_startproc
.LVL13:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 4166 0
	call	irq_lock
.LVL14:
	.loc 1 4167 0
	movb	m16src_ref, %dl
	leal	1(%edx), %ecx
	testb	%dl, %dl
	movb	%cl, m16src_ref
	je	.L12
	.loc 1 4168 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL15:
	.loc 1 4169 0
	addl	$16, %esp
	jmp	.L13
.LVL16:
.L12:
	.loc 1 4171 0
	cmpb	$0, m16src_grd
	je	.L14
	.loc 1 4173 0
	subl	$12, %esp
	.loc 1 4172 0
	movb	$0, m16src_ref
	.loc 1 4173 0
	pushl	%eax
	call	irq_unlock
.LVL17:
	.loc 1 4174 0
	addl	$16, %esp
	movl	$-11, %eax
	jmp	.L15
.LVL18:
.L14:
	.loc 1 4177 0
	subl	$12, %esp
	.loc 1 4176 0
	movb	$1, m16src_grd
	.loc 1 4177 0
	pushl	%eax
	call	irq_unlock
.LVL19:
	.loc 1 4179 0
	addl	$16, %esp
	cmpl	$0, 12(%ebp)
	je	.L16
.LBB41:
	.loc 1 4181 0
	subl	$12, %esp
	pushl	$0
	call	_arch_irq_disable
.LVL20:
	.loc 1 4182 0
	movl	$0, 1073742080
	.loc 1 4186 0
	addl	$16, %esp
	.loc 1 4183 0
	movl	1073742596, %eax
.LVL21:
	.loc 1 4184 0
	movl	$1, 1073742596
	.loc 1 4185 0
	movl	$1, 1073741824
.L17:
	.loc 1 4186 0
	movl	1073742080, %edx
	testl	%edx, %edx
	jne	.L23
.LBB42:
.LBB43:
	.loc 1 1822 0
#APP
# 1822 "src/nrf5_power_clock.c" 1
	wfe
# 0 "" 2
#NO_APP
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 1 1826 0
#APP
# 1826 "src/nrf5_power_clock.c" 1
	sev
# 0 "" 2
#NO_APP
.LBE45:
.LBE44:
.LBB46:
.LBB47:
	.loc 1 1822 0
#APP
# 1822 "src/nrf5_power_clock.c" 1
	wfe
# 0 "" 2
#NO_APP
	jmp	.L17
.L23:
.LBE47:
.LBE46:
	.loc 1 4192 0
	testb	$1, %al
	.loc 1 4191 0
	movl	$0, 1073742080
	.loc 1 4192 0
	jne	.L19
	.loc 1 4193 0
	movl	$1, 1073742600
.L19:
.LVL22:
	.loc 1 4196 0
	subl	$12, %esp
.LBB48:
.LBB49:
	.loc 1 2561 0
	movl	$1, -536812928
.LVL23:
.LBE49:
.LBE48:
	.loc 1 4196 0
	pushl	$0
	call	_arch_irq_enable
.LVL24:
.LBE41:
	addl	$16, %esp
	jmp	.L20
.L16:
	.loc 1 4198 0
	movl	$0, 1073742080
	.loc 1 4199 0
	movl	$1, 1073741824
.L20:
	.loc 1 4201 0
	movb	$0, m16src_grd
.LVL25:
.L13:
	.loc 1 4204 0
	movl	1073742860, %eax
	andl	$65536, %eax
	.loc 1 4207 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-68, %eax
.L15:
	.loc 1 4209 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE152:
	.size	_m16src_start, .-_m16src_start
	.section	.text.unlikely._m16src_start
.LCOLDE2:
	.section	.text._m16src_start
.LHOTE2:
	.section	.text.unlikely._power_clock_isr,"ax",@progbits
.LCOLDB3:
	.section	.text._power_clock_isr,"ax",@progbits
.LHOTB3:
	.type	_power_clock_isr, @function
_power_clock_isr:
.LFB155:
	.loc 1 4290 0
	.cfi_startproc
.LVL26:
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
	.loc 1 4290 0
	movl	8(%ebp), %ebx
.LVL27:
	.loc 1 4293 0
	call	krhino_intrpt_enter
.LVL28:
	.loc 1 4294 0
	movl	1073742088, %edi
.LVL29:
	.loc 1 4296 0
	movl	1073742596, %eax
	andl	$1, %eax
	movb	%al, -25(%ebp)
.LVL30:
	.loc 1 4297 0
	movl	1073742860, %eax
.LVL31:
	.loc 1 4298 0
	movl	1073742080, %ecx
	.loc 1 4299 0
	movl	1073742084, %edx
	.loc 1 4297 0
	shrl	$16, %eax
	andl	$1, %eax
	.loc 1 4303 0
	testl	%edi, %edi
	.loc 1 4297 0
	movb	%al, -26(%ebp)
.LVL32:
	.loc 1 4300 0
	movl	1073742092, %eax
.LVL33:
	.loc 1 4301 0
	movl	1073742096, %esi
.LVL34:
	.loc 1 4303 0
	je	.L25
	.loc 1 4304 0
	movl	$0, 1073742088
.L25:
	.loc 1 4306 0
	testl	%ecx, %ecx
	je	.L26
	.loc 1 4307 0
	movl	$0, 1073742080
.L26:
	.loc 1 4309 0
	cmpb	$0, -25(%ebp)
	je	.L27
	cmpb	$0, -26(%ebp)
	je	.L27
	.loc 1 4310 0
	movl	$1, 1073742600
	.loc 1 4311 0
	movl	$1, 1073741840
.L27:
	.loc 1 4313 0
	testl	%edx, %edx
	je	.L28
	.loc 1 4314 0
	movl	$0, 1073742084
.L28:
	.loc 1 4317 0
	testl	%eax, %eax
	je	.L29
.LBB50:
	.loc 1 4319 0
	movl	$0, 1073742092
.LVL35:
	.loc 1 4320 0
	pushl	%edx
	pushl	%edx
	pushl	$0
	pushl	%ebx
	call	_m16src_stop
.LVL36:
	.loc 1 4324 0
	movl	$1, 1073741844
	addl	$16, %esp
.L29:
.LBE50:
	.loc 1 4326 0
	testl	%esi, %esi
	je	.L31
.LBB51:
	.loc 1 4328 0
	movl	$0, 1073742096
	.loc 1 4329 0
	movl	$1, 1073742596
	.loc 1 4330 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	%ebx
	call	_m16src_start
.LVL37:
	.loc 1 4333 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L31
.LVL38:
.LBB52:
.LBB53:
	.loc 1 2557 0
	movl	$1, -536813056
.LVL39:
.L31:
.LBE53:
.LBE52:
.LBE51:
	.loc 1 4340 0
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
.LVL40:
	popl	%esi
	.cfi_restore 6
.LVL41:
	popl	%edi
	.cfi_restore 7
.LVL42:
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 4339 0
	jmp	krhino_intrpt_exit
.LVL43:
	.cfi_endproc
.LFE155:
	.size	_power_clock_isr, .-_power_clock_isr
	.section	.text.unlikely._power_clock_isr
.LCOLDE3:
	.section	.text._power_clock_isr
.LHOTE3:
	.section	.text.unlikely._k32src_start,"ax",@progbits
.LCOLDB4:
	.section	.text._k32src_start,"ax",@progbits
.LHOTB4:
	.type	_k32src_start, @function
_k32src_start:
.LFB154:
	.loc 1 4235 0
	.cfi_startproc
.LVL44:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	pushl	%edx
	.cfi_offset 3, -12
	.loc 1 4235 0
	movl	12(%ebp), %ebx
	.loc 1 4239 0
	call	irq_lock
.LVL45:
	.loc 1 4240 0
	cmpb	$0, k32src_initialized
	je	.L53
	.loc 1 4241 0
	subl	$12, %esp
	pushl	%eax
	call	irq_unlock
.LVL46:
	.loc 1 4242 0
	addl	$16, %esp
	jmp	.L54
.LVL47:
.L53:
	.loc 1 4245 0
	subl	$12, %esp
	.loc 1 4244 0
	movb	$1, k32src_initialized
	.loc 1 4245 0
	pushl	%eax
	call	irq_unlock
.LVL48:
	.loc 1 4246 0
	movl	$0, (%esp)
	call	_arch_irq_disable
.LVL49:
	.loc 1 4247 0
	movl	$0, 1073742084
	.loc 1 4253 0
	addl	$16, %esp
	.loc 1 4248 0
	movl	1073742596, %eax
.LVL50:
	.loc 1 4249 0
	movl	$2, 1073742596
.LVL51:
	.loc 1 4251 0
	movl	%ebx, 1073743128
	.loc 1 4252 0
	movl	$1, 1073741832
.L55:
	.loc 1 4253 0
	movl	1073742084, %edx
	testl	%edx, %edx
	jne	.L63
.LBB54:
.LBB55:
	.loc 1 1822 0
#APP
# 1822 "src/nrf5_power_clock.c" 1
	wfe
# 0 "" 2
#NO_APP
.LBE55:
.LBE54:
.LBB56:
.LBB57:
	.loc 1 1826 0
#APP
# 1826 "src/nrf5_power_clock.c" 1
	sev
# 0 "" 2
#NO_APP
.LBE57:
.LBE56:
.LBB58:
.LBB59:
	.loc 1 1822 0
#APP
# 1822 "src/nrf5_power_clock.c" 1
	wfe
# 0 "" 2
#NO_APP
	jmp	.L55
.L63:
.LBE59:
.LBE58:
	.loc 1 4259 0
	testb	$2, %al
	.loc 1 4258 0
	movl	$0, 1073742084
	.loc 1 4259 0
	jne	.L57
	.loc 1 4260 0
	movl	$2, 1073742600
.L57:
.LVL52:
	.loc 1 4263 0
	subl	$12, %esp
.LBB60:
.LBB61:
	.loc 1 2561 0
	movl	$1, -536812928
.LVL53:
.LBE61:
.LBE60:
	.loc 1 4263 0
	pushl	$0
	call	_arch_irq_enable
.LVL54:
	.loc 1 4267 0
	addl	$16, %esp
	andb	$3, %bl
.LVL55:
	.loc 1 4264 0
	movl	$24, 1073742600
	.loc 1 4265 0
	movl	$0, 1073742092
	.loc 1 4266 0
	movl	$0, 1073742096
	.loc 1 4267 0
	jne	.L54
.LBB62:
	.loc 1 4269 0
	movl	$16, 1073743160
	.loc 1 4270 0
	movl	$24, 1073742596
	.loc 1 4272 0
	movl	$1, 1073742596
	.loc 1 4273 0
	pushl	%eax
	pushl	%eax
	pushl	$0
	pushl	8(%ebp)
	call	_m16src_start
.LVL56:
	.loc 1 4276 0
	addl	$16, %esp
	testl	%eax, %eax
	jne	.L54
.LVL57:
.LBB63:
.LBB64:
	.loc 1 2557 0
	movl	$1, -536813056
.LVL58:
.L54:
.LBE64:
.LBE63:
.LBE62:
	.loc 1 4283 0
	movl	1073742872, %eax
	.loc 1 4288 0
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	.loc 1 4283 0
	andl	$65536, %eax
	.loc 1 4286 0
	cmpl	$1, %eax
	sbbl	%eax, %eax
	andl	$-68, %eax
	.loc 1 4288 0
	ret
	.cfi_endproc
.LFE154:
	.size	_k32src_start, .-_k32src_start
	.section	.text.unlikely._k32src_start
.LCOLDE4:
	.section	.text._k32src_start
.LHOTE4:
	.section	.init_PRE_KERNEL_10,"aw",@progbits
	.align 4
	.type	__device_clock_nrf5_k32src, @object
	.size	__device_clock_nrf5_k32src, 12
__device_clock_nrf5_k32src:
	.long	__config_clock_nrf5_k32src
	.long	_k32src_clock_control_api
	.long	0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC5:
	.string	"nrf5k32srcclockcontrol"
	.section	.devconfig.init,"aw",@progbits
	.align 4
	.type	__config_clock_nrf5_k32src, @object
	.size	__config_clock_nrf5_k32src, 16
__config_clock_nrf5_k32src:
	.long	.LC5
	.long	_clock_control_init
	.long	device_pm_control_nop
	.long	0
	.section	.rodata._k32src_clock_control_api,"a",@progbits
	.align 4
	.type	_k32src_clock_control_api, @object
	.size	_k32src_clock_control_api, 12
_k32src_clock_control_api:
	.long	_k32src_start
	.long	0
	.long	0
	.section	.init_PRE_KERNEL_10
	.align 4
	.type	__device_clock_nrf5_m16src, @object
	.size	__device_clock_nrf5_m16src, 12
__device_clock_nrf5_m16src:
	.long	__config_clock_nrf5_m16src
	.long	_m16src_clock_control_api
	.long	0
	.section	.rodata.str1.1
.LC6:
	.string	"nrf5m16srcclockcontrol"
	.section	.devconfig.init
	.align 4
	.type	__config_clock_nrf5_m16src, @object
	.size	__config_clock_nrf5_m16src, 16
__config_clock_nrf5_m16src:
	.long	.LC6
	.long	_clock_control_init
	.long	device_pm_control_nop
	.long	0
	.section	.rodata._m16src_clock_control_api,"a",@progbits
	.align 4
	.type	_m16src_clock_control_api, @object
	.size	_m16src_clock_control_api, 12
_m16src_clock_control_api:
	.long	_m16src_start
	.long	_m16src_stop
	.long	0
	.section	.intList,"aw",@progbits
	.align 4
	.type	__isr__power_clock_isr_irq___COUNTER__.6556, @object
	.size	__isr__power_clock_isr_irq___COUNTER__.6556, 16
__isr__power_clock_isr_irq___COUNTER__.6556:
	.long	0
	.long	0
	.long	_power_clock_isr
	.long	0
	.section	.bss.k32src_initialized,"aw",@nobits
	.type	k32src_initialized, @object
	.size	k32src_initialized, 1
k32src_initialized:
	.zero	1
	.section	.bss.m16src_grd,"aw",@nobits
	.type	m16src_grd, @object
	.size	m16src_grd, 1
m16src_grd:
	.zero	1
	.section	.bss.m16src_ref,"aw",@nobits
	.type	m16src_ref, @object
	.size	m16src_ref, 1
m16src_ref:
	.zero	1
	.text
.Letext0:
	.section	.text.unlikely._clock_control_init
.Letext_cold0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x113d
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF207
	.byte	0xc
	.long	.LASF208
	.long	.LASF209
	.long	.Ldebug_ranges0+0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF1
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.long	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF3
	.uleb128 0x4
	.long	.LASF7
	.byte	0x1
	.byte	0x9
	.long	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF6
	.uleb128 0x4
	.long	.LASF8
	.byte	0x1
	.byte	0xc
	.long	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF9
	.uleb128 0x4
	.long	.LASF10
	.byte	0x1
	.byte	0xd
	.long	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF11
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF12
	.uleb128 0x4
	.long	.LASF13
	.byte	0x1
	.byte	0x1b
	.long	0x48
	.uleb128 0x4
	.long	.LASF14
	.byte	0x1
	.byte	0x1e
	.long	0x68
	.uleb128 0x4
	.long	.LASF15
	.byte	0x1
	.byte	0x1f
	.long	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF16
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.long	0xc3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF17
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.value	0x3f7
	.long	0x25
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.value	0x3f9
	.long	0x53
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.value	0x3fb
	.long	0x2c
	.uleb128 0x6
	.byte	0x4
	.long	0xf4
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF24
	.byte	0xc
	.byte	0x1
	.value	0x633
	.long	0x12a
	.uleb128 0xa
	.long	.LASF21
	.byte	0x1
	.value	0x634
	.long	0x16c
	.byte	0
	.uleb128 0xa
	.long	.LASF22
	.byte	0x1
	.value	0x635
	.long	0xee
	.byte	0x4
	.uleb128 0xa
	.long	.LASF23
	.byte	0x1
	.value	0x636
	.long	0xbb
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.long	.LASF25
	.byte	0x10
	.byte	0x1
	.value	0x638
	.long	0x16c
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.value	0x639
	.long	0xbd
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.value	0x63a
	.long	0x187
	.byte	0x4
	.uleb128 0xa
	.long	.LASF28
	.byte	0x1
	.value	0x63b
	.long	0x1a6
	.byte	0x8
	.uleb128 0xa
	.long	.LASF29
	.byte	0x1
	.value	0x63d
	.long	0xee
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x12a
	.uleb128 0xb
	.long	0x25
	.long	0x181
	.uleb128 0xc
	.long	0x181
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xf5
	.uleb128 0x6
	.byte	0x4
	.long	0x172
	.uleb128 0xb
	.long	0x25
	.long	0x1a6
	.uleb128 0xc
	.long	0x181
	.uleb128 0xc
	.long	0xe2
	.uleb128 0xc
	.long	0xbb
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x18d
	.uleb128 0x7
	.long	.LASF30
	.byte	0x1
	.value	0x655
	.long	0xbb
	.uleb128 0x7
	.long	.LASF31
	.byte	0x1
	.value	0x656
	.long	0x1c4
	.uleb128 0x6
	.byte	0x4
	.long	0x1ca
	.uleb128 0xb
	.long	0x25
	.long	0x1de
	.uleb128 0xc
	.long	0x181
	.uleb128 0xc
	.long	0x1ac
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1
	.value	0x657
	.long	0x1ea
	.uleb128 0x6
	.byte	0x4
	.long	0x1f0
	.uleb128 0xb
	.long	0x25
	.long	0x209
	.uleb128 0xc
	.long	0x181
	.uleb128 0xc
	.long	0x1ac
	.uleb128 0xc
	.long	0x209
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xe2
	.uleb128 0x9
	.long	.LASF33
	.byte	0xc
	.byte	0x1
	.value	0x65a
	.long	0x243
	.uleb128 0xd
	.string	"on"
	.byte	0x1
	.value	0x65b
	.long	0x1b8
	.byte	0
	.uleb128 0xd
	.string	"off"
	.byte	0x1
	.value	0x65c
	.long	0x1b8
	.byte	0x4
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.value	0x65d
	.long	0x1de
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.long	0x25
	.byte	0x1
	.value	0x674
	.long	0x38f
	.uleb128 0xf
	.long	.LASF35
	.sleb128 -15
	.uleb128 0xf
	.long	.LASF36
	.sleb128 -14
	.uleb128 0xf
	.long	.LASF37
	.sleb128 -13
	.uleb128 0xf
	.long	.LASF38
	.sleb128 -12
	.uleb128 0xf
	.long	.LASF39
	.sleb128 -11
	.uleb128 0xf
	.long	.LASF40
	.sleb128 -10
	.uleb128 0xf
	.long	.LASF41
	.sleb128 -5
	.uleb128 0xf
	.long	.LASF42
	.sleb128 -4
	.uleb128 0xf
	.long	.LASF43
	.sleb128 -2
	.uleb128 0xf
	.long	.LASF44
	.sleb128 -1
	.uleb128 0x10
	.long	.LASF45
	.byte	0
	.uleb128 0x10
	.long	.LASF46
	.byte	0x1
	.uleb128 0x10
	.long	.LASF47
	.byte	0x2
	.uleb128 0x10
	.long	.LASF48
	.byte	0x3
	.uleb128 0x10
	.long	.LASF49
	.byte	0x4
	.uleb128 0x10
	.long	.LASF50
	.byte	0x5
	.uleb128 0x10
	.long	.LASF51
	.byte	0x6
	.uleb128 0x10
	.long	.LASF52
	.byte	0x7
	.uleb128 0x10
	.long	.LASF53
	.byte	0x8
	.uleb128 0x10
	.long	.LASF54
	.byte	0x9
	.uleb128 0x10
	.long	.LASF55
	.byte	0xa
	.uleb128 0x10
	.long	.LASF56
	.byte	0xb
	.uleb128 0x10
	.long	.LASF57
	.byte	0xc
	.uleb128 0x10
	.long	.LASF58
	.byte	0xd
	.uleb128 0x10
	.long	.LASF59
	.byte	0xe
	.uleb128 0x10
	.long	.LASF60
	.byte	0xf
	.uleb128 0x10
	.long	.LASF61
	.byte	0x10
	.uleb128 0x10
	.long	.LASF62
	.byte	0x11
	.uleb128 0x10
	.long	.LASF63
	.byte	0x12
	.uleb128 0x10
	.long	.LASF64
	.byte	0x13
	.uleb128 0x10
	.long	.LASF65
	.byte	0x14
	.uleb128 0x10
	.long	.LASF66
	.byte	0x15
	.uleb128 0x10
	.long	.LASF67
	.byte	0x16
	.uleb128 0x10
	.long	.LASF68
	.byte	0x17
	.uleb128 0x10
	.long	.LASF69
	.byte	0x18
	.uleb128 0x10
	.long	.LASF70
	.byte	0x19
	.uleb128 0x10
	.long	.LASF71
	.byte	0x1a
	.uleb128 0x10
	.long	.LASF72
	.byte	0x1b
	.uleb128 0x10
	.long	.LASF73
	.byte	0x1c
	.uleb128 0x10
	.long	.LASF74
	.byte	0x1d
	.uleb128 0x10
	.long	.LASF75
	.byte	0x20
	.uleb128 0x10
	.long	.LASF76
	.byte	0x21
	.uleb128 0x10
	.long	.LASF77
	.byte	0x22
	.uleb128 0x10
	.long	.LASF78
	.byte	0x23
	.uleb128 0x10
	.long	.LASF79
	.byte	0x24
	.uleb128 0x10
	.long	.LASF80
	.byte	0x25
	.uleb128 0x10
	.long	.LASF81
	.byte	0x26
	.uleb128 0x10
	.long	.LASF82
	.byte	0x27
	.uleb128 0x10
	.long	.LASF83
	.byte	0x28
	.uleb128 0x10
	.long	.LASF84
	.byte	0x29
	.uleb128 0x10
	.long	.LASF85
	.byte	0x2a
	.uleb128 0x10
	.long	.LASF86
	.byte	0x2d
	.uleb128 0x10
	.long	.LASF87
	.byte	0x2f
	.byte	0
	.uleb128 0x7
	.long	.LASF88
	.byte	0x1
	.value	0x6aa
	.long	0x243
	.uleb128 0x11
	.value	0xe04
	.byte	0x1
	.value	0x935
	.long	0x457
	.uleb128 0xa
	.long	.LASF89
	.byte	0x1
	.value	0x937
	.long	0x46c
	.byte	0
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0x938
	.long	0x471
	.byte	0x20
	.uleb128 0xa
	.long	.LASF91
	.byte	0x1
	.value	0x939
	.long	0x481
	.byte	0x80
	.uleb128 0xa
	.long	.LASF92
	.byte	0x1
	.value	0x93a
	.long	0x471
	.byte	0xa0
	.uleb128 0x12
	.long	.LASF93
	.byte	0x1
	.value	0x93b
	.long	0x486
	.value	0x100
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.value	0x93c
	.long	0x471
	.value	0x120
	.uleb128 0x12
	.long	.LASF95
	.byte	0x1
	.value	0x93d
	.long	0x48b
	.value	0x180
	.uleb128 0x12
	.long	.LASF96
	.byte	0x1
	.value	0x93e
	.long	0x471
	.value	0x1a0
	.uleb128 0x12
	.long	.LASF97
	.byte	0x1
	.value	0x93f
	.long	0x490
	.value	0x200
	.uleb128 0x12
	.long	.LASF98
	.byte	0x1
	.value	0x940
	.long	0x495
	.value	0x220
	.uleb128 0x13
	.string	"IP"
	.byte	0x1
	.value	0x941
	.long	0x4ba
	.value	0x300
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.value	0x942
	.long	0x4bf
	.value	0x3f0
	.uleb128 0x12
	.long	.LASF100
	.byte	0x1
	.value	0x943
	.long	0x467
	.value	0xe00
	.byte	0
	.uleb128 0x14
	.long	0x467
	.long	0x467
	.uleb128 0x15
	.long	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.long	0xa9
	.uleb128 0x16
	.long	0x457
	.uleb128 0x14
	.long	0xa9
	.long	0x481
	.uleb128 0x15
	.long	0xb4
	.byte	0x17
	.byte	0
	.uleb128 0x16
	.long	0x457
	.uleb128 0x16
	.long	0x457
	.uleb128 0x16
	.long	0x457
	.uleb128 0x16
	.long	0x457
	.uleb128 0x14
	.long	0xa9
	.long	0x4a5
	.uleb128 0x15
	.long	0xb4
	.byte	0x37
	.byte	0
	.uleb128 0x14
	.long	0x4b5
	.long	0x4b5
	.uleb128 0x15
	.long	0xb4
	.byte	0xef
	.byte	0
	.uleb128 0x16
	.long	0x93
	.uleb128 0x16
	.long	0x4a5
	.uleb128 0x14
	.long	0xa9
	.long	0x4d0
	.uleb128 0x17
	.long	0xb4
	.value	0x283
	.byte	0
	.uleb128 0x7
	.long	.LASF101
	.byte	0x1
	.value	0x944
	.long	0x39b
	.uleb128 0x18
	.long	0x467
	.uleb128 0x14
	.long	0x4dc
	.long	0x4f1
	.uleb128 0x15
	.long	0xb4
	.byte	0x1
	.byte	0
	.uleb128 0x14
	.long	0x4dc
	.long	0x501
	.uleb128 0x15
	.long	0xb4
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.byte	0x10
	.byte	0x1
	.value	0xa94
	.long	0x53f
	.uleb128 0xa
	.long	.LASF102
	.byte	0x1
	.value	0xa95
	.long	0x467
	.byte	0
	.uleb128 0xa
	.long	.LASF103
	.byte	0x1
	.value	0xa96
	.long	0x467
	.byte	0x4
	.uleb128 0xa
	.long	.LASF104
	.byte	0x1
	.value	0xa97
	.long	0x467
	.byte	0x8
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0xa98
	.long	0x4dc
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.long	.LASF105
	.byte	0x1
	.value	0xa99
	.long	0x501
	.uleb128 0x14
	.long	0x4dc
	.long	0x55b
	.uleb128 0x15
	.long	0xb4
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.long	0x4dc
	.long	0x56b
	.uleb128 0x15
	.long	0xb4
	.byte	0x14
	.byte	0
	.uleb128 0x11
	.value	0x990
	.byte	0x1
	.value	0xbcc
	.long	0x75c
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0xbcd
	.long	0x771
	.byte	0
	.uleb128 0xa
	.long	.LASF106
	.byte	0x1
	.value	0xbce
	.long	0x467
	.byte	0x78
	.uleb128 0xa
	.long	.LASF107
	.byte	0x1
	.value	0xbcf
	.long	0x467
	.byte	0x7c
	.uleb128 0xa
	.long	.LASF108
	.byte	0x1
	.value	0xbd0
	.long	0x78b
	.byte	0x80
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1
	.value	0xbd1
	.long	0x467
	.value	0x108
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.value	0xbd2
	.long	0x795
	.value	0x10c
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1
	.value	0xbd3
	.long	0x467
	.value	0x114
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1
	.value	0xbd4
	.long	0x467
	.value	0x118
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1
	.value	0xbd5
	.long	0x467
	.value	0x11c
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1
	.value	0xbd6
	.long	0x467
	.value	0x120
	.uleb128 0x12
	.long	.LASF114
	.byte	0x1
	.value	0xbd7
	.long	0x467
	.value	0x124
	.uleb128 0x12
	.long	.LASF96
	.byte	0x1
	.value	0xbd8
	.long	0x7af
	.value	0x128
	.uleb128 0x12
	.long	.LASF115
	.byte	0x1
	.value	0xbd9
	.long	0x467
	.value	0x304
	.uleb128 0x12
	.long	.LASF116
	.byte	0x1
	.value	0xbda
	.long	0x467
	.value	0x308
	.uleb128 0x12
	.long	.LASF98
	.byte	0x1
	.value	0xbdb
	.long	0x7c9
	.value	0x30c
	.uleb128 0x12
	.long	.LASF117
	.byte	0x1
	.value	0xbdc
	.long	0x467
	.value	0x400
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.value	0xbdd
	.long	0x7e3
	.value	0x404
	.uleb128 0x12
	.long	.LASF118
	.byte	0x1
	.value	0xbde
	.long	0x4dc
	.value	0x428
	.uleb128 0x12
	.long	.LASF119
	.byte	0x1
	.value	0xbdf
	.long	0x7fd
	.value	0x42c
	.uleb128 0x12
	.long	.LASF120
	.byte	0x1
	.value	0xbe0
	.long	0x4dc
	.value	0x438
	.uleb128 0x12
	.long	.LASF121
	.byte	0x1
	.value	0xbe1
	.long	0x817
	.value	0x43c
	.uleb128 0x12
	.long	.LASF122
	.byte	0x1
	.value	0xbe2
	.long	0x467
	.value	0x500
	.uleb128 0x12
	.long	.LASF123
	.byte	0x1
	.value	0xbe3
	.long	0x821
	.value	0x504
	.uleb128 0x12
	.long	.LASF124
	.byte	0x1
	.value	0xbe4
	.long	0x467
	.value	0x510
	.uleb128 0x12
	.long	.LASF125
	.byte	0x1
	.value	0xbe5
	.long	0x82b
	.value	0x514
	.uleb128 0x12
	.long	.LASF126
	.byte	0x1
	.value	0xbe6
	.long	0x467
	.value	0x51c
	.uleb128 0x12
	.long	.LASF127
	.byte	0x1
	.value	0xbe7
	.long	0x467
	.value	0x520
	.uleb128 0x12
	.long	.LASF128
	.byte	0x1
	.value	0xbe8
	.long	0x835
	.value	0x524
	.uleb128 0x12
	.long	.LASF129
	.byte	0x1
	.value	0xbe9
	.long	0x467
	.value	0x578
	.uleb128 0x12
	.long	.LASF130
	.byte	0x1
	.value	0xbea
	.long	0x4dc
	.value	0x57c
	.uleb128 0x12
	.long	.LASF131
	.byte	0x1
	.value	0xbeb
	.long	0x467
	.value	0x580
	.uleb128 0x12
	.long	.LASF132
	.byte	0x1
	.value	0xbec
	.long	0x84f
	.value	0x584
	.uleb128 0x12
	.long	.LASF133
	.byte	0x1
	.value	0xbed
	.long	0x4dc
	.value	0x640
	.uleb128 0x12
	.long	.LASF134
	.byte	0x1
	.value	0xbee
	.long	0x869
	.value	0x644
	.uleb128 0x13
	.string	"RAM"
	.byte	0x1
	.value	0xbef
	.long	0x86e
	.value	0x900
	.byte	0
	.uleb128 0x14
	.long	0x4dc
	.long	0x76c
	.uleb128 0x15
	.long	0xb4
	.byte	0x1d
	.byte	0
	.uleb128 0x16
	.long	0x75c
	.uleb128 0x18
	.long	0x76c
	.uleb128 0x14
	.long	0x4dc
	.long	0x786
	.uleb128 0x15
	.long	0xb4
	.byte	0x21
	.byte	0
	.uleb128 0x16
	.long	0x776
	.uleb128 0x18
	.long	0x786
	.uleb128 0x16
	.long	0x4e1
	.uleb128 0x18
	.long	0x790
	.uleb128 0x14
	.long	0x4dc
	.long	0x7aa
	.uleb128 0x15
	.long	0xb4
	.byte	0x76
	.byte	0
	.uleb128 0x16
	.long	0x79a
	.uleb128 0x18
	.long	0x7aa
	.uleb128 0x14
	.long	0x4dc
	.long	0x7c4
	.uleb128 0x15
	.long	0xb4
	.byte	0x3c
	.byte	0
	.uleb128 0x16
	.long	0x7b4
	.uleb128 0x18
	.long	0x7c4
	.uleb128 0x14
	.long	0x4dc
	.long	0x7de
	.uleb128 0x15
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x16
	.long	0x7ce
	.uleb128 0x18
	.long	0x7de
	.uleb128 0x14
	.long	0x4dc
	.long	0x7f8
	.uleb128 0x15
	.long	0xb4
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.long	0x7e8
	.uleb128 0x18
	.long	0x7f8
	.uleb128 0x14
	.long	0x4dc
	.long	0x812
	.uleb128 0x15
	.long	0xb4
	.byte	0x30
	.byte	0
	.uleb128 0x16
	.long	0x802
	.uleb128 0x18
	.long	0x812
	.uleb128 0x16
	.long	0x7e8
	.uleb128 0x18
	.long	0x81c
	.uleb128 0x16
	.long	0x4e1
	.uleb128 0x18
	.long	0x826
	.uleb128 0x16
	.long	0x55b
	.uleb128 0x18
	.long	0x830
	.uleb128 0x14
	.long	0x4dc
	.long	0x84a
	.uleb128 0x15
	.long	0xb4
	.byte	0x2e
	.byte	0
	.uleb128 0x16
	.long	0x83a
	.uleb128 0x18
	.long	0x84a
	.uleb128 0x14
	.long	0x4dc
	.long	0x864
	.uleb128 0x15
	.long	0xb4
	.byte	0xae
	.byte	0
	.uleb128 0x16
	.long	0x854
	.uleb128 0x18
	.long	0x864
	.uleb128 0x14
	.long	0x53f
	.long	0x87e
	.uleb128 0x15
	.long	0xb4
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.long	.LASF135
	.byte	0x1
	.value	0xbf0
	.long	0x56b
	.uleb128 0x11
	.value	0x5b8
	.byte	0x1
	.value	0xbf1
	.long	0xa85
	.uleb128 0xa
	.long	.LASF136
	.byte	0x1
	.value	0xbf2
	.long	0x467
	.byte	0
	.uleb128 0xa
	.long	.LASF137
	.byte	0x1
	.value	0xbf3
	.long	0x467
	.byte	0x4
	.uleb128 0xa
	.long	.LASF138
	.byte	0x1
	.value	0xbf4
	.long	0x467
	.byte	0x8
	.uleb128 0xa
	.long	.LASF139
	.byte	0x1
	.value	0xbf5
	.long	0x467
	.byte	0xc
	.uleb128 0xa
	.long	.LASF140
	.byte	0x1
	.value	0xbf6
	.long	0x467
	.byte	0x10
	.uleb128 0xa
	.long	.LASF141
	.byte	0x1
	.value	0xbf7
	.long	0x467
	.byte	0x14
	.uleb128 0xa
	.long	.LASF142
	.byte	0x1
	.value	0xbf8
	.long	0x467
	.byte	0x18
	.uleb128 0xa
	.long	.LASF90
	.byte	0x1
	.value	0xbf9
	.long	0xa9a
	.byte	0x1c
	.uleb128 0x12
	.long	.LASF143
	.byte	0x1
	.value	0xbfa
	.long	0x467
	.value	0x100
	.uleb128 0x12
	.long	.LASF144
	.byte	0x1
	.value	0xbfb
	.long	0x467
	.value	0x104
	.uleb128 0x12
	.long	.LASF108
	.byte	0x1
	.value	0xbfc
	.long	0x4dc
	.value	0x108
	.uleb128 0x12
	.long	.LASF145
	.byte	0x1
	.value	0xbfd
	.long	0x467
	.value	0x10c
	.uleb128 0x12
	.long	.LASF146
	.byte	0x1
	.value	0xbfe
	.long	0x467
	.value	0x110
	.uleb128 0x12
	.long	.LASF94
	.byte	0x1
	.value	0xbff
	.long	0xaa4
	.value	0x114
	.uleb128 0x12
	.long	.LASF147
	.byte	0x1
	.value	0xc00
	.long	0x467
	.value	0x128
	.uleb128 0x12
	.long	.LASF148
	.byte	0x1
	.value	0xc01
	.long	0x467
	.value	0x12c
	.uleb128 0x12
	.long	.LASF96
	.byte	0x1
	.value	0xc02
	.long	0xabe
	.value	0x130
	.uleb128 0x12
	.long	.LASF115
	.byte	0x1
	.value	0xc03
	.long	0x467
	.value	0x304
	.uleb128 0x12
	.long	.LASF116
	.byte	0x1
	.value	0xc04
	.long	0x467
	.value	0x308
	.uleb128 0x12
	.long	.LASF98
	.byte	0x1
	.value	0xc05
	.long	0xad8
	.value	0x30c
	.uleb128 0x12
	.long	.LASF149
	.byte	0x1
	.value	0xc06
	.long	0x4dc
	.value	0x408
	.uleb128 0x12
	.long	.LASF150
	.byte	0x1
	.value	0xc07
	.long	0x4dc
	.value	0x40c
	.uleb128 0x12
	.long	.LASF99
	.byte	0x1
	.value	0xc08
	.long	0x4dc
	.value	0x410
	.uleb128 0x12
	.long	.LASF151
	.byte	0x1
	.value	0xc09
	.long	0x4dc
	.value	0x414
	.uleb128 0x12
	.long	.LASF152
	.byte	0x1
	.value	0xc0a
	.long	0x4dc
	.value	0x418
	.uleb128 0x12
	.long	.LASF153
	.byte	0x1
	.value	0xc0b
	.long	0x4dc
	.value	0x41c
	.uleb128 0x12
	.long	.LASF119
	.byte	0x1
	.value	0xc0c
	.long	0xaf2
	.value	0x420
	.uleb128 0x12
	.long	.LASF154
	.byte	0x1
	.value	0xc0d
	.long	0x467
	.value	0x518
	.uleb128 0x12
	.long	.LASF121
	.byte	0x1
	.value	0xc0e
	.long	0xafc
	.value	0x51c
	.uleb128 0x12
	.long	.LASF155
	.byte	0x1
	.value	0xc0f
	.long	0x467
	.value	0x528
	.uleb128 0x12
	.long	.LASF123
	.byte	0x1
	.value	0xc10
	.long	0xb06
	.value	0x52c
	.uleb128 0x12
	.long	.LASF156
	.byte	0x1
	.value	0xc11
	.long	0x467
	.value	0x538
	.uleb128 0x12
	.long	.LASF125
	.byte	0x1
	.value	0xc12
	.long	0xb10
	.value	0x53c
	.uleb128 0x12
	.long	.LASF157
	.byte	0x1
	.value	0xc13
	.long	0x467
	.value	0x55c
	.uleb128 0x12
	.long	.LASF128
	.byte	0x1
	.value	0xc14
	.long	0xb1a
	.value	0x560
	.uleb128 0x12
	.long	.LASF158
	.byte	0x1
	.value	0xc15
	.long	0x467
	.value	0x5b4
	.byte	0
	.uleb128 0x14
	.long	0x4dc
	.long	0xa95
	.uleb128 0x15
	.long	0xb4
	.byte	0x38
	.byte	0
	.uleb128 0x16
	.long	0xa85
	.uleb128 0x18
	.long	0xa95
	.uleb128 0x16
	.long	0x4f1
	.uleb128 0x18
	.long	0xa9f
	.uleb128 0x14
	.long	0x4dc
	.long	0xab9
	.uleb128 0x15
	.long	0xb4
	.byte	0x74
	.byte	0
	.uleb128 0x16
	.long	0xaa9
	.uleb128 0x18
	.long	0xab9
	.uleb128 0x14
	.long	0x4dc
	.long	0xad3
	.uleb128 0x15
	.long	0xb4
	.byte	0x3e
	.byte	0
	.uleb128 0x16
	.long	0xac3
	.uleb128 0x18
	.long	0xad3
	.uleb128 0x14
	.long	0x4dc
	.long	0xaed
	.uleb128 0x15
	.long	0xb4
	.byte	0x3d
	.byte	0
	.uleb128 0x16
	.long	0xadd
	.uleb128 0x18
	.long	0xaed
	.uleb128 0x16
	.long	0x7e8
	.uleb128 0x18
	.long	0xaf7
	.uleb128 0x16
	.long	0x7e8
	.uleb128 0x18
	.long	0xb01
	.uleb128 0x16
	.long	0x54b
	.uleb128 0x18
	.long	0xb0b
	.uleb128 0x16
	.long	0x55b
	.uleb128 0x18
	.long	0xb15
	.uleb128 0x7
	.long	.LASF159
	.byte	0x1
	.value	0xc16
	.long	0x88a
	.uleb128 0x16
	.long	0x9e
	.uleb128 0x9
	.long	.LASF160
	.byte	0x10
	.byte	0x1
	.value	0x101b
	.long	0xb72
	.uleb128 0xd
	.string	"irq"
	.byte	0x1
	.value	0x101c
	.long	0xca
	.byte	0
	.uleb128 0xa
	.long	.LASF161
	.byte	0x1
	.value	0x101d
	.long	0xca
	.byte	0x4
	.uleb128 0xa
	.long	.LASF162
	.byte	0x1
	.value	0x101e
	.long	0xbb
	.byte	0x8
	.uleb128 0xa
	.long	.LASF163
	.byte	0x1
	.value	0x101f
	.long	0xbb
	.byte	0xc
	.byte	0
	.uleb128 0x1a
	.long	.LASF164
	.byte	0x1
	.value	0x71c
	.byte	0x3
	.uleb128 0x1a
	.long	.LASF165
	.byte	0x1
	.value	0x720
	.byte	0x3
	.uleb128 0x1b
	.long	.LASF166
	.byte	0x1
	.value	0x9ff
	.byte	0x3
	.long	0xb9e
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x1
	.value	0x9ff
	.long	0x38f
	.byte	0
	.uleb128 0x1b
	.long	.LASF167
	.byte	0x1
	.value	0x9fb
	.byte	0x3
	.long	0xbb8
	.uleb128 0x1c
	.long	.LASF168
	.byte	0x1
	.value	0x9fb
	.long	0x38f
	.byte	0
	.uleb128 0x1d
	.long	.LASF169
	.byte	0x1
	.value	0x10f5
	.long	0x25
	.long	.LFB156
	.long	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0xc1d
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.value	0x10f5
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x1f
	.long	.LBB40
	.long	.LBE40-.LBB40
	.long	0xc13
	.uleb128 0x20
	.long	.LASF172
	.byte	0x1
	.value	0x10f7
	.long	0xb30
	.uleb128 0x5
	.byte	0x3
	.long	__isr__power_clock_isr_irq___COUNTER__.6556
	.uleb128 0x21
	.long	.LVL1
	.long	0x10e0
	.uleb128 0x21
	.long	.LVL2
	.long	0x10ec
	.byte	0
	.uleb128 0x21
	.long	.LVL3
	.long	0x10f8
	.byte	0
	.uleb128 0x1d
	.long	.LASF170
	.byte	0x1
	.value	0x1072
	.long	0x25
	.long	.LFB153
	.long	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0xc93
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.value	0x1072
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF171
	.byte	0x1
	.value	0x1072
	.long	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x1074
	.long	0xe2
	.long	.LLST0
	.uleb128 0x21
	.long	.LVL5
	.long	0x1104
	.uleb128 0x21
	.long	.LVL6
	.long	0x1110
	.uleb128 0x21
	.long	.LVL8
	.long	0x1110
	.uleb128 0x21
	.long	.LVL10
	.long	0x1110
	.uleb128 0x21
	.long	.LVL12
	.long	0x1110
	.byte	0
	.uleb128 0x1d
	.long	.LASF174
	.byte	0x1
	.value	0x1041
	.long	0x25
	.long	.LFB152
	.long	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0xd9a
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.value	0x1041
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF171
	.byte	0x1
	.value	0x1041
	.long	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x1043
	.long	0xe2
	.long	.LLST1
	.uleb128 0x23
	.long	.LASF175
	.byte	0x1
	.value	0x1045
	.long	0xd9a
	.long	.LLST2
	.uleb128 0x24
	.long	.LASF184
	.byte	0x1
	.value	0x106a
	.long	.L13
	.uleb128 0x1f
	.long	.LBB41
	.long	.LBE41-.LBB41
	.long	0xd75
	.uleb128 0x23
	.long	.LASF176
	.byte	0x1
	.value	0x1054
	.long	0xe2
	.long	.LLST3
	.uleb128 0x25
	.long	0xb72
	.long	.LBB42
	.long	.LBE42-.LBB42
	.byte	0x1
	.value	0x105b
	.uleb128 0x25
	.long	0xb7b
	.long	.LBB44
	.long	.LBE44-.LBB44
	.byte	0x1
	.value	0x105c
	.uleb128 0x25
	.long	0xb72
	.long	.LBB46
	.long	.LBE46-.LBB46
	.byte	0x1
	.value	0x105d
	.uleb128 0x26
	.long	0xb84
	.long	.LBB48
	.long	.LBE48-.LBB48
	.byte	0x1
	.value	0x1063
	.long	0xd62
	.uleb128 0x27
	.long	0xb91
	.long	.LLST4
	.byte	0
	.uleb128 0x21
	.long	.LVL20
	.long	0x111c
	.uleb128 0x21
	.long	.LVL24
	.long	0x10f8
	.byte	0
	.uleb128 0x21
	.long	.LVL14
	.long	0x1104
	.uleb128 0x21
	.long	.LVL15
	.long	0x1110
	.uleb128 0x21
	.long	.LVL17
	.long	0x1110
	.uleb128 0x21
	.long	.LVL19
	.long	0x1110
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF177
	.uleb128 0x28
	.long	.LASF210
	.byte	0x1
	.value	0x10c1
	.long	.LFB155
	.long	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0xebf
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.value	0x10c1
	.long	0xbb
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x29
	.string	"pof"
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST5
	.uleb128 0x23
	.long	.LASF178
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST6
	.uleb128 0x23
	.long	.LASF179
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST7
	.uleb128 0x29
	.string	"hf"
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST8
	.uleb128 0x29
	.string	"lf"
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST9
	.uleb128 0x23
	.long	.LASF180
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST10
	.uleb128 0x23
	.long	.LASF181
	.byte	0x1
	.value	0x10c3
	.long	0xd6
	.long	.LLST11
	.uleb128 0x29
	.string	"dev"
	.byte	0x1
	.value	0x10c4
	.long	0x181
	.long	.LLST12
	.uleb128 0x1f
	.long	.LBB50
	.long	.LBE50-.LBB50
	.long	0xe67
	.uleb128 0x2a
	.string	"err"
	.byte	0x1
	.value	0x10de
	.long	0x25
	.uleb128 0x21
	.long	.LVL36
	.long	0xc1d
	.byte	0
	.uleb128 0x1f
	.long	.LBB51
	.long	.LBE51-.LBB51
	.long	0xeac
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.value	0x10e7
	.long	0x25
	.long	.LLST13
	.uleb128 0x26
	.long	0xb9e
	.long	.LBB52
	.long	.LBE52-.LBB52
	.byte	0x1
	.value	0x10ee
	.long	0xea2
	.uleb128 0x27
	.long	0xbab
	.long	.LLST14
	.byte	0
	.uleb128 0x21
	.long	.LVL37
	.long	0xc93
	.byte	0
	.uleb128 0x21
	.long	.LVL28
	.long	0x1128
	.uleb128 0x2b
	.long	.LVL43
	.long	0x1134
	.byte	0
	.uleb128 0x1d
	.long	.LASF182
	.byte	0x1
	.value	0x108a
	.long	0x25
	.long	.LFB154
	.long	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0xff4
	.uleb128 0x1e
	.string	"dev"
	.byte	0x1
	.value	0x108a
	.long	0x181
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x22
	.long	.LASF171
	.byte	0x1
	.value	0x108a
	.long	0x1ac
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x23
	.long	.LASF183
	.byte	0x1
	.value	0x108c
	.long	0xe2
	.long	.LLST15
	.uleb128 0x23
	.long	.LASF176
	.byte	0x1
	.value	0x108d
	.long	0xe2
	.long	.LLST16
	.uleb128 0x23
	.long	.LASF173
	.byte	0x1
	.value	0x108e
	.long	0xe2
	.long	.LLST17
	.uleb128 0x24
	.long	.LASF185
	.byte	0x1
	.value	0x10ba
	.long	.L54
	.uleb128 0x25
	.long	0xb72
	.long	.LBB54
	.long	.LBE54-.LBB54
	.byte	0x1
	.value	0x109e
	.uleb128 0x25
	.long	0xb7b
	.long	.LBB56
	.long	.LBE56-.LBB56
	.byte	0x1
	.value	0x109f
	.uleb128 0x25
	.long	0xb72
	.long	.LBB58
	.long	.LBE58-.LBB58
	.byte	0x1
	.value	0x10a0
	.uleb128 0x26
	.long	0xb84
	.long	.LBB60
	.long	.LBE60-.LBB60
	.byte	0x1
	.value	0x10a6
	.long	0xf81
	.uleb128 0x27
	.long	0xb91
	.long	.LLST18
	.byte	0
	.uleb128 0x1f
	.long	.LBB62
	.long	.LBE62-.LBB62
	.long	0xfc6
	.uleb128 0x29
	.string	"err"
	.byte	0x1
	.value	0x10ac
	.long	0x25
	.long	.LLST19
	.uleb128 0x26
	.long	0xb9e
	.long	.LBB63
	.long	.LBE63-.LBB63
	.byte	0x1
	.value	0x10b5
	.long	0xfbc
	.uleb128 0x27
	.long	0xbab
	.long	.LLST20
	.byte	0
	.uleb128 0x21
	.long	.LVL56
	.long	0xc93
	.byte	0
	.uleb128 0x21
	.long	.LVL45
	.long	0x1104
	.uleb128 0x21
	.long	.LVL46
	.long	0x1110
	.uleb128 0x21
	.long	.LVL48
	.long	0x1110
	.uleb128 0x21
	.long	.LVL49
	.long	0x111c
	.uleb128 0x21
	.long	.LVL54
	.long	0x10f8
	.byte	0
	.uleb128 0x2c
	.long	.LASF186
	.byte	0x1
	.value	0x62f
	.long	0x1001
	.byte	0x1
	.uleb128 0x18
	.long	0x25
	.uleb128 0x2c
	.long	.LASF187
	.byte	0x1
	.value	0x630
	.long	0x1001
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF188
	.byte	0x1
	.value	0x631
	.long	0x1001
	.byte	0x1
	.uleb128 0x2c
	.long	.LASF189
	.byte	0x1
	.value	0x632
	.long	0x1001
	.byte	0x1
	.uleb128 0x20
	.long	.LASF190
	.byte	0x1
	.value	0x103e
	.long	0xd6
	.uleb128 0x5
	.byte	0x3
	.long	m16src_ref
	.uleb128 0x20
	.long	.LASF191
	.byte	0x1
	.value	0x103f
	.long	0xd6
	.uleb128 0x5
	.byte	0x3
	.long	m16src_grd
	.uleb128 0x20
	.long	.LASF192
	.byte	0x1
	.value	0x1040
	.long	0xd6
	.uleb128 0x5
	.byte	0x3
	.long	k32src_initialized
	.uleb128 0x20
	.long	.LASF193
	.byte	0x1
	.value	0x10fc
	.long	0x1075
	.uleb128 0x5
	.byte	0x3
	.long	_m16src_clock_control_api
	.uleb128 0x18
	.long	0x20f
	.uleb128 0x20
	.long	.LASF194
	.byte	0x1
	.value	0x1103
	.long	0x12a
	.uleb128 0x5
	.byte	0x3
	.long	__config_clock_nrf5_m16src
	.uleb128 0x20
	.long	.LASF195
	.byte	0x1
	.value	0x1105
	.long	0xf5
	.uleb128 0x5
	.byte	0x3
	.long	__device_clock_nrf5_m16src
	.uleb128 0x20
	.long	.LASF196
	.byte	0x1
	.value	0x1109
	.long	0x1075
	.uleb128 0x5
	.byte	0x3
	.long	_k32src_clock_control_api
	.uleb128 0x20
	.long	.LASF197
	.byte	0x1
	.value	0x1112
	.long	0x12a
	.uleb128 0x5
	.byte	0x3
	.long	__config_clock_nrf5_k32src
	.uleb128 0x20
	.long	.LASF198
	.byte	0x1
	.value	0x1114
	.long	0xf5
	.uleb128 0x5
	.byte	0x3
	.long	__device_clock_nrf5_k32src
	.uleb128 0x2d
	.long	.LASF211
	.byte	0x1
	.value	0xa4d
	.long	0xb2b
	.uleb128 0x2e
	.long	.LASF199
	.long	.LASF199
	.byte	0x1
	.value	0x1021
	.uleb128 0x2e
	.long	.LASF200
	.long	.LASF200
	.byte	0x1
	.value	0x1026
	.uleb128 0x2e
	.long	.LASF201
	.long	.LASF201
	.byte	0x1
	.value	0x1022
	.uleb128 0x2e
	.long	.LASF202
	.long	.LASF202
	.byte	0x1
	.value	0x1014
	.uleb128 0x2e
	.long	.LASF203
	.long	.LASF203
	.byte	0x1
	.value	0x1015
	.uleb128 0x2e
	.long	.LASF204
	.long	.LASF204
	.byte	0x1
	.value	0x1023
	.uleb128 0x2e
	.long	.LASF205
	.long	.LASF205
	.byte	0x1
	.value	0x175
	.uleb128 0x2e
	.long	.LASF206
	.long	.LASF206
	.byte	0x1
	.value	0x176
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL8-1
	.value	0x1
	.byte	0x50
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL11
	.long	.LVL12-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST1:
	.long	.LVL14
	.long	.LVL15-1
	.value	0x1
	.byte	0x50
	.long	.LVL16
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST2:
	.long	.LVL19
	.long	.LVL25
	.value	0x6
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL21
	.long	.LVL24-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL22
	.long	.LVL23
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL29
	.long	.LVL42
	.value	0x5
	.byte	0x77
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL30
	.long	.LVL31
	.value	0x1
	.byte	0x50
	.long	.LVL31
	.long	.LFE155
	.value	0x2
	.byte	0x91
	.sleb128 -33
	.long	0
	.long	0
.LLST7:
	.long	.LVL32
	.long	.LVL33
	.value	0x1
	.byte	0x50
	.long	.LVL33
	.long	.LFE155
	.value	0x2
	.byte	0x91
	.sleb128 -34
	.long	0
	.long	0
.LLST8:
	.long	.LVL32
	.long	.LVL36-1
	.value	0x5
	.byte	0x71
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL32
	.long	.LVL35
	.value	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL33
	.long	.LVL36-1
	.value	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL34
	.long	.LVL41
	.value	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL27
	.long	.LVL40
	.value	0x1
	.byte	0x53
	.long	.LVL40
	.long	.LFE155
	.value	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL37
	.long	.LVL39
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST14:
	.long	.LVL38
	.long	.LVL39
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL51
	.long	.LVL55
	.value	0x1
	.byte	0x53
	.long	.LVL55
	.long	.LVL58
	.value	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
.LLST16:
	.long	.LVL50
	.long	.LVL54-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST17:
	.long	.LVL45
	.long	.LVL46-1
	.value	0x1
	.byte	0x50
	.long	.LVL47
	.long	.LVL48-1
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST18:
	.long	.LVL52
	.long	.LVL53
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL56
	.long	.LVL58
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST20:
	.long	.LVL57
	.long	.LVL58
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB156
	.long	.LFE156-.LFB156
	.long	.LFB153
	.long	.LFE153-.LFB153
	.long	.LFB152
	.long	.LFE152-.LFB152
	.long	.LFB155
	.long	.LFE155-.LFB155
	.long	.LFB154
	.long	.LFE154-.LFB154
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB156
	.long	.LFE156
	.long	.LFB153
	.long	.LFE153
	.long	.LFB152
	.long	.LFE152
	.long	.LFB155
	.long	.LFE155
	.long	.LFB154
	.long	.LFE154
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF5:
	.string	"short int"
.LASF95:
	.string	"ICPR"
.LASF158:
	.string	"LFRCMODE"
.LASF182:
	.string	"_k32src_start"
.LASF85:
	.string	"CRYPTOCELL_IRQn"
.LASF29:
	.string	"config_info"
.LASF62:
	.string	"RTC1_IRQn"
.LASF25:
	.string	"device_config"
.LASF35:
	.string	"Reset_IRQn"
.LASF7:
	.string	"__uint8_t"
.LASF64:
	.string	"COMP_LPCOMP_IRQn"
.LASF83:
	.string	"UARTE1_IRQn"
.LASF180:
	.string	"done"
.LASF27:
	.string	"init"
.LASF181:
	.string	"ctto"
.LASF12:
	.string	"long long unsigned int"
.LASF79:
	.string	"RTC2_IRQn"
.LASF63:
	.string	"QDEC_IRQn"
.LASF53:
	.string	"TIMER0_IRQn"
.LASF103:
	.string	"POWERSET"
.LASF18:
	.string	"s32_t"
.LASF105:
	.string	"POWER_RAM_Type"
.LASF140:
	.string	"TASKS_CAL"
.LASF93:
	.string	"ISPR"
.LASF47:
	.string	"UARTE0_UART0_IRQn"
.LASF49:
	.string	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn"
.LASF1:
	.string	"long long int"
.LASF3:
	.string	"signed char"
.LASF188:
	.string	"_INIT_LEVEL_POST_KERNEL"
.LASF74:
	.string	"PDM_IRQn"
.LASF75:
	.string	"MWU_IRQn"
.LASF84:
	.string	"QSPI_IRQn"
.LASF45:
	.string	"POWER_CLOCK_IRQn"
.LASF115:
	.string	"INTENSET"
.LASF205:
	.string	"krhino_intrpt_enter"
.LASF132:
	.string	"RESERVED12"
.LASF134:
	.string	"RESERVED13"
.LASF87:
	.string	"SPIM3_IRQn"
.LASF135:
	.string	"NRF_POWER_Type"
.LASF72:
	.string	"TIMER4_IRQn"
.LASF9:
	.string	"long int"
.LASF211:
	.string	"ITM_RxBuffer"
.LASF157:
	.string	"TRACECONFIG"
.LASF57:
	.string	"TEMP_IRQn"
.LASF162:
	.string	"func"
.LASF76:
	.string	"PWM1_IRQn"
.LASF198:
	.string	"__device_clock_nrf5_k32src"
.LASF142:
	.string	"TASKS_CTSTOP"
.LASF46:
	.string	"RADIO_IRQn"
.LASF143:
	.string	"EVENTS_HFCLKSTARTED"
.LASF65:
	.string	"SWI0_EGU0_IRQn"
.LASF173:
	.string	"imask"
.LASF111:
	.string	"EVENTS_SLEEPEXIT"
.LASF51:
	.string	"GPIOTE_IRQn"
.LASF209:
	.string	"/home/stone/Documents/pca"
.LASF37:
	.string	"HardFault_IRQn"
.LASF200:
	.string	"_irq_priority_set"
.LASF122:
	.string	"SYSTEMOFF"
.LASF172:
	.string	"__isr__power_clock_isr_irq___COUNTER__"
.LASF10:
	.string	"__uint32_t"
.LASF106:
	.string	"TASKS_CONSTLAT"
.LASF39:
	.string	"BusFault_IRQn"
.LASF167:
	.string	"NVIC_SetPendingIRQ"
.LASF210:
	.string	"_power_clock_isr"
.LASF97:
	.string	"IABR"
.LASF164:
	.string	"__WFE"
.LASF0:
	.string	"unsigned int"
.LASF179:
	.string	"hf_stat"
.LASF82:
	.string	"USBD_IRQn"
.LASF38:
	.string	"MemoryManagement_IRQn"
.LASF194:
	.string	"__config_clock_nrf5_m16src"
.LASF11:
	.string	"long unsigned int"
.LASF66:
	.string	"SWI1_EGU1_IRQn"
.LASF20:
	.string	"u32_t"
.LASF127:
	.string	"GPREGRET2"
.LASF26:
	.string	"name"
.LASF202:
	.string	"irq_lock"
.LASF113:
	.string	"EVENTS_USBREMOVED"
.LASF41:
	.string	"SVCall_IRQn"
.LASF24:
	.string	"device"
.LASF191:
	.string	"m16src_grd"
.LASF183:
	.string	"lf_clk_src"
.LASF102:
	.string	"POWER"
.LASF33:
	.string	"clock_control_driver_api"
.LASF201:
	.string	"_arch_irq_enable"
.LASF59:
	.string	"ECB_IRQn"
.LASF178:
	.string	"hf_intenset"
.LASF184:
	.string	"hf_already_started"
.LASF34:
	.string	"get_rate"
.LASF110:
	.string	"EVENTS_SLEEPENTER"
.LASF32:
	.string	"clock_control_get"
.LASF44:
	.string	"SysTick_IRQn"
.LASF40:
	.string	"UsageFault_IRQn"
.LASF129:
	.string	"DCDCEN"
.LASF149:
	.string	"HFCLKRUN"
.LASF168:
	.string	"IRQn"
.LASF19:
	.string	"u8_t"
.LASF16:
	.string	"sizetype"
.LASF203:
	.string	"irq_unlock"
.LASF126:
	.string	"GPREGRET"
.LASF54:
	.string	"TIMER1_IRQn"
.LASF28:
	.string	"device_pm_control"
.LASF152:
	.string	"LFCLKSTAT"
.LASF160:
	.string	"_isr_list"
.LASF163:
	.string	"param"
.LASF133:
	.string	"MAINREGSTATUS"
.LASF145:
	.string	"EVENTS_DONE"
.LASF68:
	.string	"SWI3_EGU3_IRQn"
.LASF139:
	.string	"TASKS_LFCLKSTOP"
.LASF206:
	.string	"krhino_intrpt_exit"
.LASF146:
	.string	"EVENTS_CTTO"
.LASF204:
	.string	"_arch_irq_disable"
.LASF91:
	.string	"ICER"
.LASF192:
	.string	"k32src_initialized"
.LASF174:
	.string	"_m16src_start"
.LASF151:
	.string	"LFCLKRUN"
.LASF52:
	.string	"SAADC_IRQn"
.LASF170:
	.string	"_m16src_stop"
.LASF50:
	.string	"NFCT_IRQn"
.LASF147:
	.string	"EVENTS_CTSTARTED"
.LASF90:
	.string	"RESERVED0"
.LASF108:
	.string	"RESERVED1"
.LASF94:
	.string	"RESERVED2"
.LASF96:
	.string	"RESERVED3"
.LASF98:
	.string	"RESERVED4"
.LASF99:
	.string	"RESERVED5"
.LASF159:
	.string	"NRF_CLOCK_Type"
.LASF121:
	.string	"RESERVED7"
.LASF123:
	.string	"RESERVED8"
.LASF125:
	.string	"RESERVED9"
.LASF177:
	.string	"_Bool"
.LASF14:
	.string	"int32_t"
.LASF55:
	.string	"TIMER2_IRQn"
.LASF81:
	.string	"FPU_IRQn"
.LASF169:
	.string	"_clock_control_init"
.LASF58:
	.string	"RNG_IRQn"
.LASF89:
	.string	"ISER"
.LASF101:
	.string	"NVIC_Type"
.LASF67:
	.string	"SWI2_EGU2_IRQn"
.LASF185:
	.string	"lf_already_started"
.LASF156:
	.string	"CTIV"
.LASF144:
	.string	"EVENTS_LFCLKSTARTED"
.LASF175:
	.string	"blocking"
.LASF190:
	.string	"m16src_ref"
.LASF60:
	.string	"CCM_AAR_IRQn"
.LASF88:
	.string	"IRQn_Type"
.LASF166:
	.string	"NVIC_ClearPendingIRQ"
.LASF119:
	.string	"RESERVED6"
.LASF15:
	.string	"uint32_t"
.LASF43:
	.string	"PendSV_IRQn"
.LASF80:
	.string	"I2S_IRQn"
.LASF30:
	.string	"clock_control_subsys_t"
.LASF2:
	.string	"long double"
.LASF77:
	.string	"PWM2_IRQn"
.LASF78:
	.string	"SPIM2_SPIS2_SPI2_IRQn"
.LASF17:
	.string	"char"
.LASF86:
	.string	"PWM3_IRQn"
.LASF31:
	.string	"clock_control"
.LASF21:
	.string	"config"
.LASF69:
	.string	"SWI4_EGU4_IRQn"
.LASF131:
	.string	"DCDCEN0"
.LASF124:
	.string	"POFCON"
.LASF193:
	.string	"_m16src_clock_control_api"
.LASF176:
	.string	"intenset"
.LASF36:
	.string	"NonMaskableInt_IRQn"
.LASF8:
	.string	"__int32_t"
.LASF61:
	.string	"WDT_IRQn"
.LASF71:
	.string	"TIMER3_IRQn"
.LASF197:
	.string	"__config_clock_nrf5_k32src"
.LASF118:
	.string	"RAMSTATUS"
.LASF186:
	.string	"_INIT_LEVEL_PRE_KERNEL_1"
.LASF187:
	.string	"_INIT_LEVEL_PRE_KERNEL_2"
.LASF208:
	.string	"src/nrf5_power_clock.c"
.LASF112:
	.string	"EVENTS_USBDETECTED"
.LASF6:
	.string	"short unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF22:
	.string	"driver_api"
.LASF107:
	.string	"TASKS_LOWPWR"
.LASF155:
	.string	"HFXODEBOUNCE"
.LASF114:
	.string	"EVENTS_USBPWRRDY"
.LASF56:
	.string	"RTC0_IRQn"
.LASF128:
	.string	"RESERVED10"
.LASF207:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF199:
	.string	"os_hwi_set_handler"
.LASF189:
	.string	"_INIT_LEVEL_APPLICATION"
.LASF48:
	.string	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn"
.LASF196:
	.string	"_k32src_clock_control_api"
.LASF171:
	.string	"sub_system"
.LASF23:
	.string	"driver_data"
.LASF13:
	.string	"uint8_t"
.LASF130:
	.string	"RESERVED11"
.LASF161:
	.string	"flags"
.LASF104:
	.string	"POWERCLR"
.LASF92:
	.string	"RSERVED1"
.LASF100:
	.string	"STIR"
.LASF136:
	.string	"TASKS_HFCLKSTART"
.LASF73:
	.string	"PWM0_IRQn"
.LASF150:
	.string	"HFCLKSTAT"
.LASF137:
	.string	"TASKS_HFCLKSTOP"
.LASF138:
	.string	"TASKS_LFCLKSTART"
.LASF153:
	.string	"LFCLKSRCCOPY"
.LASF42:
	.string	"DebugMonitor_IRQn"
.LASF165:
	.string	"__SEV"
.LASF120:
	.string	"USBREGSTATUS"
.LASF141:
	.string	"TASKS_CTSTART"
.LASF109:
	.string	"EVENTS_POFWARN"
.LASF154:
	.string	"LFCLKSRC"
.LASF195:
	.string	"__device_clock_nrf5_m16src"
.LASF117:
	.string	"RESETREAS"
.LASF116:
	.string	"INTENCLR"
.LASF148:
	.string	"EVENTS_CTSTOPPED"
.LASF70:
	.string	"SWI5_EGU5_IRQn"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
