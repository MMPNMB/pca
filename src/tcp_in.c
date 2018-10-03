# 1 "kernel/protocols/net/core/tcp_in.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kernel/protocols/net/core/tcp_in.c"
# 44 "kernel/protocols/net/core/tcp_in.c"
# 1 "./kernel/protocols/net/include/lwip/opt.h" 1
# 51 "./kernel/protocols/net/include/lwip/opt.h"
# 1 "././platform/mcu/moc108/include/lwip-2.0.2/lwipopts.h" 1
# 342 "././platform/mcu/moc108/include/lwip-2.0.2/lwipopts.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 1 3





# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 3
typedef int error_t;



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h" 1 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_newlib_version.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 2 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 1 3
# 6 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 149 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 216 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int size_t;
# 328 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 426 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 1 3






# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 1 3
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 8 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 2 3
# 25 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 26 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 88 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 129 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 145 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 156 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 357 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;



typedef unsigned long __clock_t;


typedef long __time_t;


typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 38 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                                          ;
  int (* _write) (struct _reent *, void *, const char *, int)

                                   ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 569 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 766 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/errno.h" 2 3



extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/errno.h" 2 3
# 343 "././platform/mcu/moc108/include/lwip-2.0.2/lwipopts.h" 2
# 52 "./kernel/protocols/net/include/lwip/opt.h" 2
# 1 "./kernel/protocols/net/include/lwip/debug.h" 1
# 40 "./kernel/protocols/net/include/lwip/debug.h"
# 1 "./kernel/protocols/net/include/lwip/arch.h" 1
# 48 "./kernel/protocols/net/include/lwip/arch.h"
# 1 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h" 1
# 37 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h"
# 1 "././platform/mcu/moc108/include/typedef.h" 1



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 1 3 4
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 1 3 4
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 49 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 201 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 130 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int intmax_t;
# 139 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
  typedef long long unsigned int uintmax_t;
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 2 3 4
# 5 "././platform/mcu/moc108/include/typedef.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdbool.h" 1 3 4
# 6 "././platform/mcu/moc108/include/typedef.h" 2


# 7 "././platform/mcu/moc108/include/typedef.h"
typedef unsigned char UINT8;
typedef signed char INT8;
typedef unsigned short UINT16;
typedef signed short INT16;
typedef uint32_t UINT32;
typedef int32_t INT32;
typedef unsigned long long UINT64;
typedef signed long long INT64;
typedef float FP32;
typedef double FP64;
typedef unsigned char BOOLEAN;
typedef unsigned char BOOL;
typedef unsigned int size_t;





typedef volatile signed long VS32;
typedef volatile signed short VS16;
typedef volatile signed char VS8;

typedef volatile signed long const VSC32;
typedef volatile signed short const VSC16;
typedef volatile signed char const VSC8;

typedef volatile unsigned long VU32;
typedef volatile unsigned short VU16;
typedef volatile unsigned char VU8;

typedef volatile unsigned long const VUC32;
typedef volatile unsigned short const VUC16;
typedef volatile unsigned char const VUC8;

typedef unsigned char u8;
typedef signed char s8;
typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;
typedef unsigned long long u64;
typedef long long s64;

typedef unsigned int __u32;
typedef int __s32;
typedef unsigned short __u16;
typedef signed short __s16;
typedef unsigned char __u8;
# 38 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h" 2

# 1 "././platform/mcu/moc108/include/driver/uart_pub.h" 1



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 1 3
# 29 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 30 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 46 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 2 3
# 36 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 37 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h" 1 3 4
# 40 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h" 3 4

# 40 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 61 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 1 3
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef int register_t;
# 62 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3




# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/endian.h" 1 3





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_endian.h" 1 3
# 7 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/endian.h" 2 3
# 68 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 1 3
# 25 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_sigset.h" 1 3
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 26 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 1 3
# 35 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef long time_t;
# 52 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 1 3
# 38 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timespec.h" 1 3
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 2 3
# 58 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3
typedef unsigned long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 71 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/select.h" 3


int select (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, _types_fd_set *__readfds, _types_fd_set *__writefds, _types_fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 69 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;
# 87 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 135 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 173 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 236 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
typedef __int64_t sbintime_t;
# 465 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/types.h" 1 3
# 466 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/types.h" 2 3
# 62 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stdio.h" 1 3
# 80 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 2 3
# 181 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
char * ctermid (char *);




FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *);

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *restrict, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void * restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);







int snprintf (char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 284 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
# 339 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int dprintf (int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;



int renameat (int, const char *, int, const char *);






int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void * restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void * restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void * restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void * restrict , size_t _size, size_t _n, FILE *);
# 574 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 598 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))





                                   ;
# 684 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 767 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3

# 5 "././platform/mcu/moc108/include/driver/uart_pub.h" 2
# 34 "././platform/mcu/moc108/include/driver/uart_pub.h"

# 34 "././platform/mcu/moc108/include/driver/uart_pub.h"
enum
{
    CMD_SEND_BACKGROUND = (0xC124000) + 0,
    CMD_UART_RESET = (0xC124000) + 1,
    CMD_RX_COUNT,
    CMD_RX_PEEK,
    CMD_UART_INIT,
};



typedef struct _peek_rx_
{
    UINT32 sig;

    UINT32 len;
    void *ptr;
} UART_PEEK_RX_T, *UART_PEEK_RX_PTR;




extern void uart_init(void);
extern void uart_exit(void);
extern void uart_isr(void);
extern void fatal_print(const char *fmt, ...);
extern INT32 uart_printf(const char *fmt, ...);
extern void bk_printf(const char *fmt, ...);
extern void uart_send_byte(UINT8 data);
# 40 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h" 2


# 1 "././platform/mcu/moc108/include/driver/ll.h" 1
# 16 "././platform/mcu/moc108/include/driver/ll.h"
# 1 "././platform/mcu/moc108/include/ip/co_int.h" 1
# 17 "././platform/mcu/moc108/include/driver/ll.h" 2
# 1 "././platform/mcu/moc108/include/driver/compiler.h" 1
# 18 "././platform/mcu/moc108/include/driver/ll.h" 2

extern uint32_t platform_is_in_interrupt_context( void );
extern uint32_t platform_is_in_fiq_context( void );
# 43 "././platform/mcu/moc108/include/lwip-2.0.2/arch/cc.h" 2






typedef unsigned char u8_t;
typedef signed char s8_t;
typedef unsigned short u16_t;
typedef signed short s16_t;
typedef unsigned long u32_t;
typedef signed long s32_t;

typedef int intptr_t;
typedef unsigned int uintptr_t;
# 49 "./kernel/protocols/net/include/lwip/arch.h" 2
# 64 "./kernel/protocols/net/include/lwip/arch.h"
typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;
typedef uintptr_t mem_ptr_t;
# 41 "./kernel/protocols/net/include/lwip/debug.h" 2
# 1 "./kernel/protocols/net/include/lwip/opt.h" 1
# 42 "./kernel/protocols/net/include/lwip/debug.h" 2
# 53 "./kernel/protocols/net/include/lwip/opt.h" 2
# 45 "kernel/protocols/net/core/tcp_in.c" 2



# 1 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h" 1
# 44 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
# 1 "./kernel/protocols/net/include/lwip/tcp.h" 1
# 45 "./kernel/protocols/net/include/lwip/tcp.h"
# 1 "./kernel/protocols/net/include/lwip/mem.h" 1
# 48 "./kernel/protocols/net/include/lwip/mem.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 49 "./kernel/protocols/net/include/lwip/mem.h" 2
typedef size_t mem_size_t;
# 71 "./kernel/protocols/net/include/lwip/mem.h"
void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 46 "./kernel/protocols/net/include/lwip/tcp.h" 2
# 1 "./kernel/protocols/net/include/lwip/pbuf.h" 1
# 42 "./kernel/protocols/net/include/lwip/pbuf.h"
# 1 "./kernel/protocols/net/include/lwip/err.h" 1
# 57 "./kernel/protocols/net/include/lwip/err.h"
typedef s8_t err_t;



typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;
# 106 "./kernel/protocols/net/include/lwip/err.h"
extern const char *lwip_strerr(err_t err);





int err_to_errno(err_t err);
# 43 "./kernel/protocols/net/include/lwip/pbuf.h" 2
# 72 "./kernel/protocols/net/include/lwip/pbuf.h"
typedef enum {



  PBUF_TRANSPORT,



  PBUF_IP,




  PBUF_LINK,





  PBUF_RAW_TX,


  PBUF_RAW,




} pbuf_layer;





typedef enum {






  PBUF_RAM,



  PBUF_ROM,



  PBUF_REF,






  PBUF_POOL
} pbuf_type;
# 157 "./kernel/protocols/net/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 171 "./kernel/protocols/net/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;


  u8_t type;


  u8_t flags;
# 194 "./kernel/protocols/net/include/lwip/pbuf.h"
  u16_t ref;

};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};
# 250 "./kernel/protocols/net/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);
# 261 "./kernel/protocols/net/include/lwip/pbuf.h"
void pbuf_realloc(struct pbuf *p, u16_t size);
u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
# 284 "./kernel/protocols/net/include/lwip/pbuf.h"
u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 47 "./kernel/protocols/net/include/lwip/tcp.h" 2
# 1 "./kernel/protocols/net/include/lwip/ip.h" 1
# 42 "./kernel/protocols/net/include/lwip/ip.h"
# 1 "./kernel/protocols/net/include/lwip/def.h" 1
# 86 "./kernel/protocols/net/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 124 "./kernel/protocols/net/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 43 "./kernel/protocols/net/include/lwip/ip.h" 2

# 1 "./kernel/protocols/net/include/lwip/ip_addr.h" 1
# 43 "./kernel/protocols/net/include/lwip/ip_addr.h"
# 1 "./kernel/protocols/net/include/lwip/ip4_addr.h" 1
# 42 "./kernel/protocols/net/include/lwip/ip4_addr.h"
# 1 "./include/aos/aos.h" 1
# 12 "./include/aos/aos.h"
# 1 "./include/aos/types.h" 1
# 9 "./include/aos/types.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 10 "./include/aos/types.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/unistd.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 2 3


# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
extern char **environ;

void _exit (int __status ) __attribute__ ((__noreturn__));

int access (const char *__path, int __amode );
unsigned alarm (unsigned __secs );
int chdir (const char *__path );
int chmod (const char *__path, mode_t __mode );

int chown (const char *__path, uid_t __owner, gid_t __group );


int chroot (const char *__path );

int close (int __fildes );

size_t confstr (int __name, char *__buf, size_t __len);
# 44 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
int daemon (int nochdir, int noclose);

int dup (int __fildes );
int dup2 (int __fildes, int __fildes2 );
# 56 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
void endusershell (void);




int execl (const char *__path, const char *, ... );
int execle (const char *__path, const char *, ... );
int execlp (const char *__file, const char *, ... );

int execlpe (const char *__file, const char *, ... );

int execv (const char *__path, char * const __argv[] );
int execve (const char *__path, char * const __argv[], char * const __envp[] );
int execvp (const char *__file, char * const __argv[] );




int faccessat (int __dirfd, const char *__path, int __mode, int __flags);


int fchdir (int __fildes);

int fchmod (int __fildes, mode_t __mode );

int fchown (int __fildes, uid_t __owner, gid_t __group );


int fchownat (int __dirfd, const char *__path, uid_t __owner, gid_t __group, int __flags);


int fexecve (int __fd, char * const __argv[], char * const __envp[] );

pid_t fork (void );
long fpathconf (int __fd, int __name );
int fsync (int __fd);
int fdatasync (int __fd);



char * getcwd (char *__buf, size_t __size );

int getdomainname (char *__name, size_t __len);


int getentropy (void *, size_t);


gid_t getegid (void );
uid_t geteuid (void );
gid_t getgid (void );

int getgroups (int __gidsetsize, gid_t __grouplist[] );

long gethostid (void);

char * getlogin (void );



char * getpass (const char *__prompt);
int getpagesize (void);

int getpeereid (int, uid_t *, gid_t *);

pid_t getpgid (pid_t);
pid_t getpgrp (void );
pid_t getpid (void );
pid_t getppid (void );

pid_t getsid (pid_t);


uid_t getuid (void );


char * getusershell (void);


char * getwd (char *__buf );


int iruserok (unsigned long raddr, int superuser, const char *ruser, const char *luser);

int isatty (int __fildes );

int issetugid (void);


int lchown (const char *__path, uid_t __owner, gid_t __group );

int link (const char *__path1, const char *__path2 );

int linkat (int __dirfd1, const char *__path1, int __dirfd2, const char *__path2, int __flags );

int nice (int __nice_value );

off_t lseek (int __fildes, off_t __offset, int __whence );






int lockf (int __fd, int __cmd, off_t __len);

long pathconf (const char *__path, int __name );
int pause (void );

int pthread_atfork (void (*)(void), void (*)(void), void (*)(void));

int pipe (int __fildes[2] );



ssize_t pread (int __fd, void *__buf, size_t __nbytes, off_t __offset);
ssize_t pwrite (int __fd, const void *__buf, size_t __nbytes, off_t __offset);
int read (int __fd, void *__buf, size_t __nbyte );

int rresvport (int *__alport);
int revoke (char *__path);

int rmdir (const char *__path );

int ruserok (const char *rhost, int superuser, const char *ruser, const char *luser);

void * sbrk (ptrdiff_t __incr);


int setegid (gid_t __gid );
int seteuid (uid_t __uid );

int setgid (gid_t __gid );


int setgroups (int ngroups, const gid_t *grouplist );


int sethostname (const char *, size_t);

int setpgid (pid_t __pid, pid_t __pgid );
int setpgrp (void );

int setregid (gid_t __rgid, gid_t __egid);
int setreuid (uid_t __ruid, uid_t __euid);

pid_t setsid (void );

int setuid (uid_t __uid );


void setusershell (void);

unsigned sleep (unsigned int __seconds );
void swab (const void *restrict, void *restrict, ssize_t);
long sysconf (int __name );
pid_t tcgetpgrp (int __fildes );
int tcsetpgrp (int __fildes, pid_t __pgrp_id );
char * ttyname (int __fildes );
int ttyname_r (int, char *, size_t);
int unlink (const char *__path );
int usleep (useconds_t __useconds);
int vhangup (void );
int write (int __fd, const void *__buf, size_t __nbyte );






extern char *optarg;
extern int optind, opterr, optopt;
int getopt(int, char * const [], const char *);
extern int optreset;



pid_t vfork (void );
# 257 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
int ftruncate (int __fd, off_t __length);
int truncate (const char *, off_t __length);
# 278 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/unistd.h" 3
ssize_t readlink (const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                   ;
int symlink (const char *__name1, const char *__name2);


ssize_t readlinkat (int __dirfd1, const char *restrict __path, char *restrict __buf, size_t __buflen)
                                                                     ;
int symlinkat (const char *, int, const char *);
int unlinkat (int, const char *, int);
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/unistd.h" 2 3
# 11 "./include/aos/types.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/fcntl.h" 1 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/fcntl.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 1 3
# 163 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 3
struct flock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
};




struct eflock {
 short l_type;
 short l_whence;
 long l_start;
 long l_len;
 short l_pid;
 short l_xxx;
 long l_rpid;
 long l_rsys;
};



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 1 3
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 1 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 2 3


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/time.h" 1 3
# 20 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 2 3
# 32 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 1 3
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 33 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 2 3




struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s, size_t _maxsize, const char *restrict _fmt, const struct tm *restrict _t)

                                        ;


extern size_t strftime_l (char *restrict _s, size_t _maxsize,
     const char *restrict _fmt,
     const struct tm *restrict _t, locale_t _l);


char *asctime_r (const struct tm *restrict, char *restrict)
                       ;
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict, struct tm *restrict)
                            ;
struct tm *localtime_r (const time_t *restrict, struct tm *restrict)
                            ;


# 101 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
void tzset (void);

void _tzset_r (struct _reent *);

typedef struct __tzrule_struct
{
  char ch;
  int m;
  int n;
  int d;
  int s;
  time_t change;
  long offset;
} __tzrule_type;

typedef struct __tzinfo_struct
{
  int __tznorth;
  int __tzyear;
  __tzrule_type __tzrule[2];
} __tzinfo_type;

__tzinfo_type *__gettzinfo (void);
# 154 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 2 3
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;
# 50 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
  time_t st_atime;
  long st_spare1;
  time_t st_mtime;
  long st_spare2;
  time_t st_ctime;
  long st_spare3;
  blksize_t st_blksize;
  blkcnt_t st_blocks;
  long st_spare4[2];


};
# 147 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/stat.h" 3
int chmod ( const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat ( int __fd, struct stat *__sbuf );
int mkdir ( const char *_path, mode_t __mode );
int mkfifo ( const char *__path, mode_t __mode );
int stat ( const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask ( mode_t __mask );







int fchmodat (int, const char *, mode_t, int);
int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);
int mknodat (int, const char *, mode_t, dev_t);
int utimensat (int, const char *, const struct timespec *, int);


int futimens (int, const struct timespec *);
# 189 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_default_fcntl.h" 2 3

extern int open (const char *, int, ...);

extern int openat (int, const char *, int, ...);

extern int creat (const char *, mode_t);
extern int fcntl (int, int, ...);

extern int flock (int, int);
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/fcntl.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/fcntl.h" 2 3
# 12 "./include/aos/types.h" 2






# 17 "./include/aos/types.h"
struct pollfd {
    int fd;
    short events;
    short revents;
};
# 13 "./include/aos/aos.h" 2
# 1 "./include/aos/cli.h" 1
# 18 "./include/aos/cli.h"
typedef void (*FUNCPTR)(void);



struct cli_command {
    const char *name;
    const char *help;

    void (*function)(char *pcWriteBuffer, int xWriteBufferLen, int argc, char **argv);
};

struct cli_st {
    int initialized;
    int echo_disabled;

    const struct cli_command *commands[64];

    unsigned int num_commands;
    unsigned int bp;

    char inbuf[256];
    char outbuf[2048];

    int his_idx;
    int his_cur;
    char history[5][256];
};
# 67 "./include/aos/cli.h"
int aos_cli_register_command(const struct cli_command *command);
# 76 "./include/aos/cli.h"
int aos_cli_unregister_command(const struct cli_command *command);
# 87 "./include/aos/cli.h"
int aos_cli_register_commands(const struct cli_command *commands, int num_commands);
# 97 "./include/aos/cli.h"
int aos_cli_unregister_commands(const struct cli_command *commands, int num_commands);
# 108 "./include/aos/cli.h"
int aos_cli_printf(const char *buff, ...);
# 119 "./include/aos/cli.h"
int aos_cli_init(void);







int aos_cli_stop(void);






const char *aos_cli_get_tag(void);
# 14 "./include/aos/aos.h" 2
# 1 "./include/aos/cloud.h" 1







enum {
    CLOUD_CONNECTED,
    CLOUD_DISCONNECTED,
    GET_DEVICE_STATUS,
    SET_DEVICE_STATUS,
    GET_DEVICE_RAWDATA,
    SET_DEVICE_RAWDATA,
    UPGRADE_DEVICE,
    CANCEL_UPGRADE_DEVICE,
    GET_SUB_DEVICE_STATUS,
    SET_SUB_DEVICE_STATUS,
    MAX_EVENT_TYPE,
};

typedef void (*aos_cloud_cb_t)(int event, const char *json_buffer);
# 32 "./include/aos/cloud.h"
int aos_cloud_register_callback(int cb_type, aos_cloud_cb_t cb);
# 44 "./include/aos/cloud.h"
int aos_cloud_report(const char *method,
                     const char *json_buffer,
                     void (*done_cb)(void *),
                     void *arg);







void aos_cloud_trigger(int cb_type, const char *json_buffer);






void aos_cloud_register_backend(int (*report)(const char *method, const char *json_buffer));
# 15 "./include/aos/aos.h" 2
# 1 "./include/aos/debug.h" 1
# 16 "./include/aos/aos.h" 2
# 1 "./include/aos/kernel.h" 1







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 9 "./include/aos/kernel.h" 2
# 19 "./include/aos/kernel.h"
typedef struct {
    void *hdl;
} aos_hdl_t;

typedef aos_hdl_t aos_task_t;
typedef aos_hdl_t aos_mutex_t;
typedef aos_hdl_t aos_sem_t;
typedef aos_hdl_t aos_queue_t;
typedef aos_hdl_t aos_timer_t;
typedef aos_hdl_t aos_work_t;
typedef aos_hdl_t aos_event_t;

typedef struct {
    void *hdl;
    void *stk;
} aos_workqueue_t;

typedef unsigned int aos_task_key_t;




void aos_reboot(void);






int aos_get_hz(void);






const char *aos_version_get(void);
# 67 "./include/aos/kernel.h"
int aos_task_new(const char *name, void (*fn)(void *), void *arg, int stack_size);
# 82 "./include/aos/kernel.h"
int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *), void *arg,
                     int stack_size, int prio);






void aos_task_exit(int code);






const char *aos_task_name(void);
# 106 "./include/aos/kernel.h"
int aos_task_key_create(aos_task_key_t *key);






void aos_task_key_delete(aos_task_key_t key);
# 123 "./include/aos/kernel.h"
int aos_task_setspecific(aos_task_key_t key, void *vp);






void *aos_task_getspecific(aos_task_key_t key);
# 140 "./include/aos/kernel.h"
int aos_mutex_new(aos_mutex_t *mutex);







void aos_mutex_free(aos_mutex_t *mutex);
# 158 "./include/aos/kernel.h"
int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 167 "./include/aos/kernel.h"
int aos_mutex_unlock(aos_mutex_t *mutex);
# 176 "./include/aos/kernel.h"
int aos_mutex_is_valid(aos_mutex_t *mutex);
# 187 "./include/aos/kernel.h"
int aos_sem_new(aos_sem_t *sem, int count);







void aos_sem_free(aos_sem_t *sem);
# 205 "./include/aos/kernel.h"
int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);






void aos_sem_signal(aos_sem_t *sem);
# 221 "./include/aos/kernel.h"
int aos_sem_is_valid(aos_sem_t *sem);






void aos_sem_signal_all(aos_sem_t *sem);
# 240 "./include/aos/kernel.h"
int aos_event_new(aos_event_t *event, unsigned int flags);
# 251 "./include/aos/kernel.h"
void aos_event_free(aos_event_t *event);
# 272 "./include/aos/kernel.h"
int aos_event_get(aos_event_t *event, unsigned int flags, unsigned char opt,
                       unsigned int *actl_flags, unsigned int timeout);
# 286 "./include/aos/kernel.h"
int aos_event_set(aos_event_t *event, unsigned int flags, unsigned char opt);
# 299 "./include/aos/kernel.h"
int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size, int max_msg);






void aos_queue_free(aos_queue_t *queue);
# 317 "./include/aos/kernel.h"
int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 329 "./include/aos/kernel.h"
int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg, unsigned int *size);
# 338 "./include/aos/kernel.h"
int aos_queue_is_valid(aos_queue_t *queue);
# 347 "./include/aos/kernel.h"
void *aos_queue_buf_ptr(aos_queue_t *queue);
# 360 "./include/aos/kernel.h"
int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *),
                  void *arg, int ms, int repeat);
# 375 "./include/aos/kernel.h"
int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                  void *arg, int ms, int repeat, unsigned char auto_run);






void aos_timer_free(aos_timer_t *timer);
# 392 "./include/aos/kernel.h"
int aos_timer_start(aos_timer_t *timer);
# 401 "./include/aos/kernel.h"
int aos_timer_stop(aos_timer_t *timer);
# 411 "./include/aos/kernel.h"
int aos_timer_change(aos_timer_t *timer, int ms);
# 422 "./include/aos/kernel.h"
int aos_workqueue_create(aos_workqueue_t *workqueue, int pri, int stack_size);
# 434 "./include/aos/kernel.h"
int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






void aos_work_destroy(aos_work_t *work);
# 451 "./include/aos/kernel.h"
int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 460 "./include/aos/kernel.h"
int aos_work_sched(aos_work_t *work);
# 469 "./include/aos/kernel.h"
int aos_work_cancel(aos_work_t *work);
# 479 "./include/aos/kernel.h"
void *aos_realloc(void *mem, unsigned int size);
# 488 "./include/aos/kernel.h"
void *aos_malloc(unsigned int size);
# 497 "./include/aos/kernel.h"
void *aos_zalloc(unsigned int size);







void aos_alloc_trace(void *addr, size_t allocator);






void aos_free(void *mem);






long long aos_now(void);






long long aos_now_ms(void);






void aos_msleep(int ms);




void aos_init(void);




void aos_start(void);
# 17 "./include/aos/aos.h" 2
# 1 "./include/aos/kv.h" 1
# 25 "./include/aos/kv.h"
int aos_kv_set(const char *key, const void *value, int len, int sync);
# 40 "./include/aos/kv.h"
int aos_kv_get(const char *key, void *buffer, int *buffer_len);
# 49 "./include/aos/kv.h"
int aos_kv_del(const char *key);
# 18 "./include/aos/aos.h" 2
# 1 "./include/aos/list.h" 1
# 31 "./include/aos/list.h"
typedef struct dlist_s {
    struct dlist_s *prev;
    struct dlist_s *next;
} dlist_t;

static inline void __dlist_add(dlist_t *node, dlist_t *prev, dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 56 "./include/aos/list.h"
static inline void dlist_add(dlist_t *node, dlist_t *queue)
{
    __dlist_add(node, queue, queue->next);
}

static inline void dlist_add_tail(dlist_t *node, dlist_t *queue)
{
    __dlist_add(node, queue->prev, queue);
}

static inline void dlist_del(dlist_t *node)
{
    dlist_t *prev = node->prev;
    dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void dlist_init(dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_AOS_DLIST_HEAD(dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int dlist_empty(const dlist_t *head)
{
    return head->next == head;
}
# 185 "./include/aos/list.h"
static inline int dlist_entry_number(dlist_t *queue)
{
 int num;
 dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 213 "./include/aos/list.h"
typedef struct slist_s {
    struct slist_s *next;
} slist_t;

static inline void slist_add(slist_t *node, slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void slist_add_tail(slist_t *node, slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    slist_add(node, head);
}

static inline void slist_del(slist_t *node, slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int slist_empty(const slist_t *head)
{
    return !head->next;
}

static inline void slist_init(slist_t *head)
{
    head->next = 0;
}
# 322 "./include/aos/list.h"
static inline int slist_entry_number(slist_t *queue)
{
 int num;
    slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 19 "./include/aos/aos.h" 2
# 1 "./include/aos/log.h" 1
# 12 "./include/aos/log.h"
# 1 "./include/aos/internal/log_impl.h" 1
# 12 "./include/aos/internal/log_impl.h"
extern unsigned int aos_log_level;
static inline unsigned int aos_log_get_level(void)
{
    return aos_log_level;
}

enum log_level_bit {
    AOS_LL_V_NONE_BIT = -1,
    AOS_LL_V_FATAL_BIT,
    AOS_LL_V_ERROR_BIT,
    AOS_LL_V_WARN_BIT,
    AOS_LL_V_INFO_BIT,
    AOS_LL_V_DEBUG_BIT,
    AOS_LL_V_MAX_BIT
};
# 52 "./include/aos/internal/log_impl.h"
extern int csp_printf(const char *fmt, ...);
# 85 "./include/aos/internal/log_impl.h"
extern int csp_printf(const char *fmt, ...);
# 13 "./include/aos/log.h" 2

typedef enum {
    AOS_LL_NONE,
    AOS_LL_FATAL,
    AOS_LL_ERROR,
    AOS_LL_WARN,
    AOS_LL_INFO,
    AOS_LL_DEBUG,
} aos_log_level_t;

extern unsigned int aos_log_level;



static inline int aos_get_log_level(void)
{
    return aos_log_level;
}






void aos_set_log_level(aos_log_level_t log_level);
# 20 "./include/aos/aos.h" 2
# 1 "./include/aos/vfs.h" 1
# 16 "./include/aos/vfs.h"
typedef struct {
    int d_ino;
    uint8_t d_type;
    char d_name[];
} aos_dirent_t;

typedef struct {
    int dd_vfs_fd;
    int dd_rsv;
} aos_dir_t;
# 35 "./include/aos/vfs.h"
int aos_open(const char *path, int flags);
# 44 "./include/aos/vfs.h"
int aos_close(int fd);
# 55 "./include/aos/vfs.h"
ssize_t aos_read(int fd, void *buf, size_t nbytes);
# 66 "./include/aos/vfs.h"
ssize_t aos_write(int fd, const void *buf, size_t nbytes);
# 77 "./include/aos/vfs.h"
int aos_ioctl(int fd, int cmd, unsigned long arg);
# 89 "./include/aos/vfs.h"
int aos_poll(struct pollfd *fds, int nfds, int timeout);
# 100 "./include/aos/vfs.h"
int aos_fcntl(int fd, int cmd, int val);
# 114 "./include/aos/vfs.h"
off_t aos_lseek(int fd, off_t offset, int whence);
# 123 "./include/aos/vfs.h"
int aos_sync(int fd);
# 133 "./include/aos/vfs.h"
int aos_stat(const char *path, struct stat *st);
# 142 "./include/aos/vfs.h"
int aos_unlink(const char *path);
# 152 "./include/aos/vfs.h"
int aos_rename(const char *oldpath, const char *newpath);
# 161 "./include/aos/vfs.h"
aos_dir_t *aos_opendir(const char *path);
# 170 "./include/aos/vfs.h"
int aos_closedir(aos_dir_t *dir);
# 179 "./include/aos/vfs.h"
aos_dirent_t *aos_readdir(aos_dir_t *dir);
# 188 "./include/aos/vfs.h"
int aos_mkdir(const char *path);
# 21 "./include/aos/aos.h" 2
# 1 "./include/aos/version.h" 1
# 13 "./include/aos/version.h"
const char *aos_get_product_model(void);






const char *aos_get_os_version(void);






const char *aos_get_kernel_version(void);






const char *aos_get_app_version(void);






const char *aos_get_device_name(void);




void dump_sys_info(void);
# 22 "./include/aos/aos.h" 2
# 1 "./include/aos/yloop.h" 1
# 14 "./include/aos/yloop.h"
# 1 "./include/aos/internal/event_type_code.h" 1
# 15 "./include/aos/yloop.h" 2
# 65 "./include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 94 "./include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 105 "./include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 116 "./include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 127 "./include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 136 "./include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 147 "./include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 156 "./include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 169 "./include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 211 "./include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 224 "./include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 234 "./include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 23 "./include/aos/aos.h" 2
# 1 "./include/aos/errno.h" 1
# 24 "./include/aos/aos.h" 2
# 1 "./include/aos/init.h" 1
# 11 "./include/aos/init.h"
typedef struct {
    int argc;
    char **argv;

    
# 15 "./include/aos/init.h" 3 4
   _Bool 
# 15 "./include/aos/init.h"
        cli_enable;
} kinit_t;

extern int aos_kernel_init(kinit_t *kinit);
# 25 "./include/aos/aos.h" 2
# 43 "./kernel/protocols/net/include/lwip/ip4_addr.h" 2
# 53 "./kernel/protocols/net/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};







struct ip4_addr_packed {
  u32_t addr;
} __attribute__((packed));







typedef struct ip4_addr ip4_addr_t;
typedef struct ip4_addr_packed ip4_addr_p_t;
# 83 "./kernel/protocols/net/include/lwip/ip4_addr.h"

struct ip4_addr2 {
  u16_t addrw[2];
} __attribute__((packed));






struct netif;
# 206 "./kernel/protocols/net/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 247 "./kernel/protocols/net/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "./kernel/protocols/net/include/lwip/ip_addr.h" 2
# 1 "./kernel/protocols/net/include/lwip/ip6_addr.h" 1
# 45 "./kernel/protocols/net/include/lwip/ip_addr.h" 2
# 54 "./kernel/protocols/net/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 225 "./kernel/protocols/net/include/lwip/ip_addr.h"
typedef ip4_addr_t ip_addr_t;
# 312 "./kernel/protocols/net/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 45 "./kernel/protocols/net/include/lwip/ip.h" 2

# 1 "./kernel/protocols/net/include/lwip/netif.h" 1
# 50 "./kernel/protocols/net/include/lwip/netif.h"
# 1 "./kernel/protocols/net/include/lwip/stats.h" 1
# 43 "./kernel/protocols/net/include/lwip/stats.h"
# 1 "./kernel/protocols/net/include/lwip/memp.h" 1
# 47 "./kernel/protocols/net/include/lwip/memp.h"
# 1 "./kernel/protocols/net/include/lwip/priv/memp_std.h" 1
# 42 "./kernel/protocols/net/include/lwip/priv/memp_std.h"











# 63 "./kernel/protocols/net/include/lwip/priv/memp_std.h"






# 82 "./kernel/protocols/net/include/lwip/priv/memp_std.h"

# 95 "./kernel/protocols/net/include/lwip/priv/memp_std.h"









# 130 "./kernel/protocols/net/include/lwip/priv/memp_std.h"








# 48 "./kernel/protocols/net/include/lwip/memp.h" 2


typedef enum {

# 1 "./kernel/protocols/net/include/lwip/priv/memp_std.h" 1
# 42 "./kernel/protocols/net/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,
# 63 "./kernel/protocols/net/include/lwip/priv/memp_std.h"
MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 82 "./kernel/protocols/net/include/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,
# 95 "./kernel/protocols/net/include/lwip/priv/memp_std.h"
MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 130 "./kernel/protocols/net/include/lwip/priv/memp_std.h"
MEMP_PBUF,






MEMP_PBUF_POOL,
# 53 "./kernel/protocols/net/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "./kernel/protocols/net/include/lwip/priv/memp_priv.h" 1
# 130 "./kernel/protocols/net/include/lwip/priv/memp_priv.h"
struct memp_desc {


  const char *desc;







  u16_t size;
# 153 "./kernel/protocols/net/include/lwip/priv/memp_priv.h"
};
# 169 "./kernel/protocols/net/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 57 "./kernel/protocols/net/include/lwip/memp.h" 2
# 1 "./kernel/protocols/net/include/lwip/stats.h" 1
# 58 "./kernel/protocols/net/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 139 "./kernel/protocols/net/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "./kernel/protocols/net/include/lwip/stats.h" 2
# 51 "./kernel/protocols/net/include/lwip/netif.h" 2
# 107 "./kernel/protocols/net/include/lwip/netif.h"
enum lwip_internal_netif_client_data_index
{

   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,




   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 139 "./kernel/protocols/net/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);






typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 177 "./kernel/protocols/net/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 200 "./kernel/protocols/net/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);
# 215 "./kernel/protocols/net/include/lwip/netif.h"
u8_t netif_alloc_client_data_id(void);
# 229 "./kernel/protocols/net/include/lwip/netif.h"
struct netif {

  struct netif *next;



  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;
# 248 "./kernel/protocols/net/include/lwip/netif.h"
  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;
# 270 "./kernel/protocols/net/include/lwip/netif.h"
  netif_status_callback_fn status_callback;
# 283 "./kernel/protocols/net/include/lwip/netif.h"
  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 0];







  u8_t rs_count;



  const char* hostname;





  u16_t mtu;

  u8_t hwaddr_len;

  u8_t hwaddr[6U];

  u8_t flags;

  char name[2];

  u8_t num;
# 327 "./kernel/protocols/net/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;
# 339 "./kernel/protocols/net/include/lwip/netif.h"
  struct pbuf *loop_first;
  struct pbuf *loop_last;

  u16_t loop_cnt_current;


};
# 357 "./kernel/protocols/net/include/lwip/netif.h"
extern struct netif *netif_list;

extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add(struct netif *netif,

                        const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,

                        void *state, netif_init_fn init, netif_input_fn input);

void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);

void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);
# 400 "./kernel/protocols/net/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);






void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);
# 444 "./kernel/protocols/net/include/lwip/netif.h"
err_t netif_loop_output(struct netif *netif, struct pbuf *p);
void netif_poll(struct netif *netif);





err_t netif_input(struct pbuf *p, struct netif *inp);
# 47 "./kernel/protocols/net/include/lwip/ip.h" 2
# 1 "./kernel/protocols/net/include/lwip/ip4.h" 1
# 49 "./kernel/protocols/net/include/lwip/ip4.h"
# 1 "./kernel/protocols/net/include/lwip/prot/ip4.h" 1
# 53 "./kernel/protocols/net/include/lwip/prot/ip4.h"


struct ip_hdr {

  u8_t _v_hl;

  u8_t _tos;

  u16_t _len;

  u16_t _id;

  u16_t _offset;





  u8_t _ttl;

  u8_t _proto;

  u16_t _chksum;

  ip4_addr_p_t src;
  ip4_addr_p_t dest;
} __attribute__((packed));

# 50 "./kernel/protocols/net/include/lwip/ip4.h" 2
# 65 "./kernel/protocols/net/include/lwip/ip4.h"
struct netif *ip4_route(const ip4_addr_t *dest);





err_t ip4_input(struct pbuf *p, struct netif *inp);
err_t ip4_output(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto);
err_t ip4_output_if(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);
err_t ip4_output_if_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif);





err_t ip4_output_if_opt(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);
err_t ip4_output_if_opt_src(struct pbuf *p, const ip4_addr_t *src, const ip4_addr_t *dest,
       u8_t ttl, u8_t tos, u8_t proto, struct netif *netif, void *ip_options,
       u16_t optlen);



void ip4_set_default_multicast_netif(struct netif* default_multicast_netif);
# 48 "./kernel/protocols/net/include/lwip/ip.h" 2
# 1 "./kernel/protocols/net/include/lwip/ip6.h" 1
# 49 "./kernel/protocols/net/include/lwip/ip.h" 2
# 1 "./kernel/protocols/net/include/lwip/prot/ip.h" 1
# 50 "./kernel/protocols/net/include/lwip/ip.h" 2
# 89 "./kernel/protocols/net/include/lwip/ip.h"
struct ip_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;
};
# 105 "./kernel/protocols/net/include/lwip/ip.h"
struct ip_globals
{

  struct netif *current_netif;

  struct netif *current_input_netif;


  struct ip_hdr *current_ip4_header;






  u16_t current_ip_header_tot_len;

  ip_addr_t current_iphdr_src;

  ip_addr_t current_iphdr_dest;
};
extern struct ip_globals ip_data;
# 48 "./kernel/protocols/net/include/lwip/tcp.h" 2
# 1 "./kernel/protocols/net/include/lwip/icmp.h" 1
# 44 "./kernel/protocols/net/include/lwip/icmp.h"
# 1 "./kernel/protocols/net/include/lwip/prot/icmp.h" 1
# 68 "./kernel/protocols/net/include/lwip/prot/icmp.h"

struct icmp_echo_hdr {
  u8_t type;
  u8_t code;
  u16_t chksum;
  u16_t id;
  u16_t seqno;
} __attribute__((packed));

# 45 "./kernel/protocols/net/include/lwip/icmp.h" 2
# 55 "./kernel/protocols/net/include/lwip/icmp.h"
enum icmp_dur_type {

  ICMP_DUR_NET = 0,

  ICMP_DUR_HOST = 1,

  ICMP_DUR_PROTO = 2,

  ICMP_DUR_PORT = 3,

  ICMP_DUR_FRAG = 4,

  ICMP_DUR_SR = 5
};


enum icmp_te_type {

  ICMP_TE_TTL = 0,

  ICMP_TE_FRAG = 1
};



void icmp_input(struct pbuf *p, struct netif *inp);
void icmp_dest_unreach(struct pbuf *p, enum icmp_dur_type t);
void icmp_time_exceeded(struct pbuf *p, enum icmp_te_type t);
# 49 "./kernel/protocols/net/include/lwip/tcp.h" 2
# 57 "./kernel/protocols/net/include/lwip/tcp.h"
struct tcp_pcb;
# 68 "./kernel/protocols/net/include/lwip/tcp.h"
typedef err_t (*tcp_accept_fn)(void *arg, struct tcp_pcb *newpcb, err_t err);
# 80 "./kernel/protocols/net/include/lwip/tcp.h"
typedef err_t (*tcp_recv_fn)(void *arg, struct tcp_pcb *tpcb,
                             struct pbuf *p, err_t err);
# 94 "./kernel/protocols/net/include/lwip/tcp.h"
typedef err_t (*tcp_sent_fn)(void *arg, struct tcp_pcb *tpcb,
                              u16_t len);
# 106 "./kernel/protocols/net/include/lwip/tcp.h"
typedef err_t (*tcp_poll_fn)(void *arg, struct tcp_pcb *tpcb);
# 118 "./kernel/protocols/net/include/lwip/tcp.h"
typedef void (*tcp_err_fn)(void *arg, err_t err);
# 132 "./kernel/protocols/net/include/lwip/tcp.h"
typedef err_t (*tcp_connected_fn)(void *arg, struct tcp_pcb *tpcb, err_t err);
# 145 "./kernel/protocols/net/include/lwip/tcp.h"
typedef u16_t tcpwnd_size_t;



typedef u16_t tcpflags_t;




enum tcp_state {
  CLOSED = 0,
  LISTEN = 1,
  SYN_SENT = 2,
  SYN_RCVD = 3,
  ESTABLISHED = 4,
  FIN_WAIT_1 = 5,
  FIN_WAIT_2 = 6,
  CLOSE_WAIT = 7,
  CLOSING = 8,
  LAST_ACK = 9,
  TIME_WAIT = 10
};
# 181 "./kernel/protocols/net/include/lwip/tcp.h"
struct tcp_pcb_listen {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb_listen *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;



  tcp_accept_fn accept;



  u8_t backlog;
  u8_t accepts_pending;

};



struct tcp_pcb {

  ip_addr_t local_ip; ip_addr_t remote_ip; u8_t so_options; u8_t tos; u8_t ttl ;

  struct tcp_pcb *next; void *callback_arg; enum tcp_state state; u8_t prio; u16_t local_port;


  u16_t remote_port;

  tcpflags_t flags;
# 229 "./kernel/protocols/net/include/lwip/tcp.h"
  u8_t polltmr, pollinterval;
  u8_t last_timer;
  u32_t tmr;


  u32_t rcv_nxt;
  tcpwnd_size_t rcv_wnd;
  tcpwnd_size_t rcv_ann_wnd;
  u32_t rcv_ann_right_edge;


  s16_t rtime;

  u16_t mss;


  u32_t rttest;
  u32_t rtseq;
  s16_t sa, sv;

  s16_t rto;
  u8_t nrtx;


  u8_t dupacks;
  u32_t lastack;


  tcpwnd_size_t cwnd;
  tcpwnd_size_t ssthresh;


  u32_t snd_nxt;
  u32_t snd_wl1, snd_wl2;

  u32_t snd_lbb;
  tcpwnd_size_t snd_wnd;
  tcpwnd_size_t snd_wnd_max;

  tcpwnd_size_t snd_buf;

  u16_t snd_queuelen;



  u16_t unsent_oversize;



  struct tcp_seg *unsent;
  struct tcp_seg *unacked;

  struct tcp_seg *ooseq;


  struct pbuf *refused_data;


  struct tcp_pcb_listen* listener;




  tcp_sent_fn sent;

  tcp_recv_fn recv;

  tcp_connected_fn connected;

  tcp_poll_fn poll;

  tcp_err_fn errf;
# 309 "./kernel/protocols/net/include/lwip/tcp.h"
  u32_t keep_idle;

  u32_t keep_intvl;
  u32_t keep_cnt;



  u8_t persist_cnt;

  u8_t persist_backoff;


  u8_t keep_cnt_sent;





};
# 349 "./kernel/protocols/net/include/lwip/tcp.h"
struct tcp_pcb * tcp_new (void);
struct tcp_pcb * tcp_new_ip_type (u8_t type);

void tcp_arg (struct tcp_pcb *pcb, void *arg);

void tcp_recv (struct tcp_pcb *pcb, tcp_recv_fn recv);
void tcp_sent (struct tcp_pcb *pcb, tcp_sent_fn sent);
void tcp_err (struct tcp_pcb *pcb, tcp_err_fn err);
void tcp_accept (struct tcp_pcb *pcb, tcp_accept_fn accept);

void tcp_poll (struct tcp_pcb *pcb, tcp_poll_fn poll, u8_t interval);
# 375 "./kernel/protocols/net/include/lwip/tcp.h"
void tcp_backlog_delayed(struct tcp_pcb* pcb);
void tcp_backlog_accepted(struct tcp_pcb* pcb);







void tcp_recved (struct tcp_pcb *pcb, u16_t len);
err_t tcp_bind (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port);
err_t tcp_connect (struct tcp_pcb *pcb, const ip_addr_t *ipaddr,
                              u16_t port, tcp_connected_fn connected);

struct tcp_pcb * tcp_listen_with_backlog(struct tcp_pcb *pcb, u8_t backlog);



void tcp_abort (struct tcp_pcb *pcb);
err_t tcp_close (struct tcp_pcb *pcb);
err_t tcp_shutdown(struct tcp_pcb *pcb, int shut_rx, int shut_tx);





err_t tcp_write (struct tcp_pcb *pcb, const void *dataptr, u16_t len,
                              u8_t apiflags);

void tcp_setprio (struct tcp_pcb *pcb, u8_t prio);





err_t tcp_output (struct tcp_pcb *pcb);


const char* tcp_debug_state_str(enum tcp_state s);
# 45 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h" 2







# 1 "./kernel/protocols/net/include/lwip/prot/tcp.h" 1
# 55 "./kernel/protocols/net/include/lwip/prot/tcp.h"

struct tcp_hdr {
  u16_t src;
  u16_t dest;
  u32_t seqno;
  u32_t ackno;
  u16_t _hdrlen_rsvd_flags;
  u16_t wnd;
  u16_t chksum;
  u16_t urgp;
} __attribute__((packed));

# 53 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h" 2
# 61 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
void tcp_init (void);
void tcp_tmr (void);




void tcp_slowtmr (void);
void tcp_fasttmr (void);





void tcp_txnow (void);


void tcp_input (struct pbuf *p, struct netif *inp);

struct tcp_pcb * tcp_alloc (u8_t prio);
void tcp_abandon (struct tcp_pcb *pcb, int reset);
err_t tcp_send_empty_ack(struct tcp_pcb *pcb);
void tcp_rexmit (struct tcp_pcb *pcb);
void tcp_rexmit_rto (struct tcp_pcb *pcb);
void tcp_rexmit_fast (struct tcp_pcb *pcb);
u32_t tcp_update_rcv_ann_wnd(struct tcp_pcb *pcb);
err_t tcp_process_refused_data(struct tcp_pcb *pcb);
# 245 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
struct tcp_seg {
  struct tcp_seg *next;
  struct pbuf *p;
  u16_t len;

  u16_t oversize_left;







  u8_t flags;





  struct tcp_hdr *tcphdr;
};
# 308 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
extern struct tcp_pcb *tcp_input_pcb;
extern u32_t tcp_ticks;
extern u8_t tcp_active_pcbs_changed;


union tcp_listen_pcbs_t {
  struct tcp_pcb_listen *listen_pcbs;
  struct tcp_pcb *pcbs;
};
extern struct tcp_pcb *tcp_bound_pcbs;
extern union tcp_listen_pcbs_t tcp_listen_pcbs;
extern struct tcp_pcb *tcp_active_pcbs;


extern struct tcp_pcb *tcp_tw_pcbs;



extern struct tcp_pcb ** const tcp_pcb_lists[4];
# 422 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
struct tcp_pcb *tcp_pcb_copy(struct tcp_pcb *pcb);
void tcp_pcb_purge(struct tcp_pcb *pcb);
void tcp_pcb_remove(struct tcp_pcb **pcblist, struct tcp_pcb *pcb);

void tcp_segs_free(struct tcp_seg *seg);
void tcp_seg_free(struct tcp_seg *seg);
struct tcp_seg *tcp_seg_copy(struct tcp_seg *seg);
# 446 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
err_t tcp_send_fin(struct tcp_pcb *pcb);
err_t tcp_enqueue_flags(struct tcp_pcb *pcb, u8_t flags);

void tcp_rexmit_seg(struct tcp_pcb *pcb, struct tcp_seg *seg);

void tcp_rst(u32_t seqno, u32_t ackno,
       const ip_addr_t *local_ip, const ip_addr_t *remote_ip,
       u16_t local_port, u16_t remote_port);

u32_t tcp_next_iss(void);

err_t tcp_keepalive(struct tcp_pcb *pcb);
err_t tcp_zero_window_probe(struct tcp_pcb *pcb);
void tcp_trigger_input_pcb_close(void);


u16_t tcp_eff_send_mss_impl(u16_t sendmss, const ip_addr_t *dest



                           );
# 475 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
err_t tcp_recv_null(void *arg, struct tcp_pcb *pcb, struct pbuf *p, err_t err);
# 494 "./kernel/protocols/net/include/lwip/priv/tcp_priv.h"
void tcp_timer_needed(void);

void tcp_netif_ip_addr_changed(const ip_addr_t* old_addr, const ip_addr_t* new_addr);
# 49 "kernel/protocols/net/core/tcp_in.c" 2





# 1 "./kernel/protocols/net/include/lwip/inet_chksum.h" 1
# 74 "./kernel/protocols/net/include/lwip/inet_chksum.h"
u16_t inet_chksum(const void *dataptr, u16_t len);
u16_t inet_chksum_pbuf(struct pbuf *p);





u16_t inet_chksum_pseudo(struct pbuf *p, u8_t proto, u16_t proto_len,
       const ip4_addr_t *src, const ip4_addr_t *dest);
u16_t inet_chksum_pseudo_partial(struct pbuf *p, u8_t proto,
       u16_t proto_len, u16_t chksum_len, const ip4_addr_t *src, const ip4_addr_t *dest);
# 95 "./kernel/protocols/net/include/lwip/inet_chksum.h"
u16_t ip_chksum_pseudo(struct pbuf *p, u8_t proto, u16_t proto_len,
       const ip_addr_t *src, const ip_addr_t *dest);
u16_t ip_chksum_pseudo_partial(struct pbuf *p, u8_t proto, u16_t proto_len,
       u16_t chksum_len, const ip_addr_t *src, const ip_addr_t *dest);
# 55 "kernel/protocols/net/core/tcp_in.c" 2




# 1 "./kernel/protocols/net/include/lwip/nd6.h" 1
# 60 "kernel/protocols/net/core/tcp_in.c" 2
# 70 "kernel/protocols/net/core/tcp_in.c"
static struct tcp_seg inseg;
static struct tcp_hdr *tcphdr;
static u16_t tcphdr_optlen;
static u16_t tcphdr_opt1len;
static u8_t* tcphdr_opt2;
static u16_t tcp_optidx;
static u32_t seqno, ackno;
static tcpwnd_size_t recv_acked;
static u16_t tcplen;
static u8_t flags;

static u8_t recv_flags;
static struct pbuf *recv_data;

struct tcp_pcb *tcp_input_pcb;


static err_t tcp_process(struct tcp_pcb *pcb);
static void tcp_receive(struct tcp_pcb *pcb);
static void tcp_parseopt(struct tcp_pcb *pcb);

static void tcp_listen_input(struct tcp_pcb_listen *pcb);
static void tcp_timewait_input(struct tcp_pcb *pcb);
# 103 "kernel/protocols/net/core/tcp_in.c"
void
tcp_input(struct pbuf *p, struct netif *inp)
{
  struct tcp_pcb *pcb, *prev;
  struct tcp_pcb_listen *lpcb;

  struct tcp_pcb *lpcb_prev = 
# 109 "kernel/protocols/net/core/tcp_in.c" 3 4
                             ((void *)0)
# 109 "kernel/protocols/net/core/tcp_in.c"
                                 ;
  struct tcp_pcb_listen *lpcb_any = 
# 110 "kernel/protocols/net/core/tcp_in.c" 3 4
                                   ((void *)0)
# 110 "kernel/protocols/net/core/tcp_in.c"
                                       ;

  u8_t hdrlen_bytes;
  err_t err;

  (void)inp;

  ;

  ;
  ;

  tcphdr = (struct tcp_hdr *)p->payload;






  if (p->len < 20) {

    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: short packet (%""4d"" bytes) discarded\n", p->tot_len) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }


  if (ip4_addr_isbroadcast_u32(((&ip_data.current_iphdr_dest))->addr, (ip_data.current_netif)) ||
      ((((&ip_data.current_iphdr_dest))->addr & ((((0xf0000000UL) & 0xff) << 24) | (((0xf0000000UL) & 0xff00) << 8) | (((0xf0000000UL) & 0xff0000UL) >> 8) | (((0xf0000000UL) & 0xff000000UL) >> 24))) == ((((0xe0000000UL) & 0xff) << 24) | (((0xe0000000UL) & 0xff00) << 8) | (((0xe0000000UL) & 0xff0000UL) >> 8) | (((0xe0000000UL) & 0xff000000UL) >> 24)))) {
    ;
    goto dropped;
  }


  {

    u16_t chksum = ip_chksum_pseudo(p, 6, p->tot_len,
                               (&ip_data.current_iphdr_src), (&ip_data.current_iphdr_dest));
    if (chksum != 0) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: packet discarded due to failing checksum 0x%04""4x""\n", chksum) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                  ;
      ;
      ;
      goto dropped;
    }
  }



  hdrlen_bytes = ((u16_t)(lwip_htons((tcphdr)->_hdrlen_rsvd_flags) >> 12)) * 4;
  if ((hdrlen_bytes < 20) || (hdrlen_bytes > p->tot_len)) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: invalid header length (%""4d"")\n", (u16_t)hdrlen_bytes) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    ;
    goto dropped;
  }



  tcphdr_optlen = hdrlen_bytes - 20;
  tcphdr_opt2 = 
# 169 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 169 "kernel/protocols/net/core/tcp_in.c"
                   ;
  if (p->len >= hdrlen_bytes) {

    tcphdr_opt1len = tcphdr_optlen;
    pbuf_header(p, -(s16_t)hdrlen_bytes);
  } else {
    u16_t opt2len;


    ;


    pbuf_header(p, -20);


    tcphdr_opt1len = p->len;
    opt2len = tcphdr_optlen - tcphdr_opt1len;



    pbuf_header(p, -(s16_t)tcphdr_opt1len);


    if (opt2len > p->next->len) {

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: options overflow second pbuf (%""4d"" bytes)\n", p->next->len) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ;
      goto dropped;
    }


    tcphdr_opt2 = (u8_t*)p->next->payload;



    pbuf_header(p->next, -(s16_t)opt2len);
    p->tot_len -= opt2len;

    ;
    ;
  }


  tcphdr->src = lwip_htons(tcphdr->src);
  tcphdr->dest = lwip_htons(tcphdr->dest);
  seqno = tcphdr->seqno = lwip_htonl(tcphdr->seqno);
  ackno = tcphdr->ackno = lwip_htonl(tcphdr->ackno);
  tcphdr->wnd = lwip_htons(tcphdr->wnd);

  flags = ((u16_t)(lwip_htons((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU));
  tcplen = p->tot_len + ((flags & (0x01U | 0x02U)) ? 1 : 0);



  prev = 
# 223 "kernel/protocols/net/core/tcp_in.c" 3 4
        ((void *)0)
# 223 "kernel/protocols/net/core/tcp_in.c"
            ;

  for (pcb = tcp_active_pcbs; pcb != 
# 225 "kernel/protocols/net/core/tcp_in.c" 3 4
                                    ((void *)0)
# 225 "kernel/protocols/net/core/tcp_in.c"
                                        ; pcb = pcb->next) {
    ;
    ;
    ;
    if (pcb->remote_port == tcphdr->src &&
        pcb->local_port == tcphdr->dest &&
        ((&pcb->remote_ip)->addr == ((&ip_data.current_iphdr_src))->addr) &&
        ((&pcb->local_ip)->addr == ((&ip_data.current_iphdr_dest))->addr)) {



      ;
      if (prev != 
# 237 "kernel/protocols/net/core/tcp_in.c" 3 4
                 ((void *)0)
# 237 "kernel/protocols/net/core/tcp_in.c"
                     ) {
        prev->next = pcb->next;
        pcb->next = tcp_active_pcbs;
        tcp_active_pcbs = pcb;
      } else {
        ;
      }
      ;
      break;
    }
    prev = pcb;
  }

  if (pcb == 
# 250 "kernel/protocols/net/core/tcp_in.c" 3 4
            ((void *)0)
# 250 "kernel/protocols/net/core/tcp_in.c"
                ) {


    for (pcb = tcp_tw_pcbs; pcb != 
# 253 "kernel/protocols/net/core/tcp_in.c" 3 4
                                  ((void *)0)
# 253 "kernel/protocols/net/core/tcp_in.c"
                                      ; pcb = pcb->next) {
      ;
      if (pcb->remote_port == tcphdr->src &&
          pcb->local_port == tcphdr->dest &&
          ((&pcb->remote_ip)->addr == ((&ip_data.current_iphdr_src))->addr) &&
          ((&pcb->local_ip)->addr == ((&ip_data.current_iphdr_dest))->addr)) {



        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: packed for TIME_WAITing connection.\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        tcp_timewait_input(pcb);
        pbuf_free(p);
        return;
      }
    }



    prev = 
# 271 "kernel/protocols/net/core/tcp_in.c" 3 4
          ((void *)0)
# 271 "kernel/protocols/net/core/tcp_in.c"
              ;
    for (lpcb = tcp_listen_pcbs.listen_pcbs; lpcb != 
# 272 "kernel/protocols/net/core/tcp_in.c" 3 4
                                                    ((void *)0)
# 272 "kernel/protocols/net/core/tcp_in.c"
                                                        ; lpcb = lpcb->next) {
      if (lpcb->local_port == tcphdr->dest) {
        if (0) {


          lpcb_any = lpcb;
          lpcb_prev = prev;



        } else if (1) {
          if (((&lpcb->local_ip)->addr == ((&ip_data.current_iphdr_dest))->addr)) {

            break;
          } else if (((&lpcb->local_ip) == 
# 286 "kernel/protocols/net/core/tcp_in.c" 3 4
                    ((void *)0) 
# 286 "kernel/protocols/net/core/tcp_in.c"
                    || ((*(&lpcb->local_ip)).addr == ((u32_t)0x00000000UL)))) {


            lpcb_any = lpcb;
            lpcb_prev = prev;



          }
        }
      }
      prev = (struct tcp_pcb *)lpcb;
    }


    if (lpcb == 
# 301 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 301 "kernel/protocols/net/core/tcp_in.c"
                   ) {

      lpcb = lpcb_any;
      prev = lpcb_prev;
    }

    if (lpcb != 
# 307 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 307 "kernel/protocols/net/core/tcp_in.c"
                   ) {



      if (prev != 
# 311 "kernel/protocols/net/core/tcp_in.c" 3 4
                 ((void *)0)
# 311 "kernel/protocols/net/core/tcp_in.c"
                     ) {
        ((struct tcp_pcb_listen *)prev)->next = lpcb->next;

        lpcb->next = tcp_listen_pcbs.listen_pcbs;

        tcp_listen_pcbs.listen_pcbs = lpcb;
      } else {
        ;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: packed for LISTENing connection.\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_listen_input(lpcb);
      pbuf_free(p);
      return;
    }
  }
# 335 "kernel/protocols/net/core/tcp_in.c"
  if (pcb != 
# 335 "kernel/protocols/net/core/tcp_in.c" 3 4
            ((void *)0)
# 335 "kernel/protocols/net/core/tcp_in.c"
                ) {






    inseg.next = 
# 342 "kernel/protocols/net/core/tcp_in.c" 3 4
                ((void *)0)
# 342 "kernel/protocols/net/core/tcp_in.c"
                    ;
    inseg.len = p->tot_len;
    inseg.p = p;
    inseg.tcphdr = tcphdr;

    recv_data = 
# 347 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 347 "kernel/protocols/net/core/tcp_in.c"
                   ;
    recv_flags = 0;
    recv_acked = 0;

    if (flags & 0x08U) {
      p->flags |= 0x01U;
    }


    if (pcb->refused_data != 
# 356 "kernel/protocols/net/core/tcp_in.c" 3 4
                            ((void *)0)
# 356 "kernel/protocols/net/core/tcp_in.c"
                                ) {
      if ((tcp_process_refused_data(pcb) == ERR_ABRT) ||
        ((pcb->refused_data != 
# 358 "kernel/protocols/net/core/tcp_in.c" 3 4
                              ((void *)0)
# 358 "kernel/protocols/net/core/tcp_in.c"
                                  ) && (tcplen > 0))) {


        ;
        ;
        goto aborted;
      }
    }
    tcp_input_pcb = pcb;
    err = tcp_process(pcb);


    if (err != ERR_ABRT) {
      if (recv_flags & (u8_t)0x08U) {




        do { if((pcb->errf) != 
# 376 "kernel/protocols/net/core/tcp_in.c" 3 4
       ((void *)0)
# 376 "kernel/protocols/net/core/tcp_in.c"
       ) (pcb->errf)((pcb->callback_arg),(ERR_RST)); } while (0);
        tcp_pcb_remove(&tcp_active_pcbs, pcb);
        memp_free(MEMP_TCP_PCB, pcb);
      } else {
        err = ERR_OK;



        if (recv_acked > 0) {
          u16_t acked16;
# 394 "kernel/protocols/net/core/tcp_in.c"
          {
            acked16 = recv_acked;

            do { if((pcb)->sent != 
# 397 "kernel/protocols/net/core/tcp_in.c" 3 4
           ((void *)0)
# 397 "kernel/protocols/net/core/tcp_in.c"
           ) (err) = (pcb)->sent((pcb)->callback_arg,(pcb),((u16_t)acked16)); else (err) = ERR_OK; } while (0);
            if (err == ERR_ABRT) {
              goto aborted;
            }
          }
          recv_acked = 0;
        }
        if (recv_flags & (u8_t)0x10U) {


          if (!(pcb->flags & 0x10U)) {



            do { if((pcb->errf) != 
# 411 "kernel/protocols/net/core/tcp_in.c" 3 4
           ((void *)0)
# 411 "kernel/protocols/net/core/tcp_in.c"
           ) (pcb->errf)((pcb->callback_arg),(ERR_CLSD)); } while (0);
          }
          tcp_pcb_remove(&tcp_active_pcbs, pcb);
          memp_free(MEMP_TCP_PCB, pcb);
          goto aborted;
        }





        if (recv_data != 
# 422 "kernel/protocols/net/core/tcp_in.c" 3 4
                        ((void *)0)
# 422 "kernel/protocols/net/core/tcp_in.c"
                            ) {


          ;
          if (pcb->flags & 0x10U) {


            pbuf_free(recv_data);





            tcp_abort(pcb);
            goto aborted;
          }


          do { if((pcb)->recv != 
# 440 "kernel/protocols/net/core/tcp_in.c" 3 4
         ((void *)0)
# 440 "kernel/protocols/net/core/tcp_in.c"
         ) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),(recv_data),(ERR_OK)); } else { (err) = tcp_recv_null(
# 440 "kernel/protocols/net/core/tcp_in.c" 3 4
         ((void *)0)
# 440 "kernel/protocols/net/core/tcp_in.c"
         , (pcb), (recv_data), (ERR_OK)); } } while (0);
          if (err == ERR_ABRT) {





            goto aborted;
          }


          if (err != ERR_OK) {





            pcb->refused_data = recv_data;
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: keep incoming packet, because pcb is \"full\"\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);






          }
        }



        if (recv_flags & (u8_t)0x20U) {
          if (pcb->refused_data != 
# 471 "kernel/protocols/net/core/tcp_in.c" 3 4
                                  ((void *)0)
# 471 "kernel/protocols/net/core/tcp_in.c"
                                      ) {

            pcb->refused_data->flags |= 0x20U;
          } else {


            if (pcb->rcv_wnd != (3*(1500 - 40))) {
              pcb->rcv_wnd++;
            }
            do { if(((pcb)->recv != 
# 480 "kernel/protocols/net/core/tcp_in.c" 3 4
           ((void *)0)
# 480 "kernel/protocols/net/core/tcp_in.c"
           )) { (err) = (pcb)->recv((pcb)->callback_arg,(pcb),
# 480 "kernel/protocols/net/core/tcp_in.c" 3 4
           ((void *)0)
# 480 "kernel/protocols/net/core/tcp_in.c"
           ,ERR_OK); } else { (err) = ERR_OK; } } while (0);
            if (err == ERR_ABRT) {
              goto aborted;
            }
          }
        }

        tcp_input_pcb = 
# 487 "kernel/protocols/net/core/tcp_in.c" 3 4
                       ((void *)0)
# 487 "kernel/protocols/net/core/tcp_in.c"
                           ;

        tcp_output(pcb);





      }
    }


aborted:
    tcp_input_pcb = 
# 500 "kernel/protocols/net/core/tcp_in.c" 3 4
                   ((void *)0)
# 500 "kernel/protocols/net/core/tcp_in.c"
                       ;
    recv_data = 
# 501 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 501 "kernel/protocols/net/core/tcp_in.c"
                   ;


    if (inseg.p != 
# 504 "kernel/protocols/net/core/tcp_in.c" 3 4
                  ((void *)0)
# 504 "kernel/protocols/net/core/tcp_in.c"
                      )
    {
      pbuf_free(inseg.p);
      inseg.p = 
# 507 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 507 "kernel/protocols/net/core/tcp_in.c"
                   ;
    }
  } else {



    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_input: no PCB match found, resetting.\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    if (!(((u16_t)(lwip_htons((tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x04U)) {
      ;
      ;
      tcp_rst(ackno, seqno + tcplen, (&ip_data.current_iphdr_dest),
        (&ip_data.current_iphdr_src), tcphdr->dest, tcphdr->src);
    }
    pbuf_free(p);
  }

  ;
  ;
  return;
dropped:
  ;
  ;
  pbuf_free(p);
}
# 541 "kernel/protocols/net/core/tcp_in.c"
static void
tcp_listen_input(struct tcp_pcb_listen *pcb)
{
  struct tcp_pcb *npcb;
  err_t rc;

  if (flags & 0x04U) {

    return;
  }



  if (flags & 0x10U) {


    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_listen_input: ACK in LISTEN, sending reset\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
    tcp_rst(ackno, seqno + tcplen, (&ip_data.current_iphdr_dest),
      (&ip_data.current_iphdr_src), tcphdr->dest, tcphdr->src);
  } else if (flags & 0x02U) {
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection request %""4d"" -> %""4d"".\n", tcphdr->src, tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

    if (pcb->accepts_pending >= pcb->backlog) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_listen_input: listen backlog exceeded for port %""4d""\n", tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      return;
    }

    npcb = tcp_alloc(pcb->prio);



    if (npcb == 
# 572 "kernel/protocols/net/core/tcp_in.c" 3 4
               ((void *)0)
# 572 "kernel/protocols/net/core/tcp_in.c"
                   ) {
      err_t err;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_listen_input: could not allocate PCB\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ;
      do { if((pcb != 
# 576 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 576 "kernel/protocols/net/core/tcp_in.c"
     ) && ((pcb)->accept != 
# 576 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 576 "kernel/protocols/net/core/tcp_in.c"
     )) (err) = (pcb)->accept((pcb->callback_arg),(
# 576 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 576 "kernel/protocols/net/core/tcp_in.c"
     ),(ERR_MEM)); else (err) = ERR_ARG; } while (0);
      (void)err;
      return;
    }

    pcb->accepts_pending++;
    npcb->flags |= 0x0200U;


    ((npcb->local_ip).addr = (*(&ip_data.current_iphdr_dest)).addr);
    ((npcb->remote_ip).addr = (*(&ip_data.current_iphdr_src)).addr);
    npcb->local_port = pcb->local_port;
    npcb->remote_port = tcphdr->src;
    npcb->state = SYN_RCVD;
    npcb->rcv_nxt = seqno + 1;
    npcb->rcv_ann_right_edge = npcb->rcv_nxt;
    npcb->snd_wl1 = seqno - 1;
    npcb->callback_arg = pcb->callback_arg;

    npcb->listener = pcb;


    npcb->so_options = pcb->so_options & (0x04U|0x08U);


    do { do { (npcb)->next = *&tcp_active_pcbs; *(&tcp_active_pcbs) = (npcb); tcp_timer_needed(); } while (0); tcp_active_pcbs_changed = 1; } while (0);


    tcp_parseopt(npcb);
    npcb->snd_wnd = (tcphdr->wnd);
    npcb->snd_wnd_max = npcb->snd_wnd;
    npcb->ssthresh = ((npcb)->snd_wnd);


    npcb->mss = tcp_eff_send_mss_impl(npcb->mss, &npcb->remote_ip);


    ;


    rc = tcp_enqueue_flags(npcb, 0x02U | 0x10U);
    if (rc != ERR_OK) {
      tcp_abandon(npcb, 0);
      return;
    }
    tcp_output(npcb);
  }
  return;
}
# 635 "kernel/protocols/net/core/tcp_in.c"
static void
tcp_timewait_input(struct tcp_pcb *pcb)
{





  if (flags & 0x04U) {
    return;
  }

  if (flags & 0x02U) {


    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd)) <= 0))) {

      tcp_rst(ackno, seqno + tcplen, (&ip_data.current_iphdr_dest),
        (&ip_data.current_iphdr_src), tcphdr->dest, tcphdr->src);
      return;
    }
  } else if (flags & 0x01U) {


    pcb->tmr = tcp_ticks;
  }

  if ((tcplen > 0)) {

    pcb->flags |= 0x02U;
    tcp_output(pcb);
  }
  return;
}
# 681 "kernel/protocols/net/core/tcp_in.c"
static err_t
tcp_process(struct tcp_pcb *pcb)
{
  struct tcp_seg *rseg;
  u8_t acceptable = 0;
  err_t err;

  err = ERR_OK;


  if (flags & 0x04U) {

    if (pcb->state == SYN_SENT) {


      if (ackno == pcb->snd_nxt) {
        acceptable = 1;
      }
    } else {


      if (seqno == pcb->rcv_nxt) {
        acceptable = 1;
      } else if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd)) <= 0))
                                                              ) {




        do { (pcb)->flags |= 0x02U; } while (0);
      }
    }

    if (acceptable) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process: Connection RESET\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ;
      recv_flags |= (u8_t)0x08U;
      pcb->flags &= ~0x01U;
      return ERR_RST;
    } else {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process: unacceptable reset seqno %""8ld"" rcv_nxt %""8ld""\n", seqno, pcb->rcv_nxt) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                            ;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process: unacceptable reset seqno %""8ld"" rcv_nxt %""8ld""\n", seqno, pcb->rcv_nxt) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                            ;
      return ERR_OK;
    }
  }

  if ((flags & 0x02U) && (pcb->state != SYN_SENT && pcb->state != SYN_RCVD)) {

    do { (pcb)->flags |= 0x02U; } while (0);
    return ERR_OK;
  }

  if ((pcb->flags & 0x10U) == 0) {

    pcb->tmr = tcp_ticks;
  }
  pcb->keep_cnt_sent = 0;

  tcp_parseopt(pcb);


  switch (pcb->state) {
  case SYN_SENT:
    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("SYN-SENT: ackno %""8ld"" pcb->snd_nxt %""8ld"" unacked %""8ld""\n", ackno, pcb->snd_nxt, lwip_htonl(pcb->unacked->tcphdr->seqno)) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                            ;

    if ((flags & 0x10U) && (flags & 0x02U)
        && (ackno == pcb->lastack + 1)) {
      pcb->rcv_nxt = seqno + 1;
      pcb->rcv_ann_right_edge = pcb->rcv_nxt;
      pcb->lastack = ackno;
      pcb->snd_wnd = (tcphdr->wnd);
      pcb->snd_wnd_max = pcb->snd_wnd;
      pcb->snd_wl1 = seqno - 1;
      pcb->state = ESTABLISHED;


      pcb->mss = tcp_eff_send_mss_impl(pcb->mss, &pcb->remote_ip);



      pcb->ssthresh = ((pcb)->snd_wnd);

      pcb->cwnd = ((((4U * (pcb->mss))) < (((((2U * (pcb->mss))) > (4380U)) ? ((2U * (pcb->mss))) : (4380U)))) ? ((4U * (pcb->mss))) : (((((2U * (pcb->mss))) > (4380U)) ? ((2U * (pcb->mss))) : (4380U))));;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process (SENT): cwnd %""4d" " ssthresh %""4d""\n", pcb->cwnd, pcb->ssthresh) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                             ;
      ;
      --pcb->snd_queuelen;
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process: SYN-SENT --queuelen %""4d""\n", (tcpwnd_size_t)pcb->snd_queuelen) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      rseg = pcb->unacked;
      if (rseg == 
# 774 "kernel/protocols/net/core/tcp_in.c" 3 4
                 ((void *)0)
# 774 "kernel/protocols/net/core/tcp_in.c"
                     ) {


        rseg = pcb->unsent;
        ;
        pcb->unsent = rseg->next;
      } else {
        pcb->unacked = rseg->next;
      }
      tcp_seg_free(rseg);



      if (pcb->unacked == 
# 787 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0)
# 787 "kernel/protocols/net/core/tcp_in.c"
                             ) {
        pcb->rtime = -1;
      } else {
        pcb->rtime = 0;
        pcb->nrtx = 0;
      }



      do { if((pcb)->connected != 
# 796 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 796 "kernel/protocols/net/core/tcp_in.c"
     ) (err) = (pcb)->connected((pcb)->callback_arg,(pcb),(ERR_OK)); else (err) = ERR_OK; } while (0);
      if (err == ERR_ABRT) {
        return ERR_ABRT;
      }
      do { (pcb)->flags |= 0x02U; } while (0);
    }

    else if (flags & 0x10U) {

      tcp_rst(ackno, seqno + tcplen, (&ip_data.current_iphdr_dest),
        (&ip_data.current_iphdr_src), tcphdr->dest, tcphdr->src);


      pcb->rtime = 0;
      tcp_rexmit_rto(pcb);
    }
    break;
  case SYN_RCVD:
    if (flags & 0x10U) {

      if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {
        pcb->state = ESTABLISHED;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection established %""4d"" -> %""4d"".\n", inseg.tcphdr->src, inseg.tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

       
                                                                     ;
        if (pcb->listener == 
# 822 "kernel/protocols/net/core/tcp_in.c" 3 4
                            ((void *)0)
# 822 "kernel/protocols/net/core/tcp_in.c"
                                ) {

          err = ERR_VAL;
        } else

        {
          tcp_backlog_accepted(pcb);

          do { if((pcb->listener != 
# 830 "kernel/protocols/net/core/tcp_in.c" 3 4
         ((void *)0)
# 830 "kernel/protocols/net/core/tcp_in.c"
         ) && ((pcb->listener)->accept != 
# 830 "kernel/protocols/net/core/tcp_in.c" 3 4
         ((void *)0)
# 830 "kernel/protocols/net/core/tcp_in.c"
         )) (err) = (pcb->listener)->accept((pcb->callback_arg),(pcb),(ERR_OK)); else (err) = ERR_ARG; } while (0);
        }
        if (err != ERR_OK) {



          if (err != ERR_ABRT) {
            tcp_abort(pcb);
          }
          return ERR_ABRT;
        }


        tcp_receive(pcb);




        pcb->ssthresh = ((pcb)->snd_wnd);


        if (recv_acked != 0) {
          recv_acked--;
        }

        pcb->cwnd = ((((4U * (pcb->mss))) < (((((2U * (pcb->mss))) > (4380U)) ? ((2U * (pcb->mss))) : (4380U)))) ? ((4U * (pcb->mss))) : (((((2U * (pcb->mss))) > (4380U)) ? ((2U * (pcb->mss))) : (4380U))));;
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_process (SYN_RCVD): cwnd %""4d" " ssthresh %""4d""\n", pcb->cwnd, pcb->ssthresh) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                               ;

        if (recv_flags & (u8_t)0x20U) {
          do { (pcb)->flags |= 0x02U; } while (0);
          pcb->state = CLOSE_WAIT;
        }
      } else {

        tcp_rst(ackno, seqno + tcplen, (&ip_data.current_iphdr_dest),
          (&ip_data.current_iphdr_src), tcphdr->dest, tcphdr->src);
      }
    } else if ((flags & 0x02U) && (seqno == pcb->rcv_nxt - 1)) {

      tcp_rexmit(pcb);
    }
    break;
  case CLOSE_WAIT:

  case ESTABLISHED:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { (pcb)->flags |= 0x02U; } while (0);
      pcb->state = CLOSE_WAIT;
    }
    break;
  case FIN_WAIT_1:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      if ((flags & 0x10U) && (ackno == pcb->snd_nxt) &&
          pcb->unsent == 
# 887 "kernel/protocols/net/core/tcp_in.c" 3 4
                        ((void *)0)
# 887 "kernel/protocols/net/core/tcp_in.c"
                            ) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection closed: FIN_WAIT_1 %""4d"" -> %""4d"".\n", inseg.tcphdr->src, inseg.tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                                               ;
        do { (pcb)->flags |= 0x02U; } while (0);
        tcp_pcb_purge(pcb);
        do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { struct tcp_pcb *tcp_tmp_pcb; for (tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != 
# 892 "kernel/protocols/net/core/tcp_in.c" 3 4
       ((void *)0)
# 892 "kernel/protocols/net/core/tcp_in.c"
       ; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 
# 892 "kernel/protocols/net/core/tcp_in.c" 3 4
       ((void *)0)
# 892 "kernel/protocols/net/core/tcp_in.c"
       ; } while(0); tcp_active_pcbs_changed = 1; } while (0);
        pcb->state = TIME_WAIT;
        do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
      } else {
        do { (pcb)->flags |= 0x02U; } while (0);
        pcb->state = CLOSING;
      }
    } else if ((flags & 0x10U) && (ackno == pcb->snd_nxt) &&
               pcb->unsent == 
# 900 "kernel/protocols/net/core/tcp_in.c" 3 4
                             ((void *)0)
# 900 "kernel/protocols/net/core/tcp_in.c"
                                 ) {
      pcb->state = FIN_WAIT_2;
    }
    break;
  case FIN_WAIT_2:
    tcp_receive(pcb);
    if (recv_flags & (u8_t)0x20U) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection closed: FIN_WAIT_2 %""4d"" -> %""4d"".\n", inseg.tcphdr->src, inseg.tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      do { (pcb)->flags |= 0x02U; } while (0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { struct tcp_pcb *tcp_tmp_pcb; for (tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != 
# 910 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 910 "kernel/protocols/net/core/tcp_in.c"
     ; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 
# 910 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 910 "kernel/protocols/net/core/tcp_in.c"
     ; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case CLOSING:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt && pcb->unsent == 
# 917 "kernel/protocols/net/core/tcp_in.c" 3 4
                                                                  ((void *)0)
# 917 "kernel/protocols/net/core/tcp_in.c"
                                                                      ) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection closed: CLOSING %""4d"" -> %""4d"".\n", inseg.tcphdr->src, inseg.tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      tcp_pcb_purge(pcb);
      do { do { if(*(&tcp_active_pcbs) == (pcb)) { (*(&tcp_active_pcbs)) = (*&tcp_active_pcbs)->next; } else { struct tcp_pcb *tcp_tmp_pcb; for (tcp_tmp_pcb = *&tcp_active_pcbs; tcp_tmp_pcb != 
# 920 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 920 "kernel/protocols/net/core/tcp_in.c"
     ; tcp_tmp_pcb = tcp_tmp_pcb->next) { if(tcp_tmp_pcb->next == (pcb)) { tcp_tmp_pcb->next = (pcb)->next; break; } } } (pcb)->next = 
# 920 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 920 "kernel/protocols/net/core/tcp_in.c"
     ; } while(0); tcp_active_pcbs_changed = 1; } while (0);
      pcb->state = TIME_WAIT;
      do { (pcb)->next = *&tcp_tw_pcbs; *(&tcp_tw_pcbs) = (pcb); tcp_timer_needed(); } while (0);
    }
    break;
  case LAST_ACK:
    tcp_receive(pcb);
    if (flags & 0x10U && ackno == pcb->snd_nxt && pcb->unsent == 
# 927 "kernel/protocols/net/core/tcp_in.c" 3 4
                                                                  ((void *)0)
# 927 "kernel/protocols/net/core/tcp_in.c"
                                                                      ) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("TCP connection closed: LAST_ACK %""4d"" -> %""4d"".\n", inseg.tcphdr->src, inseg.tcphdr->dest) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);

      recv_flags |= (u8_t)0x10U;
    }
    break;
  default:
    break;
  }
  return ERR_OK;
}







static void
tcp_oos_insert_segment(struct tcp_seg *cseg, struct tcp_seg *next)
{
  struct tcp_seg *old_seg;

  if (((u16_t)(lwip_htons((cseg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {

    tcp_segs_free(next);
    next = 
# 953 "kernel/protocols/net/core/tcp_in.c" 3 4
          ((void *)0)
# 953 "kernel/protocols/net/core/tcp_in.c"
              ;
  } else {


    while (next &&
           ((s32_t)((u32_t)((seqno + cseg->len)) - (u32_t)((next->tcphdr->seqno + next->len))) >= 0)
                                                        ) {

      if (((u16_t)(lwip_htons((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {
        (cseg->tcphdr)->_hdrlen_rsvd_flags = ((cseg->tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
      }
      old_seg = next;
      next = next->next;
      tcp_seg_free(old_seg);
    }
    if (next &&
        ((s32_t)((u32_t)(seqno + cseg->len) - (u32_t)(next->tcphdr->seqno)) > 0)) {

      cseg->len = (u16_t)(next->tcphdr->seqno - seqno);
      pbuf_realloc(cseg->p, cseg->len);
    }
  }
  cseg->next = next;
}
# 991 "kernel/protocols/net/core/tcp_in.c"
static void
tcp_receive(struct tcp_pcb *pcb)
{
  struct tcp_seg *next;

  struct tcp_seg *prev, *cseg;

  s32_t off;
  s16_t m;
  u32_t right_wnd_edge;
  u16_t new_tot_len;
  int found_dupack = 0;





  ;

  if (flags & 0x10U) {
    right_wnd_edge = pcb->snd_wnd + pcb->snd_wl2;


    if (((s32_t)((u32_t)(pcb->snd_wl1) - (u32_t)(seqno)) < 0) ||
       (pcb->snd_wl1 == seqno && ((s32_t)((u32_t)(pcb->snd_wl2) - (u32_t)(ackno)) < 0)) ||
       (pcb->snd_wl2 == ackno && (u32_t)(tcphdr->wnd) > pcb->snd_wnd)) {
      pcb->snd_wnd = (tcphdr->wnd);


      if (pcb->snd_wnd_max < pcb->snd_wnd) {
        pcb->snd_wnd_max = pcb->snd_wnd;
      }
      pcb->snd_wl1 = seqno;
      pcb->snd_wl2 = ackno;
      if (pcb->snd_wnd == 0) {
        if (pcb->persist_backoff == 0) {

          pcb->persist_cnt = 0;
          pcb->persist_backoff = 1;
        }
      } else if (pcb->persist_backoff > 0) {

          pcb->persist_backoff = 0;
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: window update %""4d""\n", pcb->snd_wnd) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
# 1045 "kernel/protocols/net/core/tcp_in.c"
    }
# 1068 "kernel/protocols/net/core/tcp_in.c"
    if (((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack)) <= 0)) {

      if (tcplen == 0) {

        if (pcb->snd_wl2 + pcb->snd_wnd == right_wnd_edge) {

          if (pcb->rtime >= 0) {

            if (pcb->lastack == ackno) {
              found_dupack = 1;
              if ((u8_t)(pcb->dupacks + 1) > pcb->dupacks) {
                ++pcb->dupacks;
              }
              if (pcb->dupacks > 3) {


                if ((tcpwnd_size_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
                  pcb->cwnd += pcb->mss;
                }
              } else if (pcb->dupacks == 3) {

                tcp_rexmit_fast(pcb);
              }
            }
          }
        }
      }


      if (!found_dupack) {
        pcb->dupacks = 0;
      }
    } else if ((((s32_t)((u32_t)(ackno) - (u32_t)(pcb->lastack+1)) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))) {





      if (pcb->flags & 0x04U) {
        pcb->flags &= ~0x04U;
        pcb->cwnd = pcb->ssthresh;
      }


      pcb->nrtx = 0;


      pcb->rto = (pcb->sa >> 3) + pcb->sv;


      pcb->dupacks = 0;
      pcb->lastack = ackno;



      if (pcb->state >= ESTABLISHED) {
        if (pcb->cwnd < pcb->ssthresh) {
          if ((tcpwnd_size_t)(pcb->cwnd + pcb->mss) > pcb->cwnd) {
            pcb->cwnd += pcb->mss;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: slow start cwnd %""4d""\n", pcb->cwnd) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        } else {
          tcpwnd_size_t new_cwnd = (pcb->cwnd + pcb->mss * pcb->mss / pcb->cwnd);
          if (new_cwnd > pcb->cwnd) {
            pcb->cwnd = new_cwnd;
          }
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: congestion avoidance cwnd %""4d""\n", pcb->cwnd) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        }
      }
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: ACK for %""8ld"", unacked->seqno %""8ld"":%""8ld""\n", ackno, pcb->unacked != 
# 1137 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 1137 "kernel/protocols/net/core/tcp_in.c"
     ? lwip_htonl(pcb->unacked->tcphdr->seqno): 0, pcb->unacked != 
# 1137 "kernel/protocols/net/core/tcp_in.c" 3 4
     ((void *)0)
# 1137 "kernel/protocols/net/core/tcp_in.c"
     ? lwip_htonl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((((u16_t)(lwip_htons(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U)): 0) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)




                                                                                                           ;



      while (pcb->unacked != 
# 1146 "kernel/protocols/net/core/tcp_in.c" 3 4
                            ((void *)0) 
# 1146 "kernel/protocols/net/core/tcp_in.c"
                                 &&
             ((s32_t)((u32_t)(lwip_htonl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((((u16_t)(lwip_htons(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U))) - (u32_t)(ackno)) <= 0)
                                                         ) {
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: removing %""8ld"":%""8ld"" from pcb->unacked\n", lwip_htonl(pcb->unacked->tcphdr->seqno), lwip_htonl(pcb->unacked->tcphdr->seqno) + ((pcb->unacked)->len + (((((u16_t)(lwip_htons(((pcb->unacked)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U))) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                ;

        next = pcb->unacked;
        pcb->unacked = pcb->unacked->next;

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: queuelen %""4d"" ... ", (tcpwnd_size_t)pcb->snd_queuelen) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        ;

        pcb->snd_queuelen -= pbuf_clen(next->p);
        recv_acked += next->len;
        tcp_seg_free(next);

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("%""4d"" (after freeing unacked)\n", (tcpwnd_size_t)pcb->snd_queuelen) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (pcb->snd_queuelen != 0) {
         
                                          ;
        }
      }



      if (pcb->unacked == 
# 1173 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0)
# 1173 "kernel/protocols/net/core/tcp_in.c"
                             ) {
        pcb->rtime = -1;
      } else {
        pcb->rtime = 0;
      }

      pcb->polltmr = 0;







    } else {

      tcp_send_empty_ack(pcb);
    }







    while (pcb->unsent != 
# 1198 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0) 
# 1198 "kernel/protocols/net/core/tcp_in.c"
                              &&
           (((s32_t)((u32_t)(ackno) - (u32_t)(lwip_htonl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((((u16_t)(lwip_htons(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U)))) >= 0) && ((s32_t)((u32_t)(ackno) - (u32_t)(pcb->snd_nxt)) <= 0))
                                                                 ) {
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: removing %""8ld"":%""8ld"" from pcb->unsent\n", lwip_htonl(pcb->unsent->tcphdr->seqno), lwip_htonl(pcb->unsent->tcphdr->seqno) + ((pcb->unsent)->len + (((((u16_t)(lwip_htons(((pcb->unsent)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U))) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)

                                                             ;

      next = pcb->unsent;
      pcb->unsent = pcb->unsent->next;

      if (pcb->unsent == 
# 1208 "kernel/protocols/net/core/tcp_in.c" 3 4
                        ((void *)0)
# 1208 "kernel/protocols/net/core/tcp_in.c"
                            ) {
        pcb->unsent_oversize = 0;
      }

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: queuelen %""4d"" ... ", (tcpwnd_size_t)pcb->snd_queuelen) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      ;

      pcb->snd_queuelen -= pbuf_clen(next->p);
      recv_acked += next->len;
      tcp_seg_free(next);
      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("%""4d"" (after freeing unsent)\n", (tcpwnd_size_t)pcb->snd_queuelen) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
      if (pcb->snd_queuelen != 0) {
       
                                                      ;
      }
    }
    pcb->snd_buf += recv_acked;


    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: pcb->rttest %""8ld"" rtseq %""8ld"" ackno %""8ld""\n", pcb->rttest, pcb->rtseq, ackno) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                ;




    if (pcb->rttest && ((s32_t)((u32_t)(pcb->rtseq) - (u32_t)(ackno)) < 0)) {


      m = (s16_t)(tcp_ticks - pcb->rttest);

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: experienced rtt %""4d"" ticks (%""4d"" msec).\n", m, (u16_t)(m * (2*250))) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                     ;


      m = m - (pcb->sa >> 3);
      pcb->sa += m;
      if (m < 0) {
        m = -m;
      }
      m = m - (pcb->sv >> 2);
      pcb->sv += m;
      pcb->rto = (pcb->sa >> 3) + pcb->sv;

      do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: RTO %""4d"" (%""4d"" milliseconds)\n", pcb->rto, (u16_t)(pcb->rto * (2*250))) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                   ;

      pcb->rttest = 0;
    }
  }





  if ((tcplen > 0) && (pcb->state < CLOSE_WAIT)) {
# 1293 "kernel/protocols/net/core/tcp_in.c"
    if ((((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + 1)) >= 0) && ((s32_t)((u32_t)(pcb->rcv_nxt) - (u32_t)(seqno + tcplen - 1)) <= 0))) {
# 1314 "kernel/protocols/net/core/tcp_in.c"
      struct pbuf *p = inseg.p;
      off = pcb->rcv_nxt - seqno;
      ;
      ;
      if (inseg.p->len < off) {
        ;
        new_tot_len = (u16_t)(inseg.p->tot_len - off);
        while (p->len < off) {
          off -= p->len;



          p->tot_len = new_tot_len;
          p->len = 0;
          p = p->next;
        }
        if (pbuf_header(p, (s16_t)-off)) {

          ;
        }
      } else {
        if (pbuf_header(inseg.p, (s16_t)-off)) {

          ;
        }
      }
      inseg.len -= (u16_t)(pcb->rcv_nxt - seqno);
      inseg.tcphdr->seqno = seqno = pcb->rcv_nxt;
    }
    else {
      if (((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) < 0)) {



        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: duplicate seqno %""8ld""\n", seqno) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        do { (pcb)->flags |= 0x02U; } while (0);
      }
    }




    if ((((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd - 1)) <= 0))
                                                        ) {
      if (pcb->rcv_nxt == seqno) {



        tcplen = ((&inseg)->len + (((((u16_t)(lwip_htons(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));

        if (tcplen > pcb->rcv_wnd) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: other end overran receive window" "seqno %""8ld"" len %""4d"" right edge %""8ld""\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                   ;
          if (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {


            (inseg.tcphdr)->_hdrlen_rsvd_flags = (((inseg.tcphdr)->_hdrlen_rsvd_flags & ((((~0x3fU) & 0xff) << 8) | (((~0x3fU) & 0xff00) >> 8))) | lwip_htons(((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & ~(unsigned int)0x01U));
          }

          ;
          inseg.len = (u16_t)pcb->rcv_wnd;
          if (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x02U) {
            inseg.len -= 1;
          }
          pbuf_realloc(inseg.p, inseg.len);
          tcplen = ((&inseg)->len + (((((u16_t)(lwip_htons(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));
         
                                                                        ;
        }




        if (pcb->ooseq != 
# 1389 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0)
# 1389 "kernel/protocols/net/core/tcp_in.c"
                             ) {
          if (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: received in-order FIN, binning ooseq queue\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)
                                                                                      ;



            while (pcb->ooseq != 
# 1396 "kernel/protocols/net/core/tcp_in.c" 3 4
                                ((void *)0)
# 1396 "kernel/protocols/net/core/tcp_in.c"
                                    ) {
              struct tcp_seg *old_ooseq = pcb->ooseq;
              pcb->ooseq = pcb->ooseq->next;
              tcp_seg_free(old_ooseq);
            }
          } else {
            next = pcb->ooseq;


            while (next &&
                   ((s32_t)((u32_t)(seqno + tcplen) - (u32_t)(next->tcphdr->seqno + next->len)) >= 0)
                                                               ) {

              if (((u16_t)(lwip_htons((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U &&
                  (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x02U) == 0) {
                (inseg.tcphdr)->_hdrlen_rsvd_flags = ((inseg.tcphdr)->_hdrlen_rsvd_flags | lwip_htons(0x01U));
                tcplen = ((&inseg)->len + (((((u16_t)(lwip_htons(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));
              }
              prev = next;
              next = next->next;
              tcp_seg_free(prev);
            }


            if (next &&
                ((s32_t)((u32_t)(seqno + tcplen) - (u32_t)(next->tcphdr->seqno)) > 0)
                                               ) {

              inseg.len = (u16_t)(next->tcphdr->seqno - seqno);
              if (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x02U) {
                inseg.len -= 1;
              }
              pbuf_realloc(inseg.p, inseg.len);
              tcplen = ((&inseg)->len + (((((u16_t)(lwip_htons(((&inseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));
             
                                                                  ;
            }
            pcb->ooseq = next;
          }
        }


        pcb->rcv_nxt = seqno + tcplen;


        ;
        pcb->rcv_wnd -= tcplen;

        tcp_update_rcv_ann_wnd(pcb);
# 1455 "kernel/protocols/net/core/tcp_in.c"
        if (inseg.p->tot_len > 0) {
          recv_data = inseg.p;



          inseg.p = 
# 1460 "kernel/protocols/net/core/tcp_in.c" 3 4
                   ((void *)0)
# 1460 "kernel/protocols/net/core/tcp_in.c"
                       ;
        }
        if (((u16_t)(lwip_htons((inseg.tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: received FIN.\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          recv_flags |= (u8_t)0x20U;
        }




        while (pcb->ooseq != 
# 1470 "kernel/protocols/net/core/tcp_in.c" 3 4
                            ((void *)0) 
# 1470 "kernel/protocols/net/core/tcp_in.c"
                                 &&
               pcb->ooseq->tcphdr->seqno == pcb->rcv_nxt) {

          cseg = pcb->ooseq;
          seqno = pcb->ooseq->tcphdr->seqno;

          pcb->rcv_nxt += ((cseg)->len + (((((u16_t)(lwip_htons(((cseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));
         
                                                       ;
          pcb->rcv_wnd -= ((cseg)->len + (((((u16_t)(lwip_htons(((cseg)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));

          tcp_update_rcv_ann_wnd(pcb);

          if (cseg->p->tot_len > 0) {





            if (recv_data) {
              pbuf_cat(recv_data, cseg->p);
            } else {
              recv_data = cseg->p;
            }
            cseg->p = 
# 1494 "kernel/protocols/net/core/tcp_in.c" 3 4
                     ((void *)0)
# 1494 "kernel/protocols/net/core/tcp_in.c"
                         ;
          }
          if (((u16_t)(lwip_htons((cseg->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {
            do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: dequeued FIN.\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
            recv_flags |= (u8_t)0x20U;
            if (pcb->state == ESTABLISHED) {
              pcb->state = CLOSE_WAIT;
            }
          }

          pcb->ooseq = cseg->next;
          tcp_seg_free(cseg);
        }




        do { if((pcb)->flags & 0x01U) { (pcb)->flags &= ~0x01U; (pcb)->flags |= 0x02U; } else { (pcb)->flags |= 0x01U; } } while (0);
# 1520 "kernel/protocols/net/core/tcp_in.c"
      } else {

        tcp_send_empty_ack(pcb);


        if (pcb->ooseq == 
# 1525 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0)
# 1525 "kernel/protocols/net/core/tcp_in.c"
                             ) {
          pcb->ooseq = tcp_seg_copy(&inseg);
        } else {
# 1540 "kernel/protocols/net/core/tcp_in.c"
          prev = 
# 1540 "kernel/protocols/net/core/tcp_in.c" 3 4
                ((void *)0)
# 1540 "kernel/protocols/net/core/tcp_in.c"
                    ;
          for (next = pcb->ooseq; next != 
# 1541 "kernel/protocols/net/core/tcp_in.c" 3 4
                                         ((void *)0)
# 1541 "kernel/protocols/net/core/tcp_in.c"
                                             ; next = next->next) {
            if (seqno == next->tcphdr->seqno) {




              if (inseg.len > next->len) {



                cseg = tcp_seg_copy(&inseg);
                if (cseg != 
# 1552 "kernel/protocols/net/core/tcp_in.c" 3 4
                           ((void *)0)
# 1552 "kernel/protocols/net/core/tcp_in.c"
                               ) {
                  if (prev != 
# 1553 "kernel/protocols/net/core/tcp_in.c" 3 4
                             ((void *)0)
# 1553 "kernel/protocols/net/core/tcp_in.c"
                                 ) {
                    prev->next = cseg;
                  } else {
                    pcb->ooseq = cseg;
                  }
                  tcp_oos_insert_segment(cseg, next);
                }
                break;
              } else {



                break;
              }
            } else {
              if (prev == 
# 1568 "kernel/protocols/net/core/tcp_in.c" 3 4
                         ((void *)0)
# 1568 "kernel/protocols/net/core/tcp_in.c"
                             ) {
                if (((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno)) < 0)) {




                  cseg = tcp_seg_copy(&inseg);
                  if (cseg != 
# 1575 "kernel/protocols/net/core/tcp_in.c" 3 4
                             ((void *)0)
# 1575 "kernel/protocols/net/core/tcp_in.c"
                                 ) {
                    pcb->ooseq = cseg;
                    tcp_oos_insert_segment(cseg, next);
                  }
                  break;
                }
              } else {


                if ((((s32_t)((u32_t)(seqno) - (u32_t)(prev->tcphdr->seqno+1)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno-1)) <= 0))) {





                  cseg = tcp_seg_copy(&inseg);
                  if (cseg != 
# 1591 "kernel/protocols/net/core/tcp_in.c" 3 4
                             ((void *)0)
# 1591 "kernel/protocols/net/core/tcp_in.c"
                                 ) {
                    if (((s32_t)((u32_t)(prev->tcphdr->seqno + prev->len) - (u32_t)(seqno)) > 0)) {

                      prev->len = (u16_t)(seqno - prev->tcphdr->seqno);
                      pbuf_realloc(prev->p, prev->len);
                    }
                    prev->next = cseg;
                    tcp_oos_insert_segment(cseg, next);
                  }
                  break;
                }
              }



              if (next->next == 
# 1606 "kernel/protocols/net/core/tcp_in.c" 3 4
                               ((void *)0) 
# 1606 "kernel/protocols/net/core/tcp_in.c"
                                    &&
                  ((s32_t)((u32_t)(seqno) - (u32_t)(next->tcphdr->seqno)) > 0)) {
                if (((u16_t)(lwip_htons((next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {

                  break;
                }
                next->next = tcp_seg_copy(&inseg);
                if (next->next != 
# 1613 "kernel/protocols/net/core/tcp_in.c" 3 4
                                 ((void *)0)
# 1613 "kernel/protocols/net/core/tcp_in.c"
                                     ) {
                  if (((s32_t)((u32_t)(next->tcphdr->seqno + next->len) - (u32_t)(seqno)) > 0)) {

                    next->len = (u16_t)(seqno - next->tcphdr->seqno);
                    pbuf_realloc(next->p, next->len);
                  }

                  if (((s32_t)((u32_t)((u32_t)tcplen + seqno) - (u32_t)(pcb->rcv_nxt + (u32_t)pcb->rcv_wnd)) > 0)) {
                    do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_receive: other end overran receive window" "seqno %""8ld"" len %""4d"" right edge %""8ld""\n", seqno, tcplen, pcb->rcv_nxt + pcb->rcv_wnd) ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0)


                                                                             ;
                    if (((u16_t)(lwip_htons((next->next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & 0x01U) {


                      (next->next->tcphdr)->_hdrlen_rsvd_flags = (((next->next->tcphdr)->_hdrlen_rsvd_flags & ((((~0x3fU) & 0xff) << 8) | (((~0x3fU) & 0xff00) >> 8))) | lwip_htons(((u16_t)(lwip_htons((next->next->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & ~0x01U));
                    }

                    next->next->len = (u16_t)(pcb->rcv_nxt + pcb->rcv_wnd - seqno);
                    pbuf_realloc(next->next->p, next->next->len);
                    tcplen = ((next->next)->len + (((((u16_t)(lwip_htons(((next->next)->tcphdr)->_hdrlen_rsvd_flags) & 0x3fU)) & (0x01U | 0x02U)) != 0) ? 1U : 0U));
                   
                                                                                  ;
                  }
                }
                break;
              }
            }
            prev = next;
          }
        }
# 1670 "kernel/protocols/net/core/tcp_in.c"
      }
    } else {

      tcp_send_empty_ack(pcb);
    }
  } else {


    if (!(((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt)) >= 0) && ((s32_t)((u32_t)(seqno) - (u32_t)(pcb->rcv_nxt + pcb->rcv_wnd - 1)) <= 0))) {
      do { (pcb)->flags |= 0x02U; } while (0);
    }
  }
}

static u8_t
tcp_getoptbyte(void)
{
  if ((tcphdr_opt2 == 
# 1687 "kernel/protocols/net/core/tcp_in.c" 3 4
                     ((void *)0)
# 1687 "kernel/protocols/net/core/tcp_in.c"
                         ) || (tcp_optidx < tcphdr_opt1len)) {
    u8_t* opts = (u8_t *)tcphdr + 20;
    return opts[tcp_optidx++];
  } else {
    u8_t idx = (u8_t)(tcp_optidx++ - tcphdr_opt1len);
    return tcphdr_opt2[idx];
  }
}
# 1704 "kernel/protocols/net/core/tcp_in.c"
static void
tcp_parseopt(struct tcp_pcb *pcb)
{
  u8_t data;
  u16_t mss;





  if (tcphdr_optlen != 0) {
    for (tcp_optidx = 0; tcp_optidx < tcphdr_optlen; ) {
      u8_t opt = tcp_getoptbyte();
      switch (opt) {
      case 0:

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: EOL\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        return;
      case 1:

        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: NOP\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        break;
      case 2:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: MSS\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        if (tcp_getoptbyte() != 4 || (tcp_optidx - 2 + 4) > tcphdr_optlen) {

          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: bad length\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
          return;
        }

        mss = (tcp_getoptbyte() << 8);
        mss |= tcp_getoptbyte();

        pcb->mss = ((mss > (1500 - 40)) || (mss == 0)) ? (1500 - 40) : mss;
        break;
# 1790 "kernel/protocols/net/core/tcp_in.c"
      default:
        do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: other\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);
        data = tcp_getoptbyte();
        if (data < 2) {
          do { if ( ((0x00U) & 0x80U) && ((0x00U) & 0x80U) && ((s16_t)((0x00U) & 0x03) >= 0x00)) { do {bk_printf ("tcp_parseopt: bad length\n") ;} while(0); if ((0x00U) & 0x08U) { while(1); } } } while(0);


          return;
        }


        tcp_optidx += data - 2;
      }
    }
  }
}

void
tcp_trigger_input_pcb_close(void)
{
  recv_flags |= (u8_t)0x10U;
}
