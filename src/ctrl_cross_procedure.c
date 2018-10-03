typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef unsigned int u32_t;

static struct {
 struct connection *conn_curr;
} _radio;

static void event_inactive(u32_t ticks_at_expire, u32_t remainder,
      u16_t lazy, void *context);
static inline void isr_close_conn(void)
{

 u8_t reason_peer = 0;
 if (1) {
  terminate_ind_rx_enqueue(_radio.conn_curr, reason_peer);
  return;
 }
}

static inline void isr_radio_state_close(void)
{

 switch (1) {
# 4088 "kernel/protocols/bluetooth/controller/ll_sw/ctrl.c"
 case 1:
  isr_close_conn();
  break;

 default:
  if (!(0)) { ; ; };
  break;
 }


 event_inactive(0, 0, 0, ((void *)0));

}
static void isr(void)
{
 switch (1) {
 case 1:
  isr_radio_state_close();
  break;
 }
}
static void event_inactive(u32_t ticks_at_expire, u32_t remainder,
      u16_t lazy, void *context)
{

 (void)(ticks_at_expire);
 (void)(remainder);
 (void)(lazy);
 (void)(context);

}

static void adv_scan_conn_configure(void)
{
 radio_isr_set(isr);
}
