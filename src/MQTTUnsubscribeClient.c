# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
# 1 "/home/stone/Documents/Ali_IOT//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
# 17 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h" 1
# 36 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
enum errors
{
 MQTTPACKET_BUFFER_TOO_SHORT = -2,
 MQTTPACKET_READ_ERROR = -1,
 MQTTPACKET_READ_COMPLETE
};



enum msgTypes
{
    MQTT_CPT_RESERVED = 0, CONNECT = 1, CONNACK, PUBLISH, PUBACK, PUBREC, PUBREL,
 PUBCOMP, SUBSCRIBE, SUBACK, UNSUBSCRIBE, UNSUBACK,
 PINGREQ, PINGRESP, DISCONNECT
};




typedef union
{
 unsigned char byte;
# 67 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h"
 struct
 {
  unsigned int retain : 1;
  unsigned int qos : 2;
  unsigned int dup : 1;
  unsigned int type : 4;
 } bits;

} MQTTHeader;

typedef struct
{
 int len;
 char* data;
} MQTTLenString;

typedef struct
{
 char* cstring;
 MQTTLenString lenstring;
} MQTTString;



int MQTTstrlen(MQTTString mqttstring);

# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTConnect.h" 1
# 29 "framework/connectivity/mqtt/MQTTPacket/MQTTConnect.h"
typedef union
{
 unsigned char all;
# 44 "framework/connectivity/mqtt/MQTTPacket/MQTTConnect.h"
 struct
 {
  unsigned int : 1;
  unsigned int cleansession : 1;
  unsigned int will : 1;
  unsigned int willQoS : 2;
  unsigned int willRetain : 1;
  unsigned int password : 1;
  unsigned int username : 1;
 } bits;

} MQTTConnectFlags;







typedef struct
{

 char struct_id[4];

 int struct_version;

 MQTTString topicName;

 MQTTString message;



 unsigned char retained;




 char qos;
} MQTTPacket_willOptions;





typedef struct
{

 char struct_id[4];

 int struct_version;


 unsigned char MQTTVersion;
 MQTTString clientID;
 unsigned short keepAliveInterval;
 unsigned char cleansession;
 unsigned char willFlag;
 MQTTPacket_willOptions will;
 MQTTString username;
 MQTTString password;
} MQTTPacket_connectData;

typedef union
{
 unsigned char all;







 struct
 {
  unsigned int : 7;
  unsigned int sessionpresent : 1;
 } bits;

} MQTTConnackFlags;
# 132 "framework/connectivity/mqtt/MQTTPacket/MQTTConnect.h"
 int MQTTSerialize_connect(unsigned char* buf, int buflen, MQTTPacket_connectData* options);
 int MQTTDeserialize_connect(MQTTPacket_connectData* data, unsigned char* buf, int len);

 int MQTTSerialize_connack(unsigned char* buf, int buflen, unsigned char connack_rc, unsigned char sessionPresent);
 int MQTTDeserialize_connack(unsigned char* sessionPresent, unsigned char* connack_rc, unsigned char* buf, int buflen);

 int MQTTSerialize_disconnect(unsigned char* buf, int buflen);
 int MQTTSerialize_pingreq(unsigned char* buf, int buflen);
# 94 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h" 2
# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTPublish.h" 1
# 28 "framework/connectivity/mqtt/MQTTPacket/MQTTPublish.h"
 int MQTTSerialize_publish(unsigned char* buf, int buflen, unsigned char dup, int qos, unsigned char retained, unsigned short packetid,
  MQTTString topicName, unsigned char* payload, int payloadlen);

 int MQTTDeserialize_publish(unsigned char* dup, int* qos, unsigned char* retained, unsigned short* packetid, MQTTString* topicName,
  unsigned char** payload, int* payloadlen, unsigned char* buf, int len);

 int MQTTSerialize_puback(unsigned char* buf, int buflen, unsigned short packetid);
 int MQTTSerialize_pubrel(unsigned char* buf, int buflen, unsigned char dup, unsigned short packetid);
 int MQTTSerialize_pubcomp(unsigned char* buf, int buflen, unsigned short packetid);
# 95 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h" 2
# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTSubscribe.h" 1
# 28 "framework/connectivity/mqtt/MQTTPacket/MQTTSubscribe.h"
 int MQTTSerialize_subscribe(unsigned char* buf, int buflen, unsigned char dup, unsigned short packetid,
  int count, MQTTString topicFilters[], int requestedQoSs[]);

 int MQTTDeserialize_subscribe(unsigned char* dup, unsigned short* packetid,
  int maxcount, int* count, MQTTString topicFilters[], int requestedQoSs[], unsigned char* buf, int len);

 int MQTTSerialize_suback(unsigned char* buf, int buflen, unsigned short packetid, int count, int* grantedQoSs);

 int MQTTDeserialize_suback(unsigned short* packetid, int maxcount, int* count, int grantedQoSs[], unsigned char* buf, int len);
# 96 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h" 2
# 1 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribe.h" 1
# 28 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribe.h"
 int MQTTSerialize_unsubscribe(unsigned char* buf, int buflen, unsigned char dup, unsigned short packetid,
  int count, MQTTString topicFilters[]);

 int MQTTDeserialize_unsubscribe(unsigned char* dup, unsigned short* packetid, int max_count, int* count, MQTTString topicFilters[],
  unsigned char* buf, int len);

 int MQTTSerialize_unsuback(unsigned char* buf, int buflen, unsigned short packetid);

 int MQTTDeserialize_unsuback(unsigned short* packetid, unsigned char* buf, int len);
# 97 "framework/connectivity/mqtt/MQTTPacket/MQTTPacket.h" 2

int MQTTSerialize_ack(unsigned char* buf, int buflen, unsigned char type, unsigned char dup, unsigned short packetid);
int MQTTDeserialize_ack(unsigned char* packettype, unsigned char* dup, unsigned short* packetid, unsigned char* buf, int buflen);

int MQTTPacket_len(int rem_len);
int MQTTPacket_equals(MQTTString* a, char* b);

int MQTTPacket_encode(unsigned char* buf, int length);
int MQTTPacket_decode(int (*getcharfn)(unsigned char*, int), int* value);
int MQTTPacket_decodeBuf(unsigned char* buf, int* value);

int readInt(unsigned char** pptr);
char readChar(unsigned char** pptr);
void writeChar(unsigned char** pptr, char c);
void writeInt(unsigned char** pptr, int anInt);
int readMQTTLenString(MQTTString* mqttstring, unsigned char** pptr, unsigned char* enddata);
void writeCString(unsigned char** pptr, const char* string);
void writeMQTTString(unsigned char** pptr, MQTTString mqttstring);

 int MQTTPacket_read(unsigned char* buf, int buflen, int (*getfn)(unsigned char*, int));

typedef struct {
 int (*getfn)(void *, unsigned char*, int);
 void *sck;
 int multiplier;
 int rem_len;
 int len;
 char state;
}MQTTTransport;

int MQTTPacket_readnb(unsigned char* buf, int buflen, MQTTTransport *trp);
# 18 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c" 2

# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 1 3
# 10 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 3
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
# 11 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/string.h" 2 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 1 3
# 13 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 3
# 1 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/_ansi.h" 1 3
# 14 "/home/stone/Documents/Ali_IOT/build/compiler/gcc-arm-none-eabi/Linux64/arm-none-eabi/include/sys/reent.h" 2 3
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


# 20 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c" 2








# 27 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
int MQTTSerialize_unsubscribeLength(int count, MQTTString topicFilters[])
{
 int i;
 int len = 2;

 for (i = 0; i < count; ++i)
  len += 2 + MQTTstrlen(topicFilters[i]);
 return len;
}
# 48 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
int MQTTSerialize_unsubscribe(unsigned char* buf, int buflen, unsigned char dup, unsigned short packetid,
  int count, MQTTString topicFilters[])
{
 unsigned char *ptr = buf;
 MQTTHeader header = {0};
 int rem_len = 0;
 int rc = -1;
 int i = 0;

 if (MQTTPacket_len(rem_len = MQTTSerialize_unsubscribeLength(count, topicFilters)) > buflen)
 {
  rc = MQTTPACKET_BUFFER_TOO_SHORT;
  goto exit;
 }

 header.byte = 0;
 header.bits.type = UNSUBSCRIBE;
 header.bits.dup = dup;
 header.bits.qos = 1;
 writeChar(&ptr, header.byte);

 ptr += MQTTPacket_encode(ptr, rem_len); ;

 writeInt(&ptr, packetid);

 for (i = 0; i < count; ++i)
  writeMQTTString(&ptr, topicFilters[i]);

 rc = ptr - buf;
exit:
 return rc;
}
# 89 "framework/connectivity/mqtt/MQTTPacket/MQTTUnsubscribeClient.c"
int MQTTDeserialize_unsuback(unsigned short* packetid, unsigned char* buf, int buflen)
{
 unsigned char type = 0;
 unsigned char dup = 0;
 int rc = 0;

 rc = MQTTDeserialize_ack(&type, &dup, packetid, buf, buflen);
 if (type == UNSUBACK)
  rc = 1;
 return rc;
}
