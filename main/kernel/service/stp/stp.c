#include "stp.h"
#include "checksum.h"
#include "serial.h"
#include "hexdump.h"
bool stp_paraser(uint8_t *buffer, uint32_t length, stp_pkt_t *stp_pkt)
{
    static stp_state_t state = STP_STATE_HEAD;
    uint8_t *pdata = buffer;
    uint8_t head;
    uint8_t type;
    uint16_t id;
    uint16_t data_len;
    uint16_t checksum;
    uint32_t buf_len = length;

    if (length < sizeof(stp_header_t)) {
        return false;
    }


    // for (;buf_len;) {
    //     switch(state) {
    //     case STP_STATE_HEAD:
    //         head = *pdata++;
    //         if (head != STP_HEAD) {
    //             printf("STP: head error [0x%x]!\n", head);
    //             break;
    //         }
    //         buf_len--;
    //         state = STP_STATE_TYPE;
    //         break;
    //     case STP_STATE_TYPE:
    //         type = *pdata++;
    //         buf_len--;
    //         state = STP_STATE_ID;
    //         break;
    //     case STP_STATE_ID:
    //         id = *(uint16_t*)pdata;
    //         pdata += 2;
    //         state = STP_STATE_LENGTH;
    //         break;
    //     case STP_STATE_LENGTH:
    //         data_len = *(uint16_t*)pdata;
    //         pdata += 2;
    //         state = STP_STATE_CHECKSUM;
    //         break;
    //     case STP_STATE_CHECKSUM:
    //         checksum = *(uint16_t*)pdata;
    //         pdata += 2;
    //         state = STP_STATE_PAYLOAD;
    //         break;
    //     case STP_STATE_PAYLOAD:
    //         state = STP_STATE_HEAD;
    //         break;
    //     }        
    // }

    return true;
}

void stp_wrapper(stp_pkt_t *stp_pkt, uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id)
{
    stp_header_t *header;

    header = &stp_pkt->header;

    header->head = STP_HEAD;
    header->type = type;
    header->id = id;
    header->length = length;
    header->crc = crc16(buffer, length);

    stp_pkt->payload = buffer;
}

void stp_write_pkt(stp_pkt_t *stp_pkt)
{
    stp_header_t *header;
    header = &stp_pkt->header;
    serial_write((uint8_t*)header, sizeof(stp_header_t));
    // serial_write((uint8_t*)stp_pkt->payload, header->length);
    hexdump_pure((uint8_t*)stp_pkt->payload, header->length);
}

void stp_write(uint8_t *buffer, uint32_t length, uint8_t type, uint16_t id)
{
    stp_pkt_t stp_pkt;
    stp_wrapper(&stp_pkt, buffer, length, type, id);
    stp_write_pkt(&stp_pkt);
}
