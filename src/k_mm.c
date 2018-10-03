# 1 "kernel/rhino/core/k_mm.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "kernel/rhino/core/k_mm.c"




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
# 6 "kernel/rhino/core/k_mm.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 1 3
# 36 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdio.h" 3
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

# 7 "kernel/rhino/core/k_mm.c" 2
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/ieeefp.h" 1 3
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3





# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/lib/gcc/arm-none-eabi/5.4.1/include/stddef.h" 1 3 4
# 17 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3



# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/machine/stdlib.h" 1 3
# 21 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3

# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/alloca.h" 1 3
# 23 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 2 3
# 33 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void * __key, const void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar)



                                ;
void * calloc (size_t __nmemb, size_t __size) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void * malloc (size_t __size) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);






int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void * __base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void * realloc (void * __r, size_t __size) ;

void * reallocf (void * __r, size_t __size);


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);




void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 186 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void * __arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 219 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int __attribute__((__nonnull__(1))) posix_memalign (void **, size_t, size_t);


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 306 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
void qsort_r (void * __base, size_t __nmemb, size_t __size, void * __thunk, int (*_compar)(void *, const void *, const void *))
             __asm__ ("" "__bsd_qsort_r");
# 316 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2)));
int at_quick_exit(void (*)(void));
_Noreturn void
 quick_exit(int);



# 8 "kernel/rhino/core/k_mm.c" 2



# 10 "kernel/rhino/core/k_mm.c"
extern k_mm_region_t g_mm_region[];
extern int g_region_num;
extern void aos_mm_leak_region_init(void);

void k_mm_init(void)
{
    uint32_t e = 0;


    (void)krhino_init_mm_head(&g_kmm_head, g_mm_region[0].start, g_mm_region[0].len);
    for (e = 1 ; e < g_region_num ; e++) {
        krhino_add_mm_region(g_kmm_head, g_mm_region[e].start, g_mm_region[e].len);
    }


    aos_mm_leak_region_init();

}







static inline k_mm_list_t *init_mm_region(void *regionaddr, size_t len)
{
    k_mm_list_t *midblk, *lastblk, *firstblk;
    k_mm_region_info_t *region;




    firstblk = (k_mm_list_t *) regionaddr;
    firstblk->prev = 
# 44 "kernel/rhino/core/k_mm.c" 3 4
                     ((void *)0)
# 44 "kernel/rhino/core/k_mm.c"
                         ;
    firstblk->buf_size = (((sizeof(k_mm_region_info_t)) + ((1<<3)-1)) & ~((1<<3)-1))
                         | 0 | 0;

    firstblk->dye = 0xFEFEFEFE;
    firstblk->owner = 0;



    lastblk = (k_mm_list_t *)((char *)regionaddr + len - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));


    midblk = ((k_mm_list_t *)((firstblk)->mbinfo.buffer + ((firstblk)->buf_size & (~((1<<3)-1)))));
    midblk->buf_size = ((char *)lastblk - (char *)midblk->mbinfo.buffer)
                       | 0 | 0;
    midblk->mbinfo.free_ptr.prev = midblk->mbinfo.free_ptr.next = 0;


    lastblk->prev = midblk;

    lastblk->buf_size = 0 | 0 | 2;

    lastblk->dye = 0xFEFEFEFE;
    lastblk->owner = 0;


    region = (k_mm_region_info_t *)firstblk->mbinfo.buffer;
    region->next = 0;
    region->end = lastblk;

    return firstblk;
}


static int32_t size_to_level(size_t size)
{
    size_t cnt;
    cnt = 32 - krhino_clz32(size);
    if ( cnt < 6 ) {
        return 0;
    }

    if ( cnt > 19) {
        return -1;
    }
    return cnt - 6;
}


static void addsize(k_mm_head *mmhead, size_t size, size_t req_size)
{
    int32_t level;

    if (mmhead->free_size > size) {
        mmhead->free_size -= size;
    } else {
        mmhead->free_size = 0;
    }

    mmhead->used_size += size;
    if (mmhead->used_size > mmhead->maxused_size) {
        mmhead->maxused_size = mmhead->used_size;
    }

    if ( req_size > 0 ) {
        level = size_to_level(req_size);
        if (level != -1) {
            mmhead->alloc_times[level]++;
        }
    }
}

static void removesize(k_mm_head *mmhead, size_t size)
{
    if (mmhead->used_size > size ) {
        mmhead->used_size -= size;
    } else {
        mmhead->used_size = 0;
    }
    mmhead->free_size += size;
}
# 135 "kernel/rhino/core/k_mm.c"
kstat_t krhino_init_mm_head(k_mm_head **ppmmhead, void *addr, size_t len )
{
    k_mm_list_t *nextblk;
    k_mm_list_t *firstblk;
    k_mm_head *pmmhead;
    void *orig_addr;

    mblk_pool_t *mmblk_pool;
    kstat_t stat;


    do { if (ppmmhead == 
# 146 "kernel/rhino/core/k_mm.c" 3 4
   ((void *)0)
# 146 "kernel/rhino/core/k_mm.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (addr == 
# 147 "kernel/rhino/core/k_mm.c" 3 4
   ((void *)0)
# 147 "kernel/rhino/core/k_mm.c"
   ) { return RHINO_NULL_PTR; } } while (0);





    orig_addr = addr;
    addr = (void *) ((((size_t)addr) + ((1<<3)-1)) & ~((1<<3)-1));
    len -= (size_t)addr - (size_t)orig_addr;
    len = ((len) & ~((1<<3)-1));

    if ( len == 0
         || len < 1024 + 8192
         || len > (1<<19)) {
        return RHINO_MM_POOL_SIZE_ERR;
    }

    pmmhead = (k_mm_head *)addr;


    memset(pmmhead, 0, sizeof(k_mm_head));



    ;


    firstblk = init_mm_region((void *)((size_t)addr + (((sizeof(k_mm_head)) + ((1<<3)-1)) & ~((1<<3)-1))),
                              ((len - sizeof(k_mm_head)) & ~((1<<3)-1)));


    pmmhead->regioninfo = (k_mm_region_info_t *)firstblk->mbinfo.buffer;

    nextblk = ((k_mm_list_t *)((firstblk)->mbinfo.buffer + ((firstblk)->buf_size & (~((1<<3)-1)))));

    *ppmmhead = pmmhead;



    nextblk->dye = 0xFEFEFEFE;
    nextblk->owner = 0;



    k_mm_free(pmmhead, nextblk->mbinfo.buffer);




    pmmhead->free_size = ((nextblk)->buf_size & (~((1<<3)-1)));
    pmmhead->used_size = len - ((nextblk)->buf_size & (~((1<<3)-1)));
    pmmhead->maxused_size = pmmhead->used_size;


    pmmhead->fix_pool = 
# 201 "kernel/rhino/core/k_mm.c" 3 4
                       ((void *)0)
# 201 "kernel/rhino/core/k_mm.c"
                           ;



    mmblk_pool = k_mm_alloc(pmmhead,
                            8192 + (((sizeof(mblk_pool_t)) + ((1<<3)-1)) & ~((1<<3)-1)));
    if (mmblk_pool) {
        stat = krhino_mblk_pool_init(mmblk_pool, "fixed_mm_blk",
                                     (void *)((size_t)mmblk_pool + (((sizeof(mblk_pool_t)) + ((1<<3)-1)) & ~((1<<3)-1))),
                                     32, 8192);
        if (stat == RHINO_SUCCESS) {
            pmmhead->fix_pool = mmblk_pool;

            removesize(pmmhead,8192);

        } else {

            k_mm_free(pmmhead, mmblk_pool);
        }

        pmmhead->maxused_size = pmmhead->used_size;

    }


    return RHINO_SUCCESS;
}

extern int printf(const char *format, ...);
void show_mm()
{



    printf("     free     |     used     |     maxused\r\n");
    printf("  %10d  |  %10d  |  %10d\r\n", g_kmm_head->free_size, g_kmm_head->used_size,
           g_kmm_head->maxused_size);
    printf("\r\n");

}


kstat_t krhino_deinit_mm_head(k_mm_head *mmhead)
{




    memset(mmhead, 0, sizeof(k_mm_head));
    return RHINO_SUCCESS;
}

kstat_t krhino_add_mm_region(k_mm_head *mmhead, void *addr, size_t len)
{
    void *orig_addr;
    k_mm_region_info_t *region;
    k_mm_list_t *firstblk, *nextblk;

    do { if (mmhead == 
# 259 "kernel/rhino/core/k_mm.c" 3 4
   ((void *)0)
# 259 "kernel/rhino/core/k_mm.c"
   ) { return RHINO_NULL_PTR; } } while (0);
    do { if (addr == 
# 260 "kernel/rhino/core/k_mm.c" 3 4
   ((void *)0)
# 260 "kernel/rhino/core/k_mm.c"
   ) { return RHINO_NULL_PTR; } } while (0);

    orig_addr = addr;
    addr = (void *) ((((size_t)addr) + ((1<<3)-1)) & ~((1<<3)-1));
    len -= (size_t)addr - (size_t)orig_addr;
    len = ((len) & ~((1<<3)-1));

    if ( !len || len < sizeof(k_mm_region_info_t) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))) * 3 + (1<<(6 - 1))) {
        return RHINO_MM_POOL_SIZE_ERR;
    }

    memset(addr, 0, len);

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); s->cpsr = cpu_intrpt_save(); } while (0);;

    firstblk = init_mm_region(addr, len);
    nextblk = ((k_mm_list_t *)((firstblk)->mbinfo.buffer + ((firstblk)->buf_size & (~((1<<3)-1)))));


    region = (k_mm_region_info_t *)firstblk->mbinfo.buffer;
    region->next = mmhead->regioninfo;
    mmhead->regioninfo = region;


    nextblk->dye = 0xFEFEFEFE;
    nextblk->owner = 0;





    mmhead->used_size += (((nextblk)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));


    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;


    k_mm_free(mmhead, nextblk->mbinfo.buffer);

    return RHINO_SUCCESS;
}


static void *k_mm_smallblk_alloc(k_mm_head *mmhead, size_t size)
{
    kstat_t sta;
    void *tmp;

    if (!mmhead) {
        return 
# 309 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 309 "kernel/rhino/core/k_mm.c"
                  ;
    }

    sta = krhino_mblk_alloc((mblk_pool_t *)mmhead->fix_pool, &tmp);
    if (sta != RHINO_SUCCESS) {
        return 
# 314 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 314 "kernel/rhino/core/k_mm.c"
                  ;
    }

    addsize(mmhead,32, 0);

    return tmp;
}
static void k_mm_smallblk_free(k_mm_head *mmhead, void *ptr)
{
    kstat_t sta;

    if (!mmhead || !ptr) {
        return;
    }

    sta = krhino_mblk_free((mblk_pool_t *)mmhead->fix_pool, ptr);
    if (sta != RHINO_SUCCESS) {
        k_err_proc(RHINO_SYS_FATAL_ERR);
    }

    removesize(mmhead,32);
}



static void k_mm_freelist_insert(k_mm_head *mmhead, k_mm_list_t *blk)
{
    int32_t level;

    level = size_to_level(((blk)->buf_size & (~((1<<3)-1))));
    if ( level < 0 || level >= (19 - 6 + 2) ) {
        return;
    }



    blk->mbinfo.free_ptr.prev = 
# 350 "kernel/rhino/core/k_mm.c" 3 4
                               ((void *)0)
# 350 "kernel/rhino/core/k_mm.c"
                                   ;
    blk->mbinfo.free_ptr.next = mmhead->freelist[level];

    if (mmhead->freelist[level] != 
# 353 "kernel/rhino/core/k_mm.c" 3 4
                                  ((void *)0)
# 353 "kernel/rhino/core/k_mm.c"
                                      ) {
        mmhead->freelist[level]->mbinfo.free_ptr.prev = blk;
    }

    mmhead->freelist[level] = blk;


    mmhead->free_bitmap |= (1 << level);
}


static void k_mm_freelist_delete(k_mm_head *mmhead, k_mm_list_t *blk)
{
    int32_t level;

    level = size_to_level(((blk)->buf_size & (~((1<<3)-1))));
    if ( level < 0 || level >= (19 - 6 + 2) ) {
        return;
    }

    if (blk->mbinfo.free_ptr.next != 
# 373 "kernel/rhino/core/k_mm.c" 3 4
                                    ((void *)0)
# 373 "kernel/rhino/core/k_mm.c"
                                        ) {
        blk->mbinfo.free_ptr.next->mbinfo.free_ptr.prev = blk->mbinfo.free_ptr.prev;
    }
    if (blk->mbinfo.free_ptr.prev != 
# 376 "kernel/rhino/core/k_mm.c" 3 4
                                    ((void *)0)
# 376 "kernel/rhino/core/k_mm.c"
                                        ) {
        blk->mbinfo.free_ptr.prev->mbinfo.free_ptr.next = blk->mbinfo.free_ptr.next;
    }

    if (mmhead->freelist[level] == blk) {

        mmhead->freelist[level] = blk->mbinfo.free_ptr.next;
        if (mmhead->freelist[level] == 
# 383 "kernel/rhino/core/k_mm.c" 3 4
                                      ((void *)0)
# 383 "kernel/rhino/core/k_mm.c"
                                          ) {

            mmhead->free_bitmap &= (~(1 << level));
        }
    }

    blk->mbinfo.free_ptr.prev = 
# 389 "kernel/rhino/core/k_mm.c" 3 4
                               ((void *)0)
# 389 "kernel/rhino/core/k_mm.c"
                                   ;
    blk->mbinfo.free_ptr.next = 
# 390 "kernel/rhino/core/k_mm.c" 3 4
                               ((void *)0)
# 390 "kernel/rhino/core/k_mm.c"
                                   ;
}


static k_mm_list_t *find_up_level(k_mm_head *mmhead, int32_t level)
{
    uint32_t bitmap;

    bitmap = mmhead->free_bitmap & (0xfffffffful << (level + 1));
    level = krhino_ctz32(bitmap);

    if ( level < (19 - 6 + 2) ) {
        return mmhead->freelist[level];
    }

    return 
# 405 "kernel/rhino/core/k_mm.c" 3 4
          ((void *)0)
# 405 "kernel/rhino/core/k_mm.c"
              ;
}

void *k_mm_alloc(k_mm_head *mmhead, size_t size)
{
    void *retptr;
    k_mm_list_t *get_b, *new_b, *next_b;
    int32_t level;
    size_t left_size;
    size_t req_size = size;

    mblk_pool_t *mm_pool;


    (void)req_size;

    if (!mmhead) {
        return 
# 422 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 422 "kernel/rhino/core/k_mm.c"
                  ;
    }

    if (size == 0) {
        return 
# 426 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 426 "kernel/rhino/core/k_mm.c"
                  ;
    }

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); s->cpsr = cpu_intrpt_save(); } while (0);;



    if (mmhead->fix_pool != 
# 433 "kernel/rhino/core/k_mm.c" 3 4
                           ((void *)0)
# 433 "kernel/rhino/core/k_mm.c"
                               ) {
        mm_pool = (mblk_pool_t *)mmhead->fix_pool;
        if (size <= 32 && mm_pool->blk_avail > 0) {
            retptr = k_mm_smallblk_alloc(mmhead, size);
            if (retptr) {
                do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
                return retptr;
            }
        }
    }


    retptr = 
# 445 "kernel/rhino/core/k_mm.c" 3 4
            ((void *)0)
# 445 "kernel/rhino/core/k_mm.c"
                ;

    size = (((size) + ((1<<3)-1)) & ~((1<<3)-1));
    size = size < (1<<(6 - 1)) ? (1<<(6 - 1)) : size;

    if ((level = size_to_level(size)) == -1) {
        goto ALLOCEXIT;
    }


    get_b = find_up_level(mmhead, level);
    if (get_b == 
# 456 "kernel/rhino/core/k_mm.c" 3 4
                ((void *)0)
# 456 "kernel/rhino/core/k_mm.c"
                    ) {

        get_b = mmhead->freelist[level];
        while ( get_b != 
# 459 "kernel/rhino/core/k_mm.c" 3 4
                        ((void *)0) 
# 459 "kernel/rhino/core/k_mm.c"
                             ) {
            if ( ((get_b)->buf_size & (~((1<<3)-1))) >= size ) {
                break;
            }
            get_b = get_b->mbinfo.free_ptr.next;
        }

        if ( get_b == 
# 466 "kernel/rhino/core/k_mm.c" 3 4
                     ((void *)0) 
# 466 "kernel/rhino/core/k_mm.c"
                          ) {

            goto ALLOCEXIT;
        }
    }
    k_mm_freelist_delete(mmhead, get_b);

    next_b = ((k_mm_list_t *)((get_b)->mbinfo.buffer + ((get_b)->buf_size & (~((1<<3)-1)))));


    if (((get_b)->buf_size & (~((1<<3)-1))) >= size + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))) + (1<<(6 - 1))) {
        left_size = ((get_b)->buf_size & (~((1<<3)-1))) - size - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)));

        get_b->buf_size = size | (get_b->buf_size & 0x2);
        new_b = ((k_mm_list_t *)((get_b)->mbinfo.buffer + ((get_b)->buf_size & (~((1<<3)-1)))));

        new_b->prev = get_b;
        new_b->buf_size = left_size | 1 | 0;

        new_b->dye = 0xABABABAB;
        new_b->owner = 0;

        next_b->prev = new_b;
        k_mm_freelist_insert(mmhead, new_b);
    } else {
        next_b->buf_size &= (~2);
    }
    get_b->buf_size &= (~1);


    get_b->dye = 0xFEFEFEFE;
    get_b->owner = 0;

    retptr = (void *)get_b->mbinfo.buffer;
    if (retptr != 
# 500 "kernel/rhino/core/k_mm.c" 3 4
                 ((void *)0)
# 500 "kernel/rhino/core/k_mm.c"
                     ) {
        addsize(mmhead,(((get_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))), req_size);
    }

ALLOCEXIT:

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;

    return retptr ;
}

void k_mm_free(k_mm_head *mmhead, void *ptr)
{
    k_mm_list_t *free_b, *next_b, *prev_b;

    if (!ptr || !mmhead) {
        return;
    }

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); s->cpsr = cpu_intrpt_save(); } while (0);;



    if (((mmhead->fix_pool) != 
# 523 "kernel/rhino/core/k_mm.c" 3 4
       ((void *)0) 
# 523 "kernel/rhino/core/k_mm.c"
       && ((void *)(ptr) >= ((mblk_pool_t*)(mmhead->fix_pool))->pool_start) && ((void *)(ptr) < ((mblk_pool_t*)(mmhead->fix_pool))->pool_end))) {

        k_mm_smallblk_free(mmhead, ptr);
        do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        return;
    }


    free_b = ((k_mm_list_t *)((char *)(ptr) - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));


    if (free_b->dye == 0xABABABAB) {
        do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        printf("WARNING!! memory maybe double free!!\r\n");
        k_err_proc(RHINO_SYS_FATAL_ERR);
    }
    if (free_b->dye != 0xFEFEFEFE) {
        do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        printf("WARNING,memory maybe corrupt!!\r\n");
        k_err_proc(RHINO_SYS_FATAL_ERR);
    }
    free_b->dye = 0xABABABAB;
    free_b->owner = 0;

    free_b->buf_size |= 1;

    removesize(mmhead,(((free_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));


    next_b = ((k_mm_list_t *)((free_b)->mbinfo.buffer + ((free_b)->buf_size & (~((1<<3)-1)))));
    if (next_b->buf_size & 1) {
        k_mm_freelist_delete(mmhead, next_b);
        free_b->buf_size += (((next_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));
    }


    if (free_b->buf_size & 2) {
        prev_b = free_b->prev;

        if (prev_b->dye != 0xABABABAB) {
            do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
            printf("WARNING,memory overwritten!!\r\n");
            k_err_proc(RHINO_SYS_FATAL_ERR);
        }

        k_mm_freelist_delete(mmhead, prev_b);
        prev_b->buf_size += (((free_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));
        free_b = prev_b;
    }


    k_mm_freelist_insert(mmhead, free_b);

    next_b = ((k_mm_list_t *)((free_b)->mbinfo.buffer + ((free_b)->buf_size & (~((1<<3)-1)))));

    if (next_b->dye != 0xABABABAB && next_b->dye != 0xFEFEFEFE) {
        do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        printf("WARNING,memory overwritten!!\r\n");
        k_err_proc(RHINO_SYS_FATAL_ERR);
    }

    next_b->prev = free_b;
    next_b->buf_size |= 2;

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
}

void *k_mm_realloc(k_mm_head *mmhead, void *oldmem, size_t new_size)
{
    void *ptr_aux = 
# 592 "kernel/rhino/core/k_mm.c" 3 4
                          ((void *)0)
# 592 "kernel/rhino/core/k_mm.c"
                              ;
    uint32_t cpsize;
    k_mm_list_t *this_b, *split_b, *next_b;
    size_t old_size, split_size;
    size_t req_size = 0;

    (void)req_size;

    if (oldmem == 
# 600 "kernel/rhino/core/k_mm.c" 3 4
                 ((void *)0)
# 600 "kernel/rhino/core/k_mm.c"
                     ) {
        if (new_size > 0) {
            return (void *) k_mm_alloc(mmhead, new_size);
        } else {
            return 
# 604 "kernel/rhino/core/k_mm.c" 3 4
                  ((void *)0)
# 604 "kernel/rhino/core/k_mm.c"
                      ;
        }
    } else if (new_size == 0) {
        k_mm_free(mmhead, oldmem);
        return 
# 608 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 608 "kernel/rhino/core/k_mm.c"
                  ;
    }

    req_size = new_size;

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); s->cpsr = cpu_intrpt_save(); } while (0);;



    if (((mmhead->fix_pool) != 
# 617 "kernel/rhino/core/k_mm.c" 3 4
       ((void *)0) 
# 617 "kernel/rhino/core/k_mm.c"
       && ((void *)(oldmem) >= ((mblk_pool_t*)(mmhead->fix_pool))->pool_start) && ((void *)(oldmem) < ((mblk_pool_t*)(mmhead->fix_pool))->pool_end))) {

        if (new_size <= 32) {
            ptr_aux = oldmem;
            do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        } else {
            do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
            ptr_aux = k_mm_alloc(mmhead, new_size);
            if (ptr_aux) {
                memcpy(ptr_aux, oldmem, 32);
                k_mm_smallblk_free(mmhead, oldmem);
            }
        }
        return ptr_aux;
    }




    this_b = ((k_mm_list_t *)((char *)(oldmem) - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));
    old_size = ((this_b)->buf_size & (~((1<<3)-1)));
    next_b = ((k_mm_list_t *)((this_b)->mbinfo.buffer + ((this_b)->buf_size & (~((1<<3)-1)))));
    new_size = (((new_size) + ((1<<3)-1)) & ~((1<<3)-1));
    new_size = new_size < (1<<(6 - 1)) ? (1<<(6 - 1)) : new_size;

    if (new_size <= old_size) {

        removesize(mmhead,(((this_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));
        if (next_b->buf_size & 1) {

            k_mm_freelist_delete(mmhead, next_b);
            old_size += (((next_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));
            next_b = ((k_mm_list_t *)((next_b)->mbinfo.buffer + ((next_b)->buf_size & (~((1<<3)-1)))));
        }
        if (old_size >= new_size + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))) + (1<<(6 - 1))) {

            split_size = old_size - new_size - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)));

            this_b->buf_size = new_size | (this_b->buf_size & 0x2);
            split_b = ((k_mm_list_t *)((this_b)->mbinfo.buffer + ((this_b)->buf_size & (~((1<<3)-1)))));

            split_b->prev = this_b;
            split_b->buf_size = split_size | 1 | 0;

            split_b->dye = 0xABABABAB;
            split_b->owner = 0;

            next_b->prev = split_b;
            next_b->buf_size |= 2;
            k_mm_freelist_insert(mmhead, split_b);
        }
        addsize(mmhead,(((this_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))), req_size);
        ptr_aux = (void *)this_b->mbinfo.buffer;
    } else if ((next_b->buf_size & 1)) {

        if (new_size <= (old_size + (((next_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))))) {
            removesize(mmhead,(((this_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));


            k_mm_freelist_delete(mmhead, next_b);


            this_b->buf_size += (((next_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))));

            next_b = ((k_mm_list_t *)((this_b)->mbinfo.buffer + ((this_b)->buf_size & (~((1<<3)-1)))));
            next_b->prev = this_b;
            next_b->buf_size &= ~2;

            if (((this_b)->buf_size & (~((1<<3)-1))) >= new_size + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1))) + (1<<(6 - 1))) {

                split_size = ((this_b)->buf_size & (~((1<<3)-1))) - new_size - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)));

                this_b->buf_size = new_size | (this_b->buf_size & 0x2);
                split_b = ((k_mm_list_t *)((this_b)->mbinfo.buffer + ((this_b)->buf_size & (~((1<<3)-1)))));

                split_b->prev = this_b;
                split_b->buf_size = split_size | 1 | 0;

                split_b->dye = 0xABABABAB;
                split_b->owner = 0;

                next_b->prev = split_b;
                next_b->buf_size |= 2;
                k_mm_freelist_insert(mmhead, split_b);
            }
            addsize(mmhead,(((this_b)->buf_size & (~((1<<3)-1))) + ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))), req_size);
            ptr_aux = (void *)this_b->mbinfo.buffer;
        }
    }

    if (ptr_aux) {


        this_b->dye = 0xFEFEFEFE;


        do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
        return ptr_aux;
    }

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;


    ptr_aux = k_mm_alloc(mmhead, new_size);
    if (!ptr_aux) {
        return 
# 722 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 722 "kernel/rhino/core/k_mm.c"
                  ;
    }

    cpsize = (((this_b)->buf_size & (~((1<<3)-1))) > new_size) ? new_size : ((this_b)->buf_size & (~((1<<3)-1)));

    memcpy(ptr_aux, oldmem, cpsize);
    k_mm_free(mmhead, oldmem);

    return ptr_aux;
}


void krhino_owner_attach(k_mm_head *mmhead, void *addr, size_t allocator)
{
    k_mm_list_t *blk;

    if (!mmhead || !addr) {
        return;
    }



    if (((mmhead->fix_pool) != 
# 744 "kernel/rhino/core/k_mm.c" 3 4
       ((void *)0) 
# 744 "kernel/rhino/core/k_mm.c"
       && ((void *)(addr) >= ((mblk_pool_t*)(mmhead->fix_pool))->pool_start) && ((void *)(addr) < ((mblk_pool_t*)(mmhead->fix_pool))->pool_end))) {
        return;
    }


    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); s->cpsr = cpu_intrpt_save(); } while (0);;

    blk = ((k_mm_list_t *)((char *)(addr) - ((((sizeof(k_mm_list_t) - sizeof(free_ptr_t)) + ((1<<3)-1)) & ~((1<<3)-1)))));
    blk->owner = allocator;

    do { kspinlock_t *s = (kspinlock_t *)(&(mmhead->mm_lock)); cpu_intrpt_restore(s->cpsr); } while (0);;
}


void *krhino_mm_alloc(size_t size)
{
    void *tmp;


    uint32_t app_malloc = size & (1u << (sizeof(unsigned int) * 8 - 1));
    size = size & (~(1u << (sizeof(unsigned int) * 8 - 1)));


    if (size == 0) {
        printf("WARNING, malloc size = 0\r\n");
        return 
# 769 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 769 "kernel/rhino/core/k_mm.c"
                  ;
    }

    tmp = k_mm_alloc(g_kmm_head, size);
    if (tmp == 
# 773 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0)
# 773 "kernel/rhino/core/k_mm.c"
                  ) {

        static int32_t dumped;
        printf("WARNING, malloc failed!!!!\r\n");
        if (dumped) {
            return tmp;
        }
        dumped = 1;
        dumpsys_mm_info_func(0);

        dump_mmleak();

        k_err_proc(RHINO_NO_MEM);

    }






    if (app_malloc == 0) {



        krhino_owner_attach(g_kmm_head, tmp, (size_t)__builtin_return_address(0));

    }


    return tmp;
}

void krhino_mm_free(void *ptr)
{
    k_mm_free(g_kmm_head, ptr);
}

void *krhino_mm_realloc(void *oldmem, size_t newsize)
{
    void *tmp;


    uint32_t app_malloc = newsize & (1u << (sizeof(unsigned int) * 8 - 1));
    newsize = newsize & (~(1u << (sizeof(unsigned int) * 8 - 1)));


    tmp = k_mm_realloc(g_kmm_head, oldmem, newsize);


    if (app_malloc == 0) {



        krhino_owner_attach(g_kmm_head, tmp, (size_t)__builtin_return_address(0));

    }

    if (tmp == 
# 831 "kernel/rhino/core/k_mm.c" 3 4
              ((void *)0) 
# 831 "kernel/rhino/core/k_mm.c"
                   && newsize != 0) {

        static int32_t reallocdumped;
        printf("WARNING, realloc failed!!!!\r\n");
        if (reallocdumped) {
            return tmp;
        }
        reallocdumped = 1;
        dumpsys_mm_info_func(0);

        dump_mmleak();

        k_err_proc(RHINO_SYS_FATAL_ERR);

    }
    return tmp;
}
