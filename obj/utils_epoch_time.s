	.file	"utils_epoch_time.c"
	.text
.Ltext0:
	.section	.text.unlikely._ntohl,"ax",@progbits
.LCOLDB0:
	.section	.text._ntohl,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely._ntohl
.Ltext_cold0:
	.section	.text._ntohl
	.type	_ntohl, @function
_ntohl:
.LFB3:
	.file 1 "framework/protocol/linkkit/iotkit/base/utils//misc/utils_epoch_time.c"
	.loc 1 104 0
	.cfi_startproc
.LVL0:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	bswap	%eax
.LVL1:
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	.loc 1 106 0
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ntohl, .-_ntohl
	.section	.text.unlikely._ntohl
.LCOLDE0:
	.section	.text._ntohl
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"udp create error!"
.LC2:
	.string	"fd = HAL_UDP_connect('%s':%d) = %d"
.LC3:
	.string	"udp write error!"
.LC4:
	.string	"udp read error!"
	.section	.text.unlikely._get_timestamp_from_ntp,"ax",@progbits
.LCOLDB5:
	.section	.text._get_timestamp_from_ntp,"ax",@progbits
.LHOTB5:
	.type	_get_timestamp_from_ntp, @function
_get_timestamp_from_ntp:
.LFB6:
	.loc 1 186 0
	.cfi_startproc
.LVL2:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 191 0
	movl	$12, %ecx
	.loc 1 186 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	%eax, %esi
	.loc 1 191 0
	leal	-1576(%ebp), %edi
	.loc 1 186 0
	subl	$1588, %esp
	.loc 1 186 0
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
.LVL3:
	.loc 1 191 0
	rep stosl
.LVL4:
	.loc 1 193 0
	leal	-1528(%ebp), %edi
	movl	$375, %ecx
	rep stosl
	.loc 1 195 0
	pushl	$0
	pushl	$0
	call	HAL_UDP_create
.LVL5:
	.loc 1 196 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L4
	.loc 1 197 0
	pushl	$.LC1
	pushl	$2
	pushl	$197
	pushl	$__FUNCTION__.3375
	call	LITE_syslog
.LVL6:
	.loc 1 198 0
	addl	$16, %esp
	xorl	%eax, %eax
	xorl	%edx, %edx
	jmp	.L5
.LVL7:
.L4:
	movl	%eax, %ebx
	leal	-1576(%ebp), %edx
.LVL8:
	.loc 1 201 0
	pushl	%eax
	pushl	$123
	pushl	%esi
	pushl	%ebx
	movl	%edx, -1580(%ebp)
	call	HAL_UDP_connect
.LVL9:
	.loc 1 202 0
	addl	$12, %esp
	pushl	%eax
	pushl	$123
	pushl	%esi
	pushl	$.LC2
	pushl	$4
	pushl	$202
	pushl	$__FUNCTION__.3375
	call	LITE_syslog
.LVL10:
.LBB41:
.LBB42:
	.loc 1 118 0
	movl	-1580(%ebp), %edx
	xorl	%eax, %eax
	movl	$12, %ecx
.LBE42:
.LBE41:
	.loc 1 210 0
	addl	$32, %esp
.LBB45:
.LBB43:
	.loc 1 118 0
	movl	%edx, %edi
	rep stosl
.LVL11:
.LBE43:
.LBE45:
	.loc 1 210 0
	pushl	$0
	pushl	$48
	pushl	%edx
	pushl	%ebx
.LBB46:
.LBB44:
	.loc 1 127 0
	movl	$-100401125, -1576(%ebp)
	movl	$256, -1572(%ebp)
	movl	$256, -1568(%ebp)
	movl	$-2139182461, -1536(%ebp)
.LVL12:
.LBE44:
.LBE46:
	.loc 1 210 0
	call	HAL_UDP_send
.LVL13:
	.loc 1 211 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L6
	.loc 1 212 0
	pushl	$.LC3
	pushl	$2
	pushl	$212
	jmp	.L11
.L6:
	.loc 1 216 0
	leal	-1528(%ebp), %eax
.LVL14:
	pushl	$3000
	pushl	$1500
	pushl	%eax
	pushl	%ebx
	call	HAL_UDP_recv
.LVL15:
	.loc 1 217 0
	addl	$16, %esp
	testl	%eax, %eax
	jns	.L8
	.loc 1 218 0
	pushl	$.LC4
	pushl	$2
	pushl	$218
.L11:
	pushl	$__FUNCTION__.3375
	.loc 1 189 0
	xorl	%esi, %esi
.LVL16:
	xorl	%edi, %edi
	.loc 1 218 0
	call	LITE_syslog
.LVL17:
	.loc 1 219 0
	addl	$16, %esp
	jmp	.L7
.LVL18:
.L8:
.LBB47:
.LBB48:
	.loc 1 163 0
	movl	-1488(%ebp), %eax
.LVL19:
	call	_ntohl
.LVL20:
	movl	%eax, %edx
.LVL21:
	.loc 1 164 0
	movl	-1484(%ebp), %eax
.LVL22:
	call	_ntohl
.LVL23:
	.loc 1 181 0
	leal	2085978496(%edx), %edi
.LBE48:
.LBE47:
	.loc 1 222 0
	movl	%eax, %edx
	shrl	$10, %eax
.LVL24:
	movl	%eax, %esi
.LVL25:
	shrl	$12, %edx
.LVL26:
	movl	$1000, %ecx
	addl	$32768, %esi
	movl	%edx, %eax
	xorl	%edx, %edx
	shrl	$16, %esi
.LBB50:
.LBB49:
	.loc 1 181 0
	movl	%edi, -1580(%ebp)
.LVL27:
.LBE49:
.LBE50:
	.loc 1 222 0
	xorl	%edi, %edi
	imull	$759, %esi, %esi
	subl	%esi, %eax
	divl	%ecx
	movl	%eax, %esi
	movl	-1580(%ebp), %eax
	mull	%ecx
	addl	%eax, %esi
	adcl	%edx, %edi
.LVL28:
.L7:
	.loc 1 225 0
	subl	$12, %esp
	pushl	%ebx
	call	HAL_UDP_close
.LVL29:
	.loc 1 226 0
	addl	$16, %esp
	movl	%esi, %eax
	movl	%edi, %edx
.LVL30:
.L5:
	.loc 1 227 0
	movl	-28(%ebp), %ebx
	xorl	%gs:20, %ebx
	je	.L9
	call	__stack_chk_fail
.LVL31:
.L9:
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
.LFE6:
	.size	_get_timestamp_from_ntp, .-_get_timestamp_from_ntp
	.section	.text.unlikely._get_timestamp_from_ntp
.LCOLDE5:
	.section	.text._get_timestamp_from_ntp
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"ntp%d.aliyun.com"
.LC7:
	.string	"%llu"
	.section	.text.unlikely.utils_get_epoch_time_from_ntp,"ax",@progbits
.LCOLDB8:
	.section	.text.utils_get_epoch_time_from_ntp,"ax",@progbits
.LHOTB8:
	.globl	utils_get_epoch_time_from_ntp
	.type	utils_get_epoch_time_from_ntp, @function
utils_get_epoch_time_from_ntp:
.LFB7:
	.loc 1 230 0
	.cfi_startproc
.LVL32:
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 231 0
	movl	$5, %ecx
	.loc 1 230 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	.loc 1 231 0
	leal	-48(%ebp), %edi
	.loc 1 236 0
	leal	-48(%ebp), %ebx
	.loc 1 230 0
	subl	$60, %esp
	.loc 1 230 0
	movl	8(%ebp), %eax
	movl	%eax, -60(%ebp)
	movl	%gs:20, %eax
	movl	%eax, -28(%ebp)
	xorl	%eax, %eax
	.loc 1 231 0
	rep stosl
.LVL33:
	.loc 1 235 0
	movl	$1, %ecx
.LVL34:
.L16:
	.loc 1 236 0
	pushl	%ecx
	pushl	$.LC6
	pushl	$20
	pushl	%ebx
	movl	%ecx, -64(%ebp)
	call	HAL_Snprintf
.LVL35:
	.loc 1 237 0
	movl	%ebx, %eax
	call	_get_timestamp_from_ntp
.LVL36:
	movl	%eax, %esi
	.loc 1 238 0
	movl	%edx, %eax
	addl	$16, %esp
	orl	%esi, %eax
	.loc 1 237 0
	movl	%edx, %edi
.LVL37:
	.loc 1 238 0
	movl	-64(%ebp), %ecx
	je	.L14
	.loc 1 239 0
	subl	$12, %esp
	pushl	%edx
	pushl	%esi
	pushl	$.LC7
	pushl	12(%ebp)
	pushl	-60(%ebp)
	call	HAL_Snprintf
.LVL38:
	.loc 1 240 0
	addl	$32, %esp
	jmp	.L15
.L14:
	.loc 1 235 0 discriminator 2
	incl	%ecx
.LVL39:
	cmpl	$8, %ecx
	jne	.L16
.LVL40:
.L15:
	.loc 1 245 0
	movl	%edi, %edx
	movl	%esi, %eax
	movl	-28(%ebp), %edi
	xorl	%gs:20, %edi
	je	.L17
	call	__stack_chk_fail
.LVL41:
.L17:
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
.LVL42:
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	utils_get_epoch_time_from_ntp, .-utils_get_epoch_time_from_ntp
	.section	.text.unlikely.utils_get_epoch_time_from_ntp
.LCOLDE8:
	.section	.text.utils_get_epoch_time_from_ntp
.LHOTE8:
	.section	.rodata.str1.1
.LC9:
	.string	"ret = utils_get_epoch_time_from_ntp() = %llu"
.LC10:
	.string	"buf = '%s'"
	.section	.text.unlikely.demo_epoch_time,"ax",@progbits
.LCOLDB11:
	.section	.text.demo_epoch_time,"ax",@progbits
.LHOTB11:
	.globl	demo_epoch_time
	.type	demo_epoch_time, @function
demo_epoch_time:
.LFB8:
	.loc 1 248 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	.loc 1 252 0
	movl	$16, %ecx
	.loc 1 248 0
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%ebx
	.cfi_offset 7, -12
	.cfi_offset 3, -16
	.loc 1 252 0
	leal	-76(%ebp), %ebx
	.loc 1 248 0
	subl	$88, %esp
	.loc 1 248 0
	movl	%gs:20, %eax
	movl	%eax, -12(%ebp)
	xorl	%eax, %eax
.LVL43:
	.loc 1 252 0
	movl	%ebx, %edi
	rep stosl
	.loc 1 253 0
	pushl	$64
	pushl	%ebx
	call	utils_get_epoch_time_from_ntp
.LVL44:
	.loc 1 255 0
	popl	%ecx
	popl	%edi
	pushl	%edx
	pushl	%eax
	pushl	$.LC9
	pushl	$4
	pushl	$255
	pushl	$__FUNCTION__.3392
	call	LITE_syslog
.LVL45:
	.loc 1 256 0
	addl	$20, %esp
	pushl	%ebx
	pushl	$.LC10
	pushl	$4
	pushl	$256
	pushl	$__FUNCTION__.3392
	call	LITE_syslog
.LVL46:
	.loc 1 257 0
	addl	$32, %esp
	movl	-12(%ebp), %eax
	xorl	%gs:20, %eax
	je	.L21
	call	__stack_chk_fail
.LVL47:
.L21:
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
.LFE8:
	.size	demo_epoch_time, .-demo_epoch_time
	.section	.text.unlikely.demo_epoch_time
.LCOLDE11:
	.section	.text.demo_epoch_time
.LHOTE11:
	.section	.rodata.__FUNCTION__.3392,"a",@progbits
	.align 4
	.type	__FUNCTION__.3392, @object
	.size	__FUNCTION__.3392, 16
__FUNCTION__.3392:
	.string	"demo_epoch_time"
	.section	.rodata.__FUNCTION__.3375,"a",@progbits
	.align 4
	.type	__FUNCTION__.3375, @object
	.size	__FUNCTION__.3375, 24
__FUNCTION__.3375:
	.string	"_get_timestamp_from_ntp"
	.text
.Letext0:
	.section	.text.unlikely._ntohl
.Letext_cold0:
	.file 2 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./framework/protocol/linkkit/iotkit/sdk-encap/iot_import.h"
	.file 5 "./framework/protocol/linkkit/iotkit/base/log/LITE-log/lite-log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x664
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF65
	.byte	0xc
	.long	.LASF66
	.long	.LASF67
	.long	.Ldebug_ranges0+0x38
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF5
	.byte	0x2
	.byte	0x1d
	.long	0x37
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
	.uleb128 0x3
	.long	.LASF6
	.byte	0x2
	.byte	0x41
	.long	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x3
	.long	.LASF9
	.byte	0x2
	.byte	0x5b
	.long	0x77
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.long	.LASF11
	.byte	0x2
	.byte	0xc8
	.long	0x89
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
	.byte	0x3
	.byte	0x18
	.long	0x2c
	.uleb128 0x3
	.long	.LASF14
	.byte	0x3
	.byte	0x30
	.long	0x53
	.uleb128 0x3
	.long	.LASF15
	.byte	0x3
	.byte	0x3c
	.long	0x6c
	.uleb128 0x3
	.long	.LASF16
	.byte	0x3
	.byte	0x43
	.long	0x7e
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.long	.LASF17
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF19
	.uleb128 0x5
	.byte	0x4
	.long	0x37
	.uleb128 0x5
	.byte	0x4
	.long	0xca
	.uleb128 0x5
	.byte	0x4
	.long	0xea
	.uleb128 0x6
	.long	0xca
	.uleb128 0x7
	.long	.LASF68
	.byte	0x4
	.long	0x90
	.byte	0x5
	.byte	0x22
	.long	0x124
	.uleb128 0x8
	.long	.LASF20
	.byte	0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x1
	.uleb128 0x8
	.long	.LASF22
	.byte	0x2
	.uleb128 0x8
	.long	.LASF23
	.byte	0x3
	.uleb128 0x8
	.long	.LASF24
	.byte	0x4
	.uleb128 0x8
	.long	.LASF25
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x8
	.byte	0x1
	.byte	0x38
	.long	0x149
	.uleb128 0xa
	.long	.LASF26
	.byte	0x1
	.byte	0x39
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF27
	.byte	0x1
	.byte	0x3a
	.long	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x8
	.byte	0x1
	.byte	0x3d
	.long	0x16e
	.uleb128 0xa
	.long	.LASF30
	.byte	0x1
	.byte	0x3e
	.long	0xa2
	.byte	0
	.uleb128 0xa
	.long	.LASF31
	.byte	0x1
	.byte	0x3f
	.long	0xa2
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x24
	.byte	0x1
	.byte	0x42
	.long	0x1e5
	.uleb128 0xb
	.string	"li"
	.byte	0x1
	.byte	0x43
	.long	0x89
	.byte	0
	.uleb128 0xb
	.string	"vn"
	.byte	0x1
	.byte	0x44
	.long	0x89
	.byte	0x4
	.uleb128 0xa
	.long	.LASF33
	.byte	0x1
	.byte	0x45
	.long	0x89
	.byte	0x8
	.uleb128 0xa
	.long	.LASF34
	.byte	0x1
	.byte	0x46
	.long	0x89
	.byte	0xc
	.uleb128 0xa
	.long	.LASF35
	.byte	0x1
	.byte	0x47
	.long	0x89
	.byte	0x10
	.uleb128 0xa
	.long	.LASF36
	.byte	0x1
	.byte	0x48
	.long	0x89
	.byte	0x14
	.uleb128 0xa
	.long	.LASF37
	.byte	0x1
	.byte	0x49
	.long	0x89
	.byte	0x18
	.uleb128 0xa
	.long	.LASF38
	.byte	0x1
	.byte	0x4a
	.long	0x89
	.byte	0x1c
	.uleb128 0xa
	.long	.LASF39
	.byte	0x1
	.byte	0x4b
	.long	0x89
	.byte	0x20
	.byte	0
	.uleb128 0xc
	.long	.LASF40
	.byte	0x1
	.byte	0x57
	.long	0x89
	.byte	0x1
	.long	0x21a
	.uleb128 0xd
	.byte	0x4
	.byte	0x1
	.byte	0x59
	.long	0x210
	.uleb128 0xe
	.string	"i"
	.byte	0x1
	.byte	0x5a
	.long	0xa2
	.uleb128 0xe
	.string	"c"
	.byte	0x1
	.byte	0x5b
	.long	0x21a
	.byte	0
	.uleb128 0xf
	.string	"u"
	.byte	0x1
	.byte	0x5c
	.long	0x1f5
	.byte	0
	.uleb128 0x10
	.long	0x97
	.long	0x22a
	.uleb128 0x11
	.long	0xd1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF41
	.byte	0x1
	.byte	0x62
	.long	0xa2
	.byte	0x1
	.long	0x244
	.uleb128 0x12
	.string	"h"
	.byte	0x1
	.byte	0x62
	.long	0xa2
	.byte	0
	.uleb128 0xc
	.long	.LASF42
	.byte	0x1
	.byte	0x67
	.long	0xa2
	.byte	0x1
	.long	0x25e
	.uleb128 0x12
	.string	"n"
	.byte	0x1
	.byte	0x67
	.long	0xa2
	.byte	0
	.uleb128 0x13
	.long	0x244
	.long	.LFB3
	.long	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b
	.uleb128 0x14
	.long	0x254
	.long	.LLST0
	.byte	0
	.uleb128 0xc
	.long	.LASF43
	.byte	0x1
	.byte	0x6c
	.long	0x89
	.byte	0x1
	.long	0x2c5
	.uleb128 0x15
	.long	.LASF44
	.byte	0x1
	.byte	0x6c
	.long	0xd8
	.uleb128 0x12
	.string	"len"
	.byte	0x1
	.byte	0x6c
	.long	0x2c5
	.uleb128 0x16
	.long	.LASF45
	.byte	0x1
	.byte	0x6e
	.long	0x2cb
	.uleb128 0xf
	.string	"now"
	.byte	0x1
	.byte	0x6f
	.long	0x124
	.uleb128 0x17
	.long	.LASF46
	.long	0x2eb
	.long	.LASF43
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x89
	.uleb128 0x10
	.long	0xa2
	.long	0x2db
	.uleb128 0x11
	.long	0xd1
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.long	0xea
	.long	0x2eb
	.uleb128 0x11
	.long	0xd1
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.long	0x2db
	.uleb128 0x18
	.long	.LASF69
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.long	0x328
	.uleb128 0x15
	.long	.LASF47
	.byte	0x1
	.byte	0x85
	.long	0xd8
	.uleb128 0x12
	.string	"tv"
	.byte	0x1
	.byte	0x85
	.long	0x328
	.uleb128 0x16
	.long	.LASF48
	.byte	0x1
	.byte	0x88
	.long	0x16e
	.uleb128 0x16
	.long	.LASF49
	.byte	0x1
	.byte	0x89
	.long	0x149
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x124
	.uleb128 0x19
	.long	.LASF70
	.byte	0x1
	.byte	0xb9
	.long	0xad
	.long	.LFB6
	.long	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a8
	.uleb128 0x1a
	.long	.LASF53
	.byte	0x1
	.byte	0xb9
	.long	0xe4
	.long	.LLST1
	.uleb128 0x1b
	.string	"fd"
	.byte	0x1
	.byte	0xbb
	.long	0xb8
	.long	.LLST2
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xbc
	.long	0x89
	.long	.LLST3
	.uleb128 0x1c
	.long	.LASF50
	.byte	0x1
	.byte	0xbd
	.long	0xad
	.long	.LLST4
	.uleb128 0xf
	.string	"tv"
	.byte	0x1
	.byte	0xbe
	.long	0x124
	.uleb128 0x1d
	.long	.LASF51
	.byte	0x1
	.byte	0xbf
	.long	0x4a8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1584
	.uleb128 0x1c
	.long	.LASF52
	.byte	0x1
	.byte	0xc0
	.long	0x89
	.long	.LLST5
	.uleb128 0x1d
	.long	.LASF47
	.byte	0x1
	.byte	0xc1
	.long	0x4b8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1536
	.uleb128 0x1e
	.long	.LASF46
	.long	0x4d9
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3375
	.uleb128 0x1f
	.long	.LASF71
	.byte	0x1
	.byte	0xe0
	.long	.L7
	.uleb128 0x20
	.long	0x27b
	.long	.LBB41
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcc
	.long	0x40e
	.uleb128 0x14
	.long	0x296
	.long	.LLST6
	.uleb128 0x14
	.long	0x28b
	.long	.LLST7
	.uleb128 0x21
	.long	.Ldebug_ranges0+0
	.uleb128 0x22
	.long	0x2a1
	.uleb128 0x22
	.long	0x2ac
	.uleb128 0x22
	.long	0x2b7
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	0x2f0
	.long	.LBB47
	.long	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xdd
	.long	0x456
	.uleb128 0x14
	.long	0x307
	.long	.LLST8
	.uleb128 0x14
	.long	0x2fc
	.long	.LLST9
	.uleb128 0x21
	.long	.Ldebug_ranges0+0x20
	.uleb128 0x22
	.long	0x311
	.uleb128 0x22
	.long	0x31c
	.uleb128 0x23
	.long	.LVL20
	.long	0x244
	.uleb128 0x23
	.long	.LVL23
	.long	0x244
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LVL5
	.long	0x60b
	.uleb128 0x23
	.long	.LVL6
	.long	0x617
	.uleb128 0x23
	.long	.LVL9
	.long	0x622
	.uleb128 0x23
	.long	.LVL10
	.long	0x617
	.uleb128 0x23
	.long	.LVL13
	.long	0x62e
	.uleb128 0x23
	.long	.LVL15
	.long	0x63a
	.uleb128 0x23
	.long	.LVL17
	.long	0x617
	.uleb128 0x23
	.long	.LVL29
	.long	0x646
	.uleb128 0x23
	.long	.LVL31
	.long	0x652
	.byte	0
	.uleb128 0x10
	.long	0x37
	.long	0x4b8
	.uleb128 0x11
	.long	0xd1
	.byte	0x2f
	.byte	0
	.uleb128 0x10
	.long	0x37
	.long	0x4c9
	.uleb128 0x24
	.long	0xd1
	.value	0x5db
	.byte	0
	.uleb128 0x10
	.long	0xea
	.long	0x4d9
	.uleb128 0x11
	.long	0xd1
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.long	0x4c9
	.uleb128 0x25
	.long	.LASF72
	.byte	0x1
	.byte	0xe5
	.long	0xad
	.long	.LFB7
	.long	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f
	.uleb128 0x26
	.long	.LASF54
	.byte	0x1
	.byte	0xe5
	.long	0xde
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.string	"len"
	.byte	0x1
	.byte	0xe5
	.long	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x1d
	.long	.LASF55
	.byte	0x1
	.byte	0xe7
	.long	0x56f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1c
	.long	.LASF56
	.byte	0x1
	.byte	0xe8
	.long	0x89
	.long	.LLST10
	.uleb128 0x1c
	.long	.LASF57
	.byte	0x1
	.byte	0xe9
	.long	0xad
	.long	.LLST11
	.uleb128 0x23
	.long	.LVL35
	.long	0x65b
	.uleb128 0x28
	.long	.LVL36
	.long	0x32e
	.long	0x55c
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x23
	.long	.LVL38
	.long	0x65b
	.uleb128 0x23
	.long	.LVL41
	.long	0x652
	.byte	0
	.uleb128 0x10
	.long	0xca
	.long	0x57f
	.uleb128 0x11
	.long	0xd1
	.byte	0x13
	.byte	0
	.uleb128 0x2a
	.long	.LASF73
	.byte	0x1
	.byte	0xf7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5e6
	.uleb128 0x2b
	.string	"buf"
	.byte	0x1
	.byte	0xf9
	.long	0x5e6
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1b
	.string	"ret"
	.byte	0x1
	.byte	0xfa
	.long	0xad
	.long	.LLST12
	.uleb128 0x1e
	.long	.LASF46
	.long	0x606
	.uleb128 0x5
	.byte	0x3
	.long	__FUNCTION__.3392
	.uleb128 0x23
	.long	.LVL44
	.long	0x4de
	.uleb128 0x23
	.long	.LVL45
	.long	0x617
	.uleb128 0x23
	.long	.LVL46
	.long	0x617
	.uleb128 0x23
	.long	.LVL47
	.long	0x652
	.byte	0
	.uleb128 0x10
	.long	0xca
	.long	0x5f6
	.uleb128 0x11
	.long	0xd1
	.byte	0x3f
	.byte	0
	.uleb128 0x10
	.long	0xea
	.long	0x606
	.uleb128 0x11
	.long	0xd1
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.long	0x5f6
	.uleb128 0x2c
	.long	.LASF58
	.long	.LASF58
	.byte	0x4
	.value	0x19e
	.uleb128 0x2d
	.long	.LASF59
	.long	.LASF59
	.byte	0x5
	.byte	0x34
	.uleb128 0x2c
	.long	.LASF60
	.long	.LASF60
	.byte	0x4
	.value	0x1a9
	.uleb128 0x2c
	.long	.LASF61
	.long	.LASF61
	.byte	0x4
	.value	0x1ce
	.uleb128 0x2c
	.long	.LASF62
	.long	.LASF62
	.byte	0x4
	.value	0x1f2
	.uleb128 0x2c
	.long	.LASF63
	.long	.LASF63
	.byte	0x4
	.value	0x218
	.uleb128 0x2e
	.long	.LASF74
	.long	.LASF74
	.uleb128 0x2c
	.long	.LASF64
	.long	.LASF64
	.byte	0x4
	.value	0x112
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.long	.LFE3
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL2
	.long	.LVL3
	.value	0x1
	.byte	0x50
	.long	.LVL3
	.long	.LVL16
	.value	0x1
	.byte	0x56
	.long	.LVL16
	.long	.LVL18
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	.LVL18
	.long	.LVL25
	.value	0x1
	.byte	0x56
	.long	.LVL25
	.long	.LFE6
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6-1
	.value	0x1
	.byte	0x50
	.long	.LVL7
	.long	.LVL8
	.value	0x1
	.byte	0x50
	.long	.LVL8
	.long	.LVL30
	.value	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL9
	.value	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.long	.LVL9
	.long	.LVL10-1
	.value	0x1
	.byte	0x50
	.long	.LVL13
	.long	.LVL14
	.value	0x1
	.byte	0x50
	.long	.LVL15
	.long	.LVL17-1
	.value	0x1
	.byte	0x50
	.long	.LVL18
	.long	.LVL19
	.value	0x1
	.byte	0x50
	.long	0
	.long	0
.LLST4:
	.long	.LVL3
	.long	.LVL28
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL28
	.long	.LVL30
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST5:
	.long	.LVL4
	.long	.LVL30
	.value	0x3
	.byte	0x8
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL10
	.long	.LVL12
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+923
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL12
	.value	0x3
	.byte	0x75
	.sleb128 -1580
	.long	0
	.long	0
.LLST8:
	.long	.LVL18
	.long	.LVL27
	.value	0x6
	.byte	0xf2
	.long	.Ldebug_info0+898
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL18
	.long	.LVL27
	.value	0x4
	.byte	0x75
	.sleb128 -1528
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL33
	.long	.LVL34
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL34
	.long	.LVL35-1
	.value	0x1
	.byte	0x51
	.long	.LVL35-1
	.long	.LVL39
	.value	0x3
	.byte	0x91
	.sleb128 -72
	.long	.LVL39
	.long	.LVL40
	.value	0x1
	.byte	0x51
	.long	0
	.long	0
.LLST11:
	.long	.LVL33
	.long	.LVL37
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL37
	.long	.LVL39
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	.LVL39
	.long	.LVL40
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL40
	.long	.LVL42
	.value	0x6
	.byte	0x56
	.byte	0x93
	.uleb128 0x4
	.byte	0x57
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
.LLST12:
	.long	.LVL43
	.long	.LVL44
	.value	0xa
	.byte	0x9e
	.uleb128 0x8
	.quad	0
	.long	.LVL44
	.long	.LVL45-1
	.value	0x6
	.byte	0x50
	.byte	0x93
	.uleb128 0x4
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB41
	.long	.LBE41
	.long	.LBB45
	.long	.LBE45
	.long	.LBB46
	.long	.LBE46
	.long	0
	.long	0
	.long	.LBB47
	.long	.LBE47
	.long	.LBB50
	.long	.LBE50
	.long	0
	.long	0
	.long	.LFB3
	.long	.LFE3
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF29:
	.string	"ntptime_t"
.LASF36:
	.string	"prec"
.LASF15:
	.string	"uint64_t"
.LASF25:
	.string	"LOG_DEBUG_LEVEL"
.LASF28:
	.string	"timeval_t"
.LASF5:
	.string	"__uint8_t"
.LASF23:
	.string	"LOG_WARNING_LEVEL"
.LASF34:
	.string	"stratum"
.LASF10:
	.string	"long long unsigned int"
.LASF64:
	.string	"HAL_Snprintf"
.LASF61:
	.string	"HAL_UDP_send"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF71:
	.string	"do_exit"
.LASF4:
	.string	"long int"
.LASF50:
	.string	"retval"
.LASF67:
	.string	"/home/stone/Documents/pca"
.LASF49:
	.string	"xmttime"
.LASF57:
	.string	"time_in_ms"
.LASF6:
	.string	"__uint32_t"
.LASF11:
	.string	"__intptr_t"
.LASF53:
	.string	"host"
.LASF12:
	.string	"unsigned int"
.LASF30:
	.string	"coarse"
.LASF32:
	.string	"ntp_packet_t"
.LASF7:
	.string	"long unsigned int"
.LASF69:
	.string	"_rfc1305_parse_timeval"
.LASF46:
	.string	"__FUNCTION__"
.LASF72:
	.string	"utils_get_epoch_time_from_ntp"
.LASF21:
	.string	"LOG_CRIT_LEVEL"
.LASF45:
	.string	"data"
.LASF3:
	.string	"short unsigned int"
.LASF59:
	.string	"LITE_syslog"
.LASF68:
	.string	"_LOGLEVEL"
.LASF16:
	.string	"intptr_t"
.LASF56:
	.string	"ntp_server_index"
.LASF54:
	.string	"copy"
.LASF51:
	.string	"write_buf"
.LASF60:
	.string	"HAL_UDP_connect"
.LASF35:
	.string	"poll"
.LASF19:
	.string	"sizetype"
.LASF17:
	.string	"long double"
.LASF66:
	.string	"src/utils_epoch_time.c"
.LASF26:
	.string	"tv_sec"
.LASF44:
	.string	"packet"
.LASF20:
	.string	"LOG_EMERG_LEVEL"
.LASF9:
	.string	"__uint64_t"
.LASF52:
	.string	"write_len"
.LASF55:
	.string	"ntp_server"
.LASF70:
	.string	"_get_timestamp_from_ntp"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"delay"
.LASF2:
	.string	"short int"
.LASF62:
	.string	"HAL_UDP_recv"
.LASF22:
	.string	"LOG_ERR_LEVEL"
.LASF74:
	.string	"__stack_chk_fail"
.LASF27:
	.string	"tv_usec"
.LASF65:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF14:
	.string	"uint32_t"
.LASF48:
	.string	"ntp_packet"
.LASF24:
	.string	"LOG_INFO_LEVEL"
.LASF18:
	.string	"char"
.LASF33:
	.string	"mode"
.LASF47:
	.string	"read_buf"
.LASF63:
	.string	"HAL_UDP_close"
.LASF73:
	.string	"demo_epoch_time"
.LASF38:
	.string	"disp"
.LASF39:
	.string	"refid"
.LASF40:
	.string	"_check_endian"
.LASF13:
	.string	"uint8_t"
.LASF31:
	.string	"fine"
.LASF42:
	.string	"_ntohl"
.LASF41:
	.string	"_htonl"
.LASF58:
	.string	"HAL_UDP_create"
.LASF43:
	.string	"_get_packet"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
