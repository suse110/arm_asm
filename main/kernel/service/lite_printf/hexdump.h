#ifndef __HEXDUMP_H__
#define __HEXDUMP_H__
#include<time.h>

static void _hexdump(const char *funcname, const void *data, unsigned int len);
#define hexdump(data, len)   _hexdump(__FUNCTION__, data, len)
#define get_sys_tick() \
({\
    struct timespec tp;\
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &tp);\
    tp.tv_nsec/1000;\
})
static void _hexdump(const char *funcname, const void *data, unsigned int len)
{
    #define print_with_tick(format, arg...)  printf("[%6lu] " format, tick, ##arg)
    char str[160], octet[10];
    int ofs, i, k, d;
    const unsigned char *buf = (const unsigned char *)data;
    const char dimm[] = "+------------------------------------------------------------------------------+";
    char fname[sizeof(dimm)];
    unsigned long tick = get_sys_tick();//jiffies * 1000 / HZ;
    unsigned int flen;
    
    if (len == 0) return;

    flen = strlen(funcname);
    if (flen >= sizeof(fname) - 3) {
        print_with_tick("+%s+\r\n", &funcname[flen-sizeof(fname)-2]);
    } else {
        strcpy(fname, dimm);
        memcpy(&fname[(sizeof(fname) - 1 - flen)/2], funcname, flen);
    }


    print_with_tick("%s\r\n", fname);
    print_with_tick("| Offset  : 00 01 02 03 04 05 06 07 08 09 0A 0B 0C 0D 0E 0F   0123456789ABCDEF |\r\n");
    print_with_tick("%s\r\n", dimm);

    for (ofs = 0; ofs < (int)len; ofs += 16) {
        d = snprintf(str, sizeof(str), "| %08x: ", ofs);

        for (i = 0; i < 16; i++) {
            if ((i + ofs) < (int)len)
                snprintf(octet, sizeof(octet), "%02x ", buf[ofs + i]);
            else
                snprintf(octet, sizeof(octet), "   ");

            d += snprintf(&str[d], sizeof(str) - d, "%s", octet);
        }
        d += snprintf(&str[d], sizeof(str) - d, "  ");
        k = d;

        for (i = 0; i < 16; i++) {
            if ((i + ofs) < (int)len)
                str[k++] = (0x20 <= (buf[ofs + i]) && (buf[ofs + i]) <= 0x7E) ? buf[ofs + i] : '.';
            else
                str[k++] = ' ';
        }

        str[k] = '\0';
        print_with_tick("%s |\r\n", str);
    }

    print_with_tick("%s\r\n", dimm);

}


#endif // __HEXDUMP_H__
