#ifndef __HEXDUMP_H__
#define __HEXDUMP_H__
#include<stdio.h>
#include<string.h>
#include<time.h>

static void _hexdump(const char *funcname, const void *data, unsigned int len, const void *data1, unsigned int len1);
#define hexdump(data, len)   _hexdump(__FUNCTION__, data, len, NULL, 0)
#define hexdump2(data, len, data1, len1)   _hexdump(__FUNCTION__, data, len, data1, len1)
#if 0
#define get_sys_tick() \
({\
    struct timespec tp;\
    clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &tp);\
    tp.tv_nsec/1000;\
})
static char *get_time(void)
{
    static char time_str[100] = {0};
    time_t timep;
    struct tm *p;

    time(&timep);
    p = gmtime(&timep);
    sprintf(time_str, "%02d:%02d:%02d-%-6lu", p->tm_hour + 8, p->tm_min, p->tm_sec, get_sys_tick());

    return (char*)time_str;
}
#else
#define get_sys_tick() 0
#endif
static void __attribute__((unused)) _hexdump(const char *funcname, const void *data, unsigned int len, const void *data1, unsigned int len1)
{
    #undef print_with_tick
    #define print_with_tick(format, arg...)  printf("[%6lu] " format, tick, ##arg)
    char str[160], octet[10];
    int ofs, i, k, d;
    const unsigned char *buf = (const unsigned char *)data;
    const char dimm[] = "+------------------------------------------------------------------------------+";
    char fname[sizeof(dimm)];
    unsigned long tick = get_sys_tick();//jiffies * 1000 / HZ;
    unsigned int flen;
    uintptr_t base_addr = (uintptr_t)data;

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
#if 0
    print_with_tick("%s\r\n", dimm);
#else
    char dump_len[32] = {0};
    sprintf(dump_len, "len = %d", len);
    strcpy(fname, dimm);
    memcpy(&fname[(sizeof(fname) - 1 - flen) / 2], dump_len, strlen(dump_len));
    print_with_tick("%s\r\n", fname);
#endif
    for (ofs = 0; ofs < (int)len; ofs += 16) {
        d = snprintf(str, sizeof(str), "| %08x: ", ofs + base_addr);

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
    if (data1 && (len1 > 0)) {
        base_addr = (uintptr_t)data1;
        buf = (const unsigned char*)data1;
        for (ofs = 0; ofs < (int)len; ofs += 16) {
            d = snprintf(str, sizeof(str), "| %08x: ", ofs + base_addr);

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
}

static void __attribute__((unused)) hexdump_pure(const void *data, unsigned int len)
{
    #undef print_with_tick
    #define print_with_tick(format, arg...)  printf(format, ##arg)
    char str[160], octet[10];
    int ofs, i, k, d;
    const unsigned char *buf = (const unsigned char *)data;

    uintptr_t base_addr = (uintptr_t)data;

    if (len == 0) return;

    for (ofs = 0; ofs < (int)len; ofs += 16) {
        d = snprintf(str, sizeof(str), "| %08x: ", ofs + base_addr);

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


}

#endif // __HEXDUMP_H__
