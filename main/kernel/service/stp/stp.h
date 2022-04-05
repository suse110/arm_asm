#ifndef __STP_H__
#define __STP_H__
#include <stdint.h>
#include <stdbool.h>
//stp:serial transmission protocol
#define STP_HEAD 0b01111110

#define STP_ID_LOG             0x0001
#define STP_ID_EXCEPTION_DUMP  0x0002

typedef enum {
    STP_STATE_HEAD,
    STP_STATE_TYPE,
    STP_STATE_ID,
    STP_STATE_LENGTH,
    STP_STATE_CHECKSUM,
    STP_STATE_PAYLOAD,
} stp_state_t;

typedef struct {
    uint8_t head;
    uint8_t type;
    uint16_t id;
    uint16_t length;
    uint16_t crc;
} stp_header_t;

typedef struct {
    stp_header_t header;
    uint8_t *payload;
} stp_pkt_t;


void stp_wrapper(stp_pkt_t *stp_pkt, uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id);
void stp_write_pkt(stp_pkt_t *stp_pkt);
void stp_write(uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id);

#endif // __STP_H__
