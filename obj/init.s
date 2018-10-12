	.file	"init.c"
	.text
.Ltext0:
	.section	.text.unlikely.lwip_init,"ax",@progbits
.LCOLDB0:
	.section	.text.lwip_init,"ax",@progbits
.LHOTB0:
	.section	.text.unlikely.lwip_init
.Ltext_cold0:
	.section	.text.lwip_init
	.globl	lwip_init
	.type	lwip_init, @function
lwip_init:
.LFB17:
	.file 1 "kernel/protocols/net/core/init.c"
	.loc 1 348 0
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$8, %esp
	.loc 1 356 0
	call	sys_init
.LVL0:
	.loc 1 358 0
	call	mem_init
.LVL1:
	.loc 1 359 0
	call	memp_init
.LVL2:
	.loc 1 361 0
	call	netif_init
.LVL3:
	.loc 1 372 0
	call	udp_init
.LVL4:
	.loc 1 375 0
	call	tcp_init
.LVL5:
	.loc 1 378 0
	call	igmp_init
.LVL6:
	.loc 1 381 0
	call	dns_init
.LVL7:
	.loc 1 390 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	.loc 1 388 0
	jmp	sys_timeouts_init
.LVL8:
	.cfi_endproc
.LFE17:
	.size	lwip_init, .-lwip_init
	.section	.text.unlikely.lwip_init
.LCOLDE0:
	.section	.text.lwip_init
.LHOTE0:
	.text
.Letext0:
	.section	.text.unlikely.lwip_init
.Letext_cold0:
	.file 2 "./kernel/protocols/net/include/lwip/sys.h"
	.file 3 "./kernel/protocols/net/include/lwip/mem.h"
	.file 4 "./kernel/protocols/net/include/lwip/memp.h"
	.file 5 "./kernel/protocols/net/include/lwip/netif.h"
	.file 6 "./kernel/protocols/net/include/lwip/udp.h"
	.file 7 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
	.file 8 "./kernel/protocols/net/include/lwip/igmp.h"
	.file 9 "./kernel/protocols/net/include/lwip/dns.h"
	.file 10 "./kernel/protocols/net/include/lwip/timeouts.h"
	.file 11 "./include/aos/log.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x16a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF24
	.byte	0xc
	.long	.LASF25
	.long	.LASF26
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
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF7
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF14
	.uleb128 0x4
	.long	.LASF27
	.byte	0x1
	.value	0x15b
	.long	.LFB17
	.long	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0xfd
	.uleb128 0x5
	.long	.LVL0
	.long	0x108
	.uleb128 0x5
	.long	.LVL1
	.long	0x114
	.uleb128 0x5
	.long	.LVL2
	.long	0x11f
	.uleb128 0x5
	.long	.LVL3
	.long	0x12a
	.uleb128 0x5
	.long	.LVL4
	.long	0x136
	.uleb128 0x5
	.long	.LVL5
	.long	0x141
	.uleb128 0x5
	.long	.LVL6
	.long	0x14c
	.uleb128 0x5
	.long	.LVL7
	.long	0x157
	.uleb128 0x6
	.long	.LVL8
	.long	0x162
	.byte	0
	.uleb128 0x7
	.long	.LASF28
	.byte	0xb
	.byte	0x17
	.long	0x2c
	.uleb128 0x8
	.long	.LASF15
	.long	.LASF15
	.byte	0x2
	.value	0x176
	.uleb128 0x9
	.long	.LASF16
	.long	.LASF16
	.byte	0x3
	.byte	0x47
	.uleb128 0x9
	.long	.LASF17
	.long	.LASF17
	.byte	0x4
	.byte	0x8b
	.uleb128 0x8
	.long	.LASF18
	.long	.LASF18
	.byte	0x5
	.value	0x169
	.uleb128 0x9
	.long	.LASF19
	.long	.LASF19
	.byte	0x6
	.byte	0x9c
	.uleb128 0x9
	.long	.LASF20
	.long	.LASF20
	.byte	0x7
	.byte	0x3d
	.uleb128 0x9
	.long	.LASF21
	.long	.LASF21
	.byte	0x8
	.byte	0x5a
	.uleb128 0x9
	.long	.LASF22
	.long	.LASF22
	.byte	0x9
	.byte	0x60
	.uleb128 0x9
	.long	.LASF23
	.long	.LASF23
	.byte	0xa
	.byte	0x60
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.section	.debug_aranges,"",@progbits
	.long	0x1c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"long long int"
.LASF17:
	.string	"memp_init"
.LASF0:
	.string	"unsigned int"
.LASF25:
	.string	"src/init.c"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short int"
.LASF9:
	.string	"long long unsigned int"
.LASF16:
	.string	"mem_init"
.LASF27:
	.string	"lwip_init"
.LASF23:
	.string	"sys_timeouts_init"
.LASF4:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF18:
	.string	"netif_init"
.LASF26:
	.string	"/home/stone/Documents/pca"
.LASF7:
	.string	"long int"
.LASF22:
	.string	"dns_init"
.LASF13:
	.string	"double"
.LASF14:
	.string	"_Bool"
.LASF6:
	.string	"short unsigned int"
.LASF3:
	.string	"signed char"
.LASF2:
	.string	"long double"
.LASF19:
	.string	"udp_init"
.LASF24:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF12:
	.string	"float"
.LASF15:
	.string	"sys_init"
.LASF20:
	.string	"tcp_init"
.LASF28:
	.string	"aos_log_level"
.LASF21:
	.string	"igmp_init"
.LASF10:
	.string	"sizetype"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
