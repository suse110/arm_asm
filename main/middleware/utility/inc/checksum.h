#ifndef __CHECKSUM_H__
#define __CHECKSUM_H__

#include <stddef.h>
#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

uint8_t crc8( const unsigned char *input_str, size_t num_bytes );
uint8_t crc8_update( unsigned char crc, unsigned char val );
uint16_t crc16( const uint8_t *input_str, size_t num_bytes );
uint16_t crc16_update( uint16_t crc, uint8_t c );
uint32_t crc32( const unsigned char *input_str, size_t num_bytes );
uint32_t crc32_update( uint32_t crc, unsigned char c );
/*
 * #define CRC_POLY_xxxx
 *
 * The constants of the form CRC_POLY_xxxx define the polynomials for some well
 * known CRC calculations.
 */

#define  CRC_POLY_16  0xA001
#define  CRC_POLY_32  0xEDB88320ul

/*
 * #define CRC_START_xxxx
 *
 * The constants of the form CRC_START_xxxx define the values that are used for
 * initialization of a CRC value for common used calculation methods.
 */

#define  CRC_START_8   0x00
#define  CRC_START_16  0x0000
#define  CRC_START_32  0xFFFFFFFFul

#ifdef __cplusplus
}// Extern C
#endif

#endif // __CHECKSUM_H__
