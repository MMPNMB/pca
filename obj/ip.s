	.file	"ip.c"
	.text
.Ltext0:
	.globl	ip_data
	.section	.bss.ip_data,"aw",@nobits
	.align 4
	.type	ip_data, @object
	.size	ip_data, 24
ip_data:
	.zero	24
	.text
.Letext0:
	.file 1 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
	.file 2 "./kernel/protocols/net/include/lwip/ip4_addr.h"
	.file 3 "./kernel/protocols/net/include/lwip/ip_addr.h"
	.file 4 "./kernel/protocols/net/include/lwip/err.h"
	.file 5 "./kernel/protocols/net/include/lwip/pbuf.h"
	.file 6 "./kernel/protocols/net/include/lwip/netif.h"
	.file 7 "./kernel/protocols/net/include/lwip/prot/ip4.h"
	.file 8 "./kernel/protocols/net/include/lwip/ip.h"
	.file 9 "./include/aos/log.h"
	.file 10 "kernel/protocols/net/core/ip.c"
	.file 11 "./kernel/protocols/net/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x54a
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF95
	.byte	0xc
	.long	.LASF96
	.long	.LASF97
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x5
	.byte	0x4
	.long	0x80
	.uleb128 0x6
	.long	0x73
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF13
	.uleb128 0x7
	.long	.LASF14
	.byte	0x1
	.byte	0x31
	.long	0x40
	.uleb128 0x7
	.long	.LASF15
	.byte	0x1
	.byte	0x32
	.long	0x39
	.uleb128 0x7
	.long	.LASF16
	.byte	0x1
	.byte	0x33
	.long	0x4e
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x35
	.long	0x5c
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF18
	.uleb128 0x8
	.long	.LASF19
	.byte	0x4
	.byte	0x2
	.byte	0x35
	.long	0xdf
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0x36
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF20
	.byte	0x4
	.byte	0x2
	.byte	0x3f
	.long	0xf8
	.uleb128 0x9
	.long	.LASF21
	.byte	0x2
	.byte	0x40
	.long	0xb4
	.byte	0
	.byte	0
	.uleb128 0x7
	.long	.LASF22
	.byte	0x2
	.byte	0x49
	.long	0xc6
	.uleb128 0x7
	.long	.LASF23
	.byte	0x2
	.byte	0x4a
	.long	0xdf
	.uleb128 0x7
	.long	.LASF24
	.byte	0x3
	.byte	0xe1
	.long	0xf8
	.uleb128 0x7
	.long	.LASF25
	.byte	0x4
	.byte	0x39
	.long	0x9e
	.uleb128 0x8
	.long	.LASF26
	.byte	0x10
	.byte	0x5
	.byte	0x9d
	.long	0x185
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.byte	0x9f
	.long	0x185
	.byte	0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.byte	0xa2
	.long	0x71
	.byte	0x4
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.byte	0xab
	.long	0xa9
	.byte	0x8
	.uleb128 0xa
	.string	"len"
	.byte	0x5
	.byte	0xae
	.long	0xa9
	.byte	0xa
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.byte	0xb1
	.long	0x93
	.byte	0xc
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.byte	0xb4
	.long	0x93
	.byte	0xd
	.uleb128 0xa
	.string	"ref"
	.byte	0x5
	.byte	0xc2
	.long	0xa9
	.byte	0xe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x124
	.uleb128 0xb
	.byte	0x4
	.long	0x24
	.byte	0xb
	.byte	0x32
	.long	0x1f2
	.uleb128 0xc
	.long	.LASF32
	.byte	0
	.uleb128 0xc
	.long	.LASF33
	.byte	0x1
	.uleb128 0xc
	.long	.LASF34
	.byte	0x2
	.uleb128 0xc
	.long	.LASF35
	.byte	0x3
	.uleb128 0xc
	.long	.LASF36
	.byte	0x4
	.uleb128 0xc
	.long	.LASF37
	.byte	0x5
	.uleb128 0xc
	.long	.LASF38
	.byte	0x6
	.uleb128 0xc
	.long	.LASF39
	.byte	0x7
	.uleb128 0xc
	.long	.LASF40
	.byte	0x8
	.uleb128 0xc
	.long	.LASF41
	.byte	0x9
	.uleb128 0xc
	.long	.LASF42
	.byte	0xa
	.uleb128 0xc
	.long	.LASF43
	.byte	0xb
	.uleb128 0xc
	.long	.LASF44
	.byte	0xc
	.uleb128 0xc
	.long	.LASF45
	.byte	0xd
	.uleb128 0xc
	.long	.LASF46
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	.LASF50
	.byte	0x4
	.long	0x24
	.byte	0x6
	.byte	0x6b
	.long	0x215
	.uleb128 0xc
	.long	.LASF47
	.byte	0
	.uleb128 0xc
	.long	.LASF48
	.byte	0x1
	.uleb128 0xc
	.long	.LASF49
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x4
	.long	0x24
	.byte	0x6
	.byte	0x8f
	.long	0x232
	.uleb128 0xc
	.long	.LASF52
	.byte	0
	.uleb128 0xc
	.long	.LASF53
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x238
	.uleb128 0x8
	.long	.LASF54
	.byte	0x54
	.byte	0x6
	.byte	0xe5
	.long	0x35c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x6
	.byte	0xe7
	.long	0x232
	.byte	0
	.uleb128 0x9
	.long	.LASF55
	.byte	0x6
	.byte	0xeb
	.long	0x10e
	.byte	0x4
	.uleb128 0x9
	.long	.LASF56
	.byte	0x6
	.byte	0xec
	.long	0x10e
	.byte	0x8
	.uleb128 0xa
	.string	"gw"
	.byte	0x6
	.byte	0xed
	.long	0x10e
	.byte	0xc
	.uleb128 0x9
	.long	.LASF57
	.byte	0x6
	.byte	0xf8
	.long	0x35c
	.byte	0x10
	.uleb128 0x9
	.long	.LASF58
	.byte	0x6
	.byte	0xfe
	.long	0x381
	.byte	0x14
	.uleb128 0xe
	.long	.LASF59
	.byte	0x6
	.value	0x103
	.long	0x3b6
	.byte	0x18
	.uleb128 0xe
	.long	.LASF60
	.byte	0x6
	.value	0x10e
	.long	0x3db
	.byte	0x1c
	.uleb128 0xe
	.long	.LASF61
	.byte	0x6
	.value	0x11b
	.long	0x71
	.byte	0x20
	.uleb128 0xe
	.long	.LASF62
	.byte	0x6
	.value	0x11d
	.long	0x421
	.byte	0x24
	.uleb128 0xe
	.long	.LASF63
	.byte	0x6
	.value	0x125
	.long	0x93
	.byte	0x2c
	.uleb128 0xe
	.long	.LASF64
	.byte	0x6
	.value	0x129
	.long	0x7a
	.byte	0x30
	.uleb128 0xf
	.string	"mtu"
	.byte	0x6
	.value	0x12f
	.long	0xa9
	.byte	0x34
	.uleb128 0xe
	.long	.LASF65
	.byte	0x6
	.value	0x131
	.long	0x93
	.byte	0x36
	.uleb128 0xe
	.long	.LASF66
	.byte	0x6
	.value	0x133
	.long	0x431
	.byte	0x37
	.uleb128 0xe
	.long	.LASF31
	.byte	0x6
	.value	0x135
	.long	0x93
	.byte	0x3d
	.uleb128 0xe
	.long	.LASF67
	.byte	0x6
	.value	0x137
	.long	0x441
	.byte	0x3e
	.uleb128 0xf
	.string	"num"
	.byte	0x6
	.value	0x139
	.long	0x93
	.byte	0x40
	.uleb128 0xe
	.long	.LASF68
	.byte	0x6
	.value	0x147
	.long	0x3f7
	.byte	0x44
	.uleb128 0xe
	.long	.LASF69
	.byte	0x6
	.value	0x153
	.long	0x185
	.byte	0x48
	.uleb128 0xe
	.long	.LASF70
	.byte	0x6
	.value	0x154
	.long	0x185
	.byte	0x4c
	.uleb128 0xe
	.long	.LASF71
	.byte	0x6
	.value	0x156
	.long	0xa9
	.byte	0x50
	.byte	0
	.uleb128 0x7
	.long	.LASF72
	.byte	0x6
	.byte	0xa2
	.long	0x367
	.uleb128 0x5
	.byte	0x4
	.long	0x36d
	.uleb128 0x10
	.long	0x119
	.long	0x381
	.uleb128 0x11
	.long	0x185
	.uleb128 0x11
	.long	0x232
	.byte	0
	.uleb128 0x7
	.long	.LASF73
	.byte	0x6
	.byte	0xb1
	.long	0x38c
	.uleb128 0x5
	.byte	0x4
	.long	0x392
	.uleb128 0x10
	.long	0x119
	.long	0x3ab
	.uleb128 0x11
	.long	0x232
	.uleb128 0x11
	.long	0x185
	.uleb128 0x11
	.long	0x3ab
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x3b1
	.uleb128 0x6
	.long	0xf8
	.uleb128 0x7
	.long	.LASF74
	.byte	0x6
	.byte	0xc8
	.long	0x3c1
	.uleb128 0x5
	.byte	0x4
	.long	0x3c7
	.uleb128 0x10
	.long	0x119
	.long	0x3db
	.uleb128 0x11
	.long	0x232
	.uleb128 0x11
	.long	0x185
	.byte	0
	.uleb128 0x7
	.long	.LASF75
	.byte	0x6
	.byte	0xca
	.long	0x3e6
	.uleb128 0x5
	.byte	0x4
	.long	0x3ec
	.uleb128 0x12
	.long	0x3f7
	.uleb128 0x11
	.long	0x232
	.byte	0
	.uleb128 0x7
	.long	.LASF76
	.byte	0x6
	.byte	0xcd
	.long	0x402
	.uleb128 0x5
	.byte	0x4
	.long	0x408
	.uleb128 0x10
	.long	0x119
	.long	0x421
	.uleb128 0x11
	.long	0x232
	.uleb128 0x11
	.long	0x3ab
	.uleb128 0x11
	.long	0x215
	.byte	0
	.uleb128 0x13
	.long	0x71
	.long	0x431
	.uleb128 0x14
	.long	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.long	0x93
	.long	0x441
	.uleb128 0x14
	.long	0x6a
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.long	0x73
	.long	0x451
	.uleb128 0x14
	.long	0x6a
	.byte	0x1
	.byte	0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x14
	.byte	0x7
	.byte	0x37
	.long	0x4d6
	.uleb128 0x9
	.long	.LASF78
	.byte	0x7
	.byte	0x39
	.long	0x93
	.byte	0
	.uleb128 0x9
	.long	.LASF79
	.byte	0x7
	.byte	0x3b
	.long	0x93
	.byte	0x1
	.uleb128 0x9
	.long	.LASF80
	.byte	0x7
	.byte	0x3d
	.long	0xa9
	.byte	0x2
	.uleb128 0xa
	.string	"_id"
	.byte	0x7
	.byte	0x3f
	.long	0xa9
	.byte	0x4
	.uleb128 0x9
	.long	.LASF81
	.byte	0x7
	.byte	0x41
	.long	0xa9
	.byte	0x6
	.uleb128 0x9
	.long	.LASF82
	.byte	0x7
	.byte	0x47
	.long	0x93
	.byte	0x8
	.uleb128 0x9
	.long	.LASF83
	.byte	0x7
	.byte	0x49
	.long	0x93
	.byte	0x9
	.uleb128 0x9
	.long	.LASF84
	.byte	0x7
	.byte	0x4b
	.long	0xa9
	.byte	0xa
	.uleb128 0xa
	.string	"src"
	.byte	0x7
	.byte	0x4d
	.long	0x103
	.byte	0xc
	.uleb128 0x9
	.long	.LASF85
	.byte	0x7
	.byte	0x4e
	.long	0x103
	.byte	0x10
	.byte	0
	.uleb128 0x8
	.long	.LASF86
	.byte	0x18
	.byte	0x8
	.byte	0x69
	.long	0x52b
	.uleb128 0x9
	.long	.LASF87
	.byte	0x8
	.byte	0x6c
	.long	0x232
	.byte	0
	.uleb128 0x9
	.long	.LASF88
	.byte	0x8
	.byte	0x6e
	.long	0x232
	.byte	0x4
	.uleb128 0x9
	.long	.LASF89
	.byte	0x8
	.byte	0x71
	.long	0x52b
	.byte	0x8
	.uleb128 0x9
	.long	.LASF90
	.byte	0x8
	.byte	0x78
	.long	0xa9
	.byte	0xc
	.uleb128 0x9
	.long	.LASF91
	.byte	0x8
	.byte	0x7a
	.long	0x10e
	.byte	0x10
	.uleb128 0x9
	.long	.LASF92
	.byte	0x8
	.byte	0x7c
	.long	0x10e
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.long	0x451
	.uleb128 0x15
	.long	.LASF93
	.byte	0x9
	.byte	0x17
	.long	0x24
	.uleb128 0x16
	.long	.LASF94
	.byte	0xa
	.byte	0x40
	.long	0x4d6
	.uleb128 0x5
	.byte	0x3
	.long	ip_data
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x14
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.value	0
	.value	0
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"addr"
.LASF89:
	.string	"current_ip4_header"
.LASF83:
	.string	"_proto"
.LASF66:
	.string	"hwaddr"
.LASF61:
	.string	"state"
.LASF73:
	.string	"netif_output_fn"
.LASF5:
	.string	"short int"
.LASF57:
	.string	"input"
.LASF77:
	.string	"ip_hdr"
.LASF81:
	.string	"_offset"
.LASF78:
	.string	"_v_hl"
.LASF10:
	.string	"sizetype"
.LASF60:
	.string	"status_callback"
.LASF40:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF65:
	.string	"hwaddr_len"
.LASF62:
	.string	"client_data"
.LASF80:
	.string	"_len"
.LASF52:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF42:
	.string	"MEMP_SYS_TIMEOUT"
.LASF68:
	.string	"igmp_mac_filter"
.LASF23:
	.string	"ip4_addr_p_t"
.LASF49:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF93:
	.string	"aos_log_level"
.LASF64:
	.string	"hostname"
.LASF35:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF82:
	.string	"_ttl"
.LASF91:
	.string	"current_iphdr_src"
.LASF43:
	.string	"MEMP_NETDB"
.LASF3:
	.string	"signed char"
.LASF59:
	.string	"linkoutput"
.LASF12:
	.string	"float"
.LASF1:
	.string	"long long int"
.LASF9:
	.string	"long long unsigned int"
.LASF50:
	.string	"lwip_internal_netif_client_data_index"
.LASF29:
	.string	"tot_len"
.LASF26:
	.string	"pbuf"
.LASF7:
	.string	"long int"
.LASF51:
	.string	"netif_mac_filter_action"
.LASF24:
	.string	"ip_addr_t"
.LASF88:
	.string	"current_input_netif"
.LASF85:
	.string	"dest"
.LASF76:
	.string	"netif_igmp_mac_filter_fn"
.LASF84:
	.string	"_chksum"
.LASF67:
	.string	"name"
.LASF47:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF2:
	.string	"long double"
.LASF72:
	.string	"netif_input_fn"
.LASF4:
	.string	"unsigned char"
.LASF75:
	.string	"netif_status_callback_fn"
.LASF46:
	.string	"MEMP_MAX"
.LASF74:
	.string	"netif_linkoutput_fn"
.LASF31:
	.string	"flags"
.LASF48:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF30:
	.string	"type"
.LASF69:
	.string	"loop_first"
.LASF0:
	.string	"unsigned int"
.LASF95:
	.string	"GNU C11 5.4.0 20160609 -m32 -mtune=generic -march=i686 -ggdb -Os -std=gnu11 -fsigned-char -ffunction-sections -fdata-sections -fno-common -fstack-protector-strong"
.LASF94:
	.string	"ip_data"
.LASF41:
	.string	"MEMP_IGMP_GROUP"
.LASF71:
	.string	"loop_cnt_current"
.LASF53:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF86:
	.string	"ip_globals"
.LASF6:
	.string	"short unsigned int"
.LASF25:
	.string	"err_t"
.LASF11:
	.string	"char"
.LASF15:
	.string	"s8_t"
.LASF39:
	.string	"MEMP_TCPIP_MSG_API"
.LASF90:
	.string	"current_ip_header_tot_len"
.LASF18:
	.string	"_Bool"
.LASF19:
	.string	"ip4_addr"
.LASF44:
	.string	"MEMP_PBUF"
.LASF87:
	.string	"current_netif"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"double"
.LASF32:
	.string	"MEMP_RAW_PCB"
.LASF96:
	.string	"src/ip.c"
.LASF22:
	.string	"ip4_addr_t"
.LASF54:
	.string	"netif"
.LASF56:
	.string	"netmask"
.LASF17:
	.string	"u32_t"
.LASF70:
	.string	"loop_last"
.LASF16:
	.string	"u16_t"
.LASF45:
	.string	"MEMP_PBUF_POOL"
.LASF36:
	.string	"MEMP_TCP_SEG"
.LASF92:
	.string	"current_iphdr_dest"
.LASF63:
	.string	"rs_count"
.LASF38:
	.string	"MEMP_NETCONN"
.LASF20:
	.string	"ip4_addr_packed"
.LASF58:
	.string	"output"
.LASF34:
	.string	"MEMP_TCP_PCB"
.LASF97:
	.string	"/home/stone/Documents/pca"
.LASF33:
	.string	"MEMP_UDP_PCB"
.LASF14:
	.string	"u8_t"
.LASF55:
	.string	"ip_addr"
.LASF79:
	.string	"_tos"
.LASF28:
	.string	"payload"
.LASF27:
	.string	"next"
.LASF37:
	.string	"MEMP_NETBUF"
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
