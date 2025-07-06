#ifndef __STP_H__
#define __STP_H__
#include <stdint.h>
#include <stdbool.h>
//stp:serial transmission protocol
#define STP_HEAD 0x07//0b00000111

#define STP_ID_LOG             0x0001
#define STP_ID_EXCEPTION_DUMP  0x0002
#define STP_ID_SHELL           0x0003
// #define STP_CHECKSUM_ENABLE

typedef enum {
    STP_STATE_HEAD,
    STP_STATE_TYPE,
    STP_STATE_ID,
    STP_STATE_LENGTH,
#ifdef STP_CHECKSUM_ENABLE
    STP_STATE_CHECKSUM,
#endif
    STP_STATE_PAYLOAD,
} stp_state_t;

typedef struct {
    uint8_t head;
    uint8_t type;
    uint16_t length;
    uint16_t flags;
    uint16_t id;
#ifdef STP_CHECKSUM_ENABLE
    uint16_t crc;
#endif
} __attribute__((packed)) stp_header_t;

typedef struct {
    stp_header_t header;
    uint8_t *payload;
} stp_pkt_t;

typedef uint32_t scp_handle_t;
typedef struct {

} stp_settings_t;

typedef struct {

}  stp_dev_t;
scp_handle_t stp_init(stp_dev_t *dev, stp_settings_t *settings);
void stp_wrapper(stp_pkt_t *stp_pkt, uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id);
void stp_write_pkt(stp_pkt_t *stp_pkt);
void stp_write_header(uint32_t length, uint8_t type, uint16_t id);
void stp_write(uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id);
void stp_write_log_header(uint32_t length);
void stp_write_log(uint8_t *buffer, uint32_t length);
void stp_write_exception(uint8_t *buffer, uint32_t length);
#endif // __STP_H__
