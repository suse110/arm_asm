/*
 * Library: libcrc
 * File:    src/crc16.c
 * Author:  Lammert Bies
 *
 * This file is licensed under the MIT License as stated below
 *
 * Copyright (c) 1999-2016 Lammert Bies
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * Description
 * -----------
 * The source file src/crc16.c contains routines which calculate the common
 * CRC16 cyclic redundancy check values for an incomming byte string.
 */
// https://github.com/lammertb/libcrc
#include <stdbool.h>
#include <stdlib.h>
#include "checksum.h"

static void             crc16_tab_init( void );

static bool             crc_tab16_init          = false;
static uint16_t         crc_tab16[256];


/*
 * uint16_t crc16( const uint8_t *input_str, size_t num_bytes );
 *
 * The function crc16() calculates the 16 bits CRC16 in one pass for a byte
 * string of which the beginning has been passed to the function. The number of
 * bytes to check is also a parameter. The number of the bytes in the string is
 * limited by the constant SIZE_MAX.
 */

uint16_t crc16( const uint8_t *input_str, size_t num_bytes )
{

    uint16_t crc;
    const uint8_t *ptr;
    size_t a;

    if ( ! crc_tab16_init ) crc16_tab_init();

    crc = CRC_START_16;
    ptr = input_str;

    if ( ptr != NULL ) for (a=0; a<num_bytes; a++) {

        crc = (crc >> 8) ^ crc_tab16[ (crc ^ (uint16_t) *ptr++) & 0x00FF ];
    }

    return crc;

}  /* crc16 */

/*
 * uint16_t crc16_update( uint16_t crc, uint8_t c );
 *
 * The function crc16_update() calculates a new CRC-16 value based on the
 * previous value of the CRC and the next byte of data to be checked.
 */

uint16_t crc16_update( uint16_t crc, uint8_t c )
{

    if ( ! crc_tab16_init ) crc16_tab_init();

    return (crc >> 8) ^ crc_tab16[ (crc ^ (uint16_t) c) & 0x00FF ];

}  /* crc16_update */

/*
 * static void crc16_tab_init( void );
 *
 * For optimal performance uses the CRC16 routine a lookup table with values
 * that can be used directly in the XOR arithmetic in the algorithm. This
 * lookup table is calculated by the crc16_tab_init() routine, the first time
 * the CRC function is called.
 */

static void crc16_tab_init( void )
{

    uint16_t i;
    uint16_t j;
    uint16_t crc;
    uint16_t c;

    for (i=0; i<256; i++) {

        crc = 0;
        c   = i;

        for (j=0; j<8; j++) {

            if ( (crc ^ c) & 0x0001 ) crc = ( crc >> 1 ) ^ CRC_POLY_16;
            else                      crc =   crc >> 1;

            c = c >> 1;
        }

        crc_tab16[i] = crc;
    }

    crc_tab16_init = true;

}  /* crc16_tab_init */
