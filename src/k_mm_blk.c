# 1 "kernel/rhino/core/k_mm_blk.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kernel/rhino/core/k_mm_blk.c"




# 1 "./kernel/rhino/core/include/k_api.h" 1
# 12 "./kernel/rhino/core/include/k_api.h"
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 149 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 3 4

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
# 13 "./kernel/rhino/core/include/k_api.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 1 3 4
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 27 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 41 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 63 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 89 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 120 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 146 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 168 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 200 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdint.h" 2 3 4
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
# 14 "./kernel/rhino/core/include/k_api.h" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/newlib.h" 1 3
# 16 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 1 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 5 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/config.h" 2 3
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 2 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 15 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 1 3
# 24 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_types.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/_types.h" 1 3
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
# 12 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 1 3
# 45 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 46 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/cdefs.h" 2 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3




# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 18 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3


# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 1 3
# 9 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 21 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void * restrict, const void * restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);






char *strtok_r (char *restrict, const char *restrict, char **restrict);


int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);


void explicit_bzero (void *, size_t);
int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


int ffs (int);
char *index (const char *, int);


void * memccpy (void * restrict, const void * restrict, int, size_t);
# 86 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
char *rindex (const char *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


int strcasecmp (const char *, const char *);






char *strdup (const char *);

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t);

char *_strndup_r (struct _reent *, const char *, size_t);
# 121 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
int strerror_r (int, char *, size_t)

             __asm__ ("" "__xpg_strerror_r")

  ;







char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


int strncasecmp (const char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);
# 192 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/string.h" 1 3
# 193 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3


# 15 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./board/mk3060/./k_config.h" 1
# 16 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_default_config.h" 1
# 17 "./kernel/rhino/core/include/k_api.h" 2
# 1 "././platform/arch/arm/armv5/./gcc/k_types.h" 1
# 14 "././platform/arch/arm/armv5/./gcc/k_types.h"

# 14 "././platform/arch/arm/armv5/./gcc/k_types.h"
typedef char name_t;
typedef uint32_t sem_count_t;
typedef uint32_t cpu_stack_t;
typedef uint32_t hr_timer_t;
typedef uint32_t lr_timer_t;
typedef uint32_t mutex_nested_t;
typedef uint8_t suspend_nested_t;
typedef uint64_t ctx_switch_t;
typedef uint32_t cpu_cpsr_t;
# 18 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_err.h" 1







typedef enum {
    RHINO_SUCCESS = 0u,
    RHINO_SYS_FATAL_ERR,
    RHINO_SYS_SP_ERR,
    RHINO_RUNNING,
    RHINO_STOPPED,
    RHINO_INV_PARAM,
    RHINO_NULL_PTR,
    RHINO_INV_ALIGN,
    RHINO_KOBJ_TYPE_ERR,
    RHINO_KOBJ_DEL_ERR,
    RHINO_KOBJ_DOCKER_EXIST,
    RHINO_KOBJ_BLK,
    RHINO_KOBJ_SET_FULL,
    RHINO_NOTIFY_FUNC_EXIST,

    RHINO_MM_POOL_SIZE_ERR = 100u,
    RHINO_MM_ALLOC_SIZE_ERR,
    RHINO_MM_FREE_ADDR_ERR,
    RHINO_MM_CORRUPT_ERR,
    RHINO_DYN_MEM_PROC_ERR,
    RHINO_NO_MEM,
    RHINO_RINGBUF_FULL,
    RHINO_RINGBUF_EMPTY,

    RHINO_SCHED_DISABLE = 200u,
    RHINO_SCHED_ALREADY_ENABLED,
    RHINO_SCHED_LOCK_COUNT_OVF,
    RHINO_INV_SCHED_WAY,

    RHINO_TASK_INV_STACK_SIZE = 300u,
    RHINO_TASK_NOT_SUSPENDED,
    RHINO_TASK_DEL_NOT_ALLOWED,
    RHINO_TASK_SUSPEND_NOT_ALLOWED,
    RHINO_SUSPENDED_COUNT_OVF,
    RHINO_BEYOND_MAX_PRI,
    RHINO_PRI_CHG_NOT_ALLOWED,
    RHINO_INV_TASK_STATE,
    RHINO_IDLE_TASK_EXIST,

    RHINO_NO_PEND_WAIT = 400u,
    RHINO_BLK_ABORT,
    RHINO_BLK_TIMEOUT,
    RHINO_BLK_DEL,
    RHINO_BLK_INV_STATE,
    RHINO_BLK_POOL_SIZE_ERR,

    RHINO_TIMER_STATE_INV = 500u,

    RHINO_NO_THIS_EVENT_OPT = 600u,

    RHINO_BUF_QUEUE_INV_SIZE = 700u,
    RHINO_BUF_QUEUE_SIZE_ZERO,
    RHINO_BUF_QUEUE_FULL,
    RHINO_BUF_QUEUE_MSG_SIZE_OVERFLOW,
    RHINO_QUEUE_FULL,
    RHINO_QUEUE_NOT_FULL,

    RHINO_SEM_OVF = 800u,
    RHINO_SEM_TASK_WAITING,

    RHINO_MUTEX_NOT_RELEASED_BY_OWNER = 900u,
    RHINO_MUTEX_OWNER_NESTED,
    RHINO_MUTEX_NESTED_OVF,

    RHINO_NOT_CALLED_BY_INTRPT = 1000u,
    RHINO_TRY_AGAIN,

    RHINO_WORKQUEUE_EXIST = 1100u,
    RHINO_WORKQUEUE_NOT_EXIST,
    RHINO_WORKQUEUE_WORK_EXIST,
    RHINO_WORKQUEUE_BUSY,
    RHINO_WORKQUEUE_WORK_RUNNING,

    RHINO_TASK_STACK_OVF = 1200u,
    RHINO_INTRPT_STACK_OVF
} kstat_t;

typedef void (*krhino_err_proc_t)(kstat_t err);

extern krhino_err_proc_t g_err_proc;
# 19 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_critical.h" 1
# 20 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_spin_lock.h" 1







typedef struct {



    cpu_cpsr_t cpsr;
} kspinlock_t;
# 21 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sys.h" 1
# 18 "./kernel/rhino/core/include/k_sys.h"
typedef uint64_t sys_time_t;
typedef int64_t sys_time_i_t;
typedef uint64_t idle_count_t;
typedef uint64_t tick_t;
typedef int64_t tick_i_t;
# 36 "./kernel/rhino/core/include/k_sys.h"
kstat_t krhino_init(void);





kstat_t krhino_start(void);





kstat_t krhino_intrpt_enter(void);




void krhino_intrpt_exit(void);




void krhino_intrpt_stack_ovf_check(void);




tick_t krhino_next_sleep_ticks_get(void);





size_t krhino_global_space_get(void);





uint32_t krhino_version_get(void);
# 22 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_bitmap.h" 1
# 33 "./kernel/rhino/core/include/k_bitmap.h"
static inline void krhino_bitmap_set(uint32_t *bitmap, int32_t nr)
{
    bitmap[((nr) >> 5U)] |= (1UL << (32U - 1U - ((nr) & 0X0000001F)));
}







static inline void krhino_bitmap_clear(uint32_t *bitmap, int32_t nr)
{
    bitmap[((nr) >> 5U)] &= ~(1UL << (32U - 1U - ((nr) & 0X0000001F)));
}



static inline uint8_t krhino_clz32(uint32_t x)
{
    uint8_t n = 0;

    if (x == 0) {
        return 32;
    }

    if ((x & 0XFFFF0000) == 0) {
        x <<= 16;
        n += 16;
    }
    if ((x & 0XFF000000) == 0) {
        x <<= 8;
        n += 8;
    }
    if ((x & 0XF0000000) == 0) {
        x <<= 4;
        n += 4;
    }
    if ((x & 0XC0000000) == 0) {
        x <<= 2;
        n += 2;
    }
    if ((x & 0X80000000) == 0) {
        n += 1;
    }

    return n;
}



static inline uint8_t krhino_ctz32(uint32_t x)
{
    uint8_t n = 0;

    if (x == 0) {
        return 32;
    }

    if ((x & 0X0000FFFF) == 0) {
        x >>= 16;
        n += 16;
    }
    if ((x & 0X000000FF) == 0) {
        x >>= 8;
        n += 8;
    }
    if ((x & 0X0000000F) == 0) {
        x >>= 4;
        n += 4;
    }
    if ((x & 0X00000003) == 0) {
        x >>= 2;
        n += 2;
    }
    if ((x & 0X00000001) == 0) {
        n += 1;
    }

    return n;
}







static inline int32_t krhino_find_first_bit(uint32_t *bitmap)
{
    int32_t nr = 0;
    uint32_t tmp = 0;

    while (*bitmap == 0UL) {
        nr += 32U;
        bitmap++;
    }

    tmp = *bitmap;


    if (!(tmp & 0XFFFF0000)) {
        tmp <<= 16;
        nr += 16;
    }

    if (!(tmp & 0XFF000000)) {
        tmp <<= 8;
        nr += 8;
    }

    if (!(tmp & 0XF0000000)) {
        tmp <<= 4;
        nr += 4;
    }

    if (!(tmp & 0XC0000000)) {
        tmp <<= 2;
        nr += 2;
    }

    if (!(tmp & 0X80000000)) {
        nr += 1;
    }




    return nr;
}
# 23 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_list.h" 1







typedef struct klist_s {
    struct klist_s *next;
    struct klist_s *prev;
} klist_t;



static inline void klist_init(klist_t *list_head)
{
    list_head->next = list_head;
    list_head->prev = list_head;
}

static inline uint8_t is_klist_empty(klist_t *list)
{
    return (list->next == list);
}

static inline void klist_insert(klist_t *head, klist_t *element)
{
    element->prev = head->prev;
    element->next = head;

    head->prev->next = element;
    head->prev = element;
}

static inline void klist_add(klist_t *head, klist_t *element)
{
    element->prev = head;
    element->next = head->next;

    head->next->prev = element;
    head->next = element;
}

static inline void klist_rm(klist_t *element)
{
    element->prev->next = element->next;
    element->next->prev = element->prev;
}

static inline void klist_rm_init(klist_t *element)
{
    element->prev->next = element->next;
    element->next->prev = element->prev;

    element->next = element->prev = element;
}
# 24 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_obj.h" 1







typedef enum {
    BLK_POLICY_PRI = 0u,
    BLK_POLICY_FIFO
} blk_policy_t;

typedef enum {
    BLK_FINISH = 0,
    BLK_ABORT,
    BLK_TIMEOUT,
    BLK_DEL,
    BLK_INVALID
} blk_state_t;

typedef enum {
    RHINO_OBJ_TYPE_NONE = 0,
    RHINO_SEM_OBJ_TYPE,
    RHINO_MUTEX_OBJ_TYPE,
    RHINO_QUEUE_OBJ_TYPE,
    RHINO_BUF_QUEUE_OBJ_TYPE,
    RHINO_TIMER_OBJ_TYPE,
    RHINO_EVENT_OBJ_TYPE,
    RHINO_MM_OBJ_TYPE
} kobj_type_t;

typedef struct blk_obj {
    klist_t blk_list;
    const name_t *name;
    blk_policy_t blk_policy;
    kobj_type_t obj_type;
} blk_obj_t;

typedef struct {
    klist_t task_head;
    klist_t mutex_head;


    klist_t mblkpool_head;



    klist_t sem_head;



    klist_t queue_head;



    klist_t event_head;



    klist_t buf_queue_head;

} kobj_list_t;
# 25 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sched.h" 1
# 13 "./kernel/rhino/core/include/k_sched.h"
typedef struct {
    klist_t *cur_list_item[62];
    uint32_t task_bit_map[((62 + 31) / 32)];
    uint8_t highest_pri;
} runqueue_t;





kstat_t krhino_sched_disable(void);





kstat_t krhino_sched_enable(void);
# 26 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_task.h" 1







typedef enum {
    K_SEED,
    K_RDY,
    K_PEND,
    K_SUSPENDED,
    K_PEND_SUSPENDED,
    K_SLEEP,
    K_SLEEP_SUSPENDED,
    K_DELETED,
} task_stat_t;



typedef struct {


    void *task_stack;

    const name_t *task_name;


    void *user_info[2];


    cpu_stack_t *task_stack_base;
    uint32_t stack_size;
    klist_t task_list;


    suspend_nested_t suspend_count;


    struct mutex_s *mutex_list;


    klist_t task_stats_item;


    klist_t tick_list;
    tick_t tick_match;
    tick_t tick_remain;
    klist_t *tick_head;

    void *msg;


    size_t bq_msg_size;


    task_stat_t task_state;
    blk_state_t blk_state;


    blk_obj_t *blk_obj;


    struct sem_s *task_sem_obj;
# 86 "./kernel/rhino/core/include/k_task.h"
    uint32_t time_slice;
    uint32_t time_total;



    uint32_t pend_flags;
    void *pend_info;
    uint8_t pend_option;



    uint8_t sched_policy;


    uint8_t cpu_num;







    uint8_t prio;

    uint8_t b_prio;
    uint8_t mm_alloc_flag;
} ktask_t;

typedef void (*task_entry_t)(void *arg);
# 129 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_create(ktask_t *task, const name_t *name, void *arg,
                           uint8_t prio, tick_t ticks, cpu_stack_t *stack_buf,
                           size_t stack_size, task_entry_t entry, uint8_t autorun);
# 157 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_dyn_create(ktask_t **task, const name_t *name, void *arg,
                               uint8_t pri,
                               tick_t ticks, size_t stack,
                               task_entry_t entry, uint8_t autorun);
# 175 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_del(ktask_t *task);






kstat_t krhino_task_dyn_del(ktask_t *task);
# 192 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_sleep(tick_t dly);





kstat_t krhino_task_yield(void);





ktask_t *krhino_cur_task_get(void);







kstat_t krhino_task_suspend(ktask_t *task);






kstat_t krhino_task_resume(ktask_t *task);
# 228 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_stack_min_free(ktask_t *task, size_t *free);
# 237 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_stack_cur_free(ktask_t *task, size_t *free);
# 246 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_pri_change(ktask_t *task, uint8_t pri, uint8_t *old_pri);







kstat_t krhino_task_wait_abort(ktask_t *task);
# 264 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_time_slice_set(ktask_t *task, size_t slice);







kstat_t krhino_sched_policy_set(ktask_t *task, uint8_t policy);







kstat_t krhino_sched_policy_get(ktask_t *task, uint8_t *policy);
# 290 "./kernel/rhino/core/include/k_task.h"
kstat_t krhino_task_info_set(ktask_t *task, size_t idx, void *info);







kstat_t krhino_task_info_get(ktask_t *task, size_t idx, void **info);






void krhino_task_deathbed(void);
# 27 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_ringbuf.h" 1
# 33 "./kernel/rhino/core/include/k_ringbuf.h"
typedef struct {
    uint8_t *buf;
    uint8_t *end;
    uint8_t *head;
    uint8_t *tail;
    size_t freesize;
    size_t type;
    size_t blk_size;
} k_ringbuf_t;
# 28 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_queue.h" 1
# 11 "./kernel/rhino/core/include/k_queue.h"
typedef struct {
    void **queue_start;
    size_t size;
    size_t cur_num;
    size_t peak_num;
} msg_q_t;

typedef struct {
    msg_q_t msg_q;
    klist_t *pend_entry;
} msg_info_t;

typedef struct queue_s {
    blk_obj_t blk_obj;
    k_ringbuf_t ringbuf;
    msg_q_t msg_q;

    klist_t queue_item;

    uint8_t mm_alloc_flag;
} kqueue_t;
# 41 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_create(kqueue_t *queue, const name_t *name, void **start,
                            size_t msg_num);






kstat_t krhino_queue_del(kqueue_t *queue);
# 59 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_dyn_create(kqueue_t **queue, const name_t *name,
                                size_t msg_num);






kstat_t krhino_queue_dyn_del(kqueue_t *queue);
# 76 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_back_send(kqueue_t *queue, void *msg);







kstat_t krhino_queue_all_send(kqueue_t *queue, void *msg);
# 93 "./kernel/rhino/core/include/k_queue.h"
kstat_t krhino_queue_recv(kqueue_t *queue, tick_t ticks, void **msg);






kstat_t krhino_queue_is_full(kqueue_t *queue);






kstat_t krhino_queue_flush(kqueue_t *queue);







kstat_t krhino_queue_info_get(kqueue_t *queue, msg_info_t *info);
# 29 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_buf_queue.h" 1







typedef struct {
    blk_obj_t blk_obj;
    void *buf;
    k_ringbuf_t ringbuf;
    size_t max_msg_size;
    size_t cur_num;
    size_t peak_num;
    size_t min_free_buf_size;

    klist_t buf_queue_item;

    uint8_t mm_alloc_flag;
} kbuf_queue_t;

typedef struct {
    size_t buf_size;
    size_t max_msg_size;
    size_t cur_num;
    size_t peak_num;
    size_t free_buf_size;
    size_t min_free_buf_size;
} kbuf_queue_info_t;
# 40 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_create(kbuf_queue_t *queue, const name_t *name,
                                void *buf,
                                size_t size, size_t max_msg);
# 53 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_fix_buf_queue_create(kbuf_queue_t *queue, const name_t *name,
                                    void *buf, size_t msg_size, size_t msg_num);






kstat_t krhino_buf_queue_del(kbuf_queue_t *queue);
# 72 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_dyn_create(kbuf_queue_t **queue, const name_t *name,
                                    size_t size, size_t max_msg);






kstat_t krhino_buf_queue_dyn_del(kbuf_queue_t *queue);
# 90 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_send(kbuf_queue_t *queue, void *msg, size_t size);
# 101 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_recv(kbuf_queue_t *queue, tick_t ticks, void *msg,
                              size_t *size);






kstat_t krhino_buf_queue_flush(kbuf_queue_t *queue);
# 118 "./kernel/rhino/core/include/k_buf_queue.h"
kstat_t krhino_buf_queue_info_get(kbuf_queue_t *queue, kbuf_queue_info_t *info);
# 30 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_sem.h" 1
# 11 "./kernel/rhino/core/include/k_sem.h"
typedef struct sem_s {
    blk_obj_t blk_obj;
    sem_count_t count;
    sem_count_t peak_count;

    klist_t sem_item;

    uint8_t mm_alloc_flag;
} ksem_t;
# 28 "./kernel/rhino/core/include/k_sem.h"
kstat_t krhino_sem_create(ksem_t *sem, const name_t *name, sem_count_t count);






kstat_t krhino_sem_del(ksem_t *sem);
# 45 "./kernel/rhino/core/include/k_sem.h"
kstat_t krhino_sem_dyn_create(ksem_t **sem, const name_t *name,
                              sem_count_t count);






kstat_t krhino_sem_dyn_del(ksem_t *sem);







kstat_t krhino_sem_give(ksem_t *sem);






kstat_t krhino_sem_give_all(ksem_t *sem);







kstat_t krhino_sem_take(ksem_t *sem, tick_t ticks);







kstat_t krhino_sem_count_set(ksem_t *sem, sem_count_t count);







kstat_t krhino_sem_count_get(ksem_t *sem, sem_count_t *count);
# 31 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_task_sem.h" 1
# 16 "./kernel/rhino/core/include/k_task_sem.h"
kstat_t krhino_task_sem_create(ktask_t *task, ksem_t *sem, const name_t *name,
                               size_t count);






kstat_t krhino_task_sem_del(ktask_t *task);






kstat_t krhino_task_sem_give(ktask_t *task);






kstat_t krhino_task_sem_take(tick_t ticks);







kstat_t krhino_task_sem_count_set(ktask_t *task, sem_count_t count);







kstat_t krhino_task_sem_count_get(ktask_t *task, sem_count_t *count);
# 32 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mutex.h" 1







typedef struct mutex_s {
    blk_obj_t blk_obj;
    ktask_t *mutex_task;
    struct mutex_s *mutex_list;
    mutex_nested_t owner_nested;


    klist_t mutex_item;


    uint8_t mm_alloc_flag;
} kmutex_t;







kstat_t krhino_mutex_create(kmutex_t *mutex, const name_t *name);






kstat_t krhino_mutex_del(kmutex_t *mutex);
# 43 "./kernel/rhino/core/include/k_mutex.h"
kstat_t krhino_mutex_dyn_create(kmutex_t **mutex, const name_t *name);






kstat_t krhino_mutex_dyn_del(kmutex_t *mutex);
# 59 "./kernel/rhino/core/include/k_mutex.h"
kstat_t krhino_mutex_lock(kmutex_t *mutex, tick_t ticks);






kstat_t krhino_mutex_unlock(kmutex_t *mutex);
# 33 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_timer.h" 1







enum {
    TIMER_CMD_CB = 0u,
    TIMER_CMD_START,
    TIMER_CMD_STOP,
    TIMER_CMD_CHG,
    TIMER_ARG_CHG,
    TIMER_ARG_CHG_AUTO,
    TIMER_CMD_DEL,
    TIMER_CMD_DYN_DEL
};

typedef void (*timer_cb_t)(void *timer, void *arg);

typedef struct {
    klist_t timer_list;
    klist_t *to_head;
    const name_t *name;
    timer_cb_t cb;
    void *timer_cb_arg;
    sys_time_t match;
    sys_time_t remain;
    sys_time_t init_count;
    sys_time_t round_ticks;
    void *priv;
    kobj_type_t obj_type;
    uint8_t timer_state;
    uint8_t mm_alloc_flag;
} ktimer_t;

typedef struct {
    ktimer_t *timer;
    uint8_t cb_num;
    sys_time_t first;
    union {
        sys_time_t round;
        void *arg;
    } u;
} k_timer_queue_cb;

typedef enum {
    TIMER_DEACTIVE = 0u,
    TIMER_ACTIVE
} k_timer_state_t;
# 63 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_create(ktimer_t *timer, const name_t *name, timer_cb_t cb,
                            sys_time_t first, sys_time_t round, void *arg, uint8_t auto_run);






kstat_t krhino_timer_del(ktimer_t *timer);
# 85 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_dyn_create(ktimer_t **timer, const name_t *name,
                                timer_cb_t cb,
                                sys_time_t first, sys_time_t round, void *arg, uint8_t auto_run);





kstat_t krhino_timer_dyn_del(ktimer_t *timer);







kstat_t krhino_timer_start(ktimer_t *timer);






kstat_t krhino_timer_stop(ktimer_t *timer);
# 117 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_change(ktimer_t *timer, sys_time_t first, sys_time_t round);
# 126 "./kernel/rhino/core/include/k_timer.h"
kstat_t krhino_timer_arg_change_auto(ktimer_t *timer, void *arg);







kstat_t krhino_timer_arg_change(ktimer_t *timer, void *arg);
# 34 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_time.h" 1
# 12 "./kernel/rhino/core/include/k_time.h"
void krhino_tick_proc(void);





sys_time_t krhino_sys_time_get(void);





sys_time_t krhino_sys_tick_get(void);






tick_t krhino_ms_to_ticks(sys_time_t ms);






sys_time_t krhino_ticks_to_ms(tick_t ticks);
# 35 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_event.h" 1







typedef struct {
    blk_obj_t blk_obj;
    uint32_t flags;


    klist_t event_item;


    uint8_t mm_alloc_flag;
} kevent_t;
# 34 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_create(kevent_t *event, const name_t *name, uint32_t flags);






kstat_t krhino_event_del(kevent_t *event);
# 51 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_dyn_create(kevent_t **event, const name_t *name,
                                uint32_t flags);






kstat_t krhino_event_dyn_del(kevent_t *event);
# 71 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_get(kevent_t *event, uint32_t flags, uint8_t opt,
                         uint32_t *actl_flags, tick_t ticks);
# 81 "./kernel/rhino/core/include/k_event.h"
kstat_t krhino_event_set(kevent_t *event, uint32_t flags, uint8_t opt);
# 36 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_stats.h" 1
# 9 "./kernel/rhino/core/include/k_stats.h"
void kobj_list_init(void);






void krhino_stack_ovf_check(void);
# 37 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_debug.h" 1
# 15 "./kernel/rhino/core/include/k_mm_debug.h"
typedef struct {
    void *start;
    void *end;
} mm_scan_region_t;


# 1 "./kernel/rhino/core/include/k_mm.h" 1
# 78 "./kernel/rhino/core/include/k_mm.h"
typedef struct free_ptr_struct {
    struct k_mm_list_struct *prev;
    struct k_mm_list_struct *next;
} free_ptr_t;

typedef struct k_mm_list_struct {

    size_t dye;
    size_t owner;

    struct k_mm_list_struct *prev;


    size_t buf_size;
    union {
        struct free_ptr_struct free_ptr;
        uint8_t buffer[1];
    } mbinfo;
} k_mm_list_t;

typedef struct k_mm_region_info_struct {
    k_mm_list_t *end;
    struct k_mm_region_info_struct *next;
} k_mm_region_info_t;


typedef struct {



    kspinlock_t mm_lock;

    k_mm_region_info_t *regioninfo;

    void *fix_pool;


    size_t used_size;
    size_t maxused_size;
    size_t free_size;

    size_t alloc_times[(19 - 6 + 2)];


    uint32_t free_bitmap;


    k_mm_list_t *freelist[(19 - 6 + 2)];
} k_mm_head;

kstat_t krhino_init_mm_head(k_mm_head **ppmmhead, void *addr, size_t len );
kstat_t krhino_deinit_mm_head(k_mm_head *mmhead);
kstat_t krhino_add_mm_region(k_mm_head *mmhead, void *addr, size_t len);

void *k_mm_alloc(k_mm_head *mmhead, size_t size);
void k_mm_free(k_mm_head *mmhead, void *ptr);
void *k_mm_realloc(k_mm_head *mmhead, void *oldmem, size_t new_size);






void *krhino_mm_alloc(size_t size);





void krhino_mm_free(void *ptr);







void *krhino_mm_realloc(void *oldmem, size_t newsize);
# 22 "./kernel/rhino/core/include/k_mm_debug.h" 2

void krhino_owner_attach(k_mm_head *mmhead, void *addr, size_t allocator);


uint32_t krhino_mm_leak_region_init(void *start, void *end);

uint32_t dumpsys_mm_info_func(uint32_t len);

uint32_t dump_mmleak(void);
# 38 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_blk.h" 1







typedef struct {
    const name_t *pool_name;
    void *pool_end;
    void *pool_start;
    size_t blk_size;
    size_t blk_avail;
    size_t blk_whole;
    uint8_t *avail_list;
    kspinlock_t blk_lock;

    klist_t mblkpool_stats_item;

} mblk_pool_t;
# 31 "./kernel/rhino/core/include/k_mm_blk.h"
kstat_t krhino_mblk_pool_init(mblk_pool_t *pool, const name_t *name,
                              void *pool_start,
                              size_t blk_size, size_t pool_size);







kstat_t krhino_mblk_alloc(mblk_pool_t *pool, void **blk);







kstat_t krhino_mblk_free(mblk_pool_t *pool, void *blk);
# 39 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_mm_region.h" 1







typedef struct {
    uint8_t *start;
    size_t len;
} k_mm_region_t;
# 40 "./kernel/rhino/core/include/k_api.h" 2

# 1 "./kernel/rhino/core/include/k_workqueue.h" 1
# 11 "./kernel/rhino/core/include/k_workqueue.h"
typedef void (*work_handle_t)(void *arg);

typedef struct {
    klist_t work_node;
    work_handle_t handle;
    void *arg;
    tick_t dly;
    ktimer_t *timer;
    void *wq;
    uint8_t work_exit;
} kwork_t;

typedef struct {
    klist_t workqueue_node;
    klist_t work_list;
    kwork_t *work_current;
    const name_t *name;
    ktask_t worker;
    ksem_t sem;
} kworkqueue_t;
# 41 "./kernel/rhino/core/include/k_workqueue.h"
kstat_t krhino_workqueue_create(kworkqueue_t *workqueue, const name_t *name,
                                uint8_t pri, cpu_stack_t *stack_buf, size_t stack_size);
# 52 "./kernel/rhino/core/include/k_workqueue.h"
kstat_t krhino_work_init(kwork_t *work, work_handle_t handle, void *arg,
                         tick_t dly);







kstat_t krhino_work_run(kworkqueue_t *workqueue, kwork_t *work);






kstat_t krhino_work_sched(kwork_t *work);






kstat_t krhino_work_cancel(kwork_t *work);
# 42 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_internal.h" 1







extern kstat_t g_sys_stat;
extern uint8_t g_idle_task_spawned[1];

extern runqueue_t g_ready_queue;


extern uint8_t g_sched_lock[1];
extern uint8_t g_intrpt_nested_level[1];


extern ktask_t *g_preferred_ready_task[1];


extern ktask_t *g_active_task[1];


extern ktask_t g_idle_task[1];
extern idle_count_t g_idle_count[1];
extern cpu_stack_t g_idle_task_stack[1][200];


extern tick_t g_tick_count;
extern klist_t g_tick_head;


extern kobj_list_t g_kobj_list;



extern klist_t g_timer_head;
extern sys_time_t g_timer_count;
extern ktask_t g_timer_task;
extern cpu_stack_t g_timer_task_stack[300];
extern kbuf_queue_t g_timer_queue;
extern k_timer_queue_cb timer_queue_cb[20];
# 74 "./kernel/rhino/core/include/k_internal.h"
extern ksem_t g_res_sem;
extern klist_t g_res_list;
extern ktask_t g_dyn_task;
extern cpu_stack_t g_dyn_task_stack[256];



extern klist_t g_workqueue_list_head;
extern kmutex_t g_workqueue_mutex;
extern kworkqueue_t g_workqueue_default;
extern cpu_stack_t g_workqueue_stack[768];



extern k_mm_head *g_kmm_head;
# 115 "./kernel/rhino/core/include/k_internal.h"
typedef struct {
    size_t cnt;
    void *res[4];
    klist_t res_list;
} res_free_t;

ktask_t *preferred_cpu_ready_task_get(runqueue_t *rq, uint8_t cpu_num);

void core_sched(void);
void runqueue_init(runqueue_t *rq);

void ready_list_add(runqueue_t *rq, ktask_t *task);
void ready_list_add_head(runqueue_t *rq, ktask_t *task);
void ready_list_add_tail(runqueue_t *rq, ktask_t *task);
void ready_list_rm(runqueue_t *rq, ktask_t *task);
void ready_list_head_to_tail(runqueue_t *rq, ktask_t *task);

void time_slice_update(void);
void timer_task_sched(void);

void pend_list_reorder(ktask_t *task);
void pend_task_wakeup(ktask_t *task);
void pend_to_blk_obj(blk_obj_t *blk_obj, ktask_t *task, tick_t timeout);
void pend_task_rm(ktask_t *task);

kstat_t pend_state_end_proc(ktask_t *task);

void idle_task(void *p_arg);
void idle_count_set(idle_count_t value);
idle_count_t idle_count_get(void);

void tick_list_init(void);
void tick_task_start(void);
void tick_list_rm(ktask_t *task);
void tick_list_insert(ktask_t *task, tick_t time);
void tick_list_update(tick_i_t ticks);

uint8_t mutex_pri_limit(ktask_t *tcb, uint8_t pri);
void mutex_task_pri_reset(ktask_t *tcb);
uint8_t mutex_pri_look(ktask_t *tcb, kmutex_t *mutex_rel);

kstat_t task_pri_change(ktask_t *task, uint8_t new_pri);

void k_err_proc(kstat_t err);

void ktimer_init(void);

void intrpt_disable_measure_start(void);
void intrpt_disable_measure_stop(void);
void dyn_mem_proc_task_start(void);
void cpu_usage_stats_start(void);

kstat_t ringbuf_init(k_ringbuf_t *p_ringbuf, void *buf, size_t len, size_t type,
                     size_t block_size);
kstat_t ringbuf_reset(k_ringbuf_t *p_ringbuf);
kstat_t ringbuf_push(k_ringbuf_t *p_ringbuf, void *data, size_t len);
kstat_t ringbuf_head_push(k_ringbuf_t *p_ringbuf, void *data, size_t len);
kstat_t ringbuf_pop(k_ringbuf_t *p_ringbuf, void *pdata, size_t *plen);
uint8_t ringbuf_is_full(k_ringbuf_t *p_ringbuf);
uint8_t ringbuf_is_empty(k_ringbuf_t *p_ringbuf);
void workqueue_init(void);
void k_mm_init(void);
# 43 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_trace.h" 1
# 44 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_soc.h" 1
# 35 "./kernel/rhino/core/include/k_soc.h"
void soc_err_proc(kstat_t err);

size_t soc_get_cur_sp(void);
# 45 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_hook.h" 1
# 46 "./kernel/rhino/core/include/k_api.h" 2
# 1 "././platform/arch/arm/armv5/./gcc/port.h" 1







size_t cpu_intrpt_save(void);
void cpu_intrpt_restore(size_t cpsr);
void cpu_intrpt_switch(void);
void cpu_task_switch(void);
void cpu_first_task_start(void);
void *cpu_task_stack_init(cpu_stack_t *base, size_t size, void *arg, task_entry_t entry);

static inline uint8_t cpu_cur_get(void)
{
    return 0;
}
# 47 "./kernel/rhino/core/include/k_api.h" 2
# 1 "./kernel/rhino/core/include/k_endian.h" 1
# 48 "./kernel/rhino/core/include/k_api.h" 2
# 6 "kernel/rhino/core/k_mm_blk.c" 2


kstat_t krhino_mblk_pool_init(mblk_pool_t *pool, const name_t *name,
                              void *pool_start,
                              size_t blk_size, size_t pool_size)
{
    size_t cpsr;

    uint32_t blks;
    uint8_t *blk_cur;
    uint8_t *blk_next;
    uint8_t *pool_end;
    uint8_t addr_align_mask;

    do { if (pool == 
# 20 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 20 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (name == 
# 21 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 21 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (pool_start == 
# 22 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 22 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);


    if (pool_size < (blk_size << 1u)) {
        return RHINO_BLK_POOL_SIZE_ERR;
    }


    addr_align_mask = sizeof(void *) - 1u;

    if (((size_t)pool_start & addr_align_mask) > 0u) {
        return RHINO_INV_ALIGN;
    }

    if ((blk_size & addr_align_mask) > 0u) {
        return RHINO_INV_ALIGN;
    }

    if ((pool_size & addr_align_mask) > 0u) {
        return RHINO_INV_ALIGN;
    }

    ;

    pool_end = (uint8_t *)pool_start + pool_size;
    blks = 0u;
    blk_cur = (uint8_t *)pool_start;
    blk_next = blk_cur + blk_size;

    while (blk_next < pool_end) {
        blks++;

        *(uint8_t **)blk_cur = blk_next;
        blk_cur = blk_next;
        blk_next = blk_cur + blk_size;
    }

    if (blk_next == pool_end) {
        blks++;
    }


    *((uint8_t **)blk_cur) = 
# 64 "kernel/rhino/core/k_mm_blk.c" 3 4
                            ((void *)0)
# 64 "kernel/rhino/core/k_mm_blk.c"
                                ;

    pool->pool_name = name;
    pool->pool_start = pool_start;
    pool->pool_end = pool_end;
    pool->blk_whole = blks;
    pool->blk_avail = blks;
    pool->blk_size = blk_size;
    pool->avail_list = (uint8_t *)pool_start;


    do { { cpsr = cpu_intrpt_save(); }; } while (0);
    klist_insert(&(g_kobj_list.mblkpool_head), &pool->mblkpool_stats_item);
    do { { cpu_intrpt_restore(cpsr); }; } while (0);


    ;

    return RHINO_SUCCESS;
}

kstat_t krhino_mblk_alloc(mblk_pool_t *pool, void **blk)
{
    kstat_t status;
    uint8_t *avail_blk;

    do { if (pool == 
# 90 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 90 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (blk == 
# 91 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 91 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);

    do { kspinlock_t *s = (kspinlock_t *)(&pool->blk_lock); s->cpsr = cpu_intrpt_save(); } while (0);

    if (pool->blk_avail > 0u) {
        avail_blk = pool->avail_list;
        *((uint8_t **)blk) = avail_blk;

        pool->avail_list = *(uint8_t **)(avail_blk);
        pool->blk_avail--;
        status = RHINO_SUCCESS;
    } else {
        *((uint8_t **)blk) = 
# 103 "kernel/rhino/core/k_mm_blk.c" 3 4
                            ((void *)0)
# 103 "kernel/rhino/core/k_mm_blk.c"
                                ;
        status = RHINO_NO_MEM;
    }

    do { kspinlock_t *s = (kspinlock_t *)(&pool->blk_lock); cpu_intrpt_restore(s->cpsr); } while (0);

    return status;
}

kstat_t krhino_mblk_free(mblk_pool_t *pool, void *blk)
{
    do { if (pool == 
# 114 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 114 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (blk == 
# 115 "kernel/rhino/core/k_mm_blk.c" 3 4
   ((void *)0)
# 115 "kernel/rhino/core/k_mm_blk.c"
   ) { return RHINO_NULL_PTR; } } while (0);

    do { kspinlock_t *s = (kspinlock_t *)(&pool->blk_lock); s->cpsr = cpu_intrpt_save(); } while (0);


    *((uint8_t **)blk) = pool->avail_list;
    pool->avail_list = blk;
    pool->blk_avail++;

    do { kspinlock_t *s = (kspinlock_t *)(&pool->blk_lock); cpu_intrpt_restore(s->cpsr); } while (0);

    return RHINO_SUCCESS;
}
